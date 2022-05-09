; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/evergreen_cs.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/evergreen_cs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.eg_surface = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.radeon_cs_packet = type { i32, i32, i32, i32, i32, i32 }
%struct.radeon_cs_parser = type { ptr, ptr, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, i32, ptr, ptr, ptr, ptr, %struct.radeon_ib, %struct.radeon_ib, ptr, i32, i32, i32, i32, i32, %struct.ww_acquire_ctx }
%struct.list_head = type { ptr, ptr }
%struct.radeon_ib = type { ptr, i32, i64, ptr, i32, ptr, ptr, i8, %struct.radeon_sync }
%struct.radeon_sync = type { [4 x ptr], [8 x ptr], ptr }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16, i32, ptr, ptr, %struct.lockdep_map, i32, i32 }
%struct.evergreen_cs_track = type { i32, i32, i32, i32, i32, [12 x ptr], [12 x i32], [8 x ptr], [8 x ptr], [12 x i32], [12 x i32], [12 x i32], [12 x i32], [12 x i32], [12 x i32], [8 x i32], [8 x i32], i32, i32, i32, i32, [4 x ptr], [4 x i32], [4 x i32], i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, ptr, i8, i8, i8, i8, i32, i32, ptr, i32, ptr }
%struct.radeon_device = type { ptr, ptr, ptr, ptr, %struct.rw_semaphore, %union.radeon_asic_config, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i16, ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.radeon_clock, %struct.radeon_mc, %struct.radeon_gart, %struct.radeon_mode_info, %struct.radeon_scratch, %struct.radeon_doorbell, %struct.radeon_mman, [8 x %struct.radeon_fence_driver], %struct.wait_queue_head, i64, %struct.mutex, [8 x %struct.radeon_ring], i8, %struct.radeon_sa_manager, %struct.radeon_irq, ptr, %struct.radeon_gem, %struct.radeon_pm, %struct.radeon_uvd, %struct.radeon_vce, [8 x i32], %struct.radeon_wb, %struct.radeon_dummy_page, i8, i8, i8, i8, i8, i8, [8 x %struct.radeon_surface_reg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.r600_vram_scratch, i32, %struct.r600_ih, %struct.radeon_rlc, %struct.radeon_mec, %struct.delayed_work, %struct.work_struct, %struct.work_struct, i32, %struct.mutex, i8, i8, %struct.r600_audio, %struct.notifier_block, ptr, ptr, [16 x ptr], %struct.radeon_vm_manager, %struct.mutex, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.radeon_atif, %struct.radeon_atcs, %struct.mutex, i32, i32, %struct.dev_pm_domain, i8, i32, i64, i64 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.radeon_cs_chunk = type { i32, ptr, ptr }
%struct.radeon_bo_list = type { ptr, %struct.ttm_validate_buffer, i64, i32, i32, i32 }
%struct.ttm_validate_buffer = type { %struct.list_head, ptr, i32 }
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

@cayman_reg_safe_bm = internal constant { [2047 x i32], [2020 x i8] } { [2047 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -67585, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 2147483647, i32 -1, i32 -805306369, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -2232321, i32 -817889281, i32 -8177, i32 -16777249, i32 -1, i32 -17, i32 -268435457, i32 -52, i32 -1, i32 -1, i32 -1073741865, i32 -263937, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -32770, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -5, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -2158593, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1073741824, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -15388, i32 -1, i32 65535, i32 0, i32 835584, i32 0, i32 -11534336, i32 0, i32 3584, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -776, i32 -33030400, i32 1022488579, i32 -476152881, i32 -1, i32 -1, i32 -419299328, i32 -573007651, i32 127902717, i32 18874336, i32 -1073807360, i32 -272375929, i32 2079389665, i32 519847416, i32 -541126786, i32 -2065, i32 -1, i32 0, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -805306369, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -8], [2020 x i8] zeroinitializer }, align 32
@evergreen_reg_safe_bm = internal constant { [2047 x i32], [2020 x i8] } { [2047 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -985089, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 2147483647, i32 -1, i32 -805306369, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -2232321, i32 -817889281, i32 -3057, i32 -16777249, i32 -1, i32 -17, i32 -268435457, i32 -2048, i32 -1, i32 -1, i32 -1073742073, i32 -265985, i32 -1, i32 -1, i32 -1, i32 -33, i32 -1, i32 -32770, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -5, i32 -1, i32 -1, i32 -1, i32 -34, i32 -1, i32 -2158593, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1073741824, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -15388, i32 -1, i32 65535, i32 0, i32 835584, i32 0, i32 -3145728, i32 0, i32 3584, i32 0, i32 0, i32 0, i32 0, i32 -1073741824, i32 -1793, i32 -33030400, i32 1022472195, i32 -476152881, i32 -1, i32 -1, i32 -150863872, i32 -573006627, i32 2073597, i32 -32, i32 -1073807358, i32 -272375929, i32 2079389665, i32 519847416, i32 -541126786, i32 -2065, i32 -1, i32 0, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -805306369, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -8], [2020 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unknown packet type %d !\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Can not parse packet at %d after CS end %d !\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bad DMA_PACKET_WRITE\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"bad DMA_PACKET_WRITE [%6d] 0x%08x sub cmd is not 0 or 8\0A\00", [39 x i8] zeroinitializer }, align 32
@evergreen_dma_cs_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 2849, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"DMA write buffer too small (%llu %lu)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"evergreen_dma_cs_parse\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/radeon/evergreen_cs.c\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@evergreen_dma_cs_parse._entry_ptr = internal global ptr @evergreen_dma_cs_parse._entry, section ".printk_index", align 4
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bad DMA_PACKET_COPY\0A\00", [43 x i8] zeroinitializer }, align 32
@evergreen_dma_cs_parse._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 2874, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"DMA L2L, dw src buffer too small (%llu %lu)\0A\00", [51 x i8] zeroinitializer }, align 32
@evergreen_dma_cs_parse._entry_ptr.12 = internal global ptr @evergreen_dma_cs_parse._entry.10, section ".printk_index", align 4
@evergreen_dma_cs_parse._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.6, i32 2879, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"DMA L2L, dw dst buffer too small (%llu %lu)\0A\00", [51 x i8] zeroinitializer }, align 32
@evergreen_dma_cs_parse._entry_ptr.15 = internal global ptr @evergreen_dma_cs_parse._entry.13, section ".printk_index", align 4
@evergreen_dma_cs_parse._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.5, ptr @.str.6, i32 2914, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"DMA L2T, src buffer too small (%llu %lu)\0A\00", [54 x i8] zeroinitializer }, align 32
@evergreen_dma_cs_parse._entry_ptr.18 = internal global ptr @evergreen_dma_cs_parse._entry.16, section ".printk_index", align 4
@evergreen_dma_cs_parse._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.5, ptr @.str.6, i32 2919, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"DMA L2T, dst buffer too small (%llu %lu)\0A\00", [54 x i8] zeroinitializer }, align 32
@evergreen_dma_cs_parse._entry_ptr.21 = internal global ptr @evergreen_dma_cs_parse._entry.19, section ".printk_index", align 4
@evergreen_dma_cs_parse._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.5, ptr @.str.6, i32 2933, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"DMA L2L, byte src buffer too small (%llu %lu)\0A\00", [49 x i8] zeroinitializer }, align 32
@evergreen_dma_cs_parse._entry_ptr.24 = internal global ptr @evergreen_dma_cs_parse._entry.22, section ".printk_index", align 4
@evergreen_dma_cs_parse._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.5, ptr @.str.6, i32 2938, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"DMA L2L, byte dst buffer too small (%llu %lu)\0A\00", [49 x i8] zeroinitializer }, align 32
@evergreen_dma_cs_parse._entry_ptr.27 = internal global ptr @evergreen_dma_cs_parse._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"L2L Partial is cayman only !\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"bad L2L, dw, broadcast DMA_PACKET_COPY\0A\00", [56 x i8] zeroinitializer }, align 32
@evergreen_dma_cs_parse._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.5, ptr @.str.6, i32 2977, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"DMA L2L, dw, broadcast src buffer too small (%llu %lu)\0A\00", [40 x i8] zeroinitializer }, align 32
@evergreen_dma_cs_parse._entry_ptr.32 = internal global ptr @evergreen_dma_cs_parse._entry.30, section ".printk_index", align 4
@evergreen_dma_cs_parse._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.5, ptr @.str.6, i32 2982, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"DMA L2L, dw, broadcast dst buffer too small (%llu %lu)\0A\00", [40 x i8] zeroinitializer }, align 32
@evergreen_dma_cs_parse._entry_ptr.35 = internal global ptr @evergreen_dma_cs_parse._entry.33, section ".printk_index", align 4
@evergreen_dma_cs_parse._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.5, ptr @.str.6, i32 2987, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"DMA L2L, dw, broadcast dst2 buffer too small (%llu %lu)\0A\00", [39 x i8] zeroinitializer }, align 32
@evergreen_dma_cs_parse._entry_ptr.38 = internal global ptr @evergreen_dma_cs_parse._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"bad L2T, frame to fields DMA_PACKET_COPY\0A\00", [54 x i8] zeroinitializer }, align 32
@evergreen_dma_cs_parse._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.5, ptr @.str.6, i32 3017, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"DMA L2T, frame to fields src buffer too small (%llu %lu)\0A\00", [38 x i8] zeroinitializer }, align 32
@evergreen_dma_cs_parse._entry_ptr.42 = internal global ptr @evergreen_dma_cs_parse._entry.40, section ".printk_index", align 4
@evergreen_dma_cs_parse._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.5, ptr @.str.6, i32 3022, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"DMA L2T, frame to fields buffer too small (%llu %lu)\0A\00", [42 x i8] zeroinitializer }, align 32
@evergreen_dma_cs_parse._entry_ptr.45 = internal global ptr @evergreen_dma_cs_parse._entry.43, section ".printk_index", align 4
@evergreen_dma_cs_parse._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.5, ptr @.str.6, i32 3027, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@evergreen_dma_cs_parse._entry_ptr.47 = internal global ptr @evergreen_dma_cs_parse._entry.46, section ".printk_index", align 4
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"L2T, T2L Partial is cayman only !\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"bad L2T, broadcast DMA_PACKET_COPY\0A\00", [60 x i8] zeroinitializer }, align 32
@evergreen_dma_cs_parse._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.5, ptr @.str.6, i32 3079, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"DMA L2T, broadcast src buffer too small (%llu %lu)\0A\00", [44 x i8] zeroinitializer }, align 32
@evergreen_dma_cs_parse._entry_ptr.52 = internal global ptr @evergreen_dma_cs_parse._entry.50, section ".printk_index", align 4
@evergreen_dma_cs_parse._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.5, ptr @.str.6, i32 3084, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"DMA L2T, broadcast dst buffer too small (%llu %lu)\0A\00", [44 x i8] zeroinitializer }, align 32
@evergreen_dma_cs_parse._entry_ptr.55 = internal global ptr @evergreen_dma_cs_parse._entry.53, section ".printk_index", align 4
@evergreen_dma_cs_parse._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.5, ptr @.str.6, i32 3089, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"DMA L2T, broadcast dst2 buffer too small (%llu %lu)\0A\00", [43 x i8] zeroinitializer }, align 32
@evergreen_dma_cs_parse._entry_ptr.58 = internal global ptr @evergreen_dma_cs_parse._entry.56, section ".printk_index", align 4
@evergreen_dma_cs_parse._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.5, ptr @.str.6, i32 3125, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"DMA L2T, T2L src buffer too small (%llu %lu)\0A\00", [50 x i8] zeroinitializer }, align 32
@evergreen_dma_cs_parse._entry_ptr.61 = internal global ptr @evergreen_dma_cs_parse._entry.59, section ".printk_index", align 4
@evergreen_dma_cs_parse._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.5, ptr @.str.6, i32 3130, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"DMA L2T, T2L dst buffer too small (%llu %lu)\0A\00", [50 x i8] zeroinitializer }, align 32
@evergreen_dma_cs_parse._entry_ptr.64 = internal global ptr @evergreen_dma_cs_parse._entry.62, section ".printk_index", align 4
@evergreen_dma_cs_parse._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.5, ptr @.str.6, i32 3166, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@evergreen_dma_cs_parse._entry_ptr.66 = internal global ptr @evergreen_dma_cs_parse._entry.65, section ".printk_index", align 4
@evergreen_dma_cs_parse._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.5, ptr @.str.6, i32 3171, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@evergreen_dma_cs_parse._entry_ptr.68 = internal global ptr @evergreen_dma_cs_parse._entry.67, section ".printk_index", align 4
@evergreen_dma_cs_parse._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.5, ptr @.str.6, i32 3176, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@evergreen_dma_cs_parse._entry_ptr.70 = internal global ptr @evergreen_dma_cs_parse._entry.69, section ".printk_index", align 4
@.str.71 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"bad DMA_PACKET_COPY [%6d] 0x%08x invalid sub cmd\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bad DMA_PACKET_CONSTANT_FILL\0A\00", [34 x i8] zeroinitializer }, align 32
@evergreen_dma_cs_parse._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.5, ptr @.str.6, i32 3200, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"DMA constant fill buffer too small (%llu %lu)\0A\00", [49 x i8] zeroinitializer }, align 32
@evergreen_dma_cs_parse._entry_ptr.75 = internal global ptr @evergreen_dma_cs_parse._entry.73, section ".printk_index", align 4
@.str.76 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unknown packet type %d at %d !\0A\00", [32 x i8] zeroinitializer }, align 32
@evergreen_ib_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.6, i32 3533, ptr @.str.79, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Packet0 not allowed!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"evergreen_ib_parse\00", [45 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@evergreen_ib_parse._entry_ptr = internal global ptr @evergreen_ib_parse._entry, section ".printk_index", align 4
@evergreen_ib_parse._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.78, ptr @.str.6, i32 3545, ptr @.str.79, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@evergreen_ib_parse._entry_ptr.81 = internal global ptr @evergreen_ib_parse._entry.80, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.82 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"No reloc for ib[%d]=0x%04X\0A\00", [36 x i8] zeroinitializer }, align 32
@evergreen_packet0_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.6, i32 1063, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013Forbidden register 0x%04X in cs at %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"evergreen_packet0_check\00", [40 x i8] zeroinitializer }, align 32
@evergreen_packet0_check._entry_ptr = internal global ptr @evergreen_packet0_check._entry, section ".printk_index", align 4
@evergreen_cs_packet_parse_vline.vline_start_end = internal global { [6 x i32], [40 x i8] } { [6 x i32] [i32 27400, i32 30472, i32 66312, i32 69384, i32 72456, i32 75528], [40 x i8] zeroinitializer }, align 32
@evergreen_cs_packet_parse_vline.vline_status = internal global { [6 x i32], [40 x i8] } { [6 x i32] [i32 27576, i32 30648, i32 66488, i32 69560, i32 72632, i32 75704], [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bad SET PREDICATION\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"bad SET PREDICATION operation %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bad CONTEXT_CONTROL\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"bad INDEX_TYPE/NUM_INSTANCES/CLEAR_STATE\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bad PACKET3_DEALLOC_STATE\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bad INDEX_BASE\0A\00", [16 x i8] zeroinitializer }, align 32
@evergreen_packet3_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.6, i32 1873, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s:%d invalid cmd stream\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"evergreen_packet3_check\00", [40 x i8] zeroinitializer }, align 32
@evergreen_packet3_check._entry_ptr = internal global ptr @evergreen_packet3_check._entry, section ".printk_index", align 4
@.str.93 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bad INDEX_BUFFER_SIZE\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bad DRAW_INDEX\0A\00", [16 x i8] zeroinitializer }, align 32
@evergreen_packet3_check._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.6, i32 1908, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@evergreen_packet3_check._entry_ptr.96 = internal global ptr @evergreen_packet3_check._entry.95, section ".printk_index", align 4
@.str.97 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bad DRAW_INDEX_2\0A\00", [46 x i8] zeroinitializer }, align 32
@evergreen_packet3_check._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.6, i32 1936, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@evergreen_packet3_check._entry_ptr.99 = internal global ptr @evergreen_packet3_check._entry.98, section ".printk_index", align 4
@.str.100 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bad DRAW_INDEX_AUTO\0A\00", [43 x i8] zeroinitializer }, align 32
@evergreen_packet3_check._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.92, ptr @.str.6, i32 1948, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s:%d invalid cmd stream %d\0A\00", [35 x i8] zeroinitializer }, align 32
@evergreen_packet3_check._entry_ptr.103 = internal global ptr @evergreen_packet3_check._entry.101, section ".printk_index", align 4
@.str.104 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bad DRAW_INDEX_MULTI_AUTO\0A\00", [37 x i8] zeroinitializer }, align 32
@evergreen_packet3_check._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.92, ptr @.str.6, i32 1959, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@evergreen_packet3_check._entry_ptr.106 = internal global ptr @evergreen_packet3_check._entry.105, section ".printk_index", align 4
@.str.107 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bad DRAW_INDEX_IMMD\0A\00", [43 x i8] zeroinitializer }, align 32
@evergreen_packet3_check._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.6, i32 1970, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@evergreen_packet3_check._entry_ptr.109 = internal global ptr @evergreen_packet3_check._entry.108, section ".printk_index", align 4
@.str.110 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bad DRAW_INDEX_OFFSET\0A\00", [41 x i8] zeroinitializer }, align 32
@evergreen_packet3_check._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.6, i32 1981, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@evergreen_packet3_check._entry_ptr.112 = internal global ptr @evergreen_packet3_check._entry.111, section ".printk_index", align 4
@.str.113 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bad DRAW_INDEX_OFFSET_2\0A\00", [39 x i8] zeroinitializer }, align 32
@evergreen_packet3_check._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.6, i32 1992, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@evergreen_packet3_check._entry_ptr.115 = internal global ptr @evergreen_packet3_check._entry.114, section ".printk_index", align 4
@.str.116 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bad SET_BASE\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bad DRAW_INDIRECT\0A\00", [45 x i8] zeroinitializer }, align 32
@evergreen_packet3_check._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.92, ptr @.str.6, i32 2046, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"DRAW_INDIRECT buffer too small %u + %llu > %lu\0A\00", [48 x i8] zeroinitializer }, align 32
@evergreen_packet3_check._entry_ptr.120 = internal global ptr @evergreen_packet3_check._entry.118, section ".printk_index", align 4
@evergreen_packet3_check._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.6, i32 2052, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@evergreen_packet3_check._entry_ptr.122 = internal global ptr @evergreen_packet3_check._entry.121, section ".printk_index", align 4
@.str.123 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bad DISPATCH_DIRECT\0A\00", [43 x i8] zeroinitializer }, align 32
@evergreen_packet3_check._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.92, ptr @.str.6, i32 2064, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@evergreen_packet3_check._entry_ptr.125 = internal global ptr @evergreen_packet3_check._entry.124, section ".printk_index", align 4
@.str.126 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bad DISPATCH_INDIRECT\0A\00", [41 x i8] zeroinitializer }, align 32
@evergreen_packet3_check._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.6, i32 2081, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@evergreen_packet3_check._entry_ptr.128 = internal global ptr @evergreen_packet3_check._entry.127, section ".printk_index", align 4
@.str.129 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bad WAIT_REG_MEM\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cannot use PFP on REG wait\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bad CP DMA\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"CP DMA command requires dw count alignment\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"CP DMA SAS not supported\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"CP DMA SAIC only supported for registers\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bad CP DMA SRC\0A\00", [16 x i8] zeroinitializer }, align 32
@evergreen_packet3_check._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.92, ptr @.str.6, i32 2161, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"CP DMA src buffer too small (%llu %lu)\0A\00", [56 x i8] zeroinitializer }, align 32
@evergreen_packet3_check._entry_ptr.138 = internal global ptr @evergreen_packet3_check._entry.136, section ".printk_index", align 4
@.str.139 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bad CP DMA SRC_SEL\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"CP DMA DAS not supported\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"CP DMA DAIC only supported for registers\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bad CP DMA DST\0A\00", [16 x i8] zeroinitializer }, align 32
@evergreen_packet3_check._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.92, ptr @.str.6, i32 2199, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"CP DMA dst buffer too small (%llu %lu)\0A\00", [56 x i8] zeroinitializer }, align 32
@evergreen_packet3_check._entry_ptr.145 = internal global ptr @evergreen_packet3_check._entry.143, section ".printk_index", align 4
@.str.146 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bad CP DMA DST_SEL\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bad PFP_SYNC_ME\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bad SURFACE_SYNC\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bad EVENT_WRITE\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bad EVENT_WRITE_EOP\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bad EVENT_WRITE_EOS\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bad PACKET3_SET_CONFIG_REG\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bad PACKET3_SET_CONTEXT_REG\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bad SET_RESOURCE\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bad SET_RESOURCE (tex)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bad SET_RESOURCE (vtx)\0A\00", [40 x i8] zeroinitializer }, align 32
@evergreen_packet3_check._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.157, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@evergreen_packet3_check._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.92, ptr @.str.6, i32 2419, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"vbo resource seems too big for the bo\0A\00", [57 x i8] zeroinitializer }, align 32
@evergreen_packet3_check._entry_ptr.160 = internal global ptr @evergreen_packet3_check._entry.158, section ".printk_index", align 4
@.str.161 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bad SET_BOOL_CONST\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bad SET_LOOP_CONST\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bad SET_CTL_CONST\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bad SET_SAMPLER\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"bad STRMOUT_BUFFER_UPDATE (invalid count)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"bad STRMOUT_BUFFER_UPDATE (missing dst reloc)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"bad STRMOUT_BUFFER_UPDATE dst bo too small: 0x%llx, 0x%lx\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"bad STRMOUT_BUFFER_UPDATE (missing src reloc)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"bad STRMOUT_BUFFER_UPDATE src bo too small: 0x%llx, 0x%lx\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bad MEM_WRITE (invalid count)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bad MEM_WRITE (missing reloc)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"bad MEM_WRITE (address not qwords aligned)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"bad MEM_WRITE bo too small: 0x%llx, 0x%lx\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bad COPY_DW (invalid count)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bad COPY_DW (missing src reloc)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"bad COPY_DW src bo too small: 0x%llx, 0x%lx\0A\00", [51 x i8] zeroinitializer }, align 32
@evergreen_packet3_check._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.92, ptr @.str.6, i32 2585, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"forbidden register 0x%08x at %d\0A\00", [63 x i8] zeroinitializer }, align 32
@evergreen_packet3_check._entry_ptr.179 = internal global ptr @evergreen_packet3_check._entry.177, section ".printk_index", align 4
@.str.180 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bad COPY_DW (missing dst reloc)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"bad COPY_DW dst bo too small: 0x%llx, 0x%lx\0A\00", [51 x i8] zeroinitializer }, align 32
@evergreen_packet3_check._entry.182 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.92, ptr @.str.6, i32 2612, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@evergreen_packet3_check._entry_ptr.183 = internal global ptr @evergreen_packet3_check._entry.182, section ".printk_index", align 4
@.str.184 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"bad SET_APPEND_CNT (invalid count)\0A\00", [60 x i8] zeroinitializer }, align 32
@evergreen_packet3_check._entry.185 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.92, ptr @.str.6, i32 2634, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"forbidden register for append cnt 0x%08x at %d\0A\00", [48 x i8] zeroinitializer }, align 32
@evergreen_packet3_check._entry_ptr.187 = internal global ptr @evergreen_packet3_check._entry.185, section ".printk_index", align 4
@.str.188 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"bad SET_APPEND_CNT (missing reloc)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"bad SET_APPEND_CNT (unsupported operation)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Packet3 opcode %x not supported\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"streamout %d bo too small: 0x%llx, 0x%lx\0A\00", [54 x i8] zeroinitializer }, align 32
@evergreen_cs_track_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.193, ptr @.str.6, i32 958, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"No buffer for streamout %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"evergreen_cs_track_check\00", [39 x i8] zeroinitializer }, align 32
@evergreen_cs_track_check._entry_ptr = internal global ptr @evergreen_cs_track_check._entry, section ".printk_index", align 4
@evergreen_cs_track_check._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.193, ptr @.str.6, i32 981, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s:%d mask 0x%08X | 0x%08X no cb for %d\0A\00", [55 x i8] zeroinitializer }, align 32
@evergreen_cs_track_check._entry_ptr.196 = internal global ptr @evergreen_cs_track_check._entry.194, section ".printk_index", align 4
@evergreen_cs_track_validate_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.198, ptr @.str.6, i32 418, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s:%d cb invalid format %d for %d (0x%08x)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"evergreen_cs_track_validate_cb\00", [33 x i8] zeroinitializer }, align 32
@evergreen_cs_track_validate_cb._entry_ptr = internal global ptr @evergreen_cs_track_validate_cb._entry, section ".printk_index", align 4
@.str.199 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"cb\00", [29 x i8] zeroinitializer }, align 32
@evergreen_cs_track_validate_cb._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.198, ptr @.str.6, i32 432, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s:%d cb[%d] invalid (0x%08x 0x%08x 0x%08x 0x%08x)\0A\00", [44 x i8] zeroinitializer }, align 32
@evergreen_cs_track_validate_cb._entry_ptr.202 = internal global ptr @evergreen_cs_track_validate_cb._entry.200, section ".printk_index", align 4
@evergreen_cs_track_validate_cb._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.198, ptr @.str.6, i32 439, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s:%d cb[%d] bo base %ld not aligned with %ld\0A\00", [49 x i8] zeroinitializer }, align 32
@evergreen_cs_track_validate_cb._entry_ptr.205 = internal global ptr @evergreen_cs_track_validate_cb._entry.203, section ".printk_index", align 4
@evergreen_cs_track_validate_cb._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.198, ptr @.str.6, i32 482, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"%s:%d cb[%d] bo too small (layer size %d, offset %d, max layer %d, bo size %ld, slice %d)\0A\00", [37 x i8] zeroinitializer }, align 32
@evergreen_cs_track_validate_cb._entry_ptr.208 = internal global ptr @evergreen_cs_track_validate_cb._entry.206, section ".printk_index", align 4
@evergreen_cs_track_validate_cb._entry.209 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.210, ptr @.str.198, ptr @.str.6, i32 487, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s:%d problematic surf: (%d %d) (%d %d %d %d %d %d %d)\0A\00", [40 x i8] zeroinitializer }, align 32
@evergreen_cs_track_validate_cb._entry_ptr.211 = internal global ptr @evergreen_cs_track_validate_cb._entry.209, section ".printk_index", align 4
@evergreen_surface_value_conv_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.213, ptr @.str.6, i32 333, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s:%d %s invalid array mode %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"evergreen_surface_value_conv_check\00", [61 x i8] zeroinitializer }, align 32
@evergreen_surface_value_conv_check._entry_ptr = internal global ptr @evergreen_surface_value_conv_check._entry, section ".printk_index", align 4
@evergreen_surface_value_conv_check._entry.214 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.215, ptr @.str.213, ptr @.str.6, i32 344, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s:%d %s invalid number of banks %d\0A\00", [59 x i8] zeroinitializer }, align 32
@evergreen_surface_value_conv_check._entry_ptr.216 = internal global ptr @evergreen_surface_value_conv_check._entry.214, section ".printk_index", align 4
@evergreen_surface_value_conv_check._entry.217 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.218, ptr @.str.213, ptr @.str.6, i32 354, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s:%d %s invalid bankw %d\0A\00", [37 x i8] zeroinitializer }, align 32
@evergreen_surface_value_conv_check._entry_ptr.219 = internal global ptr @evergreen_surface_value_conv_check._entry.217, section ".printk_index", align 4
@evergreen_surface_value_conv_check._entry.220 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.221, ptr @.str.213, ptr @.str.6, i32 364, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s:%d %s invalid bankh %d\0A\00", [37 x i8] zeroinitializer }, align 32
@evergreen_surface_value_conv_check._entry_ptr.222 = internal global ptr @evergreen_surface_value_conv_check._entry.220, section ".printk_index", align 4
@evergreen_surface_value_conv_check._entry.223 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.224, ptr @.str.213, ptr @.str.6, i32 374, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s:%d %s invalid macro tile aspect %d\0A\00", [57 x i8] zeroinitializer }, align 32
@evergreen_surface_value_conv_check._entry_ptr.225 = internal global ptr @evergreen_surface_value_conv_check._entry.223, section ".printk_index", align 4
@evergreen_surface_value_conv_check._entry.226 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.227, ptr @.str.213, ptr @.str.6, i32 387, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s:%d %s invalid tile split %d\0A\00", [32 x i8] zeroinitializer }, align 32
@evergreen_surface_value_conv_check._entry_ptr.228 = internal global ptr @evergreen_surface_value_conv_check._entry.226, section ".printk_index", align 4
@evergreen_surface_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.229, ptr @.str.6, i32 314, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"evergreen_surface_check\00", [40 x i8] zeroinitializer }, align 32
@evergreen_surface_check._entry_ptr = internal global ptr @evergreen_surface_check._entry, section ".printk_index", align 4
@evergreen_surface_check_linear_aligned._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.231, ptr @.str.6, i32 215, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s:%d %s pitch %d invalid must be aligned with %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"evergreen_surface_check_linear_aligned\00", [57 x i8] zeroinitializer }, align 32
@evergreen_surface_check_linear_aligned._entry_ptr = internal global ptr @evergreen_surface_check_linear_aligned._entry, section ".printk_index", align 4
@evergreen_surface_check_1d._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.232, ptr @.str.233, ptr @.str.6, i32 239, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s:%d %s pitch %d invalid must be aligned with %d (%d %d %d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"evergreen_surface_check_1d\00", [37 x i8] zeroinitializer }, align 32
@evergreen_surface_check_1d._entry_ptr = internal global ptr @evergreen_surface_check_1d._entry, section ".printk_index", align 4
@evergreen_surface_check_1d._entry.234 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.233, ptr @.str.6, i32 246, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s:%d %s height %d invalid must be aligned with 8\0A\00", [45 x i8] zeroinitializer }, align 32
@evergreen_surface_check_1d._entry_ptr.236 = internal global ptr @evergreen_surface_check_1d._entry.234, section ".printk_index", align 4
@evergreen_surface_check_2d._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.237, ptr @.str.6, i32 281, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"evergreen_surface_check_2d\00", [37 x i8] zeroinitializer }, align 32
@evergreen_surface_check_2d._entry_ptr = internal global ptr @evergreen_surface_check_2d._entry, section ".printk_index", align 4
@evergreen_surface_check_2d._entry.238 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.239, ptr @.str.237, ptr @.str.6, i32 288, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s:%d %s height %d invalid must be aligned with %d\0A\00", [44 x i8] zeroinitializer }, align 32
@evergreen_surface_check_2d._entry_ptr.240 = internal global ptr @evergreen_surface_check_2d._entry.238, section ".printk_index", align 4
@evergreen_cs_track_validate_stencil._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.241, ptr @.str.242, ptr @.str.6, i32 584, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s:%d stencil invalid format %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"evergreen_cs_track_validate_stencil\00", [60 x i8] zeroinitializer }, align 32
@evergreen_cs_track_validate_stencil._entry_ptr = internal global ptr @evergreen_cs_track_validate_stencil._entry, section ".printk_index", align 4
@.str.243 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"stencil\00", [24 x i8] zeroinitializer }, align 32
@evergreen_cs_track_validate_stencil._entry.244 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.245, ptr @.str.242, ptr @.str.6, i32 606, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s:%d stencil invalid (0x%08x 0x%08x 0x%08x 0x%08x)\0A\00", [43 x i8] zeroinitializer }, align 32
@evergreen_cs_track_validate_stencil._entry_ptr.246 = internal global ptr @evergreen_cs_track_validate_stencil._entry.244, section ".printk_index", align 4
@evergreen_cs_track_validate_stencil._entry.247 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.248, ptr @.str.242, ptr @.str.6, i32 614, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s:%d stencil read bo base %ld not aligned with %ld\0A\00", [43 x i8] zeroinitializer }, align 32
@evergreen_cs_track_validate_stencil._entry_ptr.249 = internal global ptr @evergreen_cs_track_validate_stencil._entry.247, section ".printk_index", align 4
@evergreen_cs_track_validate_stencil._entry.250 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.251, ptr @.str.242, ptr @.str.6, i32 623, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"%s:%d stencil read bo too small (layer size %d, offset %ld, max layer %d, bo size %ld)\0A\00", [40 x i8] zeroinitializer }, align 32
@evergreen_cs_track_validate_stencil._entry_ptr.252 = internal global ptr @evergreen_cs_track_validate_stencil._entry.250, section ".printk_index", align 4
@evergreen_cs_track_validate_stencil._entry.253 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.245, ptr @.str.242, ptr @.str.6, i32 626, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@evergreen_cs_track_validate_stencil._entry_ptr.254 = internal global ptr @evergreen_cs_track_validate_stencil._entry.253, section ".printk_index", align 4
@evergreen_cs_track_validate_stencil._entry.255 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.256, ptr @.str.242, ptr @.str.6, i32 633, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s:%d stencil write bo base %ld not aligned with %ld\0A\00", [42 x i8] zeroinitializer }, align 32
@evergreen_cs_track_validate_stencil._entry_ptr.257 = internal global ptr @evergreen_cs_track_validate_stencil._entry.255, section ".printk_index", align 4
@evergreen_cs_track_validate_stencil._entry.258 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.259, ptr @.str.242, ptr @.str.6, i32 642, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"%s:%d stencil write bo too small (layer size %d, offset %ld, max layer %d, bo size %ld)\0A\00", [39 x i8] zeroinitializer }, align 32
@evergreen_cs_track_validate_stencil._entry_ptr.260 = internal global ptr @evergreen_cs_track_validate_stencil._entry.258, section ".printk_index", align 4
@evergreen_cs_track_validate_htile._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.261, ptr @.str.262, ptr @.str.6, i32 503, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s:%d htile enabled without htile surface 0x%08x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"evergreen_cs_track_validate_htile\00", [62 x i8] zeroinitializer }, align 32
@evergreen_cs_track_validate_htile._entry_ptr = internal global ptr @evergreen_cs_track_validate_htile._entry, section ".printk_index", align 4
@evergreen_cs_track_validate_htile._entry.263 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.264, ptr @.str.262, ptr @.str.6, i32 540, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s:%d invalid num pipes %d\0A\00", [36 x i8] zeroinitializer }, align 32
@evergreen_cs_track_validate_htile._entry_ptr.265 = internal global ptr @evergreen_cs_track_validate_htile._entry.263, section ".printk_index", align 4
@evergreen_cs_track_validate_htile._entry.266 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.267, ptr @.str.262, ptr @.str.6, i32 554, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s:%d htile surface too small %ld for %ld (%d %d)\0A\00", [45 x i8] zeroinitializer }, align 32
@evergreen_cs_track_validate_htile._entry_ptr.268 = internal global ptr @evergreen_cs_track_validate_htile._entry.266, section ".printk_index", align 4
@evergreen_cs_track_validate_depth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.269, ptr @.str.270, ptr @.str.6, i32 689, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s:%d depth invalid format %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"evergreen_cs_track_validate_depth\00", [62 x i8] zeroinitializer }, align 32
@evergreen_cs_track_validate_depth._entry_ptr = internal global ptr @evergreen_cs_track_validate_depth._entry, section ".printk_index", align 4
@.str.271 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"depth\00", [26 x i8] zeroinitializer }, align 32
@evergreen_cs_track_validate_depth._entry.272 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.273, ptr @.str.270, ptr @.str.6, i32 697, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s:%d depth invalid (0x%08x 0x%08x 0x%08x)\0A\00", [52 x i8] zeroinitializer }, align 32
@evergreen_cs_track_validate_depth._entry_ptr.274 = internal global ptr @evergreen_cs_track_validate_depth._entry.272, section ".printk_index", align 4
@evergreen_cs_track_validate_depth._entry.275 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.273, ptr @.str.270, ptr @.str.6, i32 705, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@evergreen_cs_track_validate_depth._entry_ptr.276 = internal global ptr @evergreen_cs_track_validate_depth._entry.275, section ".printk_index", align 4
@evergreen_cs_track_validate_depth._entry.277 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.248, ptr @.str.270, ptr @.str.6, i32 712, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@evergreen_cs_track_validate_depth._entry_ptr.278 = internal global ptr @evergreen_cs_track_validate_depth._entry.277, section ".printk_index", align 4
@evergreen_cs_track_validate_depth._entry.279 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.280, ptr @.str.270, ptr @.str.6, i32 721, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"%s:%d depth read bo too small (layer size %d, offset %ld, max layer %d, bo size %ld)\0A\00", [42 x i8] zeroinitializer }, align 32
@evergreen_cs_track_validate_depth._entry_ptr.281 = internal global ptr @evergreen_cs_track_validate_depth._entry.279, section ".printk_index", align 4
@evergreen_cs_track_validate_depth._entry.282 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.256, ptr @.str.270, ptr @.str.6, i32 728, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@evergreen_cs_track_validate_depth._entry_ptr.283 = internal global ptr @evergreen_cs_track_validate_depth._entry.282, section ".printk_index", align 4
@evergreen_cs_track_validate_depth._entry.284 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.285, ptr @.str.270, ptr @.str.6, i32 737, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"%s:%d depth write bo too small (layer size %d, offset %ld, max layer %d, bo size %ld)\0A\00", [41 x i8] zeroinitializer }, align 32
@evergreen_cs_track_validate_depth._entry_ptr.286 = internal global ptr @evergreen_cs_track_validate_depth._entry.284, section ".printk_index", align 4
@evergreen_cs_handle_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.287, ptr @.str.288, ptr @.str.6, i32 1145, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bad SET_CONTEXT_REG 0x%04X\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"evergreen_cs_handle_reg\00", [40 x i8] zeroinitializer }, align 32
@evergreen_cs_handle_reg._entry_ptr = internal global ptr @evergreen_cs_handle_reg._entry, section ".printk_index", align 4
@evergreen_cs_handle_reg._entry.289 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.287, ptr @.str.288, ptr @.str.6, i32 1157, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@evergreen_cs_handle_reg._entry_ptr.290 = internal global ptr @evergreen_cs_handle_reg._entry.289, section ".printk_index", align 4
@evergreen_cs_handle_reg._entry.291 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.287, ptr @.str.288, ptr @.str.6, i32 1164, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@evergreen_cs_handle_reg._entry_ptr.292 = internal global ptr @evergreen_cs_handle_reg._entry.291, section ".printk_index", align 4
@evergreen_cs_handle_reg._entry.293 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.287, ptr @.str.288, ptr @.str.6, i32 1174, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@evergreen_cs_handle_reg._entry_ptr.294 = internal global ptr @evergreen_cs_handle_reg._entry.293, section ".printk_index", align 4
@evergreen_cs_handle_reg._entry.295 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.287, ptr @.str.288, ptr @.str.6, i32 1216, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@evergreen_cs_handle_reg._entry_ptr.296 = internal global ptr @evergreen_cs_handle_reg._entry.295, section ".printk_index", align 4
@evergreen_cs_handle_reg._entry.297 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.287, ptr @.str.288, ptr @.str.6, i32 1228, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@evergreen_cs_handle_reg._entry_ptr.298 = internal global ptr @evergreen_cs_handle_reg._entry.297, section ".printk_index", align 4
@evergreen_cs_handle_reg._entry.299 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.287, ptr @.str.288, ptr @.str.6, i32 1240, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@evergreen_cs_handle_reg._entry_ptr.300 = internal global ptr @evergreen_cs_handle_reg._entry.299, section ".printk_index", align 4
@evergreen_cs_handle_reg._entry.301 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.287, ptr @.str.288, ptr @.str.6, i32 1252, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@evergreen_cs_handle_reg._entry_ptr.302 = internal global ptr @evergreen_cs_handle_reg._entry.301, section ".printk_index", align 4
@evergreen_cs_handle_reg._entry.303 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.287, ptr @.str.288, ptr @.str.6, i32 1275, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@evergreen_cs_handle_reg._entry_ptr.304 = internal global ptr @evergreen_cs_handle_reg._entry.303, section ".printk_index", align 4
@evergreen_cs_handle_reg._entry.305 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.306, ptr @.str.288, ptr @.str.6, i32 1297, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"missing reloc for CP_COHER_BASE 0x%04X\0A\00", [56 x i8] zeroinitializer }, align 32
@evergreen_cs_handle_reg._entry_ptr.307 = internal global ptr @evergreen_cs_handle_reg._entry.305, section ".printk_index", align 4
@evergreen_cs_handle_reg._entry.308 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.287, ptr @.str.288, ptr @.str.6, i32 1313, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@evergreen_cs_handle_reg._entry_ptr.309 = internal global ptr @evergreen_cs_handle_reg._entry.308, section ".printk_index", align 4
@evergreen_cs_handle_reg._entry.310 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.287, ptr @.str.288, ptr @.str.6, i32 1322, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@evergreen_cs_handle_reg._entry_ptr.311 = internal global ptr @evergreen_cs_handle_reg._entry.310, section ".printk_index", align 4
@evergreen_cs_handle_reg._entry.312 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.287, ptr @.str.288, ptr @.str.6, i32 1362, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@evergreen_cs_handle_reg._entry_ptr.313 = internal global ptr @evergreen_cs_handle_reg._entry.312, section ".printk_index", align 4
@evergreen_cs_handle_reg._entry.314 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.287, ptr @.str.288, ptr @.str.6, i32 1380, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@evergreen_cs_handle_reg._entry_ptr.315 = internal global ptr @evergreen_cs_handle_reg._entry.314, section ".printk_index", align 4
@evergreen_cs_handle_reg._entry.316 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.287, ptr @.str.288, ptr @.str.6, i32 1441, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@evergreen_cs_handle_reg._entry_ptr.317 = internal global ptr @evergreen_cs_handle_reg._entry.316, section ".printk_index", align 4
@evergreen_cs_handle_reg._entry.318 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.287, ptr @.str.288, ptr @.str.6, i32 1469, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@evergreen_cs_handle_reg._entry_ptr.319 = internal global ptr @evergreen_cs_handle_reg._entry.318, section ".printk_index", align 4
@evergreen_cs_handle_reg._entry.320 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.287, ptr @.str.288, ptr @.str.6, i32 1501, ptr @.str.79, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@evergreen_cs_handle_reg._entry_ptr.321 = internal global ptr @evergreen_cs_handle_reg._entry.320, section ".printk_index", align 4
@evergreen_cs_handle_reg._entry.322 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.287, ptr @.str.288, ptr @.str.6, i32 1518, ptr @.str.79, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@evergreen_cs_handle_reg._entry_ptr.323 = internal global ptr @evergreen_cs_handle_reg._entry.322, section ".printk_index", align 4
@evergreen_cs_handle_reg._entry.324 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.287, ptr @.str.288, ptr @.str.6, i32 1557, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@evergreen_cs_handle_reg._entry_ptr.325 = internal global ptr @evergreen_cs_handle_reg._entry.324, section ".printk_index", align 4
@evergreen_cs_handle_reg._entry.326 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.287, ptr @.str.288, ptr @.str.6, i32 1573, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@evergreen_cs_handle_reg._entry_ptr.327 = internal global ptr @evergreen_cs_handle_reg._entry.326, section ".printk_index", align 4
@evergreen_cs_handle_reg._entry.328 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.287, ptr @.str.288, ptr @.str.6, i32 1586, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@evergreen_cs_handle_reg._entry_ptr.329 = internal global ptr @evergreen_cs_handle_reg._entry.328, section ".printk_index", align 4
@evergreen_cs_handle_reg._entry.330 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.287, ptr @.str.288, ptr @.str.6, i32 1704, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@evergreen_cs_handle_reg._entry_ptr.331 = internal global ptr @evergreen_cs_handle_reg._entry.330, section ".printk_index", align 4
@evergreen_cs_handle_reg._entry.332 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.333, ptr @.str.288, ptr @.str.6, i32 1712, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.333 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bad SET_CONFIG_REG 0x%04X\0A\00", [37 x i8] zeroinitializer }, align 32
@evergreen_cs_handle_reg._entry_ptr.334 = internal global ptr @evergreen_cs_handle_reg._entry.332, section ".printk_index", align 4
@evergreen_cs_handle_reg._entry.335 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.333, ptr @.str.288, ptr @.str.6, i32 1718, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@evergreen_cs_handle_reg._entry_ptr.336 = internal global ptr @evergreen_cs_handle_reg._entry.335, section ".printk_index", align 4
@evergreen_cs_handle_reg._entry.337 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.287, ptr @.str.288, ptr @.str.6, i32 1726, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@evergreen_cs_handle_reg._entry_ptr.338 = internal global ptr @evergreen_cs_handle_reg._entry.337, section ".printk_index", align 4
@evergreen_cs_handle_reg._entry.339 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.287, ptr @.str.288, ptr @.str.6, i32 1732, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@evergreen_cs_handle_reg._entry_ptr.340 = internal global ptr @evergreen_cs_handle_reg._entry.339, section ".printk_index", align 4
@evergreen_cs_handle_reg._entry.341 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.288, ptr @.str.6, i32 1741, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@evergreen_cs_handle_reg._entry_ptr.342 = internal global ptr @evergreen_cs_handle_reg._entry.341, section ".printk_index", align 4
@evergreen_cs_track_validate_texture._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.343, ptr @.str.344, ptr @.str.6, i32 793, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.343 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s:%d texture invalid format %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.344 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"evergreen_cs_track_validate_texture\00", [60 x i8] zeroinitializer }, align 32
@evergreen_cs_track_validate_texture._entry_ptr = internal global ptr @evergreen_cs_track_validate_texture._entry, section ".printk_index", align 4
@evergreen_cs_track_validate_texture._entry.345 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.346, ptr @.str.344, ptr @.str.6, i32 814, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.346 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s:%d texture invalid dimension %d\0A\00", [60 x i8] zeroinitializer }, align 32
@evergreen_cs_track_validate_texture._entry_ptr.347 = internal global ptr @evergreen_cs_track_validate_texture._entry.345, section ".printk_index", align 4
@.str.348 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"texture\00", [24 x i8] zeroinitializer }, align 32
@evergreen_cs_track_validate_texture._entry.349 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.350, ptr @.str.344, ptr @.str.6, i32 831, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.350 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%s:%d texture invalid 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@evergreen_cs_track_validate_texture._entry_ptr.351 = internal global ptr @evergreen_cs_track_validate_texture._entry.349, section ".printk_index", align 4
@evergreen_cs_track_validate_texture._entry.352 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.353, ptr @.str.344, ptr @.str.6, i32 838, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.353 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s:%d texture bo base %ld not aligned with %ld\0A\00", [48 x i8] zeroinitializer }, align 32
@evergreen_cs_track_validate_texture._entry_ptr.354 = internal global ptr @evergreen_cs_track_validate_texture._entry.352, section ".printk_index", align 4
@evergreen_cs_track_validate_texture._entry.355 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.356, ptr @.str.344, ptr @.str.6, i32 843, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.356 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s:%d mipmap bo base %ld not aligned with %ld\0A\00", [49 x i8] zeroinitializer }, align 32
@evergreen_cs_track_validate_texture._entry_ptr.357 = internal global ptr @evergreen_cs_track_validate_texture._entry.355, section ".printk_index", align 4
@evergreen_cs_track_validate_texture._entry.358 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.359, ptr @.str.344, ptr @.str.6, i32 857, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.359 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"%s:%d texture bo too small (layer size %d, offset %ld, max layer %d, depth %d, bo size %ld) (%d %d)\0A\00", [59 x i8] zeroinitializer }, align 32
@evergreen_cs_track_validate_texture._entry_ptr.360 = internal global ptr @evergreen_cs_track_validate_texture._entry.358, section ".printk_index", align 4
@evergreen_cs_track_validate_texture._entry.361 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.362, ptr @.str.344, ptr @.str.6, i32 864, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.362 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s:%i got NULL MIP_ADDRESS relocation\0A\00", [57 x i8] zeroinitializer }, align 32
@evergreen_cs_track_validate_texture._entry_ptr.363 = internal global ptr @evergreen_cs_track_validate_texture._entry.361, section ".printk_index", align 4
@evergreen_cs_track_validate_texture._entry.364 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.365, ptr @.str.344, ptr @.str.6, i32 895, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.365 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s:%d invalid array mode %d\0A\00", [35 x i8] zeroinitializer }, align 32
@evergreen_cs_track_validate_texture._entry_ptr.366 = internal global ptr @evergreen_cs_track_validate_texture._entry.364, section ".printk_index", align 4
@.str.367 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mipmap\00", [25 x i8] zeroinitializer }, align 32
@evergreen_cs_track_validate_texture._entry.368 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.369, ptr @.str.344, ptr @.str.6, i32 918, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.369 = internal constant { [128 x i8], [32 x i8] } { [128 x i8] c"%s:%d mipmap [%d] bo too small (layer size %d, offset %ld, coffset %ld, max layer %d, depth %d, bo size %ld) level0 (%d %d %d)\0A\00", [32 x i8] zeroinitializer }, align 32
@evergreen_cs_track_validate_texture._entry_ptr.370 = internal global ptr @evergreen_cs_track_validate_texture._entry.368, section ".printk_index", align 4
@evergreen_cs_track_validate_texture._entry.371 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.210, ptr @.str.344, ptr @.str.6, i32 923, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@evergreen_cs_track_validate_texture._entry_ptr.372 = internal global ptr @evergreen_cs_track_validate_texture._entry.371, section ".printk_index", align 4
@.str.373 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bad SET_BASE\00", [19 x i8] zeroinitializer }, align 32
@.str.374 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CP DMA Bad SRC register\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.375 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CP DMA Bad DST register\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.376 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid register 0x%x in CS\0A\00", [35 x i8] zeroinitializer }, align 32
@switch.table.evergreen_cs_parse = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 2, i32 4, i32 8], [16 x i8] zeroinitializer }, align 32
@switch.table.evergreen_cs_track_check = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 5, i32 26, i32 26], [20 x i8] zeroinitializer }, align 32
@switch.table.evergreen_surface_value_conv_check = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2, i32 4, i32 8, i32 16], [16 x i8] zeroinitializer }, align 32
@switch.table.evergreen_surface_value_conv_check.377 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 2, i32 4, i32 8], [16 x i8] zeroinitializer }, align 32
@switch.table.evergreen_surface_value_conv_check.378 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 2, i32 4, i32 8], [16 x i8] zeroinitializer }, align 32
@switch.table.evergreen_surface_value_conv_check.379 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 2, i32 4, i32 8], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.380 = internal global [42 x i64] [i64 40, i64 32, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 32, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 45, i64 46, i64 47, i64 48, i64 52, i64 53, i64 59, i64 60, i64 61, i64 65, i64 66, i64 67, i64 70, i64 71, i64 72, i64 104, i64 105, i64 106, i64 107, i64 108, i64 109, i64 110, i64 111, i64 117]
@__sancov_gen_cov_switch_values.381 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.382 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.383 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.384 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 7]
@__sancov_gen_cov_switch_values.385 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.386 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.387 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 13, i64 15]
@__sancov_gen_cov_switch_values.388 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 8]
@__sancov_gen_cov_switch_values.389 = internal global [13 x i64] [i64 11, i64 8, i64 0, i64 8, i64 64, i64 65, i64 68, i64 72, i64 73, i64 75, i64 76, i64 77, i64 79]
@__sancov_gen_cov_switch_values.390 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.391 = internal global [50 x i64] [i64 48, i64 8, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 24, i64 32, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 45, i64 46, i64 47, i64 48, i64 52, i64 53, i64 54, i64 58, i64 59, i64 60, i64 61, i64 65, i64 66, i64 67, i64 69, i64 70, i64 71, i64 72, i64 104, i64 105, i64 107, i64 108, i64 109, i64 110, i64 111, i64 112, i64 115, i64 116, i64 117]
@__sancov_gen_cov_switch_values.392 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 13, i64 15]
@__sancov_gen_cov_switch_values.393 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 8]
@__sancov_gen_cov_switch_values.394 = internal global [13 x i64] [i64 11, i64 8, i64 0, i64 8, i64 64, i64 65, i64 68, i64 72, i64 73, i64 75, i64 76, i64 77, i64 79]
@__sancov_gen_cov_switch_values.395 = internal global [270 x i64] [i64 268, i64 32, i64 34296, i64 35208, i64 35904, i64 35908, i64 35912, i64 35916, i64 35920, i64 35924, i64 35928, i64 35932, i64 35936, i64 35940, i64 35944, i64 35948, i64 36344, i64 36368, i64 36372, i64 36376, i64 36380, i64 36880, i64 163848, i64 163860, i64 163900, i64 163904, i64 163908, i64 163912, i64 163916, i64 163920, i64 163924, i64 163928, i64 163932, i64 164408, i64 164412, i64 164688, i64 164696, i64 165888, i64 165892, i64 165936, i64 165940, i64 165952, i64 165980, i64 166004, i64 166028, i64 166052, i64 166072, i64 166096, i64 166144, i64 166148, i64 166152, i64 166156, i64 166160, i64 166164, i64 166172, i64 166176, i64 166180, i64 166184, i64 166188, i64 166192, i64 166196, i64 166208, i64 166212, i64 166216, i64 166220, i64 166224, i64 166228, i64 166232, i64 166236, i64 166240, i64 166244, i64 166248, i64 166252, i64 166256, i64 166260, i64 166264, i64 166268, i64 166272, i64 166276, i64 166280, i64 166284, i64 166288, i64 166292, i64 166296, i64 166300, i64 166304, i64 166308, i64 166312, i64 166316, i64 166320, i64 166324, i64 166328, i64 166332, i64 166336, i64 166340, i64 166344, i64 166348, i64 166352, i64 166356, i64 166360, i64 166364, i64 166368, i64 166372, i64 166376, i64 166380, i64 166384, i64 166388, i64 166392, i64 166396, i64 166588, i64 166608, i64 166616, i64 166624, i64 166632, i64 166640, i64 166648, i64 166656, i64 166664, i64 166804, i64 166808, i64 166812, i64 166816, i64 166820, i64 166824, i64 166828, i64 166832, i64 166836, i64 166840, i64 166844, i64 166848, i64 166852, i64 166856, i64 166880, i64 166916, i64 167008, i64 167012, i64 167016, i64 167020, i64 167024, i64 167028, i64 167036, i64 167040, i64 167044, i64 167048, i64 167068, i64 167072, i64 167076, i64 167080, i64 167084, i64 167088, i64 167096, i64 167100, i64 167104, i64 167108, i64 167128, i64 167132, i64 167136, i64 167140, i64 167144, i64 167148, i64 167156, i64 167160, i64 167164, i64 167168, i64 167188, i64 167192, i64 167196, i64 167200, i64 167204, i64 167208, i64 167216, i64 167220, i64 167224, i64 167228, i64 167248, i64 167252, i64 167256, i64 167260, i64 167264, i64 167268, i64 167276, i64 167280, i64 167284, i64 167288, i64 167308, i64 167312, i64 167316, i64 167320, i64 167324, i64 167328, i64 167336, i64 167340, i64 167344, i64 167348, i64 167368, i64 167372, i64 167376, i64 167380, i64 167384, i64 167388, i64 167396, i64 167400, i64 167404, i64 167408, i64 167428, i64 167432, i64 167436, i64 167440, i64 167444, i64 167448, i64 167456, i64 167460, i64 167464, i64 167468, i64 167488, i64 167492, i64 167496, i64 167500, i64 167504, i64 167508, i64 167516, i64 167520, i64 167524, i64 167528, i64 167532, i64 167536, i64 167544, i64 167548, i64 167552, i64 167556, i64 167560, i64 167564, i64 167572, i64 167576, i64 167580, i64 167584, i64 167588, i64 167592, i64 167680, i64 167684, i64 167688, i64 167692, i64 167696, i64 167700, i64 167704, i64 167708, i64 167712, i64 167716, i64 167720, i64 167724, i64 167728, i64 167732, i64 167736, i64 167740, i64 167744, i64 167748, i64 167752, i64 167756, i64 167760, i64 167764, i64 167768, i64 167772, i64 167776, i64 167780, i64 167784, i64 167788, i64 167792, i64 167796, i64 167800, i64 167804]
@__sancov_gen_cov_switch_values.396 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 7]
@__sancov_gen_cov_switch_values.397 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 7]
@__sancov_gen_cov_switch_values.398 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 7]
@__sancov_gen_cov_switch_values.399 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.400 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.401 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.402 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.403 = internal global [94 x i64] [i64 92, i64 32, i64 32812, i64 32832, i64 34044, i64 34288, i64 34292, i64 34992, i64 35012, i64 35028, i64 35160, i64 35164, i64 35184, i64 35188, i64 35208, i64 35216, i64 35220, i64 35224, i64 35228, i64 35232, i64 35236, i64 35240, i64 35244, i64 35248, i64 35252, i64 35348, i64 35424, i64 35600, i64 35824, i64 35840, i64 35844, i64 35856, i64 35860, i64 35904, i64 35908, i64 35912, i64 35916, i64 35920, i64 35924, i64 35928, i64 35932, i64 35936, i64 35940, i64 35944, i64 35948, i64 36236, i64 36244, i64 36344, i64 36368, i64 36372, i64 36376, i64 36380, i64 36384, i64 36388, i64 36392, i64 36424, i64 37120, i64 37180, i64 38152, i64 38960, i64 38964, i64 38968, i64 38972, i64 38996, i64 41984, i64 41988, i64 41992, i64 41996, i64 42000, i64 42004, i64 42008, i64 42012, i64 42016, i64 42020, i64 42024, i64 42028, i64 42032, i64 42036, i64 42040, i64 42044, i64 42048, i64 42052, i64 42056, i64 42060, i64 42064, i64 42068, i64 42072, i64 42076, i64 42080, i64 42084, i64 42088, i64 42092, i64 42096, i64 42100]
@___asan_gen_.404 = private unnamed_addr constant [19 x i8] c"cayman_reg_safe_bm\00", align 1
@___asan_gen_.405 = private unnamed_addr constant [43 x i8] c"./drivers/gpu/drm/radeon/cayman_reg_safe.h\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1, i32 23 }
@___asan_gen_.407 = private unnamed_addr constant [22 x i8] c"evergreen_reg_safe_bm\00", align 1
@___asan_gen_.408 = private unnamed_addr constant [46 x i8] c"./drivers/gpu/drm/radeon/evergreen_reg_safe.h\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1, i32 23 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2765, i32 4 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2808, i32 4 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2822, i32 5 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2844, i32 5 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2848, i32 5 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2856, i32 5 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2873, i32 6 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2878, i32 6 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2913, i32 6 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2918, i32 6 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2932, i32 6 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2937, i32 6 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2951, i32 6 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2966, i32 6 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2976, i32 6 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2981, i32 6 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2986, i32 6 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 3001, i32 6 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 3016, i32 6 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 3021, i32 6 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 3026, i32 6 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 3040, i32 6 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 3063, i32 6 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 3078, i32 6 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 3083, i32 6 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 3088, i32 6 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 3124, i32 6 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 3129, i32 6 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 3165, i32 6 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 3170, i32 6 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 3175, i32 6 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 3186, i32 5 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 3193, i32 5 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 3199, i32 5 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 3211, i32 4 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 3533, i32 4 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 3545, i32 4 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1057, i32 4 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1063, i32 3 }
@___asan_gen_.608 = private unnamed_addr constant [16 x i8] c"vline_start_end\00", align 1
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1027, i32 18 }
@___asan_gen_.611 = private unnamed_addr constant [13 x i8] c"vline_status\00", align 1
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1035, i32 18 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1796, i32 4 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1808, i32 4 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1828, i32 4 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1836, i32 4 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1842, i32 4 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1855, i32 4 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1873, i32 4 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1881, i32 4 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1890, i32 4 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1908, i32 4 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1918, i32 4 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1936, i32 4 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1943, i32 4 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1948, i32 4 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1954, i32 4 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1959, i32 4 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1965, i32 4 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1970, i32 4 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1976, i32 4 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1981, i32 4 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1987, i32 4 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1992, i32 4 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2006, i32 4 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2040, i32 4 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2045, i32 4 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2052, i32 4 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2059, i32 4 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2064, i32 4 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2070, i32 4 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2081, i32 4 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2087, i32 4 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2107, i32 4 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2116, i32 4 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2130, i32 5 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2138, i32 5 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2143, i32 5 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2150, i32 6 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2160, i32 6 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2168, i32 5 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2176, i32 5 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2182, i32 5 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2188, i32 6 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2198, i32 6 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2206, i32 5 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2214, i32 4 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2220, i32 4 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2236, i32 4 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2260, i32 4 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2282, i32 4 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2305, i32 4 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2322, i32 4 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2335, i32 4 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2356, i32 6 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2412, i32 6 }
@___asan_gen_.794 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2419, i32 6 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2446, i32 4 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2456, i32 4 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2466, i32 4 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2472, i32 4 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2486, i32 4 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2494, i32 5 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2500, i32 5 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2513, i32 5 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2519, i32 5 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2533, i32 4 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2538, i32 4 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2544, i32 4 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2548, i32 4 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2559, i32 4 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2567, i32 5 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2573, i32 5 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2584, i32 5 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2594, i32 5 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2600, i32 5 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2611, i32 5 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2623, i32 4 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2633, i32 4 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2644, i32 5 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2657, i32 4 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 2665, i32 3 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 952, i32 7 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 958, i32 6 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 980, i32 6 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 416, i32 3 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 422, i32 51 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 429, i32 3 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 438, i32 3 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 478, i32 3 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 483, i32 3 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 332, i32 3 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 343, i32 3 }
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 353, i32 3 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 363, i32 3 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 373, i32 3 }
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 386, i32 3 }
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 313, i32 3 }
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 214, i32 4 }
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 237, i32 4 }
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 245, i32 4 }
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 280, i32 4 }
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 287, i32 4 }
@___asan_gen_.1030 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 583, i32 3 }
@___asan_gen_.1033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 590, i32 51 }
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 604, i32 4 }
@___asan_gen_.1045 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 613, i32 3 }
@___asan_gen_.1051 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 619, i32 3 }
@___asan_gen_.1054 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 624, i32 3 }
@___asan_gen_.1060 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 632, i32 3 }
@___asan_gen_.1066 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 638, i32 3 }
@___asan_gen_.1075 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 502, i32 3 }
@___asan_gen_.1081 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 539, i32 4 }
@___asan_gen_.1087 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 552, i32 3 }
@___asan_gen_.1096 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 688, i32 3 }
@___asan_gen_.1099 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 693, i32 51 }
@___asan_gen_.1105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 695, i32 3 }
@___asan_gen_.1108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 703, i32 3 }
@___asan_gen_.1111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 711, i32 3 }
@___asan_gen_.1117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 717, i32 3 }
@___asan_gen_.1120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 727, i32 3 }
@___asan_gen_.1126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 733, i32 3 }
@___asan_gen_.1135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1144, i32 4 }
@___asan_gen_.1138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1156, i32 4 }
@___asan_gen_.1141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1163, i32 4 }
@___asan_gen_.1144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1173, i32 5 }
@___asan_gen_.1147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1215, i32 4 }
@___asan_gen_.1150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1227, i32 4 }
@___asan_gen_.1153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1239, i32 4 }
@___asan_gen_.1156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1251, i32 4 }
@___asan_gen_.1159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1274, i32 4 }
@___asan_gen_.1165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1296, i32 4 }
@___asan_gen_.1168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1312, i32 4 }
@___asan_gen_.1171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1321, i32 4 }
@___asan_gen_.1174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1361, i32 5 }
@___asan_gen_.1177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1379, i32 5 }
@___asan_gen_.1180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1440, i32 4 }
@___asan_gen_.1183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1468, i32 4 }
@___asan_gen_.1186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1501, i32 4 }
@___asan_gen_.1189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1518, i32 4 }
@___asan_gen_.1192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1556, i32 4 }
@___asan_gen_.1195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1572, i32 4 }
@___asan_gen_.1198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1585, i32 4 }
@___asan_gen_.1201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1703, i32 4 }
@___asan_gen_.1207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1711, i32 4 }
@___asan_gen_.1210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1717, i32 4 }
@___asan_gen_.1213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1725, i32 4 }
@___asan_gen_.1216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1731, i32 4 }
@___asan_gen_.1219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 1741, i32 3 }
@___asan_gen_.1228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 792, i32 3 }
@___asan_gen_.1234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 813, i32 3 }
@___asan_gen_.1237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 818, i32 51 }
@___asan_gen_.1243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 829, i32 3 }
@___asan_gen_.1249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 837, i32 3 }
@___asan_gen_.1255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 842, i32 3 }
@___asan_gen_.1261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 852, i32 3 }
@___asan_gen_.1267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 863, i32 4 }
@___asan_gen_.1273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 894, i32 4 }
@___asan_gen_.1276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 901, i32 41 }
@___asan_gen_.1282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 912, i32 4 }
@___asan_gen_.1283 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 919, i32 4 }
@___asan_gen_.1288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 3360, i32 4 }
@___asan_gen_.1291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 3457, i32 7 }
@___asan_gen_.1294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 3478, i32 7 }
@___asan_gen_.1295 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1296 = private constant [41 x i8] c"../drivers/gpu/drm/radeon/evergreen_cs.c\00", align 1
@___asan_gen_.1297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 3342, i32 3 }
@___asan_gen_.1298 = private unnamed_addr constant [32 x i8] c"switch.table.evergreen_cs_parse\00", align 1
@___asan_gen_.1299 = private unnamed_addr constant [38 x i8] c"switch.table.evergreen_cs_track_check\00", align 1
@___asan_gen_.1300 = private unnamed_addr constant [48 x i8] c"switch.table.evergreen_surface_value_conv_check\00", align 1
@___asan_gen_.1301 = private unnamed_addr constant [52 x i8] c"switch.table.evergreen_surface_value_conv_check.377\00", align 1
@___asan_gen_.1302 = private unnamed_addr constant [52 x i8] c"switch.table.evergreen_surface_value_conv_check.378\00", align 1
@___asan_gen_.1303 = private unnamed_addr constant [52 x i8] c"switch.table.evergreen_surface_value_conv_check.379\00", align 1
@llvm.compiler.used = appending global [420 x ptr] [ptr @evergreen_cs_handle_reg._entry, ptr @evergreen_cs_handle_reg._entry.289, ptr @evergreen_cs_handle_reg._entry.291, ptr @evergreen_cs_handle_reg._entry.293, ptr @evergreen_cs_handle_reg._entry.295, ptr @evergreen_cs_handle_reg._entry.297, ptr @evergreen_cs_handle_reg._entry.299, ptr @evergreen_cs_handle_reg._entry.301, ptr @evergreen_cs_handle_reg._entry.303, ptr @evergreen_cs_handle_reg._entry.305, ptr @evergreen_cs_handle_reg._entry.308, ptr @evergreen_cs_handle_reg._entry.310, ptr @evergreen_cs_handle_reg._entry.312, ptr @evergreen_cs_handle_reg._entry.314, ptr @evergreen_cs_handle_reg._entry.316, ptr @evergreen_cs_handle_reg._entry.318, ptr @evergreen_cs_handle_reg._entry.320, ptr @evergreen_cs_handle_reg._entry.322, ptr @evergreen_cs_handle_reg._entry.324, ptr @evergreen_cs_handle_reg._entry.326, ptr @evergreen_cs_handle_reg._entry.328, ptr @evergreen_cs_handle_reg._entry.330, ptr @evergreen_cs_handle_reg._entry.332, ptr @evergreen_cs_handle_reg._entry.335, ptr @evergreen_cs_handle_reg._entry.337, ptr @evergreen_cs_handle_reg._entry.339, ptr @evergreen_cs_handle_reg._entry.341, ptr @evergreen_cs_handle_reg._entry_ptr, ptr @evergreen_cs_handle_reg._entry_ptr.290, ptr @evergreen_cs_handle_reg._entry_ptr.292, ptr @evergreen_cs_handle_reg._entry_ptr.294, ptr @evergreen_cs_handle_reg._entry_ptr.296, ptr @evergreen_cs_handle_reg._entry_ptr.298, ptr @evergreen_cs_handle_reg._entry_ptr.300, ptr @evergreen_cs_handle_reg._entry_ptr.302, ptr @evergreen_cs_handle_reg._entry_ptr.304, ptr @evergreen_cs_handle_reg._entry_ptr.307, ptr @evergreen_cs_handle_reg._entry_ptr.309, ptr @evergreen_cs_handle_reg._entry_ptr.311, ptr @evergreen_cs_handle_reg._entry_ptr.313, ptr @evergreen_cs_handle_reg._entry_ptr.315, ptr @evergreen_cs_handle_reg._entry_ptr.317, ptr @evergreen_cs_handle_reg._entry_ptr.319, ptr @evergreen_cs_handle_reg._entry_ptr.321, ptr @evergreen_cs_handle_reg._entry_ptr.323, ptr @evergreen_cs_handle_reg._entry_ptr.325, ptr @evergreen_cs_handle_reg._entry_ptr.327, ptr @evergreen_cs_handle_reg._entry_ptr.329, ptr @evergreen_cs_handle_reg._entry_ptr.331, ptr @evergreen_cs_handle_reg._entry_ptr.334, ptr @evergreen_cs_handle_reg._entry_ptr.336, ptr @evergreen_cs_handle_reg._entry_ptr.338, ptr @evergreen_cs_handle_reg._entry_ptr.340, ptr @evergreen_cs_handle_reg._entry_ptr.342, ptr @evergreen_cs_track_check._entry, ptr @evergreen_cs_track_check._entry.194, ptr @evergreen_cs_track_check._entry_ptr, ptr @evergreen_cs_track_check._entry_ptr.196, ptr @evergreen_cs_track_validate_cb._entry, ptr @evergreen_cs_track_validate_cb._entry.200, ptr @evergreen_cs_track_validate_cb._entry.203, ptr @evergreen_cs_track_validate_cb._entry.206, ptr @evergreen_cs_track_validate_cb._entry.209, ptr @evergreen_cs_track_validate_cb._entry_ptr, ptr @evergreen_cs_track_validate_cb._entry_ptr.202, ptr @evergreen_cs_track_validate_cb._entry_ptr.205, ptr @evergreen_cs_track_validate_cb._entry_ptr.208, ptr @evergreen_cs_track_validate_cb._entry_ptr.211, ptr @evergreen_cs_track_validate_depth._entry, ptr @evergreen_cs_track_validate_depth._entry.272, ptr @evergreen_cs_track_validate_depth._entry.275, ptr @evergreen_cs_track_validate_depth._entry.277, ptr @evergreen_cs_track_validate_depth._entry.279, ptr @evergreen_cs_track_validate_depth._entry.282, ptr @evergreen_cs_track_validate_depth._entry.284, ptr @evergreen_cs_track_validate_depth._entry_ptr, ptr @evergreen_cs_track_validate_depth._entry_ptr.274, ptr @evergreen_cs_track_validate_depth._entry_ptr.276, ptr @evergreen_cs_track_validate_depth._entry_ptr.278, ptr @evergreen_cs_track_validate_depth._entry_ptr.281, ptr @evergreen_cs_track_validate_depth._entry_ptr.283, ptr @evergreen_cs_track_validate_depth._entry_ptr.286, ptr @evergreen_cs_track_validate_htile._entry, ptr @evergreen_cs_track_validate_htile._entry.263, ptr @evergreen_cs_track_validate_htile._entry.266, ptr @evergreen_cs_track_validate_htile._entry_ptr, ptr @evergreen_cs_track_validate_htile._entry_ptr.265, ptr @evergreen_cs_track_validate_htile._entry_ptr.268, ptr @evergreen_cs_track_validate_stencil._entry, ptr @evergreen_cs_track_validate_stencil._entry.244, ptr @evergreen_cs_track_validate_stencil._entry.247, ptr @evergreen_cs_track_validate_stencil._entry.250, ptr @evergreen_cs_track_validate_stencil._entry.253, ptr @evergreen_cs_track_validate_stencil._entry.255, ptr @evergreen_cs_track_validate_stencil._entry.258, ptr @evergreen_cs_track_validate_stencil._entry_ptr, ptr @evergreen_cs_track_validate_stencil._entry_ptr.246, ptr @evergreen_cs_track_validate_stencil._entry_ptr.249, ptr @evergreen_cs_track_validate_stencil._entry_ptr.252, ptr @evergreen_cs_track_validate_stencil._entry_ptr.254, ptr @evergreen_cs_track_validate_stencil._entry_ptr.257, ptr @evergreen_cs_track_validate_stencil._entry_ptr.260, ptr @evergreen_cs_track_validate_texture._entry, ptr @evergreen_cs_track_validate_texture._entry.345, ptr @evergreen_cs_track_validate_texture._entry.349, ptr @evergreen_cs_track_validate_texture._entry.352, ptr @evergreen_cs_track_validate_texture._entry.355, ptr @evergreen_cs_track_validate_texture._entry.358, ptr @evergreen_cs_track_validate_texture._entry.361, ptr @evergreen_cs_track_validate_texture._entry.364, ptr @evergreen_cs_track_validate_texture._entry.368, ptr @evergreen_cs_track_validate_texture._entry.371, ptr @evergreen_cs_track_validate_texture._entry_ptr, ptr @evergreen_cs_track_validate_texture._entry_ptr.347, ptr @evergreen_cs_track_validate_texture._entry_ptr.351, ptr @evergreen_cs_track_validate_texture._entry_ptr.354, ptr @evergreen_cs_track_validate_texture._entry_ptr.357, ptr @evergreen_cs_track_validate_texture._entry_ptr.360, ptr @evergreen_cs_track_validate_texture._entry_ptr.363, ptr @evergreen_cs_track_validate_texture._entry_ptr.366, ptr @evergreen_cs_track_validate_texture._entry_ptr.370, ptr @evergreen_cs_track_validate_texture._entry_ptr.372, ptr @evergreen_dma_cs_parse._entry, ptr @evergreen_dma_cs_parse._entry.10, ptr @evergreen_dma_cs_parse._entry.13, ptr @evergreen_dma_cs_parse._entry.16, ptr @evergreen_dma_cs_parse._entry.19, ptr @evergreen_dma_cs_parse._entry.22, ptr @evergreen_dma_cs_parse._entry.25, ptr @evergreen_dma_cs_parse._entry.30, ptr @evergreen_dma_cs_parse._entry.33, ptr @evergreen_dma_cs_parse._entry.36, ptr @evergreen_dma_cs_parse._entry.40, ptr @evergreen_dma_cs_parse._entry.43, ptr @evergreen_dma_cs_parse._entry.46, ptr @evergreen_dma_cs_parse._entry.50, ptr @evergreen_dma_cs_parse._entry.53, ptr @evergreen_dma_cs_parse._entry.56, ptr @evergreen_dma_cs_parse._entry.59, ptr @evergreen_dma_cs_parse._entry.62, ptr @evergreen_dma_cs_parse._entry.65, ptr @evergreen_dma_cs_parse._entry.67, ptr @evergreen_dma_cs_parse._entry.69, ptr @evergreen_dma_cs_parse._entry.73, ptr @evergreen_dma_cs_parse._entry_ptr, ptr @evergreen_dma_cs_parse._entry_ptr.12, ptr @evergreen_dma_cs_parse._entry_ptr.15, ptr @evergreen_dma_cs_parse._entry_ptr.18, ptr @evergreen_dma_cs_parse._entry_ptr.21, ptr @evergreen_dma_cs_parse._entry_ptr.24, ptr @evergreen_dma_cs_parse._entry_ptr.27, ptr @evergreen_dma_cs_parse._entry_ptr.32, ptr @evergreen_dma_cs_parse._entry_ptr.35, ptr @evergreen_dma_cs_parse._entry_ptr.38, ptr @evergreen_dma_cs_parse._entry_ptr.42, ptr @evergreen_dma_cs_parse._entry_ptr.45, ptr @evergreen_dma_cs_parse._entry_ptr.47, ptr @evergreen_dma_cs_parse._entry_ptr.52, ptr @evergreen_dma_cs_parse._entry_ptr.55, ptr @evergreen_dma_cs_parse._entry_ptr.58, ptr @evergreen_dma_cs_parse._entry_ptr.61, ptr @evergreen_dma_cs_parse._entry_ptr.64, ptr @evergreen_dma_cs_parse._entry_ptr.66, ptr @evergreen_dma_cs_parse._entry_ptr.68, ptr @evergreen_dma_cs_parse._entry_ptr.70, ptr @evergreen_dma_cs_parse._entry_ptr.75, ptr @evergreen_ib_parse._entry, ptr @evergreen_ib_parse._entry.80, ptr @evergreen_ib_parse._entry_ptr, ptr @evergreen_ib_parse._entry_ptr.81, ptr @evergreen_packet0_check._entry, ptr @evergreen_packet0_check._entry_ptr, ptr @evergreen_packet3_check._entry, ptr @evergreen_packet3_check._entry.101, ptr @evergreen_packet3_check._entry.105, ptr @evergreen_packet3_check._entry.108, ptr @evergreen_packet3_check._entry.111, ptr @evergreen_packet3_check._entry.114, ptr @evergreen_packet3_check._entry.118, ptr @evergreen_packet3_check._entry.121, ptr @evergreen_packet3_check._entry.124, ptr @evergreen_packet3_check._entry.127, ptr @evergreen_packet3_check._entry.136, ptr @evergreen_packet3_check._entry.143, ptr @evergreen_packet3_check._entry.158, ptr @evergreen_packet3_check._entry.177, ptr @evergreen_packet3_check._entry.182, ptr @evergreen_packet3_check._entry.185, ptr @evergreen_packet3_check._entry.95, ptr @evergreen_packet3_check._entry.98, ptr @evergreen_packet3_check._entry_ptr, ptr @evergreen_packet3_check._entry_ptr.103, ptr @evergreen_packet3_check._entry_ptr.106, ptr @evergreen_packet3_check._entry_ptr.109, ptr @evergreen_packet3_check._entry_ptr.112, ptr @evergreen_packet3_check._entry_ptr.115, ptr @evergreen_packet3_check._entry_ptr.120, ptr @evergreen_packet3_check._entry_ptr.122, ptr @evergreen_packet3_check._entry_ptr.125, ptr @evergreen_packet3_check._entry_ptr.128, ptr @evergreen_packet3_check._entry_ptr.138, ptr @evergreen_packet3_check._entry_ptr.145, ptr @evergreen_packet3_check._entry_ptr.160, ptr @evergreen_packet3_check._entry_ptr.179, ptr @evergreen_packet3_check._entry_ptr.183, ptr @evergreen_packet3_check._entry_ptr.187, ptr @evergreen_packet3_check._entry_ptr.96, ptr @evergreen_packet3_check._entry_ptr.99, ptr @evergreen_surface_check._entry, ptr @evergreen_surface_check._entry_ptr, ptr @evergreen_surface_check_1d._entry, ptr @evergreen_surface_check_1d._entry.234, ptr @evergreen_surface_check_1d._entry_ptr, ptr @evergreen_surface_check_1d._entry_ptr.236, ptr @evergreen_surface_check_2d._entry, ptr @evergreen_surface_check_2d._entry.238, ptr @evergreen_surface_check_2d._entry_ptr, ptr @evergreen_surface_check_2d._entry_ptr.240, ptr @evergreen_surface_check_linear_aligned._entry, ptr @evergreen_surface_check_linear_aligned._entry_ptr, ptr @evergreen_surface_value_conv_check._entry, ptr @evergreen_surface_value_conv_check._entry.214, ptr @evergreen_surface_value_conv_check._entry.217, ptr @evergreen_surface_value_conv_check._entry.220, ptr @evergreen_surface_value_conv_check._entry.223, ptr @evergreen_surface_value_conv_check._entry.226, ptr @evergreen_surface_value_conv_check._entry_ptr, ptr @evergreen_surface_value_conv_check._entry_ptr.216, ptr @evergreen_surface_value_conv_check._entry_ptr.219, ptr @evergreen_surface_value_conv_check._entry_ptr.222, ptr @evergreen_surface_value_conv_check._entry_ptr.225, ptr @evergreen_surface_value_conv_check._entry_ptr.228, ptr @cayman_reg_safe_bm, ptr @evergreen_reg_safe_bm, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @evergreen_cs_packet_parse_vline.vline_start_end, ptr @evergreen_cs_packet_parse_vline.vline_status, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.97, ptr @.str.100, ptr @.str.102, ptr @.str.104, ptr @.str.107, ptr @.str.110, ptr @.str.113, ptr @.str.116, ptr @.str.117, ptr @.str.119, ptr @.str.123, ptr @.str.126, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.137, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.144, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @evergreen_packet3_check._rs, ptr @.str.157, ptr @.str.159, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.178, ptr @.str.180, ptr @.str.181, ptr @.str.184, ptr @.str.186, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.195, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.201, ptr @.str.204, ptr @.str.207, ptr @.str.210, ptr @.str.212, ptr @.str.213, ptr @.str.215, ptr @.str.218, ptr @.str.221, ptr @.str.224, ptr @.str.227, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.235, ptr @.str.237, ptr @.str.239, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.245, ptr @.str.248, ptr @.str.251, ptr @.str.256, ptr @.str.259, ptr @.str.261, ptr @.str.262, ptr @.str.264, ptr @.str.267, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.273, ptr @.str.280, ptr @.str.285, ptr @.str.287, ptr @.str.288, ptr @.str.306, ptr @.str.333, ptr @.str.343, ptr @.str.344, ptr @.str.346, ptr @.str.348, ptr @.str.350, ptr @.str.353, ptr @.str.356, ptr @.str.359, ptr @.str.362, ptr @.str.365, ptr @.str.367, ptr @.str.369, ptr @.str.373, ptr @.str.374, ptr @.str.375, ptr @.str.376, ptr @switch.table.evergreen_cs_parse, ptr @switch.table.evergreen_cs_track_check, ptr @switch.table.evergreen_surface_value_conv_check, ptr @switch.table.evergreen_surface_value_conv_check.377, ptr @switch.table.evergreen_surface_value_conv_check.378, ptr @switch.table.evergreen_surface_value_conv_check.379], section "llvm.metadata"
@0 = internal global [304 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_reg_safe_bm to i32), i32 8188, i32 10208, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_reg_safe_bm to i32), i32 8188, i32 10208, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_dma_cs_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_dma_cs_parse._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_dma_cs_parse._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_dma_cs_parse._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_dma_cs_parse._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_dma_cs_parse._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_dma_cs_parse._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_dma_cs_parse._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_dma_cs_parse._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_dma_cs_parse._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_dma_cs_parse._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_dma_cs_parse._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_dma_cs_parse._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_dma_cs_parse._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_dma_cs_parse._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_dma_cs_parse._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_dma_cs_parse._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_dma_cs_parse._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_dma_cs_parse._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_dma_cs_parse._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_dma_cs_parse._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_dma_cs_parse._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_ib_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_ib_parse._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_packet0_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_packet_parse_vline.vline_start_end to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_packet_parse_vline.vline_status to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_packet3_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_packet3_check._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_packet3_check._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_packet3_check._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_packet3_check._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_packet3_check._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_packet3_check._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_packet3_check._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_packet3_check._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_packet3_check._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_packet3_check._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_packet3_check._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_packet3_check._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_packet3_check._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_packet3_check._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_packet3_check._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_packet3_check._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_packet3_check._entry.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_packet3_check._entry.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_track_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_track_check._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_track_validate_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_track_validate_cb._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_track_validate_cb._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_track_validate_cb._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_track_validate_cb._entry.209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_surface_value_conv_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_surface_value_conv_check._entry.214 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_surface_value_conv_check._entry.217 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_surface_value_conv_check._entry.220 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_surface_value_conv_check._entry.223 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_surface_value_conv_check._entry.226 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_surface_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_surface_check_linear_aligned._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_surface_check_1d._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_surface_check_1d._entry.234 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_surface_check_2d._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_surface_check_2d._entry.238 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_track_validate_stencil._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_track_validate_stencil._entry.244 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_track_validate_stencil._entry.247 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_track_validate_stencil._entry.250 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_track_validate_stencil._entry.253 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_track_validate_stencil._entry.255 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_track_validate_stencil._entry.258 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_track_validate_htile._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_track_validate_htile._entry.263 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_track_validate_htile._entry.266 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_track_validate_depth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_track_validate_depth._entry.272 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_track_validate_depth._entry.275 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_track_validate_depth._entry.277 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_track_validate_depth._entry.279 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_track_validate_depth._entry.282 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_track_validate_depth._entry.284 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_handle_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_handle_reg._entry.289 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_handle_reg._entry.291 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_handle_reg._entry.293 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_handle_reg._entry.295 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_handle_reg._entry.297 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_handle_reg._entry.299 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_handle_reg._entry.301 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_handle_reg._entry.303 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_handle_reg._entry.305 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_handle_reg._entry.308 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_handle_reg._entry.310 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_handle_reg._entry.312 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_handle_reg._entry.314 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_handle_reg._entry.316 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_handle_reg._entry.318 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_handle_reg._entry.320 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_handle_reg._entry.322 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_handle_reg._entry.324 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_handle_reg._entry.326 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_handle_reg._entry.328 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_handle_reg._entry.330 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_handle_reg._entry.332 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.333 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_handle_reg._entry.335 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_handle_reg._entry.337 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_handle_reg._entry.339 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_handle_reg._entry.341 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_track_validate_texture._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.343 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.344 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_track_validate_texture._entry.345 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.346 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.348 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_track_validate_texture._entry.349 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.350 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_track_validate_texture._entry.352 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.353 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_track_validate_texture._entry.355 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.356 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_track_validate_texture._entry.358 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.359 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_track_validate_texture._entry.361 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.362 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_track_validate_texture._entry.364 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.365 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.367 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_track_validate_texture._entry.368 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.369 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_cs_track_validate_texture._entry.371 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.373 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.374 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.375 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.376 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.evergreen_cs_parse to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1298 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.evergreen_cs_track_check to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.evergreen_surface_value_conv_check to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.evergreen_surface_value_conv_check.377 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1301 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.evergreen_surface_value_conv_check.378 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1302 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.evergreen_surface_value_conv_check.379 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @evergreen_cs_parse(ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  %surf.i = alloca %struct.eg_surface, align 4
  %reloc.i = alloca ptr, align 4
  %bankw.i = alloca i32, align 4
  %bankh.i = alloca i32, align 4
  %mtaspect.i = alloca i32, align 4
  %tile_split.i = alloca i32, align 4
  %pkt = alloca %struct.radeon_cs_packet, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt) #6
  %0 = getelementptr inbounds %struct.radeon_cs_packet, ptr %pkt, i32 0, i32 1
  %1 = getelementptr inbounds %struct.radeon_cs_packet, ptr %pkt, i32 0, i32 2
  %2 = getelementptr inbounds %struct.radeon_cs_packet, ptr %pkt, i32 0, i32 3
  %3 = getelementptr inbounds %struct.radeon_cs_packet, ptr %pkt, i32 0, i32 4
  %track1 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 18
  %4 = call ptr @memset(ptr %pkt, i32 255, i32 24)
  %5 = ptrtoint ptr %track1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %track1, align 8
  %cmp = icmp eq ptr %6, null
  br i1 %cmp, label %if.then, label %entry.if.end46_crit_edge

entry.if.end46_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 676) #9
  %cmp2 = icmp eq ptr %call7.i.i, null
  br i1 %cmp2, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  %arrayidx.i = getelementptr %struct.evergreen_cs_track, ptr %call7.i.i, i32 0, i32 7, i32 0
  %arrayidx2.i = getelementptr %struct.evergreen_cs_track, ptr %call7.i.i, i32 0, i32 15, i32 0
  %8 = call ptr @memset(ptr %arrayidx.i, i32 0, i32 64)
  %9 = call ptr @memset(ptr %arrayidx2.i, i32 0, i32 64)
  br label %for.body6.i

for.body6.i:                                      ; preds = %for.body6.i.for.body6.i_crit_edge, %if.end
  %i.182.i = phi i32 [ %inc15.i, %for.body6.i.for.body6.i_crit_edge ], [ 0, %if.end ]
  %arrayidx7.i = getelementptr %struct.evergreen_cs_track, ptr %call7.i.i, i32 0, i32 5, i32 %i.182.i
  %10 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx7.i, align 4
  %arrayidx8.i = getelementptr %struct.evergreen_cs_track, ptr %call7.i.i, i32 0, i32 6, i32 %i.182.i
  %11 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %arrayidx8.i, align 4
  %arrayidx9.i = getelementptr %struct.evergreen_cs_track, ptr %call7.i.i, i32 0, i32 9, i32 %i.182.i
  %12 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %arrayidx9.i, align 4
  %arrayidx10.i = getelementptr %struct.evergreen_cs_track, ptr %call7.i.i, i32 0, i32 10, i32 %i.182.i
  %13 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %arrayidx10.i, align 4
  %arrayidx11.i = getelementptr %struct.evergreen_cs_track, ptr %call7.i.i, i32 0, i32 11, i32 %i.182.i
  %14 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %arrayidx11.i, align 4
  %arrayidx12.i = getelementptr %struct.evergreen_cs_track, ptr %call7.i.i, i32 0, i32 12, i32 %i.182.i
  %15 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 268435455, ptr %arrayidx12.i, align 4
  %arrayidx13.i = getelementptr %struct.evergreen_cs_track, ptr %call7.i.i, i32 0, i32 13, i32 %i.182.i
  %16 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %arrayidx13.i, align 4
  %inc15.i = add nuw nsw i32 %i.182.i, 1
  %exitcond.not.i = icmp eq i32 %inc15.i, 12
  br i1 %exitcond.not.i, label %evergreen_cs_track_init.exit, label %for.body6.i.for.body6.i_crit_edge

for.body6.i.for.body6.i_crit_edge:                ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body6.i

evergreen_cs_track_init.exit:                     ; preds = %for.body6.i
  %cb_target_mask.i = getelementptr inbounds %struct.evergreen_cs_track, ptr %call7.i.i, i32 0, i32 17
  %17 = ptrtoint ptr %cb_target_mask.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %cb_target_mask.i, align 4
  %cb_shader_mask.i = getelementptr inbounds %struct.evergreen_cs_track, ptr %call7.i.i, i32 0, i32 18
  %18 = ptrtoint ptr %cb_shader_mask.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %cb_shader_mask.i, align 8
  %cb_dirty.i = getelementptr inbounds %struct.evergreen_cs_track, ptr %call7.i.i, i32 0, i32 39
  %19 = ptrtoint ptr %cb_dirty.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %cb_dirty.i, align 1
  %db_depth_slice.i = getelementptr inbounds %struct.evergreen_cs_track, ptr %call7.i.i, i32 0, i32 26
  %20 = ptrtoint ptr %db_depth_slice.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %db_depth_slice.i, align 4
  %db_depth_view.i = getelementptr inbounds %struct.evergreen_cs_track, ptr %call7.i.i, i32 0, i32 25
  %21 = ptrtoint ptr %db_depth_view.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -16384, ptr %db_depth_view.i, align 8
  %db_depth_size.i = getelementptr inbounds %struct.evergreen_cs_track, ptr %call7.i.i, i32 0, i32 27
  %db_depth_control.i = getelementptr inbounds %struct.evergreen_cs_track, ptr %call7.i.i, i32 0, i32 24
  %22 = ptrtoint ptr %db_depth_control.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %db_depth_control.i, align 4
  %db_z_read_bo.i = getelementptr inbounds %struct.evergreen_cs_track, ptr %call7.i.i, i32 0, i32 31
  %23 = call ptr @memset(ptr %db_depth_size.i, i32 255, i32 16)
  %24 = ptrtoint ptr %db_z_read_bo.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %db_z_read_bo.i, align 8
  %db_z_write_bo.i = getelementptr inbounds %struct.evergreen_cs_track, ptr %call7.i.i, i32 0, i32 32
  %25 = ptrtoint ptr %db_z_write_bo.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %db_z_write_bo.i, align 4
  %db_s_info.i = getelementptr inbounds %struct.evergreen_cs_track, ptr %call7.i.i, i32 0, i32 33
  %26 = ptrtoint ptr %db_s_info.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %db_s_info.i, align 8
  %db_s_read_offset.i = getelementptr inbounds %struct.evergreen_cs_track, ptr %call7.i.i, i32 0, i32 34
  %27 = ptrtoint ptr %db_s_read_offset.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %db_s_read_offset.i, align 4
  %db_s_write_offset.i = getelementptr inbounds %struct.evergreen_cs_track, ptr %call7.i.i, i32 0, i32 35
  %28 = ptrtoint ptr %db_s_write_offset.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %db_s_write_offset.i, align 8
  %db_s_read_bo.i = getelementptr inbounds %struct.evergreen_cs_track, ptr %call7.i.i, i32 0, i32 36
  %29 = ptrtoint ptr %db_s_read_bo.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %db_s_read_bo.i, align 4
  %db_s_write_bo.i = getelementptr inbounds %struct.evergreen_cs_track, ptr %call7.i.i, i32 0, i32 37
  %30 = ptrtoint ptr %db_s_write_bo.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %db_s_write_bo.i, align 8
  %db_dirty.i = getelementptr inbounds %struct.evergreen_cs_track, ptr %call7.i.i, i32 0, i32 40
  %31 = ptrtoint ptr %db_dirty.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %db_dirty.i, align 2
  %htile_bo.i = getelementptr inbounds %struct.evergreen_cs_track, ptr %call7.i.i, i32 0, i32 44
  %32 = ptrtoint ptr %htile_bo.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %htile_bo.i, align 8
  %htile_offset.i = getelementptr inbounds %struct.evergreen_cs_track, ptr %call7.i.i, i32 0, i32 42
  %33 = ptrtoint ptr %htile_offset.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %htile_offset.i, align 8
  %htile_surface.i = getelementptr inbounds %struct.evergreen_cs_track, ptr %call7.i.i, i32 0, i32 43
  %34 = ptrtoint ptr %htile_surface.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %htile_surface.i, align 4
  %arrayidx20.i = getelementptr %struct.evergreen_cs_track, ptr %call7.i.i, i32 0, i32 23, i32 0
  %35 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %arrayidx20.i, align 4
  %arrayidx21.i = getelementptr %struct.evergreen_cs_track, ptr %call7.i.i, i32 0, i32 21, i32 0
  %36 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %arrayidx21.i, align 4
  %arrayidx22.i = getelementptr %struct.evergreen_cs_track, ptr %call7.i.i, i32 0, i32 22, i32 0
  %37 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %arrayidx22.i, align 4
  %arrayidx20.1.i = getelementptr %struct.evergreen_cs_track, ptr %call7.i.i, i32 0, i32 23, i32 1
  %38 = ptrtoint ptr %arrayidx20.1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %arrayidx20.1.i, align 8
  %arrayidx21.1.i = getelementptr %struct.evergreen_cs_track, ptr %call7.i.i, i32 0, i32 21, i32 1
  %39 = ptrtoint ptr %arrayidx21.1.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %arrayidx21.1.i, align 8
  %arrayidx22.1.i = getelementptr %struct.evergreen_cs_track, ptr %call7.i.i, i32 0, i32 22, i32 1
  %40 = ptrtoint ptr %arrayidx22.1.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %arrayidx22.1.i, align 8
  %arrayidx20.2.i = getelementptr %struct.evergreen_cs_track, ptr %call7.i.i, i32 0, i32 23, i32 2
  %41 = ptrtoint ptr %arrayidx20.2.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %arrayidx20.2.i, align 4
  %arrayidx21.2.i = getelementptr %struct.evergreen_cs_track, ptr %call7.i.i, i32 0, i32 21, i32 2
  %42 = ptrtoint ptr %arrayidx21.2.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %arrayidx21.2.i, align 4
  %arrayidx22.2.i = getelementptr %struct.evergreen_cs_track, ptr %call7.i.i, i32 0, i32 22, i32 2
  %43 = ptrtoint ptr %arrayidx22.2.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %arrayidx22.2.i, align 4
  %arrayidx20.3.i = getelementptr %struct.evergreen_cs_track, ptr %call7.i.i, i32 0, i32 23, i32 3
  %44 = ptrtoint ptr %arrayidx20.3.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %arrayidx20.3.i, align 8
  %arrayidx21.3.i = getelementptr %struct.evergreen_cs_track, ptr %call7.i.i, i32 0, i32 21, i32 3
  %45 = ptrtoint ptr %arrayidx21.3.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %arrayidx21.3.i, align 8
  %arrayidx22.3.i = getelementptr %struct.evergreen_cs_track, ptr %call7.i.i, i32 0, i32 22, i32 3
  %46 = ptrtoint ptr %arrayidx22.3.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %arrayidx22.3.i, align 8
  %streamout_dirty.i = getelementptr inbounds %struct.evergreen_cs_track, ptr %call7.i.i, i32 0, i32 41
  %47 = ptrtoint ptr %streamout_dirty.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %streamout_dirty.i, align 1
  %sx_misc_kill_all_prims.i = getelementptr inbounds %struct.evergreen_cs_track, ptr %call7.i.i, i32 0, i32 38
  %48 = ptrtoint ptr %sx_misc_kill_all_prims.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %sx_misc_kill_all_prims.i, align 4
  %rdev = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 1
  %49 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rdev, align 4
  %family = getelementptr inbounds %struct.radeon_device, ptr %50, i32 0, i32 6
  %51 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %52)
  %cmp4 = icmp ugt i32 %52, 49
  %tile_config = getelementptr inbounds %struct.radeon_device, ptr %50, i32 0, i32 5, i32 0, i32 24, i32 8
  %tile_config9 = getelementptr inbounds %struct.radeon_device, ptr %50, i32 0, i32 5, i32 0, i32 21
  %evergreen_reg_safe_bm.sink = select i1 %cmp4, ptr @cayman_reg_safe_bm, ptr @evergreen_reg_safe_bm
  %tmp.0.in = select i1 %cmp4, ptr %tile_config, ptr %tile_config9
  %53 = ptrtoint ptr %tmp.0.in to i32
  call void @__asan_load4_noabort(i32 %53)
  %tmp.0 = load i32, ptr %tmp.0.in, align 4
  %54 = getelementptr inbounds %struct.evergreen_cs_track, ptr %call7.i.i, i32 0, i32 46
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %evergreen_reg_safe_bm.sink, ptr %54, align 8
  %and = and i32 %tmp.0, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and)
  %56 = icmp ult i32 %and, 4
  br i1 %56, label %switch.lookup, label %evergreen_cs_track_init.exit.sw.epilog_crit_edge

evergreen_cs_track_init.exit.sw.epilog_crit_edge: ; preds = %evergreen_cs_track_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

switch.lookup:                                    ; preds = %evergreen_cs_track_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.evergreen_cs_parse, i32 0, i32 %and
  %57 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %57)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %evergreen_cs_track_init.exit.sw.epilog_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 2, %evergreen_cs_track_init.exit.sw.epilog_crit_edge ]
  %npipes20 = getelementptr inbounds %struct.evergreen_cs_track, ptr %call7.i.i, i32 0, i32 2
  %58 = ptrtoint ptr %npipes20 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %.sink, ptr %npipes20, align 8
  %and21 = lshr i32 %tmp.0, 4
  %shr = and i32 %and21, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr)
  %switch.selectcmp = icmp eq i32 %shr, 2
  %switch.select = select i1 %switch.selectcmp, i32 16, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %switch.selectcmp2473 = icmp eq i32 %shr, 0
  %switch.select2474 = select i1 %switch.selectcmp2473, i32 4, i32 %switch.select
  %nbanks27 = getelementptr inbounds %struct.evergreen_cs_track, ptr %call7.i.i, i32 0, i32 1
  %59 = ptrtoint ptr %nbanks27 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %switch.select2474, ptr %nbanks27, align 4
  %60 = and i32 %tmp.0, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cond = icmp eq i32 %60, 0
  %. = select i1 %cond, i32 256, i32 512
  %61 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %., ptr %call7.i.i, align 8
  %and36 = lshr i32 %tmp.0, 12
  %shr37 = and i32 %and36, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr37)
  %switch.selectcmp2475 = icmp eq i32 %shr37, 2
  %switch.select2476 = select i1 %switch.selectcmp2475, i32 4, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr37)
  %switch.selectcmp2477 = icmp eq i32 %shr37, 0
  %switch.select2478 = select i1 %switch.selectcmp2477, i32 1, i32 %switch.select2476
  %row_size43 = getelementptr inbounds %struct.evergreen_cs_track, ptr %call7.i.i, i32 0, i32 3
  %62 = ptrtoint ptr %row_size43 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %switch.select2478, ptr %row_size43, align 4
  %63 = ptrtoint ptr %track1 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call7.i.i, ptr %track1, align 8
  br label %if.end46

if.end46:                                         ; preds = %sw.epilog, %entry.if.end46_crit_edge
  %idx = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 6
  %ptr.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 16, i32 3
  %chunk_ib.i.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %rdev940.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 1
  %cs_flags.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 21
  %format.i = getelementptr inbounds %struct.eg_surface, ptr %surf.i, i32 0, i32 2
  %nby.i = getelementptr inbounds %struct.eg_surface, ptr %surf.i, i32 0, i32 1
  %mode.i = getelementptr inbounds %struct.eg_surface, ptr %surf.i, i32 0, i32 3
  %tsplit.i = getelementptr inbounds %struct.eg_surface, ptr %surf.i, i32 0, i32 7
  %nbanks.i132 = getelementptr inbounds %struct.eg_surface, ptr %surf.i, i32 0, i32 4
  %bankw.i133 = getelementptr inbounds %struct.eg_surface, ptr %surf.i, i32 0, i32 5
  %bankh.i134 = getelementptr inbounds %struct.eg_surface, ptr %surf.i, i32 0, i32 6
  %mtilea.i = getelementptr inbounds %struct.eg_surface, ptr %surf.i, i32 0, i32 8
  %nsamples.i = getelementptr inbounds %struct.eg_surface, ptr %surf.i, i32 0, i32 9
  %family.i136 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 19
  %halign.i = getelementptr inbounds %struct.eg_surface, ptr %surf.i, i32 0, i32 13
  %base_align.i = getelementptr inbounds %struct.eg_surface, ptr %surf.i, i32 0, i32 14
  %layer_size.i = getelementptr inbounds %struct.eg_surface, ptr %surf.i, i32 0, i32 11
  %palign.i = getelementptr inbounds %struct.eg_surface, ptr %surf.i, i32 0, i32 12
  br label %do.body47

do.body47:                                        ; preds = %do.cond69.do.body47_crit_edge, %if.end46
  %64 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %idx, align 8
  %call48 = call i32 @radeon_cs_packet_parse(ptr noundef %p, ptr noundef nonnull %pkt, i32 noundef %65) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool.not = icmp eq i32 %call48, 0
  br i1 %tobool.not, label %if.end52, label %do.body47.cleanup.sink.split_crit_edge

do.body47.cleanup.sink.split_crit_edge:           ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end52:                                         ; preds = %do.body47
  %66 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %3, align 4
  %add = add i32 %67, 2
  %68 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %idx, align 8
  %add54 = add i32 %add, %69
  store i32 %add54, ptr %idx, align 8
  %70 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %0, align 4
  %72 = zext i32 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values)
  switch i32 %71, label %sw.default59 [
    i32 0, label %sw.bb55
    i32 2, label %if.end52.do.cond69_crit_edge
    i32 3, label %sw.bb57
  ]

if.end52.do.cond69_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond69

sw.bb55:                                          ; preds = %if.end52
  %73 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %pkt, align 4
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %1, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %sw.bb.i.i
  %inc.i = add i32 %i.023.i, 1
  %77 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %3, align 4
  %cmp.not.i = icmp ugt i32 %inc.i, %78
  br i1 %cmp.not.i, label %for.cond.i.do.cond69_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond.i.do.cond69_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond69

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %sw.bb55
  %idx.024.in.i = phi i32 [ %74, %sw.bb55 ], [ %idx.024.i, %for.cond.i.for.body.i_crit_edge ]
  %i.023.i = phi i32 [ 0, %sw.bb55 ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %reg.022.i = phi i32 [ %76, %sw.bb55 ], [ 27404, %for.cond.i.for.body.i_crit_edge ]
  %idx.024.i = add i32 %idx.024.in.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 27400, i32 %reg.022.i)
  %cond.i.i = icmp eq i32 %reg.022.i, 27400
  br i1 %cond.i.i, label %sw.bb.i.i, label %do.end.i.i

sw.bb.i.i:                                        ; preds = %for.body.i
  %call.i.i.i = call i32 @r600_cs_common_vline_parse(ptr noundef %p, ptr noundef nonnull @evergreen_cs_packet_parse_vline.vline_start_end, ptr noundef nonnull @evergreen_cs_packet_parse_vline.vline_status) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %for.cond.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.82, i32 noundef %idx.024.i, i32 noundef 27400) #6
  br label %cleanup.sink.split

do.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, i32 noundef %reg.022.i, i32 noundef %idx.024.i) #10
  br label %cleanup.sink.split

sw.bb57:                                          ; preds = %if.end52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reloc.i) #6
  %79 = ptrtoint ptr %reloc.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr inttoptr (i32 -1 to ptr), ptr %reloc.i, align 4, !annotation !629
  %80 = ptrtoint ptr %track1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %track1, align 8
  %82 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ptr.i, align 8
  %84 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %pkt, align 4
  %add.i = add i32 %85, 1
  %86 = ptrtoint ptr %chunk_ib.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %chunk_ib.i.i, align 4
  %kdata.i.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %kdata.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %kdata.i.i, align 4
  %tobool.not.i.i119 = icmp eq ptr %89, null
  %spec.select.i = select i1 %tobool.not.i.i119, ptr %83, ptr %89
  %retval.0.in.i.i = getelementptr i32, ptr %spec.select.i, i32 %add.i
  %90 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %retval.0.i.i = load i32, ptr %retval.0.in.i.i, align 4
  %91 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %2, align 4
  %93 = zext i32 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.380)
  switch i32 %92, label %sw.default1408.i [
    i32 32, label %sw.bb.i
    i32 40, label %sw.bb31.i
    i32 42, label %sw.bb57.sw.bb37.i_crit_edge
    i32 47, label %sw.bb57.sw.bb37.i_crit_edge4359
    i32 18, label %sw.bb57.sw.bb37.i_crit_edge4360
    i32 20, label %sw.bb42.i
    i32 38, label %sw.bb51.i
    i32 19, label %sw.bb86.i
    i32 43, label %sw.bb92.i
    i32 39, label %sw.bb131.i
    i32 45, label %sw.bb172.i
    i32 48, label %sw.bb186.i
    i32 46, label %sw.bb200.i
    i32 41, label %sw.bb214.i
    i32 53, label %sw.bb228.i
    i32 17, label %sw.bb242.i
    i32 36, label %sw.bb57.sw.bb268.i_crit_edge
    i32 37, label %sw.bb57.sw.bb268.i_crit_edge4361
    i32 21, label %sw.bb301.i
    i32 22, label %sw.bb315.i
    i32 60, label %sw.bb339.i
    i32 65, label %sw.bb388.i
    i32 66, label %sw.bb570.i
    i32 67, label %sw.bb575.i
    i32 70, label %sw.bb603.i
    i32 71, label %sw.bb647.i
    i32 72, label %sw.bb686.i
    i32 104, label %sw.bb725.i
    i32 105, label %sw.bb751.i
    i32 109, label %sw.bb784.i
    i32 106, label %sw.bb57.sw.epilog63_crit_edge
    i32 107, label %sw.bb1010.i
    i32 108, label %sw.bb1027.i
    i32 111, label %sw.bb1044.i
    i32 110, label %sw.bb1061.i
    i32 52, label %sw.bb1083.i
    i32 61, label %sw.bb1177.i
    i32 59, label %sw.bb1225.i
    i32 117, label %sw.bb1341.i
    i32 16, label %sw.bb57.sw.epilog63_crit_edge4362
  ]

sw.bb57.sw.epilog63_crit_edge4362:                ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog63

sw.bb57.sw.epilog63_crit_edge:                    ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog63

sw.bb57.sw.bb268.i_crit_edge4361:                 ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb268.i

sw.bb57.sw.bb268.i_crit_edge:                     ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb268.i

sw.bb57.sw.bb37.i_crit_edge4360:                  ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb37.i

sw.bb57.sw.bb37.i_crit_edge4359:                  ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb37.i

sw.bb57.sw.bb37.i_crit_edge:                      ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb37.i

sw.bb.i:                                          ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %67)
  %cmp.not.i121 = icmp eq i32 %67, 1
  br i1 %cmp.not.i121, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.85) #6
  br label %sw.epilog63.thread157

if.end.i:                                         ; preds = %sw.bb.i
  %add4.i = add i32 %85, 2
  %retval.0.in.i2011.i = getelementptr i32, ptr %spec.select.i, i32 %add4.i
  %94 = ptrtoint ptr %retval.0.in.i2011.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %retval.0.i2012.i = load i32, ptr %retval.0.in.i2011.i, align 4
  %95 = lshr i32 %retval.0.i2012.i, 16
  %and.i = and i32 %95, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp6.i = icmp eq i32 %and.i, 0
  br i1 %cmp6.i, label %if.end.i.sw.epilog63_crit_edge, label %if.end8.i

if.end.i.sw.epilog63_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog63

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp9.i = icmp ugt i32 %and.i, 2
  br i1 %cmp9.i, label %if.then10.i, label %if.end11.i

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.86, i32 noundef %and.i) #6
  br label %sw.epilog63.thread157

if.end11.i:                                       ; preds = %if.end8.i
  %call12.i = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool.not.i, label %cleanup.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.85) #6
  br label %sw.epilog63.thread157

cleanup.i:                                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  %96 = ptrtoint ptr %reloc.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %reloc.i, align 4
  %gpu_offset.i = getelementptr inbounds %struct.radeon_bo_list, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %gpu_offset.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %gpu_offset.i, align 8
  %and15.i = and i32 %retval.0.i.i, -16
  %conv.i = zext i32 %and15.i to i64
  %and17.i = and i32 %retval.0.i2012.i, 255
  %100 = zext i32 %and17.i to i64
  %shl.i = shl nuw nsw i64 %100, 32
  %add16.i = or i64 %shl.i, %conv.i
  %add19.i = add i64 %add16.i, %99
  %conv20.i = trunc i64 %add19.i to i32
  %arrayidx.i122 = getelementptr i32, ptr %83, i32 %add.i
  %101 = ptrtoint ptr %arrayidx.i122 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %conv20.i, ptr %arrayidx.i122, align 4
  %and22.i = and i32 %retval.0.i2012.i, -256
  %shr23.i = lshr i64 %add19.i, 32
  %conv25.i = trunc i64 %shr23.i to i32
  %and26.i = and i32 %conv25.i, 255
  %or.i = or i32 %and26.i, %and22.i
  %arrayidx28.i = getelementptr i32, ptr %83, i32 %add4.i
  %102 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %or.i, ptr %arrayidx28.i, align 4
  br label %sw.epilog63

sw.bb31.i:                                        ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %67)
  %cmp33.not.i = icmp eq i32 %67, 1
  br i1 %cmp33.not.i, label %sw.bb31.i.sw.epilog63_crit_edge, label %if.then35.i

sw.bb31.i.sw.epilog63_crit_edge:                  ; preds = %sw.bb31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog63

if.then35.i:                                      ; preds = %sw.bb31.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.87) #6
  br label %sw.epilog63.thread157

sw.bb37.i:                                        ; preds = %sw.bb57.sw.bb37.i_crit_edge, %sw.bb57.sw.bb37.i_crit_edge4359, %sw.bb57.sw.bb37.i_crit_edge4360
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool39.not.i = icmp eq i32 %67, 0
  br i1 %tobool39.not.i, label %sw.bb37.i.sw.epilog63_crit_edge, label %if.then40.i

sw.bb37.i.sw.epilog63_crit_edge:                  ; preds = %sw.bb37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog63

if.then40.i:                                      ; preds = %sw.bb37.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.88) #6
  br label %sw.epilog63.thread157

sw.bb42.i:                                        ; preds = %sw.bb57
  %103 = ptrtoint ptr %rdev940.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %rdev940.i, align 4
  %family.i = getelementptr inbounds %struct.radeon_device, ptr %104, i32 0, i32 6
  %105 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %106)
  %cmp43.i = icmp ult i32 %106, 50
  br i1 %cmp43.i, label %if.then45.i, label %if.end46.i

if.then45.i:                                      ; preds = %sw.bb42.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.89) #6
  br label %sw.epilog63.thread157

if.end46.i:                                       ; preds = %sw.bb42.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool48.not.i = icmp eq i32 %67, 0
  br i1 %tobool48.not.i, label %if.end46.i.sw.epilog63_crit_edge, label %if.then49.i

if.end46.i.sw.epilog63_crit_edge:                 ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog63

if.then49.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.88) #6
  br label %sw.epilog63.thread157

sw.bb51.i:                                        ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %67)
  %cmp54.not.i = icmp eq i32 %67, 1
  br i1 %cmp54.not.i, label %if.end57.i, label %if.then56.i

if.then56.i:                                      ; preds = %sw.bb51.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.90) #6
  br label %sw.epilog63.thread157

if.end57.i:                                       ; preds = %sw.bb51.i
  %call58.i = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %tobool59.not.i = icmp eq i32 %call58.i, 0
  br i1 %tobool59.not.i, label %if.end61.i, label %if.then60.i

if.then60.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.90) #6
  br label %sw.epilog63.thread157

if.end61.i:                                       ; preds = %if.end57.i
  %107 = ptrtoint ptr %reloc.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %reloc.i, align 4
  %gpu_offset62.i = getelementptr inbounds %struct.radeon_bo_list, ptr %108, i32 0, i32 2
  %109 = ptrtoint ptr %gpu_offset62.i to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %gpu_offset62.i, align 8
  %conv63.i = zext i32 %retval.0.i.i to i64
  %add64.i = add i64 %110, %conv63.i
  %add65.i = add i32 %85, 2
  %111 = ptrtoint ptr %chunk_ib.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %chunk_ib.i.i, align 4
  %kdata.i2015.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %kdata.i2015.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %kdata.i2015.i, align 4
  %tobool.not.i2016.i = icmp eq ptr %114, null
  br i1 %tobool.not.i2016.i, label %if.end.i2018.i, label %if.end61.i.radeon_get_ib_value.exit2022.i_crit_edge

if.end61.i.radeon_get_ib_value.exit2022.i_crit_edge: ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_get_ib_value.exit2022.i

if.end.i2018.i:                                   ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #8
  %115 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ptr.i, align 8
  br label %radeon_get_ib_value.exit2022.i

radeon_get_ib_value.exit2022.i:                   ; preds = %if.end.i2018.i, %if.end61.i.radeon_get_ib_value.exit2022.i_crit_edge
  %.pn.i2019.i = phi ptr [ %116, %if.end.i2018.i ], [ %114, %if.end61.i.radeon_get_ib_value.exit2022.i_crit_edge ]
  %retval.0.in.i2020.i = getelementptr i32, ptr %.pn.i2019.i, i32 %add65.i
  %117 = ptrtoint ptr %retval.0.in.i2020.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %retval.0.i2021.i = load i32, ptr %retval.0.in.i2020.i, align 4
  %and67.i = and i32 %retval.0.i2021.i, 255
  %conv68.i = zext i32 %and67.i to i64
  %shl69.i = shl nuw nsw i64 %conv68.i, 32
  %add70.i = add i64 %add64.i, %shl69.i
  %conv71.i = trunc i64 %add70.i to i32
  %arrayidx73.i = getelementptr i32, ptr %83, i32 %add.i
  %118 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %conv71.i, ptr %arrayidx73.i, align 4
  %shr74.i = lshr i64 %add70.i, 32
  %conv76.i = trunc i64 %shr74.i to i32
  %and77.i = and i32 %conv76.i, 255
  %arrayidx79.i = getelementptr i32, ptr %83, i32 %add65.i
  %119 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %and77.i, ptr %arrayidx79.i, align 4
  %call80.i = call fastcc i32 @evergreen_cs_track_check(ptr noundef %p) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80.i)
  %tobool81.not.i = icmp eq i32 %call80.i, 0
  br i1 %tobool81.not.i, label %radeon_get_ib_value.exit2022.i.sw.epilog63_crit_edge, label %do.end.i

radeon_get_ib_value.exit2022.i.sw.epilog63_crit_edge: ; preds = %radeon_get_ib_value.exit2022.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog63

do.end.i:                                         ; preds = %radeon_get_ib_value.exit2022.i
  call void @__sanitizer_cov_trace_pc() #8
  %120 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %121, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.92, i32 noundef 1873) #10
  br label %sw.epilog63.thread157

sw.bb86.i:                                        ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp88.not.i = icmp eq i32 %67, 0
  br i1 %cmp88.not.i, label %sw.bb86.i.sw.epilog63_crit_edge, label %if.then90.i

sw.bb86.i.sw.epilog63_crit_edge:                  ; preds = %sw.bb86.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog63

if.then90.i:                                      ; preds = %sw.bb86.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.93) #6
  br label %sw.epilog63.thread157

sw.bb92.i:                                        ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %67)
  %cmp95.not.i = icmp eq i32 %67, 3
  br i1 %cmp95.not.i, label %if.end98.i, label %if.then97.i

if.then97.i:                                      ; preds = %sw.bb92.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.94) #6
  br label %sw.epilog63.thread157

if.end98.i:                                       ; preds = %sw.bb92.i
  %call99.i = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99.i)
  %tobool100.not.i = icmp eq i32 %call99.i, 0
  br i1 %tobool100.not.i, label %if.end102.i, label %if.then101.i

if.then101.i:                                     ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.94) #6
  br label %sw.epilog63.thread157

if.end102.i:                                      ; preds = %if.end98.i
  %122 = ptrtoint ptr %reloc.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %reloc.i, align 4
  %gpu_offset103.i = getelementptr inbounds %struct.radeon_bo_list, ptr %123, i32 0, i32 2
  %124 = ptrtoint ptr %gpu_offset103.i to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %gpu_offset103.i, align 8
  %conv104.i = zext i32 %retval.0.i.i to i64
  %add105.i = add i64 %125, %conv104.i
  %add106.i = add i32 %85, 2
  %126 = ptrtoint ptr %chunk_ib.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %chunk_ib.i.i, align 4
  %kdata.i2024.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %kdata.i2024.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %kdata.i2024.i, align 4
  %tobool.not.i2025.i = icmp eq ptr %129, null
  br i1 %tobool.not.i2025.i, label %if.end.i2027.i, label %if.end102.i.radeon_get_ib_value.exit2031.i_crit_edge

if.end102.i.radeon_get_ib_value.exit2031.i_crit_edge: ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_get_ib_value.exit2031.i

if.end.i2027.i:                                   ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #8
  %130 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %ptr.i, align 8
  br label %radeon_get_ib_value.exit2031.i

radeon_get_ib_value.exit2031.i:                   ; preds = %if.end.i2027.i, %if.end102.i.radeon_get_ib_value.exit2031.i_crit_edge
  %.pn.i2028.i = phi ptr [ %131, %if.end.i2027.i ], [ %129, %if.end102.i.radeon_get_ib_value.exit2031.i_crit_edge ]
  %retval.0.in.i2029.i = getelementptr i32, ptr %.pn.i2028.i, i32 %add106.i
  %132 = ptrtoint ptr %retval.0.in.i2029.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %retval.0.i2030.i = load i32, ptr %retval.0.in.i2029.i, align 4
  %and108.i = and i32 %retval.0.i2030.i, 255
  %conv109.i = zext i32 %and108.i to i64
  %shl110.i = shl nuw nsw i64 %conv109.i, 32
  %add111.i = add i64 %add105.i, %shl110.i
  %conv112.i = trunc i64 %add111.i to i32
  %arrayidx114.i = getelementptr i32, ptr %83, i32 %add.i
  %133 = ptrtoint ptr %arrayidx114.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %conv112.i, ptr %arrayidx114.i, align 4
  %shr115.i = lshr i64 %add111.i, 32
  %conv117.i = trunc i64 %shr115.i to i32
  %and118.i = and i32 %conv117.i, 255
  %arrayidx120.i = getelementptr i32, ptr %83, i32 %add106.i
  %134 = ptrtoint ptr %arrayidx120.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %and118.i, ptr %arrayidx120.i, align 4
  %call121.i = call fastcc i32 @evergreen_cs_track_check(ptr noundef %p) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121.i)
  %tobool122.not.i = icmp eq i32 %call121.i, 0
  br i1 %tobool122.not.i, label %radeon_get_ib_value.exit2031.i.sw.epilog63_crit_edge, label %do.end126.i

radeon_get_ib_value.exit2031.i.sw.epilog63_crit_edge: ; preds = %radeon_get_ib_value.exit2031.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog63

do.end126.i:                                      ; preds = %radeon_get_ib_value.exit2031.i
  call void @__sanitizer_cov_trace_pc() #8
  %135 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %136, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.92, i32 noundef 1908) #10
  br label %sw.epilog63.thread157

sw.bb131.i:                                       ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %67)
  %cmp134.not.i = icmp eq i32 %67, 4
  br i1 %cmp134.not.i, label %if.end137.i, label %if.then136.i

if.then136.i:                                     ; preds = %sw.bb131.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.97) #6
  br label %sw.epilog63.thread157

if.end137.i:                                      ; preds = %sw.bb131.i
  %call138.i = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138.i)
  %tobool139.not.i = icmp eq i32 %call138.i, 0
  br i1 %tobool139.not.i, label %if.end141.i, label %if.then140.i

if.then140.i:                                     ; preds = %if.end137.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.97) #6
  br label %sw.epilog63.thread157

if.end141.i:                                      ; preds = %if.end137.i
  %137 = ptrtoint ptr %reloc.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %reloc.i, align 4
  %gpu_offset142.i = getelementptr inbounds %struct.radeon_bo_list, ptr %138, i32 0, i32 2
  %139 = ptrtoint ptr %gpu_offset142.i to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %gpu_offset142.i, align 8
  %add143.i = add i32 %85, 2
  %141 = ptrtoint ptr %chunk_ib.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %chunk_ib.i.i, align 4
  %kdata.i2033.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %142, i32 0, i32 1
  %143 = ptrtoint ptr %kdata.i2033.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %kdata.i2033.i, align 4
  %tobool.not.i2034.i = icmp eq ptr %144, null
  br i1 %tobool.not.i2034.i, label %if.end.i2045.i, label %if.end141.i.radeon_get_ib_value.exit2049.i_crit_edge

if.end141.i.radeon_get_ib_value.exit2049.i_crit_edge: ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_get_ib_value.exit2049.i

if.end.i2045.i:                                   ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #8
  %145 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ptr.i, align 8
  br label %radeon_get_ib_value.exit2049.i

radeon_get_ib_value.exit2049.i:                   ; preds = %if.end.i2045.i, %if.end141.i.radeon_get_ib_value.exit2049.i_crit_edge
  %.pn2591.i = phi ptr [ %146, %if.end.i2045.i ], [ %144, %if.end141.i.radeon_get_ib_value.exit2049.i_crit_edge ]
  %conv1452417.pn.in.in.i = getelementptr i32, ptr %.pn2591.i, i32 %add143.i
  %147 = ptrtoint ptr %conv1452417.pn.in.in.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %conv1452417.pn.in.i = load i32, ptr %conv1452417.pn.in.in.i, align 4
  %conv1452417.pn.i = zext i32 %conv1452417.pn.in.i to i64
  %add1462420.i = add i64 %140, %conv1452417.pn.i
  %add1472422.i = add i32 %85, 3
  %retval.0.in.i2047.i = getelementptr i32, ptr %.pn2591.i, i32 %add1472422.i
  %148 = ptrtoint ptr %retval.0.in.i2047.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %retval.0.i2048.i = load i32, ptr %retval.0.in.i2047.i, align 4
  %and149.i = and i32 %retval.0.i2048.i, 255
  %conv150.i = zext i32 %and149.i to i64
  %shl151.i = shl nuw nsw i64 %conv150.i, 32
  %add152.i = add i64 %add1462420.i, %shl151.i
  %conv153.i = trunc i64 %add152.i to i32
  %arrayidx155.i = getelementptr i32, ptr %83, i32 %add143.i
  %149 = ptrtoint ptr %arrayidx155.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %conv153.i, ptr %arrayidx155.i, align 4
  %shr156.i = lshr i64 %add152.i, 32
  %conv158.i = trunc i64 %shr156.i to i32
  %and159.i = and i32 %conv158.i, 255
  %arrayidx161.i = getelementptr i32, ptr %83, i32 %add1472422.i
  %150 = ptrtoint ptr %arrayidx161.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %and159.i, ptr %arrayidx161.i, align 4
  %call162.i = call fastcc i32 @evergreen_cs_track_check(ptr noundef %p) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162.i)
  %tobool163.not.i = icmp eq i32 %call162.i, 0
  br i1 %tobool163.not.i, label %radeon_get_ib_value.exit2049.i.sw.epilog63_crit_edge, label %do.end167.i

radeon_get_ib_value.exit2049.i.sw.epilog63_crit_edge: ; preds = %radeon_get_ib_value.exit2049.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog63

do.end167.i:                                      ; preds = %radeon_get_ib_value.exit2049.i
  call void @__sanitizer_cov_trace_pc() #8
  %151 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %152, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.92, i32 noundef 1936) #10
  br label %sw.epilog63.thread157

sw.bb172.i:                                       ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %67)
  %cmp174.not.i = icmp eq i32 %67, 1
  br i1 %cmp174.not.i, label %if.end177.i, label %if.then176.i

if.then176.i:                                     ; preds = %sw.bb172.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.100) #6
  br label %sw.epilog63.thread157

if.end177.i:                                      ; preds = %sw.bb172.i
  %call178.i = call fastcc i32 @evergreen_cs_track_check(ptr noundef %p) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call178.i)
  %tobool179.not.i = icmp eq i32 %call178.i, 0
  br i1 %tobool179.not.i, label %if.end177.i.sw.epilog63_crit_edge, label %do.end183.i

if.end177.i.sw.epilog63_crit_edge:                ; preds = %if.end177.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog63

do.end183.i:                                      ; preds = %if.end177.i
  call void @__sanitizer_cov_trace_pc() #8
  %153 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %154, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.92, i32 noundef 1948, i32 noundef %add.i) #10
  br label %sw.epilog63.thread157

sw.bb186.i:                                       ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %67)
  %cmp188.not.i = icmp eq i32 %67, 2
  br i1 %cmp188.not.i, label %if.end191.i, label %if.then190.i

if.then190.i:                                     ; preds = %sw.bb186.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.104) #6
  br label %sw.epilog63.thread157

if.end191.i:                                      ; preds = %sw.bb186.i
  %call192.i = call fastcc i32 @evergreen_cs_track_check(ptr noundef %p) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call192.i)
  %tobool193.not.i = icmp eq i32 %call192.i, 0
  br i1 %tobool193.not.i, label %if.end191.i.sw.epilog63_crit_edge, label %do.end197.i

if.end191.i.sw.epilog63_crit_edge:                ; preds = %if.end191.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog63

do.end197.i:                                      ; preds = %if.end191.i
  call void @__sanitizer_cov_trace_pc() #8
  %155 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %156, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.92, i32 noundef 1959, i32 noundef %add.i) #10
  br label %sw.epilog63.thread157

sw.bb200.i:                                       ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %67)
  %cmp202.i = icmp slt i32 %67, 2
  br i1 %cmp202.i, label %if.then204.i, label %if.end205.i

if.then204.i:                                     ; preds = %sw.bb200.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.107) #6
  br label %sw.epilog63.thread157

if.end205.i:                                      ; preds = %sw.bb200.i
  %call206.i = call fastcc i32 @evergreen_cs_track_check(ptr noundef %p) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call206.i)
  %tobool207.not.i = icmp eq i32 %call206.i, 0
  br i1 %tobool207.not.i, label %if.end205.i.sw.epilog63_crit_edge, label %do.end211.i

if.end205.i.sw.epilog63_crit_edge:                ; preds = %if.end205.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog63

do.end211.i:                                      ; preds = %if.end205.i
  call void @__sanitizer_cov_trace_pc() #8
  %157 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %158, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.92, i32 noundef 1970) #10
  br label %sw.epilog63.thread157

sw.bb214.i:                                       ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %67)
  %cmp216.not.i = icmp eq i32 %67, 2
  br i1 %cmp216.not.i, label %if.end219.i, label %if.then218.i

if.then218.i:                                     ; preds = %sw.bb214.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.110) #6
  br label %sw.epilog63.thread157

if.end219.i:                                      ; preds = %sw.bb214.i
  %call220.i = call fastcc i32 @evergreen_cs_track_check(ptr noundef %p) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call220.i)
  %tobool221.not.i = icmp eq i32 %call220.i, 0
  br i1 %tobool221.not.i, label %if.end219.i.sw.epilog63_crit_edge, label %do.end225.i

if.end219.i.sw.epilog63_crit_edge:                ; preds = %if.end219.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog63

do.end225.i:                                      ; preds = %if.end219.i
  call void @__sanitizer_cov_trace_pc() #8
  %159 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %160, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.92, i32 noundef 1981) #10
  br label %sw.epilog63.thread157

sw.bb228.i:                                       ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %67)
  %cmp230.not.i = icmp eq i32 %67, 3
  br i1 %cmp230.not.i, label %if.end233.i, label %if.then232.i

if.then232.i:                                     ; preds = %sw.bb228.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.113) #6
  br label %sw.epilog63.thread157

if.end233.i:                                      ; preds = %sw.bb228.i
  %call234.i = call fastcc i32 @evergreen_cs_track_check(ptr noundef %p) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call234.i)
  %tobool235.not.i = icmp eq i32 %call234.i, 0
  br i1 %tobool235.not.i, label %if.end233.i.sw.epilog63_crit_edge, label %do.end239.i

if.end233.i.sw.epilog63_crit_edge:                ; preds = %if.end233.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog63

do.end239.i:                                      ; preds = %if.end233.i
  call void @__sanitizer_cov_trace_pc() #8
  %161 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %162, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.92, i32 noundef 1992) #10
  br label %sw.epilog63.thread157

sw.bb242.i:                                       ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %67)
  %cmp244.not.i = icmp eq i32 %67, 2
  br i1 %cmp244.not.i, label %if.end247.i, label %if.then246.i

if.then246.i:                                     ; preds = %sw.bb242.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.116) #6
  br label %sw.epilog63.thread157

if.end247.i:                                      ; preds = %sw.bb242.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i.i)
  %cmp248.not.i = icmp eq i32 %retval.0.i.i, 1
  br i1 %cmp248.not.i, label %if.end251.i, label %if.then250.i

if.then250.i:                                     ; preds = %if.end247.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.116) #6
  br label %sw.epilog63.thread157

if.end251.i:                                      ; preds = %if.end247.i
  %call252.i = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call252.i)
  %tobool253.not.i = icmp eq i32 %call252.i, 0
  br i1 %tobool253.not.i, label %if.end255.i, label %if.then254.i

if.then254.i:                                     ; preds = %if.end251.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.116) #6
  br label %sw.epilog63.thread157

if.end255.i:                                      ; preds = %if.end251.i
  call void @__sanitizer_cov_trace_pc() #8
  %163 = ptrtoint ptr %reloc.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %reloc.i, align 4
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %164, align 8
  %size.i.i = getelementptr inbounds %struct.radeon_bo, ptr %166, i32 0, i32 4, i32 0, i32 5
  %167 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %size.i.i, align 8
  %indirect_draw_buffer_size.i = getelementptr inbounds %struct.evergreen_cs_track, ptr %81, i32 0, i32 45
  %169 = ptrtoint ptr %indirect_draw_buffer_size.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %168, ptr %indirect_draw_buffer_size.i, align 4
  %gpu_offset257.i = getelementptr inbounds %struct.radeon_bo_list, ptr %164, i32 0, i32 2
  %170 = ptrtoint ptr %gpu_offset257.i to i32
  call void @__asan_load8_noabort(i32 %170)
  %171 = load i64, ptr %gpu_offset257.i, align 8
  %conv258.i = trunc i64 %171 to i32
  %add259.i = add i32 %85, 2
  %arrayidx260.i = getelementptr i32, ptr %83, i32 %add259.i
  %172 = ptrtoint ptr %arrayidx260.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %conv258.i, ptr %arrayidx260.i, align 4
  %173 = load ptr, ptr %reloc.i, align 4
  %gpu_offset261.i = getelementptr inbounds %struct.radeon_bo_list, ptr %173, i32 0, i32 2
  %174 = ptrtoint ptr %gpu_offset261.i to i32
  call void @__asan_load8_noabort(i32 %174)
  %175 = load i64, ptr %gpu_offset261.i, align 8
  %shr262.i = lshr i64 %175, 32
  %conv264.i = trunc i64 %shr262.i to i32
  %and265.i = and i32 %conv264.i, 255
  %add266.i = add i32 %85, 3
  %arrayidx267.i = getelementptr i32, ptr %83, i32 %add266.i
  %176 = ptrtoint ptr %arrayidx267.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %and265.i, ptr %arrayidx267.i, align 4
  br label %sw.epilog63

sw.bb268.i:                                       ; preds = %sw.bb57.sw.bb268.i_crit_edge, %sw.bb57.sw.bb268.i_crit_edge4361
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %67)
  %cmp274.not.i = icmp eq i32 %67, 1
  br i1 %cmp274.not.i, label %if.end277.i, label %if.then276.i

if.then276.i:                                     ; preds = %sw.bb268.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.117) #6
  br label %sw.epilog63.thread157

if.end277.i:                                      ; preds = %sw.bb268.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %92)
  %cmp270.i = icmp eq i32 %92, 36
  %cond.i = select i1 %cmp270.i, i32 16, i32 20
  %177 = zext i32 %cond.i to i64
  %conv278.i = zext i32 %retval.0.i.i to i64
  %add279.i = add nuw nsw i64 %177, %conv278.i
  %indirect_draw_buffer_size280.i = getelementptr inbounds %struct.evergreen_cs_track, ptr %81, i32 0, i32 45
  %178 = ptrtoint ptr %indirect_draw_buffer_size280.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %indirect_draw_buffer_size280.i, align 4
  %conv281.i = zext i32 %179 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add279.i, i64 %conv281.i)
  %cmp282.i = icmp ugt i64 %add279.i, %conv281.i
  br i1 %cmp282.i, label %do.end287.i, label %if.end290.i

do.end287.i:                                      ; preds = %if.end277.i
  call void @__sanitizer_cov_trace_pc() #8
  %180 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %181, ptr noundef nonnull @.str.119, i32 noundef %retval.0.i.i, i64 noundef %177, i32 noundef %179) #10
  br label %sw.epilog63.thread157

if.end290.i:                                      ; preds = %if.end277.i
  %call291.i = call fastcc i32 @evergreen_cs_track_check(ptr noundef %p) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call291.i)
  %tobool292.not.i = icmp eq i32 %call291.i, 0
  br i1 %tobool292.not.i, label %if.end290.i.sw.epilog63_crit_edge, label %do.end296.i

if.end290.i.sw.epilog63_crit_edge:                ; preds = %if.end290.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog63

do.end296.i:                                      ; preds = %if.end290.i
  call void @__sanitizer_cov_trace_pc() #8
  %182 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %183, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.92, i32 noundef 2052) #10
  br label %sw.epilog63.thread157

sw.bb301.i:                                       ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %67)
  %cmp303.not.i = icmp eq i32 %67, 3
  br i1 %cmp303.not.i, label %if.end306.i, label %if.then305.i

if.then305.i:                                     ; preds = %sw.bb301.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.123) #6
  br label %sw.epilog63.thread157

if.end306.i:                                      ; preds = %sw.bb301.i
  %call307.i = call fastcc i32 @evergreen_cs_track_check(ptr noundef %p) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call307.i)
  %tobool308.not.i = icmp eq i32 %call307.i, 0
  br i1 %tobool308.not.i, label %if.end306.i.sw.epilog63_crit_edge, label %do.end312.i

if.end306.i.sw.epilog63_crit_edge:                ; preds = %if.end306.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog63

do.end312.i:                                      ; preds = %if.end306.i
  call void @__sanitizer_cov_trace_pc() #8
  %184 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %185, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.92, i32 noundef 2064, i32 noundef %add.i) #10
  br label %sw.epilog63.thread157

sw.bb315.i:                                       ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %67)
  %cmp317.not.i = icmp eq i32 %67, 1
  br i1 %cmp317.not.i, label %if.end320.i, label %if.then319.i

if.then319.i:                                     ; preds = %sw.bb315.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.126) #6
  br label %sw.epilog63.thread157

if.end320.i:                                      ; preds = %sw.bb315.i
  %call321.i = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call321.i)
  %tobool322.not.i = icmp eq i32 %call321.i, 0
  br i1 %tobool322.not.i, label %if.end324.i, label %if.then323.i

if.then323.i:                                     ; preds = %if.end320.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.126) #6
  br label %sw.epilog63.thread157

if.end324.i:                                      ; preds = %if.end320.i
  %186 = ptrtoint ptr %reloc.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %reloc.i, align 4
  %gpu_offset325.i = getelementptr inbounds %struct.radeon_bo_list, ptr %187, i32 0, i32 2
  %188 = ptrtoint ptr %gpu_offset325.i to i32
  call void @__asan_load8_noabort(i32 %188)
  %189 = load i64, ptr %gpu_offset325.i, align 8
  %conv327.i = trunc i64 %189 to i32
  %add328.i = add i32 %retval.0.i.i, %conv327.i
  %arrayidx330.i = getelementptr i32, ptr %83, i32 %add.i
  %190 = ptrtoint ptr %arrayidx330.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %add328.i, ptr %arrayidx330.i, align 4
  %call331.i = call fastcc i32 @evergreen_cs_track_check(ptr noundef %p) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call331.i)
  %tobool332.not.i = icmp eq i32 %call331.i, 0
  br i1 %tobool332.not.i, label %if.end324.i.sw.epilog63_crit_edge, label %do.end336.i

if.end324.i.sw.epilog63_crit_edge:                ; preds = %if.end324.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog63

do.end336.i:                                      ; preds = %if.end324.i
  call void @__sanitizer_cov_trace_pc() #8
  %191 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %192, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.92, i32 noundef 2081) #10
  br label %sw.epilog63.thread157

sw.bb339.i:                                       ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %67)
  %cmp341.not.i = icmp eq i32 %67, 5
  br i1 %cmp341.not.i, label %if.end344.i, label %if.then343.i

if.then343.i:                                     ; preds = %sw.bb339.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.129) #6
  br label %sw.epilog63.thread157

if.end344.i:                                      ; preds = %sw.bb339.i
  %and345.i = and i32 %retval.0.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and345.i)
  %tobool346.not.i = icmp eq i32 %and345.i, 0
  br i1 %tobool346.not.i, label %if.else.i, label %if.then347.i

if.then347.i:                                     ; preds = %if.end344.i
  %call349.i = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call349.i)
  %tobool350.not.i = icmp eq i32 %call349.i, 0
  br i1 %tobool350.not.i, label %if.end352.i, label %if.then351.i

if.then351.i:                                     ; preds = %if.then347.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.129) #6
  br label %sw.epilog63.thread157

if.end352.i:                                      ; preds = %if.then347.i
  %193 = ptrtoint ptr %reloc.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %reloc.i, align 4
  %gpu_offset353.i = getelementptr inbounds %struct.radeon_bo_list, ptr %194, i32 0, i32 2
  %195 = ptrtoint ptr %gpu_offset353.i to i32
  call void @__asan_load8_noabort(i32 %195)
  %196 = load i64, ptr %gpu_offset353.i, align 8
  %add354.i = add i32 %85, 2
  %197 = ptrtoint ptr %chunk_ib.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %chunk_ib.i.i, align 4
  %kdata.i2051.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %198, i32 0, i32 1
  %199 = ptrtoint ptr %kdata.i2051.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %kdata.i2051.i, align 4
  %tobool.not.i2052.i = icmp eq ptr %200, null
  br i1 %tobool.not.i2052.i, label %if.end.i2063.i, label %if.end352.i.radeon_get_ib_value.exit2067.i_crit_edge

if.end352.i.radeon_get_ib_value.exit2067.i_crit_edge: ; preds = %if.end352.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_get_ib_value.exit2067.i

if.end.i2063.i:                                   ; preds = %if.end352.i
  call void @__sanitizer_cov_trace_pc() #8
  %201 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %ptr.i, align 8
  br label %radeon_get_ib_value.exit2067.i

radeon_get_ib_value.exit2067.i:                   ; preds = %if.end.i2063.i, %if.end352.i.radeon_get_ib_value.exit2067.i_crit_edge
  %.pn2590.i = phi ptr [ %202, %if.end.i2063.i ], [ %200, %if.end352.i.radeon_get_ib_value.exit2067.i_crit_edge ]
  %conv3572432.pn.in.in.in.i = getelementptr i32, ptr %.pn2590.i, i32 %add354.i
  %203 = ptrtoint ptr %conv3572432.pn.in.in.in.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %conv3572432.pn.in.in.i = load i32, ptr %conv3572432.pn.in.in.in.i, align 4
  %conv3572432.pn.in.i = and i32 %conv3572432.pn.in.in.i, -4
  %conv3572432.pn.i = zext i32 %conv3572432.pn.in.i to i64
  %add3582435.i = add i64 %196, %conv3572432.pn.i
  %add3592437.i = add i32 %85, 3
  %retval.0.in.i2065.i = getelementptr i32, ptr %.pn2590.i, i32 %add3592437.i
  %204 = ptrtoint ptr %retval.0.in.i2065.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %retval.0.i2066.i = load i32, ptr %retval.0.in.i2065.i, align 4
  %and361.i = and i32 %retval.0.i2066.i, 255
  %conv362.i = zext i32 %and361.i to i64
  %shl363.i = shl nuw nsw i64 %conv362.i, 32
  %add364.i = add i64 %add3582435.i, %shl363.i
  %arrayidx366.i = getelementptr i32, ptr %83, i32 %add354.i
  %205 = ptrtoint ptr %arrayidx366.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %arrayidx366.i, align 4
  %and367.i = and i32 %206, 3
  %207 = trunc i64 %add364.i to i32
  %208 = and i32 %207, -4
  %conv371.i = or i32 %208, %and367.i
  store i32 %conv371.i, ptr %arrayidx366.i, align 4
  %shr374.i = lshr i64 %add364.i, 32
  %conv376.i = trunc i64 %shr374.i to i32
  %and377.i = and i32 %conv376.i, 255
  %arrayidx379.i = getelementptr i32, ptr %83, i32 %add3592437.i
  %209 = ptrtoint ptr %arrayidx379.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %and377.i, ptr %arrayidx379.i, align 4
  br label %sw.epilog63

if.else.i:                                        ; preds = %if.end344.i
  %and383.i = and i32 %retval.0.i.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and383.i)
  %tobool384.not.i = icmp eq i32 %and383.i, 0
  br i1 %tobool384.not.i, label %if.else.i.sw.epilog63_crit_edge, label %if.then385.i

if.else.i.sw.epilog63_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog63

if.then385.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.130) #6
  br label %sw.epilog63.thread157

sw.bb388.i:                                       ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %67)
  %cmp393.not.i = icmp eq i32 %67, 4
  br i1 %cmp393.not.i, label %if.end396.i, label %if.then395.i

if.then395.i:                                     ; preds = %sw.bb388.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.131) #6
  br label %sw.epilog63.thread157

if.end396.i:                                      ; preds = %sw.bb388.i
  %add397.i = add i32 %85, 5
  %retval.0.i20752444.in.i = getelementptr i32, ptr %spec.select.i, i32 %add397.i
  %210 = ptrtoint ptr %retval.0.i20752444.in.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %retval.0.i20752444.i = load i32, ptr %retval.0.i20752444.in.i, align 4
  %and3992447.i = and i32 %retval.0.i20752444.i, 2097151
  %add4002449.i = add i32 %85, 2
  %retval.0.in.i2083.i = getelementptr i32, ptr %spec.select.i, i32 %add4002449.i
  %211 = ptrtoint ptr %retval.0.in.i2083.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %retval.0.i2084.i = load i32, ptr %retval.0.in.i2083.i, align 4
  %and402.i = lshr i32 %retval.0.i2084.i, 29
  %shr403.i = and i32 %and402.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr403.i)
  %cmp404.not.i = icmp eq i32 %shr403.i, 0
  %212 = and i32 %retval.0.i2084.i, 3145728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %212)
  %cmp408.not.i = icmp eq i32 %212, 0
  %or.cond.i = select i1 %cmp404.not.i, i1 %cmp408.not.i, i1 false
  %and415.i = and i32 %retval.0.i20752444.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and415.i)
  %tobool416.not.i = icmp eq i32 %and415.i, 0
  %or.cond1964.i = select i1 %or.cond.i, i1 %tobool416.not.i, i1 false
  %and423.i = and i32 %retval.0.i20752444.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and423.i)
  %tobool424.not.i = icmp eq i32 %and423.i, 0
  %or.cond1965.i = select i1 %or.cond1964.i, i1 %tobool424.not.i, i1 false
  %rem.i = and i32 %retval.0.i20752444.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool426.not.i = icmp eq i32 %rem.i, 0
  %or.cond1966.i = select i1 %or.cond1965.i, i1 true, i1 %tobool426.not.i
  br i1 %or.cond1966.i, label %if.end429.i, label %if.then427.i

if.then427.i:                                     ; preds = %if.end396.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.132) #6
  br label %sw.epilog63.thread157

if.end429.i:                                      ; preds = %if.end396.i
  br i1 %tobool424.not.i, label %if.else439.i, label %if.then432.i

if.then432.i:                                     ; preds = %if.end429.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr403.i)
  %cmp435.not.i = icmp eq i32 %shr403.i, 1
  br i1 %cmp435.not.i, label %if.then432.i.if.end500.i_crit_edge, label %if.then437.i

if.then432.i.if.end500.i_crit_edge:               ; preds = %if.then432.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end500.i

if.then437.i:                                     ; preds = %if.then432.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.133) #6
  br label %sw.epilog63.thread157

if.else439.i:                                     ; preds = %if.end429.i
  %and440.i = and i32 %retval.0.i20752444.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and440.i)
  %tobool441.not.i = icmp eq i32 %and440.i, 0
  br i1 %tobool441.not.i, label %if.end443.i, label %if.then442.i

if.then442.i:                                     ; preds = %if.else439.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.134) #6
  br label %sw.epilog63.thread157

if.end443.i:                                      ; preds = %if.else439.i
  %213 = zext i32 %shr403.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %213, ptr @__sancov_gen_cov_switch_values.381)
  switch i32 %shr403.i, label %if.then497.i [
    i32 0, label %if.then448.i
    i32 2, label %if.end443.i.if.end500.i_crit_edge
  ]

if.end443.i.if.end500.i_crit_edge:                ; preds = %if.end443.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end500.i

if.then448.i:                                     ; preds = %if.end443.i
  %call449.i = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call449.i)
  %tobool450.not.i = icmp eq i32 %call449.i, 0
  br i1 %tobool450.not.i, label %if.end452.i, label %if.then451.i

if.then451.i:                                     ; preds = %if.then448.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.135) #6
  br label %sw.epilog63.thread157

if.end452.i:                                      ; preds = %if.then448.i
  %214 = ptrtoint ptr %chunk_ib.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %chunk_ib.i.i, align 4
  %kdata.i2087.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %215, i32 0, i32 1
  %216 = ptrtoint ptr %kdata.i2087.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %kdata.i2087.i, align 4
  %tobool.not.i2088.i = icmp eq ptr %217, null
  br i1 %tobool.not.i2088.i, label %if.end.i2099.i, label %if.end452.i.radeon_get_ib_value.exit2103.i_crit_edge

if.end452.i.radeon_get_ib_value.exit2103.i_crit_edge: ; preds = %if.end452.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_get_ib_value.exit2103.i

if.end.i2099.i:                                   ; preds = %if.end452.i
  call void @__sanitizer_cov_trace_pc() #8
  %218 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %ptr.i, align 8
  br label %radeon_get_ib_value.exit2103.i

radeon_get_ib_value.exit2103.i:                   ; preds = %if.end.i2099.i, %if.end452.i.radeon_get_ib_value.exit2103.i_crit_edge
  %.pn2589.i = phi ptr [ %219, %if.end.i2099.i ], [ %217, %if.end452.i.radeon_get_ib_value.exit2103.i_crit_edge ]
  %conv4542455.in.in.i = getelementptr i32, ptr %.pn2589.i, i32 %add.i
  %220 = ptrtoint ptr %conv4542455.in.in.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %conv4542455.in.i = load i32, ptr %conv4542455.in.in.i, align 4
  %conv4542455.i = zext i32 %conv4542455.in.i to i64
  %retval.0.in.i2101.i = getelementptr i32, ptr %.pn2589.i, i32 %add4002449.i
  %221 = ptrtoint ptr %retval.0.in.i2101.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %retval.0.i2102.i = load i32, ptr %retval.0.in.i2101.i, align 4
  %and457.i = and i32 %retval.0.i2102.i, 255
  %conv458.i = zext i32 %and457.i to i64
  %shl459.i = shl nuw nsw i64 %conv458.i, 32
  %add460.i = or i64 %shl459.i, %conv4542455.i
  %222 = ptrtoint ptr %reloc.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %reloc.i, align 4
  %conv463.i = zext i32 %and3992447.i to i64
  %add464.i = add nuw nsw i64 %add460.i, %conv463.i
  %224 = ptrtoint ptr %223 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %223, align 8
  %size.i2104.i = getelementptr inbounds %struct.radeon_bo, ptr %225, i32 0, i32 4, i32 0, i32 5
  %226 = ptrtoint ptr %size.i2104.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %size.i2104.i, align 8
  %conv467.i = zext i32 %227 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add464.i, i64 %conv467.i)
  %cmp468.i = icmp ugt i64 %add464.i, %conv467.i
  br i1 %cmp468.i, label %do.end473.i, label %if.end479.i

do.end473.i:                                      ; preds = %radeon_get_ib_value.exit2103.i
  call void @__sanitizer_cov_trace_pc() #8
  %228 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %229, ptr noundef nonnull @.str.137, i64 noundef %add464.i, i32 noundef %227) #10
  br label %sw.epilog63.thread157

if.end479.i:                                      ; preds = %radeon_get_ib_value.exit2103.i
  call void @__sanitizer_cov_trace_pc() #8
  %gpu_offset461.i = getelementptr inbounds %struct.radeon_bo_list, ptr %223, i32 0, i32 2
  %230 = ptrtoint ptr %gpu_offset461.i to i32
  call void @__asan_load8_noabort(i32 %230)
  %231 = load i64, ptr %gpu_offset461.i, align 8
  %add462.i = add i64 %231, %add460.i
  %conv480.i = trunc i64 %add462.i to i32
  %arrayidx481.i = getelementptr i32, ptr %83, i32 %add.i
  %232 = ptrtoint ptr %arrayidx481.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %conv480.i, ptr %arrayidx481.i, align 4
  %arrayidx483.i = getelementptr i32, ptr %83, i32 %add4002449.i
  %233 = ptrtoint ptr %arrayidx483.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %arrayidx483.i, align 4
  %and484.i = and i32 %234, -256
  %shr485.i = lshr i64 %add462.i, 32
  %conv487.i = trunc i64 %shr485.i to i32
  %and488.i = and i32 %conv487.i, 255
  %or489.i = or i32 %and488.i, %and484.i
  store i32 %or489.i, ptr %arrayidx483.i, align 4
  br label %if.end500.i

if.then497.i:                                     ; preds = %if.end443.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.139) #6
  br label %sw.epilog63.thread157

if.end500.i:                                      ; preds = %if.end479.i, %if.end443.i.if.end500.i_crit_edge, %if.then432.i.if.end500.i_crit_edge
  br i1 %tobool416.not.i, label %if.else510.i, label %if.then503.i

if.then503.i:                                     ; preds = %if.end500.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %212)
  %cmp506.not.i = icmp eq i32 %212, 1048576
  br i1 %cmp506.not.i, label %if.then503.i.sw.epilog63_crit_edge, label %if.then508.i

if.then503.i.sw.epilog63_crit_edge:               ; preds = %if.then503.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog63

if.then508.i:                                     ; preds = %if.then503.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.140) #6
  br label %sw.epilog63.thread157

if.else510.i:                                     ; preds = %if.end500.i
  %and511.i = and i32 %retval.0.i20752444.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and511.i)
  %tobool512.not.i = icmp eq i32 %and511.i, 0
  br i1 %tobool512.not.i, label %if.end514.i, label %if.then513.i

if.then513.i:                                     ; preds = %if.else510.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.141) #6
  br label %sw.epilog63.thread157

if.end514.i:                                      ; preds = %if.else510.i
  br i1 %cmp408.not.i, label %if.then519.i, label %if.else561.i

if.then519.i:                                     ; preds = %if.end514.i
  %call520.i = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call520.i)
  %tobool521.not.i = icmp eq i32 %call520.i, 0
  br i1 %tobool521.not.i, label %if.end523.i, label %if.then522.i

if.then522.i:                                     ; preds = %if.then519.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.142) #6
  br label %sw.epilog63.thread157

if.end523.i:                                      ; preds = %if.then519.i
  %add524.i = add i32 %85, 3
  %235 = ptrtoint ptr %chunk_ib.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %chunk_ib.i.i, align 4
  %kdata.i2107.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %236, i32 0, i32 1
  %237 = ptrtoint ptr %kdata.i2107.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %kdata.i2107.i, align 4
  %tobool.not.i2108.i = icmp eq ptr %238, null
  br i1 %tobool.not.i2108.i, label %if.end.i2119.i, label %if.end523.i.radeon_get_ib_value.exit2123.i_crit_edge

if.end523.i.radeon_get_ib_value.exit2123.i_crit_edge: ; preds = %if.end523.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_get_ib_value.exit2123.i

if.end.i2119.i:                                   ; preds = %if.end523.i
  call void @__sanitizer_cov_trace_pc() #8
  %239 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %ptr.i, align 8
  br label %radeon_get_ib_value.exit2123.i

radeon_get_ib_value.exit2123.i:                   ; preds = %if.end.i2119.i, %if.end523.i.radeon_get_ib_value.exit2123.i_crit_edge
  %.pn2588.i = phi ptr [ %240, %if.end.i2119.i ], [ %238, %if.end523.i.radeon_get_ib_value.exit2123.i_crit_edge ]
  %conv5262462.in.in.i = getelementptr i32, ptr %.pn2588.i, i32 %add524.i
  %241 = ptrtoint ptr %conv5262462.in.in.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %conv5262462.in.i = load i32, ptr %conv5262462.in.in.i, align 4
  %conv5262462.i = zext i32 %conv5262462.in.i to i64
  %add5272464.i = add i32 %85, 4
  %retval.0.in.i2121.i = getelementptr i32, ptr %.pn2588.i, i32 %add5272464.i
  %242 = ptrtoint ptr %retval.0.in.i2121.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %retval.0.i2122.i = load i32, ptr %retval.0.in.i2121.i, align 4
  %and529.i = and i32 %retval.0.i2122.i, 255
  %conv530.i = zext i32 %and529.i to i64
  %shl531.i = shl nuw nsw i64 %conv530.i, 32
  %add532.i = or i64 %shl531.i, %conv5262462.i
  %243 = ptrtoint ptr %reloc.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %reloc.i, align 4
  %conv535.i = zext i32 %and3992447.i to i64
  %add536.i = add nuw nsw i64 %add532.i, %conv535.i
  %245 = ptrtoint ptr %244 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %244, align 8
  %size.i2124.i = getelementptr inbounds %struct.radeon_bo, ptr %246, i32 0, i32 4, i32 0, i32 5
  %247 = ptrtoint ptr %size.i2124.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %size.i2124.i, align 8
  %conv539.i = zext i32 %248 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add536.i, i64 %conv539.i)
  %cmp540.i = icmp ugt i64 %add536.i, %conv539.i
  br i1 %cmp540.i, label %do.end545.i, label %if.end551.i

do.end545.i:                                      ; preds = %radeon_get_ib_value.exit2123.i
  call void @__sanitizer_cov_trace_pc() #8
  %249 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %250, ptr noundef nonnull @.str.144, i64 noundef %add536.i, i32 noundef %248) #10
  br label %sw.epilog63.thread157

if.end551.i:                                      ; preds = %radeon_get_ib_value.exit2123.i
  call void @__sanitizer_cov_trace_pc() #8
  %gpu_offset533.i = getelementptr inbounds %struct.radeon_bo_list, ptr %244, i32 0, i32 2
  %251 = ptrtoint ptr %gpu_offset533.i to i32
  call void @__asan_load8_noabort(i32 %251)
  %252 = load i64, ptr %gpu_offset533.i, align 8
  %add534.i = add i64 %252, %add532.i
  %conv552.i = trunc i64 %add534.i to i32
  %arrayidx554.i = getelementptr i32, ptr %83, i32 %add524.i
  %253 = ptrtoint ptr %arrayidx554.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 %conv552.i, ptr %arrayidx554.i, align 4
  %shr555.i = lshr i64 %add534.i, 32
  %conv557.i = trunc i64 %shr555.i to i32
  %and558.i = and i32 %conv557.i, 255
  %arrayidx560.i = getelementptr i32, ptr %83, i32 %add5272464.i
  %254 = ptrtoint ptr %arrayidx560.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 %and558.i, ptr %arrayidx560.i, align 4
  br label %sw.epilog63

if.else561.i:                                     ; preds = %if.end514.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.146) #6
  br label %sw.epilog63.thread157

sw.bb570.i:                                       ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool572.not.i = icmp eq i32 %67, 0
  br i1 %tobool572.not.i, label %sw.bb570.i.sw.epilog63_crit_edge, label %if.then573.i

sw.bb570.i.sw.epilog63_crit_edge:                 ; preds = %sw.bb570.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog63

if.then573.i:                                     ; preds = %sw.bb570.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.147) #6
  br label %sw.epilog63.thread157

sw.bb575.i:                                       ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %67)
  %cmp577.not.i = icmp eq i32 %67, 3
  br i1 %cmp577.not.i, label %if.end580.i, label %if.then579.i

if.then579.i:                                     ; preds = %sw.bb575.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.148) #6
  br label %sw.epilog63.thread157

if.end580.i:                                      ; preds = %sw.bb575.i
  %add581.i = add i32 %85, 2
  br i1 %tobool.not.i.i119, label %radeon_get_ib_value.exit2134.i, label %radeon_get_ib_value.exit2134.thread.i

radeon_get_ib_value.exit2134.i:                   ; preds = %if.end580.i
  %retval.0.in.i2132.i = getelementptr i32, ptr %83, i32 %add581.i
  %255 = ptrtoint ptr %retval.0.in.i2132.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %retval.0.i2133.i = load i32, ptr %retval.0.in.i2132.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i2133.i)
  %cmp583.not.i = icmp eq i32 %retval.0.i2133.i, -1
  br i1 %cmp583.not.i, label %radeon_get_ib_value.exit2134.i.radeon_get_ib_value.exit2143.i_crit_edge, label %radeon_get_ib_value.exit2134.i.if.then590.i_crit_edge

radeon_get_ib_value.exit2134.i.if.then590.i_crit_edge: ; preds = %radeon_get_ib_value.exit2134.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then590.i

radeon_get_ib_value.exit2134.i.radeon_get_ib_value.exit2143.i_crit_edge: ; preds = %radeon_get_ib_value.exit2134.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_get_ib_value.exit2143.i

radeon_get_ib_value.exit2134.thread.i:            ; preds = %if.end580.i
  %retval.0.in.i21322467.i = getelementptr i32, ptr %89, i32 %add581.i
  %256 = ptrtoint ptr %retval.0.in.i21322467.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %retval.0.i21332468.i = load i32, ptr %retval.0.in.i21322467.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i21332468.i)
  %cmp583.not2469.i = icmp eq i32 %retval.0.i21332468.i, -1
  br i1 %cmp583.not2469.i, label %radeon_get_ib_value.exit2134.thread.i.radeon_get_ib_value.exit2143.i_crit_edge, label %radeon_get_ib_value.exit2134.thread.i.if.then590.i_crit_edge

radeon_get_ib_value.exit2134.thread.i.if.then590.i_crit_edge: ; preds = %radeon_get_ib_value.exit2134.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then590.i

radeon_get_ib_value.exit2134.thread.i.radeon_get_ib_value.exit2143.i_crit_edge: ; preds = %radeon_get_ib_value.exit2134.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_get_ib_value.exit2143.i

radeon_get_ib_value.exit2143.i:                   ; preds = %radeon_get_ib_value.exit2134.thread.i.radeon_get_ib_value.exit2143.i_crit_edge, %radeon_get_ib_value.exit2134.i.radeon_get_ib_value.exit2143.i_crit_edge
  %.pn.i2140.i = phi ptr [ %89, %radeon_get_ib_value.exit2134.thread.i.radeon_get_ib_value.exit2143.i_crit_edge ], [ %83, %radeon_get_ib_value.exit2134.i.radeon_get_ib_value.exit2143.i_crit_edge ]
  %add5862471.i = add i32 %85, 3
  %retval.0.in.i2141.i = getelementptr i32, ptr %.pn.i2140.i, i32 %add5862471.i
  %257 = ptrtoint ptr %retval.0.in.i2141.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %retval.0.i2142.i = load i32, ptr %retval.0.in.i2141.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i2142.i)
  %cmp588.not.i = icmp eq i32 %retval.0.i2142.i, 0
  br i1 %cmp588.not.i, label %radeon_get_ib_value.exit2143.i.sw.epilog63_crit_edge, label %radeon_get_ib_value.exit2143.i.if.then590.i_crit_edge

radeon_get_ib_value.exit2143.i.if.then590.i_crit_edge: ; preds = %radeon_get_ib_value.exit2143.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then590.i

radeon_get_ib_value.exit2143.i.sw.epilog63_crit_edge: ; preds = %radeon_get_ib_value.exit2143.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog63

if.then590.i:                                     ; preds = %radeon_get_ib_value.exit2143.i.if.then590.i_crit_edge, %radeon_get_ib_value.exit2134.thread.i.if.then590.i_crit_edge, %radeon_get_ib_value.exit2134.i.if.then590.i_crit_edge
  %call591.i = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call591.i)
  %tobool592.not.i = icmp eq i32 %call591.i, 0
  br i1 %tobool592.not.i, label %if.end594.i, label %if.then593.i

if.then593.i:                                     ; preds = %if.then590.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.148) #6
  br label %sw.epilog63.thread157

if.end594.i:                                      ; preds = %if.then590.i
  call void @__sanitizer_cov_trace_pc() #8
  %258 = ptrtoint ptr %reloc.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %reloc.i, align 4
  %gpu_offset595.i = getelementptr inbounds %struct.radeon_bo_list, ptr %259, i32 0, i32 2
  %260 = ptrtoint ptr %gpu_offset595.i to i32
  call void @__asan_load8_noabort(i32 %260)
  %261 = load i64, ptr %gpu_offset595.i, align 8
  %shr596.i = lshr i64 %261, 8
  %conv598.i = trunc i64 %shr596.i to i32
  %add599.i = add i32 %85, 3
  %arrayidx600.i = getelementptr i32, ptr %83, i32 %add599.i
  %262 = ptrtoint ptr %arrayidx600.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %arrayidx600.i, align 4
  %add601.i = add i32 %263, %conv598.i
  store i32 %add601.i, ptr %arrayidx600.i, align 4
  br label %sw.epilog63

sw.bb603.i:                                       ; preds = %sw.bb57
  %264 = zext i32 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %264, ptr @__sancov_gen_cov_switch_values.382)
  switch i32 %67, label %if.then611.i [
    i32 0, label %sw.bb603.i.sw.epilog63_crit_edge
    i32 2, label %if.then615.i
  ]

sw.bb603.i.sw.epilog63_crit_edge:                 ; preds = %sw.bb603.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog63

if.then611.i:                                     ; preds = %sw.bb603.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.149) #6
  br label %sw.epilog63.thread157

if.then615.i:                                     ; preds = %sw.bb603.i
  %call617.i = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call617.i)
  %tobool618.not.i = icmp eq i32 %call617.i, 0
  br i1 %tobool618.not.i, label %if.end620.i, label %if.then619.i

if.then619.i:                                     ; preds = %if.then615.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.149) #6
  br label %sw.epilog63.thread157

if.end620.i:                                      ; preds = %if.then615.i
  %265 = ptrtoint ptr %reloc.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %reloc.i, align 4
  %gpu_offset621.i = getelementptr inbounds %struct.radeon_bo_list, ptr %266, i32 0, i32 2
  %267 = ptrtoint ptr %gpu_offset621.i to i32
  call void @__asan_load8_noabort(i32 %267)
  %268 = load i64, ptr %gpu_offset621.i, align 8
  %add622.i = add i32 %85, 2
  %269 = ptrtoint ptr %chunk_ib.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %chunk_ib.i.i, align 4
  %kdata.i2145.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %270, i32 0, i32 1
  %271 = ptrtoint ptr %kdata.i2145.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %kdata.i2145.i, align 4
  %tobool.not.i2146.i = icmp eq ptr %272, null
  br i1 %tobool.not.i2146.i, label %if.end.i2157.i, label %if.end620.i.radeon_get_ib_value.exit2161.i_crit_edge

if.end620.i.radeon_get_ib_value.exit2161.i_crit_edge: ; preds = %if.end620.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_get_ib_value.exit2161.i

if.end.i2157.i:                                   ; preds = %if.end620.i
  call void @__sanitizer_cov_trace_pc() #8
  %273 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %ptr.i, align 8
  br label %radeon_get_ib_value.exit2161.i

radeon_get_ib_value.exit2161.i:                   ; preds = %if.end.i2157.i, %if.end620.i.radeon_get_ib_value.exit2161.i_crit_edge
  %.pn2586.i = phi ptr [ %274, %if.end.i2157.i ], [ %272, %if.end620.i.radeon_get_ib_value.exit2161.i_crit_edge ]
  %conv6252476.pn.in.in.in.i = getelementptr i32, ptr %.pn2586.i, i32 %add622.i
  %275 = ptrtoint ptr %conv6252476.pn.in.in.in.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %conv6252476.pn.in.in.i = load i32, ptr %conv6252476.pn.in.in.in.i, align 4
  %conv6252476.pn.in.i = and i32 %conv6252476.pn.in.in.i, -8
  %conv6252476.pn.i = zext i32 %conv6252476.pn.in.i to i64
  %add6262479.i = add i64 %268, %conv6252476.pn.i
  %add6272481.i = add i32 %85, 3
  %retval.0.in.i2159.i = getelementptr i32, ptr %.pn2586.i, i32 %add6272481.i
  %276 = ptrtoint ptr %retval.0.in.i2159.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %retval.0.i2160.i = load i32, ptr %retval.0.in.i2159.i, align 4
  %and629.i = and i32 %retval.0.i2160.i, 255
  %conv630.i = zext i32 %and629.i to i64
  %shl631.i = shl nuw nsw i64 %conv630.i, 32
  %add632.i = add i64 %add6262479.i, %shl631.i
  %277 = trunc i64 %add632.i to i32
  %conv634.i = and i32 %277, -8
  %arrayidx636.i = getelementptr i32, ptr %83, i32 %add622.i
  %278 = ptrtoint ptr %arrayidx636.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 %conv634.i, ptr %arrayidx636.i, align 4
  %shr637.i = lshr i64 %add632.i, 32
  %conv639.i = trunc i64 %shr637.i to i32
  %and640.i = and i32 %conv639.i, 255
  %arrayidx642.i = getelementptr i32, ptr %83, i32 %add6272481.i
  %279 = ptrtoint ptr %arrayidx642.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 %and640.i, ptr %arrayidx642.i, align 4
  br label %sw.epilog63

sw.bb647.i:                                       ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %67)
  %cmp650.not.i = icmp eq i32 %67, 4
  br i1 %cmp650.not.i, label %if.end653.i, label %if.then652.i

if.then652.i:                                     ; preds = %sw.bb647.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.150) #6
  br label %sw.epilog63.thread157

if.end653.i:                                      ; preds = %sw.bb647.i
  %call654.i = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call654.i)
  %tobool655.not.i = icmp eq i32 %call654.i, 0
  br i1 %tobool655.not.i, label %if.end657.i, label %if.then656.i

if.then656.i:                                     ; preds = %if.end653.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.150) #6
  br label %sw.epilog63.thread157

if.end657.i:                                      ; preds = %if.end653.i
  %280 = ptrtoint ptr %reloc.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %reloc.i, align 4
  %gpu_offset658.i = getelementptr inbounds %struct.radeon_bo_list, ptr %281, i32 0, i32 2
  %282 = ptrtoint ptr %gpu_offset658.i to i32
  call void @__asan_load8_noabort(i32 %282)
  %283 = load i64, ptr %gpu_offset658.i, align 8
  %add659.i = add i32 %85, 2
  %284 = ptrtoint ptr %chunk_ib.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %chunk_ib.i.i, align 4
  %kdata.i2163.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %285, i32 0, i32 1
  %286 = ptrtoint ptr %kdata.i2163.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %kdata.i2163.i, align 4
  %tobool.not.i2164.i = icmp eq ptr %287, null
  br i1 %tobool.not.i2164.i, label %if.end.i2175.i, label %if.end657.i.radeon_get_ib_value.exit2179.i_crit_edge

if.end657.i.radeon_get_ib_value.exit2179.i_crit_edge: ; preds = %if.end657.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_get_ib_value.exit2179.i

if.end.i2175.i:                                   ; preds = %if.end657.i
  call void @__sanitizer_cov_trace_pc() #8
  %288 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %ptr.i, align 8
  br label %radeon_get_ib_value.exit2179.i

radeon_get_ib_value.exit2179.i:                   ; preds = %if.end.i2175.i, %if.end657.i.radeon_get_ib_value.exit2179.i_crit_edge
  %.pn2585.i = phi ptr [ %289, %if.end.i2175.i ], [ %287, %if.end657.i.radeon_get_ib_value.exit2179.i_crit_edge ]
  %conv6622487.pn.in.in.in.i = getelementptr i32, ptr %.pn2585.i, i32 %add659.i
  %290 = ptrtoint ptr %conv6622487.pn.in.in.in.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %conv6622487.pn.in.in.i = load i32, ptr %conv6622487.pn.in.in.in.i, align 4
  %conv6622487.pn.in.i = and i32 %conv6622487.pn.in.in.i, -4
  %conv6622487.pn.i = zext i32 %conv6622487.pn.in.i to i64
  %add6632490.i = add i64 %283, %conv6622487.pn.i
  %add6642492.i = add i32 %85, 3
  %retval.0.in.i2177.i = getelementptr i32, ptr %.pn2585.i, i32 %add6642492.i
  %291 = ptrtoint ptr %retval.0.in.i2177.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %retval.0.i2178.i = load i32, ptr %retval.0.in.i2177.i, align 4
  %and666.i = and i32 %retval.0.i2178.i, 255
  %conv667.i = zext i32 %and666.i to i64
  %shl668.i = shl nuw nsw i64 %conv667.i, 32
  %add669.i = add i64 %add6632490.i, %shl668.i
  %292 = trunc i64 %add669.i to i32
  %conv671.i = and i32 %292, -4
  %arrayidx673.i = getelementptr i32, ptr %83, i32 %add659.i
  %293 = ptrtoint ptr %arrayidx673.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 %conv671.i, ptr %arrayidx673.i, align 4
  %arrayidx675.i = getelementptr i32, ptr %83, i32 %add6642492.i
  %294 = ptrtoint ptr %arrayidx675.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %arrayidx675.i, align 4
  %and676.i = and i32 %295, -256
  %shr677.i = lshr i64 %add669.i, 32
  %conv679.i = trunc i64 %shr677.i to i32
  %and680.i = and i32 %conv679.i, 255
  %or681.i = or i32 %and680.i, %and676.i
  store i32 %or681.i, ptr %arrayidx675.i, align 4
  br label %sw.epilog63

sw.bb686.i:                                       ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %67)
  %cmp689.not.i = icmp eq i32 %67, 3
  br i1 %cmp689.not.i, label %if.end692.i, label %if.then691.i

if.then691.i:                                     ; preds = %sw.bb686.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.151) #6
  br label %sw.epilog63.thread157

if.end692.i:                                      ; preds = %sw.bb686.i
  %call693.i = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call693.i)
  %tobool694.not.i = icmp eq i32 %call693.i, 0
  br i1 %tobool694.not.i, label %if.end696.i, label %if.then695.i

if.then695.i:                                     ; preds = %if.end692.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.151) #6
  br label %sw.epilog63.thread157

if.end696.i:                                      ; preds = %if.end692.i
  %296 = ptrtoint ptr %reloc.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %reloc.i, align 4
  %gpu_offset697.i = getelementptr inbounds %struct.radeon_bo_list, ptr %297, i32 0, i32 2
  %298 = ptrtoint ptr %gpu_offset697.i to i32
  call void @__asan_load8_noabort(i32 %298)
  %299 = load i64, ptr %gpu_offset697.i, align 8
  %add698.i = add i32 %85, 2
  %300 = ptrtoint ptr %chunk_ib.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %chunk_ib.i.i, align 4
  %kdata.i2181.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %301, i32 0, i32 1
  %302 = ptrtoint ptr %kdata.i2181.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %kdata.i2181.i, align 4
  %tobool.not.i2182.i = icmp eq ptr %303, null
  br i1 %tobool.not.i2182.i, label %if.end.i2193.i, label %if.end696.i.radeon_get_ib_value.exit2197.i_crit_edge

if.end696.i.radeon_get_ib_value.exit2197.i_crit_edge: ; preds = %if.end696.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_get_ib_value.exit2197.i

if.end.i2193.i:                                   ; preds = %if.end696.i
  call void @__sanitizer_cov_trace_pc() #8
  %304 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %ptr.i, align 8
  br label %radeon_get_ib_value.exit2197.i

radeon_get_ib_value.exit2197.i:                   ; preds = %if.end.i2193.i, %if.end696.i.radeon_get_ib_value.exit2197.i_crit_edge
  %.pn2584.i = phi ptr [ %305, %if.end.i2193.i ], [ %303, %if.end696.i.radeon_get_ib_value.exit2197.i_crit_edge ]
  %conv7012498.pn.in.in.in.i = getelementptr i32, ptr %.pn2584.i, i32 %add698.i
  %306 = ptrtoint ptr %conv7012498.pn.in.in.in.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %conv7012498.pn.in.in.i = load i32, ptr %conv7012498.pn.in.in.in.i, align 4
  %conv7012498.pn.in.i = and i32 %conv7012498.pn.in.in.i, -4
  %conv7012498.pn.i = zext i32 %conv7012498.pn.in.i to i64
  %add7022501.i = add i64 %299, %conv7012498.pn.i
  %add7032503.i = add i32 %85, 3
  %retval.0.in.i2195.i = getelementptr i32, ptr %.pn2584.i, i32 %add7032503.i
  %307 = ptrtoint ptr %retval.0.in.i2195.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %retval.0.i2196.i = load i32, ptr %retval.0.in.i2195.i, align 4
  %and705.i = and i32 %retval.0.i2196.i, 255
  %conv706.i = zext i32 %and705.i to i64
  %shl707.i = shl nuw nsw i64 %conv706.i, 32
  %add708.i = add i64 %add7022501.i, %shl707.i
  %308 = trunc i64 %add708.i to i32
  %conv710.i = and i32 %308, -4
  %arrayidx712.i = getelementptr i32, ptr %83, i32 %add698.i
  %309 = ptrtoint ptr %arrayidx712.i to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 %conv710.i, ptr %arrayidx712.i, align 4
  %arrayidx714.i = getelementptr i32, ptr %83, i32 %add7032503.i
  %310 = ptrtoint ptr %arrayidx714.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %arrayidx714.i, align 4
  %and715.i = and i32 %311, -256
  %shr716.i = lshr i64 %add708.i, 32
  %conv718.i = trunc i64 %shr716.i to i32
  %and719.i = and i32 %conv718.i, 255
  %or720.i = or i32 %and719.i, %and715.i
  store i32 %or720.i, ptr %arrayidx714.i, align 4
  br label %sw.epilog63

sw.bb725.i:                                       ; preds = %sw.bb57
  %shl726.i = shl i32 %retval.0.i.i, 2
  %mul.i = shl i32 %67, 2
  %add729.i = add i32 %mul.i, 32764
  %sub.i = add i32 %add729.i, %shl726.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 11263, i32 %shl726.i)
  %312 = icmp ugt i32 %shl726.i, 11263
  call void @__sanitizer_cov_trace_const_cmp4(i32 44031, i32 %sub.i)
  %cmp736.i = icmp ugt i32 %sub.i, 44031
  %or.cond1984.i = select i1 %312, i1 true, i1 %cmp736.i
  br i1 %or.cond1984.i, label %if.then738.i, label %if.end739.i

if.then738.i:                                     ; preds = %sw.bb725.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.152) #6
  br label %sw.epilog63.thread157

if.end739.i:                                      ; preds = %sw.bb725.i
  %add727.i = add nuw nsw i32 %shl726.i, 32768
  call void @__sanitizer_cov_trace_cmp4(i32 %add727.i, i32 %sub.i)
  %cmp740.not2609.i = icmp ugt i32 %add727.i, %sub.i
  br i1 %cmp740.not2609.i, label %if.end739.i.sw.epilog63_crit_edge, label %for.body.preheader.i

if.end739.i.sw.epilog63_crit_edge:                ; preds = %if.end739.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog63

for.body.preheader.i:                             ; preds = %if.end739.i
  %inc.i123 = add i32 %85, 2
  br label %for.body.i124

for.body.i124:                                    ; preds = %for.inc.i.for.body.i124_crit_edge, %for.body.preheader.i
  %reg.02612.i = phi i32 [ %add749.i, %for.inc.i.for.body.i124_crit_edge ], [ %add727.i, %for.body.preheader.i ]
  %idx.02610.i = phi i32 [ %inc750.i, %for.inc.i.for.body.i124_crit_edge ], [ %inc.i123, %for.body.preheader.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 262015, i32 %reg.02612.i)
  %cmp.i.i = icmp ugt i32 %reg.02612.i, 262015
  br i1 %cmp.i.i, label %for.body.i124.if.end744.i_crit_edge, label %evergreen_is_safe_reg.exit.i, !prof !630

for.body.i124.if.end744.i_crit_edge:              ; preds = %for.body.i124
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end744.i

evergreen_is_safe_reg.exit.i:                     ; preds = %for.body.i124
  %shr.i.i = lshr i32 %reg.02612.i, 7
  %313 = ptrtoint ptr %track1 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %track1, align 8
  %shr3.i.i = lshr exact i32 %reg.02612.i, 2
  %and.i.i = and i32 %shr3.i.i, 31
  %shl.i.i = shl nuw i32 1, %and.i.i
  %reg_safe_bm.i.i = getelementptr inbounds %struct.evergreen_cs_track, ptr %314, i32 0, i32 46
  %315 = ptrtoint ptr %reg_safe_bm.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %reg_safe_bm.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %316, i32 %shr.i.i
  %317 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %arrayidx.i.i, align 4
  %and4.i.i = and i32 %318, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool5.not.i.i = icmp eq i32 %and4.i.i, 0
  br i1 %tobool5.not.i.i, label %evergreen_is_safe_reg.exit.i.for.inc.i_crit_edge, label %evergreen_is_safe_reg.exit.i.if.end744.i_crit_edge

evergreen_is_safe_reg.exit.i.if.end744.i_crit_edge: ; preds = %evergreen_is_safe_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end744.i

evergreen_is_safe_reg.exit.i.for.inc.i_crit_edge: ; preds = %evergreen_is_safe_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end744.i:                                      ; preds = %evergreen_is_safe_reg.exit.i.if.end744.i_crit_edge, %for.body.i124.if.end744.i_crit_edge
  %call745.i = call fastcc i32 @evergreen_cs_handle_reg(ptr noundef %p, i32 noundef %reg.02612.i, i32 noundef %idx.02610.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call745.i)
  %tobool746.not.i = icmp eq i32 %call745.i, 0
  br i1 %tobool746.not.i, label %if.end744.i.for.inc.i_crit_edge, label %if.end744.i.sw.epilog63.thread157_crit_edge

if.end744.i.sw.epilog63.thread157_crit_edge:      ; preds = %if.end744.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog63.thread157

if.end744.i.for.inc.i_crit_edge:                  ; preds = %if.end744.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end744.i.for.inc.i_crit_edge, %evergreen_is_safe_reg.exit.i.for.inc.i_crit_edge
  %add749.i = add i32 %reg.02612.i, 4
  %inc750.i = add i32 %idx.02610.i, 1
  %cmp740.not.i = icmp ugt i32 %add749.i, %sub.i
  br i1 %cmp740.not.i, label %for.inc.i.sw.epilog63_crit_edge, label %for.inc.i.for.body.i124_crit_edge

for.inc.i.for.body.i124_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i124

for.inc.i.sw.epilog63_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog63

sw.bb751.i:                                       ; preds = %sw.bb57
  %shl752.i = shl i32 %retval.0.i.i, 2
  %mul755.i = shl i32 %67, 2
  %add756.i = add i32 %mul755.i, 163836
  %sub757.i = add i32 %add756.i, %shl752.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %shl752.i)
  %319 = icmp ugt i32 %shl752.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 167935, i32 %sub757.i)
  %cmp764.i = icmp ugt i32 %sub757.i, 167935
  %or.cond1986.i = select i1 %319, i1 true, i1 %cmp764.i
  br i1 %or.cond1986.i, label %if.then766.i, label %if.end767.i

if.then766.i:                                     ; preds = %sw.bb751.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.153) #6
  br label %sw.epilog63.thread157

if.end767.i:                                      ; preds = %sw.bb751.i
  %add753.i = add nuw nsw i32 %shl752.i, 163840
  call void @__sanitizer_cov_trace_cmp4(i32 %add753.i, i32 %sub757.i)
  %cmp770.not2601.i = icmp ugt i32 %add753.i, %sub757.i
  br i1 %cmp770.not2601.i, label %if.end767.i.sw.epilog63_crit_edge, label %for.body772.preheader.i

if.end767.i.sw.epilog63_crit_edge:                ; preds = %if.end767.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog63

for.body772.preheader.i:                          ; preds = %if.end767.i
  %inc768.i = add i32 %85, 2
  br label %for.body772.i

for.body772.i:                                    ; preds = %for.inc780.i.for.body772.i_crit_edge, %for.body772.preheader.i
  %reg.12604.i = phi i32 [ %add781.i, %for.inc780.i.for.body772.i_crit_edge ], [ %add753.i, %for.body772.preheader.i ]
  %idx.12602.i = phi i32 [ %inc782.i, %for.inc780.i.for.body772.i_crit_edge ], [ %inc768.i, %for.body772.preheader.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 262015, i32 %reg.12604.i)
  %cmp.i2200.i = icmp ugt i32 %reg.12604.i, 262015
  br i1 %cmp.i2200.i, label %for.body772.i.if.end775.i_crit_edge, label %evergreen_is_safe_reg.exit2212.i, !prof !630

for.body772.i.if.end775.i_crit_edge:              ; preds = %for.body772.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end775.i

evergreen_is_safe_reg.exit2212.i:                 ; preds = %for.body772.i
  %shr.i2201.i = lshr i32 %reg.12604.i, 7
  %320 = ptrtoint ptr %track1 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %track1, align 8
  %shr3.i2203.i = lshr exact i32 %reg.12604.i, 2
  %and.i2204.i = and i32 %shr3.i2203.i, 31
  %shl.i2205.i = shl nuw i32 1, %and.i2204.i
  %reg_safe_bm.i2206.i = getelementptr inbounds %struct.evergreen_cs_track, ptr %321, i32 0, i32 46
  %322 = ptrtoint ptr %reg_safe_bm.i2206.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %reg_safe_bm.i2206.i, align 4
  %arrayidx.i2207.i = getelementptr i32, ptr %323, i32 %shr.i2201.i
  %324 = ptrtoint ptr %arrayidx.i2207.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %arrayidx.i2207.i, align 4
  %and4.i2208.i = and i32 %325, %shl.i2205.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i2208.i)
  %tobool5.not.i2209.i = icmp eq i32 %and4.i2208.i, 0
  br i1 %tobool5.not.i2209.i, label %evergreen_is_safe_reg.exit2212.i.for.inc780.i_crit_edge, label %evergreen_is_safe_reg.exit2212.i.if.end775.i_crit_edge

evergreen_is_safe_reg.exit2212.i.if.end775.i_crit_edge: ; preds = %evergreen_is_safe_reg.exit2212.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end775.i

evergreen_is_safe_reg.exit2212.i.for.inc780.i_crit_edge: ; preds = %evergreen_is_safe_reg.exit2212.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc780.i

if.end775.i:                                      ; preds = %evergreen_is_safe_reg.exit2212.i.if.end775.i_crit_edge, %for.body772.i.if.end775.i_crit_edge
  %call776.i = call fastcc i32 @evergreen_cs_handle_reg(ptr noundef %p, i32 noundef %reg.12604.i, i32 noundef %idx.12602.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call776.i)
  %tobool777.not.i = icmp eq i32 %call776.i, 0
  br i1 %tobool777.not.i, label %if.end775.i.for.inc780.i_crit_edge, label %if.end775.i.sw.epilog63.thread157_crit_edge

if.end775.i.sw.epilog63.thread157_crit_edge:      ; preds = %if.end775.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog63.thread157

if.end775.i.for.inc780.i_crit_edge:               ; preds = %if.end775.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc780.i

for.inc780.i:                                     ; preds = %if.end775.i.for.inc780.i_crit_edge, %evergreen_is_safe_reg.exit2212.i.for.inc780.i_crit_edge
  %add781.i = add i32 %reg.12604.i, 4
  %inc782.i = add i32 %idx.12602.i, 1
  %cmp770.not.i = icmp ugt i32 %add781.i, %sub757.i
  br i1 %cmp770.not.i, label %for.inc780.i.sw.epilog63_crit_edge, label %for.inc780.i.for.body772.i_crit_edge

for.inc780.i.for.body772.i_crit_edge:             ; preds = %for.inc780.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body772.i

for.inc780.i.sw.epilog63_crit_edge:               ; preds = %for.inc780.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog63

sw.bb784.i:                                       ; preds = %sw.bb57
  %326 = and i32 %67, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %326)
  %tobool787.not.i = icmp eq i32 %326, 0
  br i1 %tobool787.not.i, label %if.end789.i, label %if.then788.i

if.then788.i:                                     ; preds = %sw.bb784.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.154) #6
  br label %sw.epilog63.thread157

if.end789.i:                                      ; preds = %sw.bb784.i
  %shl790.i = shl i32 %retval.0.i.i, 2
  %mul793.i = shl i32 %67, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %shl790.i)
  %327 = icmp ugt i32 %shl790.i, 32767
  %add794.i = add i32 %mul793.i, -32772
  %328 = add i32 %add794.i, %shl790.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -229376, i32 %328)
  %cmp802.i = icmp ult i32 %328, -229376
  %or.cond1988.i = select i1 %327, i1 true, i1 %cmp802.i
  br i1 %or.cond1988.i, label %if.then804.i, label %for.cond806.preheader.i

for.cond806.preheader.i:                          ; preds = %if.end789.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %67)
  %329 = icmp ult i32 %67, 8
  br i1 %329, label %for.cond806.preheader.i.sw.epilog63_crit_edge, label %for.body810.lr.ph.i

for.cond806.preheader.i.sw.epilog63_crit_edge:    ; preds = %for.cond806.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog63

for.body810.lr.ph.i:                              ; preds = %for.cond806.preheader.i
  %add813.i = add i32 %85, 2
  %nbanks.i = getelementptr inbounds %struct.evergreen_cs_track, ptr %81, i32 0, i32 1
  br label %for.body810.i

if.then804.i:                                     ; preds = %if.end789.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.154) #6
  br label %sw.epilog63.thread157

for.body810.i:                                    ; preds = %for.inc1007.i.for.body810.i_crit_edge, %for.body810.lr.ph.i
  %i.02599.i = phi i32 [ 0, %for.body810.lr.ph.i ], [ %inc1008.i, %for.inc1007.i.for.body810.i_crit_edge ]
  %mul814.i = shl i32 %i.02599.i, 3
  %add815.i = add i32 %add813.i, %mul814.i
  %add816.i = add i32 %add815.i, 7
  %330 = ptrtoint ptr %chunk_ib.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %chunk_ib.i.i, align 4
  %kdata.i2214.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %331, i32 0, i32 1
  %332 = ptrtoint ptr %kdata.i2214.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %kdata.i2214.i, align 4
  %tobool.not.i2215.i = icmp eq ptr %333, null
  br i1 %tobool.not.i2215.i, label %if.end.i2217.i, label %for.body810.i.radeon_get_ib_value.exit2221.i_crit_edge

for.body810.i.radeon_get_ib_value.exit2221.i_crit_edge: ; preds = %for.body810.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_get_ib_value.exit2221.i

if.end.i2217.i:                                   ; preds = %for.body810.i
  call void @__sanitizer_cov_trace_pc() #8
  %334 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %ptr.i, align 8
  br label %radeon_get_ib_value.exit2221.i

radeon_get_ib_value.exit2221.i:                   ; preds = %if.end.i2217.i, %for.body810.i.radeon_get_ib_value.exit2221.i_crit_edge
  %.pn.i2218.i = phi ptr [ %335, %if.end.i2217.i ], [ %333, %for.body810.i.radeon_get_ib_value.exit2221.i_crit_edge ]
  %retval.0.in.i2219.i = getelementptr i32, ptr %.pn.i2218.i, i32 %add816.i
  %336 = ptrtoint ptr %retval.0.in.i2219.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %retval.0.i2220.i = load i32, ptr %retval.0.in.i2219.i, align 4
  %shr818.i = lshr i32 %retval.0.i2220.i, 30
  %337 = zext i32 %shr818.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %337, ptr @__sancov_gen_cov_switch_values.383)
  switch i32 %shr818.i, label %for.body810.unreachabledefault.i [
    i32 2, label %sw.bb820.i
    i32 3, label %sw.bb925.i
    i32 0, label %radeon_get_ib_value.exit2221.i.sw.default.i_crit_edge
    i32 1, label %radeon_get_ib_value.exit2221.i.sw.default.i_crit_edge4363
  ]

radeon_get_ib_value.exit2221.i.sw.default.i_crit_edge4363: ; preds = %radeon_get_ib_value.exit2221.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default.i

radeon_get_ib_value.exit2221.i.sw.default.i_crit_edge: ; preds = %radeon_get_ib_value.exit2221.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default.i

sw.bb820.i:                                       ; preds = %radeon_get_ib_value.exit2221.i
  %call821.i = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call821.i)
  %tobool822.not.i = icmp eq i32 %call821.i, 0
  br i1 %tobool822.not.i, label %if.end824.i, label %if.then823.i

if.then823.i:                                     ; preds = %sw.bb820.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.155) #6
  br label %sw.epilog63.thread157

if.end824.i:                                      ; preds = %sw.bb820.i
  %338 = ptrtoint ptr %cs_flags.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %cs_flags.i, align 4
  %and825.i = and i32 %339, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and825.i)
  %tobool826.not.i = icmp eq i32 %and825.i, 0
  br i1 %tobool826.not.i, label %if.then827.i, label %if.end824.i.if.end868.i_crit_edge

if.end824.i.if.end868.i_crit_edge:                ; preds = %if.end824.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end868.i

if.then827.i:                                     ; preds = %if.end824.i
  %340 = ptrtoint ptr %reloc.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %reloc.i, align 4
  %tiling_flags.i = getelementptr inbounds %struct.radeon_bo_list, ptr %341, i32 0, i32 5
  %342 = ptrtoint ptr %tiling_flags.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %tiling_flags.i, align 8
  %and.i2222.i = and i32 %343, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2222.i)
  %tobool.not.i2223.i = icmp eq i32 %and.i2222.i, 0
  %and1.i.i = shl i32 %343, 28
  %and1.i.op.i = and i32 %and1.i.i, 536870912
  %shl829.i = select i1 %tobool.not.i2223.i, i32 %and1.i.op.i, i32 1073741824
  %add833.i = add i32 %add815.i, 1
  %arrayidx834.i = getelementptr i32, ptr %83, i32 %add833.i
  %344 = ptrtoint ptr %arrayidx834.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %arrayidx834.i, align 4
  %or835.i = or i32 %shl829.i, %345
  store i32 %or835.i, ptr %arrayidx834.i, align 4
  %346 = ptrtoint ptr %reloc.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %reloc.i, align 4
  %tiling_flags836.i = getelementptr inbounds %struct.radeon_bo_list, ptr %347, i32 0, i32 5
  %348 = ptrtoint ptr %tiling_flags836.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %tiling_flags836.i, align 8
  %and837.i = and i32 %349, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and837.i)
  %tobool838.not.i = icmp eq i32 %and837.i, 0
  br i1 %tobool838.not.i, label %if.then827.i.if.end868.i_crit_edge, label %if.then839.i

if.then827.i.if.end868.i_crit_edge:               ; preds = %if.then827.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end868.i

if.then839.i:                                     ; preds = %if.then827.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bankw.i) #6
  %350 = ptrtoint ptr %bankw.i to i32
  call void @__asan_store4_noabort(i32 %350)
  store i32 -1, ptr %bankw.i, align 4, !annotation !629
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bankh.i) #6
  %351 = ptrtoint ptr %bankh.i to i32
  call void @__asan_store4_noabort(i32 %351)
  store i32 -1, ptr %bankh.i, align 4, !annotation !629
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mtaspect.i) #6
  %352 = ptrtoint ptr %mtaspect.i to i32
  call void @__asan_store4_noabort(i32 %352)
  store i32 -1, ptr %mtaspect.i, align 4, !annotation !629
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tile_split.i) #6
  %353 = ptrtoint ptr %tile_split.i to i32
  call void @__asan_store4_noabort(i32 %353)
  store i32 -1, ptr %tile_split.i, align 4, !annotation !629
  call void @evergreen_tiling_fields(i32 noundef %349, ptr noundef nonnull %bankw.i, ptr noundef nonnull %bankh.i, ptr noundef nonnull %mtaspect.i, ptr noundef nonnull %tile_split.i) #6
  %354 = ptrtoint ptr %tile_split.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %tile_split.i, align 4
  %shl842.i = shl i32 %355, 29
  %add846.i = add i32 %add815.i, 6
  %arrayidx847.i = getelementptr i32, ptr %83, i32 %add846.i
  %356 = ptrtoint ptr %arrayidx847.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %arrayidx847.i, align 4
  %or848.i = or i32 %357, %shl842.i
  store i32 %or848.i, ptr %arrayidx847.i, align 4
  %358 = ptrtoint ptr %bankw.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %bankw.i, align 4
  %and849.i = shl i32 %359, 8
  %shl850.i = and i32 %and849.i, 768
  %360 = ptrtoint ptr %bankh.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %bankh.i, align 4
  %and851.i = shl i32 %361, 10
  %shl852.i = and i32 %and851.i, 3072
  %or853.i = or i32 %shl852.i, %shl850.i
  %362 = ptrtoint ptr %mtaspect.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %mtaspect.i, align 4
  %and854.i = shl i32 %363, 6
  %shl855.i = and i32 %and854.i, 192
  %or856.i = or i32 %or853.i, %shl855.i
  %364 = ptrtoint ptr %nbanks.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %nbanks.i, align 4
  %366 = add i32 %365, -2
  %367 = call i32 @llvm.fshl.i32(i32 %366, i32 %366, i32 31) #6
  %368 = zext i32 %367 to i64
  call void @__sanitizer_cov_trace_switch(i64 %368, ptr @__sancov_gen_cov_switch_values.384)
  switch i32 %367, label %sw.default.i.i [
    i32 0, label %if.then839.i.evergreen_cs_get_num_banks.exit.i_crit_edge
    i32 1, label %sw.bb1.i.i
    i32 7, label %sw.bb3.i.i
  ]

if.then839.i.evergreen_cs_get_num_banks.exit.i_crit_edge: ; preds = %if.then839.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %evergreen_cs_get_num_banks.exit.i

sw.bb1.i.i:                                       ; preds = %if.then839.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %evergreen_cs_get_num_banks.exit.i

sw.default.i.i:                                   ; preds = %if.then839.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %evergreen_cs_get_num_banks.exit.i

sw.bb3.i.i:                                       ; preds = %if.then839.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %evergreen_cs_get_num_banks.exit.i

evergreen_cs_get_num_banks.exit.i:                ; preds = %sw.bb3.i.i, %sw.default.i.i, %sw.bb1.i.i, %if.then839.i.evergreen_cs_get_num_banks.exit.i_crit_edge
  %retval.0.i2225.i = phi i32 [ 131072, %sw.default.i.i ], [ 196608, %sw.bb3.i.i ], [ 65536, %sw.bb1.i.i ], [ %367, %if.then839.i.evergreen_cs_get_num_banks.exit.i_crit_edge ]
  %or860.i = or i32 %or856.i, %retval.0.i2225.i
  %arrayidx865.i = getelementptr i32, ptr %83, i32 %add816.i
  %369 = ptrtoint ptr %arrayidx865.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %arrayidx865.i, align 4
  %or866.i = or i32 %or860.i, %370
  store i32 %or866.i, ptr %arrayidx865.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tile_split.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mtaspect.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bankh.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bankw.i) #6
  br label %if.end868.i

if.end868.i:                                      ; preds = %evergreen_cs_get_num_banks.exit.i, %if.then827.i.if.end868.i_crit_edge, %if.end824.i.if.end868.i_crit_edge
  %371 = ptrtoint ptr %reloc.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %reloc.i, align 4
  %373 = ptrtoint ptr %372 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %372, align 8
  %gpu_offset870.i = getelementptr inbounds %struct.radeon_bo_list, ptr %372, i32 0, i32 2
  %375 = ptrtoint ptr %gpu_offset870.i to i32
  call void @__asan_load8_noabort(i32 %375)
  %376 = load i64, ptr %gpu_offset870.i, align 8
  %shr871.i = lshr i64 %376, 8
  %conv873.i = trunc i64 %shr871.i to i32
  %arrayidx878.i = getelementptr i32, ptr %83, i32 %add815.i
  %377 = ptrtoint ptr %arrayidx878.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %arrayidx878.i, align 4
  %add883.i = add i32 %add815.i, 3
  %arrayidx884.i = getelementptr i32, ptr %83, i32 %add883.i
  %379 = ptrtoint ptr %arrayidx884.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %arrayidx884.i, align 4
  %381 = and i32 %378, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %381)
  %switch.i = icmp eq i32 %381, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %380)
  %tobool891.not.i = icmp eq i32 %380, 0
  %or.cond2004.i = select i1 %switch.i, i1 %tobool891.not.i, i1 false
  br i1 %or.cond2004.i, label %land.lhs.true892.i, label %if.end868.i.if.else895.i_crit_edge

if.end868.i.if.else895.i_crit_edge:               ; preds = %if.end868.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else895.i

land.lhs.true892.i:                               ; preds = %if.end868.i
  %call893.i = call zeroext i1 @radeon_cs_packet_next_is_pkt3_nop(ptr noundef %p) #6
  br i1 %call893.i, label %land.lhs.true892.i.if.else895.i_crit_edge, label %land.lhs.true892.i.if.end905.i_crit_edge

land.lhs.true892.i.if.end905.i_crit_edge:         ; preds = %land.lhs.true892.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end905.i

land.lhs.true892.i.if.else895.i_crit_edge:        ; preds = %land.lhs.true892.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else895.i

if.else895.i:                                     ; preds = %land.lhs.true892.i.if.else895.i_crit_edge, %if.end868.i.if.else895.i_crit_edge
  %call896.i = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call896.i)
  %tobool897.not.i = icmp eq i32 %call896.i, 0
  br i1 %tobool897.not.i, label %if.end899.i, label %if.then898.i

if.then898.i:                                     ; preds = %if.else895.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.155) #6
  br label %sw.epilog63.thread157

if.end899.i:                                      ; preds = %if.else895.i
  call void @__sanitizer_cov_trace_pc() #8
  %382 = ptrtoint ptr %reloc.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %reloc.i, align 4
  %gpu_offset900.i = getelementptr inbounds %struct.radeon_bo_list, ptr %383, i32 0, i32 2
  %384 = ptrtoint ptr %gpu_offset900.i to i32
  call void @__asan_load8_noabort(i32 %384)
  %385 = load i64, ptr %gpu_offset900.i, align 8
  %shr901.i = lshr i64 %385, 8
  %conv903.i = trunc i64 %shr901.i to i32
  %386 = ptrtoint ptr %383 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %383, align 8
  br label %if.end905.i

if.end905.i:                                      ; preds = %if.end899.i, %land.lhs.true892.i.if.end905.i_crit_edge
  %mipmap.0.i = phi ptr [ %387, %if.end899.i ], [ null, %land.lhs.true892.i.if.end905.i_crit_edge ]
  %moffset.0.i = phi i32 [ %conv903.i, %if.end899.i ], [ 0, %land.lhs.true892.i.if.end905.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %surf.i) #6
  %388 = call ptr @memset(ptr %surf.i, i32 255, i32 60)
  %389 = ptrtoint ptr %chunk_ib.i.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %chunk_ib.i.i, align 4
  %kdata.i.i126 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %390, i32 0, i32 1
  %391 = ptrtoint ptr %kdata.i.i126 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %kdata.i.i126, align 4
  %tobool.not.i.i127 = icmp eq ptr %392, null
  br i1 %tobool.not.i.i127, label %if.end.i404.i, label %if.end905.i.radeon_get_ib_value.exit408.i_crit_edge

if.end905.i.radeon_get_ib_value.exit408.i_crit_edge: ; preds = %if.end905.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_get_ib_value.exit408.i

if.end.i404.i:                                    ; preds = %if.end905.i
  call void @__sanitizer_cov_trace_pc() #8
  %393 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %ptr.i, align 8
  br label %radeon_get_ib_value.exit408.i

radeon_get_ib_value.exit408.i:                    ; preds = %if.end.i404.i, %if.end905.i.radeon_get_ib_value.exit408.i_crit_edge
  %.sink567.i = phi ptr [ %394, %if.end.i404.i ], [ %392, %if.end905.i.radeon_get_ib_value.exit408.i_crit_edge ]
  %add1.i = add i32 %add815.i, 1
  %retval.0.in.i352.i = getelementptr i32, ptr %.sink567.i, i32 %add1.i
  %add4.i128 = add i32 %add815.i, 2
  %retval.0.in.i361.i = getelementptr i32, ptr %.sink567.i, i32 %add4.i128
  %retval.0.in.i370.i = getelementptr i32, ptr %.sink567.i, i32 %add883.i
  %add10.i = add i32 %add815.i, 4
  %retval.0.in.i379.i = getelementptr i32, ptr %.sink567.i, i32 %add10.i
  %add13.i = add i32 %add815.i, 5
  %retval.0.in.i388.i = getelementptr i32, ptr %.sink567.i, i32 %add13.i
  %add16.i129 = add i32 %add815.i, 6
  %retval.0.in.i397.i = getelementptr i32, ptr %.sink567.i, i32 %add16.i129
  %395 = ptrtoint ptr %retval.0.in.i388.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %retval.0.i389506521.i = load i32, ptr %retval.0.in.i388.i, align 4
  %396 = ptrtoint ptr %retval.0.in.i370.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %retval.0.i371461474504523.i = load i32, ptr %retval.0.in.i370.i, align 4
  %397 = ptrtoint ptr %retval.0.in.i352.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %retval.0.i353428439459476502525.i = load i32, ptr %retval.0.in.i352.i, align 4
  %retval.0.i416426441457478500527.in.i = getelementptr i32, ptr %.sink567.i, i32 %add815.i
  %398 = ptrtoint ptr %retval.0.i416426441457478500527.in.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %retval.0.i416426441457478500527.i = load i32, ptr %retval.0.i416426441457478500527.in.i, align 4
  %399 = ptrtoint ptr %retval.0.in.i361.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %retval.0.i362443455480498529.i = load i32, ptr %retval.0.in.i361.i, align 4
  %400 = ptrtoint ptr %retval.0.in.i379.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %retval.0.i380482496531.i = load i32, ptr %retval.0.in.i379.i, align 4
  %401 = ptrtoint ptr %retval.0.in.i397.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %retval.0.i398533.i = load i32, ptr %retval.0.in.i397.i, align 4
  %retval.0.in.i406.i = getelementptr i32, ptr %.sink567.i, i32 %add816.i
  %402 = ptrtoint ptr %retval.0.in.i406.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %retval.0.i407.i = load i32, ptr %retval.0.in.i406.i, align 4
  %and.i130 = and i32 %retval.0.i416426441457478500527.i, 7
  %and25.i = and i32 %retval.0.i389506521.i, 15
  %shr27.i = lshr i32 %retval.0.i389506521.i, 17
  %and28.i = and i32 %shr27.i, 8191
  %add29.i = add nuw nsw i32 %and28.i, 1
  %shr31.i = lshr i32 %retval.0.i416426441457478500527.i, 18
  %add33.i = add nuw nsw i32 %shr31.i, 1
  %and36.i = and i32 %retval.0.i353428439459476502525.i, 16383
  %add37.i = add nuw nsw i32 %and36.i, 1
  %and44.i = and i32 %retval.0.i407.i, 63
  %403 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %403)
  store i32 %and44.i, ptr %format.i, align 4
  %404 = lshr i32 %retval.0.i416426441457478500527.i, 3
  %add48.i = and i32 %404, 32760
  %mul.i131 = add nuw nsw i32 %add48.i, 8
  %call51.i = call i32 @r600_fmt_get_nblocksx(i32 noundef %and44.i, i32 noundef %mul.i131) #6
  %405 = ptrtoint ptr %surf.i to i32
  call void @__asan_store4_noabort(i32 %405)
  store i32 %call51.i, ptr %surf.i, align 4
  %call54.i = call i32 @r600_fmt_get_nblocksy(i32 noundef %and44.i, i32 noundef %add37.i) #6
  %406 = ptrtoint ptr %nby.i to i32
  call void @__asan_store4_noabort(i32 %406)
  store i32 %call54.i, ptr %nby.i, align 4
  %shr56.i = lshr i32 %retval.0.i353428439459476502525.i, 28
  %407 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %407)
  store i32 %shr56.i, ptr %mode.i, align 4
  %shr59.i = lshr i32 %retval.0.i398533.i, 29
  %408 = ptrtoint ptr %tsplit.i to i32
  call void @__asan_store4_noabort(i32 %408)
  store i32 %shr59.i, ptr %tsplit.i, align 4
  %shr62.i = lshr i32 %retval.0.i407.i, 16
  %and63.i = and i32 %shr62.i, 3
  %409 = ptrtoint ptr %nbanks.i132 to i32
  call void @__asan_store4_noabort(i32 %409)
  store i32 %and63.i, ptr %nbanks.i132, align 4
  %shr65.i = lshr i32 %retval.0.i407.i, 8
  %and66.i = and i32 %shr65.i, 3
  %410 = ptrtoint ptr %bankw.i133 to i32
  call void @__asan_store4_noabort(i32 %410)
  store i32 %and66.i, ptr %bankw.i133, align 4
  %shr68.i = lshr i32 %retval.0.i407.i, 10
  %and69.i = and i32 %shr68.i, 3
  %411 = ptrtoint ptr %bankh.i134 to i32
  call void @__asan_store4_noabort(i32 %411)
  store i32 %and69.i, ptr %bankh.i134, align 4
  %shr71.i = lshr i32 %retval.0.i407.i, 6
  %and72.i = and i32 %shr71.i, 3
  %412 = ptrtoint ptr %mtilea.i to i32
  call void @__asan_store4_noabort(i32 %412)
  store i32 %and72.i, ptr %mtilea.i, align 4
  %413 = ptrtoint ptr %nsamples.i to i32
  call void @__asan_store4_noabort(i32 %413)
  store i32 1, ptr %nsamples.i, align 4
  %shl.i135 = shl i32 %retval.0.i362443455480498529.i, 8
  %shl75.i = shl i32 %retval.0.i371461474504523.i, 8
  %414 = ptrtoint ptr %family.i136 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %family.i136, align 4
  %call77.i = call zeroext i1 @r600_fmt_is_valid_texture(i32 noundef %and44.i, i32 noundef %415) #6
  br i1 %call77.i, label %if.end.i138, label %do.end.i137

do.end.i137:                                      ; preds = %radeon_get_ib_value.exit408.i
  call void @__sanitizer_cov_trace_pc() #8
  %416 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %p, align 8
  %418 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %format.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %417, ptr noundef nonnull @.str.343, ptr noundef nonnull @.str.344, i32 noundef 793, i32 noundef %419) #10
  br label %evergreen_cs_track_validate_texture.exit.thread

if.end.i138:                                      ; preds = %radeon_get_ib_value.exit408.i
  %shr39.i = lshr i32 %retval.0.i353428439459476502525.i, 14
  %and40.i = and i32 %shr39.i, 8191
  %add41.i = add nuw nsw i32 %and40.i, 1
  %420 = zext i32 %and.i130 to i64
  call void @__sanitizer_cov_trace_switch(i64 %420, ptr @__sancov_gen_cov_switch_values.385)
  switch i32 %and.i130, label %if.end.unreachabledefault.i [
    i32 0, label %if.end.i138.sw.bb.i139_crit_edge
    i32 1, label %if.end.i138.sw.bb.i139_crit_edge4364
    i32 3, label %if.end.i138.sw.bb.i139_crit_edge4365
    i32 4, label %if.end.i138.sw.bb.i139_crit_edge4366
    i32 5, label %if.end.i138.sw.bb.i139_crit_edge4367
    i32 6, label %if.end.i138.sw.bb79.i_crit_edge
    i32 7, label %if.end.i138.sw.bb79.i_crit_edge4368
    i32 2, label %if.end.i138.sw.epilog.i_crit_edge
  ]

if.end.i138.sw.epilog.i_crit_edge:                ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

if.end.i138.sw.bb79.i_crit_edge4368:              ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb79.i

if.end.i138.sw.bb79.i_crit_edge:                  ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb79.i

if.end.i138.sw.bb.i139_crit_edge4367:             ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i139

if.end.i138.sw.bb.i139_crit_edge4366:             ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i139

if.end.i138.sw.bb.i139_crit_edge4365:             ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i139

if.end.i138.sw.bb.i139_crit_edge4364:             ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i139

if.end.i138.sw.bb.i139_crit_edge:                 ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i139

sw.bb.i139:                                       ; preds = %if.end.i138.sw.bb.i139_crit_edge, %if.end.i138.sw.bb.i139_crit_edge4364, %if.end.i138.sw.bb.i139_crit_edge4365, %if.end.i138.sw.bb.i139_crit_edge4366, %if.end.i138.sw.bb.i139_crit_edge4367
  br label %sw.epilog.i

sw.bb79.i:                                        ; preds = %if.end.i138.sw.bb79.i_crit_edge, %if.end.i138.sw.bb79.i_crit_edge4368
  %shl80.i = shl nuw nsw i32 1, %and25.i
  %421 = ptrtoint ptr %nsamples.i to i32
  call void @__asan_store4_noabort(i32 %421)
  store i32 %shl80.i, ptr %nsamples.i, align 4
  br label %sw.epilog.i

if.end.unreachabledefault.i:                      ; preds = %if.end.i138
  unreachable

sw.epilog.i:                                      ; preds = %sw.bb79.i, %sw.bb.i139, %if.end.i138.sw.epilog.i_crit_edge
  %llevel.0.i = phi i32 [ %and25.i, %if.end.i138.sw.epilog.i_crit_edge ], [ 0, %sw.bb79.i ], [ %and25.i, %sw.bb.i139 ]
  %depth.0.i = phi i32 [ %add41.i, %if.end.i138.sw.epilog.i_crit_edge ], [ 1, %sw.bb79.i ], [ 1, %sw.bb.i139 ]
  %call86.i = call fastcc i32 @evergreen_surface_value_conv_check(ptr noundef %p, ptr noundef nonnull %surf.i, ptr noundef nonnull @.str.348) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86.i)
  %tobool.not.i140 = icmp eq i32 %call86.i, 0
  br i1 %tobool.not.i140, label %if.end88.i, label %sw.epilog.i.evergreen_cs_track_validate_texture.exit.thread_crit_edge

sw.epilog.i.evergreen_cs_track_validate_texture.exit.thread_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %evergreen_cs_track_validate_texture.exit.thread

if.end88.i:                                       ; preds = %sw.epilog.i
  %call89.i = call fastcc i32 @evergreen_surface_check(ptr noundef %p, ptr noundef nonnull %surf.i, ptr noundef null) #6
  %422 = ptrtoint ptr %nby.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %nby.i, align 4
  %424 = ptrtoint ptr %halign.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %halign.i, align 4
  %sub.i141 = add i32 %423, -1
  %add91.i = add i32 %sub.i141, %425
  %neg.i = sub i32 0, %425
  %and94.i = and i32 %add91.i, %neg.i
  store i32 %and94.i, ptr %nby.i, align 4
  %call96.i = call fastcc i32 @evergreen_surface_check(ptr noundef %p, ptr noundef nonnull %surf.i, ptr noundef nonnull @.str.348) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96.i)
  %tobool97.not.i = icmp eq i32 %call96.i, 0
  br i1 %tobool97.not.i, label %if.end109.i, label %do.end101.i

do.end101.i:                                      ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #8
  %426 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %427, ptr noundef nonnull @.str.350, ptr noundef nonnull @.str.344, i32 noundef 831, i32 noundef %retval.0.i416426441457478500527.i, i32 noundef %retval.0.i353428439459476502525.i, i32 noundef %retval.0.i380482496531.i, i32 noundef %retval.0.i389506521.i, i32 noundef %retval.0.i398533.i, i32 noundef %retval.0.i407.i) #10
  br label %evergreen_cs_track_validate_texture.exit.thread

if.end109.i:                                      ; preds = %if.end88.i
  %428 = ptrtoint ptr %base_align.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load i32, ptr %base_align.i, align 4
  %sub110.i = add i32 %429, -1
  %and111.i = and i32 %sub110.i, %shl.i135
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111.i)
  %tobool112.not.i = icmp eq i32 %and111.i, 0
  br i1 %tobool112.not.i, label %if.end119.i, label %do.end116.i

do.end116.i:                                      ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #8
  %430 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %431, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.344, i32 noundef 838, i32 noundef %shl.i135, i32 noundef %429) #10
  br label %evergreen_cs_track_validate_texture.exit.thread

if.end119.i:                                      ; preds = %if.end109.i
  %432 = ptrtoint ptr %nsamples.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %nsamples.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %433)
  %cmp.i = icmp ugt i32 %433, 1
  %and123.i = and i32 %sub110.i, %shl75.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123.i)
  %tobool124.not.i = icmp eq i32 %and123.i, 0
  %or.cond.i142 = select i1 %cmp.i, i1 true, i1 %tobool124.not.i
  br i1 %or.cond.i142, label %if.end131.i, label %do.end128.i

do.end128.i:                                      ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #8
  %434 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %435, ptr noundef nonnull @.str.356, ptr noundef nonnull @.str.344, i32 noundef 843, i32 noundef %shl75.i, i32 noundef %429) #10
  br label %evergreen_cs_track_validate_texture.exit.thread

if.end131.i:                                      ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i130)
  %cmp132.i = icmp eq i32 %and.i130, 2
  %436 = ptrtoint ptr %layer_size.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %layer_size.i, align 4
  %depth.0.add29.i = select i1 %cmp132.i, i32 %depth.0.i, i32 %add29.i
  %mul137.i = mul i32 %437, %depth.0.add29.i
  %toffset.0.i = add i32 %mul137.i, %shl.i135
  %size.i.i143 = getelementptr inbounds %struct.radeon_bo, ptr %374, i32 0, i32 4, i32 0, i32 5
  %438 = ptrtoint ptr %size.i.i143 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %size.i.i143, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %toffset.0.i, i32 %439)
  %cmp141.i = icmp ugt i32 %toffset.0.i, %439
  br i1 %cmp141.i, label %do.end145.i, label %if.end153.i

do.end145.i:                                      ; preds = %if.end131.i
  call void @__sanitizer_cov_trace_pc() #8
  %440 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %p, align 8
  %442 = ptrtoint ptr %surf.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load i32, ptr %surf.i, align 4
  %444 = ptrtoint ptr %nby.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %nby.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %441, ptr noundef nonnull @.str.359, ptr noundef nonnull @.str.344, i32 noundef 857, i32 noundef %437, i32 noundef %shl.i135, i32 noundef %add29.i, i32 noundef %depth.0.i, i32 noundef %439, i32 noundef %443, i32 noundef %445) #10
  br label %evergreen_cs_track_validate_texture.exit.thread

if.end153.i:                                      ; preds = %if.end131.i
  %tobool154.not.i = icmp eq ptr %mipmap.0.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %llevel.0.i)
  %tobool156.not.i = icmp eq i32 %llevel.0.i, 0
  br i1 %tobool154.not.i, label %if.then155.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end153.i
  br i1 %tobool156.not.i, label %for.cond.preheader.i.if.end912.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end912.i_crit_edge:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end912.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %size.i410.i = getelementptr inbounds %struct.radeon_bo, ptr %mipmap.0.i, i32 0, i32 4, i32 0, i32 5
  br label %for.body.i144

if.then155.i:                                     ; preds = %if.end153.i
  br i1 %tobool156.not.i, label %if.then155.i.if.end912.i_crit_edge, label %do.end160.i

if.then155.i.if.end912.i_crit_edge:               ; preds = %if.then155.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end912.i

do.end160.i:                                      ; preds = %if.then155.i
  call void @__sanitizer_cov_trace_pc() #8
  %446 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %447, ptr noundef nonnull @.str.362, ptr noundef nonnull @.str.344, i32 noundef 864) #10
  br label %evergreen_cs_track_validate_texture.exit.thread

for.body.i144:                                    ; preds = %for.inc.i146.for.body.i144_crit_edge, %for.body.lr.ph.i
  %i.0547.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %inc.i145, %for.inc.i146.for.body.i144_crit_edge ]
  %moffset.0546.i = phi i32 [ %shl75.i, %for.body.lr.ph.i ], [ %moffset.1.i, %for.inc.i146.for.body.i144_crit_edge ]
  %call165.i = call i32 @r600_mip_minify(i32 noundef %add33.i, i32 noundef %i.0547.i) #6
  %call166.i = call i32 @r600_mip_minify(i32 noundef %add37.i, i32 noundef %i.0547.i) #6
  %call167.i = call i32 @r600_mip_minify(i32 noundef %depth.0.i, i32 noundef %i.0547.i) #6
  %448 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %format.i, align 4
  %call169.i = call i32 @r600_fmt_get_nblocksx(i32 noundef %449, i32 noundef %call165.i) #6
  %450 = ptrtoint ptr %surf.i to i32
  call void @__asan_store4_noabort(i32 %450)
  store i32 %call169.i, ptr %surf.i, align 4
  %451 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load i32, ptr %format.i, align 4
  %call172.i = call i32 @r600_fmt_get_nblocksy(i32 noundef %452, i32 noundef %call166.i) #6
  %453 = ptrtoint ptr %nby.i to i32
  call void @__asan_store4_noabort(i32 %453)
  store i32 %call172.i, ptr %nby.i, align 4
  %454 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %mode.i, align 4
  %456 = zext i32 %455 to i64
  call void @__sanitizer_cov_trace_switch(i64 %456, ptr @__sancov_gen_cov_switch_values.386)
  switch i32 %455, label %do.end189.i [
    i32 4, label %sw.bb175.i
    i32 0, label %for.body.i144.sw.epilog192.i_crit_edge
    i32 1, label %for.body.i144.sw.epilog192.i_crit_edge4369
    i32 2, label %for.body.i144.sw.epilog192.i_crit_edge4370
  ]

for.body.i144.sw.epilog192.i_crit_edge4370:       ; preds = %for.body.i144
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog192.i

for.body.i144.sw.epilog192.i_crit_edge4369:       ; preds = %for.body.i144
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog192.i

for.body.i144.sw.epilog192.i_crit_edge:           ; preds = %for.body.i144
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog192.i

sw.bb175.i:                                       ; preds = %for.body.i144
  %457 = ptrtoint ptr %surf.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load i32, ptr %surf.i, align 4
  %459 = ptrtoint ptr %palign.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load i32, ptr %palign.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %458, i32 %460)
  %cmp177.i = icmp ult i32 %458, %460
  br i1 %cmp177.i, label %sw.bb175.i.if.then181.i_crit_edge, label %lor.lhs.false.i

sw.bb175.i.if.then181.i_crit_edge:                ; preds = %sw.bb175.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then181.i

lor.lhs.false.i:                                  ; preds = %sw.bb175.i
  %461 = ptrtoint ptr %halign.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load i32, ptr %halign.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call172.i, i32 %462)
  %cmp180.i = icmp ult i32 %call172.i, %462
  br i1 %cmp180.i, label %lor.lhs.false.i.if.then181.i_crit_edge, label %lor.lhs.false.i.if.end183.i_crit_edge

lor.lhs.false.i.if.end183.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end183.i

lor.lhs.false.i.if.then181.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then181.i

if.then181.i:                                     ; preds = %lor.lhs.false.i.if.then181.i_crit_edge, %sw.bb175.i.if.then181.i_crit_edge
  %463 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %463)
  store i32 2, ptr %mode.i, align 4
  br label %if.end183.i

if.end183.i:                                      ; preds = %if.then181.i, %lor.lhs.false.i.if.end183.i_crit_edge
  %call184.i = call fastcc i32 @evergreen_surface_check(ptr noundef %p, ptr noundef nonnull %surf.i, ptr noundef null) #6
  br label %sw.epilog192.i

do.end189.i:                                      ; preds = %for.body.i144
  call void @__sanitizer_cov_trace_pc() #8
  %464 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %465, ptr noundef nonnull @.str.365, ptr noundef nonnull @.str.344, i32 noundef 895, i32 noundef %455) #10
  br label %evergreen_cs_track_validate_texture.exit.thread

sw.epilog192.i:                                   ; preds = %if.end183.i, %for.body.i144.sw.epilog192.i_crit_edge, %for.body.i144.sw.epilog192.i_crit_edge4369, %for.body.i144.sw.epilog192.i_crit_edge4370
  %466 = ptrtoint ptr %surf.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load i32, ptr %surf.i, align 4
  %468 = ptrtoint ptr %palign.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load i32, ptr %palign.i, align 4
  %sub195.i = add i32 %467, -1
  %add196.i = add i32 %sub195.i, %469
  %neg199.i = sub i32 0, %469
  %and200.i = and i32 %add196.i, %neg199.i
  store i32 %and200.i, ptr %surf.i, align 4
  %470 = ptrtoint ptr %nby.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load i32, ptr %nby.i, align 4
  %472 = ptrtoint ptr %halign.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load i32, ptr %halign.i, align 4
  %sub204.i = add i32 %471, -1
  %add205.i = add i32 %sub204.i, %473
  %neg208.i = sub i32 0, %473
  %and209.i = and i32 %add205.i, %neg208.i
  store i32 %and209.i, ptr %nby.i, align 4
  %call211.i = call fastcc i32 @evergreen_surface_check(ptr noundef %p, ptr noundef nonnull %surf.i, ptr noundef nonnull @.str.367) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call211.i)
  %tobool212.not.i = icmp eq i32 %call211.i, 0
  br i1 %tobool212.not.i, label %if.end214.i, label %sw.epilog192.i.evergreen_cs_track_validate_texture.exit.thread_crit_edge

sw.epilog192.i.evergreen_cs_track_validate_texture.exit.thread_crit_edge: ; preds = %sw.epilog192.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %evergreen_cs_track_validate_texture.exit.thread

if.end214.i:                                      ; preds = %sw.epilog192.i
  %474 = ptrtoint ptr %layer_size.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load i32, ptr %layer_size.i, align 4
  %call167.add29.i = select i1 %cmp132.i, i32 %call167.i, i32 %add29.i
  %mul222.i = mul i32 %475, %call167.add29.i
  %moffset.1.i = add i32 %mul222.i, %moffset.0546.i
  %476 = ptrtoint ptr %size.i410.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load i32, ptr %size.i410.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %moffset.1.i, i32 %477)
  %cmp226.i = icmp ugt i32 %moffset.1.i, %477
  br i1 %cmp226.i, label %do.end230.i, label %for.inc.i146

do.end230.i:                                      ; preds = %if.end214.i
  call void @__sanitizer_cov_trace_pc() #8
  %478 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %479, ptr noundef nonnull @.str.369, ptr noundef nonnull @.str.344, i32 noundef 918, i32 noundef %i.0547.i, i32 noundef %475, i32 noundef %shl75.i, i32 noundef %moffset.1.i, i32 noundef %add29.i, i32 noundef %call167.i, i32 noundef %477, i32 noundef %add33.i, i32 noundef %add37.i, i32 noundef %depth.0.i) #10
  %480 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %p, align 8
  %482 = ptrtoint ptr %surf.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load i32, ptr %surf.i, align 4
  %484 = ptrtoint ptr %nby.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load i32, ptr %nby.i, align 4
  %486 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load i32, ptr %mode.i, align 4
  %bpe.i = getelementptr inbounds %struct.eg_surface, ptr %surf.i, i32 0, i32 10
  %488 = ptrtoint ptr %bpe.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load i32, ptr %bpe.i, align 4
  %490 = ptrtoint ptr %nsamples.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load i32, ptr %nsamples.i, align 4
  %492 = ptrtoint ptr %bankw.i133 to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load i32, ptr %bankw.i133, align 4
  %494 = ptrtoint ptr %bankh.i134 to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load i32, ptr %bankh.i134, align 4
  %496 = ptrtoint ptr %tsplit.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load i32, ptr %tsplit.i, align 4
  %498 = ptrtoint ptr %mtilea.i to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load i32, ptr %mtilea.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %481, ptr noundef nonnull @.str.210, ptr noundef nonnull @.str.344, i32 noundef 923, i32 noundef %483, i32 noundef %485, i32 noundef %487, i32 noundef %489, i32 noundef %491, i32 noundef %493, i32 noundef %495, i32 noundef %497, i32 noundef %499) #10
  br label %evergreen_cs_track_validate_texture.exit.thread

for.inc.i146:                                     ; preds = %if.end214.i
  %inc.i145 = add nuw nsw i32 %i.0547.i, 1
  %exitcond.i = icmp eq i32 %i.0547.i, %llevel.0.i
  br i1 %exitcond.i, label %for.inc.i146.if.end912.i_crit_edge, label %for.inc.i146.for.body.i144_crit_edge

for.inc.i146.for.body.i144_crit_edge:             ; preds = %for.inc.i146
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i144

for.inc.i146.if.end912.i_crit_edge:               ; preds = %for.inc.i146
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end912.i

evergreen_cs_track_validate_texture.exit.thread:  ; preds = %do.end230.i, %sw.epilog192.i.evergreen_cs_track_validate_texture.exit.thread_crit_edge, %do.end189.i, %do.end160.i, %do.end145.i, %do.end128.i, %do.end116.i, %do.end101.i, %sw.epilog.i.evergreen_cs_track_validate_texture.exit.thread_crit_edge, %do.end.i137
  %retval.2.i.ph = phi i32 [ -22, %do.end189.i ], [ -22, %do.end230.i ], [ -22, %do.end.i137 ], [ -22, %do.end160.i ], [ -22, %do.end145.i ], [ -22, %do.end128.i ], [ -22, %do.end116.i ], [ %call96.i, %do.end101.i ], [ %call211.i, %sw.epilog192.i.evergreen_cs_track_validate_texture.exit.thread_crit_edge ], [ %call86.i, %sw.epilog.i.evergreen_cs_track_validate_texture.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %surf.i) #6
  br label %sw.epilog63.thread157

if.end912.i:                                      ; preds = %for.inc.i146.if.end912.i_crit_edge, %if.then155.i.if.end912.i_crit_edge, %for.cond.preheader.i.if.end912.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %surf.i) #6
  %arrayidx917.i = getelementptr i32, ptr %83, i32 %add4.i128
  %500 = ptrtoint ptr %arrayidx917.i to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load i32, ptr %arrayidx917.i, align 4
  %add918.i = add i32 %501, %conv873.i
  store i32 %add918.i, ptr %arrayidx917.i, align 4
  %502 = ptrtoint ptr %arrayidx884.i to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load i32, ptr %arrayidx884.i, align 4
  %add924.i = add i32 %503, %moffset.0.i
  store i32 %add924.i, ptr %arrayidx884.i, align 4
  br label %for.inc1007.i

sw.bb925.i:                                       ; preds = %radeon_get_ib_value.exit2221.i
  %call926.i = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call926.i)
  %tobool927.not.i = icmp eq i32 %call926.i, 0
  br i1 %tobool927.not.i, label %if.end929.i, label %cleanup994.i

if.end929.i:                                      ; preds = %sw.bb925.i
  %504 = ptrtoint ptr %chunk_ib.i.i to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %chunk_ib.i.i, align 4
  %kdata.i2227.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %505, i32 0, i32 1
  %506 = ptrtoint ptr %kdata.i2227.i to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %kdata.i2227.i, align 4
  %tobool.not.i2228.i = icmp eq ptr %507, null
  br i1 %tobool.not.i2228.i, label %if.end.i2239.i, label %if.end929.i.radeon_get_ib_value.exit2243.i_crit_edge

if.end929.i.radeon_get_ib_value.exit2243.i_crit_edge: ; preds = %if.end929.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_get_ib_value.exit2243.i

if.end.i2239.i:                                   ; preds = %if.end929.i
  call void @__sanitizer_cov_trace_pc() #8
  %508 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %ptr.i, align 8
  br label %radeon_get_ib_value.exit2243.i

radeon_get_ib_value.exit2243.i:                   ; preds = %if.end.i2239.i, %if.end929.i.radeon_get_ib_value.exit2243.i_crit_edge
  %.pn2583.i = phi ptr [ %509, %if.end.i2239.i ], [ %507, %if.end929.i.radeon_get_ib_value.exit2243.i_crit_edge ]
  %retval.0.i22332511.in.i = getelementptr i32, ptr %.pn2583.i, i32 %add815.i
  %510 = ptrtoint ptr %retval.0.i22332511.in.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %retval.0.i22332511.i = load i32, ptr %retval.0.i22332511.in.i, align 4
  %add9382513.i = add i32 %add815.i, 1
  %511 = ptrtoint ptr %rdev940.i to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %rdev940.i, align 4
  %tobool941.not.i = icmp eq ptr %512, null
  br i1 %tobool941.not.i, label %radeon_get_ib_value.exit2243.i.cleanup994.thread.i_crit_edge, label %land.lhs.true942.i

radeon_get_ib_value.exit2243.i.cleanup994.thread.i_crit_edge: ; preds = %radeon_get_ib_value.exit2243.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup994.thread.i

land.lhs.true942.i:                               ; preds = %radeon_get_ib_value.exit2243.i
  %retval.0.in.i2241.i = getelementptr i32, ptr %.pn2583.i, i32 %add9382513.i
  %513 = ptrtoint ptr %retval.0.in.i2241.i to i32
  call void @__asan_load4_noabort(i32 %513)
  %retval.0.i2242.i = load i32, ptr %retval.0.in.i2241.i, align 4
  %add943.i = add i32 %retval.0.i2242.i, %retval.0.i22332511.i
  %514 = ptrtoint ptr %reloc.i to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %reloc.i, align 4
  %516 = ptrtoint ptr %515 to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %515, align 8
  %size.i2244.i = getelementptr inbounds %struct.radeon_bo, ptr %517, i32 0, i32 4, i32 0, i32 5
  %518 = ptrtoint ptr %size.i2244.i to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load i32, ptr %size.i2244.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add943.i, i32 %519)
  %cmp946.i = icmp ugt i32 %add943.i, %519
  br i1 %cmp946.i, label %do.body949.i, label %land.lhs.true942.i.cleanup994.thread.i_crit_edge

land.lhs.true942.i.cleanup994.thread.i_crit_edge: ; preds = %land.lhs.true942.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup994.thread.i

do.body949.i:                                     ; preds = %land.lhs.true942.i
  %call950.i = call i32 @___ratelimit(ptr noundef nonnull @evergreen_packet3_check._rs, ptr noundef nonnull @.str.92) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call950.i)
  %tobool951.not.i = icmp eq i32 %call950.i, 0
  br i1 %tobool951.not.i, label %do.body949.i.do.end959.i_crit_edge, label %do.end955.i

do.body949.i.do.end959.i_crit_edge:               ; preds = %do.body949.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end959.i

do.end955.i:                                      ; preds = %do.body949.i
  call void @__sanitizer_cov_trace_pc() #8
  %520 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %521, ptr noundef nonnull @.str.159) #10
  br label %do.end959.i

do.end959.i:                                      ; preds = %do.end955.i, %do.body949.i.do.end959.i_crit_edge
  %522 = ptrtoint ptr %reloc.i to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %reloc.i, align 4
  %524 = ptrtoint ptr %523 to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %523, align 8
  %size.i2245.i = getelementptr inbounds %struct.radeon_bo, ptr %525, i32 0, i32 4, i32 0, i32 5
  %526 = ptrtoint ptr %size.i2245.i to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load i32, ptr %size.i2245.i, align 8
  %sub962.i = sub i32 %527, %retval.0.i22332511.i
  %arrayidx967.i = getelementptr i32, ptr %83, i32 %add9382513.i
  %528 = ptrtoint ptr %arrayidx967.i to i32
  call void @__asan_store4_noabort(i32 %528)
  store i32 %sub962.i, ptr %arrayidx967.i, align 4
  br label %cleanup994.thread.i

cleanup994.thread.i:                              ; preds = %do.end959.i, %land.lhs.true942.i.cleanup994.thread.i_crit_edge, %radeon_get_ib_value.exit2243.i.cleanup994.thread.i_crit_edge
  %529 = ptrtoint ptr %reloc.i to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load ptr, ptr %reloc.i, align 4
  %gpu_offset969.i = getelementptr inbounds %struct.radeon_bo_list, ptr %530, i32 0, i32 2
  %531 = ptrtoint ptr %gpu_offset969.i to i32
  call void @__asan_load8_noabort(i32 %531)
  %532 = load i64, ptr %gpu_offset969.i, align 8
  %conv970.i = zext i32 %retval.0.i22332511.i to i64
  %add971.i = add i64 %532, %conv970.i
  %conv972.i = trunc i64 %add971.i to i32
  %arrayidx977.i = getelementptr i32, ptr %83, i32 %add815.i
  %533 = ptrtoint ptr %arrayidx977.i to i32
  call void @__asan_store4_noabort(i32 %533)
  store i32 %conv972.i, ptr %arrayidx977.i, align 4
  %add981.i = add i32 %add815.i, 2
  %arrayidx982.i = getelementptr i32, ptr %83, i32 %add981.i
  %534 = ptrtoint ptr %arrayidx982.i to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load i32, ptr %arrayidx982.i, align 4
  %and983.i = and i32 %535, -256
  %shr984.i = lshr i64 %add971.i, 32
  %conv986.i = trunc i64 %shr984.i to i32
  %and987.i = and i32 %conv986.i, 255
  %or988.i = or i32 %and987.i, %and983.i
  store i32 %or988.i, ptr %arrayidx982.i, align 4
  br label %for.inc1007.i

cleanup994.i:                                     ; preds = %sw.bb925.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.156) #6
  br label %sw.epilog63.thread157

for.body810.unreachabledefault.i:                 ; preds = %radeon_get_ib_value.exit2221.i
  unreachable

sw.default.i:                                     ; preds = %radeon_get_ib_value.exit2221.i.sw.default.i_crit_edge, %radeon_get_ib_value.exit2221.i.sw.default.i_crit_edge4363
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.154) #6
  br label %sw.epilog63.thread157

for.inc1007.i:                                    ; preds = %cleanup994.thread.i, %if.end912.i
  %inc1008.i = add nuw i32 %i.02599.i, 1
  %536 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load i32, ptr %3, align 4
  %div.i = sdiv i32 %537, 8
  %cmp808.i = icmp ult i32 %inc1008.i, %div.i
  br i1 %cmp808.i, label %for.inc1007.i.for.body810.i_crit_edge, label %for.inc1007.i.sw.epilog63_crit_edge

for.inc1007.i.sw.epilog63_crit_edge:              ; preds = %for.inc1007.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog63

for.inc1007.i.for.body810.i_crit_edge:            ; preds = %for.inc1007.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body810.i

sw.bb1010.i:                                      ; preds = %sw.bb57
  %shl1011.i = shl i32 %retval.0.i.i, 2
  %mul1014.i = shl i32 %67, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %shl1011.i)
  %538 = icmp ugt i32 %shl1011.i, 23
  %add1015.i = add i32 %mul1014.i, -28
  %539 = add i32 %add1015.i, %shl1011.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -238872, i32 %539)
  %cmp1023.i = icmp ult i32 %539, -238872
  %or.cond1990.i = select i1 %538, i1 true, i1 %cmp1023.i
  br i1 %or.cond1990.i, label %if.then1025.i, label %sw.bb1010.i.sw.epilog63_crit_edge

sw.bb1010.i.sw.epilog63_crit_edge:                ; preds = %sw.bb1010.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog63

if.then1025.i:                                    ; preds = %sw.bb1010.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.161) #6
  br label %sw.epilog63.thread157

sw.bb1027.i:                                      ; preds = %sw.bb57
  %shl1028.i = shl i32 %retval.0.i.i, 2
  %mul1031.i = shl i32 %67, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 767, i32 %shl1028.i)
  %540 = icmp ugt i32 %shl1028.i, 767
  %add1032.i = add i32 %mul1031.i, -772
  %541 = add i32 %add1032.i, %shl1028.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -238848, i32 %541)
  %cmp1040.i = icmp ult i32 %541, -238848
  %or.cond1992.i = select i1 %540, i1 true, i1 %cmp1040.i
  br i1 %or.cond1992.i, label %if.then1042.i, label %sw.bb1027.i.sw.epilog63_crit_edge

sw.bb1027.i.sw.epilog63_crit_edge:                ; preds = %sw.bb1027.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog63

if.then1042.i:                                    ; preds = %sw.bb1027.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.162) #6
  br label %sw.epilog63.thread157

sw.bb1044.i:                                      ; preds = %sw.bb57
  %shl1045.i = shl i32 %retval.0.i.i, 2
  %mul1048.i = shl i32 %67, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 12059, i32 %shl1045.i)
  %542 = icmp ugt i32 %shl1045.i, 12059
  %add1049.i = add i32 %mul1048.i, -12064
  %543 = add i32 %add1049.i, %shl1045.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -261900, i32 %543)
  %cmp1057.i = icmp ult i32 %543, -261900
  %or.cond1994.i = select i1 %542, i1 true, i1 %cmp1057.i
  br i1 %or.cond1994.i, label %if.then1059.i, label %sw.bb1044.i.sw.epilog63_crit_edge

sw.bb1044.i.sw.epilog63_crit_edge:                ; preds = %sw.bb1044.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog63

if.then1059.i:                                    ; preds = %sw.bb1044.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.163) #6
  br label %sw.epilog63.thread157

sw.bb1061.i:                                      ; preds = %sw.bb57
  %rem1063.i = srem i32 %67, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem1063.i)
  %tobool1064.not.i = icmp eq i32 %rem1063.i, 0
  br i1 %tobool1064.not.i, label %if.end1066.i, label %if.then1065.i

if.then1065.i:                                    ; preds = %sw.bb1061.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.164) #6
  br label %sw.epilog63.thread157

if.end1066.i:                                     ; preds = %sw.bb1061.i
  %shl1067.i = shl i32 %retval.0.i.i, 2
  %mul1070.i = shl i32 %67, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1535, i32 %shl1067.i)
  %544 = icmp ugt i32 %shl1067.i, 1535
  %add1071.i = add i32 %mul1070.i, -1540
  %545 = add i32 %add1071.i, %shl1067.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -247296, i32 %545)
  %cmp1079.i = icmp ult i32 %545, -247296
  %or.cond1996.i = select i1 %544, i1 true, i1 %cmp1079.i
  br i1 %or.cond1996.i, label %if.then1081.i, label %if.end1066.i.sw.epilog63_crit_edge

if.end1066.i.sw.epilog63_crit_edge:               ; preds = %if.end1066.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog63

if.then1081.i:                                    ; preds = %if.end1066.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.164) #6
  br label %sw.epilog63.thread157

sw.bb1083.i:                                      ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %67)
  %cmp1085.not.i = icmp eq i32 %67, 4
  br i1 %cmp1085.not.i, label %if.end1088.i, label %if.then1087.i

if.then1087.i:                                    ; preds = %sw.bb1083.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.165) #6
  br label %sw.epilog63.thread157

if.end1088.i:                                     ; preds = %sw.bb1083.i
  %and1089.i = and i32 %retval.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1089.i)
  %tobool1090.not.i = icmp eq i32 %and1089.i, 0
  br i1 %tobool1090.not.i, label %if.end1088.i.if.end1131.i_crit_edge, label %if.then1091.i

if.end1088.i.if.end1131.i_crit_edge:              ; preds = %if.end1088.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1131.i

if.then1091.i:                                    ; preds = %if.end1088.i
  %call1093.i = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1093.i)
  %tobool1094.not.i = icmp eq i32 %call1093.i, 0
  br i1 %tobool1094.not.i, label %if.end1096.i, label %if.then1095.i

if.then1095.i:                                    ; preds = %if.then1091.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.166) #6
  br label %sw.epilog63.thread157

if.end1096.i:                                     ; preds = %if.then1091.i
  %add1097.i = add i32 %85, 2
  %546 = ptrtoint ptr %chunk_ib.i.i to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %chunk_ib.i.i, align 4
  %kdata.i2247.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %547, i32 0, i32 1
  %548 = ptrtoint ptr %kdata.i2247.i to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %kdata.i2247.i, align 4
  %tobool.not.i2248.i = icmp eq ptr %549, null
  br i1 %tobool.not.i2248.i, label %if.end.i2259.i, label %if.end1096.i.radeon_get_ib_value.exit2263.i_crit_edge

if.end1096.i.radeon_get_ib_value.exit2263.i_crit_edge: ; preds = %if.end1096.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_get_ib_value.exit2263.i

if.end.i2259.i:                                   ; preds = %if.end1096.i
  call void @__sanitizer_cov_trace_pc() #8
  %550 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %ptr.i, align 8
  br label %radeon_get_ib_value.exit2263.i

radeon_get_ib_value.exit2263.i:                   ; preds = %if.end.i2259.i, %if.end1096.i.radeon_get_ib_value.exit2263.i_crit_edge
  %.pn2581.i = phi ptr [ %551, %if.end.i2259.i ], [ %549, %if.end1096.i.radeon_get_ib_value.exit2263.i_crit_edge ]
  %conv10992523.in.in.i = getelementptr i32, ptr %.pn2581.i, i32 %add1097.i
  %552 = ptrtoint ptr %conv10992523.in.in.i to i32
  call void @__asan_load4_noabort(i32 %552)
  %conv10992523.in.i = load i32, ptr %conv10992523.in.in.i, align 4
  %conv10992523.i = zext i32 %conv10992523.in.i to i64
  %add11002525.i = add i32 %85, 3
  %retval.0.in.i2261.i = getelementptr i32, ptr %.pn2581.i, i32 %add11002525.i
  %553 = ptrtoint ptr %retval.0.in.i2261.i to i32
  call void @__asan_load4_noabort(i32 %553)
  %retval.0.i2262.i = load i32, ptr %retval.0.in.i2261.i, align 4
  %and1102.i = and i32 %retval.0.i2262.i, 255
  %conv1103.i = zext i32 %and1102.i to i64
  %shl1104.i = shl nuw nsw i64 %conv1103.i, 32
  %add1105.i = or i64 %shl1104.i, %conv10992523.i
  %add1106.i = add nuw nsw i64 %add1105.i, 4
  %554 = ptrtoint ptr %reloc.i to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %reloc.i, align 4
  %556 = ptrtoint ptr %555 to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %555, align 8
  %size.i2264.i = getelementptr inbounds %struct.radeon_bo, ptr %557, i32 0, i32 4, i32 0, i32 5
  %558 = ptrtoint ptr %size.i2264.i to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load i32, ptr %size.i2264.i, align 8
  %conv1109.i = zext i32 %559 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add1106.i, i64 %conv1109.i)
  %cmp1110.i = icmp ugt i64 %add1106.i, %conv1109.i
  br i1 %cmp1110.i, label %if.then1112.i, label %if.end1116.i

if.then1112.i:                                    ; preds = %radeon_get_ib_value.exit2263.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.167, i64 noundef %add1106.i, i32 noundef %559) #6
  br label %sw.epilog63.thread157

if.end1116.i:                                     ; preds = %radeon_get_ib_value.exit2263.i
  call void @__sanitizer_cov_trace_pc() #8
  %gpu_offset1117.i = getelementptr inbounds %struct.radeon_bo_list, ptr %555, i32 0, i32 2
  %560 = ptrtoint ptr %gpu_offset1117.i to i32
  call void @__asan_load8_noabort(i32 %560)
  %561 = load i64, ptr %gpu_offset1117.i, align 8
  %add1118.i = add i64 %561, %add1105.i
  %conv1119.i = trunc i64 %add1118.i to i32
  %arrayidx1121.i = getelementptr i32, ptr %83, i32 %add1097.i
  %562 = ptrtoint ptr %arrayidx1121.i to i32
  call void @__asan_store4_noabort(i32 %562)
  store i32 %conv1119.i, ptr %arrayidx1121.i, align 4
  %shr1122.i = lshr i64 %add1118.i, 32
  %conv1124.i = trunc i64 %shr1122.i to i32
  %and1125.i = and i32 %conv1124.i, 255
  %arrayidx1127.i = getelementptr i32, ptr %83, i32 %add11002525.i
  %563 = ptrtoint ptr %arrayidx1127.i to i32
  call void @__asan_store4_noabort(i32 %563)
  store i32 %and1125.i, ptr %arrayidx1127.i, align 4
  br label %if.end1131.i

if.end1131.i:                                     ; preds = %if.end1116.i, %if.end1088.i.if.end1131.i_crit_edge
  %564 = and i32 %retval.0.i.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %564)
  %cmp1134.i = icmp eq i32 %564, 4
  br i1 %cmp1134.i, label %if.then1136.i, label %if.end1131.i.sw.epilog63_crit_edge

if.end1131.i.sw.epilog63_crit_edge:               ; preds = %if.end1131.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog63

if.then1136.i:                                    ; preds = %if.end1131.i
  %call1138.i = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1138.i)
  %tobool1139.not.i = icmp eq i32 %call1138.i, 0
  br i1 %tobool1139.not.i, label %if.end1141.i, label %if.then1140.i

if.then1140.i:                                    ; preds = %if.then1136.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.168) #6
  br label %sw.epilog63.thread157

if.end1141.i:                                     ; preds = %if.then1136.i
  %add1142.i = add i32 %85, 4
  %565 = ptrtoint ptr %chunk_ib.i.i to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load ptr, ptr %chunk_ib.i.i, align 4
  %kdata.i2267.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %566, i32 0, i32 1
  %567 = ptrtoint ptr %kdata.i2267.i to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load ptr, ptr %kdata.i2267.i, align 4
  %tobool.not.i2268.i = icmp eq ptr %568, null
  br i1 %tobool.not.i2268.i, label %if.end.i2279.i, label %if.end1141.i.radeon_get_ib_value.exit2283.i_crit_edge

if.end1141.i.radeon_get_ib_value.exit2283.i_crit_edge: ; preds = %if.end1141.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_get_ib_value.exit2283.i

if.end.i2279.i:                                   ; preds = %if.end1141.i
  call void @__sanitizer_cov_trace_pc() #8
  %569 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load ptr, ptr %ptr.i, align 8
  br label %radeon_get_ib_value.exit2283.i

radeon_get_ib_value.exit2283.i:                   ; preds = %if.end.i2279.i, %if.end1141.i.radeon_get_ib_value.exit2283.i_crit_edge
  %.pn2582.i = phi ptr [ %570, %if.end.i2279.i ], [ %568, %if.end1141.i.radeon_get_ib_value.exit2283.i_crit_edge ]
  %conv11442532.in.in.i = getelementptr i32, ptr %.pn2582.i, i32 %add1142.i
  %571 = ptrtoint ptr %conv11442532.in.in.i to i32
  call void @__asan_load4_noabort(i32 %571)
  %conv11442532.in.i = load i32, ptr %conv11442532.in.in.i, align 4
  %conv11442532.i = zext i32 %conv11442532.in.i to i64
  %add11452534.i = add i32 %85, 5
  %retval.0.in.i2281.i = getelementptr i32, ptr %.pn2582.i, i32 %add11452534.i
  %572 = ptrtoint ptr %retval.0.in.i2281.i to i32
  call void @__asan_load4_noabort(i32 %572)
  %retval.0.i2282.i = load i32, ptr %retval.0.in.i2281.i, align 4
  %and1147.i = and i32 %retval.0.i2282.i, 255
  %conv1148.i = zext i32 %and1147.i to i64
  %shl1149.i = shl nuw nsw i64 %conv1148.i, 32
  %add1150.i = or i64 %shl1149.i, %conv11442532.i
  %add1151.i = add nuw nsw i64 %add1150.i, 4
  %573 = ptrtoint ptr %reloc.i to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load ptr, ptr %reloc.i, align 4
  %575 = ptrtoint ptr %574 to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load ptr, ptr %574, align 8
  %size.i2284.i = getelementptr inbounds %struct.radeon_bo, ptr %576, i32 0, i32 4, i32 0, i32 5
  %577 = ptrtoint ptr %size.i2284.i to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load i32, ptr %size.i2284.i, align 8
  %conv1154.i = zext i32 %578 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add1151.i, i64 %conv1154.i)
  %cmp1155.i = icmp ugt i64 %add1151.i, %conv1154.i
  br i1 %cmp1155.i, label %if.then1157.i, label %if.end1161.i

if.then1157.i:                                    ; preds = %radeon_get_ib_value.exit2283.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.169, i64 noundef %add1151.i, i32 noundef %578) #6
  br label %sw.epilog63.thread157

if.end1161.i:                                     ; preds = %radeon_get_ib_value.exit2283.i
  call void @__sanitizer_cov_trace_pc() #8
  %gpu_offset1162.i = getelementptr inbounds %struct.radeon_bo_list, ptr %574, i32 0, i32 2
  %579 = ptrtoint ptr %gpu_offset1162.i to i32
  call void @__asan_load8_noabort(i32 %579)
  %580 = load i64, ptr %gpu_offset1162.i, align 8
  %add1163.i = add i64 %580, %add1150.i
  %conv1164.i = trunc i64 %add1163.i to i32
  %arrayidx1166.i = getelementptr i32, ptr %83, i32 %add1142.i
  %581 = ptrtoint ptr %arrayidx1166.i to i32
  call void @__asan_store4_noabort(i32 %581)
  store i32 %conv1164.i, ptr %arrayidx1166.i, align 4
  %shr1167.i = lshr i64 %add1163.i, 32
  %conv1169.i = trunc i64 %shr1167.i to i32
  %and1170.i = and i32 %conv1169.i, 255
  %arrayidx1172.i = getelementptr i32, ptr %83, i32 %add11452534.i
  %582 = ptrtoint ptr %arrayidx1172.i to i32
  call void @__asan_store4_noabort(i32 %582)
  store i32 %and1170.i, ptr %arrayidx1172.i, align 4
  br label %sw.epilog63

sw.bb1177.i:                                      ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %67)
  %cmp1180.not.i = icmp eq i32 %67, 3
  br i1 %cmp1180.not.i, label %if.end1183.i, label %if.then1182.i

if.then1182.i:                                    ; preds = %sw.bb1177.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.170) #6
  br label %sw.epilog63.thread157

if.end1183.i:                                     ; preds = %sw.bb1177.i
  %call1184.i = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1184.i)
  %tobool1185.not.i = icmp eq i32 %call1184.i, 0
  br i1 %tobool1185.not.i, label %if.end1187.i, label %if.then1186.i

if.then1186.i:                                    ; preds = %if.end1183.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.171) #6
  br label %sw.epilog63.thread157

if.end1187.i:                                     ; preds = %if.end1183.i
  %583 = ptrtoint ptr %chunk_ib.i.i to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load ptr, ptr %chunk_ib.i.i, align 4
  %kdata.i2287.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %584, i32 0, i32 1
  %585 = ptrtoint ptr %kdata.i2287.i to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %kdata.i2287.i, align 4
  %tobool.not.i2288.i = icmp eq ptr %586, null
  br i1 %tobool.not.i2288.i, label %if.end.i2299.i, label %if.end1187.i.radeon_get_ib_value.exit2303.i_crit_edge

if.end1187.i.radeon_get_ib_value.exit2303.i_crit_edge: ; preds = %if.end1187.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_get_ib_value.exit2303.i

if.end.i2299.i:                                   ; preds = %if.end1187.i
  call void @__sanitizer_cov_trace_pc() #8
  %587 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load ptr, ptr %ptr.i, align 8
  br label %radeon_get_ib_value.exit2303.i

radeon_get_ib_value.exit2303.i:                   ; preds = %if.end.i2299.i, %if.end1187.i.radeon_get_ib_value.exit2303.i_crit_edge
  %.pn2580.i = phi ptr [ %588, %if.end.i2299.i ], [ %586, %if.end1187.i.radeon_get_ib_value.exit2303.i_crit_edge ]
  %conv11902541.in.in.i = getelementptr i32, ptr %.pn2580.i, i32 %add.i
  %589 = ptrtoint ptr %conv11902541.in.in.i to i32
  call void @__asan_load4_noabort(i32 %589)
  %conv11902541.in.i = load i32, ptr %conv11902541.in.in.i, align 4
  %conv11902541.i = zext i32 %conv11902541.in.i to i64
  %add11912543.i = add i32 %85, 2
  %retval.0.in.i2301.i = getelementptr i32, ptr %.pn2580.i, i32 %add11912543.i
  %590 = ptrtoint ptr %retval.0.in.i2301.i to i32
  call void @__asan_load4_noabort(i32 %590)
  %retval.0.i2302.i = load i32, ptr %retval.0.in.i2301.i, align 4
  %and1193.i = and i32 %retval.0.i2302.i, 255
  %conv1194.i = zext i32 %and1193.i to i64
  %shl1195.i = shl nuw nsw i64 %conv1194.i, 32
  %add1196.i = or i64 %shl1195.i, %conv11902541.i
  %and1197.i = and i64 %conv11902541.i, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1197.i)
  %tobool1198.not.i = icmp eq i64 %and1197.i, 0
  br i1 %tobool1198.not.i, label %if.end1200.i, label %if.then1199.i

if.then1199.i:                                    ; preds = %radeon_get_ib_value.exit2303.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.172) #6
  br label %sw.epilog63.thread157

if.end1200.i:                                     ; preds = %radeon_get_ib_value.exit2303.i
  %add1201.i = add nuw nsw i64 %add1196.i, 8
  %591 = ptrtoint ptr %reloc.i to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load ptr, ptr %reloc.i, align 4
  %593 = ptrtoint ptr %592 to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load ptr, ptr %592, align 8
  %size.i2304.i = getelementptr inbounds %struct.radeon_bo, ptr %594, i32 0, i32 4, i32 0, i32 5
  %595 = ptrtoint ptr %size.i2304.i to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load i32, ptr %size.i2304.i, align 8
  %conv1204.i = zext i32 %596 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add1201.i, i64 %conv1204.i)
  %cmp1205.i = icmp ugt i64 %add1201.i, %conv1204.i
  br i1 %cmp1205.i, label %if.then1207.i, label %if.end1211.i

if.then1207.i:                                    ; preds = %if.end1200.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.173, i64 noundef %add1201.i, i32 noundef %596) #6
  br label %sw.epilog63.thread157

if.end1211.i:                                     ; preds = %if.end1200.i
  call void @__sanitizer_cov_trace_pc() #8
  %gpu_offset1212.i = getelementptr inbounds %struct.radeon_bo_list, ptr %592, i32 0, i32 2
  %597 = ptrtoint ptr %gpu_offset1212.i to i32
  call void @__asan_load8_noabort(i32 %597)
  %598 = load i64, ptr %gpu_offset1212.i, align 8
  %add1213.i = add i64 %598, %add1196.i
  %conv1214.i = trunc i64 %add1213.i to i32
  %arrayidx1216.i = getelementptr i32, ptr %83, i32 %add.i
  %599 = ptrtoint ptr %arrayidx1216.i to i32
  call void @__asan_store4_noabort(i32 %599)
  store i32 %conv1214.i, ptr %arrayidx1216.i, align 4
  %shr1217.i = lshr i64 %add1213.i, 32
  %conv1219.i = trunc i64 %shr1217.i to i32
  %and1220.i = and i32 %conv1219.i, 255
  %arrayidx1222.i = getelementptr i32, ptr %83, i32 %add11912543.i
  %600 = ptrtoint ptr %arrayidx1222.i to i32
  call void @__asan_store4_noabort(i32 %600)
  store i32 %and1220.i, ptr %arrayidx1222.i, align 4
  br label %sw.epilog63

sw.bb1225.i:                                      ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %67)
  %cmp1227.not.i = icmp eq i32 %67, 4
  br i1 %cmp1227.not.i, label %if.end1230.i, label %if.then1229.i

if.then1229.i:                                    ; preds = %sw.bb1225.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.174) #6
  br label %sw.epilog63.thread157

if.end1230.i:                                     ; preds = %sw.bb1225.i
  %and1231.i = and i32 %retval.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1231.i)
  %tobool1232.not.i = icmp eq i32 %and1231.i, 0
  br i1 %tobool1232.not.i, label %if.else1273.i, label %if.then1233.i

if.then1233.i:                                    ; preds = %if.end1230.i
  %call1235.i = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1235.i)
  %tobool1236.not.i = icmp eq i32 %call1235.i, 0
  br i1 %tobool1236.not.i, label %if.end1238.i, label %if.then1237.i

if.then1237.i:                                    ; preds = %if.then1233.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.175) #6
  br label %sw.epilog63.thread157

if.end1238.i:                                     ; preds = %if.then1233.i
  %add1239.i = add i32 %85, 2
  %601 = ptrtoint ptr %chunk_ib.i.i to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load ptr, ptr %chunk_ib.i.i, align 4
  %kdata.i2307.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %602, i32 0, i32 1
  %603 = ptrtoint ptr %kdata.i2307.i to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load ptr, ptr %kdata.i2307.i, align 4
  %tobool.not.i2308.i = icmp eq ptr %604, null
  br i1 %tobool.not.i2308.i, label %if.end.i2319.i, label %if.end1238.i.radeon_get_ib_value.exit2323.i_crit_edge

if.end1238.i.radeon_get_ib_value.exit2323.i_crit_edge: ; preds = %if.end1238.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_get_ib_value.exit2323.i

if.end.i2319.i:                                   ; preds = %if.end1238.i
  call void @__sanitizer_cov_trace_pc() #8
  %605 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load ptr, ptr %ptr.i, align 8
  br label %radeon_get_ib_value.exit2323.i

radeon_get_ib_value.exit2323.i:                   ; preds = %if.end.i2319.i, %if.end1238.i.radeon_get_ib_value.exit2323.i_crit_edge
  %.pn.i = phi ptr [ %606, %if.end.i2319.i ], [ %604, %if.end1238.i.radeon_get_ib_value.exit2323.i_crit_edge ]
  %conv12412550.in.in.i = getelementptr i32, ptr %.pn.i, i32 %add1239.i
  %607 = ptrtoint ptr %conv12412550.in.in.i to i32
  call void @__asan_load4_noabort(i32 %607)
  %conv12412550.in.i = load i32, ptr %conv12412550.in.in.i, align 4
  %conv12412550.i = zext i32 %conv12412550.in.i to i64
  %add12422552.i = add i32 %85, 3
  %retval.0.in.i2321.i = getelementptr i32, ptr %.pn.i, i32 %add12422552.i
  %608 = ptrtoint ptr %retval.0.in.i2321.i to i32
  call void @__asan_load4_noabort(i32 %608)
  %retval.0.i2322.i = load i32, ptr %retval.0.in.i2321.i, align 4
  %and1244.i = and i32 %retval.0.i2322.i, 255
  %conv1245.i = zext i32 %and1244.i to i64
  %shl1246.i = shl nuw nsw i64 %conv1245.i, 32
  %add1247.i = or i64 %shl1246.i, %conv12412550.i
  %add1248.i = add nuw nsw i64 %add1247.i, 4
  %609 = ptrtoint ptr %reloc.i to i32
  call void @__asan_load4_noabort(i32 %609)
  %610 = load ptr, ptr %reloc.i, align 4
  %611 = ptrtoint ptr %610 to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load ptr, ptr %610, align 8
  %size.i2324.i = getelementptr inbounds %struct.radeon_bo, ptr %612, i32 0, i32 4, i32 0, i32 5
  %613 = ptrtoint ptr %size.i2324.i to i32
  call void @__asan_load4_noabort(i32 %613)
  %614 = load i32, ptr %size.i2324.i, align 8
  %conv1251.i = zext i32 %614 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add1248.i, i64 %conv1251.i)
  %cmp1252.i = icmp ugt i64 %add1248.i, %conv1251.i
  br i1 %cmp1252.i, label %if.then1254.i, label %if.end1258.i

if.then1254.i:                                    ; preds = %radeon_get_ib_value.exit2323.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.176, i64 noundef %add1248.i, i32 noundef %614) #6
  br label %sw.epilog63.thread157

if.end1258.i:                                     ; preds = %radeon_get_ib_value.exit2323.i
  call void @__sanitizer_cov_trace_pc() #8
  %gpu_offset1259.i = getelementptr inbounds %struct.radeon_bo_list, ptr %610, i32 0, i32 2
  %615 = ptrtoint ptr %gpu_offset1259.i to i32
  call void @__asan_load8_noabort(i32 %615)
  %616 = load i64, ptr %gpu_offset1259.i, align 8
  %add1260.i = add i64 %616, %add1247.i
  %conv1261.i = trunc i64 %add1260.i to i32
  %arrayidx1263.i = getelementptr i32, ptr %83, i32 %add1239.i
  %617 = ptrtoint ptr %arrayidx1263.i to i32
  call void @__asan_store4_noabort(i32 %617)
  store i32 %conv1261.i, ptr %arrayidx1263.i, align 4
  %shr1264.i = lshr i64 %add1260.i, 32
  %conv1266.i = trunc i64 %shr1264.i to i32
  %and1267.i = and i32 %conv1266.i, 255
  %arrayidx1269.i = getelementptr i32, ptr %83, i32 %add12422552.i
  %618 = ptrtoint ptr %arrayidx1269.i to i32
  call void @__asan_store4_noabort(i32 %618)
  store i32 %and1267.i, ptr %arrayidx1269.i, align 4
  br label %if.end1285.i

if.else1273.i:                                    ; preds = %if.end1230.i
  %add1274.i = add i32 %85, 2
  %retval.0.in.i2332.i = getelementptr i32, ptr %spec.select.i, i32 %add1274.i
  %619 = ptrtoint ptr %retval.0.in.i2332.i to i32
  call void @__asan_load4_noabort(i32 %619)
  %retval.0.i2333.i = load i32, ptr %retval.0.in.i2332.i, align 4
  %shl1276.i = shl i32 %retval.0.i2333.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 262015, i32 %shl1276.i)
  %cmp.i2335.i = icmp ugt i32 %shl1276.i, 262015
  br i1 %cmp.i2335.i, label %if.else1273.i.do.end1281.i_crit_edge, label %evergreen_is_safe_reg.exit2347.i, !prof !630

if.else1273.i.do.end1281.i_crit_edge:             ; preds = %if.else1273.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end1281.i

evergreen_is_safe_reg.exit2347.i:                 ; preds = %if.else1273.i
  %shr.i2336.i = lshr i32 %shl1276.i, 7
  %and.i2339.i = and i32 %retval.0.i2333.i, 31
  %shl.i2340.i = shl nuw i32 1, %and.i2339.i
  %reg_safe_bm.i2341.i = getelementptr inbounds %struct.evergreen_cs_track, ptr %81, i32 0, i32 46
  %620 = ptrtoint ptr %reg_safe_bm.i2341.i to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load ptr, ptr %reg_safe_bm.i2341.i, align 4
  %arrayidx.i2342.i = getelementptr i32, ptr %621, i32 %shr.i2336.i
  %622 = ptrtoint ptr %arrayidx.i2342.i to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load i32, ptr %arrayidx.i2342.i, align 4
  %and4.i2343.i = and i32 %623, %shl.i2340.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i2343.i)
  %tobool5.not.i2344.i = icmp eq i32 %and4.i2343.i, 0
  br i1 %tobool5.not.i2344.i, label %evergreen_is_safe_reg.exit2347.i.if.end1285.i_crit_edge, label %evergreen_is_safe_reg.exit2347.i.do.end1281.i_crit_edge

evergreen_is_safe_reg.exit2347.i.do.end1281.i_crit_edge: ; preds = %evergreen_is_safe_reg.exit2347.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end1281.i

evergreen_is_safe_reg.exit2347.i.if.end1285.i_crit_edge: ; preds = %evergreen_is_safe_reg.exit2347.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1285.i

do.end1281.i:                                     ; preds = %evergreen_is_safe_reg.exit2347.i.do.end1281.i_crit_edge, %if.else1273.i.do.end1281.i_crit_edge
  %624 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %625, ptr noundef nonnull @.str.178, i32 noundef %shl1276.i, i32 noundef %add1274.i) #10
  br label %sw.epilog63.thread157

if.end1285.i:                                     ; preds = %evergreen_is_safe_reg.exit2347.i.if.end1285.i_crit_edge, %if.end1258.i
  %and1286.i = and i32 %retval.0.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1286.i)
  %tobool1287.not.i = icmp eq i32 %and1286.i, 0
  br i1 %tobool1287.not.i, label %if.else1328.i, label %if.then1288.i

if.then1288.i:                                    ; preds = %if.end1285.i
  %call1290.i = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1290.i)
  %tobool1291.not.i = icmp eq i32 %call1290.i, 0
  br i1 %tobool1291.not.i, label %if.end1293.i, label %if.then1292.i

if.then1292.i:                                    ; preds = %if.then1288.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.180) #6
  br label %sw.epilog63.thread157

if.end1293.i:                                     ; preds = %if.then1288.i
  %add1294.i = add i32 %85, 4
  %626 = ptrtoint ptr %chunk_ib.i.i to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load ptr, ptr %chunk_ib.i.i, align 4
  %kdata.i2349.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %627, i32 0, i32 1
  %628 = ptrtoint ptr %kdata.i2349.i to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load ptr, ptr %kdata.i2349.i, align 4
  %tobool.not.i2350.i = icmp eq ptr %629, null
  br i1 %tobool.not.i2350.i, label %if.end.i2361.i, label %if.end1293.i.radeon_get_ib_value.exit2365.i_crit_edge

if.end1293.i.radeon_get_ib_value.exit2365.i_crit_edge: ; preds = %if.end1293.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_get_ib_value.exit2365.i

if.end.i2361.i:                                   ; preds = %if.end1293.i
  call void @__sanitizer_cov_trace_pc() #8
  %630 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load ptr, ptr %ptr.i, align 8
  br label %radeon_get_ib_value.exit2365.i

radeon_get_ib_value.exit2365.i:                   ; preds = %if.end.i2361.i, %if.end1293.i.radeon_get_ib_value.exit2365.i_crit_edge
  %.pn2579.i = phi ptr [ %631, %if.end.i2361.i ], [ %629, %if.end1293.i.radeon_get_ib_value.exit2365.i_crit_edge ]
  %conv12962560.in.in.i = getelementptr i32, ptr %.pn2579.i, i32 %add1294.i
  %632 = ptrtoint ptr %conv12962560.in.in.i to i32
  call void @__asan_load4_noabort(i32 %632)
  %conv12962560.in.i = load i32, ptr %conv12962560.in.in.i, align 4
  %conv12962560.i = zext i32 %conv12962560.in.i to i64
  %add12972562.i = add i32 %85, 5
  %retval.0.in.i2363.i = getelementptr i32, ptr %.pn2579.i, i32 %add12972562.i
  %633 = ptrtoint ptr %retval.0.in.i2363.i to i32
  call void @__asan_load4_noabort(i32 %633)
  %retval.0.i2364.i = load i32, ptr %retval.0.in.i2363.i, align 4
  %and1299.i = and i32 %retval.0.i2364.i, 255
  %conv1300.i = zext i32 %and1299.i to i64
  %shl1301.i = shl nuw nsw i64 %conv1300.i, 32
  %add1302.i = or i64 %shl1301.i, %conv12962560.i
  %add1303.i = add nuw nsw i64 %add1302.i, 4
  %634 = ptrtoint ptr %reloc.i to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load ptr, ptr %reloc.i, align 4
  %636 = ptrtoint ptr %635 to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load ptr, ptr %635, align 8
  %size.i2366.i = getelementptr inbounds %struct.radeon_bo, ptr %637, i32 0, i32 4, i32 0, i32 5
  %638 = ptrtoint ptr %size.i2366.i to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load i32, ptr %size.i2366.i, align 8
  %conv1306.i = zext i32 %639 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add1303.i, i64 %conv1306.i)
  %cmp1307.i = icmp ugt i64 %add1303.i, %conv1306.i
  br i1 %cmp1307.i, label %if.then1309.i, label %if.end1313.i

if.then1309.i:                                    ; preds = %radeon_get_ib_value.exit2365.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.181, i64 noundef %add1303.i, i32 noundef %639) #6
  br label %sw.epilog63.thread157

if.end1313.i:                                     ; preds = %radeon_get_ib_value.exit2365.i
  call void @__sanitizer_cov_trace_pc() #8
  %gpu_offset1314.i = getelementptr inbounds %struct.radeon_bo_list, ptr %635, i32 0, i32 2
  %640 = ptrtoint ptr %gpu_offset1314.i to i32
  call void @__asan_load8_noabort(i32 %640)
  %641 = load i64, ptr %gpu_offset1314.i, align 8
  %add1315.i = add i64 %641, %add1302.i
  %conv1316.i = trunc i64 %add1315.i to i32
  %arrayidx1318.i = getelementptr i32, ptr %83, i32 %add1294.i
  %642 = ptrtoint ptr %arrayidx1318.i to i32
  call void @__asan_store4_noabort(i32 %642)
  store i32 %conv1316.i, ptr %arrayidx1318.i, align 4
  %shr1319.i = lshr i64 %add1315.i, 32
  %conv1321.i = trunc i64 %shr1319.i to i32
  %and1322.i = and i32 %conv1321.i, 255
  %arrayidx1324.i = getelementptr i32, ptr %83, i32 %add12972562.i
  %643 = ptrtoint ptr %arrayidx1324.i to i32
  call void @__asan_store4_noabort(i32 %643)
  store i32 %and1322.i, ptr %arrayidx1324.i, align 4
  br label %sw.epilog63

if.else1328.i:                                    ; preds = %if.end1285.i
  %add1329.i = add i32 %85, 4
  %644 = ptrtoint ptr %chunk_ib.i.i to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load ptr, ptr %chunk_ib.i.i, align 4
  %kdata.i2369.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %645, i32 0, i32 1
  %646 = ptrtoint ptr %kdata.i2369.i to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load ptr, ptr %kdata.i2369.i, align 4
  %tobool.not.i2370.i = icmp eq ptr %647, null
  br i1 %tobool.not.i2370.i, label %if.end.i2372.i, label %if.else1328.i.radeon_get_ib_value.exit2376.i_crit_edge

if.else1328.i.radeon_get_ib_value.exit2376.i_crit_edge: ; preds = %if.else1328.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_get_ib_value.exit2376.i

if.end.i2372.i:                                   ; preds = %if.else1328.i
  call void @__sanitizer_cov_trace_pc() #8
  %648 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load ptr, ptr %ptr.i, align 8
  br label %radeon_get_ib_value.exit2376.i

radeon_get_ib_value.exit2376.i:                   ; preds = %if.end.i2372.i, %if.else1328.i.radeon_get_ib_value.exit2376.i_crit_edge
  %.pn.i2373.i = phi ptr [ %649, %if.end.i2372.i ], [ %647, %if.else1328.i.radeon_get_ib_value.exit2376.i_crit_edge ]
  %retval.0.in.i2374.i = getelementptr i32, ptr %.pn.i2373.i, i32 %add1329.i
  %650 = ptrtoint ptr %retval.0.in.i2374.i to i32
  call void @__asan_load4_noabort(i32 %650)
  %retval.0.i2375.i = load i32, ptr %retval.0.in.i2374.i, align 4
  %shl1331.i = shl i32 %retval.0.i2375.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 262015, i32 %shl1331.i)
  %cmp.i2377.i = icmp ugt i32 %shl1331.i, 262015
  br i1 %cmp.i2377.i, label %radeon_get_ib_value.exit2376.i.do.end1336.i_crit_edge, label %evergreen_is_safe_reg.exit2389.i, !prof !630

radeon_get_ib_value.exit2376.i.do.end1336.i_crit_edge: ; preds = %radeon_get_ib_value.exit2376.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end1336.i

evergreen_is_safe_reg.exit2389.i:                 ; preds = %radeon_get_ib_value.exit2376.i
  %shr.i2378.i = lshr i32 %shl1331.i, 7
  %651 = ptrtoint ptr %track1 to i32
  call void @__asan_load4_noabort(i32 %651)
  %652 = load ptr, ptr %track1, align 8
  %and.i2381.i = and i32 %retval.0.i2375.i, 31
  %shl.i2382.i = shl nuw i32 1, %and.i2381.i
  %reg_safe_bm.i2383.i = getelementptr inbounds %struct.evergreen_cs_track, ptr %652, i32 0, i32 46
  %653 = ptrtoint ptr %reg_safe_bm.i2383.i to i32
  call void @__asan_load4_noabort(i32 %653)
  %654 = load ptr, ptr %reg_safe_bm.i2383.i, align 4
  %arrayidx.i2384.i = getelementptr i32, ptr %654, i32 %shr.i2378.i
  %655 = ptrtoint ptr %arrayidx.i2384.i to i32
  call void @__asan_load4_noabort(i32 %655)
  %656 = load i32, ptr %arrayidx.i2384.i, align 4
  %and4.i2385.i = and i32 %656, %shl.i2382.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i2385.i)
  %tobool5.not.i2386.i = icmp eq i32 %and4.i2385.i, 0
  br i1 %tobool5.not.i2386.i, label %evergreen_is_safe_reg.exit2389.i.sw.epilog63_crit_edge, label %evergreen_is_safe_reg.exit2389.i.do.end1336.i_crit_edge

evergreen_is_safe_reg.exit2389.i.do.end1336.i_crit_edge: ; preds = %evergreen_is_safe_reg.exit2389.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end1336.i

evergreen_is_safe_reg.exit2389.i.sw.epilog63_crit_edge: ; preds = %evergreen_is_safe_reg.exit2389.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog63

do.end1336.i:                                     ; preds = %evergreen_is_safe_reg.exit2389.i.do.end1336.i_crit_edge, %radeon_get_ib_value.exit2376.i.do.end1336.i_crit_edge
  %657 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %657)
  %658 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %658, ptr noundef nonnull @.str.178, i32 noundef %shl1331.i, i32 noundef %add1329.i) #10
  br label %sw.epilog63.thread157

sw.bb1341.i:                                      ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %67)
  %cmp1343.not.i = icmp eq i32 %67, 2
  br i1 %cmp1343.not.i, label %if.end1346.i, label %if.then1345.i

if.then1345.i:                                    ; preds = %sw.bb1341.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.184) #6
  br label %sw.epilog63.thread157

if.end1346.i:                                     ; preds = %sw.bb1341.i
  %659 = add i32 %retval.0.i.i, -30867456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -786432, i32 %659)
  %660 = icmp ult i32 %659, -786432
  br i1 %660, label %do.end1359.i, label %if.end1361.i

do.end1359.i:                                     ; preds = %if.end1346.i
  call void @__sanitizer_cov_trace_pc() #8
  %shr1349.i = lshr i32 %retval.0.i.i, 16
  %661 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %661)
  %662 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %662, ptr noundef nonnull @.str.186, i32 noundef %shr1349.i, i32 noundef %add.i) #10
  br label %sw.epilog63.thread157

if.end1361.i:                                     ; preds = %if.end1346.i
  %and1362.i = and i32 %retval.0.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and1362.i)
  %cmp1364.i = icmp eq i32 %and1362.i, 3
  br i1 %cmp1364.i, label %if.then1366.i, label %if.else1402.i

if.then1366.i:                                    ; preds = %if.end1361.i
  %call1368.i = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1368.i)
  %tobool1369.not.i = icmp eq i32 %call1368.i, 0
  br i1 %tobool1369.not.i, label %if.end1371.i, label %cleanup1398.i

if.end1371.i:                                     ; preds = %if.then1366.i
  %add1372.i = add i32 %85, 2
  %663 = ptrtoint ptr %chunk_ib.i.i to i32
  call void @__asan_load4_noabort(i32 %663)
  %664 = load ptr, ptr %chunk_ib.i.i, align 4
  %kdata.i2391.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %664, i32 0, i32 1
  %665 = ptrtoint ptr %kdata.i2391.i to i32
  call void @__asan_load4_noabort(i32 %665)
  %666 = load ptr, ptr %kdata.i2391.i, align 4
  %tobool.not.i2392.i = icmp eq ptr %666, null
  br i1 %tobool.not.i2392.i, label %if.end.i2403.i, label %if.end1371.i.cleanup1398.thread.i_crit_edge

if.end1371.i.cleanup1398.thread.i_crit_edge:      ; preds = %if.end1371.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup1398.thread.i

if.end.i2403.i:                                   ; preds = %if.end1371.i
  call void @__sanitizer_cov_trace_pc() #8
  %667 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load ptr, ptr %ptr.i, align 8
  br label %cleanup1398.thread.i

cleanup1398.thread.i:                             ; preds = %if.end.i2403.i, %if.end1371.i.cleanup1398.thread.i_crit_edge
  %.pn.i2404.i = phi ptr [ %668, %if.end.i2403.i ], [ %666, %if.end1371.i.cleanup1398.thread.i_crit_edge ]
  %and13772573.in.in.in.i = getelementptr i32, ptr %.pn.i2404.i, i32 %add1372.i
  %669 = ptrtoint ptr %and13772573.in.in.in.i to i32
  call void @__asan_load4_noabort(i32 %669)
  %and13772573.in.in.i = load i32, ptr %and13772573.in.in.in.i, align 4
  %and13752571.i = and i32 %and13772573.in.in.i, 3
  %and13772573.in.i = and i32 %and13772573.in.in.i, -4
  %and13772573.i = zext i32 %and13772573.in.i to i64
  %add13782575.i = add i32 %85, 3
  %retval.0.in.i2405.i = getelementptr i32, ptr %.pn.i2404.i, i32 %add13782575.i
  %670 = ptrtoint ptr %retval.0.in.i2405.i to i32
  call void @__asan_load4_noabort(i32 %670)
  %retval.0.i2406.i = load i32, ptr %retval.0.in.i2405.i, align 4
  %and1380.i = and i32 %retval.0.i2406.i, 255
  %conv1381.i = zext i32 %and1380.i to i64
  %shl1382.i = shl nuw nsw i64 %conv1381.i, 32
  %671 = ptrtoint ptr %reloc.i to i32
  call void @__asan_load4_noabort(i32 %671)
  %672 = load ptr, ptr %reloc.i, align 4
  %gpu_offset1384.i = getelementptr inbounds %struct.radeon_bo_list, ptr %672, i32 0, i32 2
  %673 = ptrtoint ptr %gpu_offset1384.i to i32
  call void @__asan_load8_noabort(i32 %673)
  %674 = load i64, ptr %gpu_offset1384.i, align 8
  %add1383.i = add i64 %674, %and13772573.i
  %add1385.i = add i64 %add1383.i, %shl1382.i
  %675 = trunc i64 %add1385.i to i32
  %676 = and i32 %675, -4
  %conv1389.i = or i32 %676, %and13752571.i
  %arrayidx1391.i = getelementptr i32, ptr %83, i32 %add1372.i
  %677 = ptrtoint ptr %arrayidx1391.i to i32
  call void @__asan_store4_noabort(i32 %677)
  store i32 %conv1389.i, ptr %arrayidx1391.i, align 4
  %shr1392.i = lshr i64 %add1385.i, 32
  %conv1394.i = trunc i64 %shr1392.i to i32
  %and1395.i = and i32 %conv1394.i, 255
  %arrayidx1397.i = getelementptr i32, ptr %83, i32 %add13782575.i
  %678 = ptrtoint ptr %arrayidx1397.i to i32
  call void @__asan_store4_noabort(i32 %678)
  store i32 %and1395.i, ptr %arrayidx1397.i, align 4
  br label %sw.epilog63

cleanup1398.i:                                    ; preds = %if.then1366.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.188) #6
  br label %sw.epilog63.thread157

if.else1402.i:                                    ; preds = %if.end1361.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.189) #6
  br label %sw.epilog63.thread157

sw.default1408.i:                                 ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.190, i32 noundef %92) #6
  br label %sw.epilog63.thread157

sw.default59:                                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %71) #6
  br label %cleanup.sink.split

sw.epilog63.thread157:                            ; preds = %sw.default1408.i, %if.else1402.i, %cleanup1398.i, %do.end1359.i, %if.then1345.i, %do.end1336.i, %if.then1309.i, %if.then1292.i, %do.end1281.i, %if.then1254.i, %if.then1237.i, %if.then1229.i, %if.then1207.i, %if.then1199.i, %if.then1186.i, %if.then1182.i, %if.then1157.i, %if.then1140.i, %if.then1112.i, %if.then1095.i, %if.then1087.i, %if.then1081.i, %if.then1065.i, %if.then1059.i, %if.then1042.i, %if.then1025.i, %sw.default.i, %cleanup994.i, %evergreen_cs_track_validate_texture.exit.thread, %if.then898.i, %if.then823.i, %if.then804.i, %if.then788.i, %if.end775.i.sw.epilog63.thread157_crit_edge, %if.then766.i, %if.end744.i.sw.epilog63.thread157_crit_edge, %if.then738.i, %if.then695.i, %if.then691.i, %if.then656.i, %if.then652.i, %if.then619.i, %if.then611.i, %if.then593.i, %if.then579.i, %if.then573.i, %if.else561.i, %do.end545.i, %if.then522.i, %if.then513.i, %if.then508.i, %if.then497.i, %do.end473.i, %if.then451.i, %if.then442.i, %if.then437.i, %if.then427.i, %if.then395.i, %if.then385.i, %if.then351.i, %if.then343.i, %do.end336.i, %if.then323.i, %if.then319.i, %do.end312.i, %if.then305.i, %do.end296.i, %do.end287.i, %if.then276.i, %if.then254.i, %if.then250.i, %if.then246.i, %do.end239.i, %if.then232.i, %do.end225.i, %if.then218.i, %do.end211.i, %if.then204.i, %do.end197.i, %if.then190.i, %do.end183.i, %if.then176.i, %do.end167.i, %if.then140.i, %if.then136.i, %do.end126.i, %if.then101.i, %if.then97.i, %if.then90.i, %do.end.i, %if.then60.i, %if.then56.i, %if.then49.i, %if.then45.i, %if.then40.i, %if.then35.i, %if.then13.i, %if.then10.i, %if.then.i
  %retval.23.i.ph = phi i32 [ %retval.2.i.ph, %evergreen_cs_track_validate_texture.exit.thread ], [ -22, %sw.default.i ], [ -22, %cleanup994.i ], [ -22, %if.then823.i ], [ -22, %if.then898.i ], [ -22, %if.then276.i ], [ -22, %do.end287.i ], [ %call291.i, %do.end296.i ], [ -22, %if.then136.i ], [ -22, %if.then140.i ], [ %call162.i, %do.end167.i ], [ -22, %if.then97.i ], [ -22, %if.then101.i ], [ %call121.i, %do.end126.i ], [ -22, %if.then56.i ], [ -22, %if.then60.i ], [ %call80.i, %do.end.i ], [ -22, %if.then.i ], [ -22, %if.then10.i ], [ -22, %if.then13.i ], [ -22, %if.then1345.i ], [ -22, %do.end1359.i ], [ -22, %if.else1402.i ], [ -22, %if.then1292.i ], [ -22, %if.then1309.i ], [ -22, %if.then1237.i ], [ -22, %if.then1254.i ], [ -22, %if.then1182.i ], [ -22, %if.then1186.i ], [ -22, %if.then1199.i ], [ -22, %if.then1207.i ], [ -22, %if.then1140.i ], [ -22, %if.then1157.i ], [ -22, %if.then1095.i ], [ -22, %if.then1112.i ], [ -22, %if.then691.i ], [ -22, %if.then695.i ], [ -22, %if.then652.i ], [ -22, %if.then656.i ], [ -22, %if.then619.i ], [ -22, %if.then395.i ], [ -22, %if.then427.i ], [ -22, %if.then437.i ], [ -22, %if.then442.i ], [ -22, %if.then451.i ], [ -22, %do.end473.i ], [ -22, %if.then497.i ], [ -22, %if.then508.i ], [ -22, %if.then513.i ], [ -22, %if.then522.i ], [ -22, %do.end545.i ], [ -22, %if.else561.i ], [ -22, %if.then351.i ], [ -22, %if.then35.i ], [ -22, %if.then40.i ], [ -22, %if.then49.i ], [ -22, %if.then45.i ], [ -22, %if.then90.i ], [ %call178.i, %do.end183.i ], [ -22, %if.then176.i ], [ %call192.i, %do.end197.i ], [ -22, %if.then190.i ], [ %call206.i, %do.end211.i ], [ -22, %if.then204.i ], [ %call220.i, %do.end225.i ], [ -22, %if.then218.i ], [ %call234.i, %do.end239.i ], [ -22, %if.then232.i ], [ -22, %if.then254.i ], [ -22, %if.then250.i ], [ -22, %if.then246.i ], [ %call307.i, %do.end312.i ], [ -22, %if.then305.i ], [ %call331.i, %do.end336.i ], [ -22, %if.then323.i ], [ -22, %if.then319.i ], [ -22, %if.then385.i ], [ -22, %if.then343.i ], [ -22, %if.then573.i ], [ -22, %if.then593.i ], [ -22, %if.then579.i ], [ -22, %if.then611.i ], [ -22, %if.then738.i ], [ -22, %if.then766.i ], [ -22, %if.then804.i ], [ -22, %if.then788.i ], [ -22, %if.then1025.i ], [ -22, %if.then1042.i ], [ -22, %if.then1059.i ], [ -22, %if.then1081.i ], [ -22, %if.then1065.i ], [ -22, %if.then1087.i ], [ -22, %do.end1281.i ], [ -22, %do.end1336.i ], [ -22, %if.then1229.i ], [ -22, %cleanup1398.i ], [ -22, %sw.default1408.i ], [ %call745.i, %if.end744.i.sw.epilog63.thread157_crit_edge ], [ %call776.i, %if.end775.i.sw.epilog63.thread157_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reloc.i) #6
  br label %cleanup.sink.split

sw.epilog63:                                      ; preds = %cleanup1398.thread.i, %evergreen_is_safe_reg.exit2389.i.sw.epilog63_crit_edge, %if.end1313.i, %if.end1211.i, %if.end1161.i, %if.end1131.i.sw.epilog63_crit_edge, %if.end1066.i.sw.epilog63_crit_edge, %sw.bb1044.i.sw.epilog63_crit_edge, %sw.bb1027.i.sw.epilog63_crit_edge, %sw.bb1010.i.sw.epilog63_crit_edge, %for.inc1007.i.sw.epilog63_crit_edge, %for.cond806.preheader.i.sw.epilog63_crit_edge, %for.inc780.i.sw.epilog63_crit_edge, %if.end767.i.sw.epilog63_crit_edge, %for.inc.i.sw.epilog63_crit_edge, %if.end739.i.sw.epilog63_crit_edge, %radeon_get_ib_value.exit2197.i, %radeon_get_ib_value.exit2179.i, %radeon_get_ib_value.exit2161.i, %sw.bb603.i.sw.epilog63_crit_edge, %if.end594.i, %radeon_get_ib_value.exit2143.i.sw.epilog63_crit_edge, %sw.bb570.i.sw.epilog63_crit_edge, %if.end551.i, %if.then503.i.sw.epilog63_crit_edge, %if.else.i.sw.epilog63_crit_edge, %radeon_get_ib_value.exit2067.i, %if.end324.i.sw.epilog63_crit_edge, %if.end306.i.sw.epilog63_crit_edge, %if.end290.i.sw.epilog63_crit_edge, %if.end255.i, %if.end233.i.sw.epilog63_crit_edge, %if.end219.i.sw.epilog63_crit_edge, %if.end205.i.sw.epilog63_crit_edge, %if.end191.i.sw.epilog63_crit_edge, %if.end177.i.sw.epilog63_crit_edge, %radeon_get_ib_value.exit2049.i.sw.epilog63_crit_edge, %radeon_get_ib_value.exit2031.i.sw.epilog63_crit_edge, %sw.bb86.i.sw.epilog63_crit_edge, %radeon_get_ib_value.exit2022.i.sw.epilog63_crit_edge, %if.end46.i.sw.epilog63_crit_edge, %sw.bb37.i.sw.epilog63_crit_edge, %sw.bb31.i.sw.epilog63_crit_edge, %cleanup.i, %if.end.i.sw.epilog63_crit_edge, %sw.bb57.sw.epilog63_crit_edge, %sw.bb57.sw.epilog63_crit_edge4362
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reloc.i) #6
  br label %do.cond69

do.cond69:                                        ; preds = %sw.epilog63, %for.cond.i.do.cond69_crit_edge, %if.end52.do.cond69_crit_edge
  %679 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %679)
  %680 = load i32, ptr %idx, align 8
  %681 = ptrtoint ptr %chunk_ib.i.i to i32
  call void @__asan_load4_noabort(i32 %681)
  %682 = load ptr, ptr %chunk_ib.i.i, align 4
  %683 = ptrtoint ptr %682 to i32
  call void @__asan_load4_noabort(i32 %683)
  %684 = load i32, ptr %682, align 4
  %cmp71 = icmp ult i32 %680, %684
  br i1 %cmp71, label %do.cond69.do.body47_crit_edge, label %do.cond69.cleanup.sink.split_crit_edge

do.cond69.cleanup.sink.split_crit_edge:           ; preds = %do.cond69
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.cond69.do.body47_crit_edge:                    ; preds = %do.cond69
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body47

cleanup.sink.split:                               ; preds = %do.cond69.cleanup.sink.split_crit_edge, %sw.epilog63.thread157, %sw.default59, %do.end.i.i, %if.then.i.i, %do.body47.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -22, %sw.default59 ], [ %retval.23.i.ph, %sw.epilog63.thread157 ], [ %call.i.i.i, %if.then.i.i ], [ -22, %do.end.i.i ], [ %call48, %do.body47.cleanup.sink.split_crit_edge ], [ 0, %do.cond69.cleanup.sink.split_crit_edge ]
  %685 = ptrtoint ptr %track1 to i32
  call void @__asan_load4_noabort(i32 %685)
  %686 = load ptr, ptr %track1, align 8
  call void @kfree(ptr noundef %686) #6
  %687 = ptrtoint ptr %track1 to i32
  call void @__asan_store4_noabort(i32 %687)
  store ptr null, ptr %track1, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_cs_packet_parse(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @evergreen_dma_cs_parse(ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  %src_reloc = alloca ptr, align 4
  %dst_reloc = alloca ptr, align 4
  %dst2_reloc = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chunk_ib = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %0 = ptrtoint ptr %chunk_ib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chunk_ib, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %src_reloc) #6
  %2 = ptrtoint ptr %src_reloc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %src_reloc, align 4, !annotation !629
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dst_reloc) #6
  %3 = ptrtoint ptr %dst_reloc to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %dst_reloc, align 4, !annotation !629
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dst2_reloc) #6
  %4 = ptrtoint ptr %dst2_reloc to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %dst2_reloc, align 4, !annotation !629
  %ptr = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 16, i32 3
  %5 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ptr, align 8
  %idx2 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 6
  %family914 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 19
  br label %do.body

do.body:                                          ; preds = %do.cond1100.do.body_crit_edge, %entry
  %7 = ptrtoint ptr %idx2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idx2, align 8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp.not = icmp ult i32 %8, %10
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, i32 noundef %8, i32 noundef %10) #6
  br label %cleanup

if.end:                                           ; preds = %do.body
  %11 = ptrtoint ptr %chunk_ib to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chunk_ib, align 4
  %kdata.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %kdata.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %kdata.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.radeon_get_ib_value.exit_crit_edge

if.end.radeon_get_ib_value.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_get_ib_value.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ptr, align 8
  br label %radeon_get_ib_value.exit

radeon_get_ib_value.exit:                         ; preds = %if.end.i, %if.end.radeon_get_ib_value.exit_crit_edge
  %.pn.i = phi ptr [ %16, %if.end.i ], [ %14, %if.end.radeon_get_ib_value.exit_crit_edge ]
  %retval.0.in.i = getelementptr i32, ptr %.pn.i, i32 %8
  %17 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %retval.0.i = load i32, ptr %retval.0.in.i, align 4
  %shr = lshr i32 %retval.0.i, 28
  %and6 = and i32 %retval.0.i, 1048575
  %and7 = lshr i32 %retval.0.i, 20
  %18 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.387)
  switch i32 %shr, label %sw.default1098 [
    i32 2, label %sw.bb
    i32 3, label %sw.bb58
    i32 13, label %sw.bb1048
    i32 15, label %sw.bb1095
  ]

sw.bb:                                            ; preds = %radeon_get_ib_value.exit
  %call9 = call i32 @r600_dma_cs_next_reloc(ptr noundef %p, ptr noundef nonnull %dst_reloc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #6
  br label %cleanup

if.end11:                                         ; preds = %sw.bb
  %trunc1511 = trunc i32 %and7 to i8
  %19 = zext i8 %trunc1511 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.388)
  switch i8 %trunc1511, label %sw.default [
    i8 8, label %sw.bb12
    i8 0, label %sw.bb21
  ]

sw.bb12:                                          ; preds = %if.end11
  %add = add nuw i32 %8, 1
  %20 = ptrtoint ptr %chunk_ib to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chunk_ib, align 4
  %kdata.i1513 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %kdata.i1513 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %kdata.i1513, align 4
  %tobool.not.i1514 = icmp eq ptr %23, null
  br i1 %tobool.not.i1514, label %if.end.i1516, label %sw.bb12.radeon_get_ib_value.exit1520_crit_edge

sw.bb12.radeon_get_ib_value.exit1520_crit_edge:   ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_get_ib_value.exit1520

if.end.i1516:                                     ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ptr, align 8
  br label %radeon_get_ib_value.exit1520

radeon_get_ib_value.exit1520:                     ; preds = %if.end.i1516, %sw.bb12.radeon_get_ib_value.exit1520_crit_edge
  %.pn.i1517 = phi ptr [ %25, %if.end.i1516 ], [ %23, %sw.bb12.radeon_get_ib_value.exit1520_crit_edge ]
  %retval.0.in.i1518 = getelementptr i32, ptr %.pn.i1517, i32 %add
  %26 = ptrtoint ptr %retval.0.in.i1518 to i32
  call void @__asan_load4_noabort(i32 %26)
  %retval.0.i1519 = load i32, ptr %retval.0.in.i1518, align 4
  %conv = zext i32 %retval.0.i1519 to i64
  %shl = shl nuw nsw i64 %conv, 8
  %27 = ptrtoint ptr %dst_reloc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dst_reloc, align 4
  %gpu_offset = getelementptr inbounds %struct.radeon_bo_list, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %gpu_offset to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %gpu_offset, align 8
  %shr14 = lshr i64 %30, 8
  %conv15 = trunc i64 %shr14 to i32
  %arrayidx = getelementptr i32, ptr %6, i32 %add
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx, align 4
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end11
  %add22 = add nuw i32 %8, 1
  %33 = ptrtoint ptr %chunk_ib to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chunk_ib, align 4
  %kdata.i1522 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %kdata.i1522 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %kdata.i1522, align 4
  %tobool.not.i1523 = icmp eq ptr %36, null
  br i1 %tobool.not.i1523, label %if.end.i1534, label %sw.bb21.radeon_get_ib_value.exit1538_crit_edge

sw.bb21.radeon_get_ib_value.exit1538_crit_edge:   ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_get_ib_value.exit1538

if.end.i1534:                                     ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ptr, align 8
  br label %radeon_get_ib_value.exit1538

radeon_get_ib_value.exit1538:                     ; preds = %if.end.i1534, %sw.bb21.radeon_get_ib_value.exit1538_crit_edge
  %.pn2368 = phi ptr [ %38, %if.end.i1534 ], [ %36, %sw.bb21.radeon_get_ib_value.exit1538_crit_edge ]
  %conv242001.in.in = getelementptr i32, ptr %.pn2368, i32 %add22
  %39 = ptrtoint ptr %conv242001.in.in to i32
  call void @__asan_load4_noabort(i32 %39)
  %conv242001.in = load i32, ptr %conv242001.in.in, align 4
  %conv242001 = zext i32 %conv242001.in to i64
  %add252003 = add i32 %8, 2
  %retval.0.in.i1536 = getelementptr i32, ptr %.pn2368, i32 %add252003
  %40 = ptrtoint ptr %retval.0.in.i1536 to i32
  call void @__asan_load4_noabort(i32 %40)
  %retval.0.i1537 = load i32, ptr %retval.0.in.i1536, align 4
  %and27 = and i32 %retval.0.i1537, 255
  %conv28 = zext i32 %and27 to i64
  %shl29 = shl nuw nsw i64 %conv28, 32
  %or = or i64 %shl29, %conv242001
  %41 = ptrtoint ptr %dst_reloc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dst_reloc, align 4
  %gpu_offset30 = getelementptr inbounds %struct.radeon_bo_list, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %gpu_offset30 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %gpu_offset30, align 8
  %45 = trunc i64 %44 to i32
  %conv32 = and i32 %45, -4
  %arrayidx34 = getelementptr i32, ptr %6, i32 %add22
  %46 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx34, align 4
  %add35 = add i32 %conv32, %47
  store i32 %add35, ptr %arrayidx34, align 4
  %48 = load ptr, ptr %dst_reloc, align 4
  %gpu_offset36 = getelementptr inbounds %struct.radeon_bo_list, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %gpu_offset36 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %gpu_offset36, align 8
  %shr37 = lshr i64 %50, 32
  %conv39 = trunc i64 %shr37 to i32
  %and40 = and i32 %conv39, 255
  %arrayidx42 = getelementptr i32, ptr %6, i32 %add252003
  %51 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx42, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, i32 noundef %8, i32 noundef %retval.0.i) #6
  br label %cleanup

sw.epilog:                                        ; preds = %radeon_get_ib_value.exit1538, %radeon_get_ib_value.exit1520
  %.sink3008 = phi i32 [ %52, %radeon_get_ib_value.exit1538 ], [ %conv15, %radeon_get_ib_value.exit1520 ]
  %and40.sink = phi i32 [ %and40, %radeon_get_ib_value.exit1538 ], [ %32, %radeon_get_ib_value.exit1520 ]
  %arrayidx42.sink = phi ptr [ %arrayidx42, %radeon_get_ib_value.exit1538 ], [ %arrayidx, %radeon_get_ib_value.exit1520 ]
  %.sink = phi i32 [ 3, %radeon_get_ib_value.exit1538 ], [ 7, %radeon_get_ib_value.exit1520 ]
  %dst_offset.0 = phi i64 [ %or, %radeon_get_ib_value.exit1538 ], [ %shl, %radeon_get_ib_value.exit1520 ]
  %add43 = add i32 %and40.sink, %.sink3008
  %53 = ptrtoint ptr %arrayidx42.sink to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %add43, ptr %arrayidx42.sink, align 4
  %add44 = add nuw nsw i32 %and6, %.sink
  %54 = ptrtoint ptr %idx2 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %idx2, align 8
  %add46 = add i32 %add44, %55
  store i32 %add46, ptr %idx2, align 8
  %mul = shl nuw nsw i32 %and6, 2
  %conv47 = zext i32 %mul to i64
  %add48 = add nsw i64 %dst_offset.0, %conv47
  %56 = ptrtoint ptr %dst_reloc to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dst_reloc, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 8
  %size.i = getelementptr inbounds %struct.radeon_bo, ptr %59, i32 0, i32 4, i32 0, i32 5
  %60 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %size.i, align 8
  %conv50 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add48, i64 %conv50)
  %cmp51 = icmp ugt i64 %add48, %conv50
  br i1 %cmp51, label %do.end, label %sw.epilog.do.cond1100_crit_edge

sw.epilog.do.cond1100_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond1100

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %63, ptr noundef nonnull @.str.4, i64 noundef %dst_offset.0, i32 noundef %61) #10
  br label %cleanup

sw.bb58:                                          ; preds = %radeon_get_ib_value.exit
  %call59 = call i32 @r600_dma_cs_next_reloc(ptr noundef %p, ptr noundef nonnull %src_reloc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %if.then61

if.then61:                                        ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9) #6
  br label %cleanup

if.end62:                                         ; preds = %sw.bb58
  %call63 = call i32 @r600_dma_cs_next_reloc(ptr noundef %p, ptr noundef nonnull %dst_reloc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end66, label %if.then65

if.then65:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9) #6
  br label %cleanup

if.end66:                                         ; preds = %if.end62
  %trunc = trunc i32 %and7 to i8
  %64 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.389)
  switch i8 %trunc, label %sw.default1046 [
    i8 0, label %sw.bb67
    i8 8, label %sw.bb154
    i8 64, label %sw.bb267
    i8 65, label %sw.bb350
    i8 68, label %sw.bb385
    i8 72, label %sw.bb518
    i8 73, label %sw.bb631
    i8 75, label %sw.bb686
    i8 76, label %sw.bb799
    i8 77, label %sw.bb913
    i8 79, label %sw.bb933
  ]

sw.bb67:                                          ; preds = %if.end66
  %add68 = add i32 %8, 2
  %65 = ptrtoint ptr %chunk_ib to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %chunk_ib, align 4
  %kdata.i1541 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %kdata.i1541 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %kdata.i1541, align 4
  %tobool.not.i1542 = icmp eq ptr %68, null
  br i1 %tobool.not.i1542, label %if.end.i1571, label %radeon_get_ib_value.exit1566

radeon_get_ib_value.exit1566:                     ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #8
  %retval.0.in.i1546 = getelementptr i32, ptr %68, i32 %add68
  %69 = ptrtoint ptr %retval.0.in.i1546 to i32
  call void @__asan_load4_noabort(i32 %69)
  %retval.0.i1547 = load i32, ptr %retval.0.in.i1546, align 4
  %conv70 = zext i32 %retval.0.i1547 to i64
  %add71 = add i32 %8, 4
  %retval.0.in.i1555 = getelementptr i32, ptr %68, i32 %add71
  %70 = ptrtoint ptr %retval.0.in.i1555 to i32
  call void @__asan_load4_noabort(i32 %70)
  %retval.0.i1556 = load i32, ptr %retval.0.in.i1555, align 4
  %and73 = and i32 %retval.0.i1556, 255
  %conv74 = zext i32 %and73 to i64
  %shl75 = shl nuw nsw i64 %conv74, 32
  %or76 = or i64 %shl75, %conv70
  %add77 = add nuw i32 %8, 1
  %retval.0.in.i1564 = getelementptr i32, ptr %68, i32 %add77
  br label %radeon_get_ib_value.exit1575

if.end.i1571:                                     ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #8
  %71 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ptr, align 8
  %retval.0.in.i15462006 = getelementptr i32, ptr %72, i32 %add68
  %73 = ptrtoint ptr %retval.0.in.i15462006 to i32
  call void @__asan_load4_noabort(i32 %73)
  %retval.0.i15472007 = load i32, ptr %retval.0.in.i15462006, align 4
  %conv702008 = zext i32 %retval.0.i15472007 to i64
  %add712009 = add i32 %8, 4
  %retval.0.in.i15552017 = getelementptr i32, ptr %72, i32 %add712009
  %74 = ptrtoint ptr %retval.0.in.i15552017 to i32
  call void @__asan_load4_noabort(i32 %74)
  %retval.0.i15562018 = load i32, ptr %retval.0.in.i15552017, align 4
  %and732019 = and i32 %retval.0.i15562018, 255
  %conv742020 = zext i32 %and732019 to i64
  %shl752021 = shl nuw nsw i64 %conv742020, 32
  %or762022 = or i64 %shl752021, %conv702008
  %add772023 = add nuw i32 %8, 1
  %retval.0.in.i15642034 = getelementptr i32, ptr %72, i32 %add772023
  br label %radeon_get_ib_value.exit1575

radeon_get_ib_value.exit1575:                     ; preds = %if.end.i1571, %radeon_get_ib_value.exit1566
  %retval.0.i15652043.in = phi ptr [ %retval.0.in.i15642034, %if.end.i1571 ], [ %retval.0.in.i1564, %radeon_get_ib_value.exit1566 ]
  %add71201220242041 = phi i32 [ %add712009, %if.end.i1571 ], [ %add71, %radeon_get_ib_value.exit1566 ]
  %or7620262039 = phi i64 [ %or762022, %if.end.i1571 ], [ %or76, %radeon_get_ib_value.exit1566 ]
  %add7720282037 = phi i32 [ %add772023, %if.end.i1571 ], [ %add77, %radeon_get_ib_value.exit1566 ]
  %.pn.i1572 = phi ptr [ %72, %if.end.i1571 ], [ %68, %radeon_get_ib_value.exit1566 ]
  %add802045 = add i32 %8, 3
  %mul86 = shl nuw nsw i32 %and6, 2
  %conv87 = zext i32 %mul86 to i64
  %add88 = add nuw nsw i64 %or7620262039, %conv87
  %75 = ptrtoint ptr %src_reloc to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %src_reloc, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 8
  %size.i1576 = getelementptr inbounds %struct.radeon_bo, ptr %78, i32 0, i32 4, i32 0, i32 5
  %79 = ptrtoint ptr %size.i1576 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %size.i1576, align 8
  %conv91 = zext i32 %80 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add88, i64 %conv91)
  %cmp92 = icmp ugt i64 %add88, %conv91
  br i1 %cmp92, label %do.end97, label %if.end104

do.end97:                                         ; preds = %radeon_get_ib_value.exit1575
  call void @__sanitizer_cov_trace_pc() #8
  %81 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %82, ptr noundef nonnull @.str.11, i64 noundef %add88, i32 noundef %80) #10
  br label %cleanup

if.end104:                                        ; preds = %radeon_get_ib_value.exit1575
  %retval.0.in.i1573 = getelementptr i32, ptr %.pn.i1572, i32 %add802045
  %83 = ptrtoint ptr %retval.0.in.i1573 to i32
  call void @__asan_load4_noabort(i32 %83)
  %retval.0.i1574 = load i32, ptr %retval.0.in.i1573, align 4
  %84 = ptrtoint ptr %retval.0.i15652043.in to i32
  call void @__asan_load4_noabort(i32 %84)
  %retval.0.i15652043 = load i32, ptr %retval.0.i15652043.in, align 4
  %conv79 = zext i32 %retval.0.i15652043 to i64
  %and82 = and i32 %retval.0.i1574, 255
  %conv83 = zext i32 %and82 to i64
  %shl84 = shl nuw nsw i64 %conv83, 32
  %or85 = add nuw nsw i64 %conv79, %conv87
  %add107 = add nuw nsw i64 %or85, %shl84
  %85 = ptrtoint ptr %dst_reloc to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dst_reloc, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 8
  %size.i1578 = getelementptr inbounds %struct.radeon_bo, ptr %88, i32 0, i32 4, i32 0, i32 5
  %89 = ptrtoint ptr %size.i1578 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %size.i1578, align 8
  %conv110 = zext i32 %90 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add107, i64 %conv110)
  %cmp111 = icmp ugt i64 %add107, %conv110
  br i1 %cmp111, label %do.end116, label %if.end123

do.end116:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  %91 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %92, ptr noundef nonnull @.str.14, i64 noundef %add107, i32 noundef %90) #10
  br label %cleanup

if.end123:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  %gpu_offset124 = getelementptr inbounds %struct.radeon_bo_list, ptr %86, i32 0, i32 2
  %93 = ptrtoint ptr %gpu_offset124 to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %gpu_offset124, align 8
  %95 = trunc i64 %94 to i32
  %conv126 = and i32 %95, -4
  %arrayidx128 = getelementptr i32, ptr %6, i32 %add7720282037
  %96 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx128, align 4
  %add129 = add i32 %conv126, %97
  store i32 %add129, ptr %arrayidx128, align 4
  %98 = ptrtoint ptr %src_reloc to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %src_reloc, align 4
  %gpu_offset130 = getelementptr inbounds %struct.radeon_bo_list, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %gpu_offset130 to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %gpu_offset130, align 8
  %102 = trunc i64 %101 to i32
  %conv132 = and i32 %102, -4
  %arrayidx134 = getelementptr i32, ptr %6, i32 %add68
  %103 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx134, align 4
  %add135 = add i32 %conv132, %104
  store i32 %add135, ptr %arrayidx134, align 4
  %105 = ptrtoint ptr %dst_reloc to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dst_reloc, align 4
  %gpu_offset136 = getelementptr inbounds %struct.radeon_bo_list, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %gpu_offset136 to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %gpu_offset136, align 8
  %shr137 = lshr i64 %108, 32
  %conv139 = trunc i64 %shr137 to i32
  %and140 = and i32 %conv139, 255
  %arrayidx142 = getelementptr i32, ptr %6, i32 %add802045
  %109 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx142, align 4
  %add143 = add i32 %and140, %110
  store i32 %add143, ptr %arrayidx142, align 4
  %111 = load ptr, ptr %src_reloc, align 4
  %gpu_offset144 = getelementptr inbounds %struct.radeon_bo_list, ptr %111, i32 0, i32 2
  %112 = ptrtoint ptr %gpu_offset144 to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %gpu_offset144, align 8
  %shr145 = lshr i64 %113, 32
  %conv147 = trunc i64 %shr145 to i32
  %and148 = and i32 %conv147, 255
  %arrayidx150 = getelementptr i32, ptr %6, i32 %add71201220242041
  %114 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx150, align 4
  %add151 = add i32 %and148, %115
  store i32 %add151, ptr %arrayidx150, align 4
  %116 = ptrtoint ptr %idx2 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %idx2, align 8
  %add153 = add i32 %117, 5
  br label %do.cond1100.sink.split

sw.bb154:                                         ; preds = %if.end66
  %add155 = add i32 %8, 2
  %118 = ptrtoint ptr %chunk_ib to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %chunk_ib, align 4
  %kdata.i1581 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %kdata.i1581 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %kdata.i1581, align 4
  %tobool.not.i1582 = icmp eq ptr %121, null
  br i1 %tobool.not.i1582, label %radeon_get_ib_value.exit1588, label %radeon_get_ib_value.exit1588.thread

radeon_get_ib_value.exit1588:                     ; preds = %sw.bb154
  %122 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ptr, align 8
  %retval.0.in.i1586 = getelementptr i32, ptr %123, i32 %add155
  %124 = ptrtoint ptr %retval.0.in.i1586 to i32
  call void @__asan_load4_noabort(i32 %124)
  %retval.0.i1587 = load i32, ptr %retval.0.in.i1586, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i1587)
  %tobool158.not = icmp sgt i32 %retval.0.i1587, -1
  br i1 %tobool158.not, label %if.end.i1629, label %if.end.i1593

radeon_get_ib_value.exit1588.thread:              ; preds = %sw.bb154
  %retval.0.in.i15862048 = getelementptr i32, ptr %121, i32 %add155
  %125 = ptrtoint ptr %retval.0.in.i15862048 to i32
  call void @__asan_load4_noabort(i32 %125)
  %retval.0.i15872049 = load i32, ptr %retval.0.in.i15862048, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i15872049)
  %tobool158.not2050 = icmp sgt i32 %retval.0.i15872049, -1
  br i1 %tobool158.not2050, label %radeon_get_ib_value.exit1624.thread, label %radeon_get_ib_value.exit1588.thread.radeon_get_ib_value.exit1597_crit_edge

radeon_get_ib_value.exit1588.thread.radeon_get_ib_value.exit1597_crit_edge: ; preds = %radeon_get_ib_value.exit1588.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_get_ib_value.exit1597

if.end.i1593:                                     ; preds = %radeon_get_ib_value.exit1588
  call void @__sanitizer_cov_trace_pc() #8
  %126 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ptr, align 8
  br label %radeon_get_ib_value.exit1597

radeon_get_ib_value.exit1597:                     ; preds = %if.end.i1593, %radeon_get_ib_value.exit1588.thread.radeon_get_ib_value.exit1597_crit_edge
  %.pn.i1594 = phi ptr [ %127, %if.end.i1593 ], [ %121, %radeon_get_ib_value.exit1588.thread.radeon_get_ib_value.exit1597_crit_edge ]
  %add1602052 = add nuw i32 %8, 1
  %retval.0.in.i1595 = getelementptr i32, ptr %.pn.i1594, i32 %add1602052
  %128 = ptrtoint ptr %retval.0.in.i1595 to i32
  call void @__asan_load4_noabort(i32 %128)
  %retval.0.i1596 = load i32, ptr %retval.0.in.i1595, align 4
  %conv162 = zext i32 %retval.0.i1596 to i64
  %shl163 = shl nuw nsw i64 %conv162, 8
  %129 = ptrtoint ptr %src_reloc to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %src_reloc, align 4
  %gpu_offset164 = getelementptr inbounds %struct.radeon_bo_list, ptr %130, i32 0, i32 2
  %131 = ptrtoint ptr %gpu_offset164 to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %gpu_offset164, align 8
  %shr165 = lshr i64 %132, 8
  %conv166 = trunc i64 %shr165 to i32
  %arrayidx168 = getelementptr i32, ptr %6, i32 %add1602052
  %133 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx168, align 4
  %add169 = add i32 %134, %conv166
  store i32 %add169, ptr %arrayidx168, align 4
  %add170 = add i32 %8, 7
  %135 = ptrtoint ptr %chunk_ib to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %chunk_ib, align 4
  %kdata.i1599 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %kdata.i1599 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %kdata.i1599, align 4
  %tobool.not.i1600 = icmp eq ptr %138, null
  br i1 %tobool.not.i1600, label %if.end.i1611, label %radeon_get_ib_value.exit1597.radeon_get_ib_value.exit1615_crit_edge

radeon_get_ib_value.exit1597.radeon_get_ib_value.exit1615_crit_edge: ; preds = %radeon_get_ib_value.exit1597
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_get_ib_value.exit1615

if.end.i1611:                                     ; preds = %radeon_get_ib_value.exit1597
  call void @__sanitizer_cov_trace_pc() #8
  %139 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %ptr, align 8
  br label %radeon_get_ib_value.exit1615

radeon_get_ib_value.exit1615:                     ; preds = %if.end.i1611, %radeon_get_ib_value.exit1597.radeon_get_ib_value.exit1615_crit_edge
  %.pn2367 = phi ptr [ %140, %if.end.i1611 ], [ %138, %radeon_get_ib_value.exit1597.radeon_get_ib_value.exit1615_crit_edge ]
  %conv1722058.in.in = getelementptr i32, ptr %.pn2367, i32 %add170
  %141 = ptrtoint ptr %conv1722058.in.in to i32
  call void @__asan_load4_noabort(i32 %141)
  %conv1722058.in = load i32, ptr %conv1722058.in.in, align 4
  %conv1722058 = zext i32 %conv1722058.in to i64
  %add1732060 = add i32 %8, 8
  %retval.0.in.i1613 = getelementptr i32, ptr %.pn2367, i32 %add1732060
  %142 = ptrtoint ptr %retval.0.in.i1613 to i32
  call void @__asan_load4_noabort(i32 %142)
  %retval.0.i1614 = load i32, ptr %retval.0.in.i1613, align 4
  %and175 = and i32 %retval.0.i1614, 255
  %conv176 = zext i32 %and175 to i64
  %shl177 = shl nuw nsw i64 %conv176, 32
  %or178 = or i64 %shl177, %conv1722058
  %143 = ptrtoint ptr %dst_reloc to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dst_reloc, align 4
  %gpu_offset179 = getelementptr inbounds %struct.radeon_bo_list, ptr %144, i32 0, i32 2
  %145 = ptrtoint ptr %gpu_offset179 to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %gpu_offset179, align 8
  %147 = trunc i64 %146 to i32
  %conv181 = and i32 %147, -4
  %arrayidx183 = getelementptr i32, ptr %6, i32 %add170
  %148 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx183, align 4
  %add184 = add i32 %conv181, %149
  store i32 %add184, ptr %arrayidx183, align 4
  %150 = load ptr, ptr %dst_reloc, align 4
  %gpu_offset185 = getelementptr inbounds %struct.radeon_bo_list, ptr %150, i32 0, i32 2
  %151 = ptrtoint ptr %gpu_offset185 to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %gpu_offset185, align 8
  %shr186 = lshr i64 %152, 32
  %conv188 = trunc i64 %shr186 to i32
  %and189 = and i32 %conv188, 255
  %arrayidx191 = getelementptr i32, ptr %6, i32 %add1732060
  %153 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx191, align 4
  br label %if.end226

radeon_get_ib_value.exit1624.thread:              ; preds = %radeon_get_ib_value.exit1588.thread
  call void @__sanitizer_cov_trace_pc() #8
  %add1932062 = add i32 %8, 7
  %retval.0.in.i16222066 = getelementptr i32, ptr %121, i32 %add1932062
  br label %radeon_get_ib_value.exit1633

if.end.i1629:                                     ; preds = %radeon_get_ib_value.exit1588
  call void @__sanitizer_cov_trace_pc() #8
  %add193 = add i32 %8, 7
  %155 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %ptr, align 8
  %retval.0.in.i1622 = getelementptr i32, ptr %156, i32 %add193
  br label %radeon_get_ib_value.exit1633

radeon_get_ib_value.exit1633:                     ; preds = %if.end.i1629, %radeon_get_ib_value.exit1624.thread
  %conv1952071.in.in = phi ptr [ %retval.0.in.i1622, %if.end.i1629 ], [ %retval.0.in.i16222066, %radeon_get_ib_value.exit1624.thread ]
  %add19320632070 = phi i32 [ %add193, %if.end.i1629 ], [ %add1932062, %radeon_get_ib_value.exit1624.thread ]
  %.pn.i1630 = phi ptr [ %156, %if.end.i1629 ], [ %121, %radeon_get_ib_value.exit1624.thread ]
  %157 = ptrtoint ptr %conv1952071.in.in to i32
  call void @__asan_load4_noabort(i32 %157)
  %conv1952071.in = load i32, ptr %conv1952071.in.in, align 4
  %conv1952071 = zext i32 %conv1952071.in to i64
  %add1962072 = add i32 %8, 8
  %retval.0.in.i1631 = getelementptr i32, ptr %.pn.i1630, i32 %add1962072
  %158 = ptrtoint ptr %retval.0.in.i1631 to i32
  call void @__asan_load4_noabort(i32 %158)
  %retval.0.i1632 = load i32, ptr %retval.0.in.i1631, align 4
  %and198 = and i32 %retval.0.i1632, 255
  %conv199 = zext i32 %and198 to i64
  %shl200 = shl nuw nsw i64 %conv199, 32
  %or201 = or i64 %shl200, %conv1952071
  %159 = ptrtoint ptr %src_reloc to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %src_reloc, align 4
  %gpu_offset202 = getelementptr inbounds %struct.radeon_bo_list, ptr %160, i32 0, i32 2
  %161 = ptrtoint ptr %gpu_offset202 to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %gpu_offset202, align 8
  %163 = trunc i64 %162 to i32
  %conv204 = and i32 %163, -4
  %arrayidx206 = getelementptr i32, ptr %6, i32 %add19320632070
  %164 = ptrtoint ptr %arrayidx206 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx206, align 4
  %add207 = add i32 %conv204, %165
  store i32 %add207, ptr %arrayidx206, align 4
  %166 = load ptr, ptr %src_reloc, align 4
  %gpu_offset208 = getelementptr inbounds %struct.radeon_bo_list, ptr %166, i32 0, i32 2
  %167 = ptrtoint ptr %gpu_offset208 to i32
  call void @__asan_load8_noabort(i32 %167)
  %168 = load i64, ptr %gpu_offset208, align 8
  %shr209 = lshr i64 %168, 32
  %conv211 = trunc i64 %shr209 to i32
  %and212 = and i32 %conv211, 255
  %arrayidx214 = getelementptr i32, ptr %6, i32 %add1962072
  %169 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %arrayidx214, align 4
  %add215 = add i32 %and212, %170
  store i32 %add215, ptr %arrayidx214, align 4
  %add216 = add nuw i32 %8, 1
  %171 = ptrtoint ptr %chunk_ib to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %chunk_ib, align 4
  %kdata.i1635 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %172, i32 0, i32 1
  %173 = ptrtoint ptr %kdata.i1635 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %kdata.i1635, align 4
  %tobool.not.i1636 = icmp eq ptr %174, null
  br i1 %tobool.not.i1636, label %if.end.i1638, label %radeon_get_ib_value.exit1633.radeon_get_ib_value.exit1642_crit_edge

radeon_get_ib_value.exit1633.radeon_get_ib_value.exit1642_crit_edge: ; preds = %radeon_get_ib_value.exit1633
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_get_ib_value.exit1642

if.end.i1638:                                     ; preds = %radeon_get_ib_value.exit1633
  call void @__sanitizer_cov_trace_pc() #8
  %175 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %ptr, align 8
  br label %radeon_get_ib_value.exit1642

radeon_get_ib_value.exit1642:                     ; preds = %if.end.i1638, %radeon_get_ib_value.exit1633.radeon_get_ib_value.exit1642_crit_edge
  %.pn.i1639 = phi ptr [ %176, %if.end.i1638 ], [ %174, %radeon_get_ib_value.exit1633.radeon_get_ib_value.exit1642_crit_edge ]
  %retval.0.in.i1640 = getelementptr i32, ptr %.pn.i1639, i32 %add216
  %177 = ptrtoint ptr %retval.0.in.i1640 to i32
  call void @__asan_load4_noabort(i32 %177)
  %retval.0.i1641 = load i32, ptr %retval.0.in.i1640, align 4
  %conv218 = zext i32 %retval.0.i1641 to i64
  %shl219 = shl nuw nsw i64 %conv218, 8
  %178 = ptrtoint ptr %dst_reloc to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %dst_reloc, align 4
  %gpu_offset220 = getelementptr inbounds %struct.radeon_bo_list, ptr %179, i32 0, i32 2
  %180 = ptrtoint ptr %gpu_offset220 to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %gpu_offset220, align 8
  %shr221 = lshr i64 %181, 8
  %conv222 = trunc i64 %shr221 to i32
  %arrayidx224 = getelementptr i32, ptr %6, i32 %add216
  %182 = ptrtoint ptr %arrayidx224 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %arrayidx224, align 4
  br label %if.end226

if.end226:                                        ; preds = %radeon_get_ib_value.exit1642, %radeon_get_ib_value.exit1615
  %conv222.sink = phi i32 [ %conv222, %radeon_get_ib_value.exit1642 ], [ %154, %radeon_get_ib_value.exit1615 ]
  %.sink3009 = phi i32 [ %183, %radeon_get_ib_value.exit1642 ], [ %and189, %radeon_get_ib_value.exit1615 ]
  %arrayidx224.sink = phi ptr [ %arrayidx224, %radeon_get_ib_value.exit1642 ], [ %arrayidx191, %radeon_get_ib_value.exit1615 ]
  %src_offset.0 = phi i64 [ %or201, %radeon_get_ib_value.exit1642 ], [ %shl163, %radeon_get_ib_value.exit1615 ]
  %dst_offset.1 = phi i64 [ %shl219, %radeon_get_ib_value.exit1642 ], [ %or178, %radeon_get_ib_value.exit1615 ]
  %add225 = add i32 %.sink3009, %conv222.sink
  %184 = ptrtoint ptr %arrayidx224.sink to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %add225, ptr %arrayidx224.sink, align 4
  %mul227 = shl nuw nsw i32 %and6, 2
  %conv228 = zext i32 %mul227 to i64
  %add229 = add nsw i64 %src_offset.0, %conv228
  %185 = ptrtoint ptr %src_reloc to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %src_reloc, align 4
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %186, align 8
  %size.i1643 = getelementptr inbounds %struct.radeon_bo, ptr %188, i32 0, i32 4, i32 0, i32 5
  %189 = ptrtoint ptr %size.i1643 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %size.i1643, align 8
  %conv232 = zext i32 %190 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add229, i64 %conv232)
  %cmp233 = icmp ugt i64 %add229, %conv232
  br i1 %cmp233, label %do.end238, label %if.end245

do.end238:                                        ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #8
  %191 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %192, ptr noundef nonnull @.str.17, i64 noundef %add229, i32 noundef %190) #10
  br label %cleanup

if.end245:                                        ; preds = %if.end226
  %add248 = add nsw i64 %dst_offset.1, %conv228
  %193 = ptrtoint ptr %dst_reloc to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %dst_reloc, align 4
  %195 = ptrtoint ptr %194 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %194, align 8
  %size.i1645 = getelementptr inbounds %struct.radeon_bo, ptr %196, i32 0, i32 4, i32 0, i32 5
  %197 = ptrtoint ptr %size.i1645 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %size.i1645, align 8
  %conv251 = zext i32 %198 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add248, i64 %conv251)
  %cmp252 = icmp ugt i64 %add248, %conv251
  br i1 %cmp252, label %do.end257, label %if.end264

do.end257:                                        ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #8
  %199 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %200, ptr noundef nonnull @.str.20, i64 noundef %add248, i32 noundef %198) #10
  br label %cleanup

if.end264:                                        ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #8
  %201 = ptrtoint ptr %idx2 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %idx2, align 8
  %add266 = add i32 %202, 9
  br label %do.cond1100.sink.split

sw.bb267:                                         ; preds = %if.end66
  %add268 = add i32 %8, 2
  %203 = ptrtoint ptr %chunk_ib to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %chunk_ib, align 4
  %kdata.i1648 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %204, i32 0, i32 1
  %205 = ptrtoint ptr %kdata.i1648 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %kdata.i1648, align 4
  %tobool.not.i1649 = icmp eq ptr %206, null
  br i1 %tobool.not.i1649, label %if.end.i1678, label %radeon_get_ib_value.exit1673

radeon_get_ib_value.exit1673:                     ; preds = %sw.bb267
  call void @__sanitizer_cov_trace_pc() #8
  %retval.0.in.i1653 = getelementptr i32, ptr %206, i32 %add268
  %207 = ptrtoint ptr %retval.0.in.i1653 to i32
  call void @__asan_load4_noabort(i32 %207)
  %retval.0.i1654 = load i32, ptr %retval.0.in.i1653, align 4
  %conv270 = zext i32 %retval.0.i1654 to i64
  %add271 = add i32 %8, 4
  %retval.0.in.i1662 = getelementptr i32, ptr %206, i32 %add271
  %208 = ptrtoint ptr %retval.0.in.i1662 to i32
  call void @__asan_load4_noabort(i32 %208)
  %retval.0.i1663 = load i32, ptr %retval.0.in.i1662, align 4
  %and273 = and i32 %retval.0.i1663, 255
  %conv274 = zext i32 %and273 to i64
  %shl275 = shl nuw nsw i64 %conv274, 32
  %or276 = or i64 %shl275, %conv270
  %add277 = add nuw i32 %8, 1
  %retval.0.in.i1671 = getelementptr i32, ptr %206, i32 %add277
  br label %radeon_get_ib_value.exit1682

if.end.i1678:                                     ; preds = %sw.bb267
  call void @__sanitizer_cov_trace_pc() #8
  %209 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %ptr, align 8
  %retval.0.in.i16532074 = getelementptr i32, ptr %210, i32 %add268
  %211 = ptrtoint ptr %retval.0.in.i16532074 to i32
  call void @__asan_load4_noabort(i32 %211)
  %retval.0.i16542075 = load i32, ptr %retval.0.in.i16532074, align 4
  %conv2702076 = zext i32 %retval.0.i16542075 to i64
  %add2712077 = add i32 %8, 4
  %retval.0.in.i16622085 = getelementptr i32, ptr %210, i32 %add2712077
  %212 = ptrtoint ptr %retval.0.in.i16622085 to i32
  call void @__asan_load4_noabort(i32 %212)
  %retval.0.i16632086 = load i32, ptr %retval.0.in.i16622085, align 4
  %and2732087 = and i32 %retval.0.i16632086, 255
  %conv2742088 = zext i32 %and2732087 to i64
  %shl2752089 = shl nuw nsw i64 %conv2742088, 32
  %or2762090 = or i64 %shl2752089, %conv2702076
  %add2772091 = add nuw i32 %8, 1
  %retval.0.in.i16712102 = getelementptr i32, ptr %210, i32 %add2772091
  br label %radeon_get_ib_value.exit1682

radeon_get_ib_value.exit1682:                     ; preds = %if.end.i1678, %radeon_get_ib_value.exit1673
  %retval.0.i16722111.in = phi ptr [ %retval.0.in.i16712102, %if.end.i1678 ], [ %retval.0.in.i1671, %radeon_get_ib_value.exit1673 ]
  %add271208020922109 = phi i32 [ %add2712077, %if.end.i1678 ], [ %add271, %radeon_get_ib_value.exit1673 ]
  %or27620942107 = phi i64 [ %or2762090, %if.end.i1678 ], [ %or276, %radeon_get_ib_value.exit1673 ]
  %add27720962105 = phi i32 [ %add2772091, %if.end.i1678 ], [ %add277, %radeon_get_ib_value.exit1673 ]
  %.pn.i1679 = phi ptr [ %210, %if.end.i1678 ], [ %206, %radeon_get_ib_value.exit1673 ]
  %add2802113 = add i32 %8, 3
  %conv286 = zext i32 %and6 to i64
  %add287 = add nuw nsw i64 %or27620942107, %conv286
  %213 = ptrtoint ptr %src_reloc to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %src_reloc, align 4
  %215 = ptrtoint ptr %214 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %214, align 8
  %size.i1683 = getelementptr inbounds %struct.radeon_bo, ptr %216, i32 0, i32 4, i32 0, i32 5
  %217 = ptrtoint ptr %size.i1683 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %size.i1683, align 8
  %conv290 = zext i32 %218 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add287, i64 %conv290)
  %cmp291 = icmp ugt i64 %add287, %conv290
  br i1 %cmp291, label %do.end296, label %if.end302

do.end296:                                        ; preds = %radeon_get_ib_value.exit1682
  call void @__sanitizer_cov_trace_pc() #8
  %219 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %220, ptr noundef nonnull @.str.23, i64 noundef %add287, i32 noundef %218) #10
  br label %cleanup

if.end302:                                        ; preds = %radeon_get_ib_value.exit1682
  %retval.0.in.i1680 = getelementptr i32, ptr %.pn.i1679, i32 %add2802113
  %221 = ptrtoint ptr %retval.0.in.i1680 to i32
  call void @__asan_load4_noabort(i32 %221)
  %retval.0.i1681 = load i32, ptr %retval.0.in.i1680, align 4
  %222 = ptrtoint ptr %retval.0.i16722111.in to i32
  call void @__asan_load4_noabort(i32 %222)
  %retval.0.i16722111 = load i32, ptr %retval.0.i16722111.in, align 4
  %conv279 = zext i32 %retval.0.i16722111 to i64
  %and282 = and i32 %retval.0.i1681, 255
  %conv283 = zext i32 %and282 to i64
  %shl284 = shl nuw nsw i64 %conv283, 32
  %or285 = add nuw nsw i64 %conv279, %conv286
  %add304 = add nuw nsw i64 %or285, %shl284
  %223 = ptrtoint ptr %dst_reloc to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %dst_reloc, align 4
  %225 = ptrtoint ptr %224 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %224, align 8
  %size.i1685 = getelementptr inbounds %struct.radeon_bo, ptr %226, i32 0, i32 4, i32 0, i32 5
  %227 = ptrtoint ptr %size.i1685 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %size.i1685, align 8
  %conv307 = zext i32 %228 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add304, i64 %conv307)
  %cmp308 = icmp ugt i64 %add304, %conv307
  br i1 %cmp308, label %do.end313, label %if.end319

do.end313:                                        ; preds = %if.end302
  call void @__sanitizer_cov_trace_pc() #8
  %229 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %230, ptr noundef nonnull @.str.26, i64 noundef %add304, i32 noundef %228) #10
  br label %cleanup

if.end319:                                        ; preds = %if.end302
  call void @__sanitizer_cov_trace_pc() #8
  %gpu_offset320 = getelementptr inbounds %struct.radeon_bo_list, ptr %224, i32 0, i32 2
  %231 = ptrtoint ptr %gpu_offset320 to i32
  call void @__asan_load8_noabort(i32 %231)
  %232 = load i64, ptr %gpu_offset320, align 8
  %conv322 = trunc i64 %232 to i32
  %arrayidx324 = getelementptr i32, ptr %6, i32 %add27720962105
  %233 = ptrtoint ptr %arrayidx324 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %arrayidx324, align 4
  %add325 = add i32 %234, %conv322
  store i32 %add325, ptr %arrayidx324, align 4
  %235 = ptrtoint ptr %src_reloc to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %src_reloc, align 4
  %gpu_offset326 = getelementptr inbounds %struct.radeon_bo_list, ptr %236, i32 0, i32 2
  %237 = ptrtoint ptr %gpu_offset326 to i32
  call void @__asan_load8_noabort(i32 %237)
  %238 = load i64, ptr %gpu_offset326, align 8
  %conv328 = trunc i64 %238 to i32
  %arrayidx330 = getelementptr i32, ptr %6, i32 %add268
  %239 = ptrtoint ptr %arrayidx330 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %arrayidx330, align 4
  %add331 = add i32 %240, %conv328
  store i32 %add331, ptr %arrayidx330, align 4
  %241 = ptrtoint ptr %dst_reloc to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %dst_reloc, align 4
  %gpu_offset332 = getelementptr inbounds %struct.radeon_bo_list, ptr %242, i32 0, i32 2
  %243 = ptrtoint ptr %gpu_offset332 to i32
  call void @__asan_load8_noabort(i32 %243)
  %244 = load i64, ptr %gpu_offset332, align 8
  %shr333 = lshr i64 %244, 32
  %conv335 = trunc i64 %shr333 to i32
  %and336 = and i32 %conv335, 255
  %arrayidx338 = getelementptr i32, ptr %6, i32 %add2802113
  %245 = ptrtoint ptr %arrayidx338 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %arrayidx338, align 4
  %add339 = add i32 %and336, %246
  store i32 %add339, ptr %arrayidx338, align 4
  %247 = load ptr, ptr %src_reloc, align 4
  %gpu_offset340 = getelementptr inbounds %struct.radeon_bo_list, ptr %247, i32 0, i32 2
  %248 = ptrtoint ptr %gpu_offset340 to i32
  call void @__asan_load8_noabort(i32 %248)
  %249 = load i64, ptr %gpu_offset340, align 8
  %shr341 = lshr i64 %249, 32
  %conv343 = trunc i64 %shr341 to i32
  %and344 = and i32 %conv343, 255
  %arrayidx346 = getelementptr i32, ptr %6, i32 %add271208020922109
  %250 = ptrtoint ptr %arrayidx346 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %arrayidx346, align 4
  %add347 = add i32 %and344, %251
  store i32 %add347, ptr %arrayidx346, align 4
  %252 = ptrtoint ptr %idx2 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %idx2, align 8
  %add349 = add i32 %253, 5
  br label %do.cond1100.sink.split

sw.bb350:                                         ; preds = %if.end66
  %254 = ptrtoint ptr %family914 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %family914, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %255)
  %cmp351 = icmp ult i32 %255, 50
  br i1 %cmp351, label %if.then353, label %if.end354

if.then353:                                       ; preds = %sw.bb350
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.28) #6
  br label %cleanup

if.end354:                                        ; preds = %sw.bb350
  call void @__sanitizer_cov_trace_pc() #8
  %256 = ptrtoint ptr %src_reloc to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %src_reloc, align 4
  %gpu_offset355 = getelementptr inbounds %struct.radeon_bo_list, ptr %257, i32 0, i32 2
  %258 = ptrtoint ptr %gpu_offset355 to i32
  call void @__asan_load8_noabort(i32 %258)
  %259 = load i64, ptr %gpu_offset355, align 8
  %conv357 = trunc i64 %259 to i32
  %add358 = add nuw i32 %8, 1
  %arrayidx359 = getelementptr i32, ptr %6, i32 %add358
  %260 = ptrtoint ptr %arrayidx359 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %arrayidx359, align 4
  %add360 = add i32 %261, %conv357
  store i32 %add360, ptr %arrayidx359, align 4
  %262 = load ptr, ptr %src_reloc, align 4
  %gpu_offset361 = getelementptr inbounds %struct.radeon_bo_list, ptr %262, i32 0, i32 2
  %263 = ptrtoint ptr %gpu_offset361 to i32
  call void @__asan_load8_noabort(i32 %263)
  %264 = load i64, ptr %gpu_offset361, align 8
  %shr362 = lshr i64 %264, 32
  %conv364 = trunc i64 %shr362 to i32
  %and365 = and i32 %conv364, 255
  %add366 = add i32 %8, 2
  %arrayidx367 = getelementptr i32, ptr %6, i32 %add366
  %265 = ptrtoint ptr %arrayidx367 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %arrayidx367, align 4
  %add368 = add i32 %and365, %266
  store i32 %add368, ptr %arrayidx367, align 4
  %267 = ptrtoint ptr %dst_reloc to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %dst_reloc, align 4
  %gpu_offset369 = getelementptr inbounds %struct.radeon_bo_list, ptr %268, i32 0, i32 2
  %269 = ptrtoint ptr %gpu_offset369 to i32
  call void @__asan_load8_noabort(i32 %269)
  %270 = load i64, ptr %gpu_offset369, align 8
  %conv371 = trunc i64 %270 to i32
  %add372 = add i32 %8, 4
  %arrayidx373 = getelementptr i32, ptr %6, i32 %add372
  %271 = ptrtoint ptr %arrayidx373 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %arrayidx373, align 4
  %add374 = add i32 %272, %conv371
  store i32 %add374, ptr %arrayidx373, align 4
  %273 = load ptr, ptr %dst_reloc, align 4
  %gpu_offset375 = getelementptr inbounds %struct.radeon_bo_list, ptr %273, i32 0, i32 2
  %274 = ptrtoint ptr %gpu_offset375 to i32
  call void @__asan_load8_noabort(i32 %274)
  %275 = load i64, ptr %gpu_offset375, align 8
  %shr376 = lshr i64 %275, 32
  %conv378 = trunc i64 %shr376 to i32
  %and379 = and i32 %conv378, 255
  %add380 = add i32 %8, 5
  %arrayidx381 = getelementptr i32, ptr %6, i32 %add380
  %276 = ptrtoint ptr %arrayidx381 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %arrayidx381, align 4
  %add382 = add i32 %and379, %277
  store i32 %add382, ptr %arrayidx381, align 4
  %278 = ptrtoint ptr %idx2 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %idx2, align 8
  %add384 = add i32 %279, 9
  br label %do.cond1100.sink.split

sw.bb385:                                         ; preds = %if.end66
  %call386 = call i32 @r600_dma_cs_next_reloc(ptr noundef %p, ptr noundef nonnull %dst2_reloc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call386)
  %tobool387.not = icmp eq i32 %call386, 0
  br i1 %tobool387.not, label %if.end389, label %if.then388

if.then388:                                       ; preds = %sw.bb385
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.29) #6
  br label %cleanup

if.end389:                                        ; preds = %sw.bb385
  %add390 = add nuw i32 %8, 1
  %280 = ptrtoint ptr %chunk_ib to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %chunk_ib, align 4
  %kdata.i1688 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %281, i32 0, i32 1
  %282 = ptrtoint ptr %kdata.i1688 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %kdata.i1688, align 4
  %tobool.not.i1689 = icmp eq ptr %283, null
  br i1 %tobool.not.i1689, label %if.end.i1736, label %radeon_get_ib_value.exit1731

radeon_get_ib_value.exit1731:                     ; preds = %if.end389
  call void @__sanitizer_cov_trace_pc() #8
  %add393 = add i32 %8, 4
  %retval.0.in.i1702 = getelementptr i32, ptr %283, i32 %add393
  %add399 = add i32 %8, 2
  %retval.0.in.i1711 = getelementptr i32, ptr %283, i32 %add399
  %284 = ptrtoint ptr %retval.0.in.i1711 to i32
  call void @__asan_load4_noabort(i32 %284)
  %retval.0.i1712 = load i32, ptr %retval.0.in.i1711, align 4
  %conv401 = zext i32 %retval.0.i1712 to i64
  %add402 = add i32 %8, 5
  %retval.0.in.i1720 = getelementptr i32, ptr %283, i32 %add402
  %285 = ptrtoint ptr %retval.0.in.i1720 to i32
  call void @__asan_load4_noabort(i32 %285)
  %retval.0.i1721 = load i32, ptr %retval.0.in.i1720, align 4
  %and404 = and i32 %retval.0.i1721, 255
  %conv405 = zext i32 %and404 to i64
  %shl406 = shl nuw nsw i64 %conv405, 32
  %or407 = or i64 %shl406, %conv401
  %add408 = add i32 %8, 3
  %retval.0.in.i1729 = getelementptr i32, ptr %283, i32 %add408
  br label %radeon_get_ib_value.exit1740

if.end.i1736:                                     ; preds = %if.end389
  call void @__sanitizer_cov_trace_pc() #8
  %286 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %ptr, align 8
  %add3932118 = add i32 %8, 4
  %retval.0.in.i17022126 = getelementptr i32, ptr %287, i32 %add3932118
  %add3992128 = add i32 %8, 2
  %retval.0.in.i17112142 = getelementptr i32, ptr %287, i32 %add3992128
  %288 = ptrtoint ptr %retval.0.in.i17112142 to i32
  call void @__asan_load4_noabort(i32 %288)
  %retval.0.i17122143 = load i32, ptr %retval.0.in.i17112142, align 4
  %conv4012144 = zext i32 %retval.0.i17122143 to i64
  %add4022145 = add i32 %8, 5
  %retval.0.in.i17202165 = getelementptr i32, ptr %287, i32 %add4022145
  %289 = ptrtoint ptr %retval.0.in.i17202165 to i32
  call void @__asan_load4_noabort(i32 %289)
  %retval.0.i17212166 = load i32, ptr %retval.0.in.i17202165, align 4
  %and4042167 = and i32 %retval.0.i17212166, 255
  %conv4052168 = zext i32 %and4042167 to i64
  %shl4062169 = shl nuw nsw i64 %conv4052168, 32
  %or4072170 = or i64 %shl4062169, %conv4012144
  %add4082171 = add i32 %8, 3
  %retval.0.in.i17292194 = getelementptr i32, ptr %287, i32 %add4082171
  br label %radeon_get_ib_value.exit1740

radeon_get_ib_value.exit1740:                     ; preds = %if.end.i1736, %radeon_get_ib_value.exit1731
  %conv4102212.in.in = phi ptr [ %retval.0.in.i17292194, %if.end.i1736 ], [ %retval.0.in.i1729, %radeon_get_ib_value.exit1731 ]
  %add402215621722210 = phi i32 [ %add4022145, %if.end.i1736 ], [ %add402, %radeon_get_ib_value.exit1731 ]
  %add39321212129215221742208 = phi i32 [ %add3932118, %if.end.i1736 ], [ %add393, %radeon_get_ib_value.exit1731 ]
  %.pn2366 = phi ptr [ %287, %if.end.i1736 ], [ %283, %radeon_get_ib_value.exit1731 ]
  %retval.0.i17032133214821782204.in = phi ptr [ %retval.0.in.i17022126, %if.end.i1736 ], [ %retval.0.in.i1702, %radeon_get_ib_value.exit1731 ]
  %add3992135214621802202 = phi i32 [ %add3992128, %if.end.i1736 ], [ %add399, %radeon_get_ib_value.exit1731 ]
  %or40721822200 = phi i64 [ %or4072170, %if.end.i1736 ], [ %or407, %radeon_get_ib_value.exit1731 ]
  %add40821842198 = phi i32 [ %add4082171, %if.end.i1736 ], [ %add408, %radeon_get_ib_value.exit1731 ]
  %290 = ptrtoint ptr %conv4102212.in.in to i32
  call void @__asan_load4_noabort(i32 %290)
  %conv4102212.in = load i32, ptr %conv4102212.in.in, align 4
  %conv4102212 = zext i32 %conv4102212.in to i64
  %add4112214 = add i32 %8, 6
  %retval.0.in.i1738 = getelementptr i32, ptr %.pn2366, i32 %add4112214
  %291 = ptrtoint ptr %retval.0.in.i1738 to i32
  call void @__asan_load4_noabort(i32 %291)
  %retval.0.i1739 = load i32, ptr %retval.0.in.i1738, align 4
  %and413 = and i32 %retval.0.i1739, 255
  %conv414 = zext i32 %and413 to i64
  %shl415 = shl nuw nsw i64 %conv414, 32
  %mul417 = shl nuw nsw i32 %and6, 2
  %conv418 = zext i32 %mul417 to i64
  %or416 = add nuw nsw i64 %conv4102212, %conv418
  %add419 = add nuw nsw i64 %or416, %shl415
  %292 = ptrtoint ptr %src_reloc to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %src_reloc, align 4
  %294 = ptrtoint ptr %293 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %293, align 8
  %size.i1741 = getelementptr inbounds %struct.radeon_bo, ptr %295, i32 0, i32 4, i32 0, i32 5
  %296 = ptrtoint ptr %size.i1741 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %size.i1741, align 8
  %conv422 = zext i32 %297 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add419, i64 %conv422)
  %cmp423 = icmp ugt i64 %add419, %conv422
  br i1 %cmp423, label %do.end428, label %if.end435

do.end428:                                        ; preds = %radeon_get_ib_value.exit1740
  call void @__sanitizer_cov_trace_pc() #8
  %298 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %299, ptr noundef nonnull @.str.31, i64 noundef %add419, i32 noundef %297) #10
  br label %cleanup

if.end435:                                        ; preds = %radeon_get_ib_value.exit1740
  %300 = ptrtoint ptr %retval.0.i17032133214821782204.in to i32
  call void @__asan_load4_noabort(i32 %300)
  %retval.0.i17032133214821782204 = load i32, ptr %retval.0.i17032133214821782204.in, align 4
  %retval.0.i169421192131215021762206.in = getelementptr i32, ptr %.pn2366, i32 %add390
  %301 = ptrtoint ptr %retval.0.i169421192131215021762206.in to i32
  call void @__asan_load4_noabort(i32 %301)
  %retval.0.i169421192131215021762206 = load i32, ptr %retval.0.i169421192131215021762206.in, align 4
  %conv392 = zext i32 %retval.0.i169421192131215021762206 to i64
  %and395 = and i32 %retval.0.i17032133214821782204, 255
  %conv396 = zext i32 %and395 to i64
  %shl397 = shl nuw nsw i64 %conv396, 32
  %or398 = add nuw nsw i64 %conv392, %conv418
  %add438 = add nuw nsw i64 %or398, %shl397
  %302 = ptrtoint ptr %dst_reloc to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %dst_reloc, align 4
  %304 = ptrtoint ptr %303 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %303, align 8
  %size.i1743 = getelementptr inbounds %struct.radeon_bo, ptr %305, i32 0, i32 4, i32 0, i32 5
  %306 = ptrtoint ptr %size.i1743 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %size.i1743, align 8
  %conv441 = zext i32 %307 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add438, i64 %conv441)
  %cmp442 = icmp ugt i64 %add438, %conv441
  br i1 %cmp442, label %do.end447, label %if.end454

do.end447:                                        ; preds = %if.end435
  call void @__sanitizer_cov_trace_pc() #8
  %308 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %309, ptr noundef nonnull @.str.34, i64 noundef %add438, i32 noundef %307) #10
  br label %cleanup

if.end454:                                        ; preds = %if.end435
  %add457 = add nuw nsw i64 %or40721822200, %conv418
  %310 = ptrtoint ptr %dst2_reloc to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %dst2_reloc, align 4
  %312 = ptrtoint ptr %311 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %311, align 8
  %size.i1745 = getelementptr inbounds %struct.radeon_bo, ptr %313, i32 0, i32 4, i32 0, i32 5
  %314 = ptrtoint ptr %size.i1745 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %size.i1745, align 8
  %conv460 = zext i32 %315 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add457, i64 %conv460)
  %cmp461 = icmp ugt i64 %add457, %conv460
  br i1 %cmp461, label %do.end466, label %if.end473

do.end466:                                        ; preds = %if.end454
  call void @__sanitizer_cov_trace_pc() #8
  %316 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %317, ptr noundef nonnull @.str.37, i64 noundef %add457, i32 noundef %315) #10
  br label %cleanup

if.end473:                                        ; preds = %if.end454
  call void @__sanitizer_cov_trace_pc() #8
  %gpu_offset474 = getelementptr inbounds %struct.radeon_bo_list, ptr %303, i32 0, i32 2
  %318 = ptrtoint ptr %gpu_offset474 to i32
  call void @__asan_load8_noabort(i32 %318)
  %319 = load i64, ptr %gpu_offset474, align 8
  %320 = trunc i64 %319 to i32
  %conv476 = and i32 %320, -4
  %arrayidx478 = getelementptr i32, ptr %6, i32 %add390
  %321 = ptrtoint ptr %arrayidx478 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %arrayidx478, align 4
  %add479 = add i32 %conv476, %322
  store i32 %add479, ptr %arrayidx478, align 4
  %323 = ptrtoint ptr %dst2_reloc to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %dst2_reloc, align 4
  %gpu_offset480 = getelementptr inbounds %struct.radeon_bo_list, ptr %324, i32 0, i32 2
  %325 = ptrtoint ptr %gpu_offset480 to i32
  call void @__asan_load8_noabort(i32 %325)
  %326 = load i64, ptr %gpu_offset480, align 8
  %327 = trunc i64 %326 to i32
  %conv482 = and i32 %327, -4
  %arrayidx484 = getelementptr i32, ptr %6, i32 %add3992135214621802202
  %328 = ptrtoint ptr %arrayidx484 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %arrayidx484, align 4
  %add485 = add i32 %conv482, %329
  store i32 %add485, ptr %arrayidx484, align 4
  %330 = ptrtoint ptr %src_reloc to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %src_reloc, align 4
  %gpu_offset486 = getelementptr inbounds %struct.radeon_bo_list, ptr %331, i32 0, i32 2
  %332 = ptrtoint ptr %gpu_offset486 to i32
  call void @__asan_load8_noabort(i32 %332)
  %333 = load i64, ptr %gpu_offset486, align 8
  %334 = trunc i64 %333 to i32
  %conv488 = and i32 %334, -4
  %arrayidx490 = getelementptr i32, ptr %6, i32 %add40821842198
  %335 = ptrtoint ptr %arrayidx490 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %arrayidx490, align 4
  %add491 = add i32 %conv488, %336
  store i32 %add491, ptr %arrayidx490, align 4
  %337 = ptrtoint ptr %dst_reloc to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %dst_reloc, align 4
  %gpu_offset492 = getelementptr inbounds %struct.radeon_bo_list, ptr %338, i32 0, i32 2
  %339 = ptrtoint ptr %gpu_offset492 to i32
  call void @__asan_load8_noabort(i32 %339)
  %340 = load i64, ptr %gpu_offset492, align 8
  %shr493 = lshr i64 %340, 32
  %conv495 = trunc i64 %shr493 to i32
  %and496 = and i32 %conv495, 255
  %arrayidx498 = getelementptr i32, ptr %6, i32 %add39321212129215221742208
  %341 = ptrtoint ptr %arrayidx498 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %arrayidx498, align 4
  %add499 = add i32 %and496, %342
  store i32 %add499, ptr %arrayidx498, align 4
  %343 = load ptr, ptr %dst2_reloc, align 4
  %gpu_offset500 = getelementptr inbounds %struct.radeon_bo_list, ptr %343, i32 0, i32 2
  %344 = ptrtoint ptr %gpu_offset500 to i32
  call void @__asan_load8_noabort(i32 %344)
  %345 = load i64, ptr %gpu_offset500, align 8
  %shr501 = lshr i64 %345, 32
  %conv503 = trunc i64 %shr501 to i32
  %and504 = and i32 %conv503, 255
  %arrayidx506 = getelementptr i32, ptr %6, i32 %add402215621722210
  %346 = ptrtoint ptr %arrayidx506 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %arrayidx506, align 4
  %add507 = add i32 %and504, %347
  store i32 %add507, ptr %arrayidx506, align 4
  %348 = load ptr, ptr %src_reloc, align 4
  %gpu_offset508 = getelementptr inbounds %struct.radeon_bo_list, ptr %348, i32 0, i32 2
  %349 = ptrtoint ptr %gpu_offset508 to i32
  call void @__asan_load8_noabort(i32 %349)
  %350 = load i64, ptr %gpu_offset508, align 8
  %shr509 = lshr i64 %350, 32
  %conv511 = trunc i64 %shr509 to i32
  %and512 = and i32 %conv511, 255
  %arrayidx514 = getelementptr i32, ptr %6, i32 %add4112214
  %351 = ptrtoint ptr %arrayidx514 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %arrayidx514, align 4
  %add515 = add i32 %and512, %352
  store i32 %add515, ptr %arrayidx514, align 4
  %353 = ptrtoint ptr %idx2 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %idx2, align 8
  %add517 = add i32 %354, 7
  br label %do.cond1100.sink.split

sw.bb518:                                         ; preds = %if.end66
  %add519 = add i32 %8, 2
  %355 = ptrtoint ptr %chunk_ib to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %chunk_ib, align 4
  %kdata.i1748 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %356, i32 0, i32 1
  %357 = ptrtoint ptr %kdata.i1748 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %kdata.i1748, align 4
  %tobool.not.i1749 = icmp eq ptr %358, null
  br i1 %tobool.not.i1749, label %if.end.i1751, label %sw.bb518.radeon_get_ib_value.exit1755_crit_edge

sw.bb518.radeon_get_ib_value.exit1755_crit_edge:  ; preds = %sw.bb518
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_get_ib_value.exit1755

if.end.i1751:                                     ; preds = %sw.bb518
  call void @__sanitizer_cov_trace_pc() #8
  %359 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %ptr, align 8
  br label %radeon_get_ib_value.exit1755

radeon_get_ib_value.exit1755:                     ; preds = %if.end.i1751, %sw.bb518.radeon_get_ib_value.exit1755_crit_edge
  %.pn.i1752 = phi ptr [ %360, %if.end.i1751 ], [ %358, %sw.bb518.radeon_get_ib_value.exit1755_crit_edge ]
  %retval.0.in.i1753 = getelementptr i32, ptr %.pn.i1752, i32 %add519
  %361 = ptrtoint ptr %retval.0.in.i1753 to i32
  call void @__asan_load4_noabort(i32 %361)
  %retval.0.i1754 = load i32, ptr %retval.0.in.i1753, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i1754)
  %tobool522.not = icmp sgt i32 %retval.0.i1754, -1
  br i1 %tobool522.not, label %if.end524, label %if.then523

if.then523:                                       ; preds = %radeon_get_ib_value.exit1755
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.39) #6
  br label %cleanup

if.end524:                                        ; preds = %radeon_get_ib_value.exit1755
  %call525 = call i32 @r600_dma_cs_next_reloc(ptr noundef %p, ptr noundef nonnull %dst2_reloc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call525)
  %tobool526.not = icmp eq i32 %call525, 0
  br i1 %tobool526.not, label %if.end528, label %if.then527

if.then527:                                       ; preds = %if.end524
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.39) #6
  br label %cleanup

if.end528:                                        ; preds = %if.end524
  %add529 = add nuw i32 %8, 1
  %362 = ptrtoint ptr %chunk_ib to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %chunk_ib, align 4
  %kdata.i1757 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %363, i32 0, i32 1
  %364 = ptrtoint ptr %kdata.i1757 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %kdata.i1757, align 4
  %tobool.not.i1758 = icmp eq ptr %365, null
  br i1 %tobool.not.i1758, label %if.end.i1787, label %radeon_get_ib_value.exit1782

radeon_get_ib_value.exit1782:                     ; preds = %if.end528
  call void @__sanitizer_cov_trace_pc() #8
  %add537 = add i32 %8, 8
  %retval.0.in.i1780 = getelementptr i32, ptr %365, i32 %add537
  br label %radeon_get_ib_value.exit1791

if.end.i1787:                                     ; preds = %if.end528
  call void @__sanitizer_cov_trace_pc() #8
  %366 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %ptr, align 8
  %add5372227 = add i32 %8, 8
  %retval.0.in.i17802238 = getelementptr i32, ptr %367, i32 %add5372227
  br label %radeon_get_ib_value.exit1791

radeon_get_ib_value.exit1791:                     ; preds = %if.end.i1787, %radeon_get_ib_value.exit1782
  %conv5392248.in.in = phi ptr [ %retval.0.in.i17802238, %if.end.i1787 ], [ %retval.0.in.i1780, %radeon_get_ib_value.exit1782 ]
  %.pn2364 = phi ptr [ %367, %if.end.i1787 ], [ %365, %radeon_get_ib_value.exit1782 ]
  %add53722322242 = phi i32 [ %add5372227, %if.end.i1787 ], [ %add537, %radeon_get_ib_value.exit1782 ]
  %shl53622302244.in.in.in = getelementptr i32, ptr %.pn2364, i32 %add519
  %368 = ptrtoint ptr %shl53622302244.in.in.in to i32
  call void @__asan_load4_noabort(i32 %368)
  %shl53622302244.in.in = load i32, ptr %shl53622302244.in.in.in, align 4
  %shl53622302244.in = zext i32 %shl53622302244.in.in to i64
  %shl53622302244 = shl nuw nsw i64 %shl53622302244.in, 8
  %369 = ptrtoint ptr %conv5392248.in.in to i32
  call void @__asan_load4_noabort(i32 %369)
  %conv5392248.in = load i32, ptr %conv5392248.in.in, align 4
  %conv5392248 = zext i32 %conv5392248.in to i64
  %add5402250 = add i32 %8, 9
  %retval.0.in.i1789 = getelementptr i32, ptr %.pn2364, i32 %add5402250
  %370 = ptrtoint ptr %retval.0.in.i1789 to i32
  call void @__asan_load4_noabort(i32 %370)
  %retval.0.i1790 = load i32, ptr %retval.0.in.i1789, align 4
  %and542 = and i32 %retval.0.i1790, 255
  %conv543 = zext i32 %and542 to i64
  %shl544 = shl nuw nsw i64 %conv543, 32
  %mul546 = shl nuw nsw i32 %and6, 2
  %conv547 = zext i32 %mul546 to i64
  %or545 = add nuw nsw i64 %conv5392248, %conv547
  %add548 = add nuw nsw i64 %or545, %shl544
  %371 = ptrtoint ptr %src_reloc to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %src_reloc, align 4
  %373 = ptrtoint ptr %372 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %372, align 8
  %size.i1792 = getelementptr inbounds %struct.radeon_bo, ptr %374, i32 0, i32 4, i32 0, i32 5
  %375 = ptrtoint ptr %size.i1792 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %size.i1792, align 8
  %conv551 = zext i32 %376 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add548, i64 %conv551)
  %cmp552 = icmp ugt i64 %add548, %conv551
  br i1 %cmp552, label %do.end557, label %if.end564

do.end557:                                        ; preds = %radeon_get_ib_value.exit1791
  call void @__sanitizer_cov_trace_pc() #8
  %377 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %378, ptr noundef nonnull @.str.41, i64 noundef %add548, i32 noundef %376) #10
  br label %cleanup

if.end564:                                        ; preds = %radeon_get_ib_value.exit1791
  %retval.0.i1763221922282246.in = getelementptr i32, ptr %.pn2364, i32 %add529
  %379 = ptrtoint ptr %retval.0.i1763221922282246.in to i32
  call void @__asan_load4_noabort(i32 %379)
  %retval.0.i1763221922282246 = load i32, ptr %retval.0.i1763221922282246.in, align 4
  %conv531 = zext i32 %retval.0.i1763221922282246 to i64
  %shl532 = shl nuw nsw i64 %conv531, 8
  %add567 = add nuw nsw i64 %shl532, %conv547
  %380 = ptrtoint ptr %dst_reloc to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %dst_reloc, align 4
  %382 = ptrtoint ptr %381 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %381, align 8
  %size.i1794 = getelementptr inbounds %struct.radeon_bo, ptr %383, i32 0, i32 4, i32 0, i32 5
  %384 = ptrtoint ptr %size.i1794 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %size.i1794, align 8
  %conv570 = zext i32 %385 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add567, i64 %conv570)
  %cmp571 = icmp ugt i64 %add567, %conv570
  br i1 %cmp571, label %do.end576, label %if.end583

do.end576:                                        ; preds = %if.end564
  call void @__sanitizer_cov_trace_pc() #8
  %386 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %387, ptr noundef nonnull @.str.44, i64 noundef %add567, i32 noundef %385) #10
  br label %cleanup

if.end583:                                        ; preds = %if.end564
  %add586 = add nuw nsw i64 %shl53622302244, %conv547
  %388 = ptrtoint ptr %dst2_reloc to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %dst2_reloc, align 4
  %390 = ptrtoint ptr %389 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %389, align 8
  %size.i1796 = getelementptr inbounds %struct.radeon_bo, ptr %391, i32 0, i32 4, i32 0, i32 5
  %392 = ptrtoint ptr %size.i1796 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %size.i1796, align 8
  %conv589 = zext i32 %393 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add586, i64 %conv589)
  %cmp590 = icmp ugt i64 %add586, %conv589
  br i1 %cmp590, label %do.end595, label %if.end602

do.end595:                                        ; preds = %if.end583
  call void @__sanitizer_cov_trace_pc() #8
  %394 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %395, ptr noundef nonnull @.str.44, i64 noundef %add586, i32 noundef %393) #10
  br label %cleanup

if.end602:                                        ; preds = %if.end583
  call void @__sanitizer_cov_trace_pc() #8
  %gpu_offset603 = getelementptr inbounds %struct.radeon_bo_list, ptr %381, i32 0, i32 2
  %396 = ptrtoint ptr %gpu_offset603 to i32
  call void @__asan_load8_noabort(i32 %396)
  %397 = load i64, ptr %gpu_offset603, align 8
  %shr604 = lshr i64 %397, 8
  %conv605 = trunc i64 %shr604 to i32
  %arrayidx607 = getelementptr i32, ptr %6, i32 %add529
  %398 = ptrtoint ptr %arrayidx607 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %arrayidx607, align 4
  %add608 = add i32 %399, %conv605
  store i32 %add608, ptr %arrayidx607, align 4
  %400 = ptrtoint ptr %dst2_reloc to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %dst2_reloc, align 4
  %gpu_offset609 = getelementptr inbounds %struct.radeon_bo_list, ptr %401, i32 0, i32 2
  %402 = ptrtoint ptr %gpu_offset609 to i32
  call void @__asan_load8_noabort(i32 %402)
  %403 = load i64, ptr %gpu_offset609, align 8
  %shr610 = lshr i64 %403, 8
  %conv611 = trunc i64 %shr610 to i32
  %arrayidx613 = getelementptr i32, ptr %6, i32 %add519
  %404 = ptrtoint ptr %arrayidx613 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %arrayidx613, align 4
  %add614 = add i32 %405, %conv611
  store i32 %add614, ptr %arrayidx613, align 4
  %406 = ptrtoint ptr %src_reloc to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %src_reloc, align 4
  %gpu_offset615 = getelementptr inbounds %struct.radeon_bo_list, ptr %407, i32 0, i32 2
  %408 = ptrtoint ptr %gpu_offset615 to i32
  call void @__asan_load8_noabort(i32 %408)
  %409 = load i64, ptr %gpu_offset615, align 8
  %410 = trunc i64 %409 to i32
  %conv617 = and i32 %410, -4
  %arrayidx619 = getelementptr i32, ptr %6, i32 %add53722322242
  %411 = ptrtoint ptr %arrayidx619 to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %arrayidx619, align 4
  %add620 = add i32 %conv617, %412
  store i32 %add620, ptr %arrayidx619, align 4
  %413 = load ptr, ptr %src_reloc, align 4
  %gpu_offset621 = getelementptr inbounds %struct.radeon_bo_list, ptr %413, i32 0, i32 2
  %414 = ptrtoint ptr %gpu_offset621 to i32
  call void @__asan_load8_noabort(i32 %414)
  %415 = load i64, ptr %gpu_offset621, align 8
  %shr622 = lshr i64 %415, 32
  %conv624 = trunc i64 %shr622 to i32
  %and625 = and i32 %conv624, 255
  %arrayidx627 = getelementptr i32, ptr %6, i32 %add5402250
  %416 = ptrtoint ptr %arrayidx627 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %arrayidx627, align 4
  %add628 = add i32 %and625, %417
  store i32 %add628, ptr %arrayidx627, align 4
  %418 = ptrtoint ptr %idx2 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %idx2, align 8
  %add630 = add i32 %419, 10
  br label %do.cond1100.sink.split

sw.bb631:                                         ; preds = %if.end66
  %420 = ptrtoint ptr %family914 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %family914, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %421)
  %cmp633 = icmp ult i32 %421, 50
  br i1 %cmp633, label %if.then635, label %if.end636

if.then635:                                       ; preds = %sw.bb631
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.48) #6
  br label %cleanup

if.end636:                                        ; preds = %sw.bb631
  %add637 = add i32 %8, 2
  %422 = ptrtoint ptr %chunk_ib to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %chunk_ib, align 4
  %kdata.i1799 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %423, i32 0, i32 1
  %424 = ptrtoint ptr %kdata.i1799 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %kdata.i1799, align 4
  %tobool.not.i1800 = icmp eq ptr %425, null
  br i1 %tobool.not.i1800, label %if.end.i1802, label %if.end636.radeon_get_ib_value.exit1806_crit_edge

if.end636.radeon_get_ib_value.exit1806_crit_edge: ; preds = %if.end636
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_get_ib_value.exit1806

if.end.i1802:                                     ; preds = %if.end636
  call void @__sanitizer_cov_trace_pc() #8
  %426 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %ptr, align 8
  br label %radeon_get_ib_value.exit1806

radeon_get_ib_value.exit1806:                     ; preds = %if.end.i1802, %if.end636.radeon_get_ib_value.exit1806_crit_edge
  %.pn.i1803 = phi ptr [ %427, %if.end.i1802 ], [ %425, %if.end636.radeon_get_ib_value.exit1806_crit_edge ]
  %retval.0.in.i1804 = getelementptr i32, ptr %.pn.i1803, i32 %add637
  %428 = ptrtoint ptr %retval.0.in.i1804 to i32
  call void @__asan_load4_noabort(i32 %428)
  %retval.0.i1805 = load i32, ptr %retval.0.in.i1804, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i1805)
  %tobool640.not = icmp sgt i32 %retval.0.i1805, -1
  %429 = ptrtoint ptr %src_reloc to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %src_reloc, align 4
  %gpu_offset663 = getelementptr inbounds %struct.radeon_bo_list, ptr %430, i32 0, i32 2
  %431 = ptrtoint ptr %gpu_offset663 to i32
  call void @__asan_load8_noabort(i32 %431)
  %432 = load i64, ptr %gpu_offset663, align 8
  br i1 %tobool640.not, label %if.else662, label %if.then641

if.then641:                                       ; preds = %radeon_get_ib_value.exit1806
  call void @__sanitizer_cov_trace_pc() #8
  %shr643 = lshr i64 %432, 8
  %conv644 = trunc i64 %shr643 to i32
  %add645 = add nuw i32 %8, 1
  %arrayidx646 = getelementptr i32, ptr %6, i32 %add645
  %433 = ptrtoint ptr %arrayidx646 to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %arrayidx646, align 4
  %add647 = add i32 %434, %conv644
  store i32 %add647, ptr %arrayidx646, align 4
  %435 = ptrtoint ptr %dst_reloc to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %dst_reloc, align 4
  %gpu_offset648 = getelementptr inbounds %struct.radeon_bo_list, ptr %436, i32 0, i32 2
  %437 = ptrtoint ptr %gpu_offset648 to i32
  call void @__asan_load8_noabort(i32 %437)
  %438 = load i64, ptr %gpu_offset648, align 8
  %439 = trunc i64 %438 to i32
  %conv650 = and i32 %439, -4
  %add651 = add i32 %8, 7
  %arrayidx652 = getelementptr i32, ptr %6, i32 %add651
  %440 = ptrtoint ptr %arrayidx652 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %arrayidx652, align 4
  %add653 = add i32 %conv650, %441
  store i32 %add653, ptr %arrayidx652, align 4
  %442 = load ptr, ptr %dst_reloc, align 4
  %gpu_offset654 = getelementptr inbounds %struct.radeon_bo_list, ptr %442, i32 0, i32 2
  %443 = ptrtoint ptr %gpu_offset654 to i32
  call void @__asan_load8_noabort(i32 %443)
  %444 = load i64, ptr %gpu_offset654, align 8
  %shr655 = lshr i64 %444, 32
  %conv657 = trunc i64 %shr655 to i32
  %and658 = and i32 %conv657, 255
  %add659 = add i32 %8, 8
  %arrayidx660 = getelementptr i32, ptr %6, i32 %add659
  %445 = ptrtoint ptr %arrayidx660 to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load i32, ptr %arrayidx660, align 4
  br label %if.end683

if.else662:                                       ; preds = %radeon_get_ib_value.exit1806
  call void @__sanitizer_cov_trace_pc() #8
  %447 = trunc i64 %432 to i32
  %conv665 = and i32 %447, -4
  %add666 = add i32 %8, 7
  %arrayidx667 = getelementptr i32, ptr %6, i32 %add666
  %448 = ptrtoint ptr %arrayidx667 to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %arrayidx667, align 4
  %add668 = add i32 %conv665, %449
  store i32 %add668, ptr %arrayidx667, align 4
  %450 = ptrtoint ptr %src_reloc to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %src_reloc, align 4
  %gpu_offset669 = getelementptr inbounds %struct.radeon_bo_list, ptr %451, i32 0, i32 2
  %452 = ptrtoint ptr %gpu_offset669 to i32
  call void @__asan_load8_noabort(i32 %452)
  %453 = load i64, ptr %gpu_offset669, align 8
  %shr670 = lshr i64 %453, 32
  %conv672 = trunc i64 %shr670 to i32
  %and673 = and i32 %conv672, 255
  %add674 = add i32 %8, 8
  %arrayidx675 = getelementptr i32, ptr %6, i32 %add674
  %454 = ptrtoint ptr %arrayidx675 to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %arrayidx675, align 4
  %add676 = add i32 %and673, %455
  store i32 %add676, ptr %arrayidx675, align 4
  %456 = ptrtoint ptr %dst_reloc to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %dst_reloc, align 4
  %gpu_offset677 = getelementptr inbounds %struct.radeon_bo_list, ptr %457, i32 0, i32 2
  %458 = ptrtoint ptr %gpu_offset677 to i32
  call void @__asan_load8_noabort(i32 %458)
  %459 = load i64, ptr %gpu_offset677, align 8
  %shr678 = lshr i64 %459, 8
  %conv679 = trunc i64 %shr678 to i32
  %add680 = add nuw i32 %8, 1
  %arrayidx681 = getelementptr i32, ptr %6, i32 %add680
  %460 = ptrtoint ptr %arrayidx681 to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load i32, ptr %arrayidx681, align 4
  br label %if.end683

if.end683:                                        ; preds = %if.else662, %if.then641
  %conv679.sink = phi i32 [ %conv679, %if.else662 ], [ %446, %if.then641 ]
  %.sink3010 = phi i32 [ %461, %if.else662 ], [ %and658, %if.then641 ]
  %arrayidx681.sink = phi ptr [ %arrayidx681, %if.else662 ], [ %arrayidx660, %if.then641 ]
  %add682 = add i32 %.sink3010, %conv679.sink
  %462 = ptrtoint ptr %arrayidx681.sink to i32
  call void @__asan_store4_noabort(i32 %462)
  store i32 %add682, ptr %arrayidx681.sink, align 4
  %463 = ptrtoint ptr %idx2 to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load i32, ptr %idx2, align 8
  %add685 = add i32 %464, 12
  br label %do.cond1100.sink.split

sw.bb686:                                         ; preds = %if.end66
  %add687 = add i32 %8, 2
  %465 = ptrtoint ptr %chunk_ib to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %chunk_ib, align 4
  %kdata.i1808 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %466, i32 0, i32 1
  %467 = ptrtoint ptr %kdata.i1808 to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %kdata.i1808, align 4
  %tobool.not.i1809 = icmp eq ptr %468, null
  br i1 %tobool.not.i1809, label %if.end.i1811, label %sw.bb686.radeon_get_ib_value.exit1815_crit_edge

sw.bb686.radeon_get_ib_value.exit1815_crit_edge:  ; preds = %sw.bb686
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_get_ib_value.exit1815

if.end.i1811:                                     ; preds = %sw.bb686
  call void @__sanitizer_cov_trace_pc() #8
  %469 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %ptr, align 8
  br label %radeon_get_ib_value.exit1815

radeon_get_ib_value.exit1815:                     ; preds = %if.end.i1811, %sw.bb686.radeon_get_ib_value.exit1815_crit_edge
  %.pn.i1812 = phi ptr [ %470, %if.end.i1811 ], [ %468, %sw.bb686.radeon_get_ib_value.exit1815_crit_edge ]
  %retval.0.in.i1813 = getelementptr i32, ptr %.pn.i1812, i32 %add687
  %471 = ptrtoint ptr %retval.0.in.i1813 to i32
  call void @__asan_load4_noabort(i32 %471)
  %retval.0.i1814 = load i32, ptr %retval.0.in.i1813, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i1814)
  %tobool690.not = icmp sgt i32 %retval.0.i1814, -1
  br i1 %tobool690.not, label %if.end692, label %if.then691

if.then691:                                       ; preds = %radeon_get_ib_value.exit1815
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.49) #6
  br label %cleanup

if.end692:                                        ; preds = %radeon_get_ib_value.exit1815
  %call693 = call i32 @r600_dma_cs_next_reloc(ptr noundef %p, ptr noundef nonnull %dst2_reloc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call693)
  %tobool694.not = icmp eq i32 %call693, 0
  br i1 %tobool694.not, label %if.end696, label %if.then695

if.then695:                                       ; preds = %if.end692
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.49) #6
  br label %cleanup

if.end696:                                        ; preds = %if.end692
  %add697 = add nuw i32 %8, 1
  %472 = ptrtoint ptr %chunk_ib to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %chunk_ib, align 4
  %kdata.i1817 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %473, i32 0, i32 1
  %474 = ptrtoint ptr %kdata.i1817 to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %kdata.i1817, align 4
  %tobool.not.i1818 = icmp eq ptr %475, null
  br i1 %tobool.not.i1818, label %if.end.i1847, label %radeon_get_ib_value.exit1842

radeon_get_ib_value.exit1842:                     ; preds = %if.end696
  call void @__sanitizer_cov_trace_pc() #8
  %add705 = add i32 %8, 8
  %retval.0.in.i1840 = getelementptr i32, ptr %475, i32 %add705
  br label %radeon_get_ib_value.exit1851

if.end.i1847:                                     ; preds = %if.end696
  call void @__sanitizer_cov_trace_pc() #8
  %476 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %ptr, align 8
  %add7052263 = add i32 %8, 8
  %retval.0.in.i18402274 = getelementptr i32, ptr %477, i32 %add7052263
  br label %radeon_get_ib_value.exit1851

radeon_get_ib_value.exit1851:                     ; preds = %if.end.i1847, %radeon_get_ib_value.exit1842
  %conv7072284.in.in = phi ptr [ %retval.0.in.i18402274, %if.end.i1847 ], [ %retval.0.in.i1840, %radeon_get_ib_value.exit1842 ]
  %.pn2362 = phi ptr [ %477, %if.end.i1847 ], [ %475, %radeon_get_ib_value.exit1842 ]
  %add70522682278 = phi i32 [ %add7052263, %if.end.i1847 ], [ %add705, %radeon_get_ib_value.exit1842 ]
  %shl70422662280.in.in.in = getelementptr i32, ptr %.pn2362, i32 %add687
  %478 = ptrtoint ptr %shl70422662280.in.in.in to i32
  call void @__asan_load4_noabort(i32 %478)
  %shl70422662280.in.in = load i32, ptr %shl70422662280.in.in.in, align 4
  %shl70422662280.in = zext i32 %shl70422662280.in.in to i64
  %shl70422662280 = shl nuw nsw i64 %shl70422662280.in, 8
  %479 = ptrtoint ptr %conv7072284.in.in to i32
  call void @__asan_load4_noabort(i32 %479)
  %conv7072284.in = load i32, ptr %conv7072284.in.in, align 4
  %conv7072284 = zext i32 %conv7072284.in to i64
  %add7082286 = add i32 %8, 9
  %retval.0.in.i1849 = getelementptr i32, ptr %.pn2362, i32 %add7082286
  %480 = ptrtoint ptr %retval.0.in.i1849 to i32
  call void @__asan_load4_noabort(i32 %480)
  %retval.0.i1850 = load i32, ptr %retval.0.in.i1849, align 4
  %and710 = and i32 %retval.0.i1850, 255
  %conv711 = zext i32 %and710 to i64
  %shl712 = shl nuw nsw i64 %conv711, 32
  %mul714 = shl nuw nsw i32 %and6, 2
  %conv715 = zext i32 %mul714 to i64
  %or713 = add nuw nsw i64 %conv7072284, %conv715
  %add716 = add nuw nsw i64 %or713, %shl712
  %481 = ptrtoint ptr %src_reloc to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %src_reloc, align 4
  %483 = ptrtoint ptr %482 to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %482, align 8
  %size.i1852 = getelementptr inbounds %struct.radeon_bo, ptr %484, i32 0, i32 4, i32 0, i32 5
  %485 = ptrtoint ptr %size.i1852 to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load i32, ptr %size.i1852, align 8
  %conv719 = zext i32 %486 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add716, i64 %conv719)
  %cmp720 = icmp ugt i64 %add716, %conv719
  br i1 %cmp720, label %do.end725, label %if.end732

do.end725:                                        ; preds = %radeon_get_ib_value.exit1851
  call void @__sanitizer_cov_trace_pc() #8
  %487 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %488, ptr noundef nonnull @.str.51, i64 noundef %add716, i32 noundef %486) #10
  br label %cleanup

if.end732:                                        ; preds = %radeon_get_ib_value.exit1851
  %retval.0.i1823225522642282.in = getelementptr i32, ptr %.pn2362, i32 %add697
  %489 = ptrtoint ptr %retval.0.i1823225522642282.in to i32
  call void @__asan_load4_noabort(i32 %489)
  %retval.0.i1823225522642282 = load i32, ptr %retval.0.i1823225522642282.in, align 4
  %conv699 = zext i32 %retval.0.i1823225522642282 to i64
  %shl700 = shl nuw nsw i64 %conv699, 8
  %add735 = add nuw nsw i64 %shl700, %conv715
  %490 = ptrtoint ptr %dst_reloc to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %dst_reloc, align 4
  %492 = ptrtoint ptr %491 to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %491, align 8
  %size.i1854 = getelementptr inbounds %struct.radeon_bo, ptr %493, i32 0, i32 4, i32 0, i32 5
  %494 = ptrtoint ptr %size.i1854 to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load i32, ptr %size.i1854, align 8
  %conv738 = zext i32 %495 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add735, i64 %conv738)
  %cmp739 = icmp ugt i64 %add735, %conv738
  br i1 %cmp739, label %do.end744, label %if.end751

do.end744:                                        ; preds = %if.end732
  call void @__sanitizer_cov_trace_pc() #8
  %496 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %497, ptr noundef nonnull @.str.54, i64 noundef %add735, i32 noundef %495) #10
  br label %cleanup

if.end751:                                        ; preds = %if.end732
  %add754 = add nuw nsw i64 %shl70422662280, %conv715
  %498 = ptrtoint ptr %dst2_reloc to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %dst2_reloc, align 4
  %500 = ptrtoint ptr %499 to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %499, align 8
  %size.i1856 = getelementptr inbounds %struct.radeon_bo, ptr %501, i32 0, i32 4, i32 0, i32 5
  %502 = ptrtoint ptr %size.i1856 to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load i32, ptr %size.i1856, align 8
  %conv757 = zext i32 %503 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add754, i64 %conv757)
  %cmp758 = icmp ugt i64 %add754, %conv757
  br i1 %cmp758, label %do.end763, label %if.end770

do.end763:                                        ; preds = %if.end751
  call void @__sanitizer_cov_trace_pc() #8
  %504 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %505, ptr noundef nonnull @.str.57, i64 noundef %add754, i32 noundef %503) #10
  br label %cleanup

if.end770:                                        ; preds = %if.end751
  call void @__sanitizer_cov_trace_pc() #8
  %gpu_offset771 = getelementptr inbounds %struct.radeon_bo_list, ptr %491, i32 0, i32 2
  %506 = ptrtoint ptr %gpu_offset771 to i32
  call void @__asan_load8_noabort(i32 %506)
  %507 = load i64, ptr %gpu_offset771, align 8
  %shr772 = lshr i64 %507, 8
  %conv773 = trunc i64 %shr772 to i32
  %arrayidx775 = getelementptr i32, ptr %6, i32 %add697
  %508 = ptrtoint ptr %arrayidx775 to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load i32, ptr %arrayidx775, align 4
  %add776 = add i32 %509, %conv773
  store i32 %add776, ptr %arrayidx775, align 4
  %510 = ptrtoint ptr %dst2_reloc to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %dst2_reloc, align 4
  %gpu_offset777 = getelementptr inbounds %struct.radeon_bo_list, ptr %511, i32 0, i32 2
  %512 = ptrtoint ptr %gpu_offset777 to i32
  call void @__asan_load8_noabort(i32 %512)
  %513 = load i64, ptr %gpu_offset777, align 8
  %shr778 = lshr i64 %513, 8
  %conv779 = trunc i64 %shr778 to i32
  %arrayidx781 = getelementptr i32, ptr %6, i32 %add687
  %514 = ptrtoint ptr %arrayidx781 to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load i32, ptr %arrayidx781, align 4
  %add782 = add i32 %515, %conv779
  store i32 %add782, ptr %arrayidx781, align 4
  %516 = ptrtoint ptr %src_reloc to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %src_reloc, align 4
  %gpu_offset783 = getelementptr inbounds %struct.radeon_bo_list, ptr %517, i32 0, i32 2
  %518 = ptrtoint ptr %gpu_offset783 to i32
  call void @__asan_load8_noabort(i32 %518)
  %519 = load i64, ptr %gpu_offset783, align 8
  %520 = trunc i64 %519 to i32
  %conv785 = and i32 %520, -4
  %arrayidx787 = getelementptr i32, ptr %6, i32 %add70522682278
  %521 = ptrtoint ptr %arrayidx787 to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load i32, ptr %arrayidx787, align 4
  %add788 = add i32 %conv785, %522
  store i32 %add788, ptr %arrayidx787, align 4
  %523 = load ptr, ptr %src_reloc, align 4
  %gpu_offset789 = getelementptr inbounds %struct.radeon_bo_list, ptr %523, i32 0, i32 2
  %524 = ptrtoint ptr %gpu_offset789 to i32
  call void @__asan_load8_noabort(i32 %524)
  %525 = load i64, ptr %gpu_offset789, align 8
  %shr790 = lshr i64 %525, 32
  %conv792 = trunc i64 %shr790 to i32
  %and793 = and i32 %conv792, 255
  %arrayidx795 = getelementptr i32, ptr %6, i32 %add7082286
  %526 = ptrtoint ptr %arrayidx795 to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load i32, ptr %arrayidx795, align 4
  %add796 = add i32 %and793, %527
  store i32 %add796, ptr %arrayidx795, align 4
  %528 = ptrtoint ptr %idx2 to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load i32, ptr %idx2, align 8
  %add798 = add i32 %529, 10
  br label %do.cond1100.sink.split

sw.bb799:                                         ; preds = %if.end66
  %add800 = add i32 %8, 2
  %530 = ptrtoint ptr %chunk_ib to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %chunk_ib, align 4
  %kdata.i1859 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %531, i32 0, i32 1
  %532 = ptrtoint ptr %kdata.i1859 to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %kdata.i1859, align 4
  %tobool.not.i1860 = icmp eq ptr %533, null
  br i1 %tobool.not.i1860, label %radeon_get_ib_value.exit1866, label %radeon_get_ib_value.exit1866.thread

radeon_get_ib_value.exit1866:                     ; preds = %sw.bb799
  %534 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %ptr, align 8
  %retval.0.in.i1864 = getelementptr i32, ptr %535, i32 %add800
  %536 = ptrtoint ptr %retval.0.in.i1864 to i32
  call void @__asan_load4_noabort(i32 %536)
  %retval.0.i1865 = load i32, ptr %retval.0.in.i1864, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i1865)
  %tobool803.not = icmp sgt i32 %retval.0.i1865, -1
  br i1 %tobool803.not, label %if.end.i1907, label %if.end.i1871

radeon_get_ib_value.exit1866.thread:              ; preds = %sw.bb799
  %retval.0.in.i18642289 = getelementptr i32, ptr %533, i32 %add800
  %537 = ptrtoint ptr %retval.0.in.i18642289 to i32
  call void @__asan_load4_noabort(i32 %537)
  %retval.0.i18652290 = load i32, ptr %retval.0.in.i18642289, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i18652290)
  %tobool803.not2291 = icmp sgt i32 %retval.0.i18652290, -1
  br i1 %tobool803.not2291, label %radeon_get_ib_value.exit1902.thread, label %radeon_get_ib_value.exit1866.thread.radeon_get_ib_value.exit1875_crit_edge

radeon_get_ib_value.exit1866.thread.radeon_get_ib_value.exit1875_crit_edge: ; preds = %radeon_get_ib_value.exit1866.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_get_ib_value.exit1875

if.end.i1871:                                     ; preds = %radeon_get_ib_value.exit1866
  call void @__sanitizer_cov_trace_pc() #8
  %538 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %ptr, align 8
  br label %radeon_get_ib_value.exit1875

radeon_get_ib_value.exit1875:                     ; preds = %if.end.i1871, %radeon_get_ib_value.exit1866.thread.radeon_get_ib_value.exit1875_crit_edge
  %.pn.i1872 = phi ptr [ %539, %if.end.i1871 ], [ %533, %radeon_get_ib_value.exit1866.thread.radeon_get_ib_value.exit1875_crit_edge ]
  %add8052293 = add nuw i32 %8, 1
  %retval.0.in.i1873 = getelementptr i32, ptr %.pn.i1872, i32 %add8052293
  %540 = ptrtoint ptr %retval.0.in.i1873 to i32
  call void @__asan_load4_noabort(i32 %540)
  %retval.0.i1874 = load i32, ptr %retval.0.in.i1873, align 4
  %conv807 = zext i32 %retval.0.i1874 to i64
  %shl808 = shl nuw nsw i64 %conv807, 8
  %541 = ptrtoint ptr %src_reloc to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load ptr, ptr %src_reloc, align 4
  %gpu_offset809 = getelementptr inbounds %struct.radeon_bo_list, ptr %542, i32 0, i32 2
  %543 = ptrtoint ptr %gpu_offset809 to i32
  call void @__asan_load8_noabort(i32 %543)
  %544 = load i64, ptr %gpu_offset809, align 8
  %shr810 = lshr i64 %544, 8
  %conv811 = trunc i64 %shr810 to i32
  %arrayidx813 = getelementptr i32, ptr %6, i32 %add8052293
  %545 = ptrtoint ptr %arrayidx813 to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load i32, ptr %arrayidx813, align 4
  %add814 = add i32 %546, %conv811
  store i32 %add814, ptr %arrayidx813, align 4
  %add815 = add i32 %8, 7
  %547 = ptrtoint ptr %chunk_ib to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load ptr, ptr %chunk_ib, align 4
  %kdata.i1877 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %548, i32 0, i32 1
  %549 = ptrtoint ptr %kdata.i1877 to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load ptr, ptr %kdata.i1877, align 4
  %tobool.not.i1878 = icmp eq ptr %550, null
  br i1 %tobool.not.i1878, label %if.end.i1889, label %radeon_get_ib_value.exit1875.radeon_get_ib_value.exit1893_crit_edge

radeon_get_ib_value.exit1875.radeon_get_ib_value.exit1893_crit_edge: ; preds = %radeon_get_ib_value.exit1875
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_get_ib_value.exit1893

if.end.i1889:                                     ; preds = %radeon_get_ib_value.exit1875
  call void @__sanitizer_cov_trace_pc() #8
  %551 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load ptr, ptr %ptr, align 8
  br label %radeon_get_ib_value.exit1893

radeon_get_ib_value.exit1893:                     ; preds = %if.end.i1889, %radeon_get_ib_value.exit1875.radeon_get_ib_value.exit1893_crit_edge
  %.pn2361 = phi ptr [ %552, %if.end.i1889 ], [ %550, %radeon_get_ib_value.exit1875.radeon_get_ib_value.exit1893_crit_edge ]
  %conv8172299.in.in = getelementptr i32, ptr %.pn2361, i32 %add815
  %553 = ptrtoint ptr %conv8172299.in.in to i32
  call void @__asan_load4_noabort(i32 %553)
  %conv8172299.in = load i32, ptr %conv8172299.in.in, align 4
  %conv8172299 = zext i32 %conv8172299.in to i64
  %add8182301 = add i32 %8, 8
  %retval.0.in.i1891 = getelementptr i32, ptr %.pn2361, i32 %add8182301
  %554 = ptrtoint ptr %retval.0.in.i1891 to i32
  call void @__asan_load4_noabort(i32 %554)
  %retval.0.i1892 = load i32, ptr %retval.0.in.i1891, align 4
  %and820 = and i32 %retval.0.i1892, 255
  %conv821 = zext i32 %and820 to i64
  %shl822 = shl nuw nsw i64 %conv821, 32
  %or823 = or i64 %shl822, %conv8172299
  %555 = ptrtoint ptr %dst_reloc to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load ptr, ptr %dst_reloc, align 4
  %gpu_offset824 = getelementptr inbounds %struct.radeon_bo_list, ptr %556, i32 0, i32 2
  %557 = ptrtoint ptr %gpu_offset824 to i32
  call void @__asan_load8_noabort(i32 %557)
  %558 = load i64, ptr %gpu_offset824, align 8
  %559 = trunc i64 %558 to i32
  %conv826 = and i32 %559, -4
  %arrayidx828 = getelementptr i32, ptr %6, i32 %add815
  %560 = ptrtoint ptr %arrayidx828 to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load i32, ptr %arrayidx828, align 4
  %add829 = add i32 %conv826, %561
  store i32 %add829, ptr %arrayidx828, align 4
  %562 = load ptr, ptr %dst_reloc, align 4
  %gpu_offset830 = getelementptr inbounds %struct.radeon_bo_list, ptr %562, i32 0, i32 2
  %563 = ptrtoint ptr %gpu_offset830 to i32
  call void @__asan_load8_noabort(i32 %563)
  %564 = load i64, ptr %gpu_offset830, align 8
  %shr831 = lshr i64 %564, 32
  %conv833 = trunc i64 %shr831 to i32
  %and834 = and i32 %conv833, 255
  %arrayidx836 = getelementptr i32, ptr %6, i32 %add8182301
  %565 = ptrtoint ptr %arrayidx836 to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load i32, ptr %arrayidx836, align 4
  br label %if.end872

radeon_get_ib_value.exit1902.thread:              ; preds = %radeon_get_ib_value.exit1866.thread
  call void @__sanitizer_cov_trace_pc() #8
  %add8392303 = add i32 %8, 7
  %retval.0.in.i19002307 = getelementptr i32, ptr %533, i32 %add8392303
  br label %radeon_get_ib_value.exit1911

if.end.i1907:                                     ; preds = %radeon_get_ib_value.exit1866
  call void @__sanitizer_cov_trace_pc() #8
  %add839 = add i32 %8, 7
  %567 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load ptr, ptr %ptr, align 8
  %retval.0.in.i1900 = getelementptr i32, ptr %568, i32 %add839
  br label %radeon_get_ib_value.exit1911

radeon_get_ib_value.exit1911:                     ; preds = %if.end.i1907, %radeon_get_ib_value.exit1902.thread
  %conv8412312.in.in = phi ptr [ %retval.0.in.i1900, %if.end.i1907 ], [ %retval.0.in.i19002307, %radeon_get_ib_value.exit1902.thread ]
  %add83923042311 = phi i32 [ %add839, %if.end.i1907 ], [ %add8392303, %radeon_get_ib_value.exit1902.thread ]
  %.pn.i1908 = phi ptr [ %568, %if.end.i1907 ], [ %533, %radeon_get_ib_value.exit1902.thread ]
  %569 = ptrtoint ptr %conv8412312.in.in to i32
  call void @__asan_load4_noabort(i32 %569)
  %conv8412312.in = load i32, ptr %conv8412312.in.in, align 4
  %conv8412312 = zext i32 %conv8412312.in to i64
  %add8422313 = add i32 %8, 8
  %retval.0.in.i1909 = getelementptr i32, ptr %.pn.i1908, i32 %add8422313
  %570 = ptrtoint ptr %retval.0.in.i1909 to i32
  call void @__asan_load4_noabort(i32 %570)
  %retval.0.i1910 = load i32, ptr %retval.0.in.i1909, align 4
  %and844 = and i32 %retval.0.i1910, 255
  %conv845 = zext i32 %and844 to i64
  %shl846 = shl nuw nsw i64 %conv845, 32
  %or847 = or i64 %shl846, %conv8412312
  %571 = ptrtoint ptr %src_reloc to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load ptr, ptr %src_reloc, align 4
  %gpu_offset848 = getelementptr inbounds %struct.radeon_bo_list, ptr %572, i32 0, i32 2
  %573 = ptrtoint ptr %gpu_offset848 to i32
  call void @__asan_load8_noabort(i32 %573)
  %574 = load i64, ptr %gpu_offset848, align 8
  %575 = trunc i64 %574 to i32
  %conv850 = and i32 %575, -4
  %arrayidx852 = getelementptr i32, ptr %6, i32 %add83923042311
  %576 = ptrtoint ptr %arrayidx852 to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load i32, ptr %arrayidx852, align 4
  %add853 = add i32 %conv850, %577
  store i32 %add853, ptr %arrayidx852, align 4
  %578 = load ptr, ptr %src_reloc, align 4
  %gpu_offset854 = getelementptr inbounds %struct.radeon_bo_list, ptr %578, i32 0, i32 2
  %579 = ptrtoint ptr %gpu_offset854 to i32
  call void @__asan_load8_noabort(i32 %579)
  %580 = load i64, ptr %gpu_offset854, align 8
  %shr855 = lshr i64 %580, 32
  %conv857 = trunc i64 %shr855 to i32
  %and858 = and i32 %conv857, 255
  %arrayidx860 = getelementptr i32, ptr %6, i32 %add8422313
  %581 = ptrtoint ptr %arrayidx860 to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load i32, ptr %arrayidx860, align 4
  %add861 = add i32 %and858, %582
  store i32 %add861, ptr %arrayidx860, align 4
  %add862 = add nuw i32 %8, 1
  %583 = ptrtoint ptr %chunk_ib to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load ptr, ptr %chunk_ib, align 4
  %kdata.i1913 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %584, i32 0, i32 1
  %585 = ptrtoint ptr %kdata.i1913 to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %kdata.i1913, align 4
  %tobool.not.i1914 = icmp eq ptr %586, null
  br i1 %tobool.not.i1914, label %if.end.i1916, label %radeon_get_ib_value.exit1911.radeon_get_ib_value.exit1920_crit_edge

radeon_get_ib_value.exit1911.radeon_get_ib_value.exit1920_crit_edge: ; preds = %radeon_get_ib_value.exit1911
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_get_ib_value.exit1920

if.end.i1916:                                     ; preds = %radeon_get_ib_value.exit1911
  call void @__sanitizer_cov_trace_pc() #8
  %587 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load ptr, ptr %ptr, align 8
  br label %radeon_get_ib_value.exit1920

radeon_get_ib_value.exit1920:                     ; preds = %if.end.i1916, %radeon_get_ib_value.exit1911.radeon_get_ib_value.exit1920_crit_edge
  %.pn.i1917 = phi ptr [ %588, %if.end.i1916 ], [ %586, %radeon_get_ib_value.exit1911.radeon_get_ib_value.exit1920_crit_edge ]
  %retval.0.in.i1918 = getelementptr i32, ptr %.pn.i1917, i32 %add862
  %589 = ptrtoint ptr %retval.0.in.i1918 to i32
  call void @__asan_load4_noabort(i32 %589)
  %retval.0.i1919 = load i32, ptr %retval.0.in.i1918, align 4
  %conv864 = zext i32 %retval.0.i1919 to i64
  %shl865 = shl nuw nsw i64 %conv864, 8
  %590 = ptrtoint ptr %dst_reloc to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load ptr, ptr %dst_reloc, align 4
  %gpu_offset866 = getelementptr inbounds %struct.radeon_bo_list, ptr %591, i32 0, i32 2
  %592 = ptrtoint ptr %gpu_offset866 to i32
  call void @__asan_load8_noabort(i32 %592)
  %593 = load i64, ptr %gpu_offset866, align 8
  %shr867 = lshr i64 %593, 8
  %conv868 = trunc i64 %shr867 to i32
  %arrayidx870 = getelementptr i32, ptr %6, i32 %add862
  %594 = ptrtoint ptr %arrayidx870 to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load i32, ptr %arrayidx870, align 4
  br label %if.end872

if.end872:                                        ; preds = %radeon_get_ib_value.exit1920, %radeon_get_ib_value.exit1893
  %conv868.sink = phi i32 [ %conv868, %radeon_get_ib_value.exit1920 ], [ %566, %radeon_get_ib_value.exit1893 ]
  %.sink3011 = phi i32 [ %595, %radeon_get_ib_value.exit1920 ], [ %and834, %radeon_get_ib_value.exit1893 ]
  %arrayidx870.sink = phi ptr [ %arrayidx870, %radeon_get_ib_value.exit1920 ], [ %arrayidx836, %radeon_get_ib_value.exit1893 ]
  %src_offset.1 = phi i64 [ %or847, %radeon_get_ib_value.exit1920 ], [ %shl808, %radeon_get_ib_value.exit1893 ]
  %dst_offset.2 = phi i64 [ %shl865, %radeon_get_ib_value.exit1920 ], [ %or823, %radeon_get_ib_value.exit1893 ]
  %add871 = add i32 %.sink3011, %conv868.sink
  %596 = ptrtoint ptr %arrayidx870.sink to i32
  call void @__asan_store4_noabort(i32 %596)
  store i32 %add871, ptr %arrayidx870.sink, align 4
  %mul873 = shl nuw nsw i32 %and6, 2
  %conv874 = zext i32 %mul873 to i64
  %add875 = add nsw i64 %src_offset.1, %conv874
  %597 = ptrtoint ptr %src_reloc to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load ptr, ptr %src_reloc, align 4
  %599 = ptrtoint ptr %598 to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load ptr, ptr %598, align 8
  %size.i1921 = getelementptr inbounds %struct.radeon_bo, ptr %600, i32 0, i32 4, i32 0, i32 5
  %601 = ptrtoint ptr %size.i1921 to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load i32, ptr %size.i1921, align 8
  %conv878 = zext i32 %602 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add875, i64 %conv878)
  %cmp879 = icmp ugt i64 %add875, %conv878
  br i1 %cmp879, label %do.end884, label %if.end891

do.end884:                                        ; preds = %if.end872
  call void @__sanitizer_cov_trace_pc() #8
  %603 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %604, ptr noundef nonnull @.str.60, i64 noundef %add875, i32 noundef %602) #10
  br label %cleanup

if.end891:                                        ; preds = %if.end872
  %add894 = add nsw i64 %dst_offset.2, %conv874
  %605 = ptrtoint ptr %dst_reloc to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load ptr, ptr %dst_reloc, align 4
  %607 = ptrtoint ptr %606 to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load ptr, ptr %606, align 8
  %size.i1923 = getelementptr inbounds %struct.radeon_bo, ptr %608, i32 0, i32 4, i32 0, i32 5
  %609 = ptrtoint ptr %size.i1923 to i32
  call void @__asan_load4_noabort(i32 %609)
  %610 = load i32, ptr %size.i1923, align 8
  %conv897 = zext i32 %610 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add894, i64 %conv897)
  %cmp898 = icmp ugt i64 %add894, %conv897
  br i1 %cmp898, label %do.end903, label %if.end910

do.end903:                                        ; preds = %if.end891
  call void @__sanitizer_cov_trace_pc() #8
  %611 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %612, ptr noundef nonnull @.str.63, i64 noundef %add894, i32 noundef %610) #10
  br label %cleanup

if.end910:                                        ; preds = %if.end891
  call void @__sanitizer_cov_trace_pc() #8
  %613 = ptrtoint ptr %idx2 to i32
  call void @__asan_load4_noabort(i32 %613)
  %614 = load i32, ptr %idx2, align 8
  %add912 = add i32 %614, 9
  br label %do.cond1100.sink.split

sw.bb913:                                         ; preds = %if.end66
  %615 = ptrtoint ptr %family914 to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load i32, ptr %family914, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %616)
  %cmp915 = icmp ult i32 %616, 50
  br i1 %cmp915, label %if.then917, label %if.end918

if.then917:                                       ; preds = %sw.bb913
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.48) #6
  br label %cleanup

if.end918:                                        ; preds = %sw.bb913
  call void @__sanitizer_cov_trace_pc() #8
  %617 = ptrtoint ptr %src_reloc to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load ptr, ptr %src_reloc, align 4
  %gpu_offset919 = getelementptr inbounds %struct.radeon_bo_list, ptr %618, i32 0, i32 2
  %619 = ptrtoint ptr %gpu_offset919 to i32
  call void @__asan_load8_noabort(i32 %619)
  %620 = load i64, ptr %gpu_offset919, align 8
  %shr920 = lshr i64 %620, 8
  %conv921 = trunc i64 %shr920 to i32
  %add922 = add nuw i32 %8, 1
  %arrayidx923 = getelementptr i32, ptr %6, i32 %add922
  %621 = ptrtoint ptr %arrayidx923 to i32
  call void @__asan_load4_noabort(i32 %621)
  %622 = load i32, ptr %arrayidx923, align 4
  %add924 = add i32 %622, %conv921
  store i32 %add924, ptr %arrayidx923, align 4
  %623 = ptrtoint ptr %dst_reloc to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load ptr, ptr %dst_reloc, align 4
  %gpu_offset925 = getelementptr inbounds %struct.radeon_bo_list, ptr %624, i32 0, i32 2
  %625 = ptrtoint ptr %gpu_offset925 to i32
  call void @__asan_load8_noabort(i32 %625)
  %626 = load i64, ptr %gpu_offset925, align 8
  %shr926 = lshr i64 %626, 8
  %conv927 = trunc i64 %shr926 to i32
  %add928 = add i32 %8, 4
  %arrayidx929 = getelementptr i32, ptr %6, i32 %add928
  %627 = ptrtoint ptr %arrayidx929 to i32
  call void @__asan_load4_noabort(i32 %627)
  %628 = load i32, ptr %arrayidx929, align 4
  %add930 = add i32 %628, %conv927
  store i32 %add930, ptr %arrayidx929, align 4
  %629 = ptrtoint ptr %idx2 to i32
  call void @__asan_load4_noabort(i32 %629)
  %630 = load i32, ptr %idx2, align 8
  %add932 = add i32 %630, 13
  br label %do.cond1100.sink.split

sw.bb933:                                         ; preds = %if.end66
  %add934 = add i32 %8, 2
  %631 = ptrtoint ptr %chunk_ib to i32
  call void @__asan_load4_noabort(i32 %631)
  %632 = load ptr, ptr %chunk_ib, align 4
  %kdata.i1926 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %632, i32 0, i32 1
  %633 = ptrtoint ptr %kdata.i1926 to i32
  call void @__asan_load4_noabort(i32 %633)
  %634 = load ptr, ptr %kdata.i1926, align 4
  %tobool.not.i1927 = icmp eq ptr %634, null
  br i1 %tobool.not.i1927, label %if.end.i1929, label %sw.bb933.radeon_get_ib_value.exit1933_crit_edge

sw.bb933.radeon_get_ib_value.exit1933_crit_edge:  ; preds = %sw.bb933
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_get_ib_value.exit1933

if.end.i1929:                                     ; preds = %sw.bb933
  call void @__sanitizer_cov_trace_pc() #8
  %635 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %635)
  %636 = load ptr, ptr %ptr, align 8
  br label %radeon_get_ib_value.exit1933

radeon_get_ib_value.exit1933:                     ; preds = %if.end.i1929, %sw.bb933.radeon_get_ib_value.exit1933_crit_edge
  %.pn.i1930 = phi ptr [ %636, %if.end.i1929 ], [ %634, %sw.bb933.radeon_get_ib_value.exit1933_crit_edge ]
  %retval.0.in.i1931 = getelementptr i32, ptr %.pn.i1930, i32 %add934
  %637 = ptrtoint ptr %retval.0.in.i1931 to i32
  call void @__asan_load4_noabort(i32 %637)
  %retval.0.i1932 = load i32, ptr %retval.0.in.i1931, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i1932)
  %tobool937.not = icmp sgt i32 %retval.0.i1932, -1
  br i1 %tobool937.not, label %if.end939, label %if.then938

if.then938:                                       ; preds = %radeon_get_ib_value.exit1933
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.49) #6
  br label %cleanup

if.end939:                                        ; preds = %radeon_get_ib_value.exit1933
  %call940 = call i32 @r600_dma_cs_next_reloc(ptr noundef %p, ptr noundef nonnull %dst2_reloc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call940)
  %tobool941.not = icmp eq i32 %call940, 0
  br i1 %tobool941.not, label %if.end943, label %if.then942

if.then942:                                       ; preds = %if.end939
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.49) #6
  br label %cleanup

if.end943:                                        ; preds = %if.end939
  %add944 = add nuw i32 %8, 1
  %638 = ptrtoint ptr %chunk_ib to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load ptr, ptr %chunk_ib, align 4
  %kdata.i1935 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %639, i32 0, i32 1
  %640 = ptrtoint ptr %kdata.i1935 to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load ptr, ptr %kdata.i1935, align 4
  %tobool.not.i1936 = icmp eq ptr %641, null
  br i1 %tobool.not.i1936, label %if.end.i1965, label %radeon_get_ib_value.exit1960

radeon_get_ib_value.exit1960:                     ; preds = %if.end943
  call void @__sanitizer_cov_trace_pc() #8
  %add952 = add i32 %8, 8
  %retval.0.in.i1958 = getelementptr i32, ptr %641, i32 %add952
  br label %radeon_get_ib_value.exit1969

if.end.i1965:                                     ; preds = %if.end943
  call void @__sanitizer_cov_trace_pc() #8
  %642 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load ptr, ptr %ptr, align 8
  %add9522325 = add i32 %8, 8
  %retval.0.in.i19582336 = getelementptr i32, ptr %643, i32 %add9522325
  br label %radeon_get_ib_value.exit1969

radeon_get_ib_value.exit1969:                     ; preds = %if.end.i1965, %radeon_get_ib_value.exit1960
  %conv9542346.in.in = phi ptr [ %retval.0.in.i19582336, %if.end.i1965 ], [ %retval.0.in.i1958, %radeon_get_ib_value.exit1960 ]
  %.pn2359 = phi ptr [ %643, %if.end.i1965 ], [ %641, %radeon_get_ib_value.exit1960 ]
  %add95223302340 = phi i32 [ %add9522325, %if.end.i1965 ], [ %add952, %radeon_get_ib_value.exit1960 ]
  %shl95123282342.in.in.in = getelementptr i32, ptr %.pn2359, i32 %add934
  %644 = ptrtoint ptr %shl95123282342.in.in.in to i32
  call void @__asan_load4_noabort(i32 %644)
  %shl95123282342.in.in = load i32, ptr %shl95123282342.in.in.in, align 4
  %shl95123282342.in = zext i32 %shl95123282342.in.in to i64
  %shl95123282342 = shl nuw nsw i64 %shl95123282342.in, 8
  %645 = ptrtoint ptr %conv9542346.in.in to i32
  call void @__asan_load4_noabort(i32 %645)
  %conv9542346.in = load i32, ptr %conv9542346.in.in, align 4
  %conv9542346 = zext i32 %conv9542346.in to i64
  %add9552348 = add i32 %8, 9
  %retval.0.in.i1967 = getelementptr i32, ptr %.pn2359, i32 %add9552348
  %646 = ptrtoint ptr %retval.0.in.i1967 to i32
  call void @__asan_load4_noabort(i32 %646)
  %retval.0.i1968 = load i32, ptr %retval.0.in.i1967, align 4
  %and957 = and i32 %retval.0.i1968, 255
  %conv958 = zext i32 %and957 to i64
  %shl959 = shl nuw nsw i64 %conv958, 32
  %mul961 = shl nuw nsw i32 %and6, 2
  %conv962 = zext i32 %mul961 to i64
  %or960 = add nuw nsw i64 %conv9542346, %conv962
  %add963 = add nuw nsw i64 %or960, %shl959
  %647 = ptrtoint ptr %src_reloc to i32
  call void @__asan_load4_noabort(i32 %647)
  %648 = load ptr, ptr %src_reloc, align 4
  %649 = ptrtoint ptr %648 to i32
  call void @__asan_load4_noabort(i32 %649)
  %650 = load ptr, ptr %648, align 8
  %size.i1970 = getelementptr inbounds %struct.radeon_bo, ptr %650, i32 0, i32 4, i32 0, i32 5
  %651 = ptrtoint ptr %size.i1970 to i32
  call void @__asan_load4_noabort(i32 %651)
  %652 = load i32, ptr %size.i1970, align 8
  %conv966 = zext i32 %652 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add963, i64 %conv966)
  %cmp967 = icmp ugt i64 %add963, %conv966
  br i1 %cmp967, label %do.end972, label %if.end979

do.end972:                                        ; preds = %radeon_get_ib_value.exit1969
  call void @__sanitizer_cov_trace_pc() #8
  %653 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %653)
  %654 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %654, ptr noundef nonnull @.str.51, i64 noundef %add963, i32 noundef %652) #10
  br label %cleanup

if.end979:                                        ; preds = %radeon_get_ib_value.exit1969
  %retval.0.i1941231723262344.in = getelementptr i32, ptr %.pn2359, i32 %add944
  %655 = ptrtoint ptr %retval.0.i1941231723262344.in to i32
  call void @__asan_load4_noabort(i32 %655)
  %retval.0.i1941231723262344 = load i32, ptr %retval.0.i1941231723262344.in, align 4
  %conv946 = zext i32 %retval.0.i1941231723262344 to i64
  %shl947 = shl nuw nsw i64 %conv946, 8
  %add982 = add nuw nsw i64 %shl947, %conv962
  %656 = ptrtoint ptr %dst_reloc to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load ptr, ptr %dst_reloc, align 4
  %658 = ptrtoint ptr %657 to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load ptr, ptr %657, align 8
  %size.i1972 = getelementptr inbounds %struct.radeon_bo, ptr %659, i32 0, i32 4, i32 0, i32 5
  %660 = ptrtoint ptr %size.i1972 to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load i32, ptr %size.i1972, align 8
  %conv985 = zext i32 %661 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add982, i64 %conv985)
  %cmp986 = icmp ugt i64 %add982, %conv985
  br i1 %cmp986, label %do.end991, label %if.end998

do.end991:                                        ; preds = %if.end979
  call void @__sanitizer_cov_trace_pc() #8
  %662 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %662)
  %663 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %663, ptr noundef nonnull @.str.54, i64 noundef %add982, i32 noundef %661) #10
  br label %cleanup

if.end998:                                        ; preds = %if.end979
  %add1001 = add nuw nsw i64 %shl95123282342, %conv962
  %664 = ptrtoint ptr %dst2_reloc to i32
  call void @__asan_load4_noabort(i32 %664)
  %665 = load ptr, ptr %dst2_reloc, align 4
  %666 = ptrtoint ptr %665 to i32
  call void @__asan_load4_noabort(i32 %666)
  %667 = load ptr, ptr %665, align 8
  %size.i1974 = getelementptr inbounds %struct.radeon_bo, ptr %667, i32 0, i32 4, i32 0, i32 5
  %668 = ptrtoint ptr %size.i1974 to i32
  call void @__asan_load4_noabort(i32 %668)
  %669 = load i32, ptr %size.i1974, align 8
  %conv1004 = zext i32 %669 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add1001, i64 %conv1004)
  %cmp1005 = icmp ugt i64 %add1001, %conv1004
  br i1 %cmp1005, label %do.end1010, label %if.end1017

do.end1010:                                       ; preds = %if.end998
  call void @__sanitizer_cov_trace_pc() #8
  %670 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %670)
  %671 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %671, ptr noundef nonnull @.str.57, i64 noundef %add1001, i32 noundef %669) #10
  br label %cleanup

if.end1017:                                       ; preds = %if.end998
  call void @__sanitizer_cov_trace_pc() #8
  %gpu_offset1018 = getelementptr inbounds %struct.radeon_bo_list, ptr %657, i32 0, i32 2
  %672 = ptrtoint ptr %gpu_offset1018 to i32
  call void @__asan_load8_noabort(i32 %672)
  %673 = load i64, ptr %gpu_offset1018, align 8
  %shr1019 = lshr i64 %673, 8
  %conv1020 = trunc i64 %shr1019 to i32
  %arrayidx1022 = getelementptr i32, ptr %6, i32 %add944
  %674 = ptrtoint ptr %arrayidx1022 to i32
  call void @__asan_load4_noabort(i32 %674)
  %675 = load i32, ptr %arrayidx1022, align 4
  %add1023 = add i32 %675, %conv1020
  store i32 %add1023, ptr %arrayidx1022, align 4
  %676 = ptrtoint ptr %dst2_reloc to i32
  call void @__asan_load4_noabort(i32 %676)
  %677 = load ptr, ptr %dst2_reloc, align 4
  %gpu_offset1024 = getelementptr inbounds %struct.radeon_bo_list, ptr %677, i32 0, i32 2
  %678 = ptrtoint ptr %gpu_offset1024 to i32
  call void @__asan_load8_noabort(i32 %678)
  %679 = load i64, ptr %gpu_offset1024, align 8
  %shr1025 = lshr i64 %679, 8
  %conv1026 = trunc i64 %shr1025 to i32
  %arrayidx1028 = getelementptr i32, ptr %6, i32 %add934
  %680 = ptrtoint ptr %arrayidx1028 to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load i32, ptr %arrayidx1028, align 4
  %add1029 = add i32 %681, %conv1026
  store i32 %add1029, ptr %arrayidx1028, align 4
  %682 = ptrtoint ptr %src_reloc to i32
  call void @__asan_load4_noabort(i32 %682)
  %683 = load ptr, ptr %src_reloc, align 4
  %gpu_offset1030 = getelementptr inbounds %struct.radeon_bo_list, ptr %683, i32 0, i32 2
  %684 = ptrtoint ptr %gpu_offset1030 to i32
  call void @__asan_load8_noabort(i32 %684)
  %685 = load i64, ptr %gpu_offset1030, align 8
  %686 = trunc i64 %685 to i32
  %conv1032 = and i32 %686, -4
  %arrayidx1034 = getelementptr i32, ptr %6, i32 %add95223302340
  %687 = ptrtoint ptr %arrayidx1034 to i32
  call void @__asan_load4_noabort(i32 %687)
  %688 = load i32, ptr %arrayidx1034, align 4
  %add1035 = add i32 %conv1032, %688
  store i32 %add1035, ptr %arrayidx1034, align 4
  %689 = load ptr, ptr %src_reloc, align 4
  %gpu_offset1036 = getelementptr inbounds %struct.radeon_bo_list, ptr %689, i32 0, i32 2
  %690 = ptrtoint ptr %gpu_offset1036 to i32
  call void @__asan_load8_noabort(i32 %690)
  %691 = load i64, ptr %gpu_offset1036, align 8
  %shr1037 = lshr i64 %691, 32
  %conv1039 = trunc i64 %shr1037 to i32
  %and1040 = and i32 %conv1039, 255
  %arrayidx1042 = getelementptr i32, ptr %6, i32 %add9552348
  %692 = ptrtoint ptr %arrayidx1042 to i32
  call void @__asan_load4_noabort(i32 %692)
  %693 = load i32, ptr %arrayidx1042, align 4
  %add1043 = add i32 %and1040, %693
  store i32 %add1043, ptr %arrayidx1042, align 4
  %694 = ptrtoint ptr %idx2 to i32
  call void @__asan_load4_noabort(i32 %694)
  %695 = load i32, ptr %idx2, align 8
  %add1045 = add i32 %695, 10
  br label %do.cond1100.sink.split

sw.default1046:                                   ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.71, i32 noundef %8, i32 noundef %retval.0.i) #6
  br label %cleanup

sw.bb1048:                                        ; preds = %radeon_get_ib_value.exit
  %call1049 = call i32 @r600_dma_cs_next_reloc(ptr noundef %p, ptr noundef nonnull %dst_reloc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1049)
  %tobool1050.not = icmp eq i32 %call1049, 0
  br i1 %tobool1050.not, label %if.end1052, label %if.then1051

if.then1051:                                      ; preds = %sw.bb1048
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.72) #6
  br label %cleanup

if.end1052:                                       ; preds = %sw.bb1048
  %add1053 = add nuw i32 %8, 1
  %696 = ptrtoint ptr %chunk_ib to i32
  call void @__asan_load4_noabort(i32 %696)
  %697 = load ptr, ptr %chunk_ib, align 4
  %kdata.i1977 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %697, i32 0, i32 1
  %698 = ptrtoint ptr %kdata.i1977 to i32
  call void @__asan_load4_noabort(i32 %698)
  %699 = load ptr, ptr %kdata.i1977, align 4
  %tobool.not.i1978 = icmp eq ptr %699, null
  br i1 %tobool.not.i1978, label %if.end.i1989, label %if.end1052.radeon_get_ib_value.exit1993_crit_edge

if.end1052.radeon_get_ib_value.exit1993_crit_edge: ; preds = %if.end1052
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_get_ib_value.exit1993

if.end.i1989:                                     ; preds = %if.end1052
  call void @__sanitizer_cov_trace_pc() #8
  %700 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %700)
  %701 = load ptr, ptr %ptr, align 8
  br label %radeon_get_ib_value.exit1993

radeon_get_ib_value.exit1993:                     ; preds = %if.end.i1989, %if.end1052.radeon_get_ib_value.exit1993_crit_edge
  %.pn = phi ptr [ %701, %if.end.i1989 ], [ %699, %if.end1052.radeon_get_ib_value.exit1993_crit_edge ]
  %conv10552355.in.in = getelementptr i32, ptr %.pn, i32 %add1053
  %702 = ptrtoint ptr %conv10552355.in.in to i32
  call void @__asan_load4_noabort(i32 %702)
  %conv10552355.in = load i32, ptr %conv10552355.in.in, align 4
  %conv10552355 = zext i32 %conv10552355.in to i64
  %add10562357 = add i32 %8, 3
  %retval.0.in.i1991 = getelementptr i32, ptr %.pn, i32 %add10562357
  %703 = ptrtoint ptr %retval.0.in.i1991 to i32
  call void @__asan_load4_noabort(i32 %703)
  %retval.0.i1992 = load i32, ptr %retval.0.in.i1991, align 4
  %and1058 = and i32 %retval.0.i1992, 16711680
  %conv1059 = zext i32 %and1058 to i64
  %shl1060 = shl nuw nsw i64 %conv1059, 16
  %or1061 = or i64 %shl1060, %conv10552355
  %mul1062 = shl nuw nsw i32 %and6, 2
  %conv1063 = zext i32 %mul1062 to i64
  %add1064 = add nuw nsw i64 %or1061, %conv1063
  %704 = ptrtoint ptr %dst_reloc to i32
  call void @__asan_load4_noabort(i32 %704)
  %705 = load ptr, ptr %dst_reloc, align 4
  %706 = ptrtoint ptr %705 to i32
  call void @__asan_load4_noabort(i32 %706)
  %707 = load ptr, ptr %705, align 8
  %size.i1994 = getelementptr inbounds %struct.radeon_bo, ptr %707, i32 0, i32 4, i32 0, i32 5
  %708 = ptrtoint ptr %size.i1994 to i32
  call void @__asan_load4_noabort(i32 %708)
  %709 = load i32, ptr %size.i1994, align 8
  %conv1067 = zext i32 %709 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add1064, i64 %conv1067)
  %cmp1068 = icmp ugt i64 %add1064, %conv1067
  br i1 %cmp1068, label %do.end1073, label %if.end1077

do.end1073:                                       ; preds = %radeon_get_ib_value.exit1993
  call void @__sanitizer_cov_trace_pc() #8
  %710 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %710)
  %711 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %711, ptr noundef nonnull @.str.74, i64 noundef %or1061, i32 noundef %709) #10
  br label %cleanup

if.end1077:                                       ; preds = %radeon_get_ib_value.exit1993
  call void @__sanitizer_cov_trace_pc() #8
  %gpu_offset1078 = getelementptr inbounds %struct.radeon_bo_list, ptr %705, i32 0, i32 2
  %712 = ptrtoint ptr %gpu_offset1078 to i32
  call void @__asan_load8_noabort(i32 %712)
  %713 = load i64, ptr %gpu_offset1078, align 8
  %714 = trunc i64 %713 to i32
  %conv1080 = and i32 %714, -4
  %arrayidx1082 = getelementptr i32, ptr %6, i32 %add1053
  %715 = ptrtoint ptr %arrayidx1082 to i32
  call void @__asan_load4_noabort(i32 %715)
  %716 = load i32, ptr %arrayidx1082, align 4
  %add1083 = add i32 %conv1080, %716
  store i32 %add1083, ptr %arrayidx1082, align 4
  %717 = ptrtoint ptr %dst_reloc to i32
  call void @__asan_load4_noabort(i32 %717)
  %718 = load ptr, ptr %dst_reloc, align 4
  %gpu_offset1084 = getelementptr inbounds %struct.radeon_bo_list, ptr %718, i32 0, i32 2
  %719 = ptrtoint ptr %gpu_offset1084 to i32
  call void @__asan_load8_noabort(i32 %719)
  %720 = load i64, ptr %gpu_offset1084, align 8
  %sh.diff = lshr i64 %720, 16
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %and1089 = and i32 %tr.sh.diff, 16711680
  %arrayidx1091 = getelementptr i32, ptr %6, i32 %add10562357
  %721 = ptrtoint ptr %arrayidx1091 to i32
  call void @__asan_load4_noabort(i32 %721)
  %722 = load i32, ptr %arrayidx1091, align 4
  %add1092 = add i32 %and1089, %722
  store i32 %add1092, ptr %arrayidx1091, align 4
  %723 = ptrtoint ptr %idx2 to i32
  call void @__asan_load4_noabort(i32 %723)
  %724 = load i32, ptr %idx2, align 8
  %add1094 = add i32 %724, 4
  br label %do.cond1100.sink.split

sw.bb1095:                                        ; preds = %radeon_get_ib_value.exit
  call void @__sanitizer_cov_trace_pc() #8
  %add1097 = add nuw i32 %8, 1
  br label %do.cond1100.sink.split

sw.default1098:                                   ; preds = %radeon_get_ib_value.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.76, i32 noundef %shr, i32 noundef %8) #6
  br label %cleanup

do.cond1100.sink.split:                           ; preds = %sw.bb1095, %if.end1077, %if.end1017, %if.end918, %if.end910, %if.end770, %if.end683, %if.end602, %if.end473, %if.end354, %if.end319, %if.end264, %if.end123
  %add1094.sink = phi i32 [ %add1094, %if.end1077 ], [ %add1097, %sw.bb1095 ], [ %add1045, %if.end1017 ], [ %add932, %if.end918 ], [ %add912, %if.end910 ], [ %add798, %if.end770 ], [ %add685, %if.end683 ], [ %add630, %if.end602 ], [ %add517, %if.end473 ], [ %add384, %if.end354 ], [ %add349, %if.end319 ], [ %add266, %if.end264 ], [ %add153, %if.end123 ]
  %725 = ptrtoint ptr %idx2 to i32
  call void @__asan_store4_noabort(i32 %725)
  store i32 %add1094.sink, ptr %idx2, align 8
  br label %do.cond1100

do.cond1100:                                      ; preds = %do.cond1100.sink.split, %sw.epilog.do.cond1100_crit_edge
  %726 = ptrtoint ptr %idx2 to i32
  call void @__asan_load4_noabort(i32 %726)
  %727 = load i32, ptr %idx2, align 8
  %728 = ptrtoint ptr %chunk_ib to i32
  call void @__asan_load4_noabort(i32 %728)
  %729 = load ptr, ptr %chunk_ib, align 4
  %730 = ptrtoint ptr %729 to i32
  call void @__asan_load4_noabort(i32 %730)
  %731 = load i32, ptr %729, align 4
  %cmp1104 = icmp ult i32 %727, %731
  br i1 %cmp1104, label %do.cond1100.do.body_crit_edge, label %do.cond1100.cleanup_crit_edge

do.cond1100.cleanup_crit_edge:                    ; preds = %do.cond1100
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.cond1100.do.body_crit_edge:                    ; preds = %do.cond1100
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

cleanup:                                          ; preds = %do.cond1100.cleanup_crit_edge, %sw.default1098, %do.end1073, %if.then1051, %sw.default1046, %do.end1010, %do.end991, %do.end972, %if.then942, %if.then938, %if.then917, %do.end903, %do.end884, %do.end763, %do.end744, %do.end725, %if.then695, %if.then691, %if.then635, %do.end595, %do.end576, %do.end557, %if.then527, %if.then523, %do.end466, %do.end447, %do.end428, %if.then388, %if.then353, %do.end313, %do.end296, %do.end257, %do.end238, %do.end116, %do.end97, %if.then65, %if.then61, %do.end, %sw.default, %if.then10, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %sw.default1098 ], [ -22, %if.then1051 ], [ -22, %do.end1073 ], [ -22, %if.then61 ], [ -22, %if.then65 ], [ -22, %sw.default1046 ], [ -22, %if.then938 ], [ -22, %if.then942 ], [ -22, %do.end972 ], [ -22, %do.end991 ], [ -22, %do.end1010 ], [ -22, %if.then917 ], [ -22, %do.end884 ], [ -22, %do.end903 ], [ -22, %if.then691 ], [ -22, %if.then695 ], [ -22, %do.end725 ], [ -22, %do.end744 ], [ -22, %do.end763 ], [ -22, %if.then635 ], [ -22, %if.then523 ], [ -22, %if.then527 ], [ -22, %do.end557 ], [ -22, %do.end576 ], [ -22, %do.end595 ], [ -22, %if.then388 ], [ -22, %do.end428 ], [ -22, %do.end447 ], [ -22, %do.end466 ], [ -22, %if.then353 ], [ -22, %do.end296 ], [ -22, %do.end313 ], [ -22, %do.end238 ], [ -22, %do.end257 ], [ -22, %do.end97 ], [ -22, %do.end116 ], [ -22, %if.then10 ], [ -22, %sw.default ], [ -22, %do.end ], [ 0, %do.cond1100.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dst2_reloc) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dst_reloc) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src_reloc) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_dma_cs_next_reloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @evergreen_ib_parse(ptr nocapture noundef readonly %rdev, ptr nocapture noundef readonly %ib) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ptr = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 3
  %length_dw = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %do.cond23.do.body_crit_edge, %entry
  %idx.0 = phi i32 [ 0, %entry ], [ %idx.151, %do.cond23.do.body_crit_edge ]
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 8
  %arrayidx = getelementptr i32, ptr %1, i32 %idx.0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %shr = lshr i32 %3, 30
  %shr4 = lshr i32 %3, 16
  %and5 = and i32 %shr4, 16383
  %4 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.390)
  switch i32 %shr, label %do.end20 [
    i32 0, label %do.end
    i32 2, label %sw.epilog.thread46
    i32 3, label %sw.bb9
  ]

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.77) #10
  br label %do.end24

sw.epilog.thread46:                               ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %add = add nuw i32 %idx.0, 1
  br label %do.cond23

sw.bb9:                                           ; preds = %do.body
  %shr12 = lshr i32 %3, 8
  %add.i = add nuw i32 %idx.0, 1
  %arrayidx.i = getelementptr i32, ptr %1, i32 %add.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %trunc = trunc i32 %shr12 to i8
  %9 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.391)
  switch i8 %trunc, label %sw.bb9.do.end24_crit_edge [
    i8 16, label %sw.bb9.sw.epilog_crit_edge
    i8 17, label %sw.bb.i
    i8 18, label %sw.bb9.sw.epilog_crit_edge248
    i8 19, label %sw.bb9.sw.epilog_crit_edge249
    i8 21, label %sw.bb9.sw.epilog_crit_edge250
    i8 22, label %sw.bb9.sw.epilog_crit_edge251
    i8 24, label %sw.bb9.sw.epilog_crit_edge252
    i8 32, label %sw.bb9.sw.epilog_crit_edge253
    i8 34, label %sw.bb9.sw.epilog_crit_edge254
    i8 35, label %sw.bb9.sw.epilog_crit_edge255
    i8 36, label %sw.bb9.sw.epilog_crit_edge256
    i8 37, label %sw.bb9.sw.epilog_crit_edge257
    i8 38, label %sw.bb9.sw.epilog_crit_edge258
    i8 39, label %sw.bb9.sw.epilog_crit_edge259
    i8 40, label %sw.bb9.sw.epilog_crit_edge260
    i8 41, label %sw.bb9.sw.epilog_crit_edge261
    i8 42, label %sw.bb9.sw.epilog_crit_edge262
    i8 43, label %sw.bb9.sw.epilog_crit_edge263
    i8 45, label %sw.bb9.sw.epilog_crit_edge264
    i8 46, label %sw.bb9.sw.epilog_crit_edge265
    i8 47, label %sw.bb9.sw.epilog_crit_edge266
    i8 48, label %sw.bb9.sw.epilog_crit_edge267
    i8 52, label %sw.bb9.sw.epilog_crit_edge268
    i8 53, label %sw.bb9.sw.epilog_crit_edge269
    i8 54, label %sw.bb9.sw.epilog_crit_edge270
    i8 58, label %sw.bb9.sw.epilog_crit_edge271
    i8 60, label %sw.bb9.sw.epilog_crit_edge272
    i8 61, label %sw.bb9.sw.epilog_crit_edge273
    i8 66, label %sw.bb9.sw.epilog_crit_edge274
    i8 67, label %sw.bb9.sw.epilog_crit_edge275
    i8 70, label %sw.bb9.sw.epilog_crit_edge276
    i8 71, label %sw.bb9.sw.epilog_crit_edge277
    i8 72, label %sw.bb9.sw.epilog_crit_edge278
    i8 105, label %sw.bb9.sw.epilog_crit_edge279
    i8 107, label %sw.bb9.sw.epilog_crit_edge280
    i8 108, label %sw.bb9.sw.epilog_crit_edge281
    i8 109, label %sw.bb9.sw.epilog_crit_edge282
    i8 110, label %sw.bb9.sw.epilog_crit_edge283
    i8 111, label %sw.bb9.sw.epilog_crit_edge284
    i8 112, label %sw.bb9.sw.epilog_crit_edge285
    i8 115, label %sw.bb9.sw.epilog_crit_edge286
    i8 116, label %sw.bb9.sw.epilog_crit_edge287
    i8 20, label %sw.bb9.sw.epilog_crit_edge288
    i8 69, label %sw.bb3.i
    i8 59, label %sw.bb10.i
    i8 104, label %sw.bb21.i
    i8 65, label %sw.bb38.i
    i8 117, label %sw.bb128.i
  ]

sw.bb9.sw.epilog_crit_edge288:                    ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9.sw.epilog_crit_edge287:                    ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9.sw.epilog_crit_edge286:                    ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9.sw.epilog_crit_edge285:                    ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9.sw.epilog_crit_edge284:                    ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9.sw.epilog_crit_edge283:                    ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9.sw.epilog_crit_edge282:                    ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9.sw.epilog_crit_edge281:                    ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9.sw.epilog_crit_edge280:                    ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9.sw.epilog_crit_edge279:                    ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9.sw.epilog_crit_edge278:                    ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9.sw.epilog_crit_edge277:                    ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9.sw.epilog_crit_edge276:                    ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9.sw.epilog_crit_edge275:                    ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9.sw.epilog_crit_edge274:                    ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9.sw.epilog_crit_edge273:                    ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9.sw.epilog_crit_edge272:                    ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9.sw.epilog_crit_edge271:                    ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9.sw.epilog_crit_edge270:                    ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9.sw.epilog_crit_edge269:                    ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9.sw.epilog_crit_edge268:                    ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9.sw.epilog_crit_edge267:                    ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9.sw.epilog_crit_edge266:                    ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9.sw.epilog_crit_edge265:                    ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9.sw.epilog_crit_edge264:                    ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9.sw.epilog_crit_edge263:                    ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9.sw.epilog_crit_edge262:                    ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9.sw.epilog_crit_edge261:                    ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9.sw.epilog_crit_edge260:                    ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9.sw.epilog_crit_edge259:                    ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9.sw.epilog_crit_edge258:                    ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9.sw.epilog_crit_edge257:                    ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9.sw.epilog_crit_edge256:                    ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9.sw.epilog_crit_edge255:                    ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9.sw.epilog_crit_edge254:                    ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9.sw.epilog_crit_edge253:                    ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9.sw.epilog_crit_edge252:                    ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9.sw.epilog_crit_edge251:                    ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9.sw.epilog_crit_edge250:                    ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9.sw.epilog_crit_edge249:                    ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9.sw.epilog_crit_edge248:                    ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9.sw.epilog_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9.do.end24_crit_edge:                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

sw.bb.i:                                          ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 1
  br i1 %cmp.not.i, label %sw.bb.i.sw.epilog_crit_edge, label %if.then.i

sw.bb.i.sw.epilog_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.373) #6
  br label %do.end24

sw.bb3.i:                                         ; preds = %sw.bb9
  %and.i = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb3.i.sw.epilog_crit_edge, label %if.then4.i

sw.bb3.i.sw.epilog_crit_edge:                     ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then4.i:                                       ; preds = %sw.bb3.i
  %add5.i = add i32 %idx.0, 6
  %arrayidx6.i = getelementptr i32, ptr %1, i32 %add5.i
  %10 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx6.i, align 4
  %mul.i = shl i32 %11, 2
  %call.i = tail call fastcc zeroext i1 @evergreen_vm_reg_valid(i32 noundef %mul.i) #6
  br i1 %call.i, label %if.then4.i.sw.epilog_crit_edge, label %if.then4.i.do.end24_crit_edge

if.then4.i.do.end24_crit_edge:                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

if.then4.i.sw.epilog_crit_edge:                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb10.i:                                        ; preds = %sw.bb9
  %and11.i = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %sw.bb10.i.sw.epilog_crit_edge, label %if.then13.i

sw.bb10.i.sw.epilog_crit_edge:                    ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then13.i:                                      ; preds = %sw.bb10.i
  %add14.i = add i32 %idx.0, 4
  %arrayidx15.i = getelementptr i32, ptr %1, i32 %add14.i
  %12 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx15.i, align 4
  %mul16.i = shl i32 %13, 2
  %call17.i = tail call fastcc zeroext i1 @evergreen_vm_reg_valid(i32 noundef %mul16.i) #6
  br i1 %call17.i, label %if.then13.i.sw.epilog_crit_edge, label %if.then13.i.do.end24_crit_edge

if.then13.i.do.end24_crit_edge:                   ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

if.then13.i.sw.epilog_crit_edge:                  ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb21.i:                                        ; preds = %sw.bb9
  %shl.i = shl i32 %8, 2
  %add22.i = add i32 %shl.i, 32768
  %mul23.i = shl nuw nsw i32 %and5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 11263, i32 %shl.i)
  %14 = icmp ugt i32 %shl.i, 11263
  %add24.i = add nsw i32 %mul23.i, -11268
  %15 = add i32 %add24.i, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -44032, i32 %15)
  %cmp28.i = icmp ult i32 %15, -44032
  %or.cond1.i = select i1 %14, i1 true, i1 %cmp28.i
  br i1 %or.cond1.i, label %if.then29.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %cmp3215.not.i = icmp eq i32 %and5, 0
  br i1 %cmp3215.not.i, label %for.cond.preheader.i.sw.epilog_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.sw.epilog_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then29.i:                                      ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.152) #6
  br label %do.end24

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not = icmp eq i32 %inc.i, %and5
  br i1 %exitcond.not, label %for.cond.i.sw.epilog_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond.i.sw.epilog_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.016.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %mul33.i = shl i32 %i.016.i, 2
  %add34.i = add i32 %add22.i, %mul33.i
  %call35.i = tail call fastcc zeroext i1 @evergreen_vm_reg_valid(i32 noundef %add34.i) #6
  br i1 %call35.i, label %for.cond.i, label %for.body.i.do.end24_crit_edge

for.body.i.do.end24_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

sw.bb38.i:                                        ; preds = %sw.bb9
  %add39.i = add i32 %idx.0, 5
  %arrayidx40.i = getelementptr i32, ptr %1, i32 %add39.i
  %16 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx40.i, align 4
  %add41.i = add i32 %idx.0, 2
  %arrayidx42.i = getelementptr i32, ptr %1, i32 %add41.i
  %18 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx42.i, align 4
  %20 = and i32 %19, 3145728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp48.not.i = icmp eq i32 %20, 0
  %21 = and i32 %19, 1613758464
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %22 = icmp eq i32 %21, 0
  %and53.i = and i32 %17, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i)
  %tobool54.not.i = icmp eq i32 %and53.i, 0
  %or.cond3.i = select i1 %22, i1 %tobool54.not.i, i1 false
  %and60.i = and i32 %17, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i)
  %tobool61.not.i = icmp eq i32 %and60.i, 0
  %or.cond4.i = select i1 %or.cond3.i, i1 %tobool61.not.i, i1 false
  %rem.i = and i32 %17, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool64.not.i = icmp eq i32 %rem.i, 0
  %or.cond5.i = select i1 %or.cond4.i, i1 true, i1 %tobool64.not.i
  br i1 %or.cond5.i, label %if.end67.i, label %if.then65.i

if.then65.i:                                      ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.132) #6
  br label %do.end24

if.end67.i:                                       ; preds = %sw.bb38.i
  %23 = and i32 %19, 1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp44.not.i = icmp eq i32 %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i)
  %tobool69.not.i = icmp ne i32 %and60.i, 0
  %or.cond6.i = select i1 %tobool69.not.i, i1 %cmp44.not.i, i1 false
  br i1 %or.cond6.i, label %if.then74.i, label %if.end67.i.if.end96.i_crit_edge

if.end67.i.if.end96.i_crit_edge:                  ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96.i

if.then74.i:                                      ; preds = %if.end67.i
  %and76.i = and i32 %17, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76.i)
  %tobool77.not.i = icmp eq i32 %and76.i, 0
  br i1 %tobool77.not.i, label %for.cond82.preheader.i, label %if.then78.i

for.cond82.preheader.i:                           ; preds = %if.then74.i
  %and83.i = and i32 %17, 2097151
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83.i)
  %cmp8411.not.i = icmp eq i32 %and83.i, 0
  br i1 %cmp8411.not.i, label %for.cond82.preheader.i.if.end96.i_crit_edge, label %for.cond82.preheader.i.for.body85.i_crit_edge

for.cond82.preheader.i.for.body85.i_crit_edge:    ; preds = %for.cond82.preheader.i
  br label %for.body85.i

for.cond82.preheader.i.if.end96.i_crit_edge:      ; preds = %for.cond82.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96.i

if.then78.i:                                      ; preds = %if.then74.i
  %shl75.i = shl i32 %8, 2
  %call79.i = tail call fastcc zeroext i1 @evergreen_vm_reg_valid(i32 noundef %shl75.i) #6
  br i1 %call79.i, label %if.then78.i.if.end96.i_crit_edge, label %if.then80.i

if.then78.i.if.end96.i_crit_edge:                 ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96.i

if.then80.i:                                      ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.374) #6
  br label %do.end24

for.cond82.i:                                     ; preds = %for.body85.i
  %inc92.i = add nuw nsw i32 %i.112.i, 1
  %exitcond.not.i = icmp eq i32 %inc92.i, %and83.i
  br i1 %exitcond.not.i, label %for.cond82.i.if.end96.i_crit_edge, label %for.cond82.i.for.body85.i_crit_edge

for.cond82.i.for.body85.i_crit_edge:              ; preds = %for.cond82.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body85.i

for.cond82.i.if.end96.i_crit_edge:                ; preds = %for.cond82.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96.i

for.body85.i:                                     ; preds = %for.cond82.i.for.body85.i_crit_edge, %for.cond82.preheader.i.for.body85.i_crit_edge
  %i.112.i = phi i32 [ %inc92.i, %for.cond82.i.for.body85.i_crit_edge ], [ 0, %for.cond82.preheader.i.for.body85.i_crit_edge ]
  %24 = add i32 %i.112.i, %8
  %add87.i = shl i32 %24, 2
  %call88.i = tail call fastcc zeroext i1 @evergreen_vm_reg_valid(i32 noundef %add87.i) #6
  br i1 %call88.i, label %for.cond82.i, label %if.then89.i

if.then89.i:                                      ; preds = %for.body85.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.374) #6
  br label %do.end24

if.end96.i:                                       ; preds = %for.cond82.i.if.end96.i_crit_edge, %if.then78.i.if.end96.i_crit_edge, %for.cond82.preheader.i.if.end96.i_crit_edge, %if.end67.i.if.end96.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i)
  %tobool98.not.i = icmp ne i32 %and53.i, 0
  %or.cond7.i = select i1 %tobool98.not.i, i1 %cmp48.not.i, i1 false
  br i1 %or.cond7.i, label %if.then103.i, label %if.end96.i.sw.epilog_crit_edge

if.end96.i.sw.epilog_crit_edge:                   ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then103.i:                                     ; preds = %if.end96.i
  %add104.i = add i32 %idx.0, 3
  %arrayidx105.i = getelementptr i32, ptr %1, i32 %add104.i
  %25 = ptrtoint ptr %arrayidx105.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx105.i, align 4
  %and106.i = and i32 %17, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106.i)
  %tobool107.not.i = icmp eq i32 %and106.i, 0
  br i1 %tobool107.not.i, label %for.cond113.preheader.i, label %if.then108.i

for.cond113.preheader.i:                          ; preds = %if.then103.i
  %and114.i = and i32 %17, 2097151
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114.i)
  %cmp11513.not.i = icmp eq i32 %and114.i, 0
  br i1 %cmp11513.not.i, label %for.cond113.preheader.i.sw.epilog_crit_edge, label %for.cond113.preheader.i.for.body116.i_crit_edge

for.cond113.preheader.i.for.body116.i_crit_edge:  ; preds = %for.cond113.preheader.i
  br label %for.body116.i

for.cond113.preheader.i.sw.epilog_crit_edge:      ; preds = %for.cond113.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then108.i:                                     ; preds = %if.then103.i
  %call109.i = tail call fastcc zeroext i1 @evergreen_vm_reg_valid(i32 noundef %26) #6
  br i1 %call109.i, label %if.then108.i.sw.epilog_crit_edge, label %if.then110.i

if.then108.i.sw.epilog_crit_edge:                 ; preds = %if.then108.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then110.i:                                     ; preds = %if.then108.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.375) #6
  br label %do.end24

for.cond113.i:                                    ; preds = %for.body116.i
  %inc123.i = add nuw nsw i32 %i.214.i, 1
  %exitcond18.not.i = icmp eq i32 %inc123.i, %and114.i
  br i1 %exitcond18.not.i, label %for.cond113.i.sw.epilog_crit_edge, label %for.cond113.i.for.body116.i_crit_edge

for.cond113.i.for.body116.i_crit_edge:            ; preds = %for.cond113.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body116.i

for.cond113.i.sw.epilog_crit_edge:                ; preds = %for.cond113.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

for.body116.i:                                    ; preds = %for.cond113.i.for.body116.i_crit_edge, %for.cond113.preheader.i.for.body116.i_crit_edge
  %i.214.i = phi i32 [ %inc123.i, %for.cond113.i.for.body116.i_crit_edge ], [ 0, %for.cond113.preheader.i.for.body116.i_crit_edge ]
  %mul117.i = shl i32 %i.214.i, 2
  %add118.i = add i32 %mul117.i, %26
  %call119.i = tail call fastcc zeroext i1 @evergreen_vm_reg_valid(i32 noundef %add118.i) #6
  br i1 %call119.i, label %for.cond113.i, label %if.then120.i

if.then120.i:                                     ; preds = %for.body116.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.375) #6
  br label %do.end24

sw.bb128.i:                                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and5)
  %cmp130.not.i = icmp eq i32 %and5, 2
  br i1 %cmp130.not.i, label %if.end132.i, label %if.then131.i

if.then131.i:                                     ; preds = %sw.bb128.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.184) #6
  br label %do.end24

if.end132.i:                                      ; preds = %sw.bb128.i
  %27 = add i32 %8, -30867456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -786432, i32 %27)
  %28 = icmp ult i32 %27, -786432
  br i1 %28, label %if.then140.i, label %if.end132.i.sw.epilog_crit_edge

if.end132.i.sw.epilog_crit_edge:                  ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then140.i:                                     ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #8
  %shr135.i = lshr i32 %8, 16
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.186, i32 noundef %shr135.i, i32 noundef %add.i) #6
  br label %do.end24

do.end20:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str, i32 noundef %shr) #10
  br label %do.end24

sw.epilog:                                        ; preds = %if.end132.i.sw.epilog_crit_edge, %for.cond113.i.sw.epilog_crit_edge, %if.then108.i.sw.epilog_crit_edge, %for.cond113.preheader.i.sw.epilog_crit_edge, %if.end96.i.sw.epilog_crit_edge, %for.cond.i.sw.epilog_crit_edge, %for.cond.preheader.i.sw.epilog_crit_edge, %if.then13.i.sw.epilog_crit_edge, %sw.bb10.i.sw.epilog_crit_edge, %if.then4.i.sw.epilog_crit_edge, %sw.bb3.i.sw.epilog_crit_edge, %sw.bb.i.sw.epilog_crit_edge, %sw.bb9.sw.epilog_crit_edge, %sw.bb9.sw.epilog_crit_edge248, %sw.bb9.sw.epilog_crit_edge249, %sw.bb9.sw.epilog_crit_edge250, %sw.bb9.sw.epilog_crit_edge251, %sw.bb9.sw.epilog_crit_edge252, %sw.bb9.sw.epilog_crit_edge253, %sw.bb9.sw.epilog_crit_edge254, %sw.bb9.sw.epilog_crit_edge255, %sw.bb9.sw.epilog_crit_edge256, %sw.bb9.sw.epilog_crit_edge257, %sw.bb9.sw.epilog_crit_edge258, %sw.bb9.sw.epilog_crit_edge259, %sw.bb9.sw.epilog_crit_edge260, %sw.bb9.sw.epilog_crit_edge261, %sw.bb9.sw.epilog_crit_edge262, %sw.bb9.sw.epilog_crit_edge263, %sw.bb9.sw.epilog_crit_edge264, %sw.bb9.sw.epilog_crit_edge265, %sw.bb9.sw.epilog_crit_edge266, %sw.bb9.sw.epilog_crit_edge267, %sw.bb9.sw.epilog_crit_edge268, %sw.bb9.sw.epilog_crit_edge269, %sw.bb9.sw.epilog_crit_edge270, %sw.bb9.sw.epilog_crit_edge271, %sw.bb9.sw.epilog_crit_edge272, %sw.bb9.sw.epilog_crit_edge273, %sw.bb9.sw.epilog_crit_edge274, %sw.bb9.sw.epilog_crit_edge275, %sw.bb9.sw.epilog_crit_edge276, %sw.bb9.sw.epilog_crit_edge277, %sw.bb9.sw.epilog_crit_edge278, %sw.bb9.sw.epilog_crit_edge279, %sw.bb9.sw.epilog_crit_edge280, %sw.bb9.sw.epilog_crit_edge281, %sw.bb9.sw.epilog_crit_edge282, %sw.bb9.sw.epilog_crit_edge283, %sw.bb9.sw.epilog_crit_edge284, %sw.bb9.sw.epilog_crit_edge285, %sw.bb9.sw.epilog_crit_edge286, %sw.bb9.sw.epilog_crit_edge287, %sw.bb9.sw.epilog_crit_edge288
  %add16 = add i32 %idx.0, 2
  %add17 = add i32 %add16, %and5
  br label %do.cond23

do.cond23:                                        ; preds = %sw.epilog, %sw.epilog.thread46
  %idx.151 = phi i32 [ %add, %sw.epilog.thread46 ], [ %add17, %sw.epilog ]
  %31 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %length_dw, align 4
  %cmp = icmp ult i32 %idx.151, %32
  br i1 %cmp, label %do.cond23.do.body_crit_edge, label %do.cond23.do.end24_crit_edge

do.cond23.do.end24_crit_edge:                     ; preds = %do.cond23
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

do.cond23.do.body_crit_edge:                      ; preds = %do.cond23
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.end24:                                         ; preds = %do.cond23.do.end24_crit_edge, %do.end20, %if.then140.i, %if.then131.i, %if.then120.i, %if.then110.i, %if.then89.i, %if.then80.i, %if.then65.i, %for.body.i.do.end24_crit_edge, %if.then29.i, %if.then13.i.do.end24_crit_edge, %if.then4.i.do.end24_crit_edge, %if.then.i, %sw.bb9.do.end24_crit_edge, %do.end
  %ret.145 = phi i32 [ -22, %do.end20 ], [ -22, %do.end ], [ -22, %if.then65.i ], [ -22, %if.then110.i ], [ -22, %if.then120.i ], [ -22, %if.then80.i ], [ -22, %if.then89.i ], [ -22, %if.then29.i ], [ -22, %if.then.i ], [ -22, %if.then140.i ], [ -22, %if.then131.i ], [ -22, %for.body.i.do.end24_crit_edge ], [ -22, %sw.bb9.do.end24_crit_edge ], [ -22, %if.then13.i.do.end24_crit_edge ], [ -22, %if.then4.i.do.end24_crit_edge ], [ 0, %do.cond23.do.end24_crit_edge ]
  ret i32 %ret.145
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @evergreen_dma_ib_parse(ptr nocapture noundef readnone %rdev, ptr nocapture noundef readonly %ib) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ptr = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 3
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 8
  %length_dw = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %idx.0 = phi i32 [ 0, %entry ], [ %idx.1, %do.cond.do.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %1, i32 %idx.0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %shr = lshr i32 %3, 28
  %and1 = and i32 %3, 1048575
  %and2 = lshr i32 %3, 20
  %4 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.392)
  switch i32 %shr, label %sw.default42 [
    i32 2, label %sw.bb
    i32 3, label %sw.bb11
    i32 13, label %sw.bb38
    i32 15, label %sw.bb40
  ]

sw.bb:                                            ; preds = %do.body
  %trunc77 = trunc i32 %and2 to i8
  %5 = zext i8 %trunc77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.393)
  switch i8 %trunc77, label %sw.default [
    i8 8, label %sw.bb4
    i8 0, label %sw.bb6
  ]

sw.bb4:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %add = add i32 %idx.0, 7
  %add5 = add i32 %add, %and1
  br label %do.cond

sw.bb6:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %add7 = add i32 %and1, %idx.0
  %add8 = add i32 %add7, 3
  br label %do.cond

sw.default:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, i32 noundef %idx.0, i32 noundef %3) #6
  br label %cleanup

sw.bb11:                                          ; preds = %do.body
  %trunc = trunc i32 %and2 to i8
  %6 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.394)
  switch i8 %trunc, label %sw.default34 [
    i8 0, label %sw.bb12
    i8 8, label %sw.bb14
    i8 64, label %sw.bb16
    i8 65, label %sw.bb18
    i8 68, label %sw.bb20
    i8 72, label %sw.bb22
    i8 73, label %sw.bb24
    i8 75, label %sw.bb26
    i8 76, label %sw.bb28
    i8 77, label %sw.bb30
    i8 79, label %sw.bb32
  ]

sw.bb12:                                          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  %add13 = add i32 %idx.0, 5
  br label %do.cond

sw.bb14:                                          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  %add15 = add i32 %idx.0, 9
  br label %do.cond

sw.bb16:                                          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  %add17 = add i32 %idx.0, 5
  br label %do.cond

sw.bb18:                                          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  %add19 = add i32 %idx.0, 9
  br label %do.cond

sw.bb20:                                          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  %add21 = add i32 %idx.0, 7
  br label %do.cond

sw.bb22:                                          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  %add23 = add i32 %idx.0, 10
  br label %do.cond

sw.bb24:                                          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  %add25 = add i32 %idx.0, 12
  br label %do.cond

sw.bb26:                                          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  %add27 = add i32 %idx.0, 10
  br label %do.cond

sw.bb28:                                          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  %add29 = add i32 %idx.0, 9
  br label %do.cond

sw.bb30:                                          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  %add31 = add i32 %idx.0, 13
  br label %do.cond

sw.bb32:                                          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  %add33 = add i32 %idx.0, 10
  br label %do.cond

sw.default34:                                     ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.71, i32 noundef %idx.0, i32 noundef %3) #6
  br label %cleanup

sw.bb38:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %add39 = add i32 %idx.0, 4
  br label %do.cond

sw.bb40:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %add41 = add nuw i32 %idx.0, 1
  br label %do.cond

sw.default42:                                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.76, i32 noundef %shr, i32 noundef %idx.0) #6
  br label %cleanup

do.cond:                                          ; preds = %sw.bb40, %sw.bb38, %sw.bb32, %sw.bb30, %sw.bb28, %sw.bb26, %sw.bb24, %sw.bb22, %sw.bb20, %sw.bb18, %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb6, %sw.bb4
  %idx.1 = phi i32 [ %add41, %sw.bb40 ], [ %add39, %sw.bb38 ], [ %add33, %sw.bb32 ], [ %add31, %sw.bb30 ], [ %add29, %sw.bb28 ], [ %add27, %sw.bb26 ], [ %add25, %sw.bb24 ], [ %add23, %sw.bb22 ], [ %add21, %sw.bb20 ], [ %add19, %sw.bb18 ], [ %add17, %sw.bb16 ], [ %add15, %sw.bb14 ], [ %add13, %sw.bb12 ], [ %add8, %sw.bb6 ], [ %add5, %sw.bb4 ]
  %7 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %length_dw, align 4
  %cmp = icmp ult i32 %idx.1, %8
  br i1 %cmp, label %do.cond.do.body_crit_edge, label %do.cond.cleanup_crit_edge

do.cond.cleanup_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

cleanup:                                          ; preds = %do.cond.cleanup_crit_edge, %sw.default42, %sw.default34, %sw.default
  %retval.0 = phi i32 [ -22, %sw.default42 ], [ -22, %sw.default34 ], [ -22, %sw.default ], [ 0, %do.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_cs_common_vline_parse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_cs_packet_next_reloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @evergreen_cs_track_check(ptr noundef readonly %p) unnamed_addr #0 align 64 {
entry:
  %surf.i209 = alloca %struct.eg_surface, align 4
  %surf.i175 = alloca %struct.eg_surface, align 4
  %surf.i = alloca %struct.eg_surface, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %track1 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 18
  %0 = ptrtoint ptr %track1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %track1, align 8
  %streamout_dirty = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 41
  %2 = ptrtoint ptr %streamout_dirty to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streamout_dirty, align 1, !range !631
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end35_crit_edge, label %land.lhs.true

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

land.lhs.true:                                    ; preds = %entry
  %vgt_strmout_config = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %vgt_strmout_config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vgt_strmout_config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end35_crit_edge, label %for.cond.preheader

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

for.cond.preheader:                               ; preds = %land.lhs.true
  %vgt_strmout_buffer_config = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 20
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %for.cond.preheader.for.inc_crit_edge, label %if.then5

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then5:                                         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %vgt_strmout_buffer_config to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vgt_strmout_buffer_config, align 4
  %and6 = and i32 %7, 15
  br label %for.inc

for.inc:                                          ; preds = %if.then5, %for.cond.preheader.for.inc_crit_edge
  %buffer_mask.1 = phi i32 [ %and6, %if.then5 ], [ 0, %for.cond.preheader.for.inc_crit_edge ]
  %and.1 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool4.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool4.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then5.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then5.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %vgt_strmout_buffer_config to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vgt_strmout_buffer_config, align 4
  %shr.1 = lshr i32 %9, 4
  %and6.1 = and i32 %shr.1, 15
  %or.1 = or i32 %and6.1, %buffer_mask.1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then5.1, %for.inc.for.inc.1_crit_edge
  %buffer_mask.1.1 = phi i32 [ %or.1, %if.then5.1 ], [ %buffer_mask.1, %for.inc.for.inc.1_crit_edge ]
  %and.2 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool4.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool4.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then5.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.then5.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %vgt_strmout_buffer_config to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vgt_strmout_buffer_config, align 4
  %shr.2 = lshr i32 %11, 8
  %and6.2 = and i32 %shr.2, 15
  %or.2 = or i32 %and6.2, %buffer_mask.1.1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then5.2, %for.inc.1.for.inc.2_crit_edge
  %buffer_mask.1.2 = phi i32 [ %or.2, %if.then5.2 ], [ %buffer_mask.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %and.3 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool4.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool4.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then5.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

if.then5.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %vgt_strmout_buffer_config to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vgt_strmout_buffer_config, align 4
  %shr.3 = lshr i32 %13, 12
  %and6.3 = and i32 %shr.3, 15
  %or.3 = or i32 %and6.3, %buffer_mask.1.2
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then5.3, %for.inc.2.for.inc.3_crit_edge
  %buffer_mask.1.3 = phi i32 [ %or.3, %if.then5.3 ], [ %buffer_mask.1.2, %for.inc.2.for.inc.3_crit_edge ]
  %and11 = and i32 %buffer_mask.1.3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %for.inc.3.for.inc31_crit_edge, label %if.then13

for.inc.3.for.inc31_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc31

if.then13:                                        ; preds = %for.inc.3
  %arrayidx = getelementptr %struct.evergreen_cs_track, ptr %1, i32 0, i32 21, i32 0
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %tobool14.not = icmp eq ptr %15, null
  br i1 %tobool14.not, label %if.then13.do.end_crit_edge, label %if.then15

if.then13.do.end_crit_edge:                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then15:                                        ; preds = %if.then13
  %arrayidx16 = getelementptr %struct.evergreen_cs_track, ptr %1, i32 0, i32 22, i32 0
  %16 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx16, align 4
  %conv = zext i32 %17 to i64
  %arrayidx17 = getelementptr %struct.evergreen_cs_track, ptr %1, i32 0, i32 23, i32 0
  %18 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx17, align 4
  %conv18 = zext i32 %19 to i64
  %add = add nuw nsw i64 %conv18, %conv
  %size.i = getelementptr inbounds %struct.radeon_bo, ptr %15, i32 0, i32 4, i32 0, i32 5
  %20 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size.i, align 8
  %conv21 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv21)
  %cmp22 = icmp ugt i64 %add, %conv21
  br i1 %cmp22, label %if.then15.if.then24_crit_edge, label %if.then15.for.inc31_crit_edge

if.then15.for.inc31_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc31

if.then15.if.then24_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24

if.then24:                                        ; preds = %if.then15.3.if.then24_crit_edge, %if.then15.2.if.then24_crit_edge, %if.then15.1.if.then24_crit_edge, %if.then15.if.then24_crit_edge
  %i.1372.lcssa439 = phi i32 [ 0, %if.then15.if.then24_crit_edge ], [ 1, %if.then15.1.if.then24_crit_edge ], [ 2, %if.then15.2.if.then24_crit_edge ], [ 3, %if.then15.3.if.then24_crit_edge ]
  %add.lcssa = phi i64 [ %add, %if.then15.if.then24_crit_edge ], [ %add.1, %if.then15.1.if.then24_crit_edge ], [ %add.2, %if.then15.2.if.then24_crit_edge ], [ %add.3, %if.then15.3.if.then24_crit_edge ]
  %.lcssa = phi i32 [ %21, %if.then15.if.then24_crit_edge ], [ %31, %if.then15.1.if.then24_crit_edge ], [ %39, %if.then15.2.if.then24_crit_edge ], [ %47, %if.then15.3.if.then24_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.191, i32 noundef %i.1372.lcssa439, i64 noundef %add.lcssa, i32 noundef %.lcssa) #6
  br label %cleanup112

do.end:                                           ; preds = %if.then13.3.do.end_crit_edge, %if.then13.2.do.end_crit_edge, %if.then13.1.do.end_crit_edge, %if.then13.do.end_crit_edge
  %i.1372.lcssa = phi i32 [ 0, %if.then13.do.end_crit_edge ], [ 1, %if.then13.1.do.end_crit_edge ], [ 2, %if.then13.2.do.end_crit_edge ], [ 3, %if.then13.3.do.end_crit_edge ]
  %22 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.192, i32 noundef %i.1372.lcssa) #10
  br label %cleanup112

for.inc31:                                        ; preds = %if.then15.for.inc31_crit_edge, %for.inc.3.for.inc31_crit_edge
  %and11.1 = and i32 %buffer_mask.1.3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.1)
  %tobool12.not.1 = icmp eq i32 %and11.1, 0
  br i1 %tobool12.not.1, label %for.inc31.for.inc31.1_crit_edge, label %if.then13.1

for.inc31.for.inc31.1_crit_edge:                  ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc31.1

if.then13.1:                                      ; preds = %for.inc31
  %arrayidx.1 = getelementptr %struct.evergreen_cs_track, ptr %1, i32 0, i32 21, i32 1
  %24 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.1, align 4
  %tobool14.not.1 = icmp eq ptr %25, null
  br i1 %tobool14.not.1, label %if.then13.1.do.end_crit_edge, label %if.then15.1

if.then13.1.do.end_crit_edge:                     ; preds = %if.then13.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then15.1:                                      ; preds = %if.then13.1
  %arrayidx16.1 = getelementptr %struct.evergreen_cs_track, ptr %1, i32 0, i32 22, i32 1
  %26 = ptrtoint ptr %arrayidx16.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx16.1, align 4
  %conv.1 = zext i32 %27 to i64
  %arrayidx17.1 = getelementptr %struct.evergreen_cs_track, ptr %1, i32 0, i32 23, i32 1
  %28 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx17.1, align 4
  %conv18.1 = zext i32 %29 to i64
  %add.1 = add nuw nsw i64 %conv18.1, %conv.1
  %size.i.1 = getelementptr inbounds %struct.radeon_bo, ptr %25, i32 0, i32 4, i32 0, i32 5
  %30 = ptrtoint ptr %size.i.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size.i.1, align 8
  %conv21.1 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add.1, i64 %conv21.1)
  %cmp22.1 = icmp ugt i64 %add.1, %conv21.1
  br i1 %cmp22.1, label %if.then15.1.if.then24_crit_edge, label %if.then15.1.for.inc31.1_crit_edge

if.then15.1.for.inc31.1_crit_edge:                ; preds = %if.then15.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc31.1

if.then15.1.if.then24_crit_edge:                  ; preds = %if.then15.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24

for.inc31.1:                                      ; preds = %if.then15.1.for.inc31.1_crit_edge, %for.inc31.for.inc31.1_crit_edge
  %and11.2 = and i32 %buffer_mask.1.3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.2)
  %tobool12.not.2 = icmp eq i32 %and11.2, 0
  br i1 %tobool12.not.2, label %for.inc31.1.for.inc31.2_crit_edge, label %if.then13.2

for.inc31.1.for.inc31.2_crit_edge:                ; preds = %for.inc31.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc31.2

if.then13.2:                                      ; preds = %for.inc31.1
  %arrayidx.2 = getelementptr %struct.evergreen_cs_track, ptr %1, i32 0, i32 21, i32 2
  %32 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.2, align 4
  %tobool14.not.2 = icmp eq ptr %33, null
  br i1 %tobool14.not.2, label %if.then13.2.do.end_crit_edge, label %if.then15.2

if.then13.2.do.end_crit_edge:                     ; preds = %if.then13.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then15.2:                                      ; preds = %if.then13.2
  %arrayidx16.2 = getelementptr %struct.evergreen_cs_track, ptr %1, i32 0, i32 22, i32 2
  %34 = ptrtoint ptr %arrayidx16.2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx16.2, align 4
  %conv.2 = zext i32 %35 to i64
  %arrayidx17.2 = getelementptr %struct.evergreen_cs_track, ptr %1, i32 0, i32 23, i32 2
  %36 = ptrtoint ptr %arrayidx17.2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx17.2, align 4
  %conv18.2 = zext i32 %37 to i64
  %add.2 = add nuw nsw i64 %conv18.2, %conv.2
  %size.i.2 = getelementptr inbounds %struct.radeon_bo, ptr %33, i32 0, i32 4, i32 0, i32 5
  %38 = ptrtoint ptr %size.i.2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %size.i.2, align 8
  %conv21.2 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add.2, i64 %conv21.2)
  %cmp22.2 = icmp ugt i64 %add.2, %conv21.2
  br i1 %cmp22.2, label %if.then15.2.if.then24_crit_edge, label %if.then15.2.for.inc31.2_crit_edge

if.then15.2.for.inc31.2_crit_edge:                ; preds = %if.then15.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc31.2

if.then15.2.if.then24_crit_edge:                  ; preds = %if.then15.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24

for.inc31.2:                                      ; preds = %if.then15.2.for.inc31.2_crit_edge, %for.inc31.1.for.inc31.2_crit_edge
  %and11.3 = and i32 %buffer_mask.1.3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.3)
  %tobool12.not.3 = icmp eq i32 %and11.3, 0
  br i1 %tobool12.not.3, label %for.inc31.2.for.inc31.3_crit_edge, label %if.then13.3

for.inc31.2.for.inc31.3_crit_edge:                ; preds = %for.inc31.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc31.3

if.then13.3:                                      ; preds = %for.inc31.2
  %arrayidx.3 = getelementptr %struct.evergreen_cs_track, ptr %1, i32 0, i32 21, i32 3
  %40 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.3, align 4
  %tobool14.not.3 = icmp eq ptr %41, null
  br i1 %tobool14.not.3, label %if.then13.3.do.end_crit_edge, label %if.then15.3

if.then13.3.do.end_crit_edge:                     ; preds = %if.then13.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then15.3:                                      ; preds = %if.then13.3
  %arrayidx16.3 = getelementptr %struct.evergreen_cs_track, ptr %1, i32 0, i32 22, i32 3
  %42 = ptrtoint ptr %arrayidx16.3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx16.3, align 4
  %conv.3 = zext i32 %43 to i64
  %arrayidx17.3 = getelementptr %struct.evergreen_cs_track, ptr %1, i32 0, i32 23, i32 3
  %44 = ptrtoint ptr %arrayidx17.3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx17.3, align 4
  %conv18.3 = zext i32 %45 to i64
  %add.3 = add nuw nsw i64 %conv18.3, %conv.3
  %size.i.3 = getelementptr inbounds %struct.radeon_bo, ptr %41, i32 0, i32 4, i32 0, i32 5
  %46 = ptrtoint ptr %size.i.3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %size.i.3, align 8
  %conv21.3 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add.3, i64 %conv21.3)
  %cmp22.3 = icmp ugt i64 %add.3, %conv21.3
  br i1 %cmp22.3, label %if.then15.3.if.then24_crit_edge, label %if.then15.3.for.inc31.3_crit_edge

if.then15.3.for.inc31.3_crit_edge:                ; preds = %if.then15.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc31.3

if.then15.3.if.then24_crit_edge:                  ; preds = %if.then15.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24

for.inc31.3:                                      ; preds = %if.then15.3.for.inc31.3_crit_edge, %for.inc31.2.for.inc31.3_crit_edge
  %48 = ptrtoint ptr %streamout_dirty to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %streamout_dirty, align 1
  br label %if.end35

if.end35:                                         ; preds = %for.inc31.3, %land.lhs.true.if.end35_crit_edge, %entry.if.end35_crit_edge
  %sx_misc_kill_all_prims = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 38
  %49 = ptrtoint ptr %sx_misc_kill_all_prims to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %sx_misc_kill_all_prims, align 4, !range !631
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool36.not = icmp eq i8 %50, 0
  br i1 %tobool36.not, label %if.end38, label %if.end35.cleanup112_crit_edge

if.end35.cleanup112_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup112

if.end38:                                         ; preds = %if.end35
  %cb_dirty = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 39
  %51 = ptrtoint ptr %cb_dirty to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %cb_dirty, align 1, !range !631
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool39.not = icmp eq i8 %52, 0
  br i1 %tobool39.not, label %if.end38.if.end78_crit_edge, label %if.then40

if.end38.if.end78_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78

if.then40:                                        ; preds = %if.end38
  %cb_target_mask = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 17
  %53 = ptrtoint ptr %cb_target_mask to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cb_target_mask, align 4
  %nby.i = getelementptr inbounds %struct.eg_surface, ptr %surf.i, i32 0, i32 1
  %mode.i = getelementptr inbounds %struct.eg_surface, ptr %surf.i, i32 0, i32 3
  %format.i = getelementptr inbounds %struct.eg_surface, ptr %surf.i, i32 0, i32 2
  %tsplit.i = getelementptr inbounds %struct.eg_surface, ptr %surf.i, i32 0, i32 7
  %nbanks.i = getelementptr inbounds %struct.eg_surface, ptr %surf.i, i32 0, i32 4
  %bankw.i = getelementptr inbounds %struct.eg_surface, ptr %surf.i, i32 0, i32 5
  %bankh.i = getelementptr inbounds %struct.eg_surface, ptr %surf.i, i32 0, i32 6
  %mtilea.i = getelementptr inbounds %struct.eg_surface, ptr %surf.i, i32 0, i32 8
  %nsamples.i = getelementptr inbounds %struct.eg_surface, ptr %surf.i, i32 0, i32 9
  %base_align.i = getelementptr inbounds %struct.eg_surface, ptr %surf.i, i32 0, i32 14
  %layer_size.i = getelementptr inbounds %struct.eg_surface, ptr %surf.i, i32 0, i32 11
  %ptr.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 16, i32 3
  %bpe.i = getelementptr inbounds %struct.eg_surface, ptr %surf.i, i32 0, i32 10
  br label %for.body44

for.body44:                                       ; preds = %for.inc74.for.body44_crit_edge, %if.then40
  %i.2378 = phi i32 [ 0, %if.then40 ], [ %inc75, %for.inc74.for.body44_crit_edge ]
  %arrayidx45 = getelementptr %struct.evergreen_cs_track, ptr %1, i32 0, i32 9, i32 %i.2378
  %55 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx45, align 4
  %57 = and i32 %56, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp48.not = icmp eq i32 %57, 0
  br i1 %cmp48.not, label %for.body44.for.inc74_crit_edge, label %land.lhs.true50

for.body44.for.inc74_crit_edge:                   ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc74

land.lhs.true50:                                  ; preds = %for.body44
  %mul51 = shl nuw nsw i32 %i.2378, 2
  %58 = shl nuw i32 15, %mul51
  %59 = and i32 %58, %54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool54.not = icmp eq i32 %59, 0
  br i1 %tobool54.not, label %land.lhs.true50.for.inc74_crit_edge, label %if.then55

land.lhs.true50.for.inc74_crit_edge:              ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc74

if.then55:                                        ; preds = %land.lhs.true50
  %arrayidx56 = getelementptr %struct.evergreen_cs_track, ptr %1, i32 0, i32 5, i32 %i.2378
  %60 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx56, align 4
  %cmp57 = icmp eq ptr %61, null
  br i1 %cmp57, label %do.end62, label %if.end65

do.end62:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %p, align 8
  %64 = ptrtoint ptr %cb_target_mask to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cb_target_mask, align 4
  %cb_shader_mask = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 18
  %66 = ptrtoint ptr %cb_shader_mask to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cb_shader_mask, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %63, ptr noundef nonnull @.str.195, ptr noundef nonnull @.str.193, i32 noundef 981, i32 noundef %65, i32 noundef %67, i32 noundef %i.2378) #10
  br label %cleanup112

if.end65:                                         ; preds = %if.then55
  %68 = ptrtoint ptr %track1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %track1, align 8
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %surf.i) #6
  %70 = call ptr @memset(ptr %surf.i, i32 255, i32 60)
  %arrayidx.i = getelementptr %struct.evergreen_cs_track, ptr %69, i32 0, i32 10, i32 %i.2378
  %71 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx.i, align 4
  %shr.i = lshr i32 %72, 13
  %and.i = and i32 %shr.i, 2047
  %add.i = add nuw nsw i32 %and.i, 1
  %arrayidx2.i = getelementptr %struct.evergreen_cs_track, ptr %69, i32 0, i32 11, i32 %i.2378
  %73 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx2.i, align 4
  %arrayidx3.i = getelementptr %struct.evergreen_cs_track, ptr %69, i32 0, i32 12, i32 %i.2378
  %75 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx3.i, align 4
  %add4.i = shl i32 %74, 3
  %mul.i = add i32 %add4.i, 8
  %77 = ptrtoint ptr %surf.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %mul.i, ptr %surf.i, align 4
  %add5.i = shl i32 %76, 6
  %mul6.i = add i32 %add5.i, 64
  %div.i = udiv i32 %mul6.i, %mul.i
  %78 = ptrtoint ptr %nby.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %div.i, ptr %nby.i, align 4
  %arrayidx8.i = getelementptr %struct.evergreen_cs_track, ptr %69, i32 0, i32 9, i32 %i.2378
  %79 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx8.i, align 4
  %shr9.i = lshr i32 %80, 8
  %and10.i = and i32 %shr9.i, 15
  %81 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %and10.i, ptr %mode.i, align 4
  %82 = load i32, ptr %arrayidx8.i, align 4
  %shr13.i = lshr i32 %82, 2
  %and14.i = and i32 %shr13.i, 63
  %83 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %and14.i, ptr %format.i, align 4
  %arrayidx15.i = getelementptr %struct.evergreen_cs_track, ptr %69, i32 0, i32 14, i32 %i.2378
  %84 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx15.i, align 4
  %shr16.i = lshr i32 %85, 5
  %and17.i = and i32 %shr16.i, 15
  %86 = ptrtoint ptr %tsplit.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %and17.i, ptr %tsplit.i, align 4
  %87 = load i32, ptr %arrayidx15.i, align 4
  %shr20.i = lshr i32 %87, 10
  %and21.i = and i32 %shr20.i, 3
  %88 = ptrtoint ptr %nbanks.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %and21.i, ptr %nbanks.i, align 4
  %89 = load i32, ptr %arrayidx15.i, align 4
  %shr24.i = lshr i32 %89, 13
  %and25.i = and i32 %shr24.i, 3
  %90 = ptrtoint ptr %bankw.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %and25.i, ptr %bankw.i, align 4
  %91 = load i32, ptr %arrayidx15.i, align 4
  %shr28.i = lshr i32 %91, 16
  %and29.i = and i32 %shr28.i, 3
  %92 = ptrtoint ptr %bankh.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %and29.i, ptr %bankh.i, align 4
  %93 = load i32, ptr %arrayidx15.i, align 4
  %shr32.i = lshr i32 %93, 19
  %and33.i = and i32 %shr32.i, 3
  %94 = ptrtoint ptr %mtilea.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %and33.i, ptr %mtilea.i, align 4
  %95 = ptrtoint ptr %nsamples.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 1, ptr %nsamples.i, align 4
  %call.i = call zeroext i1 @r600_fmt_is_valid_color(i32 noundef %and14.i) #6
  br i1 %call.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  %96 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %p, align 8
  %98 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %format.i, align 4
  %100 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx8.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %97, ptr noundef nonnull @.str.197, ptr noundef nonnull @.str.198, i32 noundef 418, i32 noundef %99, i32 noundef %i.2378, i32 noundef %101) #10
  br label %evergreen_cs_track_validate_cb.exit.thread

if.end.i:                                         ; preds = %if.end65
  %call38.i = call fastcc i32 @evergreen_surface_value_conv_check(ptr noundef %p, ptr noundef nonnull %surf.i, ptr noundef nonnull @.str.199) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool.not.i, label %if.end40.i, label %if.end.i.evergreen_cs_track_validate_cb.exit.thread_crit_edge

if.end.i.evergreen_cs_track_validate_cb.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %evergreen_cs_track_validate_cb.exit.thread

if.end40.i:                                       ; preds = %if.end.i
  %call41.i = call fastcc i32 @evergreen_surface_check(ptr noundef %p, ptr noundef nonnull %surf.i, ptr noundef nonnull @.str.199) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %if.end56.i, label %do.end46.i

do.end46.i:                                       ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  %102 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %p, align 8
  %104 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx2.i, align 4
  %106 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx3.i, align 4
  %108 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx15.i, align 4
  %110 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx8.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %103, ptr noundef nonnull @.str.201, ptr noundef nonnull @.str.198, i32 noundef 432, i32 noundef %i.2378, i32 noundef %105, i32 noundef %107, i32 noundef %109, i32 noundef %111) #10
  br label %evergreen_cs_track_validate_cb.exit.thread

if.end56.i:                                       ; preds = %if.end40.i
  %arrayidx57.i = getelementptr %struct.evergreen_cs_track, ptr %69, i32 0, i32 6, i32 %i.2378
  %112 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx57.i, align 4
  %shl.i = shl i32 %113, 8
  %114 = ptrtoint ptr %base_align.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %base_align.i, align 4
  %sub.i = add i32 %115, -1
  %and58.i = and i32 %sub.i, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i)
  %tobool59.not.i = icmp eq i32 %and58.i, 0
  br i1 %tobool59.not.i, label %if.end66.i, label %do.end63.i

do.end63.i:                                       ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #8
  %116 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %117, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.198, i32 noundef 439, i32 noundef %i.2378, i32 noundef %shl.i, i32 noundef %115) #10
  br label %evergreen_cs_track_validate_cb.exit.thread

if.end66.i:                                       ; preds = %if.end56.i
  %118 = ptrtoint ptr %layer_size.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %layer_size.i, align 4
  %mul67.i = mul i32 %119, %add.i
  %add68.i = add i32 %mul67.i, %shl.i
  %arrayidx69.i = getelementptr %struct.evergreen_cs_track, ptr %69, i32 0, i32 5, i32 %i.2378
  %120 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx69.i, align 4
  %size.i.i = getelementptr inbounds %struct.radeon_bo, ptr %121, i32 0, i32 4, i32 0, i32 5
  %122 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add68.i, i32 %123)
  %cmp.i = icmp ugt i32 %add68.i, %123
  br i1 %cmp.i, label %if.then71.i, label %if.end66.i.evergreen_cs_track_validate_cb.exit_crit_edge

if.end66.i.evergreen_cs_track_validate_cb.exit_crit_edge: ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %evergreen_cs_track_validate_cb.exit

if.then71.i:                                      ; preds = %if.end66.i
  %124 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool73.not.i = icmp eq i32 %125, 0
  br i1 %tobool73.not.i, label %if.then74.i, label %if.then71.i.do.end129.i_crit_edge

if.then71.i.do.end129.i_crit_edge:                ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end129.i

if.then74.i:                                      ; preds = %if.then71.i
  %126 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ptr.i, align 8
  %128 = ptrtoint ptr %nby.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %nby.i, align 4
  %130 = call i32 @llvm.usub.sat.i32(i32 %129, i32 8) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %129, i32 %130)
  %cmp90241.i = icmp ugt i32 %129, %130
  br i1 %cmp90241.i, label %for.body.lr.ph.i, label %if.then74.i.do.end129.i_crit_edge

if.then74.i.do.end129.i_crit_edge:                ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end129.i

for.body.lr.ph.i:                                 ; preds = %if.then74.i
  %131 = ptrtoint ptr %surf.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %surf.i, align 4
  %133 = ptrtoint ptr %bpe.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %bpe.i, align 4
  %135 = ptrtoint ptr %nsamples.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %nsamples.i, align 4
  %mul93.i = mul i32 %134, %add.i
  %mul95.i = mul i32 %mul93.i, %136
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %nby76.0242.i = phi i32 [ %129, %for.body.lr.ph.i ], [ %dec.i, %for.inc.i.for.body.i_crit_edge ]
  %mul92.i = mul i32 %nby76.0242.i, %132
  %mul96.i = mul i32 %mul95.i, %mul92.i
  %add97.i = add i32 %mul96.i, %shl.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add97.i, i32 %123)
  %cmp98.not.i = icmp ugt i32 %add97.i, %123
  br i1 %cmp98.not.i, label %for.inc.i, label %if.then102.critedge.i

for.inc.i:                                        ; preds = %for.body.i
  %dec.i = add i32 %nby76.0242.i, -1
  %cmp90.i = icmp ugt i32 %dec.i, %130
  br i1 %cmp90.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.do.end129.i_crit_edge

for.inc.i.do.end129.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end129.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.then102.critedge.i:                            ; preds = %for.body.i
  %137 = ptrtoint ptr %nby.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %nby76.0242.i, ptr %nby.i, align 4
  %div106234.i = lshr i32 %mul92.i, 6
  %sub107.i = add nsw i32 %div106234.i, -1
  %call108.i = call fastcc i32 @evergreen_surface_check(ptr noundef %p, ptr noundef nonnull %surf.i, ptr noundef nonnull @.str.199) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108.i)
  %tobool109.not.i = icmp eq i32 %call108.i, 0
  br i1 %tobool109.not.i, label %if.then110.i, label %if.then102.critedge.i.do.end129.i_crit_edge

if.then102.critedge.i.do.end129.i_crit_edge:      ; preds = %if.then102.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end129.i

if.then110.i:                                     ; preds = %if.then102.critedge.i
  %138 = ptrtoint ptr %layer_size.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %layer_size.i, align 4
  %mul112.i = mul i32 %139, %add.i
  %add113.i = add i32 %mul112.i, %shl.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add113.i, i32 %123)
  %cmp114.not.i = icmp ugt i32 %add113.i, %123
  br i1 %cmp114.not.i, label %if.then110.i.do.end129.i_crit_edge, label %cleanup.i

if.then110.i.do.end129.i_crit_edge:               ; preds = %if.then110.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end129.i

cleanup.i:                                        ; preds = %if.then110.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx116.i = getelementptr %struct.evergreen_cs_track, ptr %69, i32 0, i32 13, i32 %i.2378
  %140 = ptrtoint ptr %arrayidx116.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx116.i, align 4
  %arrayidx117.i = getelementptr i32, ptr %127, i32 %141
  %142 = ptrtoint ptr %arrayidx117.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %sub107.i, ptr %arrayidx117.i, align 4
  br label %evergreen_cs_track_validate_cb.exit

do.end129.i:                                      ; preds = %if.then110.i.do.end129.i_crit_edge, %if.then102.critedge.i.do.end129.i_crit_edge, %for.inc.i.do.end129.i_crit_edge, %if.then74.i.do.end129.i_crit_edge, %if.then71.i.do.end129.i_crit_edge
  %slice.2.i = phi i32 [ %76, %for.inc.i.do.end129.i_crit_edge ], [ %76, %if.then71.i.do.end129.i_crit_edge ], [ %sub107.i, %if.then110.i.do.end129.i_crit_edge ], [ %sub107.i, %if.then102.critedge.i.do.end129.i_crit_edge ], [ %76, %if.then74.i.do.end129.i_crit_edge ]
  %143 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %p, align 8
  %145 = ptrtoint ptr %layer_size.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %layer_size.i, align 4
  %147 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx57.i, align 4
  %shl134.i = shl i32 %148, 8
  %149 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %arrayidx69.i, align 4
  %size.i236.i = getelementptr inbounds %struct.radeon_bo, ptr %150, i32 0, i32 4, i32 0, i32 5
  %151 = ptrtoint ptr %size.i236.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %size.i236.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %144, ptr noundef nonnull @.str.207, ptr noundef nonnull @.str.198, i32 noundef 482, i32 noundef %i.2378, i32 noundef %146, i32 noundef %shl134.i, i32 noundef %add.i, i32 noundef %152, i32 noundef %slice.2.i) #10
  %153 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %p, align 8
  %155 = ptrtoint ptr %surf.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %surf.i, align 4
  %157 = ptrtoint ptr %nby.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %nby.i, align 4
  %159 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %mode.i, align 4
  %161 = ptrtoint ptr %bpe.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %bpe.i, align 4
  %163 = ptrtoint ptr %nsamples.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %nsamples.i, align 4
  %165 = ptrtoint ptr %bankw.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %bankw.i, align 4
  %167 = ptrtoint ptr %bankh.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %bankh.i, align 4
  %169 = ptrtoint ptr %tsplit.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %tsplit.i, align 4
  %171 = ptrtoint ptr %mtilea.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %mtilea.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %154, ptr noundef nonnull @.str.210, ptr noundef nonnull @.str.198, i32 noundef 487, i32 noundef %156, i32 noundef %158, i32 noundef %160, i32 noundef %162, i32 noundef %164, i32 noundef %166, i32 noundef %168, i32 noundef %170, i32 noundef %172) #10
  br label %evergreen_cs_track_validate_cb.exit.thread

evergreen_cs_track_validate_cb.exit.thread:       ; preds = %do.end129.i, %do.end63.i, %do.end46.i, %if.end.i.evergreen_cs_track_validate_cb.exit.thread_crit_edge, %do.end.i
  %retval.0.i.ph = phi i32 [ -22, %do.end.i ], [ -22, %do.end129.i ], [ -22, %do.end63.i ], [ %call41.i, %do.end46.i ], [ %call38.i, %if.end.i.evergreen_cs_track_validate_cb.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %surf.i) #6
  br label %cleanup112

evergreen_cs_track_validate_cb.exit:              ; preds = %cleanup.i, %if.end66.i.evergreen_cs_track_validate_cb.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %surf.i) #6
  br label %for.inc74

for.inc74:                                        ; preds = %evergreen_cs_track_validate_cb.exit, %land.lhs.true50.for.inc74_crit_edge, %for.body44.for.inc74_crit_edge
  %inc75 = add nuw nsw i32 %i.2378, 1
  %exitcond.not = icmp eq i32 %inc75, 8
  br i1 %exitcond.not, label %for.end76, label %for.inc74.for.body44_crit_edge

for.inc74.for.body44_crit_edge:                   ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body44

for.end76:                                        ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #8
  %173 = ptrtoint ptr %cb_dirty to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 0, ptr %cb_dirty, align 1
  br label %if.end78

if.end78:                                         ; preds = %for.end76, %if.end38.if.end78_crit_edge
  %db_dirty = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 40
  %174 = ptrtoint ptr %db_dirty to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %db_dirty, align 2, !range !631
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %175)
  %tobool79.not = icmp eq i8 %175, 0
  br i1 %tobool79.not, label %if.end78.cleanup112_crit_edge, label %if.then80

if.end78.cleanup112_crit_edge:                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup112

if.then80:                                        ; preds = %if.end78
  %db_s_info = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 33
  %176 = ptrtoint ptr %db_s_info to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %db_s_info, align 4
  %and82 = and i32 %177, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %cmp83.not = icmp eq i32 %and82, 0
  br i1 %cmp83.not, label %if.then80.if.end94_crit_edge, label %land.lhs.true85

if.then80.if.end94_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end94

land.lhs.true85:                                  ; preds = %if.then80
  %db_depth_control = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 24
  %178 = ptrtoint ptr %db_depth_control to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %db_depth_control, align 4
  %and87 = and i32 %179, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %land.lhs.true85.if.end94_crit_edge, label %if.then89

land.lhs.true85.if.end94_crit_edge:               ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end94

if.then89:                                        ; preds = %land.lhs.true85
  %180 = ptrtoint ptr %track1 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %track1, align 8
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %surf.i175) #6
  %182 = getelementptr inbounds i8, ptr %surf.i175, i32 40
  %183 = call ptr @memset(ptr %182, i32 255, i32 20)
  %db_depth_view.i = getelementptr inbounds %struct.evergreen_cs_track, ptr %181, i32 0, i32 25
  %184 = ptrtoint ptr %db_depth_view.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %db_depth_view.i, align 4
  %shr.i177 = lshr i32 %185, 13
  %and.i178 = and i32 %shr.i177, 2047
  %add.i179 = add nuw nsw i32 %and.i178, 1
  %db_depth_size.i = getelementptr inbounds %struct.evergreen_cs_track, ptr %181, i32 0, i32 27
  %186 = ptrtoint ptr %db_depth_size.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %db_depth_size.i, align 4
  %db_depth_slice.i = getelementptr inbounds %struct.evergreen_cs_track, ptr %181, i32 0, i32 26
  %188 = ptrtoint ptr %db_depth_slice.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %db_depth_slice.i, align 4
  %and3.i = shl i32 %187, 3
  %add4.i180 = and i32 %and3.i, 16376
  %mul.i181 = add nuw nsw i32 %add4.i180, 8
  %190 = ptrtoint ptr %surf.i175 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %mul.i181, ptr %surf.i175, align 4
  %add5.i182 = shl i32 %189, 6
  %mul6.i183 = add i32 %add5.i182, 64
  %div.i184 = udiv i32 %mul6.i183, %mul.i181
  %nby.i185 = getelementptr inbounds %struct.eg_surface, ptr %surf.i175, i32 0, i32 1
  %191 = ptrtoint ptr %nby.i185 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %div.i184, ptr %nby.i185, align 4
  %db_z_info.i = getelementptr inbounds %struct.evergreen_cs_track, ptr %181, i32 0, i32 28
  %192 = ptrtoint ptr %db_z_info.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %db_z_info.i, align 4
  %shr8.i = lshr i32 %193, 4
  %and9.i = and i32 %shr8.i, 15
  %mode.i186 = getelementptr inbounds %struct.eg_surface, ptr %surf.i175, i32 0, i32 3
  %194 = ptrtoint ptr %mode.i186 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %and9.i, ptr %mode.i186, align 4
  %db_s_info.i = getelementptr inbounds %struct.evergreen_cs_track, ptr %181, i32 0, i32 33
  %195 = ptrtoint ptr %db_s_info.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %db_s_info.i, align 4
  %and11.i = and i32 %196, 1
  %format.i187 = getelementptr inbounds %struct.eg_surface, ptr %surf.i175, i32 0, i32 2
  %shr13.i188 = lshr i32 %196, 8
  %and14.i189 = and i32 %shr13.i188, 7
  %tsplit.i190 = getelementptr inbounds %struct.eg_surface, ptr %surf.i175, i32 0, i32 7
  %197 = ptrtoint ptr %tsplit.i190 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %and14.i189, ptr %tsplit.i190, align 4
  %shr16.i191 = lshr i32 %193, 12
  %and17.i192 = and i32 %shr16.i191, 3
  %nbanks.i193 = getelementptr inbounds %struct.eg_surface, ptr %surf.i175, i32 0, i32 4
  %198 = ptrtoint ptr %nbanks.i193 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %and17.i192, ptr %nbanks.i193, align 4
  %shr19.i = lshr i32 %193, 16
  %and20.i = and i32 %shr19.i, 3
  %bankw.i194 = getelementptr inbounds %struct.eg_surface, ptr %surf.i175, i32 0, i32 5
  %199 = ptrtoint ptr %bankw.i194 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %and20.i, ptr %bankw.i194, align 4
  %shr22.i = lshr i32 %193, 20
  %and23.i = and i32 %shr22.i, 3
  %bankh.i195 = getelementptr inbounds %struct.eg_surface, ptr %surf.i175, i32 0, i32 6
  %200 = ptrtoint ptr %bankh.i195 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %and23.i, ptr %bankh.i195, align 4
  %shr25.i = lshr i32 %193, 24
  %and26.i = and i32 %shr25.i, 3
  %mtilea.i196 = getelementptr inbounds %struct.eg_surface, ptr %surf.i175, i32 0, i32 8
  %201 = ptrtoint ptr %mtilea.i196 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %and26.i, ptr %mtilea.i196, align 4
  %nsamples.i197 = getelementptr inbounds %struct.eg_surface, ptr %surf.i175, i32 0, i32 9
  %202 = ptrtoint ptr %nsamples.i197 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 1, ptr %nsamples.i197, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %cmp.not.not.i = icmp eq i32 %and11.i, 0
  br i1 %cmp.not.not.i, label %do.end.i198, label %if.end.i201

do.end.i198:                                      ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #8
  %203 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %204, ptr noundef nonnull @.str.241, ptr noundef nonnull @.str.242, i32 noundef 584, i32 noundef 0) #10
  br label %evergreen_cs_track_validate_stencil.exit.thread

if.end.i201:                                      ; preds = %if.then89
  %205 = ptrtoint ptr %format.i187 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 1, ptr %format.i187, align 4
  %call.i199 = call fastcc i32 @evergreen_surface_value_conv_check(ptr noundef %p, ptr noundef nonnull %surf.i175, ptr noundef nonnull @.str.243) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i199)
  %tobool.not.i200 = icmp eq i32 %call.i199, 0
  br i1 %tobool.not.i200, label %if.end31.i, label %if.end.i201.evergreen_cs_track_validate_stencil.exit.thread_crit_edge

if.end.i201.evergreen_cs_track_validate_stencil.exit.thread_crit_edge: ; preds = %if.end.i201
  call void @__sanitizer_cov_trace_pc() #8
  br label %evergreen_cs_track_validate_stencil.exit.thread

if.end31.i:                                       ; preds = %if.end.i201
  %call32.i = call fastcc i32 @evergreen_surface_check(ptr noundef %p, ptr noundef nonnull %surf.i175, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.end48.i, label %if.then34.i

if.then34.i:                                      ; preds = %if.end31.i
  %206 = ptrtoint ptr %format.i187 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 26, ptr %format.i187, align 4
  %call36.i = call fastcc i32 @evergreen_surface_check(ptr noundef %p, ptr noundef nonnull %surf.i175, ptr noundef nonnull @.str.243) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %if.then34.i.evergreen_cs_track_validate_stencil.exit_crit_edge, label %do.end41.i

if.then34.i.evergreen_cs_track_validate_stencil.exit_crit_edge: ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %evergreen_cs_track_validate_stencil.exit

do.end41.i:                                       ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #8
  %207 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %p, align 8
  %209 = ptrtoint ptr %db_depth_size.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %db_depth_size.i, align 4
  %211 = ptrtoint ptr %db_depth_slice.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %db_depth_slice.i, align 4
  %213 = ptrtoint ptr %db_s_info.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %db_s_info.i, align 4
  %215 = ptrtoint ptr %db_z_info.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %db_z_info.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %208, ptr noundef nonnull @.str.245, ptr noundef nonnull @.str.242, i32 noundef 606, i32 noundef %210, i32 noundef %212, i32 noundef %214, i32 noundef %216) #10
  br label %evergreen_cs_track_validate_stencil.exit.thread

if.end48.i:                                       ; preds = %if.end31.i
  %db_s_read_offset.i = getelementptr inbounds %struct.evergreen_cs_track, ptr %181, i32 0, i32 34
  %217 = ptrtoint ptr %db_s_read_offset.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %db_s_read_offset.i, align 4
  %shl.i202 = shl i32 %218, 8
  %base_align.i203 = getelementptr inbounds %struct.eg_surface, ptr %surf.i175, i32 0, i32 14
  %219 = ptrtoint ptr %base_align.i203 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %base_align.i203, align 4
  %sub.i204 = add i32 %220, -1
  %and49.i = and i32 %sub.i204, %shl.i202
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i)
  %tobool50.not.i = icmp eq i32 %and49.i, 0
  br i1 %tobool50.not.i, label %if.end57.i, label %do.end54.i

do.end54.i:                                       ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #8
  %221 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %222, ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.242, i32 noundef 614, i32 noundef %shl.i202, i32 noundef %220) #10
  br label %evergreen_cs_track_validate_stencil.exit.thread

if.end57.i:                                       ; preds = %if.end48.i
  %layer_size.i205 = getelementptr inbounds %struct.eg_surface, ptr %surf.i175, i32 0, i32 11
  %223 = ptrtoint ptr %layer_size.i205 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %layer_size.i205, align 4
  %mul58.i = mul i32 %224, %add.i179
  %add59.i = add i32 %mul58.i, %shl.i202
  %db_s_read_bo.i = getelementptr inbounds %struct.evergreen_cs_track, ptr %181, i32 0, i32 36
  %225 = ptrtoint ptr %db_s_read_bo.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %db_s_read_bo.i, align 4
  %size.i.i206 = getelementptr inbounds %struct.radeon_bo, ptr %226, i32 0, i32 4, i32 0, i32 5
  %227 = ptrtoint ptr %size.i.i206 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %size.i.i206, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add59.i, i32 %228)
  %cmp61.i = icmp ugt i32 %add59.i, %228
  br i1 %cmp61.i, label %do.end65.i, label %if.end80.i

do.end65.i:                                       ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #8
  %229 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %230, ptr noundef nonnull @.str.251, ptr noundef nonnull @.str.242, i32 noundef 623, i32 noundef %224, i32 noundef %shl.i202, i32 noundef %add.i179, i32 noundef %228) #10
  %231 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %p, align 8
  %233 = ptrtoint ptr %db_depth_size.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %db_depth_size.i, align 4
  %235 = ptrtoint ptr %db_depth_slice.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %db_depth_slice.i, align 4
  %237 = ptrtoint ptr %db_s_info.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %db_s_info.i, align 4
  %239 = ptrtoint ptr %db_z_info.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %db_z_info.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %232, ptr noundef nonnull @.str.245, ptr noundef nonnull @.str.242, i32 noundef 626, i32 noundef %234, i32 noundef %236, i32 noundef %238, i32 noundef %240) #10
  br label %evergreen_cs_track_validate_stencil.exit.thread

if.end80.i:                                       ; preds = %if.end57.i
  %db_s_write_offset.i = getelementptr inbounds %struct.evergreen_cs_track, ptr %181, i32 0, i32 35
  %241 = ptrtoint ptr %db_s_write_offset.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %db_s_write_offset.i, align 4
  %shl81.i = shl i32 %242, 8
  %and84.i = and i32 %shl81.i, %sub.i204
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84.i)
  %tobool85.not.i = icmp eq i32 %and84.i, 0
  br i1 %tobool85.not.i, label %if.end92.i, label %do.end89.i

do.end89.i:                                       ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #8
  %243 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %244, ptr noundef nonnull @.str.256, ptr noundef nonnull @.str.242, i32 noundef 633, i32 noundef %shl81.i, i32 noundef %220) #10
  br label %evergreen_cs_track_validate_stencil.exit.thread

if.end92.i:                                       ; preds = %if.end80.i
  %add95.i = add i32 %shl81.i, %mul58.i
  %db_s_write_bo.i = getelementptr inbounds %struct.evergreen_cs_track, ptr %181, i32 0, i32 37
  %245 = ptrtoint ptr %db_s_write_bo.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %db_s_write_bo.i, align 4
  %size.i181.i = getelementptr inbounds %struct.radeon_bo, ptr %246, i32 0, i32 4, i32 0, i32 5
  %247 = ptrtoint ptr %size.i181.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %size.i181.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add95.i, i32 %248)
  %cmp97.i = icmp ugt i32 %add95.i, %248
  br i1 %cmp97.i, label %do.end101.i, label %if.end108.i

do.end101.i:                                      ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #8
  %249 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %250, ptr noundef nonnull @.str.259, ptr noundef nonnull @.str.242, i32 noundef 642, i32 noundef %224, i32 noundef %shl81.i, i32 noundef %add.i179, i32 noundef %248) #10
  br label %evergreen_cs_track_validate_stencil.exit.thread

if.end108.i:                                      ; preds = %if.end92.i
  %251 = ptrtoint ptr %db_z_info.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %db_z_info.i, align 4
  %253 = and i32 %252, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %253)
  %tobool112.not.i = icmp eq i32 %253, 0
  br i1 %tobool112.not.i, label %if.end108.i.evergreen_cs_track_validate_stencil.exit_crit_edge, label %if.then113.i

if.end108.i.evergreen_cs_track_validate_stencil.exit_crit_edge: ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %evergreen_cs_track_validate_stencil.exit

if.then113.i:                                     ; preds = %if.end108.i
  %254 = ptrtoint ptr %surf.i175 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %surf.i175, align 4
  %256 = ptrtoint ptr %nby.i185 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %nby.i185, align 4
  %call116.i = call fastcc i32 @evergreen_cs_track_validate_htile(ptr noundef %p, i32 noundef %255, i32 noundef %257) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116.i)
  %tobool117.not.i = icmp eq i32 %call116.i, 0
  br i1 %tobool117.not.i, label %if.then113.i.evergreen_cs_track_validate_stencil.exit_crit_edge, label %if.then113.i.evergreen_cs_track_validate_stencil.exit.thread_crit_edge

if.then113.i.evergreen_cs_track_validate_stencil.exit.thread_crit_edge: ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %evergreen_cs_track_validate_stencil.exit.thread

if.then113.i.evergreen_cs_track_validate_stencil.exit_crit_edge: ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %evergreen_cs_track_validate_stencil.exit

evergreen_cs_track_validate_stencil.exit.thread:  ; preds = %if.then113.i.evergreen_cs_track_validate_stencil.exit.thread_crit_edge, %do.end101.i, %do.end89.i, %do.end65.i, %do.end54.i, %do.end41.i, %if.end.i201.evergreen_cs_track_validate_stencil.exit.thread_crit_edge, %do.end.i198
  %retval.0.i207.ph = phi i32 [ %call116.i, %if.then113.i.evergreen_cs_track_validate_stencil.exit.thread_crit_edge ], [ %call36.i, %do.end41.i ], [ %call.i199, %if.end.i201.evergreen_cs_track_validate_stencil.exit.thread_crit_edge ], [ -22, %do.end101.i ], [ -22, %do.end89.i ], [ -22, %do.end65.i ], [ -22, %do.end54.i ], [ -22, %do.end.i198 ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %surf.i175) #6
  br label %cleanup112

evergreen_cs_track_validate_stencil.exit:         ; preds = %if.then113.i.evergreen_cs_track_validate_stencil.exit_crit_edge, %if.end108.i.evergreen_cs_track_validate_stencil.exit_crit_edge, %if.then34.i.evergreen_cs_track_validate_stencil.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %surf.i175) #6
  br label %if.end94

if.end94:                                         ; preds = %evergreen_cs_track_validate_stencil.exit, %land.lhs.true85.if.end94_crit_edge, %if.then80.if.end94_crit_edge
  %db_z_info = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 28
  %258 = ptrtoint ptr %db_z_info to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %db_z_info, align 4
  %and96 = and i32 %259, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %cmp97.not = icmp eq i32 %and96, 0
  br i1 %cmp97.not, label %if.end94.if.end109_crit_edge, label %land.lhs.true99

if.end94.if.end109_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end109

land.lhs.true99:                                  ; preds = %if.end94
  %db_depth_control100 = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 24
  %260 = ptrtoint ptr %db_depth_control100 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %db_depth_control100, align 4
  %262 = and i32 %261, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %262)
  %tobool103.not = icmp eq i32 %262, 0
  br i1 %tobool103.not, label %land.lhs.true99.if.end109_crit_edge, label %if.then104

land.lhs.true99.if.end109_crit_edge:              ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end109

if.then104:                                       ; preds = %land.lhs.true99
  %263 = ptrtoint ptr %track1 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %track1, align 8
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %surf.i209) #6
  %265 = getelementptr inbounds i8, ptr %surf.i209, i32 40
  %266 = call ptr @memset(ptr %265, i32 255, i32 20)
  %db_depth_view.i211 = getelementptr inbounds %struct.evergreen_cs_track, ptr %264, i32 0, i32 25
  %267 = ptrtoint ptr %db_depth_view.i211 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %db_depth_view.i211, align 4
  %shr.i212 = lshr i32 %268, 13
  %and.i213 = and i32 %shr.i212, 2047
  %add.i214 = add nuw nsw i32 %and.i213, 1
  %db_depth_size.i215 = getelementptr inbounds %struct.evergreen_cs_track, ptr %264, i32 0, i32 27
  %269 = ptrtoint ptr %db_depth_size.i215 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %db_depth_size.i215, align 4
  %db_depth_slice.i216 = getelementptr inbounds %struct.evergreen_cs_track, ptr %264, i32 0, i32 26
  %271 = ptrtoint ptr %db_depth_slice.i216 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %db_depth_slice.i216, align 4
  %and3.i217 = shl i32 %270, 3
  %add4.i218 = and i32 %and3.i217, 16376
  %mul.i219 = add nuw nsw i32 %add4.i218, 8
  %273 = ptrtoint ptr %surf.i209 to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 %mul.i219, ptr %surf.i209, align 4
  %add5.i220 = shl i32 %272, 6
  %mul6.i221 = add i32 %add5.i220, 64
  %div.i222 = udiv i32 %mul6.i221, %mul.i219
  %nby.i223 = getelementptr inbounds %struct.eg_surface, ptr %surf.i209, i32 0, i32 1
  %274 = ptrtoint ptr %nby.i223 to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 %div.i222, ptr %nby.i223, align 4
  %db_z_info.i224 = getelementptr inbounds %struct.evergreen_cs_track, ptr %264, i32 0, i32 28
  %275 = ptrtoint ptr %db_z_info.i224 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %db_z_info.i224, align 4
  %shr8.i225 = lshr i32 %276, 4
  %and9.i226 = and i32 %shr8.i225, 15
  %mode.i227 = getelementptr inbounds %struct.eg_surface, ptr %surf.i209, i32 0, i32 3
  %277 = ptrtoint ptr %mode.i227 to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 %and9.i226, ptr %mode.i227, align 4
  %and12.i = and i32 %276, 3
  %shr14.i = lshr i32 %276, 8
  %and15.i = and i32 %shr14.i, 7
  %tsplit.i229 = getelementptr inbounds %struct.eg_surface, ptr %surf.i209, i32 0, i32 7
  %278 = ptrtoint ptr %tsplit.i229 to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 %and15.i, ptr %tsplit.i229, align 4
  %shr17.i = lshr i32 %276, 12
  %and18.i = and i32 %shr17.i, 3
  %nbanks.i230 = getelementptr inbounds %struct.eg_surface, ptr %surf.i209, i32 0, i32 4
  %279 = ptrtoint ptr %nbanks.i230 to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 %and18.i, ptr %nbanks.i230, align 4
  %shr20.i231 = lshr i32 %276, 16
  %and21.i232 = and i32 %shr20.i231, 3
  %bankw.i233 = getelementptr inbounds %struct.eg_surface, ptr %surf.i209, i32 0, i32 5
  %280 = ptrtoint ptr %bankw.i233 to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 %and21.i232, ptr %bankw.i233, align 4
  %shr23.i = lshr i32 %276, 20
  %and24.i = and i32 %shr23.i, 3
  %bankh.i234 = getelementptr inbounds %struct.eg_surface, ptr %surf.i209, i32 0, i32 6
  %281 = ptrtoint ptr %bankh.i234 to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 %and24.i, ptr %bankh.i234, align 4
  %shr26.i = lshr i32 %276, 24
  %and27.i = and i32 %shr26.i, 3
  %mtilea.i235 = getelementptr inbounds %struct.eg_surface, ptr %surf.i209, i32 0, i32 8
  %282 = ptrtoint ptr %mtilea.i235 to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 %and27.i, ptr %mtilea.i235, align 4
  %nsamples.i236 = getelementptr inbounds %struct.eg_surface, ptr %surf.i209, i32 0, i32 9
  %283 = ptrtoint ptr %nsamples.i236 to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 1, ptr %nsamples.i236, align 4
  %switch.tableidx = add nsw i32 %and12.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %284 = icmp ult i32 %switch.tableidx, 3
  br i1 %284, label %switch.lookup, label %do.end.i237

do.end.i237:                                      ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #8
  %285 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %286, ptr noundef nonnull @.str.269, ptr noundef nonnull @.str.270, i32 noundef 689, i32 noundef %and12.i) #10
  br label %evergreen_cs_track_validate_depth.exit.thread

switch.lookup:                                    ; preds = %if.then104
  %format.i228 = getelementptr inbounds %struct.eg_surface, ptr %surf.i209, i32 0, i32 2
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.evergreen_cs_track_check, i32 0, i32 %switch.tableidx
  %287 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %287)
  %switch.load = load i32, ptr %switch.gep, align 4
  %288 = ptrtoint ptr %format.i228 to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 %switch.load, ptr %format.i228, align 4
  %call.i238 = call fastcc i32 @evergreen_surface_value_conv_check(ptr noundef %p, ptr noundef nonnull %surf.i209, ptr noundef nonnull @.str.271) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i238)
  %tobool.not.i239 = icmp eq i32 %call.i238, 0
  br i1 %tobool.not.i239, label %if.end.i240, label %do.end35.i

do.end35.i:                                       ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %289 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %p, align 8
  %291 = ptrtoint ptr %db_depth_size.i215 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %db_depth_size.i215, align 4
  %293 = ptrtoint ptr %db_depth_slice.i216 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %db_depth_slice.i216, align 4
  %295 = ptrtoint ptr %db_z_info.i224 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %db_z_info.i224, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %290, ptr noundef nonnull @.str.273, ptr noundef nonnull @.str.270, i32 noundef 697, i32 noundef %292, i32 noundef %294, i32 noundef %296) #10
  br label %evergreen_cs_track_validate_depth.exit.thread

if.end.i240:                                      ; preds = %switch.lookup
  %call40.i = call fastcc i32 @evergreen_surface_check(ptr noundef %p, ptr noundef nonnull %surf.i209, ptr noundef nonnull @.str.271) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %if.end50.i, label %do.end45.i

do.end45.i:                                       ; preds = %if.end.i240
  call void @__sanitizer_cov_trace_pc() #8
  %297 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %p, align 8
  %299 = ptrtoint ptr %db_depth_size.i215 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %db_depth_size.i215, align 4
  %301 = ptrtoint ptr %db_depth_slice.i216 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %db_depth_slice.i216, align 4
  %303 = ptrtoint ptr %db_z_info.i224 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %db_z_info.i224, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %298, ptr noundef nonnull @.str.273, ptr noundef nonnull @.str.270, i32 noundef 705, i32 noundef %300, i32 noundef %302, i32 noundef %304) #10
  br label %evergreen_cs_track_validate_depth.exit.thread

if.end50.i:                                       ; preds = %if.end.i240
  %db_z_read_offset.i = getelementptr inbounds %struct.evergreen_cs_track, ptr %264, i32 0, i32 29
  %305 = ptrtoint ptr %db_z_read_offset.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %db_z_read_offset.i, align 4
  %shl.i241 = shl i32 %306, 8
  %base_align.i242 = getelementptr inbounds %struct.eg_surface, ptr %surf.i209, i32 0, i32 14
  %307 = ptrtoint ptr %base_align.i242 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %base_align.i242, align 4
  %sub.i243 = add i32 %308, -1
  %and51.i = and i32 %sub.i243, %shl.i241
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.i)
  %tobool52.not.i = icmp eq i32 %and51.i, 0
  br i1 %tobool52.not.i, label %if.end59.i, label %do.end56.i

do.end56.i:                                       ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #8
  %309 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %310, ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.270, i32 noundef 712, i32 noundef %shl.i241, i32 noundef %308) #10
  br label %evergreen_cs_track_validate_depth.exit.thread

if.end59.i:                                       ; preds = %if.end50.i
  %layer_size.i244 = getelementptr inbounds %struct.eg_surface, ptr %surf.i209, i32 0, i32 11
  %311 = ptrtoint ptr %layer_size.i244 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %layer_size.i244, align 4
  %mul60.i = mul i32 %312, %add.i214
  %add61.i = add i32 %mul60.i, %shl.i241
  %db_z_read_bo.i = getelementptr inbounds %struct.evergreen_cs_track, ptr %264, i32 0, i32 31
  %313 = ptrtoint ptr %db_z_read_bo.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %db_z_read_bo.i, align 4
  %size.i.i245 = getelementptr inbounds %struct.radeon_bo, ptr %314, i32 0, i32 4, i32 0, i32 5
  %315 = ptrtoint ptr %size.i.i245 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %size.i.i245, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add61.i, i32 %316)
  %cmp.i246 = icmp ugt i32 %add61.i, %316
  br i1 %cmp.i246, label %do.end66.i, label %if.end73.i

do.end66.i:                                       ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #8
  %317 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %318, ptr noundef nonnull @.str.280, ptr noundef nonnull @.str.270, i32 noundef 721, i32 noundef %312, i32 noundef %shl.i241, i32 noundef %add.i214, i32 noundef %316) #10
  br label %evergreen_cs_track_validate_depth.exit.thread

if.end73.i:                                       ; preds = %if.end59.i
  %db_z_write_offset.i = getelementptr inbounds %struct.evergreen_cs_track, ptr %264, i32 0, i32 30
  %319 = ptrtoint ptr %db_z_write_offset.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %db_z_write_offset.i, align 4
  %shl74.i = shl i32 %320, 8
  %and77.i = and i32 %shl74.i, %sub.i243
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77.i)
  %tobool78.not.i = icmp eq i32 %and77.i, 0
  br i1 %tobool78.not.i, label %if.end85.i, label %do.end82.i

do.end82.i:                                       ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #8
  %321 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %322, ptr noundef nonnull @.str.256, ptr noundef nonnull @.str.270, i32 noundef 728, i32 noundef %shl74.i, i32 noundef %308) #10
  br label %evergreen_cs_track_validate_depth.exit.thread

if.end85.i:                                       ; preds = %if.end73.i
  %add88.i = add i32 %shl74.i, %mul60.i
  %db_z_write_bo.i = getelementptr inbounds %struct.evergreen_cs_track, ptr %264, i32 0, i32 32
  %323 = ptrtoint ptr %db_z_write_bo.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %db_z_write_bo.i, align 4
  %size.i170.i = getelementptr inbounds %struct.radeon_bo, ptr %324, i32 0, i32 4, i32 0, i32 5
  %325 = ptrtoint ptr %size.i170.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %size.i170.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add88.i, i32 %326)
  %cmp90.i247 = icmp ugt i32 %add88.i, %326
  br i1 %cmp90.i247, label %do.end94.i, label %if.end101.i

do.end94.i:                                       ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #8
  %327 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %328, ptr noundef nonnull @.str.285, ptr noundef nonnull @.str.270, i32 noundef 737, i32 noundef %312, i32 noundef %shl74.i, i32 noundef %add.i214, i32 noundef %326) #10
  br label %evergreen_cs_track_validate_depth.exit.thread

if.end101.i:                                      ; preds = %if.end85.i
  %329 = ptrtoint ptr %db_z_info.i224 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %db_z_info.i224, align 4
  %331 = and i32 %330, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %331)
  %tobool105.not.i = icmp eq i32 %331, 0
  br i1 %tobool105.not.i, label %if.end101.i.evergreen_cs_track_validate_depth.exit_crit_edge, label %if.then106.i

if.end101.i.evergreen_cs_track_validate_depth.exit_crit_edge: ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %evergreen_cs_track_validate_depth.exit

if.then106.i:                                     ; preds = %if.end101.i
  %332 = ptrtoint ptr %surf.i209 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %surf.i209, align 4
  %334 = ptrtoint ptr %nby.i223 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %nby.i223, align 4
  %call109.i = call fastcc i32 @evergreen_cs_track_validate_htile(ptr noundef %p, i32 noundef %333, i32 noundef %335) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109.i)
  %tobool110.not.i = icmp eq i32 %call109.i, 0
  br i1 %tobool110.not.i, label %if.then106.i.evergreen_cs_track_validate_depth.exit_crit_edge, label %if.then106.i.evergreen_cs_track_validate_depth.exit.thread_crit_edge

if.then106.i.evergreen_cs_track_validate_depth.exit.thread_crit_edge: ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %evergreen_cs_track_validate_depth.exit.thread

if.then106.i.evergreen_cs_track_validate_depth.exit_crit_edge: ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %evergreen_cs_track_validate_depth.exit

evergreen_cs_track_validate_depth.exit.thread:    ; preds = %if.then106.i.evergreen_cs_track_validate_depth.exit.thread_crit_edge, %do.end94.i, %do.end82.i, %do.end66.i, %do.end56.i, %do.end45.i, %do.end35.i, %do.end.i237
  %retval.0.i248.ph = phi i32 [ %call109.i, %if.then106.i.evergreen_cs_track_validate_depth.exit.thread_crit_edge ], [ -22, %do.end94.i ], [ -22, %do.end82.i ], [ -22, %do.end66.i ], [ -22, %do.end56.i ], [ %call40.i, %do.end45.i ], [ %call.i238, %do.end35.i ], [ -22, %do.end.i237 ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %surf.i209) #6
  br label %cleanup112

evergreen_cs_track_validate_depth.exit:           ; preds = %if.then106.i.evergreen_cs_track_validate_depth.exit_crit_edge, %if.end101.i.evergreen_cs_track_validate_depth.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %surf.i209) #6
  br label %if.end109

if.end109:                                        ; preds = %evergreen_cs_track_validate_depth.exit, %land.lhs.true99.if.end109_crit_edge, %if.end94.if.end109_crit_edge
  %336 = ptrtoint ptr %db_dirty to i32
  call void @__asan_store1_noabort(i32 %336)
  store i8 0, ptr %db_dirty, align 2
  br label %cleanup112

cleanup112:                                       ; preds = %if.end109, %evergreen_cs_track_validate_depth.exit.thread, %evergreen_cs_track_validate_stencil.exit.thread, %if.end78.cleanup112_crit_edge, %evergreen_cs_track_validate_cb.exit.thread, %do.end62, %if.end35.cleanup112_crit_edge, %do.end, %if.then24
  %retval.6 = phi i32 [ -22, %do.end ], [ -22, %if.then24 ], [ 0, %if.end35.cleanup112_crit_edge ], [ 0, %if.end109 ], [ 0, %if.end78.cleanup112_crit_edge ], [ -22, %do.end62 ], [ %retval.0.i.ph, %evergreen_cs_track_validate_cb.exit.thread ], [ %retval.0.i207.ph, %evergreen_cs_track_validate_stencil.exit.thread ], [ %retval.0.i248.ph, %evergreen_cs_track_validate_depth.exit.thread ]
  ret i32 %retval.6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @evergreen_cs_handle_reg(ptr noundef %p, i32 noundef %reg, i32 noundef %idx) unnamed_addr #0 align 64 {
entry:
  %reloc = alloca ptr, align 4
  %bankw = alloca i32, align 4
  %bankh = alloca i32, align 4
  %mtaspect = alloca i32, align 4
  %tile_split = alloca i32, align 4
  %bankw363 = alloca i32, align 4
  %bankh364 = alloca i32, align 4
  %mtaspect365 = alloca i32, align 4
  %tile_split366 = alloca i32, align 4
  %bankw411 = alloca i32, align 4
  %bankh412 = alloca i32, align 4
  %mtaspect413 = alloca i32, align 4
  %tile_split414 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %track1 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 18
  %0 = ptrtoint ptr %track1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %track1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reloc) #6
  %2 = ptrtoint ptr %reloc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %reloc, align 4, !annotation !629
  %ptr = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 16, i32 3
  %3 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ptr, align 8
  %5 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.395)
  switch i32 %reg, label %do.end634 [
    i32 35908, label %entry.cleanup_crit_edge
    i32 35916, label %entry.cleanup_crit_edge1363
    i32 35924, label %entry.cleanup_crit_edge1364
    i32 35932, label %entry.cleanup_crit_edge1365
    i32 36380, label %entry.cleanup_crit_edge1366
    i32 36372, label %entry.cleanup_crit_edge1367
    i32 35948, label %entry.cleanup_crit_edge1368
    i32 35940, label %entry.cleanup_crit_edge1369
    i32 166144, label %entry.cleanup_crit_edge1370
    i32 166152, label %entry.cleanup_crit_edge1371
    i32 166156, label %entry.cleanup_crit_edge1372
    i32 166148, label %entry.cleanup_crit_edge1373
    i32 166172, label %entry.cleanup_crit_edge1374
    i32 166176, label %entry.cleanup_crit_edge1375
    i32 166180, label %entry.cleanup_crit_edge1376
    i32 166184, label %entry.cleanup_crit_edge1377
    i32 166188, label %entry.cleanup_crit_edge1378
    i32 166192, label %entry.cleanup_crit_edge1379
    i32 166196, label %entry.cleanup_crit_edge1380
    i32 165940, label %entry.cleanup_crit_edge1381
    i32 165936, label %entry.cleanup_crit_edge1382
    i32 166164, label %entry.cleanup_crit_edge1383
    i32 166160, label %entry.cleanup_crit_edge1384
    i32 35208, label %entry.cleanup_crit_edge1385
    i32 35904, label %entry.sw.bb3_crit_edge
    i32 35912, label %entry.sw.bb3_crit_edge1386
    i32 35920, label %entry.sw.bb3_crit_edge1387
    i32 35928, label %entry.sw.bb3_crit_edge1388
    i32 36376, label %entry.sw.bb3_crit_edge1389
    i32 36368, label %entry.sw.bb3_crit_edge1390
    i32 35944, label %entry.sw.bb3_crit_edge1391
    i32 35936, label %entry.sw.bb3_crit_edge1392
    i32 165888, label %sw.bb4
    i32 165892, label %sw.bb6
    i32 163900, label %sw.bb14
    i32 163904, label %sw.bb25
    i32 163908, label %sw.bb75
    i32 163848, label %sw.bb78
    i32 163928, label %sw.bb81
    i32 163932, label %sw.bb84
    i32 163912, label %sw.bb87
    i32 163920, label %sw.bb104
    i32 163916, label %sw.bb122
    i32 163924, label %sw.bb140
    i32 166804, label %sw.bb158
    i32 166808, label %sw.bb160
    i32 166616, label %entry.sw.bb163_crit_edge
    i32 166632, label %entry.sw.bb163_crit_edge1393
    i32 166648, label %entry.sw.bb163_crit_edge1394
    i32 166664, label %entry.sw.bb163_crit_edge1395
    i32 166608, label %entry.sw.bb184_crit_edge
    i32 166624, label %entry.sw.bb184_crit_edge1396
    i32 166640, label %entry.sw.bb184_crit_edge1397
    i32 166656, label %entry.sw.bb184_crit_edge1398
    i32 34296, label %sw.bb190
    i32 164408, label %sw.bb205
    i32 164412, label %sw.bb207
    i32 166916, label %sw.bb210
    i32 166880, label %sw.bb224
    i32 167020, label %entry.sw.bb239_crit_edge
    i32 167080, label %entry.sw.bb239_crit_edge1399
    i32 167140, label %entry.sw.bb239_crit_edge1400
    i32 167200, label %entry.sw.bb239_crit_edge1401
    i32 167260, label %entry.sw.bb239_crit_edge1402
    i32 167320, label %entry.sw.bb239_crit_edge1403
    i32 167380, label %entry.sw.bb239_crit_edge1404
    i32 167440, label %entry.sw.bb239_crit_edge1405
    i32 167500, label %entry.sw.bb245_crit_edge
    i32 167528, label %entry.sw.bb245_crit_edge1406
    i32 167556, label %entry.sw.bb245_crit_edge1407
    i32 167584, label %entry.sw.bb245_crit_edge1408
    i32 167024, label %entry.sw.bb253_crit_edge
    i32 167084, label %entry.sw.bb253_crit_edge1409
    i32 167144, label %entry.sw.bb253_crit_edge1410
    i32 167204, label %entry.sw.bb253_crit_edge1411
    i32 167264, label %entry.sw.bb253_crit_edge1412
    i32 167324, label %entry.sw.bb253_crit_edge1413
    i32 167384, label %entry.sw.bb253_crit_edge1414
    i32 167444, label %entry.sw.bb253_crit_edge1415
    i32 167504, label %entry.sw.bb283_crit_edge
    i32 167532, label %entry.sw.bb283_crit_edge1416
    i32 167560, label %entry.sw.bb283_crit_edge1417
    i32 167588, label %entry.sw.bb283_crit_edge1418
    i32 167012, label %entry.sw.bb315_crit_edge
    i32 167072, label %entry.sw.bb315_crit_edge1419
    i32 167132, label %entry.sw.bb315_crit_edge1420
    i32 167192, label %entry.sw.bb315_crit_edge1421
    i32 167252, label %entry.sw.bb315_crit_edge1422
    i32 167312, label %entry.sw.bb315_crit_edge1423
    i32 167372, label %entry.sw.bb315_crit_edge1424
    i32 167432, label %entry.sw.bb315_crit_edge1425
    i32 167492, label %entry.sw.bb321_crit_edge
    i32 167520, label %entry.sw.bb321_crit_edge1426
    i32 167548, label %entry.sw.bb321_crit_edge1427
    i32 167576, label %entry.sw.bb321_crit_edge1428
    i32 167016, label %entry.sw.bb329_crit_edge
    i32 167076, label %entry.sw.bb329_crit_edge1429
    i32 167136, label %entry.sw.bb329_crit_edge1430
    i32 167196, label %entry.sw.bb329_crit_edge1431
    i32 167256, label %entry.sw.bb329_crit_edge1432
    i32 167316, label %entry.sw.bb329_crit_edge1433
    i32 167376, label %entry.sw.bb329_crit_edge1434
    i32 167436, label %entry.sw.bb329_crit_edge1435
    i32 167496, label %entry.sw.bb336_crit_edge
    i32 167524, label %entry.sw.bb336_crit_edge1436
    i32 167552, label %entry.sw.bb336_crit_edge1437
    i32 167580, label %entry.sw.bb336_crit_edge1438
    i32 167028, label %entry.sw.bb346_crit_edge
    i32 167088, label %entry.sw.bb346_crit_edge1439
    i32 167148, label %entry.sw.bb346_crit_edge1440
    i32 167208, label %entry.sw.bb346_crit_edge1441
    i32 167268, label %entry.sw.bb346_crit_edge1442
    i32 167328, label %entry.sw.bb346_crit_edge1443
    i32 167388, label %entry.sw.bb346_crit_edge1444
    i32 167448, label %entry.sw.bb346_crit_edge1445
    i32 167508, label %entry.sw.bb394_crit_edge
    i32 167536, label %entry.sw.bb394_crit_edge1446
    i32 167564, label %entry.sw.bb394_crit_edge1447
    i32 167592, label %entry.sw.bb394_crit_edge1448
    i32 167044, label %entry.sw.bb444_crit_edge
    i32 167104, label %entry.sw.bb444_crit_edge1449
    i32 167164, label %entry.sw.bb444_crit_edge1450
    i32 167224, label %entry.sw.bb444_crit_edge1451
    i32 167284, label %entry.sw.bb444_crit_edge1452
    i32 167344, label %entry.sw.bb444_crit_edge1453
    i32 167404, label %entry.sw.bb444_crit_edge1454
    i32 167464, label %entry.sw.bb444_crit_edge1455
    i32 167036, label %entry.sw.bb463_crit_edge
    i32 167096, label %entry.sw.bb463_crit_edge1456
    i32 167156, label %entry.sw.bb463_crit_edge1457
    i32 167216, label %entry.sw.bb463_crit_edge1458
    i32 167276, label %entry.sw.bb463_crit_edge1459
    i32 167336, label %entry.sw.bb463_crit_edge1460
    i32 167396, label %entry.sw.bb463_crit_edge1461
    i32 167456, label %entry.sw.bb463_crit_edge1462
    i32 167048, label %entry.sw.bb482_crit_edge
    i32 167108, label %entry.sw.bb482_crit_edge1463
    i32 167168, label %entry.sw.bb482_crit_edge1464
    i32 167228, label %entry.sw.bb482_crit_edge1465
    i32 167288, label %entry.sw.bb482_crit_edge1466
    i32 167348, label %entry.sw.bb482_crit_edge1467
    i32 167408, label %entry.sw.bb482_crit_edge1468
    i32 167468, label %entry.sw.bb482_crit_edge1469
    i32 167040, label %entry.sw.bb487_crit_edge
    i32 167100, label %entry.sw.bb487_crit_edge1470
    i32 167160, label %entry.sw.bb487_crit_edge1471
    i32 167220, label %entry.sw.bb487_crit_edge1472
    i32 167280, label %entry.sw.bb487_crit_edge1473
    i32 167340, label %entry.sw.bb487_crit_edge1474
    i32 167400, label %entry.sw.bb487_crit_edge1475
    i32 167460, label %entry.sw.bb487_crit_edge1476
    i32 167008, label %entry.sw.bb492_crit_edge
    i32 167068, label %entry.sw.bb492_crit_edge1477
    i32 167128, label %entry.sw.bb492_crit_edge1478
    i32 167188, label %entry.sw.bb492_crit_edge1479
    i32 167248, label %entry.sw.bb492_crit_edge1480
    i32 167308, label %entry.sw.bb492_crit_edge1481
    i32 167368, label %entry.sw.bb492_crit_edge1482
    i32 167428, label %entry.sw.bb492_crit_edge1483
    i32 167488, label %entry.sw.bb514_crit_edge
    i32 167516, label %entry.sw.bb514_crit_edge1484
    i32 167544, label %entry.sw.bb514_crit_edge1485
    i32 167572, label %entry.sw.bb514_crit_edge1486
    i32 163860, label %sw.bb539
    i32 166588, label %sw.bb557
    i32 166812, label %entry.sw.bb562_crit_edge
    i32 166816, label %entry.sw.bb562_crit_edge1487
    i32 166820, label %entry.sw.bb562_crit_edge1488
    i32 166824, label %entry.sw.bb562_crit_edge1489
    i32 166828, label %entry.sw.bb562_crit_edge1490
    i32 166832, label %entry.sw.bb562_crit_edge1491
    i32 166836, label %entry.sw.bb562_crit_edge1492
    i32 166840, label %entry.sw.bb562_crit_edge1493
    i32 166844, label %entry.sw.bb562_crit_edge1494
    i32 166848, label %entry.sw.bb562_crit_edge1495
    i32 166852, label %entry.sw.bb562_crit_edge1496
    i32 166856, label %entry.sw.bb562_crit_edge1497
    i32 166052, label %entry.sw.bb562_crit_edge1498
    i32 166028, label %entry.sw.bb562_crit_edge1499
    i32 165980, label %entry.sw.bb562_crit_edge1500
    i32 166004, label %entry.sw.bb562_crit_edge1501
    i32 165952, label %entry.sw.bb562_crit_edge1502
    i32 166072, label %entry.sw.bb562_crit_edge1503
    i32 166096, label %entry.sw.bb562_crit_edge1504
    i32 36344, label %entry.sw.bb562_crit_edge1505
    i32 166336, label %entry.sw.bb562_crit_edge1506
    i32 166340, label %entry.sw.bb562_crit_edge1507
    i32 166344, label %entry.sw.bb562_crit_edge1508
    i32 166348, label %entry.sw.bb562_crit_edge1509
    i32 166352, label %entry.sw.bb562_crit_edge1510
    i32 166356, label %entry.sw.bb562_crit_edge1511
    i32 166360, label %entry.sw.bb562_crit_edge1512
    i32 166364, label %entry.sw.bb562_crit_edge1513
    i32 166368, label %entry.sw.bb562_crit_edge1514
    i32 166372, label %entry.sw.bb562_crit_edge1515
    i32 166376, label %entry.sw.bb562_crit_edge1516
    i32 166380, label %entry.sw.bb562_crit_edge1517
    i32 166384, label %entry.sw.bb562_crit_edge1518
    i32 166388, label %entry.sw.bb562_crit_edge1519
    i32 166392, label %entry.sw.bb562_crit_edge1520
    i32 166396, label %entry.sw.bb562_crit_edge1521
    i32 166208, label %entry.sw.bb562_crit_edge1522
    i32 166212, label %entry.sw.bb562_crit_edge1523
    i32 166216, label %entry.sw.bb562_crit_edge1524
    i32 166220, label %entry.sw.bb562_crit_edge1525
    i32 166224, label %entry.sw.bb562_crit_edge1526
    i32 166228, label %entry.sw.bb562_crit_edge1527
    i32 166232, label %entry.sw.bb562_crit_edge1528
    i32 166236, label %entry.sw.bb562_crit_edge1529
    i32 166240, label %entry.sw.bb562_crit_edge1530
    i32 166244, label %entry.sw.bb562_crit_edge1531
    i32 166248, label %entry.sw.bb562_crit_edge1532
    i32 166252, label %entry.sw.bb562_crit_edge1533
    i32 166256, label %entry.sw.bb562_crit_edge1534
    i32 166260, label %entry.sw.bb562_crit_edge1535
    i32 166264, label %entry.sw.bb562_crit_edge1536
    i32 166268, label %entry.sw.bb562_crit_edge1537
    i32 166272, label %entry.sw.bb562_crit_edge1538
    i32 166276, label %entry.sw.bb562_crit_edge1539
    i32 166280, label %entry.sw.bb562_crit_edge1540
    i32 166284, label %entry.sw.bb562_crit_edge1541
    i32 166288, label %entry.sw.bb562_crit_edge1542
    i32 166292, label %entry.sw.bb562_crit_edge1543
    i32 166296, label %entry.sw.bb562_crit_edge1544
    i32 166300, label %entry.sw.bb562_crit_edge1545
    i32 166304, label %entry.sw.bb562_crit_edge1546
    i32 166308, label %entry.sw.bb562_crit_edge1547
    i32 166312, label %entry.sw.bb562_crit_edge1548
    i32 166316, label %entry.sw.bb562_crit_edge1549
    i32 166320, label %entry.sw.bb562_crit_edge1550
    i32 166324, label %entry.sw.bb562_crit_edge1551
    i32 166328, label %entry.sw.bb562_crit_edge1552
    i32 166332, label %entry.sw.bb562_crit_edge1553
    i32 167680, label %entry.sw.bb562_crit_edge1554
    i32 167684, label %entry.sw.bb562_crit_edge1555
    i32 167688, label %entry.sw.bb562_crit_edge1556
    i32 167692, label %entry.sw.bb562_crit_edge1557
    i32 167696, label %entry.sw.bb562_crit_edge1558
    i32 167700, label %entry.sw.bb562_crit_edge1559
    i32 167704, label %entry.sw.bb562_crit_edge1560
    i32 167708, label %entry.sw.bb562_crit_edge1561
    i32 167712, label %entry.sw.bb562_crit_edge1562
    i32 167716, label %entry.sw.bb562_crit_edge1563
    i32 167720, label %entry.sw.bb562_crit_edge1564
    i32 167724, label %entry.sw.bb562_crit_edge1565
    i32 167728, label %entry.sw.bb562_crit_edge1566
    i32 167732, label %entry.sw.bb562_crit_edge1567
    i32 167736, label %entry.sw.bb562_crit_edge1568
    i32 167740, label %entry.sw.bb562_crit_edge1569
    i32 167744, label %entry.sw.bb562_crit_edge1570
    i32 167748, label %entry.sw.bb562_crit_edge1571
    i32 167752, label %entry.sw.bb562_crit_edge1572
    i32 167756, label %entry.sw.bb562_crit_edge1573
    i32 167760, label %entry.sw.bb562_crit_edge1574
    i32 167764, label %entry.sw.bb562_crit_edge1575
    i32 167768, label %entry.sw.bb562_crit_edge1576
    i32 167772, label %entry.sw.bb562_crit_edge1577
    i32 167776, label %entry.sw.bb562_crit_edge1578
    i32 167780, label %entry.sw.bb562_crit_edge1579
    i32 167784, label %entry.sw.bb562_crit_edge1580
    i32 167788, label %entry.sw.bb562_crit_edge1581
    i32 167792, label %entry.sw.bb562_crit_edge1582
    i32 167796, label %entry.sw.bb562_crit_edge1583
    i32 167800, label %entry.sw.bb562_crit_edge1584
    i32 167804, label %entry.sw.bb562_crit_edge1585
    i32 36880, label %sw.bb577
    i32 164696, label %sw.bb602
    i32 164688, label %sw.bb627
  ]

entry.sw.bb562_crit_edge1585:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1584:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1583:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1582:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1581:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1580:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1579:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1578:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1577:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1576:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1575:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1574:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1573:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1572:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1571:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1570:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1569:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1568:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1567:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1566:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1565:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1564:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1563:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1562:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1561:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1560:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1559:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1558:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1557:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1556:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1555:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1554:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1553:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1552:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1551:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1550:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1549:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1548:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1547:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1546:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1545:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1544:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1543:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1542:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1541:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1540:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1539:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1538:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1537:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1536:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1535:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1534:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1533:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1532:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1531:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1530:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1529:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1528:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1527:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1526:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1525:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1524:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1523:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1522:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1521:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1520:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1519:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1518:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1517:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1516:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1515:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1514:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1513:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1512:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1511:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1510:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1509:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1508:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1507:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1506:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1505:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1504:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1503:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1502:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1501:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1500:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1499:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1498:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1497:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1496:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1495:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1494:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1493:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1492:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1491:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1490:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1489:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1488:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge1487:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb562_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb562

entry.sw.bb514_crit_edge1486:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb514

entry.sw.bb514_crit_edge1485:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb514

entry.sw.bb514_crit_edge1484:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb514

entry.sw.bb514_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb514

entry.sw.bb492_crit_edge1483:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb492

entry.sw.bb492_crit_edge1482:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb492

entry.sw.bb492_crit_edge1481:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb492

entry.sw.bb492_crit_edge1480:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb492

entry.sw.bb492_crit_edge1479:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb492

entry.sw.bb492_crit_edge1478:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb492

entry.sw.bb492_crit_edge1477:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb492

entry.sw.bb492_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb492

entry.sw.bb487_crit_edge1476:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb487

entry.sw.bb487_crit_edge1475:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb487

entry.sw.bb487_crit_edge1474:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb487

entry.sw.bb487_crit_edge1473:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb487

entry.sw.bb487_crit_edge1472:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb487

entry.sw.bb487_crit_edge1471:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb487

entry.sw.bb487_crit_edge1470:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb487

entry.sw.bb487_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb487

entry.sw.bb482_crit_edge1469:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb482

entry.sw.bb482_crit_edge1468:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb482

entry.sw.bb482_crit_edge1467:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb482

entry.sw.bb482_crit_edge1466:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb482

entry.sw.bb482_crit_edge1465:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb482

entry.sw.bb482_crit_edge1464:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb482

entry.sw.bb482_crit_edge1463:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb482

entry.sw.bb482_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb482

entry.sw.bb463_crit_edge1462:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb463

entry.sw.bb463_crit_edge1461:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb463

entry.sw.bb463_crit_edge1460:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb463

entry.sw.bb463_crit_edge1459:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb463

entry.sw.bb463_crit_edge1458:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb463

entry.sw.bb463_crit_edge1457:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb463

entry.sw.bb463_crit_edge1456:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb463

entry.sw.bb463_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb463

entry.sw.bb444_crit_edge1455:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb444

entry.sw.bb444_crit_edge1454:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb444

entry.sw.bb444_crit_edge1453:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb444

entry.sw.bb444_crit_edge1452:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb444

entry.sw.bb444_crit_edge1451:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb444

entry.sw.bb444_crit_edge1450:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb444

entry.sw.bb444_crit_edge1449:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb444

entry.sw.bb444_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb444

entry.sw.bb394_crit_edge1448:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb394

entry.sw.bb394_crit_edge1447:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb394

entry.sw.bb394_crit_edge1446:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb394

entry.sw.bb394_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb394

entry.sw.bb346_crit_edge1445:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb346

entry.sw.bb346_crit_edge1444:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb346

entry.sw.bb346_crit_edge1443:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb346

entry.sw.bb346_crit_edge1442:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb346

entry.sw.bb346_crit_edge1441:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb346

entry.sw.bb346_crit_edge1440:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb346

entry.sw.bb346_crit_edge1439:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb346

entry.sw.bb346_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb346

entry.sw.bb336_crit_edge1438:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb336

entry.sw.bb336_crit_edge1437:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb336

entry.sw.bb336_crit_edge1436:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb336

entry.sw.bb336_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb336

entry.sw.bb329_crit_edge1435:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb329

entry.sw.bb329_crit_edge1434:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb329

entry.sw.bb329_crit_edge1433:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb329

entry.sw.bb329_crit_edge1432:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb329

entry.sw.bb329_crit_edge1431:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb329

entry.sw.bb329_crit_edge1430:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb329

entry.sw.bb329_crit_edge1429:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb329

entry.sw.bb329_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb329

entry.sw.bb321_crit_edge1428:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb321

entry.sw.bb321_crit_edge1427:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb321

entry.sw.bb321_crit_edge1426:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb321

entry.sw.bb321_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb321

entry.sw.bb315_crit_edge1425:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb315

entry.sw.bb315_crit_edge1424:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb315

entry.sw.bb315_crit_edge1423:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb315

entry.sw.bb315_crit_edge1422:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb315

entry.sw.bb315_crit_edge1421:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb315

entry.sw.bb315_crit_edge1420:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb315

entry.sw.bb315_crit_edge1419:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb315

entry.sw.bb315_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb315

entry.sw.bb283_crit_edge1418:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb283

entry.sw.bb283_crit_edge1417:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb283

entry.sw.bb283_crit_edge1416:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb283

entry.sw.bb283_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb283

entry.sw.bb253_crit_edge1415:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb253

entry.sw.bb253_crit_edge1414:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb253

entry.sw.bb253_crit_edge1413:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb253

entry.sw.bb253_crit_edge1412:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb253

entry.sw.bb253_crit_edge1411:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb253

entry.sw.bb253_crit_edge1410:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb253

entry.sw.bb253_crit_edge1409:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb253

entry.sw.bb253_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb253

entry.sw.bb245_crit_edge1408:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb245

entry.sw.bb245_crit_edge1407:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb245

entry.sw.bb245_crit_edge1406:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb245

entry.sw.bb245_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb245

entry.sw.bb239_crit_edge1405:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb239

entry.sw.bb239_crit_edge1404:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb239

entry.sw.bb239_crit_edge1403:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb239

entry.sw.bb239_crit_edge1402:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb239

entry.sw.bb239_crit_edge1401:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb239

entry.sw.bb239_crit_edge1400:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb239

entry.sw.bb239_crit_edge1399:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb239

entry.sw.bb239_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb239

entry.sw.bb184_crit_edge1398:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb184

entry.sw.bb184_crit_edge1397:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb184

entry.sw.bb184_crit_edge1396:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb184

entry.sw.bb184_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb184

entry.sw.bb163_crit_edge1395:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb163

entry.sw.bb163_crit_edge1394:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb163

entry.sw.bb163_crit_edge1393:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb163

entry.sw.bb163_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb163

entry.sw.bb3_crit_edge1392:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

entry.sw.bb3_crit_edge1391:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

entry.sw.bb3_crit_edge1390:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

entry.sw.bb3_crit_edge1389:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

entry.sw.bb3_crit_edge1388:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

entry.sw.bb3_crit_edge1387:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

entry.sw.bb3_crit_edge1386:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

entry.cleanup_crit_edge1385:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge1384:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge1383:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge1382:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge1381:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge1380:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge1379:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge1378:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge1377:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge1376:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge1375:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge1374:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge1373:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge1372:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge1371:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge1370:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge1369:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge1368:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge1367:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge1366:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge1365:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge1364:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge1363:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge1386, %entry.sw.bb3_crit_edge1387, %entry.sw.bb3_crit_edge1388, %entry.sw.bb3_crit_edge1389, %entry.sw.bb3_crit_edge1390, %entry.sw.bb3_crit_edge1391, %entry.sw.bb3_crit_edge1392
  %call = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.287, i32 noundef %reg) #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %reloc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reloc, align 4
  %gpu_offset = getelementptr inbounds %struct.radeon_bo_list, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %gpu_offset to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %gpu_offset, align 8
  %shr = lshr i64 %11, 8
  %conv = trunc i64 %shr to i32
  %arrayidx = getelementptr i32, ptr %4, i32 %idx
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %add = add i32 %13, %conv
  store i32 %add, ptr %arrayidx, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %chunk_ib.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %14 = ptrtoint ptr %chunk_ib.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chunk_ib.i, align 4
  %kdata.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %kdata.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %kdata.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  %spec.select = select i1 %tobool.not.i, ptr %4, ptr %17
  %retval.0.in.i = getelementptr i32, ptr %spec.select, i32 %idx
  %18 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %retval.0.i = load i32, ptr %retval.0.in.i, align 4
  %db_depth_control = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 24
  %19 = ptrtoint ptr %db_depth_control to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %retval.0.i, ptr %db_depth_control, align 4
  %db_dirty = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 40
  %20 = ptrtoint ptr %db_dirty to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %db_dirty, align 2
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %rdev = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 1
  %21 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rdev, align 4
  %family = getelementptr inbounds %struct.radeon_device, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %24)
  %cmp = icmp ult i32 %24, 50
  br i1 %cmp, label %do.end11, label %sw.bb6.cleanup_crit_edge

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end11:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.287, i32 noundef 165892) #10
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  %rdev15 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 1
  %27 = ptrtoint ptr %rdev15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rdev15, align 4
  %family16 = getelementptr inbounds %struct.radeon_device, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %family16 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %family16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %30)
  %cmp17 = icmp ult i32 %30, 50
  br i1 %cmp17, label %do.end22, label %sw.bb14.cleanup_crit_edge

sw.bb14.cleanup_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end22:                                         ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %32, ptr noundef nonnull @.str.287, i32 noundef 163900) #10
  br label %cleanup

sw.bb25:                                          ; preds = %entry
  %chunk_ib.i997 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %33 = ptrtoint ptr %chunk_ib.i997 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chunk_ib.i997, align 4
  %kdata.i998 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %kdata.i998 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %kdata.i998, align 4
  %tobool.not.i999 = icmp eq ptr %36, null
  %spec.select1334 = select i1 %tobool.not.i999, ptr %4, ptr %36
  %retval.0.in.i1003 = getelementptr i32, ptr %spec.select1334, i32 %idx
  %37 = ptrtoint ptr %retval.0.in.i1003 to i32
  call void @__asan_load4_noabort(i32 %37)
  %retval.0.i1004 = load i32, ptr %retval.0.in.i1003, align 4
  %db_z_info = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 28
  %38 = ptrtoint ptr %db_z_info to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %retval.0.i1004, ptr %db_z_info, align 4
  %cs_flags = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 21
  %39 = ptrtoint ptr %cs_flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cs_flags, align 4
  %and27 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.then29, label %sw.bb25.if.end73_crit_edge

sw.bb25.if.end73_crit_edge:                       ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

if.then29:                                        ; preds = %sw.bb25
  %call30 = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end37, label %do.end35

do.end35:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %42, ptr noundef nonnull @.str.287, i32 noundef 163904) #10
  br label %cleanup

if.end37:                                         ; preds = %if.then29
  %arrayidx38 = getelementptr i32, ptr %4, i32 %idx
  %43 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx38, align 4
  %and39 = and i32 %44, -241
  store i32 %and39, ptr %arrayidx38, align 4
  %45 = ptrtoint ptr %db_z_info to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %db_z_info, align 4
  %and41 = and i32 %46, -241
  store i32 %and41, ptr %db_z_info, align 4
  %47 = ptrtoint ptr %reloc to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reloc, align 4
  %tiling_flags = getelementptr inbounds %struct.radeon_bo_list, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %tiling_flags to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tiling_flags, align 8
  %and.i = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i1006 = icmp eq i32 %and.i, 0
  %and1.i = shl i32 %50, 4
  %and1.i.op = and i32 %and1.i, 32
  %shl = select i1 %tobool.not.i1006, i32 %and1.i.op, i32 64
  %51 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx38, align 4
  %or = or i32 %shl, %52
  store i32 %or, ptr %arrayidx38, align 4
  %53 = ptrtoint ptr %reloc to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %reloc, align 4
  %tiling_flags44 = getelementptr inbounds %struct.radeon_bo_list, ptr %54, i32 0, i32 5
  %55 = ptrtoint ptr %tiling_flags44 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tiling_flags44, align 8
  %and.i1008 = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1008)
  %tobool.not.i1009 = icmp eq i32 %and.i1008, 0
  %and1.i1010 = shl i32 %56, 4
  %and1.i1010.op = and i32 %and1.i1010, 32
  %shl46 = select i1 %tobool.not.i1009, i32 %and1.i1010.op, i32 64
  %57 = ptrtoint ptr %db_z_info to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %db_z_info, align 4
  %or48 = or i32 %shl46, %58
  store i32 %or48, ptr %db_z_info, align 4
  %59 = ptrtoint ptr %tiling_flags44 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tiling_flags44, align 8
  %and50 = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end37.if.end73_crit_edge, label %if.then52

if.end37.if.end73_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

if.then52:                                        ; preds = %if.end37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bankw) #6
  %61 = ptrtoint ptr %bankw to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %bankw, align 4, !annotation !629
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bankh) #6
  %62 = ptrtoint ptr %bankh to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %bankh, align 4, !annotation !629
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mtaspect) #6
  %63 = ptrtoint ptr %mtaspect to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -1, ptr %mtaspect, align 4, !annotation !629
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tile_split) #6
  %64 = ptrtoint ptr %tile_split to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -1, ptr %tile_split, align 4, !annotation !629
  call void @evergreen_tiling_fields(i32 noundef %60, ptr noundef nonnull %bankw, ptr noundef nonnull %bankh, ptr noundef nonnull %mtaspect, ptr noundef nonnull %tile_split) #6
  %nbanks = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 1
  %65 = ptrtoint ptr %nbanks to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %nbanks, align 4
  %67 = add i32 %66, -2
  %68 = call i32 @llvm.fshl.i32(i32 %67, i32 %67, i32 31) #6
  %69 = zext i32 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.396)
  switch i32 %68, label %sw.default.i [
    i32 0, label %if.then52.evergreen_cs_get_num_banks.exit_crit_edge
    i32 1, label %sw.bb1.i
    i32 7, label %sw.bb3.i
  ]

if.then52.evergreen_cs_get_num_banks.exit_crit_edge: ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %evergreen_cs_get_num_banks.exit

sw.bb1.i:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %evergreen_cs_get_num_banks.exit

sw.default.i:                                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %evergreen_cs_get_num_banks.exit

sw.bb3.i:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %evergreen_cs_get_num_banks.exit

evergreen_cs_get_num_banks.exit:                  ; preds = %sw.bb3.i, %sw.default.i, %sw.bb1.i, %if.then52.evergreen_cs_get_num_banks.exit_crit_edge
  %retval.0.i1012 = phi i32 [ 8192, %sw.default.i ], [ 12288, %sw.bb3.i ], [ 4096, %sw.bb1.i ], [ %68, %if.then52.evergreen_cs_get_num_banks.exit_crit_edge ]
  %70 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx38, align 4
  %or58 = or i32 %71, %retval.0.i1012
  %72 = ptrtoint ptr %tile_split to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %tile_split, align 4
  %and59 = shl i32 %73, 8
  %shl60 = and i32 %and59, 1792
  %74 = ptrtoint ptr %bankw to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %bankw, align 4
  %and61 = shl i32 %75, 16
  %shl62 = and i32 %and61, 196608
  %76 = ptrtoint ptr %bankh to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %bankh, align 4
  %and64 = shl i32 %77, 20
  %shl65 = and i32 %and64, 3145728
  %78 = ptrtoint ptr %mtaspect to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %mtaspect, align 4
  %and67 = shl i32 %79, 24
  %shl68 = and i32 %and67, 50331648
  %or63 = or i32 %shl60, %or58
  %or66 = or i32 %or63, %shl62
  %or69 = or i32 %or66, %shl65
  %or71 = or i32 %or69, %shl68
  store i32 %or71, ptr %arrayidx38, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tile_split) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mtaspect) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bankh) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bankw) #6
  br label %if.end73

if.end73:                                         ; preds = %evergreen_cs_get_num_banks.exit, %if.end37.if.end73_crit_edge, %sw.bb25.if.end73_crit_edge
  %db_dirty74 = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 40
  %80 = ptrtoint ptr %db_dirty74 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 1, ptr %db_dirty74, align 2
  br label %cleanup

sw.bb75:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %chunk_ib.i1013 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %81 = ptrtoint ptr %chunk_ib.i1013 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %chunk_ib.i1013, align 4
  %kdata.i1014 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %kdata.i1014 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %kdata.i1014, align 4
  %tobool.not.i1015 = icmp eq ptr %84, null
  %spec.select1335 = select i1 %tobool.not.i1015, ptr %4, ptr %84
  %retval.0.in.i1019 = getelementptr i32, ptr %spec.select1335, i32 %idx
  %85 = ptrtoint ptr %retval.0.in.i1019 to i32
  call void @__asan_load4_noabort(i32 %85)
  %retval.0.i1020 = load i32, ptr %retval.0.in.i1019, align 4
  %db_s_info = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 33
  %86 = ptrtoint ptr %db_s_info to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %retval.0.i1020, ptr %db_s_info, align 4
  %db_dirty77 = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 40
  %87 = ptrtoint ptr %db_dirty77 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %db_dirty77, align 2
  br label %cleanup

sw.bb78:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %chunk_ib.i1022 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %88 = ptrtoint ptr %chunk_ib.i1022 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %chunk_ib.i1022, align 4
  %kdata.i1023 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %kdata.i1023 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %kdata.i1023, align 4
  %tobool.not.i1024 = icmp eq ptr %91, null
  %spec.select1336 = select i1 %tobool.not.i1024, ptr %4, ptr %91
  %retval.0.in.i1028 = getelementptr i32, ptr %spec.select1336, i32 %idx
  %92 = ptrtoint ptr %retval.0.in.i1028 to i32
  call void @__asan_load4_noabort(i32 %92)
  %retval.0.i1029 = load i32, ptr %retval.0.in.i1028, align 4
  %db_depth_view = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 25
  %93 = ptrtoint ptr %db_depth_view to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %retval.0.i1029, ptr %db_depth_view, align 4
  %db_dirty80 = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 40
  %94 = ptrtoint ptr %db_dirty80 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %db_dirty80, align 2
  br label %cleanup

sw.bb81:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %chunk_ib.i1031 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %95 = ptrtoint ptr %chunk_ib.i1031 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %chunk_ib.i1031, align 4
  %kdata.i1032 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %kdata.i1032 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %kdata.i1032, align 4
  %tobool.not.i1033 = icmp eq ptr %98, null
  %spec.select1337 = select i1 %tobool.not.i1033, ptr %4, ptr %98
  %retval.0.in.i1037 = getelementptr i32, ptr %spec.select1337, i32 %idx
  %99 = ptrtoint ptr %retval.0.in.i1037 to i32
  call void @__asan_load4_noabort(i32 %99)
  %retval.0.i1038 = load i32, ptr %retval.0.in.i1037, align 4
  %db_depth_size = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 27
  %100 = ptrtoint ptr %db_depth_size to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %retval.0.i1038, ptr %db_depth_size, align 4
  %db_dirty83 = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 40
  %101 = ptrtoint ptr %db_dirty83 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 1, ptr %db_dirty83, align 2
  br label %cleanup

sw.bb84:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %chunk_ib.i1040 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %102 = ptrtoint ptr %chunk_ib.i1040 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %chunk_ib.i1040, align 4
  %kdata.i1041 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %kdata.i1041 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %kdata.i1041, align 4
  %tobool.not.i1042 = icmp eq ptr %105, null
  %spec.select1338 = select i1 %tobool.not.i1042, ptr %4, ptr %105
  %retval.0.in.i1046 = getelementptr i32, ptr %spec.select1338, i32 %idx
  %106 = ptrtoint ptr %retval.0.in.i1046 to i32
  call void @__asan_load4_noabort(i32 %106)
  %retval.0.i1047 = load i32, ptr %retval.0.in.i1046, align 4
  %db_depth_slice = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 26
  %107 = ptrtoint ptr %db_depth_slice to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %retval.0.i1047, ptr %db_depth_slice, align 4
  %db_dirty86 = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 40
  %108 = ptrtoint ptr %db_dirty86 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 1, ptr %db_dirty86, align 2
  br label %cleanup

sw.bb87:                                          ; preds = %entry
  %call88 = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end95, label %do.end93

do.end93:                                         ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #8
  %109 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %110, ptr noundef nonnull @.str.287, i32 noundef 163912) #10
  br label %cleanup

if.end95:                                         ; preds = %sw.bb87
  %chunk_ib.i1049 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %111 = ptrtoint ptr %chunk_ib.i1049 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %chunk_ib.i1049, align 4
  %kdata.i1050 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %kdata.i1050 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %kdata.i1050, align 4
  %tobool.not.i1051 = icmp eq ptr %114, null
  br i1 %tobool.not.i1051, label %if.end.i1053, label %if.end95.radeon_get_ib_value.exit1057_crit_edge

if.end95.radeon_get_ib_value.exit1057_crit_edge:  ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_get_ib_value.exit1057

if.end.i1053:                                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  %115 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ptr, align 8
  br label %radeon_get_ib_value.exit1057

radeon_get_ib_value.exit1057:                     ; preds = %if.end.i1053, %if.end95.radeon_get_ib_value.exit1057_crit_edge
  %.pn.i1054 = phi ptr [ %116, %if.end.i1053 ], [ %114, %if.end95.radeon_get_ib_value.exit1057_crit_edge ]
  %retval.0.in.i1055 = getelementptr i32, ptr %.pn.i1054, i32 %idx
  %117 = ptrtoint ptr %retval.0.in.i1055 to i32
  call void @__asan_load4_noabort(i32 %117)
  %retval.0.i1056 = load i32, ptr %retval.0.in.i1055, align 4
  %db_z_read_offset = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 29
  %118 = ptrtoint ptr %db_z_read_offset to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %retval.0.i1056, ptr %db_z_read_offset, align 4
  %119 = ptrtoint ptr %reloc to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %reloc, align 4
  %gpu_offset97 = getelementptr inbounds %struct.radeon_bo_list, ptr %120, i32 0, i32 2
  %121 = ptrtoint ptr %gpu_offset97 to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %gpu_offset97, align 8
  %shr98 = lshr i64 %122, 8
  %conv100 = trunc i64 %shr98 to i32
  %arrayidx101 = getelementptr i32, ptr %4, i32 %idx
  %123 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx101, align 4
  %add102 = add i32 %124, %conv100
  store i32 %add102, ptr %arrayidx101, align 4
  %125 = load ptr, ptr %reloc, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %125, align 8
  %db_z_read_bo = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 31
  %128 = ptrtoint ptr %db_z_read_bo to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %127, ptr %db_z_read_bo, align 4
  %db_dirty103 = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 40
  %129 = ptrtoint ptr %db_dirty103 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 1, ptr %db_dirty103, align 2
  br label %cleanup

sw.bb104:                                         ; preds = %entry
  %call105 = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.end112, label %do.end110

do.end110:                                        ; preds = %sw.bb104
  call void @__sanitizer_cov_trace_pc() #8
  %130 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %131, ptr noundef nonnull @.str.287, i32 noundef 163920) #10
  br label %cleanup

if.end112:                                        ; preds = %sw.bb104
  %chunk_ib.i1058 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %132 = ptrtoint ptr %chunk_ib.i1058 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %chunk_ib.i1058, align 4
  %kdata.i1059 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %133, i32 0, i32 1
  %134 = ptrtoint ptr %kdata.i1059 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %kdata.i1059, align 4
  %tobool.not.i1060 = icmp eq ptr %135, null
  br i1 %tobool.not.i1060, label %if.end.i1062, label %if.end112.radeon_get_ib_value.exit1066_crit_edge

if.end112.radeon_get_ib_value.exit1066_crit_edge: ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_get_ib_value.exit1066

if.end.i1062:                                     ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #8
  %136 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %ptr, align 8
  br label %radeon_get_ib_value.exit1066

radeon_get_ib_value.exit1066:                     ; preds = %if.end.i1062, %if.end112.radeon_get_ib_value.exit1066_crit_edge
  %.pn.i1063 = phi ptr [ %137, %if.end.i1062 ], [ %135, %if.end112.radeon_get_ib_value.exit1066_crit_edge ]
  %retval.0.in.i1064 = getelementptr i32, ptr %.pn.i1063, i32 %idx
  %138 = ptrtoint ptr %retval.0.in.i1064 to i32
  call void @__asan_load4_noabort(i32 %138)
  %retval.0.i1065 = load i32, ptr %retval.0.in.i1064, align 4
  %db_z_write_offset = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 30
  %139 = ptrtoint ptr %db_z_write_offset to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %retval.0.i1065, ptr %db_z_write_offset, align 4
  %140 = ptrtoint ptr %reloc to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %reloc, align 4
  %gpu_offset114 = getelementptr inbounds %struct.radeon_bo_list, ptr %141, i32 0, i32 2
  %142 = ptrtoint ptr %gpu_offset114 to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %gpu_offset114, align 8
  %shr115 = lshr i64 %143, 8
  %conv117 = trunc i64 %shr115 to i32
  %arrayidx118 = getelementptr i32, ptr %4, i32 %idx
  %144 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx118, align 4
  %add119 = add i32 %145, %conv117
  store i32 %add119, ptr %arrayidx118, align 4
  %146 = load ptr, ptr %reloc, align 4
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %146, align 8
  %db_z_write_bo = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 32
  %149 = ptrtoint ptr %db_z_write_bo to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %148, ptr %db_z_write_bo, align 4
  %db_dirty121 = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 40
  %150 = ptrtoint ptr %db_dirty121 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 1, ptr %db_dirty121, align 2
  br label %cleanup

sw.bb122:                                         ; preds = %entry
  %call123 = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.end130, label %do.end128

do.end128:                                        ; preds = %sw.bb122
  call void @__sanitizer_cov_trace_pc() #8
  %151 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %152, ptr noundef nonnull @.str.287, i32 noundef 163916) #10
  br label %cleanup

if.end130:                                        ; preds = %sw.bb122
  %chunk_ib.i1067 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %153 = ptrtoint ptr %chunk_ib.i1067 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %chunk_ib.i1067, align 4
  %kdata.i1068 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %154, i32 0, i32 1
  %155 = ptrtoint ptr %kdata.i1068 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %kdata.i1068, align 4
  %tobool.not.i1069 = icmp eq ptr %156, null
  br i1 %tobool.not.i1069, label %if.end.i1071, label %if.end130.radeon_get_ib_value.exit1075_crit_edge

if.end130.radeon_get_ib_value.exit1075_crit_edge: ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_get_ib_value.exit1075

if.end.i1071:                                     ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #8
  %157 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %ptr, align 8
  br label %radeon_get_ib_value.exit1075

radeon_get_ib_value.exit1075:                     ; preds = %if.end.i1071, %if.end130.radeon_get_ib_value.exit1075_crit_edge
  %.pn.i1072 = phi ptr [ %158, %if.end.i1071 ], [ %156, %if.end130.radeon_get_ib_value.exit1075_crit_edge ]
  %retval.0.in.i1073 = getelementptr i32, ptr %.pn.i1072, i32 %idx
  %159 = ptrtoint ptr %retval.0.in.i1073 to i32
  call void @__asan_load4_noabort(i32 %159)
  %retval.0.i1074 = load i32, ptr %retval.0.in.i1073, align 4
  %db_s_read_offset = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 34
  %160 = ptrtoint ptr %db_s_read_offset to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %retval.0.i1074, ptr %db_s_read_offset, align 4
  %161 = ptrtoint ptr %reloc to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %reloc, align 4
  %gpu_offset132 = getelementptr inbounds %struct.radeon_bo_list, ptr %162, i32 0, i32 2
  %163 = ptrtoint ptr %gpu_offset132 to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %gpu_offset132, align 8
  %shr133 = lshr i64 %164, 8
  %conv135 = trunc i64 %shr133 to i32
  %arrayidx136 = getelementptr i32, ptr %4, i32 %idx
  %165 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx136, align 4
  %add137 = add i32 %166, %conv135
  store i32 %add137, ptr %arrayidx136, align 4
  %167 = load ptr, ptr %reloc, align 4
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %167, align 8
  %db_s_read_bo = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 36
  %170 = ptrtoint ptr %db_s_read_bo to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %169, ptr %db_s_read_bo, align 4
  %db_dirty139 = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 40
  %171 = ptrtoint ptr %db_dirty139 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 1, ptr %db_dirty139, align 2
  br label %cleanup

sw.bb140:                                         ; preds = %entry
  %call141 = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %if.end148, label %do.end146

do.end146:                                        ; preds = %sw.bb140
  call void @__sanitizer_cov_trace_pc() #8
  %172 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %173, ptr noundef nonnull @.str.287, i32 noundef 163924) #10
  br label %cleanup

if.end148:                                        ; preds = %sw.bb140
  %chunk_ib.i1076 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %174 = ptrtoint ptr %chunk_ib.i1076 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %chunk_ib.i1076, align 4
  %kdata.i1077 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %175, i32 0, i32 1
  %176 = ptrtoint ptr %kdata.i1077 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %kdata.i1077, align 4
  %tobool.not.i1078 = icmp eq ptr %177, null
  br i1 %tobool.not.i1078, label %if.end.i1080, label %if.end148.radeon_get_ib_value.exit1084_crit_edge

if.end148.radeon_get_ib_value.exit1084_crit_edge: ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_get_ib_value.exit1084

if.end.i1080:                                     ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #8
  %178 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %ptr, align 8
  br label %radeon_get_ib_value.exit1084

radeon_get_ib_value.exit1084:                     ; preds = %if.end.i1080, %if.end148.radeon_get_ib_value.exit1084_crit_edge
  %.pn.i1081 = phi ptr [ %179, %if.end.i1080 ], [ %177, %if.end148.radeon_get_ib_value.exit1084_crit_edge ]
  %retval.0.in.i1082 = getelementptr i32, ptr %.pn.i1081, i32 %idx
  %180 = ptrtoint ptr %retval.0.in.i1082 to i32
  call void @__asan_load4_noabort(i32 %180)
  %retval.0.i1083 = load i32, ptr %retval.0.in.i1082, align 4
  %db_s_write_offset = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 35
  %181 = ptrtoint ptr %db_s_write_offset to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %retval.0.i1083, ptr %db_s_write_offset, align 4
  %182 = ptrtoint ptr %reloc to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %reloc, align 4
  %gpu_offset150 = getelementptr inbounds %struct.radeon_bo_list, ptr %183, i32 0, i32 2
  %184 = ptrtoint ptr %gpu_offset150 to i32
  call void @__asan_load8_noabort(i32 %184)
  %185 = load i64, ptr %gpu_offset150, align 8
  %shr151 = lshr i64 %185, 8
  %conv153 = trunc i64 %shr151 to i32
  %arrayidx154 = getelementptr i32, ptr %4, i32 %idx
  %186 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %arrayidx154, align 4
  %add155 = add i32 %187, %conv153
  store i32 %add155, ptr %arrayidx154, align 4
  %188 = load ptr, ptr %reloc, align 4
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %188, align 8
  %db_s_write_bo = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 37
  %191 = ptrtoint ptr %db_s_write_bo to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %190, ptr %db_s_write_bo, align 4
  %db_dirty157 = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 40
  %192 = ptrtoint ptr %db_dirty157 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 1, ptr %db_dirty157, align 2
  br label %cleanup

sw.bb158:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %chunk_ib.i1085 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %193 = ptrtoint ptr %chunk_ib.i1085 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %chunk_ib.i1085, align 4
  %kdata.i1086 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %194, i32 0, i32 1
  %195 = ptrtoint ptr %kdata.i1086 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %kdata.i1086, align 4
  %tobool.not.i1087 = icmp eq ptr %196, null
  %spec.select1339 = select i1 %tobool.not.i1087, ptr %4, ptr %196
  %retval.0.in.i1091 = getelementptr i32, ptr %spec.select1339, i32 %idx
  %197 = ptrtoint ptr %retval.0.in.i1091 to i32
  call void @__asan_load4_noabort(i32 %197)
  %retval.0.i1092 = load i32, ptr %retval.0.in.i1091, align 4
  %vgt_strmout_config = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 19
  %198 = ptrtoint ptr %vgt_strmout_config to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %retval.0.i1092, ptr %vgt_strmout_config, align 4
  %streamout_dirty = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 41
  %199 = ptrtoint ptr %streamout_dirty to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 1, ptr %streamout_dirty, align 1
  br label %cleanup

sw.bb160:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %chunk_ib.i1094 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %200 = ptrtoint ptr %chunk_ib.i1094 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %chunk_ib.i1094, align 4
  %kdata.i1095 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %201, i32 0, i32 1
  %202 = ptrtoint ptr %kdata.i1095 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %kdata.i1095, align 4
  %tobool.not.i1096 = icmp eq ptr %203, null
  %spec.select1340 = select i1 %tobool.not.i1096, ptr %4, ptr %203
  %retval.0.in.i1100 = getelementptr i32, ptr %spec.select1340, i32 %idx
  %204 = ptrtoint ptr %retval.0.in.i1100 to i32
  call void @__asan_load4_noabort(i32 %204)
  %retval.0.i1101 = load i32, ptr %retval.0.in.i1100, align 4
  %vgt_strmout_buffer_config = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 20
  %205 = ptrtoint ptr %vgt_strmout_buffer_config to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %retval.0.i1101, ptr %vgt_strmout_buffer_config, align 4
  %streamout_dirty162 = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 41
  %206 = ptrtoint ptr %streamout_dirty162 to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 1, ptr %streamout_dirty162, align 1
  br label %cleanup

sw.bb163:                                         ; preds = %entry.sw.bb163_crit_edge, %entry.sw.bb163_crit_edge1393, %entry.sw.bb163_crit_edge1394, %entry.sw.bb163_crit_edge1395
  %call164 = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %tobool165.not = icmp eq i32 %call164, 0
  br i1 %tobool165.not, label %if.end171, label %do.end169

do.end169:                                        ; preds = %sw.bb163
  call void @__sanitizer_cov_trace_pc() #8
  %207 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %208, ptr noundef nonnull @.str.287, i32 noundef %reg) #10
  br label %cleanup

if.end171:                                        ; preds = %sw.bb163
  %sub = add nsw i32 %reg, -166616
  %div996 = lshr i32 %sub, 4
  %chunk_ib.i1103 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %209 = ptrtoint ptr %chunk_ib.i1103 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %chunk_ib.i1103, align 4
  %kdata.i1104 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %210, i32 0, i32 1
  %211 = ptrtoint ptr %kdata.i1104 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %kdata.i1104, align 4
  %tobool.not.i1105 = icmp eq ptr %212, null
  br i1 %tobool.not.i1105, label %if.end.i1107, label %if.end171.radeon_get_ib_value.exit1111_crit_edge

if.end171.radeon_get_ib_value.exit1111_crit_edge: ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_get_ib_value.exit1111

if.end.i1107:                                     ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #8
  %213 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %ptr, align 8
  br label %radeon_get_ib_value.exit1111

radeon_get_ib_value.exit1111:                     ; preds = %if.end.i1107, %if.end171.radeon_get_ib_value.exit1111_crit_edge
  %.pn.i1108 = phi ptr [ %214, %if.end.i1107 ], [ %212, %if.end171.radeon_get_ib_value.exit1111_crit_edge ]
  %retval.0.in.i1109 = getelementptr i32, ptr %.pn.i1108, i32 %idx
  %215 = ptrtoint ptr %retval.0.in.i1109 to i32
  call void @__asan_load4_noabort(i32 %215)
  %retval.0.i1110 = load i32, ptr %retval.0.in.i1109, align 4
  %shl173 = shl i32 %retval.0.i1110, 8
  %arrayidx174 = getelementptr %struct.evergreen_cs_track, ptr %1, i32 0, i32 22, i32 %div996
  %216 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %shl173, ptr %arrayidx174, align 4
  %217 = ptrtoint ptr %reloc to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %reloc, align 4
  %gpu_offset175 = getelementptr inbounds %struct.radeon_bo_list, ptr %218, i32 0, i32 2
  %219 = ptrtoint ptr %gpu_offset175 to i32
  call void @__asan_load8_noabort(i32 %219)
  %220 = load i64, ptr %gpu_offset175, align 8
  %shr176 = lshr i64 %220, 8
  %conv178 = trunc i64 %shr176 to i32
  %arrayidx179 = getelementptr i32, ptr %4, i32 %idx
  %221 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %arrayidx179, align 4
  %add180 = add i32 %222, %conv178
  store i32 %add180, ptr %arrayidx179, align 4
  %223 = load ptr, ptr %reloc, align 4
  %224 = ptrtoint ptr %223 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %223, align 8
  %arrayidx182 = getelementptr %struct.evergreen_cs_track, ptr %1, i32 0, i32 21, i32 %div996
  %226 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr %225, ptr %arrayidx182, align 4
  %streamout_dirty183 = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 41
  %227 = ptrtoint ptr %streamout_dirty183 to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 1, ptr %streamout_dirty183, align 1
  br label %cleanup

sw.bb184:                                         ; preds = %entry.sw.bb184_crit_edge, %entry.sw.bb184_crit_edge1396, %entry.sw.bb184_crit_edge1397, %entry.sw.bb184_crit_edge1398
  %sub185 = add nsw i32 %reg, -166608
  %div186995 = lshr i32 %sub185, 4
  %chunk_ib.i1112 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %228 = ptrtoint ptr %chunk_ib.i1112 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %chunk_ib.i1112, align 4
  %kdata.i1113 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %229, i32 0, i32 1
  %230 = ptrtoint ptr %kdata.i1113 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %kdata.i1113, align 4
  %tobool.not.i1114 = icmp eq ptr %231, null
  %spec.select1341 = select i1 %tobool.not.i1114, ptr %4, ptr %231
  %retval.0.in.i1118 = getelementptr i32, ptr %spec.select1341, i32 %idx
  %232 = ptrtoint ptr %retval.0.in.i1118 to i32
  call void @__asan_load4_noabort(i32 %232)
  %retval.0.i1119 = load i32, ptr %retval.0.in.i1118, align 4
  %mul = shl i32 %retval.0.i1119, 2
  %arrayidx188 = getelementptr %struct.evergreen_cs_track, ptr %1, i32 0, i32 23, i32 %div186995
  %233 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %mul, ptr %arrayidx188, align 4
  %streamout_dirty189 = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 41
  %234 = ptrtoint ptr %streamout_dirty189 to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 1, ptr %streamout_dirty189, align 1
  br label %cleanup

sw.bb190:                                         ; preds = %entry
  %call191 = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call191)
  %tobool192.not = icmp eq i32 %call191, 0
  br i1 %tobool192.not, label %if.end198, label %do.end196

do.end196:                                        ; preds = %sw.bb190
  call void @__sanitizer_cov_trace_pc() #8
  %235 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %236, ptr noundef nonnull @.str.306, i32 noundef 34296) #10
  br label %cleanup

if.end198:                                        ; preds = %sw.bb190
  call void @__sanitizer_cov_trace_pc() #8
  %237 = ptrtoint ptr %reloc to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %reloc, align 4
  %gpu_offset199 = getelementptr inbounds %struct.radeon_bo_list, ptr %238, i32 0, i32 2
  %239 = ptrtoint ptr %gpu_offset199 to i32
  call void @__asan_load8_noabort(i32 %239)
  %240 = load i64, ptr %gpu_offset199, align 8
  %shr200 = lshr i64 %240, 8
  %conv202 = trunc i64 %shr200 to i32
  %arrayidx203 = getelementptr i32, ptr %4, i32 %idx
  %241 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %arrayidx203, align 4
  %add204 = add i32 %242, %conv202
  store i32 %add204, ptr %arrayidx203, align 4
  br label %cleanup

sw.bb205:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %chunk_ib.i1121 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %243 = ptrtoint ptr %chunk_ib.i1121 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %chunk_ib.i1121, align 4
  %kdata.i1122 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %244, i32 0, i32 1
  %245 = ptrtoint ptr %kdata.i1122 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %kdata.i1122, align 4
  %tobool.not.i1123 = icmp eq ptr %246, null
  %spec.select1342 = select i1 %tobool.not.i1123, ptr %4, ptr %246
  %retval.0.in.i1127 = getelementptr i32, ptr %spec.select1342, i32 %idx
  %247 = ptrtoint ptr %retval.0.in.i1127 to i32
  call void @__asan_load4_noabort(i32 %247)
  %retval.0.i1128 = load i32, ptr %retval.0.in.i1127, align 4
  %cb_target_mask = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 17
  %248 = ptrtoint ptr %cb_target_mask to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 %retval.0.i1128, ptr %cb_target_mask, align 4
  %cb_dirty = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 39
  %249 = ptrtoint ptr %cb_dirty to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 1, ptr %cb_dirty, align 1
  br label %cleanup

sw.bb207:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %chunk_ib.i1130 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %250 = ptrtoint ptr %chunk_ib.i1130 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %chunk_ib.i1130, align 4
  %kdata.i1131 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %251, i32 0, i32 1
  %252 = ptrtoint ptr %kdata.i1131 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %kdata.i1131, align 4
  %tobool.not.i1132 = icmp eq ptr %253, null
  %spec.select1343 = select i1 %tobool.not.i1132, ptr %4, ptr %253
  %retval.0.in.i1136 = getelementptr i32, ptr %spec.select1343, i32 %idx
  %254 = ptrtoint ptr %retval.0.in.i1136 to i32
  call void @__asan_load4_noabort(i32 %254)
  %retval.0.i1137 = load i32, ptr %retval.0.in.i1136, align 4
  %cb_shader_mask = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 18
  %255 = ptrtoint ptr %cb_shader_mask to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %retval.0.i1137, ptr %cb_shader_mask, align 4
  %cb_dirty209 = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 39
  %256 = ptrtoint ptr %cb_dirty209 to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 1, ptr %cb_dirty209, align 1
  br label %cleanup

sw.bb210:                                         ; preds = %entry
  %rdev211 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 1
  %257 = ptrtoint ptr %rdev211 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %rdev211, align 4
  %family212 = getelementptr inbounds %struct.radeon_device, ptr %258, i32 0, i32 6
  %259 = ptrtoint ptr %family212 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %family212, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %260)
  %cmp213 = icmp ugt i32 %260, 49
  br i1 %cmp213, label %do.end218, label %if.end220

do.end218:                                        ; preds = %sw.bb210
  call void @__sanitizer_cov_trace_pc() #8
  %261 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %262, ptr noundef nonnull @.str.287, i32 noundef 166916) #10
  br label %cleanup

if.end220:                                        ; preds = %sw.bb210
  call void @__sanitizer_cov_trace_pc() #8
  %chunk_ib.i1139 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %263 = ptrtoint ptr %chunk_ib.i1139 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %chunk_ib.i1139, align 4
  %kdata.i1140 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %264, i32 0, i32 1
  %265 = ptrtoint ptr %kdata.i1140 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %kdata.i1140, align 4
  %tobool.not.i1141 = icmp eq ptr %266, null
  %spec.select1344 = select i1 %tobool.not.i1141, ptr %4, ptr %266
  %retval.0.in.i1145 = getelementptr i32, ptr %spec.select1344, i32 %idx
  %267 = ptrtoint ptr %retval.0.in.i1145 to i32
  call void @__asan_load4_noabort(i32 %267)
  %retval.0.i1146 = load i32, ptr %retval.0.in.i1145, align 4
  %and222 = and i32 %retval.0.i1146, 3
  %shl223 = shl nuw nsw i32 1, %and222
  %nsamples = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 4
  %268 = ptrtoint ptr %nsamples to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 %shl223, ptr %nsamples, align 4
  br label %cleanup

sw.bb224:                                         ; preds = %entry
  %rdev225 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 1
  %269 = ptrtoint ptr %rdev225 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %rdev225, align 4
  %family226 = getelementptr inbounds %struct.radeon_device, ptr %270, i32 0, i32 6
  %271 = ptrtoint ptr %family226 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %family226, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %272)
  %cmp227 = icmp ult i32 %272, 50
  br i1 %cmp227, label %do.end232, label %if.end234

do.end232:                                        ; preds = %sw.bb224
  call void @__sanitizer_cov_trace_pc() #8
  %273 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %274, ptr noundef nonnull @.str.287, i32 noundef 166880) #10
  br label %cleanup

if.end234:                                        ; preds = %sw.bb224
  call void @__sanitizer_cov_trace_pc() #8
  %chunk_ib.i1148 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %275 = ptrtoint ptr %chunk_ib.i1148 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %chunk_ib.i1148, align 4
  %kdata.i1149 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %276, i32 0, i32 1
  %277 = ptrtoint ptr %kdata.i1149 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %kdata.i1149, align 4
  %tobool.not.i1150 = icmp eq ptr %278, null
  %spec.select1345 = select i1 %tobool.not.i1150, ptr %4, ptr %278
  %retval.0.in.i1154 = getelementptr i32, ptr %spec.select1345, i32 %idx
  %279 = ptrtoint ptr %retval.0.in.i1154 to i32
  call void @__asan_load4_noabort(i32 %279)
  %retval.0.i1155 = load i32, ptr %retval.0.in.i1154, align 4
  %and236 = and i32 %retval.0.i1155, 7
  %shl237 = shl nuw nsw i32 1, %and236
  %nsamples238 = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 4
  %280 = ptrtoint ptr %nsamples238 to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 %shl237, ptr %nsamples238, align 4
  br label %cleanup

sw.bb239:                                         ; preds = %entry.sw.bb239_crit_edge, %entry.sw.bb239_crit_edge1399, %entry.sw.bb239_crit_edge1400, %entry.sw.bb239_crit_edge1401, %entry.sw.bb239_crit_edge1402, %entry.sw.bb239_crit_edge1403, %entry.sw.bb239_crit_edge1404, %entry.sw.bb239_crit_edge1405
  %281 = trunc i32 %reg to i16
  %div241.lhs.trunc = add nsw i16 %281, 29588
  %div2411318 = udiv i16 %div241.lhs.trunc, 60
  %div241.zext = zext i16 %div2411318 to i32
  %chunk_ib.i1157 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %282 = ptrtoint ptr %chunk_ib.i1157 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %chunk_ib.i1157, align 4
  %kdata.i1158 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %283, i32 0, i32 1
  %284 = ptrtoint ptr %kdata.i1158 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %kdata.i1158, align 4
  %tobool.not.i1159 = icmp eq ptr %285, null
  %spec.select1346 = select i1 %tobool.not.i1159, ptr %4, ptr %285
  %retval.0.in.i1163 = getelementptr i32, ptr %spec.select1346, i32 %idx
  %286 = ptrtoint ptr %retval.0.in.i1163 to i32
  call void @__asan_load4_noabort(i32 %286)
  %retval.0.i1164 = load i32, ptr %retval.0.in.i1163, align 4
  %arrayidx243 = getelementptr %struct.evergreen_cs_track, ptr %1, i32 0, i32 10, i32 %div241.zext
  %287 = ptrtoint ptr %arrayidx243 to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 %retval.0.i1164, ptr %arrayidx243, align 4
  %cb_dirty244 = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 39
  %288 = ptrtoint ptr %cb_dirty244 to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 1, ptr %cb_dirty244, align 1
  br label %cleanup

sw.bb245:                                         ; preds = %entry.sw.bb245_crit_edge, %entry.sw.bb245_crit_edge1406, %entry.sw.bb245_crit_edge1407, %entry.sw.bb245_crit_edge1408
  %289 = trunc i32 %reg to i8
  %div247.lhs.trunc = add i8 %289, -76
  %div2471319 = udiv i8 %div247.lhs.trunc, 28
  %narrow1362 = add nuw nsw i8 %div2471319, 8
  %add248 = zext i8 %narrow1362 to i32
  %chunk_ib.i1166 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %290 = ptrtoint ptr %chunk_ib.i1166 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %chunk_ib.i1166, align 4
  %kdata.i1167 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %291, i32 0, i32 1
  %292 = ptrtoint ptr %kdata.i1167 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %kdata.i1167, align 4
  %tobool.not.i1168 = icmp eq ptr %293, null
  %spec.select1347 = select i1 %tobool.not.i1168, ptr %4, ptr %293
  %retval.0.in.i1172 = getelementptr i32, ptr %spec.select1347, i32 %idx
  %294 = ptrtoint ptr %retval.0.in.i1172 to i32
  call void @__asan_load4_noabort(i32 %294)
  %retval.0.i1173 = load i32, ptr %retval.0.in.i1172, align 4
  %arrayidx251 = getelementptr %struct.evergreen_cs_track, ptr %1, i32 0, i32 10, i32 %add248
  %295 = ptrtoint ptr %arrayidx251 to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 %retval.0.i1173, ptr %arrayidx251, align 4
  %cb_dirty252 = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 39
  %296 = ptrtoint ptr %cb_dirty252 to i32
  call void @__asan_store1_noabort(i32 %296)
  store i8 1, ptr %cb_dirty252, align 1
  br label %cleanup

sw.bb253:                                         ; preds = %entry.sw.bb253_crit_edge, %entry.sw.bb253_crit_edge1409, %entry.sw.bb253_crit_edge1410, %entry.sw.bb253_crit_edge1411, %entry.sw.bb253_crit_edge1412, %entry.sw.bb253_crit_edge1413, %entry.sw.bb253_crit_edge1414, %entry.sw.bb253_crit_edge1415
  %297 = trunc i32 %reg to i16
  %div255.lhs.trunc = add nsw i16 %297, 29584
  %div2551320 = udiv i16 %div255.lhs.trunc, 60
  %div255.zext = zext i16 %div2551320 to i32
  %chunk_ib.i1175 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %298 = ptrtoint ptr %chunk_ib.i1175 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %chunk_ib.i1175, align 4
  %kdata.i1176 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %299, i32 0, i32 1
  %300 = ptrtoint ptr %kdata.i1176 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %kdata.i1176, align 4
  %tobool.not.i1177 = icmp eq ptr %301, null
  %spec.select1348 = select i1 %tobool.not.i1177, ptr %4, ptr %301
  %retval.0.in.i1181 = getelementptr i32, ptr %spec.select1348, i32 %idx
  %302 = ptrtoint ptr %retval.0.in.i1181 to i32
  call void @__asan_load4_noabort(i32 %302)
  %retval.0.i1182 = load i32, ptr %retval.0.in.i1181, align 4
  %arrayidx257 = getelementptr %struct.evergreen_cs_track, ptr %1, i32 0, i32 9, i32 %div255.zext
  %303 = ptrtoint ptr %arrayidx257 to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 %retval.0.i1182, ptr %arrayidx257, align 4
  %cs_flags258 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 21
  %304 = ptrtoint ptr %cs_flags258 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %cs_flags258, align 4
  %and259 = and i32 %305, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and259)
  %tobool260.not = icmp eq i32 %and259, 0
  br i1 %tobool260.not, label %if.then261, label %sw.bb253.if.end281_crit_edge

sw.bb253.if.end281_crit_edge:                     ; preds = %sw.bb253
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end281

if.then261:                                       ; preds = %sw.bb253
  %call262 = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call262)
  %tobool263.not = icmp eq i32 %call262, 0
  br i1 %tobool263.not, label %if.end269, label %do.end267

do.end267:                                        ; preds = %if.then261
  call void @__sanitizer_cov_trace_pc() #8
  %306 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %307, ptr noundef nonnull @.str.287, i32 noundef %reg) #10
  br label %cleanup

if.end269:                                        ; preds = %if.then261
  call void @__sanitizer_cov_trace_pc() #8
  %308 = ptrtoint ptr %reloc to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %reloc, align 4
  %tiling_flags270 = getelementptr inbounds %struct.radeon_bo_list, ptr %309, i32 0, i32 5
  %310 = ptrtoint ptr %tiling_flags270 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %tiling_flags270, align 8
  %and.i1184 = and i32 %311, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1184)
  %tobool.not.i1185 = icmp eq i32 %and.i1184, 0
  %and1.i1186 = shl i32 %311, 8
  %and1.i1186.op = and i32 %and1.i1186, 512
  %shl272 = select i1 %tobool.not.i1185, i32 %and1.i1186.op, i32 1024
  %arrayidx273 = getelementptr i32, ptr %4, i32 %idx
  %312 = ptrtoint ptr %arrayidx273 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %arrayidx273, align 4
  %or274 = or i32 %shl272, %313
  store i32 %or274, ptr %arrayidx273, align 4
  %314 = ptrtoint ptr %reloc to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %reloc, align 4
  %tiling_flags275 = getelementptr inbounds %struct.radeon_bo_list, ptr %315, i32 0, i32 5
  %316 = ptrtoint ptr %tiling_flags275 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %tiling_flags275, align 8
  %and.i1188 = and i32 %317, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1188)
  %tobool.not.i1189 = icmp eq i32 %and.i1188, 0
  %and1.i1190 = shl i32 %317, 8
  %and1.i1190.op = and i32 %and1.i1190, 512
  %shl277 = select i1 %tobool.not.i1189, i32 %and1.i1190.op, i32 1024
  %318 = ptrtoint ptr %arrayidx257 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %arrayidx257, align 4
  %or280 = or i32 %shl277, %319
  store i32 %or280, ptr %arrayidx257, align 4
  br label %if.end281

if.end281:                                        ; preds = %if.end269, %sw.bb253.if.end281_crit_edge
  %cb_dirty282 = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 39
  %320 = ptrtoint ptr %cb_dirty282 to i32
  call void @__asan_store1_noabort(i32 %320)
  store i8 1, ptr %cb_dirty282, align 1
  br label %cleanup

sw.bb283:                                         ; preds = %entry.sw.bb283_crit_edge, %entry.sw.bb283_crit_edge1416, %entry.sw.bb283_crit_edge1417, %entry.sw.bb283_crit_edge1418
  %321 = trunc i32 %reg to i8
  %div285.lhs.trunc = add i8 %321, -80
  %div2851321 = udiv i8 %div285.lhs.trunc, 28
  %narrow1361 = add nuw nsw i8 %div2851321, 8
  %add286 = zext i8 %narrow1361 to i32
  %chunk_ib.i1192 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %322 = ptrtoint ptr %chunk_ib.i1192 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %chunk_ib.i1192, align 4
  %kdata.i1193 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %323, i32 0, i32 1
  %324 = ptrtoint ptr %kdata.i1193 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %kdata.i1193, align 4
  %tobool.not.i1194 = icmp eq ptr %325, null
  %spec.select1349 = select i1 %tobool.not.i1194, ptr %4, ptr %325
  %retval.0.in.i1198 = getelementptr i32, ptr %spec.select1349, i32 %idx
  %326 = ptrtoint ptr %retval.0.in.i1198 to i32
  call void @__asan_load4_noabort(i32 %326)
  %retval.0.i1199 = load i32, ptr %retval.0.in.i1198, align 4
  %arrayidx289 = getelementptr %struct.evergreen_cs_track, ptr %1, i32 0, i32 9, i32 %add286
  %327 = ptrtoint ptr %arrayidx289 to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 %retval.0.i1199, ptr %arrayidx289, align 4
  %cs_flags290 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 21
  %328 = ptrtoint ptr %cs_flags290 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %cs_flags290, align 4
  %and291 = and i32 %329, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and291)
  %tobool292.not = icmp eq i32 %and291, 0
  br i1 %tobool292.not, label %if.then293, label %sw.bb283.if.end313_crit_edge

sw.bb283.if.end313_crit_edge:                     ; preds = %sw.bb283
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end313

if.then293:                                       ; preds = %sw.bb283
  %call294 = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call294)
  %tobool295.not = icmp eq i32 %call294, 0
  br i1 %tobool295.not, label %if.end301, label %do.end299

do.end299:                                        ; preds = %if.then293
  call void @__sanitizer_cov_trace_pc() #8
  %330 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %331, ptr noundef nonnull @.str.287, i32 noundef %reg) #10
  br label %cleanup

if.end301:                                        ; preds = %if.then293
  call void @__sanitizer_cov_trace_pc() #8
  %332 = ptrtoint ptr %reloc to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %reloc, align 4
  %tiling_flags302 = getelementptr inbounds %struct.radeon_bo_list, ptr %333, i32 0, i32 5
  %334 = ptrtoint ptr %tiling_flags302 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %tiling_flags302, align 8
  %and.i1201 = and i32 %335, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1201)
  %tobool.not.i1202 = icmp eq i32 %and.i1201, 0
  %and1.i1203 = shl i32 %335, 8
  %and1.i1203.op = and i32 %and1.i1203, 512
  %shl304 = select i1 %tobool.not.i1202, i32 %and1.i1203.op, i32 1024
  %arrayidx305 = getelementptr i32, ptr %4, i32 %idx
  %336 = ptrtoint ptr %arrayidx305 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %arrayidx305, align 4
  %or306 = or i32 %shl304, %337
  store i32 %or306, ptr %arrayidx305, align 4
  %338 = ptrtoint ptr %reloc to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %reloc, align 4
  %tiling_flags307 = getelementptr inbounds %struct.radeon_bo_list, ptr %339, i32 0, i32 5
  %340 = ptrtoint ptr %tiling_flags307 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %tiling_flags307, align 8
  %and.i1205 = and i32 %341, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1205)
  %tobool.not.i1206 = icmp eq i32 %and.i1205, 0
  %and1.i1207 = shl i32 %341, 8
  %and1.i1207.op = and i32 %and1.i1207, 512
  %shl309 = select i1 %tobool.not.i1206, i32 %and1.i1207.op, i32 1024
  %342 = ptrtoint ptr %arrayidx289 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %arrayidx289, align 4
  %or312 = or i32 %shl309, %343
  store i32 %or312, ptr %arrayidx289, align 4
  br label %if.end313

if.end313:                                        ; preds = %if.end301, %sw.bb283.if.end313_crit_edge
  %cb_dirty314 = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 39
  %344 = ptrtoint ptr %cb_dirty314 to i32
  call void @__asan_store1_noabort(i32 %344)
  store i8 1, ptr %cb_dirty314, align 1
  br label %cleanup

sw.bb315:                                         ; preds = %entry.sw.bb315_crit_edge, %entry.sw.bb315_crit_edge1419, %entry.sw.bb315_crit_edge1420, %entry.sw.bb315_crit_edge1421, %entry.sw.bb315_crit_edge1422, %entry.sw.bb315_crit_edge1423, %entry.sw.bb315_crit_edge1424, %entry.sw.bb315_crit_edge1425
  %345 = trunc i32 %reg to i16
  %div317.lhs.trunc = add nsw i16 %345, 29596
  %div3171322 = udiv i16 %div317.lhs.trunc, 60
  %div317.zext = zext i16 %div3171322 to i32
  %chunk_ib.i1209 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %346 = ptrtoint ptr %chunk_ib.i1209 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %chunk_ib.i1209, align 4
  %kdata.i1210 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %347, i32 0, i32 1
  %348 = ptrtoint ptr %kdata.i1210 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %kdata.i1210, align 4
  %tobool.not.i1211 = icmp eq ptr %349, null
  %spec.select1350 = select i1 %tobool.not.i1211, ptr %4, ptr %349
  %retval.0.in.i1215 = getelementptr i32, ptr %spec.select1350, i32 %idx
  %350 = ptrtoint ptr %retval.0.in.i1215 to i32
  call void @__asan_load4_noabort(i32 %350)
  %retval.0.i1216 = load i32, ptr %retval.0.in.i1215, align 4
  %arrayidx319 = getelementptr %struct.evergreen_cs_track, ptr %1, i32 0, i32 11, i32 %div317.zext
  %351 = ptrtoint ptr %arrayidx319 to i32
  call void @__asan_store4_noabort(i32 %351)
  store i32 %retval.0.i1216, ptr %arrayidx319, align 4
  %cb_dirty320 = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 39
  %352 = ptrtoint ptr %cb_dirty320 to i32
  call void @__asan_store1_noabort(i32 %352)
  store i8 1, ptr %cb_dirty320, align 1
  br label %cleanup

sw.bb321:                                         ; preds = %entry.sw.bb321_crit_edge, %entry.sw.bb321_crit_edge1426, %entry.sw.bb321_crit_edge1427, %entry.sw.bb321_crit_edge1428
  %353 = trunc i32 %reg to i8
  %div323.lhs.trunc = add i8 %353, -68
  %div3231323 = udiv i8 %div323.lhs.trunc, 28
  %narrow1360 = add nuw nsw i8 %div3231323, 8
  %add324 = zext i8 %narrow1360 to i32
  %chunk_ib.i1218 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %354 = ptrtoint ptr %chunk_ib.i1218 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %chunk_ib.i1218, align 4
  %kdata.i1219 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %355, i32 0, i32 1
  %356 = ptrtoint ptr %kdata.i1219 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %kdata.i1219, align 4
  %tobool.not.i1220 = icmp eq ptr %357, null
  %spec.select1351 = select i1 %tobool.not.i1220, ptr %4, ptr %357
  %retval.0.in.i1224 = getelementptr i32, ptr %spec.select1351, i32 %idx
  %358 = ptrtoint ptr %retval.0.in.i1224 to i32
  call void @__asan_load4_noabort(i32 %358)
  %retval.0.i1225 = load i32, ptr %retval.0.in.i1224, align 4
  %arrayidx327 = getelementptr %struct.evergreen_cs_track, ptr %1, i32 0, i32 11, i32 %add324
  %359 = ptrtoint ptr %arrayidx327 to i32
  call void @__asan_store4_noabort(i32 %359)
  store i32 %retval.0.i1225, ptr %arrayidx327, align 4
  %cb_dirty328 = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 39
  %360 = ptrtoint ptr %cb_dirty328 to i32
  call void @__asan_store1_noabort(i32 %360)
  store i8 1, ptr %cb_dirty328, align 1
  br label %cleanup

sw.bb329:                                         ; preds = %entry.sw.bb329_crit_edge, %entry.sw.bb329_crit_edge1429, %entry.sw.bb329_crit_edge1430, %entry.sw.bb329_crit_edge1431, %entry.sw.bb329_crit_edge1432, %entry.sw.bb329_crit_edge1433, %entry.sw.bb329_crit_edge1434, %entry.sw.bb329_crit_edge1435
  %361 = trunc i32 %reg to i16
  %div331.lhs.trunc = add nsw i16 %361, 29592
  %div3311324 = udiv i16 %div331.lhs.trunc, 60
  %div331.zext = zext i16 %div3311324 to i32
  %chunk_ib.i1227 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %362 = ptrtoint ptr %chunk_ib.i1227 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %chunk_ib.i1227, align 4
  %kdata.i1228 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %363, i32 0, i32 1
  %364 = ptrtoint ptr %kdata.i1228 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %kdata.i1228, align 4
  %tobool.not.i1229 = icmp eq ptr %365, null
  %spec.select1352 = select i1 %tobool.not.i1229, ptr %4, ptr %365
  %retval.0.in.i1233 = getelementptr i32, ptr %spec.select1352, i32 %idx
  %366 = ptrtoint ptr %retval.0.in.i1233 to i32
  call void @__asan_load4_noabort(i32 %366)
  %retval.0.i1234 = load i32, ptr %retval.0.in.i1233, align 4
  %arrayidx333 = getelementptr %struct.evergreen_cs_track, ptr %1, i32 0, i32 12, i32 %div331.zext
  %367 = ptrtoint ptr %arrayidx333 to i32
  call void @__asan_store4_noabort(i32 %367)
  store i32 %retval.0.i1234, ptr %arrayidx333, align 4
  %arrayidx334 = getelementptr %struct.evergreen_cs_track, ptr %1, i32 0, i32 13, i32 %div331.zext
  %368 = ptrtoint ptr %arrayidx334 to i32
  call void @__asan_store4_noabort(i32 %368)
  store i32 %idx, ptr %arrayidx334, align 4
  %cb_dirty335 = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 39
  %369 = ptrtoint ptr %cb_dirty335 to i32
  call void @__asan_store1_noabort(i32 %369)
  store i8 1, ptr %cb_dirty335, align 1
  br label %cleanup

sw.bb336:                                         ; preds = %entry.sw.bb336_crit_edge, %entry.sw.bb336_crit_edge1436, %entry.sw.bb336_crit_edge1437, %entry.sw.bb336_crit_edge1438
  %370 = trunc i32 %reg to i8
  %div338.lhs.trunc = add i8 %370, -72
  %div3381325 = udiv i8 %div338.lhs.trunc, 28
  %narrow1359 = add nuw nsw i8 %div3381325, 8
  %add339 = zext i8 %narrow1359 to i32
  %chunk_ib.i1236 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %371 = ptrtoint ptr %chunk_ib.i1236 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %chunk_ib.i1236, align 4
  %kdata.i1237 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %372, i32 0, i32 1
  %373 = ptrtoint ptr %kdata.i1237 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %kdata.i1237, align 4
  %tobool.not.i1238 = icmp eq ptr %374, null
  %spec.select1353 = select i1 %tobool.not.i1238, ptr %4, ptr %374
  %retval.0.in.i1242 = getelementptr i32, ptr %spec.select1353, i32 %idx
  %375 = ptrtoint ptr %retval.0.in.i1242 to i32
  call void @__asan_load4_noabort(i32 %375)
  %retval.0.i1243 = load i32, ptr %retval.0.in.i1242, align 4
  %arrayidx342 = getelementptr %struct.evergreen_cs_track, ptr %1, i32 0, i32 12, i32 %add339
  %376 = ptrtoint ptr %arrayidx342 to i32
  call void @__asan_store4_noabort(i32 %376)
  store i32 %retval.0.i1243, ptr %arrayidx342, align 4
  %arrayidx344 = getelementptr %struct.evergreen_cs_track, ptr %1, i32 0, i32 13, i32 %add339
  %377 = ptrtoint ptr %arrayidx344 to i32
  call void @__asan_store4_noabort(i32 %377)
  store i32 %idx, ptr %arrayidx344, align 4
  %cb_dirty345 = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 39
  %378 = ptrtoint ptr %cb_dirty345 to i32
  call void @__asan_store1_noabort(i32 %378)
  store i8 1, ptr %cb_dirty345, align 1
  br label %cleanup

sw.bb346:                                         ; preds = %entry.sw.bb346_crit_edge, %entry.sw.bb346_crit_edge1439, %entry.sw.bb346_crit_edge1440, %entry.sw.bb346_crit_edge1441, %entry.sw.bb346_crit_edge1442, %entry.sw.bb346_crit_edge1443, %entry.sw.bb346_crit_edge1444, %entry.sw.bb346_crit_edge1445
  %call347 = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call347)
  %tobool348.not = icmp eq i32 %call347, 0
  br i1 %tobool348.not, label %if.end354, label %do.end352

do.end352:                                        ; preds = %sw.bb346
  call void @__sanitizer_cov_trace_pc() #8
  %379 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %380, ptr noundef nonnull @.str.287, i32 noundef %reg) #10
  br label %cleanup

if.end354:                                        ; preds = %sw.bb346
  %cs_flags355 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 21
  %381 = ptrtoint ptr %cs_flags355 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %cs_flags355, align 4
  %and356 = and i32 %382, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and356)
  %tobool357.not = icmp eq i32 %and356, 0
  br i1 %tobool357.not, label %if.then358, label %if.end354.if.end388_crit_edge

if.end354.if.end388_crit_edge:                    ; preds = %if.end354
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end388

if.then358:                                       ; preds = %if.end354
  %383 = ptrtoint ptr %reloc to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %reloc, align 4
  %tiling_flags359 = getelementptr inbounds %struct.radeon_bo_list, ptr %384, i32 0, i32 5
  %385 = ptrtoint ptr %tiling_flags359 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %tiling_flags359, align 8
  %and360 = and i32 %386, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and360)
  %tobool361.not = icmp eq i32 %and360, 0
  br i1 %tobool361.not, label %if.then358.if.end388_crit_edge, label %if.then362

if.then358.if.end388_crit_edge:                   ; preds = %if.then358
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end388

if.then362:                                       ; preds = %if.then358
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bankw363) #6
  %387 = ptrtoint ptr %bankw363 to i32
  call void @__asan_store4_noabort(i32 %387)
  store i32 -1, ptr %bankw363, align 4, !annotation !629
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bankh364) #6
  %388 = ptrtoint ptr %bankh364 to i32
  call void @__asan_store4_noabort(i32 %388)
  store i32 -1, ptr %bankh364, align 4, !annotation !629
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mtaspect365) #6
  %389 = ptrtoint ptr %mtaspect365 to i32
  call void @__asan_store4_noabort(i32 %389)
  store i32 -1, ptr %mtaspect365, align 4, !annotation !629
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tile_split366) #6
  %390 = ptrtoint ptr %tile_split366 to i32
  call void @__asan_store4_noabort(i32 %390)
  store i32 -1, ptr %tile_split366, align 4, !annotation !629
  call void @evergreen_tiling_fields(i32 noundef %386, ptr noundef nonnull %bankw363, ptr noundef nonnull %bankh364, ptr noundef nonnull %mtaspect365, ptr noundef nonnull %tile_split366) #6
  %nbanks368 = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 1
  %391 = ptrtoint ptr %nbanks368 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %nbanks368, align 4
  %393 = add i32 %392, -2
  %394 = call i32 @llvm.fshl.i32(i32 %393, i32 %393, i32 31) #6
  %395 = zext i32 %394 to i64
  call void @__sanitizer_cov_trace_switch(i64 %395, ptr @__sancov_gen_cov_switch_values.397)
  switch i32 %394, label %sw.default.i1246 [
    i32 0, label %if.then362.evergreen_cs_get_num_banks.exit1249_crit_edge
    i32 1, label %sw.bb1.i1245
    i32 7, label %sw.bb3.i1247
  ]

if.then362.evergreen_cs_get_num_banks.exit1249_crit_edge: ; preds = %if.then362
  call void @__sanitizer_cov_trace_pc() #8
  br label %evergreen_cs_get_num_banks.exit1249

sw.bb1.i1245:                                     ; preds = %if.then362
  call void @__sanitizer_cov_trace_pc() #8
  br label %evergreen_cs_get_num_banks.exit1249

sw.default.i1246:                                 ; preds = %if.then362
  call void @__sanitizer_cov_trace_pc() #8
  br label %evergreen_cs_get_num_banks.exit1249

sw.bb3.i1247:                                     ; preds = %if.then362
  call void @__sanitizer_cov_trace_pc() #8
  br label %evergreen_cs_get_num_banks.exit1249

evergreen_cs_get_num_banks.exit1249:              ; preds = %sw.bb3.i1247, %sw.default.i1246, %sw.bb1.i1245, %if.then362.evergreen_cs_get_num_banks.exit1249_crit_edge
  %retval.0.i1248 = phi i32 [ 2048, %sw.default.i1246 ], [ 3072, %sw.bb3.i1247 ], [ 1024, %sw.bb1.i1245 ], [ %394, %if.then362.evergreen_cs_get_num_banks.exit1249_crit_edge ]
  %arrayidx372 = getelementptr i32, ptr %4, i32 %idx
  %396 = ptrtoint ptr %arrayidx372 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %arrayidx372, align 4
  %or373 = or i32 %397, %retval.0.i1248
  %398 = ptrtoint ptr %tile_split366 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %tile_split366, align 4
  %and374 = shl i32 %399, 5
  %shl375 = and i32 %and374, 224
  %400 = ptrtoint ptr %bankw363 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %bankw363, align 4
  %and376 = shl i32 %401, 13
  %shl377 = and i32 %and376, 24576
  %402 = ptrtoint ptr %bankh364 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %bankh364, align 4
  %and379 = shl i32 %403, 16
  %shl380 = and i32 %and379, 196608
  %404 = ptrtoint ptr %mtaspect365 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %mtaspect365, align 4
  %and382 = shl i32 %405, 19
  %shl383 = and i32 %and382, 1572864
  %or378 = or i32 %shl375, %or373
  %or381 = or i32 %or378, %shl377
  %or384 = or i32 %or381, %shl380
  %or386 = or i32 %or384, %shl383
  store i32 %or386, ptr %arrayidx372, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tile_split366) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mtaspect365) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bankh364) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bankw363) #6
  br label %if.end388

if.end388:                                        ; preds = %evergreen_cs_get_num_banks.exit1249, %if.then358.if.end388_crit_edge, %if.end354.if.end388_crit_edge
  %406 = trunc i32 %reg to i16
  %div390.lhs.trunc = add nsw i16 %406, 29580
  %div3901326 = udiv i16 %div390.lhs.trunc, 60
  %div390.zext = zext i16 %div3901326 to i32
  %arrayidx391 = getelementptr i32, ptr %4, i32 %idx
  %407 = ptrtoint ptr %arrayidx391 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load i32, ptr %arrayidx391, align 4
  %arrayidx392 = getelementptr %struct.evergreen_cs_track, ptr %1, i32 0, i32 14, i32 %div390.zext
  %409 = ptrtoint ptr %arrayidx392 to i32
  call void @__asan_store4_noabort(i32 %409)
  store i32 %408, ptr %arrayidx392, align 4
  %cb_dirty393 = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 39
  %410 = ptrtoint ptr %cb_dirty393 to i32
  call void @__asan_store1_noabort(i32 %410)
  store i8 1, ptr %cb_dirty393, align 1
  br label %cleanup

sw.bb394:                                         ; preds = %entry.sw.bb394_crit_edge, %entry.sw.bb394_crit_edge1446, %entry.sw.bb394_crit_edge1447, %entry.sw.bb394_crit_edge1448
  %call395 = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call395)
  %tobool396.not = icmp eq i32 %call395, 0
  br i1 %tobool396.not, label %if.end402, label %do.end400

do.end400:                                        ; preds = %sw.bb394
  call void @__sanitizer_cov_trace_pc() #8
  %411 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %412, ptr noundef nonnull @.str.287, i32 noundef %reg) #10
  br label %cleanup

if.end402:                                        ; preds = %sw.bb394
  %cs_flags403 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 21
  %413 = ptrtoint ptr %cs_flags403 to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load i32, ptr %cs_flags403, align 4
  %and404 = and i32 %414, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and404)
  %tobool405.not = icmp eq i32 %and404, 0
  br i1 %tobool405.not, label %if.then406, label %if.end402.if.end436_crit_edge

if.end402.if.end436_crit_edge:                    ; preds = %if.end402
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end436

if.then406:                                       ; preds = %if.end402
  %415 = ptrtoint ptr %reloc to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %reloc, align 4
  %tiling_flags407 = getelementptr inbounds %struct.radeon_bo_list, ptr %416, i32 0, i32 5
  %417 = ptrtoint ptr %tiling_flags407 to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %tiling_flags407, align 8
  %and408 = and i32 %418, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and408)
  %tobool409.not = icmp eq i32 %and408, 0
  br i1 %tobool409.not, label %if.then406.if.end436_crit_edge, label %if.then410

if.then406.if.end436_crit_edge:                   ; preds = %if.then406
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end436

if.then410:                                       ; preds = %if.then406
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bankw411) #6
  %419 = ptrtoint ptr %bankw411 to i32
  call void @__asan_store4_noabort(i32 %419)
  store i32 -1, ptr %bankw411, align 4, !annotation !629
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bankh412) #6
  %420 = ptrtoint ptr %bankh412 to i32
  call void @__asan_store4_noabort(i32 %420)
  store i32 -1, ptr %bankh412, align 4, !annotation !629
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mtaspect413) #6
  %421 = ptrtoint ptr %mtaspect413 to i32
  call void @__asan_store4_noabort(i32 %421)
  store i32 -1, ptr %mtaspect413, align 4, !annotation !629
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tile_split414) #6
  %422 = ptrtoint ptr %tile_split414 to i32
  call void @__asan_store4_noabort(i32 %422)
  store i32 -1, ptr %tile_split414, align 4, !annotation !629
  call void @evergreen_tiling_fields(i32 noundef %418, ptr noundef nonnull %bankw411, ptr noundef nonnull %bankh412, ptr noundef nonnull %mtaspect413, ptr noundef nonnull %tile_split414) #6
  %nbanks416 = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 1
  %423 = ptrtoint ptr %nbanks416 to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load i32, ptr %nbanks416, align 4
  %425 = add i32 %424, -2
  %426 = call i32 @llvm.fshl.i32(i32 %425, i32 %425, i32 31) #6
  %427 = zext i32 %426 to i64
  call void @__sanitizer_cov_trace_switch(i64 %427, ptr @__sancov_gen_cov_switch_values.398)
  switch i32 %426, label %sw.default.i1251 [
    i32 0, label %if.then410.evergreen_cs_get_num_banks.exit1254_crit_edge
    i32 1, label %sw.bb1.i1250
    i32 7, label %sw.bb3.i1252
  ]

if.then410.evergreen_cs_get_num_banks.exit1254_crit_edge: ; preds = %if.then410
  call void @__sanitizer_cov_trace_pc() #8
  br label %evergreen_cs_get_num_banks.exit1254

sw.bb1.i1250:                                     ; preds = %if.then410
  call void @__sanitizer_cov_trace_pc() #8
  br label %evergreen_cs_get_num_banks.exit1254

sw.default.i1251:                                 ; preds = %if.then410
  call void @__sanitizer_cov_trace_pc() #8
  br label %evergreen_cs_get_num_banks.exit1254

sw.bb3.i1252:                                     ; preds = %if.then410
  call void @__sanitizer_cov_trace_pc() #8
  br label %evergreen_cs_get_num_banks.exit1254

evergreen_cs_get_num_banks.exit1254:              ; preds = %sw.bb3.i1252, %sw.default.i1251, %sw.bb1.i1250, %if.then410.evergreen_cs_get_num_banks.exit1254_crit_edge
  %retval.0.i1253 = phi i32 [ 2048, %sw.default.i1251 ], [ 3072, %sw.bb3.i1252 ], [ 1024, %sw.bb1.i1250 ], [ %426, %if.then410.evergreen_cs_get_num_banks.exit1254_crit_edge ]
  %arrayidx420 = getelementptr i32, ptr %4, i32 %idx
  %428 = ptrtoint ptr %arrayidx420 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load i32, ptr %arrayidx420, align 4
  %or421 = or i32 %429, %retval.0.i1253
  %430 = ptrtoint ptr %tile_split414 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %tile_split414, align 4
  %and422 = shl i32 %431, 5
  %shl423 = and i32 %and422, 224
  %432 = ptrtoint ptr %bankw411 to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %bankw411, align 4
  %and424 = shl i32 %433, 13
  %shl425 = and i32 %and424, 24576
  %434 = ptrtoint ptr %bankh412 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %bankh412, align 4
  %and427 = shl i32 %435, 16
  %shl428 = and i32 %and427, 196608
  %436 = ptrtoint ptr %mtaspect413 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %mtaspect413, align 4
  %and430 = shl i32 %437, 19
  %shl431 = and i32 %and430, 1572864
  %or426 = or i32 %shl423, %or421
  %or429 = or i32 %or426, %shl425
  %or432 = or i32 %or429, %shl428
  %or434 = or i32 %or432, %shl431
  store i32 %or434, ptr %arrayidx420, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tile_split414) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mtaspect413) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bankh412) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bankw411) #6
  br label %if.end436

if.end436:                                        ; preds = %evergreen_cs_get_num_banks.exit1254, %if.then406.if.end436_crit_edge, %if.end402.if.end436_crit_edge
  %438 = trunc i32 %reg to i8
  %div438.lhs.trunc = add i8 %438, -84
  %div4381327 = udiv i8 %div438.lhs.trunc, 28
  %narrow1358 = add nuw nsw i8 %div4381327, 8
  %add439 = zext i8 %narrow1358 to i32
  %arrayidx440 = getelementptr i32, ptr %4, i32 %idx
  %439 = ptrtoint ptr %arrayidx440 to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load i32, ptr %arrayidx440, align 4
  %arrayidx442 = getelementptr %struct.evergreen_cs_track, ptr %1, i32 0, i32 14, i32 %add439
  %441 = ptrtoint ptr %arrayidx442 to i32
  call void @__asan_store4_noabort(i32 %441)
  store i32 %440, ptr %arrayidx442, align 4
  %cb_dirty443 = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 39
  %442 = ptrtoint ptr %cb_dirty443 to i32
  call void @__asan_store1_noabort(i32 %442)
  store i8 1, ptr %cb_dirty443, align 1
  br label %cleanup

sw.bb444:                                         ; preds = %entry.sw.bb444_crit_edge, %entry.sw.bb444_crit_edge1449, %entry.sw.bb444_crit_edge1450, %entry.sw.bb444_crit_edge1451, %entry.sw.bb444_crit_edge1452, %entry.sw.bb444_crit_edge1453, %entry.sw.bb444_crit_edge1454, %entry.sw.bb444_crit_edge1455
  %call447 = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call447)
  %tobool448.not = icmp eq i32 %call447, 0
  br i1 %tobool448.not, label %if.end454, label %do.end452

do.end452:                                        ; preds = %sw.bb444
  call void @__sanitizer_cov_trace_pc() #8
  %443 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %444, ptr noundef nonnull @.str.287, i32 noundef %reg) #10
  br label %cleanup

if.end454:                                        ; preds = %sw.bb444
  call void @__sanitizer_cov_trace_pc() #8
  %445 = trunc i32 %reg to i16
  %div446.lhs.trunc = add nsw i16 %445, 29564
  %div4461328 = udiv i16 %div446.lhs.trunc, 60
  %div446.zext = zext i16 %div4461328 to i32
  %446 = ptrtoint ptr %reloc to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %reloc, align 4
  %gpu_offset455 = getelementptr inbounds %struct.radeon_bo_list, ptr %447, i32 0, i32 2
  %448 = ptrtoint ptr %gpu_offset455 to i32
  call void @__asan_load8_noabort(i32 %448)
  %449 = load i64, ptr %gpu_offset455, align 8
  %shr456 = lshr i64 %449, 8
  %conv458 = trunc i64 %shr456 to i32
  %arrayidx459 = getelementptr i32, ptr %4, i32 %idx
  %450 = ptrtoint ptr %arrayidx459 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %arrayidx459, align 4
  %add460 = add i32 %451, %conv458
  store i32 %add460, ptr %arrayidx459, align 4
  %452 = load ptr, ptr %reloc, align 4
  %453 = ptrtoint ptr %452 to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %452, align 8
  %arrayidx462 = getelementptr %struct.evergreen_cs_track, ptr %1, i32 0, i32 7, i32 %div446.zext
  %455 = ptrtoint ptr %arrayidx462 to i32
  call void @__asan_store4_noabort(i32 %455)
  store ptr %454, ptr %arrayidx462, align 4
  br label %cleanup

sw.bb463:                                         ; preds = %entry.sw.bb463_crit_edge, %entry.sw.bb463_crit_edge1456, %entry.sw.bb463_crit_edge1457, %entry.sw.bb463_crit_edge1458, %entry.sw.bb463_crit_edge1459, %entry.sw.bb463_crit_edge1460, %entry.sw.bb463_crit_edge1461, %entry.sw.bb463_crit_edge1462
  %call466 = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call466)
  %tobool467.not = icmp eq i32 %call466, 0
  br i1 %tobool467.not, label %if.end473, label %do.end471

do.end471:                                        ; preds = %sw.bb463
  call void @__sanitizer_cov_trace_pc() #8
  %456 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %457, ptr noundef nonnull @.str.287, i32 noundef %reg) #10
  br label %cleanup

if.end473:                                        ; preds = %sw.bb463
  call void @__sanitizer_cov_trace_pc() #8
  %458 = trunc i32 %reg to i16
  %div465.lhs.trunc = add nsw i16 %458, 29572
  %div4651329 = udiv i16 %div465.lhs.trunc, 60
  %div465.zext = zext i16 %div4651329 to i32
  %459 = ptrtoint ptr %reloc to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %reloc, align 4
  %gpu_offset474 = getelementptr inbounds %struct.radeon_bo_list, ptr %460, i32 0, i32 2
  %461 = ptrtoint ptr %gpu_offset474 to i32
  call void @__asan_load8_noabort(i32 %461)
  %462 = load i64, ptr %gpu_offset474, align 8
  %shr475 = lshr i64 %462, 8
  %conv477 = trunc i64 %shr475 to i32
  %arrayidx478 = getelementptr i32, ptr %4, i32 %idx
  %463 = ptrtoint ptr %arrayidx478 to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load i32, ptr %arrayidx478, align 4
  %add479 = add i32 %464, %conv477
  store i32 %add479, ptr %arrayidx478, align 4
  %465 = load ptr, ptr %reloc, align 4
  %466 = ptrtoint ptr %465 to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %465, align 8
  %arrayidx481 = getelementptr %struct.evergreen_cs_track, ptr %1, i32 0, i32 8, i32 %div465.zext
  %468 = ptrtoint ptr %arrayidx481 to i32
  call void @__asan_store4_noabort(i32 %468)
  store ptr %467, ptr %arrayidx481, align 4
  br label %cleanup

sw.bb482:                                         ; preds = %entry.sw.bb482_crit_edge, %entry.sw.bb482_crit_edge1463, %entry.sw.bb482_crit_edge1464, %entry.sw.bb482_crit_edge1465, %entry.sw.bb482_crit_edge1466, %entry.sw.bb482_crit_edge1467, %entry.sw.bb482_crit_edge1468, %entry.sw.bb482_crit_edge1469
  %469 = trunc i32 %reg to i16
  %div484.lhs.trunc = add nsw i16 %469, 29560
  %div4841330 = udiv i16 %div484.lhs.trunc, 60
  %div484.zext = zext i16 %div4841330 to i32
  %chunk_ib.i1255 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %470 = ptrtoint ptr %chunk_ib.i1255 to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %chunk_ib.i1255, align 4
  %kdata.i1256 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %471, i32 0, i32 1
  %472 = ptrtoint ptr %kdata.i1256 to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %kdata.i1256, align 4
  %tobool.not.i1257 = icmp eq ptr %473, null
  %spec.select1354 = select i1 %tobool.not.i1257, ptr %4, ptr %473
  %retval.0.in.i1261 = getelementptr i32, ptr %spec.select1354, i32 %idx
  %474 = ptrtoint ptr %retval.0.in.i1261 to i32
  call void @__asan_load4_noabort(i32 %474)
  %retval.0.i1262 = load i32, ptr %retval.0.in.i1261, align 4
  %arrayidx486 = getelementptr %struct.evergreen_cs_track, ptr %1, i32 0, i32 16, i32 %div484.zext
  %475 = ptrtoint ptr %arrayidx486 to i32
  call void @__asan_store4_noabort(i32 %475)
  store i32 %retval.0.i1262, ptr %arrayidx486, align 4
  br label %cleanup

sw.bb487:                                         ; preds = %entry.sw.bb487_crit_edge, %entry.sw.bb487_crit_edge1470, %entry.sw.bb487_crit_edge1471, %entry.sw.bb487_crit_edge1472, %entry.sw.bb487_crit_edge1473, %entry.sw.bb487_crit_edge1474, %entry.sw.bb487_crit_edge1475, %entry.sw.bb487_crit_edge1476
  %476 = trunc i32 %reg to i16
  %div489.lhs.trunc = add nsw i16 %476, 29568
  %div4891331 = udiv i16 %div489.lhs.trunc, 60
  %div489.zext = zext i16 %div4891331 to i32
  %chunk_ib.i1264 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %477 = ptrtoint ptr %chunk_ib.i1264 to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %chunk_ib.i1264, align 4
  %kdata.i1265 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %478, i32 0, i32 1
  %479 = ptrtoint ptr %kdata.i1265 to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %kdata.i1265, align 4
  %tobool.not.i1266 = icmp eq ptr %480, null
  %spec.select1355 = select i1 %tobool.not.i1266, ptr %4, ptr %480
  %retval.0.in.i1270 = getelementptr i32, ptr %spec.select1355, i32 %idx
  %481 = ptrtoint ptr %retval.0.in.i1270 to i32
  call void @__asan_load4_noabort(i32 %481)
  %retval.0.i1271 = load i32, ptr %retval.0.in.i1270, align 4
  %arrayidx491 = getelementptr %struct.evergreen_cs_track, ptr %1, i32 0, i32 15, i32 %div489.zext
  %482 = ptrtoint ptr %arrayidx491 to i32
  call void @__asan_store4_noabort(i32 %482)
  store i32 %retval.0.i1271, ptr %arrayidx491, align 4
  br label %cleanup

sw.bb492:                                         ; preds = %entry.sw.bb492_crit_edge, %entry.sw.bb492_crit_edge1477, %entry.sw.bb492_crit_edge1478, %entry.sw.bb492_crit_edge1479, %entry.sw.bb492_crit_edge1480, %entry.sw.bb492_crit_edge1481, %entry.sw.bb492_crit_edge1482, %entry.sw.bb492_crit_edge1483
  %call493 = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call493)
  %tobool494.not = icmp eq i32 %call493, 0
  br i1 %tobool494.not, label %if.end500, label %do.end498

do.end498:                                        ; preds = %sw.bb492
  call void @__sanitizer_cov_trace_pc() #8
  %483 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %484, ptr noundef nonnull @.str.287, i32 noundef %reg) #10
  br label %cleanup

if.end500:                                        ; preds = %sw.bb492
  %485 = trunc i32 %reg to i16
  %div502.lhs.trunc = add nsw i16 %485, 29600
  %div5021332 = udiv i16 %div502.lhs.trunc, 60
  %div502.zext = zext i16 %div5021332 to i32
  %chunk_ib.i1273 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %486 = ptrtoint ptr %chunk_ib.i1273 to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %chunk_ib.i1273, align 4
  %kdata.i1274 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %487, i32 0, i32 1
  %488 = ptrtoint ptr %kdata.i1274 to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %kdata.i1274, align 4
  %tobool.not.i1275 = icmp eq ptr %489, null
  br i1 %tobool.not.i1275, label %if.end.i1277, label %if.end500.radeon_get_ib_value.exit1281_crit_edge

if.end500.radeon_get_ib_value.exit1281_crit_edge: ; preds = %if.end500
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_get_ib_value.exit1281

if.end.i1277:                                     ; preds = %if.end500
  call void @__sanitizer_cov_trace_pc() #8
  %490 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %ptr, align 8
  br label %radeon_get_ib_value.exit1281

radeon_get_ib_value.exit1281:                     ; preds = %if.end.i1277, %if.end500.radeon_get_ib_value.exit1281_crit_edge
  %.pn.i1278 = phi ptr [ %491, %if.end.i1277 ], [ %489, %if.end500.radeon_get_ib_value.exit1281_crit_edge ]
  %retval.0.in.i1279 = getelementptr i32, ptr %.pn.i1278, i32 %idx
  %492 = ptrtoint ptr %retval.0.in.i1279 to i32
  call void @__asan_load4_noabort(i32 %492)
  %retval.0.i1280 = load i32, ptr %retval.0.in.i1279, align 4
  %arrayidx504 = getelementptr %struct.evergreen_cs_track, ptr %1, i32 0, i32 6, i32 %div502.zext
  %493 = ptrtoint ptr %arrayidx504 to i32
  call void @__asan_store4_noabort(i32 %493)
  store i32 %retval.0.i1280, ptr %arrayidx504, align 4
  %494 = ptrtoint ptr %reloc to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %reloc, align 4
  %gpu_offset505 = getelementptr inbounds %struct.radeon_bo_list, ptr %495, i32 0, i32 2
  %496 = ptrtoint ptr %gpu_offset505 to i32
  call void @__asan_load8_noabort(i32 %496)
  %497 = load i64, ptr %gpu_offset505, align 8
  %shr506 = lshr i64 %497, 8
  %conv508 = trunc i64 %shr506 to i32
  %arrayidx509 = getelementptr i32, ptr %4, i32 %idx
  %498 = ptrtoint ptr %arrayidx509 to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load i32, ptr %arrayidx509, align 4
  %add510 = add i32 %499, %conv508
  store i32 %add510, ptr %arrayidx509, align 4
  %500 = load ptr, ptr %reloc, align 4
  %501 = ptrtoint ptr %500 to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %500, align 8
  %arrayidx512 = getelementptr %struct.evergreen_cs_track, ptr %1, i32 0, i32 5, i32 %div502.zext
  %503 = ptrtoint ptr %arrayidx512 to i32
  call void @__asan_store4_noabort(i32 %503)
  store ptr %502, ptr %arrayidx512, align 4
  %cb_dirty513 = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 39
  %504 = ptrtoint ptr %cb_dirty513 to i32
  call void @__asan_store1_noabort(i32 %504)
  store i8 1, ptr %cb_dirty513, align 1
  br label %cleanup

sw.bb514:                                         ; preds = %entry.sw.bb514_crit_edge, %entry.sw.bb514_crit_edge1484, %entry.sw.bb514_crit_edge1485, %entry.sw.bb514_crit_edge1486
  %call515 = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call515)
  %tobool516.not = icmp eq i32 %call515, 0
  br i1 %tobool516.not, label %if.end522, label %do.end520

do.end520:                                        ; preds = %sw.bb514
  call void @__sanitizer_cov_trace_pc() #8
  %505 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %506, ptr noundef nonnull @.str.287, i32 noundef %reg) #10
  br label %cleanup

if.end522:                                        ; preds = %sw.bb514
  %507 = trunc i32 %reg to i8
  %div524.lhs.trunc = add i8 %507, -64
  %div5241333 = udiv i8 %div524.lhs.trunc, 28
  %narrow = add nuw nsw i8 %div5241333, 8
  %add525 = zext i8 %narrow to i32
  %chunk_ib.i1282 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %508 = ptrtoint ptr %chunk_ib.i1282 to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %chunk_ib.i1282, align 4
  %kdata.i1283 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %509, i32 0, i32 1
  %510 = ptrtoint ptr %kdata.i1283 to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %kdata.i1283, align 4
  %tobool.not.i1284 = icmp eq ptr %511, null
  br i1 %tobool.not.i1284, label %if.end.i1286, label %if.end522.radeon_get_ib_value.exit1290_crit_edge

if.end522.radeon_get_ib_value.exit1290_crit_edge: ; preds = %if.end522
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_get_ib_value.exit1290

if.end.i1286:                                     ; preds = %if.end522
  call void @__sanitizer_cov_trace_pc() #8
  %512 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %ptr, align 8
  br label %radeon_get_ib_value.exit1290

radeon_get_ib_value.exit1290:                     ; preds = %if.end.i1286, %if.end522.radeon_get_ib_value.exit1290_crit_edge
  %.pn.i1287 = phi ptr [ %513, %if.end.i1286 ], [ %511, %if.end522.radeon_get_ib_value.exit1290_crit_edge ]
  %retval.0.in.i1288 = getelementptr i32, ptr %.pn.i1287, i32 %idx
  %514 = ptrtoint ptr %retval.0.in.i1288 to i32
  call void @__asan_load4_noabort(i32 %514)
  %retval.0.i1289 = load i32, ptr %retval.0.in.i1288, align 4
  %arrayidx528 = getelementptr %struct.evergreen_cs_track, ptr %1, i32 0, i32 6, i32 %add525
  %515 = ptrtoint ptr %arrayidx528 to i32
  call void @__asan_store4_noabort(i32 %515)
  store i32 %retval.0.i1289, ptr %arrayidx528, align 4
  %516 = ptrtoint ptr %reloc to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %reloc, align 4
  %gpu_offset529 = getelementptr inbounds %struct.radeon_bo_list, ptr %517, i32 0, i32 2
  %518 = ptrtoint ptr %gpu_offset529 to i32
  call void @__asan_load8_noabort(i32 %518)
  %519 = load i64, ptr %gpu_offset529, align 8
  %shr530 = lshr i64 %519, 8
  %conv532 = trunc i64 %shr530 to i32
  %arrayidx533 = getelementptr i32, ptr %4, i32 %idx
  %520 = ptrtoint ptr %arrayidx533 to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load i32, ptr %arrayidx533, align 4
  %add534 = add i32 %521, %conv532
  store i32 %add534, ptr %arrayidx533, align 4
  %522 = load ptr, ptr %reloc, align 4
  %523 = ptrtoint ptr %522 to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load ptr, ptr %522, align 8
  %arrayidx537 = getelementptr %struct.evergreen_cs_track, ptr %1, i32 0, i32 5, i32 %add525
  %525 = ptrtoint ptr %arrayidx537 to i32
  call void @__asan_store4_noabort(i32 %525)
  store ptr %524, ptr %arrayidx537, align 4
  %cb_dirty538 = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 39
  %526 = ptrtoint ptr %cb_dirty538 to i32
  call void @__asan_store1_noabort(i32 %526)
  store i8 1, ptr %cb_dirty538, align 1
  br label %cleanup

sw.bb539:                                         ; preds = %entry
  %call540 = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call540)
  %tobool541.not = icmp eq i32 %call540, 0
  br i1 %tobool541.not, label %if.end547, label %do.end545

do.end545:                                        ; preds = %sw.bb539
  call void @__sanitizer_cov_trace_pc() #8
  %527 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %528, ptr noundef nonnull @.str.287, i32 noundef 163860) #10
  br label %cleanup

if.end547:                                        ; preds = %sw.bb539
  %chunk_ib.i1291 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %529 = ptrtoint ptr %chunk_ib.i1291 to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load ptr, ptr %chunk_ib.i1291, align 4
  %kdata.i1292 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %530, i32 0, i32 1
  %531 = ptrtoint ptr %kdata.i1292 to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load ptr, ptr %kdata.i1292, align 4
  %tobool.not.i1293 = icmp eq ptr %532, null
  br i1 %tobool.not.i1293, label %if.end.i1295, label %if.end547.radeon_get_ib_value.exit1299_crit_edge

if.end547.radeon_get_ib_value.exit1299_crit_edge: ; preds = %if.end547
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_get_ib_value.exit1299

if.end.i1295:                                     ; preds = %if.end547
  call void @__sanitizer_cov_trace_pc() #8
  %533 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load ptr, ptr %ptr, align 8
  br label %radeon_get_ib_value.exit1299

radeon_get_ib_value.exit1299:                     ; preds = %if.end.i1295, %if.end547.radeon_get_ib_value.exit1299_crit_edge
  %.pn.i1296 = phi ptr [ %534, %if.end.i1295 ], [ %532, %if.end547.radeon_get_ib_value.exit1299_crit_edge ]
  %retval.0.in.i1297 = getelementptr i32, ptr %.pn.i1296, i32 %idx
  %535 = ptrtoint ptr %retval.0.in.i1297 to i32
  call void @__asan_load4_noabort(i32 %535)
  %retval.0.i1298 = load i32, ptr %retval.0.in.i1297, align 4
  %htile_offset = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 42
  %536 = ptrtoint ptr %htile_offset to i32
  call void @__asan_store4_noabort(i32 %536)
  store i32 %retval.0.i1298, ptr %htile_offset, align 4
  %537 = ptrtoint ptr %reloc to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load ptr, ptr %reloc, align 4
  %gpu_offset549 = getelementptr inbounds %struct.radeon_bo_list, ptr %538, i32 0, i32 2
  %539 = ptrtoint ptr %gpu_offset549 to i32
  call void @__asan_load8_noabort(i32 %539)
  %540 = load i64, ptr %gpu_offset549, align 8
  %shr550 = lshr i64 %540, 8
  %conv552 = trunc i64 %shr550 to i32
  %arrayidx553 = getelementptr i32, ptr %4, i32 %idx
  %541 = ptrtoint ptr %arrayidx553 to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load i32, ptr %arrayidx553, align 4
  %add554 = add i32 %542, %conv552
  store i32 %add554, ptr %arrayidx553, align 4
  %543 = load ptr, ptr %reloc, align 4
  %544 = ptrtoint ptr %543 to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %543, align 8
  %htile_bo = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 44
  %546 = ptrtoint ptr %htile_bo to i32
  call void @__asan_store4_noabort(i32 %546)
  store ptr %545, ptr %htile_bo, align 4
  %db_dirty556 = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 40
  %547 = ptrtoint ptr %db_dirty556 to i32
  call void @__asan_store1_noabort(i32 %547)
  store i8 1, ptr %db_dirty556, align 2
  br label %cleanup

sw.bb557:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %chunk_ib.i1300 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %548 = ptrtoint ptr %chunk_ib.i1300 to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %chunk_ib.i1300, align 4
  %kdata.i1301 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %549, i32 0, i32 1
  %550 = ptrtoint ptr %kdata.i1301 to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %kdata.i1301, align 4
  %tobool.not.i1302 = icmp eq ptr %551, null
  %spec.select1356 = select i1 %tobool.not.i1302, ptr %4, ptr %551
  %retval.0.in.i1306 = getelementptr i32, ptr %spec.select1356, i32 %idx
  %552 = ptrtoint ptr %retval.0.in.i1306 to i32
  call void @__asan_load4_noabort(i32 %552)
  %retval.0.i1307 = load i32, ptr %retval.0.in.i1306, align 4
  %htile_surface = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 43
  %553 = ptrtoint ptr %htile_surface to i32
  call void @__asan_store4_noabort(i32 %553)
  store i32 %retval.0.i1307, ptr %htile_surface, align 4
  %arrayidx559 = getelementptr i32, ptr %4, i32 %idx
  %554 = ptrtoint ptr %arrayidx559 to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load i32, ptr %arrayidx559, align 4
  %or560 = or i32 %555, 3
  store i32 %or560, ptr %arrayidx559, align 4
  %db_dirty561 = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 40
  %556 = ptrtoint ptr %db_dirty561 to i32
  call void @__asan_store1_noabort(i32 %556)
  store i8 1, ptr %db_dirty561, align 2
  br label %cleanup

sw.bb562:                                         ; preds = %entry.sw.bb562_crit_edge, %entry.sw.bb562_crit_edge1487, %entry.sw.bb562_crit_edge1488, %entry.sw.bb562_crit_edge1489, %entry.sw.bb562_crit_edge1490, %entry.sw.bb562_crit_edge1491, %entry.sw.bb562_crit_edge1492, %entry.sw.bb562_crit_edge1493, %entry.sw.bb562_crit_edge1494, %entry.sw.bb562_crit_edge1495, %entry.sw.bb562_crit_edge1496, %entry.sw.bb562_crit_edge1497, %entry.sw.bb562_crit_edge1498, %entry.sw.bb562_crit_edge1499, %entry.sw.bb562_crit_edge1500, %entry.sw.bb562_crit_edge1501, %entry.sw.bb562_crit_edge1502, %entry.sw.bb562_crit_edge1503, %entry.sw.bb562_crit_edge1504, %entry.sw.bb562_crit_edge1505, %entry.sw.bb562_crit_edge1506, %entry.sw.bb562_crit_edge1507, %entry.sw.bb562_crit_edge1508, %entry.sw.bb562_crit_edge1509, %entry.sw.bb562_crit_edge1510, %entry.sw.bb562_crit_edge1511, %entry.sw.bb562_crit_edge1512, %entry.sw.bb562_crit_edge1513, %entry.sw.bb562_crit_edge1514, %entry.sw.bb562_crit_edge1515, %entry.sw.bb562_crit_edge1516, %entry.sw.bb562_crit_edge1517, %entry.sw.bb562_crit_edge1518, %entry.sw.bb562_crit_edge1519, %entry.sw.bb562_crit_edge1520, %entry.sw.bb562_crit_edge1521, %entry.sw.bb562_crit_edge1522, %entry.sw.bb562_crit_edge1523, %entry.sw.bb562_crit_edge1524, %entry.sw.bb562_crit_edge1525, %entry.sw.bb562_crit_edge1526, %entry.sw.bb562_crit_edge1527, %entry.sw.bb562_crit_edge1528, %entry.sw.bb562_crit_edge1529, %entry.sw.bb562_crit_edge1530, %entry.sw.bb562_crit_edge1531, %entry.sw.bb562_crit_edge1532, %entry.sw.bb562_crit_edge1533, %entry.sw.bb562_crit_edge1534, %entry.sw.bb562_crit_edge1535, %entry.sw.bb562_crit_edge1536, %entry.sw.bb562_crit_edge1537, %entry.sw.bb562_crit_edge1538, %entry.sw.bb562_crit_edge1539, %entry.sw.bb562_crit_edge1540, %entry.sw.bb562_crit_edge1541, %entry.sw.bb562_crit_edge1542, %entry.sw.bb562_crit_edge1543, %entry.sw.bb562_crit_edge1544, %entry.sw.bb562_crit_edge1545, %entry.sw.bb562_crit_edge1546, %entry.sw.bb562_crit_edge1547, %entry.sw.bb562_crit_edge1548, %entry.sw.bb562_crit_edge1549, %entry.sw.bb562_crit_edge1550, %entry.sw.bb562_crit_edge1551, %entry.sw.bb562_crit_edge1552, %entry.sw.bb562_crit_edge1553, %entry.sw.bb562_crit_edge1554, %entry.sw.bb562_crit_edge1555, %entry.sw.bb562_crit_edge1556, %entry.sw.bb562_crit_edge1557, %entry.sw.bb562_crit_edge1558, %entry.sw.bb562_crit_edge1559, %entry.sw.bb562_crit_edge1560, %entry.sw.bb562_crit_edge1561, %entry.sw.bb562_crit_edge1562, %entry.sw.bb562_crit_edge1563, %entry.sw.bb562_crit_edge1564, %entry.sw.bb562_crit_edge1565, %entry.sw.bb562_crit_edge1566, %entry.sw.bb562_crit_edge1567, %entry.sw.bb562_crit_edge1568, %entry.sw.bb562_crit_edge1569, %entry.sw.bb562_crit_edge1570, %entry.sw.bb562_crit_edge1571, %entry.sw.bb562_crit_edge1572, %entry.sw.bb562_crit_edge1573, %entry.sw.bb562_crit_edge1574, %entry.sw.bb562_crit_edge1575, %entry.sw.bb562_crit_edge1576, %entry.sw.bb562_crit_edge1577, %entry.sw.bb562_crit_edge1578, %entry.sw.bb562_crit_edge1579, %entry.sw.bb562_crit_edge1580, %entry.sw.bb562_crit_edge1581, %entry.sw.bb562_crit_edge1582, %entry.sw.bb562_crit_edge1583, %entry.sw.bb562_crit_edge1584, %entry.sw.bb562_crit_edge1585
  %call563 = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call563)
  %tobool564.not = icmp eq i32 %call563, 0
  br i1 %tobool564.not, label %if.end570, label %do.end568

do.end568:                                        ; preds = %sw.bb562
  call void @__sanitizer_cov_trace_pc() #8
  %557 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %558, ptr noundef nonnull @.str.287, i32 noundef %reg) #10
  br label %cleanup

if.end570:                                        ; preds = %sw.bb562
  call void @__sanitizer_cov_trace_pc() #8
  %559 = ptrtoint ptr %reloc to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load ptr, ptr %reloc, align 4
  %gpu_offset571 = getelementptr inbounds %struct.radeon_bo_list, ptr %560, i32 0, i32 2
  %561 = ptrtoint ptr %gpu_offset571 to i32
  call void @__asan_load8_noabort(i32 %561)
  %562 = load i64, ptr %gpu_offset571, align 8
  %shr572 = lshr i64 %562, 8
  %conv574 = trunc i64 %shr572 to i32
  %arrayidx575 = getelementptr i32, ptr %4, i32 %idx
  %563 = ptrtoint ptr %arrayidx575 to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load i32, ptr %arrayidx575, align 4
  %add576 = add i32 %564, %conv574
  store i32 %add576, ptr %arrayidx575, align 4
  br label %cleanup

sw.bb577:                                         ; preds = %entry
  %rdev578 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 1
  %565 = ptrtoint ptr %rdev578 to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load ptr, ptr %rdev578, align 4
  %family579 = getelementptr inbounds %struct.radeon_device, ptr %566, i32 0, i32 6
  %567 = ptrtoint ptr %family579 to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load i32, ptr %family579, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %568)
  %cmp580 = icmp ugt i32 %568, 49
  br i1 %cmp580, label %do.end585, label %if.end587

do.end585:                                        ; preds = %sw.bb577
  call void @__sanitizer_cov_trace_pc() #8
  %569 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %570, ptr noundef nonnull @.str.333, i32 noundef 36880) #10
  br label %cleanup

if.end587:                                        ; preds = %sw.bb577
  %call588 = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call588)
  %tobool589.not = icmp eq i32 %call588, 0
  br i1 %tobool589.not, label %if.end595, label %do.end593

do.end593:                                        ; preds = %if.end587
  call void @__sanitizer_cov_trace_pc() #8
  %571 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %572, ptr noundef nonnull @.str.333, i32 noundef 36880) #10
  br label %cleanup

if.end595:                                        ; preds = %if.end587
  call void @__sanitizer_cov_trace_pc() #8
  %573 = ptrtoint ptr %reloc to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load ptr, ptr %reloc, align 4
  %gpu_offset596 = getelementptr inbounds %struct.radeon_bo_list, ptr %574, i32 0, i32 2
  %575 = ptrtoint ptr %gpu_offset596 to i32
  call void @__asan_load8_noabort(i32 %575)
  %576 = load i64, ptr %gpu_offset596, align 8
  %shr597 = lshr i64 %576, 8
  %conv599 = trunc i64 %shr597 to i32
  %arrayidx600 = getelementptr i32, ptr %4, i32 %idx
  %577 = ptrtoint ptr %arrayidx600 to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load i32, ptr %arrayidx600, align 4
  %add601 = add i32 %578, %conv599
  store i32 %add601, ptr %arrayidx600, align 4
  br label %cleanup

sw.bb602:                                         ; preds = %entry
  %rdev603 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 1
  %579 = ptrtoint ptr %rdev603 to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load ptr, ptr %rdev603, align 4
  %family604 = getelementptr inbounds %struct.radeon_device, ptr %580, i32 0, i32 6
  %581 = ptrtoint ptr %family604 to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load i32, ptr %family604, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %582)
  %cmp605 = icmp ult i32 %582, 50
  br i1 %cmp605, label %do.end610, label %if.end612

do.end610:                                        ; preds = %sw.bb602
  call void @__sanitizer_cov_trace_pc() #8
  %583 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %584, ptr noundef nonnull @.str.287, i32 noundef 164696) #10
  br label %cleanup

if.end612:                                        ; preds = %sw.bb602
  %call613 = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call613)
  %tobool614.not = icmp eq i32 %call613, 0
  br i1 %tobool614.not, label %if.end620, label %do.end618

do.end618:                                        ; preds = %if.end612
  call void @__sanitizer_cov_trace_pc() #8
  %585 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %586, ptr noundef nonnull @.str.287, i32 noundef 164696) #10
  br label %cleanup

if.end620:                                        ; preds = %if.end612
  call void @__sanitizer_cov_trace_pc() #8
  %587 = ptrtoint ptr %reloc to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load ptr, ptr %reloc, align 4
  %gpu_offset621 = getelementptr inbounds %struct.radeon_bo_list, ptr %588, i32 0, i32 2
  %589 = ptrtoint ptr %gpu_offset621 to i32
  call void @__asan_load8_noabort(i32 %589)
  %590 = load i64, ptr %gpu_offset621, align 8
  %shr622 = lshr i64 %590, 8
  %conv624 = trunc i64 %shr622 to i32
  %arrayidx625 = getelementptr i32, ptr %4, i32 %idx
  %591 = ptrtoint ptr %arrayidx625 to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load i32, ptr %arrayidx625, align 4
  %add626 = add i32 %592, %conv624
  store i32 %add626, ptr %arrayidx625, align 4
  br label %cleanup

sw.bb627:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %chunk_ib.i1309 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %593 = ptrtoint ptr %chunk_ib.i1309 to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load ptr, ptr %chunk_ib.i1309, align 4
  %kdata.i1310 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %594, i32 0, i32 1
  %595 = ptrtoint ptr %kdata.i1310 to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load ptr, ptr %kdata.i1310, align 4
  %tobool.not.i1311 = icmp eq ptr %596, null
  %spec.select1357 = select i1 %tobool.not.i1311, ptr %4, ptr %596
  %retval.0.in.i1315 = getelementptr i32, ptr %spec.select1357, i32 %idx
  %597 = ptrtoint ptr %retval.0.in.i1315 to i32
  call void @__asan_load4_noabort(i32 %597)
  %retval.0.i1316 = load i32, ptr %retval.0.in.i1315, align 4
  %sx_misc_kill_all_prims = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 38
  %598 = trunc i32 %retval.0.i1316 to i8
  %599 = and i8 %598, 1
  %600 = ptrtoint ptr %sx_misc_kill_all_prims to i32
  call void @__asan_store1_noabort(i32 %600)
  store i8 %599, ptr %sx_misc_kill_all_prims, align 4
  br label %cleanup

do.end634:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %601 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %602, ptr noundef nonnull @.str.178, i32 noundef %reg, i32 noundef %idx) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end634, %sw.bb627, %if.end620, %do.end618, %do.end610, %if.end595, %do.end593, %do.end585, %if.end570, %do.end568, %sw.bb557, %radeon_get_ib_value.exit1299, %do.end545, %radeon_get_ib_value.exit1290, %do.end520, %radeon_get_ib_value.exit1281, %do.end498, %sw.bb487, %sw.bb482, %if.end473, %do.end471, %if.end454, %do.end452, %if.end436, %do.end400, %if.end388, %do.end352, %sw.bb336, %sw.bb329, %sw.bb321, %sw.bb315, %if.end313, %do.end299, %if.end281, %do.end267, %sw.bb245, %sw.bb239, %if.end234, %do.end232, %if.end220, %do.end218, %sw.bb207, %sw.bb205, %if.end198, %do.end196, %sw.bb184, %radeon_get_ib_value.exit1111, %do.end169, %sw.bb160, %sw.bb158, %radeon_get_ib_value.exit1084, %do.end146, %radeon_get_ib_value.exit1075, %do.end128, %radeon_get_ib_value.exit1066, %do.end110, %radeon_get_ib_value.exit1057, %do.end93, %sw.bb84, %sw.bb81, %sw.bb78, %sw.bb75, %if.end73, %do.end35, %do.end22, %sw.bb14.cleanup_crit_edge, %do.end11, %sw.bb6.cleanup_crit_edge, %sw.bb4, %if.end, %do.end, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge1363, %entry.cleanup_crit_edge1364, %entry.cleanup_crit_edge1365, %entry.cleanup_crit_edge1366, %entry.cleanup_crit_edge1367, %entry.cleanup_crit_edge1368, %entry.cleanup_crit_edge1369, %entry.cleanup_crit_edge1370, %entry.cleanup_crit_edge1371, %entry.cleanup_crit_edge1372, %entry.cleanup_crit_edge1373, %entry.cleanup_crit_edge1374, %entry.cleanup_crit_edge1375, %entry.cleanup_crit_edge1376, %entry.cleanup_crit_edge1377, %entry.cleanup_crit_edge1378, %entry.cleanup_crit_edge1379, %entry.cleanup_crit_edge1380, %entry.cleanup_crit_edge1381, %entry.cleanup_crit_edge1382, %entry.cleanup_crit_edge1383, %entry.cleanup_crit_edge1384, %entry.cleanup_crit_edge1385
  %retval.0 = phi i32 [ -22, %do.end634 ], [ -22, %do.end610 ], [ -22, %do.end618 ], [ -22, %do.end585 ], [ -22, %do.end593 ], [ -22, %do.end568 ], [ -22, %do.end545 ], [ -22, %do.end520 ], [ -22, %do.end498 ], [ -22, %do.end471 ], [ -22, %do.end452 ], [ -22, %do.end400 ], [ -22, %do.end352 ], [ -22, %do.end299 ], [ -22, %do.end267 ], [ -22, %do.end232 ], [ -22, %do.end218 ], [ -22, %do.end196 ], [ -22, %do.end169 ], [ -22, %do.end146 ], [ -22, %do.end128 ], [ -22, %do.end110 ], [ -22, %do.end93 ], [ -22, %do.end35 ], [ -22, %do.end22 ], [ -22, %do.end11 ], [ -22, %do.end ], [ 0, %sw.bb14.cleanup_crit_edge ], [ 0, %sw.bb6.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge1363 ], [ 0, %entry.cleanup_crit_edge1364 ], [ 0, %entry.cleanup_crit_edge1365 ], [ 0, %entry.cleanup_crit_edge1366 ], [ 0, %entry.cleanup_crit_edge1367 ], [ 0, %entry.cleanup_crit_edge1368 ], [ 0, %entry.cleanup_crit_edge1369 ], [ 0, %entry.cleanup_crit_edge1370 ], [ 0, %entry.cleanup_crit_edge1371 ], [ 0, %entry.cleanup_crit_edge1372 ], [ 0, %entry.cleanup_crit_edge1373 ], [ 0, %entry.cleanup_crit_edge1374 ], [ 0, %entry.cleanup_crit_edge1375 ], [ 0, %entry.cleanup_crit_edge1376 ], [ 0, %entry.cleanup_crit_edge1377 ], [ 0, %entry.cleanup_crit_edge1378 ], [ 0, %entry.cleanup_crit_edge1379 ], [ 0, %entry.cleanup_crit_edge1380 ], [ 0, %entry.cleanup_crit_edge1381 ], [ 0, %entry.cleanup_crit_edge1382 ], [ 0, %entry.cleanup_crit_edge1383 ], [ 0, %entry.cleanup_crit_edge1384 ], [ 0, %entry.cleanup_crit_edge1385 ], [ 0, %sw.bb627 ], [ 0, %if.end620 ], [ 0, %if.end595 ], [ 0, %if.end570 ], [ 0, %sw.bb557 ], [ 0, %radeon_get_ib_value.exit1299 ], [ 0, %radeon_get_ib_value.exit1290 ], [ 0, %radeon_get_ib_value.exit1281 ], [ 0, %sw.bb487 ], [ 0, %sw.bb482 ], [ 0, %if.end473 ], [ 0, %if.end454 ], [ 0, %if.end436 ], [ 0, %if.end388 ], [ 0, %sw.bb336 ], [ 0, %sw.bb329 ], [ 0, %sw.bb321 ], [ 0, %sw.bb315 ], [ 0, %if.end313 ], [ 0, %if.end281 ], [ 0, %sw.bb245 ], [ 0, %sw.bb239 ], [ 0, %if.end234 ], [ 0, %if.end220 ], [ 0, %sw.bb207 ], [ 0, %sw.bb205 ], [ 0, %if.end198 ], [ 0, %sw.bb184 ], [ 0, %radeon_get_ib_value.exit1111 ], [ 0, %sw.bb160 ], [ 0, %sw.bb158 ], [ 0, %radeon_get_ib_value.exit1084 ], [ 0, %radeon_get_ib_value.exit1075 ], [ 0, %radeon_get_ib_value.exit1066 ], [ 0, %radeon_get_ib_value.exit1057 ], [ 0, %sw.bb84 ], [ 0, %sw.bb81 ], [ 0, %sw.bb78 ], [ 0, %sw.bb75 ], [ 0, %if.end73 ], [ 0, %sw.bb4 ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reloc) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @evergreen_tiling_fields(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_cs_packet_next_is_pkt3_nop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @r600_fmt_is_valid_color(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @evergreen_surface_value_conv_check(ptr nocapture noundef readonly %p, ptr nocapture noundef %surf, ptr noundef %prefix) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.eg_surface, ptr %surf, i32 0, i32 3
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.399)
  switch i32 %1, label %do.end [
    i32 4, label %sw.epilog
    i32 0, label %entry.return_crit_edge
    i32 1, label %entry.return_crit_edge134
    i32 2, label %entry.return_crit_edge135
  ]

entry.return_crit_edge135:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge134:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.212, ptr noundef nonnull @.str.213, i32 noundef 333, ptr noundef %prefix, i32 noundef %1) #10
  br label %return

sw.epilog:                                        ; preds = %entry
  %nbanks = getelementptr inbounds %struct.eg_surface, ptr %surf, i32 0, i32 4
  %5 = ptrtoint ptr %nbanks to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nbanks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %7 = icmp ult i32 %6, 4
  br i1 %7, label %switch.lookup, label %do.end12

do.end12:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.215, ptr noundef nonnull @.str.213, i32 noundef 344, ptr noundef %prefix, i32 noundef %6) #10
  br label %return

switch.lookup:                                    ; preds = %sw.epilog
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.evergreen_surface_value_conv_check, i32 0, i32 %6
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  %11 = ptrtoint ptr %nbanks to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %switch.load, ptr %nbanks, align 4
  %bankw = getelementptr inbounds %struct.eg_surface, ptr %surf, i32 0, i32 5
  %12 = ptrtoint ptr %bankw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bankw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %14 = icmp ult i32 %13, 4
  br i1 %14, label %switch.lookup128, label %do.end26

do.end26:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.218, ptr noundef nonnull @.str.213, i32 noundef 354, ptr noundef %prefix, i32 noundef %13) #10
  br label %return

switch.lookup128:                                 ; preds = %switch.lookup
  %switch.gep129 = getelementptr inbounds [4 x i32], ptr @switch.table.evergreen_surface_value_conv_check.378, i32 0, i32 %13
  %17 = ptrtoint ptr %switch.gep129 to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load130 = load i32, ptr %switch.gep129, align 4
  %18 = ptrtoint ptr %bankw to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %switch.load130, ptr %bankw, align 4
  %bankh = getelementptr inbounds %struct.eg_surface, ptr %surf, i32 0, i32 6
  %19 = ptrtoint ptr %bankh to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bankh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %21 = icmp ult i32 %20, 4
  br i1 %21, label %switch.lookup125, label %do.end40

do.end40:                                         ; preds = %switch.lookup128
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.221, ptr noundef nonnull @.str.213, i32 noundef 364, ptr noundef %prefix, i32 noundef %20) #10
  br label %return

switch.lookup125:                                 ; preds = %switch.lookup128
  %switch.gep126 = getelementptr inbounds [4 x i32], ptr @switch.table.evergreen_surface_value_conv_check.377, i32 0, i32 %20
  %24 = ptrtoint ptr %switch.gep126 to i32
  call void @__asan_load4_noabort(i32 %24)
  %switch.load127 = load i32, ptr %switch.gep126, align 4
  %25 = ptrtoint ptr %bankh to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %switch.load127, ptr %bankh, align 4
  %mtilea = getelementptr inbounds %struct.eg_surface, ptr %surf, i32 0, i32 8
  %26 = ptrtoint ptr %mtilea to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mtilea, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %27)
  %28 = icmp ult i32 %27, 4
  br i1 %28, label %switch.lookup131, label %do.end54

do.end54:                                         ; preds = %switch.lookup125
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %30, ptr noundef nonnull @.str.224, ptr noundef nonnull @.str.213, i32 noundef 374, ptr noundef %prefix, i32 noundef %27) #10
  br label %return

switch.lookup131:                                 ; preds = %switch.lookup125
  %switch.gep132 = getelementptr inbounds [4 x i32], ptr @switch.table.evergreen_surface_value_conv_check.379, i32 0, i32 %27
  %31 = ptrtoint ptr %switch.gep132 to i32
  call void @__asan_load4_noabort(i32 %31)
  %switch.load133 = load i32, ptr %switch.gep132, align 4
  %32 = ptrtoint ptr %mtilea to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %switch.load133, ptr %mtilea, align 4
  %tsplit = getelementptr inbounds %struct.eg_surface, ptr %surf, i32 0, i32 7
  %33 = ptrtoint ptr %tsplit to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tsplit, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.400)
  switch i32 %34, label %do.end74 [
    i32 0, label %sw.bb58
    i32 1, label %sw.bb60
    i32 2, label %sw.bb62
    i32 3, label %sw.bb64
    i32 4, label %sw.bb66
    i32 5, label %sw.bb68
    i32 6, label %sw.bb70
  ]

sw.bb58:                                          ; preds = %switch.lookup131
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %tsplit to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 64, ptr %tsplit, align 4
  br label %return

sw.bb60:                                          ; preds = %switch.lookup131
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %tsplit to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 128, ptr %tsplit, align 4
  br label %return

sw.bb62:                                          ; preds = %switch.lookup131
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %tsplit to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 256, ptr %tsplit, align 4
  br label %return

sw.bb64:                                          ; preds = %switch.lookup131
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %tsplit to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 512, ptr %tsplit, align 4
  br label %return

sw.bb66:                                          ; preds = %switch.lookup131
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %tsplit to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1024, ptr %tsplit, align 4
  br label %return

sw.bb68:                                          ; preds = %switch.lookup131
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %tsplit to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2048, ptr %tsplit, align 4
  br label %return

sw.bb70:                                          ; preds = %switch.lookup131
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %tsplit to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 4096, ptr %tsplit, align 4
  br label %return

do.end74:                                         ; preds = %switch.lookup131
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %44, ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.213, i32 noundef 387, ptr noundef %prefix, i32 noundef %34) #10
  br label %return

return:                                           ; preds = %do.end74, %sw.bb70, %sw.bb68, %sw.bb66, %sw.bb64, %sw.bb62, %sw.bb60, %sw.bb58, %do.end54, %do.end40, %do.end26, %do.end12, %do.end, %entry.return_crit_edge, %entry.return_crit_edge134, %entry.return_crit_edge135
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end12 ], [ -22, %do.end26 ], [ -22, %do.end40 ], [ -22, %do.end54 ], [ -22, %do.end74 ], [ 0, %entry.return_crit_edge ], [ 0, %entry.return_crit_edge134 ], [ 0, %entry.return_crit_edge135 ], [ 0, %sw.bb70 ], [ 0, %sw.bb68 ], [ 0, %sw.bb66 ], [ 0, %sw.bb64 ], [ 0, %sw.bb62 ], [ 0, %sw.bb60 ], [ 0, %sw.bb58 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @evergreen_surface_check(ptr nocapture noundef readonly %p, ptr noundef %surf, ptr noundef %prefix) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %format = getelementptr inbounds %struct.eg_surface, ptr %surf, i32 0, i32 2
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %format, align 4
  %call = tail call i32 @r600_fmt_get_blocksize(i32 noundef %1) #6
  %bpe = getelementptr inbounds %struct.eg_surface, ptr %surf, i32 0, i32 10
  %2 = ptrtoint ptr %bpe to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %bpe, align 4
  %mode = getelementptr inbounds %struct.eg_surface, ptr %surf, i32 0, i32 3
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mode, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.401)
  switch i32 %4, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb4
    i32 4, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %surf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %surf, align 4
  %nby.i = getelementptr inbounds %struct.eg_surface, ptr %surf, i32 0, i32 1
  %8 = ptrtoint ptr %nby.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nby.i, align 4
  %nsamples.i = getelementptr inbounds %struct.eg_surface, ptr %surf, i32 0, i32 9
  %10 = ptrtoint ptr %nsamples.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nsamples.i, align 4
  %mul.i = mul i32 %7, %call
  %mul1.i = mul i32 %mul.i, %9
  %mul2.i = mul i32 %mul1.i, %11
  %layer_size.i = getelementptr inbounds %struct.eg_surface, ptr %surf, i32 0, i32 11
  %12 = ptrtoint ptr %layer_size.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mul2.i, ptr %layer_size.i, align 4
  %base_align.i = getelementptr inbounds %struct.eg_surface, ptr %surf, i32 0, i32 14
  %13 = ptrtoint ptr %base_align.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call, ptr %base_align.i, align 4
  %palign.i = getelementptr inbounds %struct.eg_surface, ptr %surf, i32 0, i32 12
  %14 = ptrtoint ptr %palign.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %palign.i, align 4
  %halign.i = getelementptr inbounds %struct.eg_surface, ptr %surf, i32 0, i32 13
  %15 = ptrtoint ptr %halign.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %halign.i, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  %track1.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 18
  %16 = ptrtoint ptr %track1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %track1.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %div.i = udiv i32 %19, %call
  %20 = tail call i32 @llvm.umax.i32(i32 %div.i, i32 64) #6
  %21 = ptrtoint ptr %surf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %surf, align 4
  %nby.i25 = getelementptr inbounds %struct.eg_surface, ptr %surf, i32 0, i32 1
  %23 = ptrtoint ptr %nby.i25 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nby.i25, align 4
  %nsamples.i26 = getelementptr inbounds %struct.eg_surface, ptr %surf, i32 0, i32 9
  %25 = ptrtoint ptr %nsamples.i26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nsamples.i26, align 4
  %mul.i27 = mul i32 %22, %call
  %mul6.i = mul i32 %mul.i27, %24
  %mul7.i = mul i32 %mul6.i, %26
  %layer_size.i28 = getelementptr inbounds %struct.eg_surface, ptr %surf, i32 0, i32 11
  %27 = ptrtoint ptr %layer_size.i28 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul7.i, ptr %layer_size.i28, align 4
  %28 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %17, align 4
  %base_align.i29 = getelementptr inbounds %struct.eg_surface, ptr %surf, i32 0, i32 14
  %30 = ptrtoint ptr %base_align.i29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %base_align.i29, align 4
  %palign9.i = getelementptr inbounds %struct.eg_surface, ptr %surf, i32 0, i32 12
  %31 = ptrtoint ptr %palign9.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %20, ptr %palign9.i, align 4
  %halign.i30 = getelementptr inbounds %struct.eg_surface, ptr %surf, i32 0, i32 13
  %32 = ptrtoint ptr %halign.i30 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %halign.i30, align 4
  %sub.i = add i32 %20, -1
  %and.i = and i32 %sub.i, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb2.return_crit_edge, label %if.then.i

sw.bb2.return_crit_edge:                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then.i:                                        ; preds = %sw.bb2
  %tobool11.not.i = icmp eq ptr %prefix, null
  br i1 %tobool11.not.i, label %if.then.i.return_crit_edge, label %do.end.i

if.then.i.return_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %34, ptr noundef nonnull @.str.230, ptr noundef nonnull @.str.231, i32 noundef 215, ptr noundef nonnull %prefix, i32 noundef %22, i32 noundef %20) #10
  br label %return

sw.bb4:                                           ; preds = %entry
  %track1.i31 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 18
  %35 = ptrtoint ptr %track1.i31 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %track1.i31, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %mul.i33 = shl i32 %call, 3
  %nsamples.i34 = getelementptr inbounds %struct.eg_surface, ptr %surf, i32 0, i32 9
  %39 = ptrtoint ptr %nsamples.i34 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nsamples.i34, align 4
  %mul2.i35 = mul i32 %mul.i33, %40
  %div.i36 = udiv i32 %38, %mul2.i35
  %41 = tail call i32 @llvm.umax.i32(i32 %div.i36, i32 8) #6
  %42 = ptrtoint ptr %surf to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %surf, align 4
  %nby.i37 = getelementptr inbounds %struct.eg_surface, ptr %surf, i32 0, i32 1
  %44 = ptrtoint ptr %nby.i37 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nby.i37, align 4
  %mul3.i = mul i32 %43, %call
  %mul5.i = mul i32 %mul3.i, %45
  %layer_size.i38 = getelementptr inbounds %struct.eg_surface, ptr %surf, i32 0, i32 11
  %46 = ptrtoint ptr %layer_size.i38 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %mul5.i, ptr %layer_size.i38, align 4
  %47 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %36, align 4
  %base_align.i39 = getelementptr inbounds %struct.eg_surface, ptr %surf, i32 0, i32 14
  %49 = ptrtoint ptr %base_align.i39 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %base_align.i39, align 4
  %palign7.i = getelementptr inbounds %struct.eg_surface, ptr %surf, i32 0, i32 12
  %50 = ptrtoint ptr %palign7.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %41, ptr %palign7.i, align 4
  %halign.i40 = getelementptr inbounds %struct.eg_surface, ptr %surf, i32 0, i32 13
  %51 = ptrtoint ptr %halign.i40 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 8, ptr %halign.i40, align 4
  %sub.i41 = add i32 %41, -1
  %and.i42 = and i32 %sub.i41, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i42)
  %tobool.not.i43 = icmp eq i32 %and.i42, 0
  br i1 %tobool.not.i43, label %if.end15.i, label %if.then.i44

if.then.i44:                                      ; preds = %sw.bb4
  %tobool9.not.i = icmp eq ptr %prefix, null
  br i1 %tobool9.not.i, label %if.then.i44.return_crit_edge, label %do.end.i45

if.then.i44.return_crit_edge:                     ; preds = %if.then.i44
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end.i45:                                       ; preds = %if.then.i44
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %p, align 8
  %54 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %36, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %53, ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.233, i32 noundef 239, ptr noundef nonnull %prefix, i32 noundef %43, i32 noundef %41, i32 noundef %55, i32 noundef %call, i32 noundef %40) #10
  br label %return

if.end15.i:                                       ; preds = %sw.bb4
  %and17.i = and i32 %45, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.end15.i.return_crit_edge, label %if.then19.i

if.end15.i.return_crit_edge:                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then19.i:                                      ; preds = %if.end15.i
  %tobool20.not.i = icmp eq ptr %prefix, null
  br i1 %tobool20.not.i, label %if.then19.i.return_crit_edge, label %do.end24.i

if.then19.i.return_crit_edge:                     ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end24.i:                                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %57, ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.233, i32 noundef 246, ptr noundef nonnull %prefix, i32 noundef %45) #10
  br label %return

sw.bb6:                                           ; preds = %entry
  %track1.i47 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 18
  %58 = ptrtoint ptr %track1.i47 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %track1.i47, align 8
  %mul.i49 = shl i32 %call, 6
  %nsamples.i50 = getelementptr inbounds %struct.eg_surface, ptr %surf, i32 0, i32 9
  %60 = ptrtoint ptr %nsamples.i50 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %nsamples.i50, align 4
  %mul2.i51 = mul i32 %61, %mul.i49
  %tsplit.i = getelementptr inbounds %struct.eg_surface, ptr %surf, i32 0, i32 7
  %62 = ptrtoint ptr %tsplit.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tsplit.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul2.i51, i32 %63)
  %cmp.i = icmp ugt i32 %mul2.i51, %63
  br i1 %cmp.i, label %if.then.i53, label %sw.bb6.if.end.i_crit_edge

sw.bb6.if.end.i_crit_edge:                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i53:                                      ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  %div.i52 = udiv i32 %mul2.i51, %63
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i53, %sw.bb6.if.end.i_crit_edge
  %slice_pt.0.i = phi i32 [ %div.i52, %if.then.i53 ], [ 1, %sw.bb6.if.end.i_crit_edge ]
  %div4.i = udiv i32 %mul2.i51, %slice_pt.0.i
  %bankw.i = getelementptr inbounds %struct.eg_surface, ptr %surf, i32 0, i32 5
  %64 = ptrtoint ptr %bankw.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %bankw.i, align 4
  %mul5.i54 = shl i32 %65, 3
  %npipes.i = getelementptr inbounds %struct.evergreen_cs_track, ptr %59, i32 0, i32 2
  %66 = ptrtoint ptr %npipes.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %npipes.i, align 4
  %mul6.i55 = mul i32 %mul5.i54, %67
  %mtilea.i = getelementptr inbounds %struct.eg_surface, ptr %surf, i32 0, i32 8
  %68 = ptrtoint ptr %mtilea.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %mtilea.i, align 4
  %mul7.i56 = mul i32 %mul6.i55, %69
  %bankh.i = getelementptr inbounds %struct.eg_surface, ptr %surf, i32 0, i32 6
  %70 = ptrtoint ptr %bankh.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %bankh.i, align 4
  %mul8.i = shl i32 %71, 3
  %nbanks.i = getelementptr inbounds %struct.eg_surface, ptr %surf, i32 0, i32 4
  %72 = ptrtoint ptr %nbanks.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %nbanks.i, align 4
  %mul9.i = mul i32 %mul8.i, %73
  %div11.i = udiv i32 %mul9.i, %69
  %div1293.i = lshr exact i32 %mul7.i56, 3
  %div1394.i = lshr i32 %div11.i, 3
  %mul14.i = mul i32 %div1293.i, %div4.i
  %mul15.i = mul i32 %mul14.i, %div1394.i
  %74 = ptrtoint ptr %surf to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %surf, align 4
  %div16.i = udiv i32 %75, %mul7.i56
  %nby.i57 = getelementptr inbounds %struct.eg_surface, ptr %surf, i32 0, i32 1
  %76 = ptrtoint ptr %nby.i57 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %nby.i57, align 4
  %mul17.i = mul i32 %77, %div16.i
  %div18.i = udiv i32 %mul17.i, %div11.i
  %mul19.i = mul i32 %mul15.i, %slice_pt.0.i
  %mul20.i = mul i32 %mul19.i, %div18.i
  %layer_size.i58 = getelementptr inbounds %struct.eg_surface, ptr %surf, i32 0, i32 11
  %78 = ptrtoint ptr %layer_size.i58 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %mul20.i, ptr %layer_size.i58, align 4
  %base_align.i59 = getelementptr inbounds %struct.eg_surface, ptr %surf, i32 0, i32 14
  %79 = ptrtoint ptr %base_align.i59 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %mul15.i, ptr %base_align.i59, align 4
  %palign25.i = getelementptr inbounds %struct.eg_surface, ptr %surf, i32 0, i32 12
  %80 = ptrtoint ptr %palign25.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %mul7.i56, ptr %palign25.i, align 4
  %halign26.i = getelementptr inbounds %struct.eg_surface, ptr %surf, i32 0, i32 13
  %81 = ptrtoint ptr %halign26.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %div11.i, ptr %halign26.i, align 4
  %sub.i60 = add i32 %mul7.i56, -1
  %and.i61 = and i32 %75, %sub.i60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i61)
  %tobool.not.i62 = icmp eq i32 %and.i61, 0
  br i1 %tobool.not.i62, label %if.end33.i, label %if.then28.i

if.then28.i:                                      ; preds = %if.end.i
  %tobool29.not.i = icmp eq ptr %prefix, null
  br i1 %tobool29.not.i, label %if.then28.i.return_crit_edge, label %do.end.i63

if.then28.i.return_crit_edge:                     ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end.i63:                                       ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #8
  %82 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %83, ptr noundef nonnull @.str.230, ptr noundef nonnull @.str.237, i32 noundef 281, ptr noundef nonnull %prefix, i32 noundef %75, i32 noundef %mul7.i56) #10
  br label %return

if.end33.i:                                       ; preds = %if.end.i
  %sub35.i = add i32 %div11.i, -1
  %and36.i = and i32 %77, %sub35.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %if.end33.i.return_crit_edge, label %if.then38.i

if.end33.i.return_crit_edge:                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then38.i:                                      ; preds = %if.end33.i
  %tobool39.not.i = icmp eq ptr %prefix, null
  br i1 %tobool39.not.i, label %if.then38.i.return_crit_edge, label %do.end43.i

if.then38.i.return_crit_edge:                     ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end43.i:                                       ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #8
  %84 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %85, ptr noundef nonnull @.str.239, ptr noundef nonnull @.str.237, i32 noundef 288, ptr noundef nonnull %prefix, i32 noundef %77, i32 noundef %div11.i) #10
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %86 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %87, ptr noundef nonnull @.str.212, ptr noundef nonnull @.str.229, i32 noundef 314, ptr noundef %prefix, i32 noundef %4) #10
  br label %return

return:                                           ; preds = %do.end, %do.end43.i, %if.then38.i.return_crit_edge, %if.end33.i.return_crit_edge, %do.end.i63, %if.then28.i.return_crit_edge, %do.end24.i, %if.then19.i.return_crit_edge, %if.end15.i.return_crit_edge, %do.end.i45, %if.then.i44.return_crit_edge, %do.end.i, %if.then.i.return_crit_edge, %sw.bb2.return_crit_edge, %sw.bb
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.bb ], [ -22, %do.end.i ], [ -22, %if.then.i.return_crit_edge ], [ 0, %sw.bb2.return_crit_edge ], [ -22, %do.end.i45 ], [ -22, %if.then.i44.return_crit_edge ], [ -22, %do.end24.i ], [ -22, %if.then19.i.return_crit_edge ], [ 0, %if.end15.i.return_crit_edge ], [ -22, %do.end.i63 ], [ -22, %if.then28.i.return_crit_edge ], [ -22, %do.end43.i ], [ -22, %if.then38.i.return_crit_edge ], [ 0, %if.end33.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_fmt_get_blocksize(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @evergreen_cs_track_validate_htile(ptr nocapture noundef readonly %p, i32 noundef %nbx, i32 noundef %nby) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %track1 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 18
  %0 = ptrtoint ptr %track1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %track1, align 8
  %htile_bo = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %htile_bo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %htile_bo, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p, align 8
  %db_z_info = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 28
  %6 = ptrtoint ptr %db_z_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %db_z_info, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.261, ptr noundef nonnull @.str.262, i32 noundef 503, i32 noundef %7) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %htile_surface = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 43
  %8 = ptrtoint ptr %htile_surface to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %htile_surface, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add i32 %nbx, -1
  %or = or i32 %sub, 127
  %sub3 = add i32 %nby, -1
  %npipes = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %npipes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %npipes, align 4
  %mul = shl i32 %12, 3
  br label %if.end40

if.else:                                          ; preds = %if.end
  %npipes7 = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %npipes7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %npipes7, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.402)
  switch i32 %14, label %do.end37 [
    i32 8, label %sw.bb
    i32 4, label %sw.bb14
    i32 2, label %sw.bb21
    i32 1, label %sw.bb28
  ]

sw.bb:                                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %sub8 = add i32 %nbx, -1
  %or9 = or i32 %sub8, 511
  br label %if.end40

sw.bb14:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %sub15 = add i32 %nbx, -1
  %or16 = or i32 %sub15, 511
  br label %if.end40

sw.bb21:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %sub22 = add i32 %nbx, -1
  %or23 = or i32 %sub22, 255
  br label %if.end40

sw.bb28:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %sub29 = add i32 %nbx, -1
  %or30 = or i32 %sub29, 255
  br label %if.end40

do.end37:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.264, ptr noundef nonnull @.str.262, i32 noundef 540, i32 noundef %14) #10
  br label %cleanup

if.end40:                                         ; preds = %sw.bb28, %sw.bb21, %sw.bb14, %sw.bb, %if.then2
  %nby.sink = phi i32 [ %nby, %sw.bb ], [ %nby, %sw.bb14 ], [ %nby, %sw.bb21 ], [ %nby, %sw.bb28 ], [ %mul, %if.then2 ]
  %.sink = phi i32 [ 511, %sw.bb ], [ 255, %sw.bb14 ], [ 255, %sw.bb21 ], [ 127, %sw.bb28 ], [ %sub3, %if.then2 ]
  %nbx.addr.0.in = phi i32 [ %or9, %sw.bb ], [ %or16, %sw.bb14 ], [ %or23, %sw.bb21 ], [ %or30, %sw.bb28 ], [ %or, %if.then2 ]
  %sub11 = add i32 %nby.sink, -1
  %or12 = or i32 %sub11, %.sink
  %nbx.addr.0 = add i32 %nbx.addr.0.in, 1
  %nby.addr.0 = add i32 %or12, 1
  %shr41 = lshr exact i32 %nbx.addr.0, 3
  %shr42 = lshr i32 %nby.addr.0, 3
  %npipes43 = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %npipes43 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %npipes43, align 4
  %mul44 = shl i32 %19, 11
  %mul45 = shl nuw nsw i32 %shr42, 2
  %mul46 = mul i32 %mul45, %shr41
  %sub47 = add i32 %mul44, -1
  %add48 = add i32 %sub47, %mul46
  %20 = urem i32 %add48, %mul44
  %mul49 = sub i32 %add48, %20
  %htile_offset = getelementptr inbounds %struct.evergreen_cs_track, ptr %1, i32 0, i32 42
  %21 = ptrtoint ptr %htile_offset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %htile_offset, align 4
  %add50 = add i32 %mul49, %22
  %size.i = getelementptr inbounds %struct.radeon_bo, ptr %3, i32 0, i32 4, i32 0, i32 5
  %23 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add50, i32 %24)
  %cmp52 = icmp ugt i32 %add50, %24
  br i1 %cmp52, label %do.end56, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end56:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.267, ptr noundef nonnull @.str.262, i32 noundef 554, i32 noundef %24, i32 noundef %add50, i32 noundef %shr41, i32 noundef %shr42) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end56, %if.end40.cleanup_crit_edge, %do.end37, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end56 ], [ -22, %do.end37 ], [ 0, %if.end40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_fmt_get_nblocksx(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_fmt_get_nblocksy(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @r600_fmt_is_valid_texture(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_mip_minify(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @evergreen_vm_reg_valid(i32 noundef %reg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 163839, i32 %reg)
  %cmp = icmp ugt i32 %reg, 163839
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.403)
  switch i32 %reg, label %sw.default [
    i32 32832, label %if.end.return_crit_edge
    i32 32812, label %if.end.return_crit_edge3
    i32 34044, label %if.end.return_crit_edge4
    i32 34288, label %if.end.return_crit_edge5
    i32 34292, label %if.end.return_crit_edge6
    i32 34992, label %if.end.return_crit_edge7
    i32 35012, label %if.end.return_crit_edge8
    i32 35028, label %if.end.return_crit_edge9
    i32 35160, label %if.end.return_crit_edge10
    i32 35164, label %if.end.return_crit_edge11
    i32 35184, label %if.end.return_crit_edge12
    i32 35188, label %if.end.return_crit_edge13
    i32 35216, label %if.end.return_crit_edge14
    i32 35220, label %if.end.return_crit_edge15
    i32 35224, label %if.end.return_crit_edge16
    i32 35228, label %if.end.return_crit_edge17
    i32 35232, label %if.end.return_crit_edge18
    i32 35236, label %if.end.return_crit_edge19
    i32 35240, label %if.end.return_crit_edge20
    i32 35244, label %if.end.return_crit_edge21
    i32 35248, label %if.end.return_crit_edge22
    i32 35348, label %if.end.return_crit_edge23
    i32 35424, label %if.end.return_crit_edge24
    i32 35600, label %if.end.return_crit_edge25
    i32 35824, label %if.end.return_crit_edge26
    i32 36236, label %if.end.return_crit_edge27
    i32 36244, label %if.end.return_crit_edge28
    i32 35840, label %if.end.return_crit_edge29
    i32 35844, label %if.end.return_crit_edge30
    i32 35856, label %if.end.return_crit_edge31
    i32 35860, label %if.end.return_crit_edge32
    i32 36344, label %if.end.return_crit_edge33
    i32 36384, label %if.end.return_crit_edge34
    i32 36388, label %if.end.return_crit_edge35
    i32 36392, label %if.end.return_crit_edge36
    i32 37120, label %if.end.return_crit_edge37
    i32 37180, label %if.end.return_crit_edge38
    i32 38152, label %if.end.return_crit_edge39
    i32 38960, label %if.end.return_crit_edge40
    i32 38964, label %if.end.return_crit_edge41
    i32 38968, label %if.end.return_crit_edge42
    i32 38972, label %if.end.return_crit_edge43
    i32 38996, label %if.end.return_crit_edge44
    i32 41984, label %if.end.return_crit_edge45
    i32 41988, label %if.end.return_crit_edge46
    i32 41992, label %if.end.return_crit_edge47
    i32 41996, label %if.end.return_crit_edge48
    i32 42000, label %if.end.return_crit_edge49
    i32 42004, label %if.end.return_crit_edge50
    i32 42008, label %if.end.return_crit_edge51
    i32 42012, label %if.end.return_crit_edge52
    i32 42016, label %if.end.return_crit_edge53
    i32 42020, label %if.end.return_crit_edge54
    i32 42024, label %if.end.return_crit_edge55
    i32 42028, label %if.end.return_crit_edge56
    i32 42032, label %if.end.return_crit_edge57
    i32 42036, label %if.end.return_crit_edge58
    i32 42040, label %if.end.return_crit_edge59
    i32 42044, label %if.end.return_crit_edge60
    i32 42048, label %if.end.return_crit_edge61
    i32 42052, label %if.end.return_crit_edge62
    i32 42056, label %if.end.return_crit_edge63
    i32 42060, label %if.end.return_crit_edge64
    i32 42064, label %if.end.return_crit_edge65
    i32 42068, label %if.end.return_crit_edge66
    i32 42072, label %if.end.return_crit_edge67
    i32 42076, label %if.end.return_crit_edge68
    i32 42080, label %if.end.return_crit_edge69
    i32 42084, label %if.end.return_crit_edge70
    i32 42088, label %if.end.return_crit_edge71
    i32 42092, label %if.end.return_crit_edge72
    i32 42096, label %if.end.return_crit_edge73
    i32 42100, label %if.end.return_crit_edge74
    i32 35908, label %if.end.return_crit_edge75
    i32 35916, label %if.end.return_crit_edge76
    i32 35924, label %if.end.return_crit_edge77
    i32 35932, label %if.end.return_crit_edge78
    i32 36380, label %if.end.return_crit_edge79
    i32 36372, label %if.end.return_crit_edge80
    i32 35948, label %if.end.return_crit_edge81
    i32 35940, label %if.end.return_crit_edge82
    i32 36424, label %if.end.return_crit_edge83
    i32 35252, label %if.end.return_crit_edge84
    i32 35936, label %if.end.return_crit_edge85
    i32 35944, label %if.end.return_crit_edge86
    i32 36368, label %if.end.return_crit_edge87
    i32 36376, label %if.end.return_crit_edge88
    i32 35928, label %if.end.return_crit_edge89
    i32 35920, label %if.end.return_crit_edge90
    i32 35912, label %if.end.return_crit_edge91
    i32 35904, label %if.end.return_crit_edge92
    i32 35208, label %if.end.return_crit_edge93
  ]

if.end.return_crit_edge93:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge92:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge91:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge90:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge89:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge88:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge87:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge86:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge85:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge84:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge83:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge82:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge81:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge80:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge79:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge78:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge77:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge76:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge75:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge74:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge73:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge72:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge71:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge70:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge69:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge68:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge67:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge66:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge65:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge64:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge63:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge62:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge61:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge60:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge59:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge58:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge57:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge56:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge55:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge54:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge53:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge52:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge51:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge50:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge49:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge48:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge47:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge46:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge45:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge44:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge43:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge42:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge41:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge40:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge39:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge38:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge37:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge36:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge35:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge34:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge33:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge32:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge31:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge30:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge29:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge28:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge27:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge26:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge25:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge24:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge23:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge22:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge21:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge20:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge19:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge18:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge17:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge16:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge15:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge14:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge13:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge12:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge11:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge10:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge9:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge8:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge7:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge6:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge5:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge4:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge3:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.376, i32 noundef %reg) #6
  br label %return

return:                                           ; preds = %sw.default, %if.end.return_crit_edge, %if.end.return_crit_edge3, %if.end.return_crit_edge4, %if.end.return_crit_edge5, %if.end.return_crit_edge6, %if.end.return_crit_edge7, %if.end.return_crit_edge8, %if.end.return_crit_edge9, %if.end.return_crit_edge10, %if.end.return_crit_edge11, %if.end.return_crit_edge12, %if.end.return_crit_edge13, %if.end.return_crit_edge14, %if.end.return_crit_edge15, %if.end.return_crit_edge16, %if.end.return_crit_edge17, %if.end.return_crit_edge18, %if.end.return_crit_edge19, %if.end.return_crit_edge20, %if.end.return_crit_edge21, %if.end.return_crit_edge22, %if.end.return_crit_edge23, %if.end.return_crit_edge24, %if.end.return_crit_edge25, %if.end.return_crit_edge26, %if.end.return_crit_edge27, %if.end.return_crit_edge28, %if.end.return_crit_edge29, %if.end.return_crit_edge30, %if.end.return_crit_edge31, %if.end.return_crit_edge32, %if.end.return_crit_edge33, %if.end.return_crit_edge34, %if.end.return_crit_edge35, %if.end.return_crit_edge36, %if.end.return_crit_edge37, %if.end.return_crit_edge38, %if.end.return_crit_edge39, %if.end.return_crit_edge40, %if.end.return_crit_edge41, %if.end.return_crit_edge42, %if.end.return_crit_edge43, %if.end.return_crit_edge44, %if.end.return_crit_edge45, %if.end.return_crit_edge46, %if.end.return_crit_edge47, %if.end.return_crit_edge48, %if.end.return_crit_edge49, %if.end.return_crit_edge50, %if.end.return_crit_edge51, %if.end.return_crit_edge52, %if.end.return_crit_edge53, %if.end.return_crit_edge54, %if.end.return_crit_edge55, %if.end.return_crit_edge56, %if.end.return_crit_edge57, %if.end.return_crit_edge58, %if.end.return_crit_edge59, %if.end.return_crit_edge60, %if.end.return_crit_edge61, %if.end.return_crit_edge62, %if.end.return_crit_edge63, %if.end.return_crit_edge64, %if.end.return_crit_edge65, %if.end.return_crit_edge66, %if.end.return_crit_edge67, %if.end.return_crit_edge68, %if.end.return_crit_edge69, %if.end.return_crit_edge70, %if.end.return_crit_edge71, %if.end.return_crit_edge72, %if.end.return_crit_edge73, %if.end.return_crit_edge74, %if.end.return_crit_edge75, %if.end.return_crit_edge76, %if.end.return_crit_edge77, %if.end.return_crit_edge78, %if.end.return_crit_edge79, %if.end.return_crit_edge80, %if.end.return_crit_edge81, %if.end.return_crit_edge82, %if.end.return_crit_edge83, %if.end.return_crit_edge84, %if.end.return_crit_edge85, %if.end.return_crit_edge86, %if.end.return_crit_edge87, %if.end.return_crit_edge88, %if.end.return_crit_edge89, %if.end.return_crit_edge90, %if.end.return_crit_edge91, %if.end.return_crit_edge92, %if.end.return_crit_edge93, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %if.end.return_crit_edge ], [ true, %if.end.return_crit_edge3 ], [ true, %if.end.return_crit_edge4 ], [ true, %if.end.return_crit_edge5 ], [ true, %if.end.return_crit_edge6 ], [ true, %if.end.return_crit_edge7 ], [ true, %if.end.return_crit_edge8 ], [ true, %if.end.return_crit_edge9 ], [ true, %if.end.return_crit_edge10 ], [ true, %if.end.return_crit_edge11 ], [ true, %if.end.return_crit_edge12 ], [ true, %if.end.return_crit_edge13 ], [ true, %if.end.return_crit_edge14 ], [ true, %if.end.return_crit_edge15 ], [ true, %if.end.return_crit_edge16 ], [ true, %if.end.return_crit_edge17 ], [ true, %if.end.return_crit_edge18 ], [ true, %if.end.return_crit_edge19 ], [ true, %if.end.return_crit_edge20 ], [ true, %if.end.return_crit_edge21 ], [ true, %if.end.return_crit_edge22 ], [ true, %if.end.return_crit_edge23 ], [ true, %if.end.return_crit_edge24 ], [ true, %if.end.return_crit_edge25 ], [ true, %if.end.return_crit_edge26 ], [ true, %if.end.return_crit_edge27 ], [ true, %if.end.return_crit_edge28 ], [ true, %if.end.return_crit_edge29 ], [ true, %if.end.return_crit_edge30 ], [ true, %if.end.return_crit_edge31 ], [ true, %if.end.return_crit_edge32 ], [ true, %if.end.return_crit_edge33 ], [ true, %if.end.return_crit_edge34 ], [ true, %if.end.return_crit_edge35 ], [ true, %if.end.return_crit_edge36 ], [ true, %if.end.return_crit_edge37 ], [ true, %if.end.return_crit_edge38 ], [ true, %if.end.return_crit_edge39 ], [ true, %if.end.return_crit_edge40 ], [ true, %if.end.return_crit_edge41 ], [ true, %if.end.return_crit_edge42 ], [ true, %if.end.return_crit_edge43 ], [ true, %if.end.return_crit_edge44 ], [ true, %if.end.return_crit_edge45 ], [ true, %if.end.return_crit_edge46 ], [ true, %if.end.return_crit_edge47 ], [ true, %if.end.return_crit_edge48 ], [ true, %if.end.return_crit_edge49 ], [ true, %if.end.return_crit_edge50 ], [ true, %if.end.return_crit_edge51 ], [ true, %if.end.return_crit_edge52 ], [ true, %if.end.return_crit_edge53 ], [ true, %if.end.return_crit_edge54 ], [ true, %if.end.return_crit_edge55 ], [ true, %if.end.return_crit_edge56 ], [ true, %if.end.return_crit_edge57 ], [ true, %if.end.return_crit_edge58 ], [ true, %if.end.return_crit_edge59 ], [ true, %if.end.return_crit_edge60 ], [ true, %if.end.return_crit_edge61 ], [ true, %if.end.return_crit_edge62 ], [ true, %if.end.return_crit_edge63 ], [ true, %if.end.return_crit_edge64 ], [ true, %if.end.return_crit_edge65 ], [ true, %if.end.return_crit_edge66 ], [ true, %if.end.return_crit_edge67 ], [ true, %if.end.return_crit_edge68 ], [ true, %if.end.return_crit_edge69 ], [ true, %if.end.return_crit_edge70 ], [ true, %if.end.return_crit_edge71 ], [ true, %if.end.return_crit_edge72 ], [ true, %if.end.return_crit_edge73 ], [ true, %if.end.return_crit_edge74 ], [ true, %if.end.return_crit_edge75 ], [ true, %if.end.return_crit_edge76 ], [ true, %if.end.return_crit_edge77 ], [ true, %if.end.return_crit_edge78 ], [ true, %if.end.return_crit_edge79 ], [ true, %if.end.return_crit_edge80 ], [ true, %if.end.return_crit_edge81 ], [ true, %if.end.return_crit_edge82 ], [ true, %if.end.return_crit_edge83 ], [ true, %if.end.return_crit_edge84 ], [ true, %if.end.return_crit_edge85 ], [ true, %if.end.return_crit_edge86 ], [ true, %if.end.return_crit_edge87 ], [ true, %if.end.return_crit_edge88 ], [ true, %if.end.return_crit_edge89 ], [ true, %if.end.return_crit_edge90 ], [ true, %if.end.return_crit_edge91 ], [ true, %if.end.return_crit_edge92 ], [ true, %if.end.return_crit_edge93 ]
  ret i1 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 304)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 304)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !62, !63, !64, !66, !67, !68, !70, !71, !73, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !100, !101, !103, !104, !106, !108, !110, !111, !112, !114, !116, !117, !118, !119, !120, !122, !123, !125, !127, !129, !131, !132, !133, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !153, !154, !155, !157, !159, !161, !162, !164, !166, !167, !169, !171, !172, !173, !175, !177, !178, !180, !182, !183, !185, !187, !188, !190, !192, !193, !195, !197, !199, !200, !201, !203, !204, !206, !208, !209, !211, !213, !214, !216, !218, !220, !222, !224, !226, !228, !230, !231, !232, !234, !236, !238, !240, !242, !243, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !269, !270, !271, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !307, !308, !310, !312, !314, !315, !317, !319, !320, !321, !323, !325, !327, !329, !331, !332, !333, !334, !336, !337, !338, !340, !341, !342, !343, !345, !347, !348, !349, !351, !352, !353, !355, !356, !357, !359, !360, !361, !363, !364, !365, !366, !368, !369, !370, !372, !373, !374, !376, !377, !378, !380, !381, !382, !384, !385, !386, !388, !389, !390, !392, !393, !394, !395, !397, !398, !399, !400, !402, !403, !404, !406, !407, !408, !410, !411, !412, !414, !415, !416, !417, !419, !421, !422, !423, !425, !426, !427, !429, !430, !431, !433, !434, !436, !437, !438, !440, !441, !442, !444, !445, !446, !447, !449, !450, !451, !453, !454, !455, !457, !458, !459, !460, !462, !464, !465, !466, !468, !469, !471, !472, !474, !475, !476, !478, !479, !481, !482, !483, !485, !486, !487, !488, !490, !491, !493, !494, !496, !497, !499, !500, !502, !503, !505, !506, !508, !509, !511, !512, !514, !515, !516, !518, !519, !521, !522, !524, !525, !527, !528, !530, !531, !533, !534, !536, !537, !539, !540, !542, !543, !545, !546, !548, !549, !551, !552, !554, !555, !556, !558, !559, !561, !562, !564, !565, !567, !568, !570, !571, !572, !573, !575, !576, !577, !579, !581, !582, !583, !585, !586, !587, !589, !590, !591, !593, !594, !595, !597, !598, !599, !601, !602, !603, !605, !607, !608, !609, !611, !612, !614, !616, !618}
!llvm.module.flags = !{!620, !621, !622, !623, !624, !625, !626, !627}
!llvm.ident = !{!628}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2765, i32 4}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2808, i32 4}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2822, i32 5}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2844, i32 5}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2848, i32 5}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @evergreen_dma_cs_parse._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @evergreen_dma_cs_parse._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2856, i32 5}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2873, i32 6}
!20 = !{ptr @evergreen_dma_cs_parse._entry.10, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @evergreen_dma_cs_parse._entry_ptr.12, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2878, i32 6}
!24 = !{ptr @evergreen_dma_cs_parse._entry.13, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @evergreen_dma_cs_parse._entry_ptr.15, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2913, i32 6}
!28 = !{ptr @evergreen_dma_cs_parse._entry.16, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @evergreen_dma_cs_parse._entry_ptr.18, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.20, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2918, i32 6}
!32 = !{ptr @evergreen_dma_cs_parse._entry.19, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @evergreen_dma_cs_parse._entry_ptr.21, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.23, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2932, i32 6}
!36 = !{ptr @evergreen_dma_cs_parse._entry.22, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @evergreen_dma_cs_parse._entry_ptr.24, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.26, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2937, i32 6}
!40 = !{ptr @evergreen_dma_cs_parse._entry.25, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @evergreen_dma_cs_parse._entry_ptr.27, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.28, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2951, i32 6}
!44 = !{ptr @.str.29, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2966, i32 6}
!46 = !{ptr @.str.31, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2976, i32 6}
!48 = !{ptr @evergreen_dma_cs_parse._entry.30, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @evergreen_dma_cs_parse._entry_ptr.32, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.34, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2981, i32 6}
!52 = !{ptr @evergreen_dma_cs_parse._entry.33, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @evergreen_dma_cs_parse._entry_ptr.35, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.37, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2986, i32 6}
!56 = !{ptr @evergreen_dma_cs_parse._entry.36, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @evergreen_dma_cs_parse._entry_ptr.38, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.39, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 3001, i32 6}
!60 = !{ptr @.str.41, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 3016, i32 6}
!62 = !{ptr @evergreen_dma_cs_parse._entry.40, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @evergreen_dma_cs_parse._entry_ptr.42, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.44, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 3021, i32 6}
!66 = !{ptr @evergreen_dma_cs_parse._entry.43, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @evergreen_dma_cs_parse._entry_ptr.45, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @evergreen_dma_cs_parse._entry.46, !69, !"_entry", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 3026, i32 6}
!70 = !{ptr @evergreen_dma_cs_parse._entry_ptr.47, !69, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.48, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 3040, i32 6}
!73 = !{ptr @.str.49, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 3063, i32 6}
!75 = !{ptr @.str.51, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 3078, i32 6}
!77 = !{ptr @evergreen_dma_cs_parse._entry.50, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @evergreen_dma_cs_parse._entry_ptr.52, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.54, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 3083, i32 6}
!81 = !{ptr @evergreen_dma_cs_parse._entry.53, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @evergreen_dma_cs_parse._entry_ptr.55, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.57, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 3088, i32 6}
!85 = !{ptr @evergreen_dma_cs_parse._entry.56, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @evergreen_dma_cs_parse._entry_ptr.58, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.60, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 3124, i32 6}
!89 = !{ptr @evergreen_dma_cs_parse._entry.59, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @evergreen_dma_cs_parse._entry_ptr.61, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.63, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 3129, i32 6}
!93 = !{ptr @evergreen_dma_cs_parse._entry.62, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @evergreen_dma_cs_parse._entry_ptr.64, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @evergreen_dma_cs_parse._entry.65, !96, !"_entry", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 3165, i32 6}
!97 = !{ptr @evergreen_dma_cs_parse._entry_ptr.66, !96, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @evergreen_dma_cs_parse._entry.67, !99, !"_entry", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 3170, i32 6}
!100 = !{ptr @evergreen_dma_cs_parse._entry_ptr.68, !99, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @evergreen_dma_cs_parse._entry.69, !102, !"_entry", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 3175, i32 6}
!103 = !{ptr @evergreen_dma_cs_parse._entry_ptr.70, !102, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.71, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 3186, i32 5}
!106 = !{ptr @.str.72, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 3193, i32 5}
!108 = !{ptr @.str.74, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 3199, i32 5}
!110 = !{ptr @evergreen_dma_cs_parse._entry.73, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @evergreen_dma_cs_parse._entry_ptr.75, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.76, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 3211, i32 4}
!114 = !{ptr @.str.77, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 3533, i32 4}
!116 = !{ptr @.str.78, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.79, !115, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @evergreen_ib_parse._entry, !115, !"_entry", i1 false, i1 false}
!119 = !{ptr @evergreen_ib_parse._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @evergreen_ib_parse._entry.80, !121, !"_entry", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 3545, i32 4}
!122 = !{ptr @evergreen_ib_parse._entry_ptr.81, !121, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @cayman_reg_safe_bm, !124, !"cayman_reg_safe_bm", i1 false, i1 false}
!124 = !{!"./drivers/gpu/drm/radeon/cayman_reg_safe.h", i32 1, i32 23}
!125 = !{ptr @evergreen_reg_safe_bm, !126, !"evergreen_reg_safe_bm", i1 false, i1 false}
!126 = !{!"./drivers/gpu/drm/radeon/evergreen_reg_safe.h", i32 1, i32 23}
!127 = !{ptr @.str.82, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1057, i32 4}
!129 = !{ptr @.str.83, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1063, i32 3}
!131 = !{ptr @.str.84, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @evergreen_packet0_check._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @evergreen_packet0_check._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @evergreen_cs_packet_parse_vline.vline_start_end, !135, !"vline_start_end", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1027, i32 18}
!136 = !{ptr @evergreen_cs_packet_parse_vline.vline_status, !137, !"vline_status", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1035, i32 18}
!138 = !{ptr @.str.85, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1796, i32 4}
!140 = !{ptr @.str.86, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1808, i32 4}
!142 = !{ptr @.str.87, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1828, i32 4}
!144 = !{ptr @.str.88, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1836, i32 4}
!146 = !{ptr @.str.89, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1842, i32 4}
!148 = !{ptr @.str.90, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1855, i32 4}
!150 = !{ptr @.str.91, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1873, i32 4}
!152 = !{ptr @.str.92, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @evergreen_packet3_check._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @evergreen_packet3_check._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.93, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1881, i32 4}
!157 = !{ptr @.str.94, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1890, i32 4}
!159 = !{ptr @evergreen_packet3_check._entry.95, !160, !"_entry", i1 false, i1 false}
!160 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1908, i32 4}
!161 = !{ptr @evergreen_packet3_check._entry_ptr.96, !160, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.97, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1918, i32 4}
!164 = !{ptr @evergreen_packet3_check._entry.98, !165, !"_entry", i1 false, i1 false}
!165 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1936, i32 4}
!166 = !{ptr @evergreen_packet3_check._entry_ptr.99, !165, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.100, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1943, i32 4}
!169 = !{ptr @.str.102, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1948, i32 4}
!171 = !{ptr @evergreen_packet3_check._entry.101, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @evergreen_packet3_check._entry_ptr.103, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.104, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1954, i32 4}
!175 = !{ptr @evergreen_packet3_check._entry.105, !176, !"_entry", i1 false, i1 false}
!176 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1959, i32 4}
!177 = !{ptr @evergreen_packet3_check._entry_ptr.106, !176, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.107, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1965, i32 4}
!180 = !{ptr @evergreen_packet3_check._entry.108, !181, !"_entry", i1 false, i1 false}
!181 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1970, i32 4}
!182 = !{ptr @evergreen_packet3_check._entry_ptr.109, !181, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.110, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1976, i32 4}
!185 = !{ptr @evergreen_packet3_check._entry.111, !186, !"_entry", i1 false, i1 false}
!186 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1981, i32 4}
!187 = !{ptr @evergreen_packet3_check._entry_ptr.112, !186, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.113, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1987, i32 4}
!190 = !{ptr @evergreen_packet3_check._entry.114, !191, !"_entry", i1 false, i1 false}
!191 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1992, i32 4}
!192 = !{ptr @evergreen_packet3_check._entry_ptr.115, !191, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.116, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2006, i32 4}
!195 = !{ptr @.str.117, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2040, i32 4}
!197 = !{ptr @.str.119, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2045, i32 4}
!199 = !{ptr @evergreen_packet3_check._entry.118, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @evergreen_packet3_check._entry_ptr.120, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @evergreen_packet3_check._entry.121, !202, !"_entry", i1 false, i1 false}
!202 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2052, i32 4}
!203 = !{ptr @evergreen_packet3_check._entry_ptr.122, !202, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.123, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2059, i32 4}
!206 = !{ptr @evergreen_packet3_check._entry.124, !207, !"_entry", i1 false, i1 false}
!207 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2064, i32 4}
!208 = !{ptr @evergreen_packet3_check._entry_ptr.125, !207, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.126, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2070, i32 4}
!211 = !{ptr @evergreen_packet3_check._entry.127, !212, !"_entry", i1 false, i1 false}
!212 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2081, i32 4}
!213 = !{ptr @evergreen_packet3_check._entry_ptr.128, !212, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.129, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2087, i32 4}
!216 = !{ptr @.str.130, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2107, i32 4}
!218 = !{ptr @.str.131, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2116, i32 4}
!220 = !{ptr @.str.132, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2130, i32 5}
!222 = !{ptr @.str.133, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2138, i32 5}
!224 = !{ptr @.str.134, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2143, i32 5}
!226 = !{ptr @.str.135, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2150, i32 6}
!228 = !{ptr @.str.137, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2160, i32 6}
!230 = !{ptr @evergreen_packet3_check._entry.136, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @evergreen_packet3_check._entry_ptr.138, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.139, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2168, i32 5}
!234 = !{ptr @.str.140, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2176, i32 5}
!236 = !{ptr @.str.141, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2182, i32 5}
!238 = !{ptr @.str.142, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2188, i32 6}
!240 = !{ptr @.str.144, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2198, i32 6}
!242 = !{ptr @evergreen_packet3_check._entry.143, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @evergreen_packet3_check._entry_ptr.145, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.146, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2206, i32 5}
!246 = !{ptr @.str.147, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2214, i32 4}
!248 = !{ptr @.str.148, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2220, i32 4}
!250 = !{ptr @.str.149, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2236, i32 4}
!252 = !{ptr @.str.150, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2260, i32 4}
!254 = !{ptr @.str.151, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2282, i32 4}
!256 = !{ptr @.str.152, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2305, i32 4}
!258 = !{ptr @.str.153, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2322, i32 4}
!260 = !{ptr @.str.154, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2335, i32 4}
!262 = !{ptr @.str.155, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2356, i32 6}
!264 = !{ptr @.str.156, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2412, i32 6}
!266 = !{ptr @.str.157, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2419, i32 6}
!268 = !{ptr @evergreen_packet3_check._rs, !267, !"_rs", i1 false, i1 false}
!269 = !{ptr @.str.159, !267, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @evergreen_packet3_check._entry.158, !267, !"_entry", i1 false, i1 false}
!271 = !{ptr @evergreen_packet3_check._entry_ptr.160, !267, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.161, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2446, i32 4}
!274 = !{ptr @.str.162, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2456, i32 4}
!276 = !{ptr @.str.163, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2466, i32 4}
!278 = !{ptr @.str.164, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2472, i32 4}
!280 = !{ptr @.str.165, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2486, i32 4}
!282 = !{ptr @.str.166, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2494, i32 5}
!284 = !{ptr @.str.167, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2500, i32 5}
!286 = !{ptr @.str.168, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2513, i32 5}
!288 = !{ptr @.str.169, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2519, i32 5}
!290 = !{ptr @.str.170, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2533, i32 4}
!292 = !{ptr @.str.171, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2538, i32 4}
!294 = !{ptr @.str.172, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2544, i32 4}
!296 = !{ptr @.str.173, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2548, i32 4}
!298 = !{ptr @.str.174, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2559, i32 4}
!300 = !{ptr @.str.175, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2567, i32 5}
!302 = !{ptr @.str.176, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2573, i32 5}
!304 = !{ptr @.str.178, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2584, i32 5}
!306 = !{ptr @evergreen_packet3_check._entry.177, !305, !"_entry", i1 false, i1 false}
!307 = !{ptr @evergreen_packet3_check._entry_ptr.179, !305, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @.str.180, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2594, i32 5}
!310 = !{ptr @.str.181, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2600, i32 5}
!312 = !{ptr @evergreen_packet3_check._entry.182, !313, !"_entry", i1 false, i1 false}
!313 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2611, i32 5}
!314 = !{ptr @evergreen_packet3_check._entry_ptr.183, !313, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.184, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2623, i32 4}
!317 = !{ptr @.str.186, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2633, i32 4}
!319 = !{ptr @evergreen_packet3_check._entry.185, !318, !"_entry", i1 false, i1 false}
!320 = !{ptr @evergreen_packet3_check._entry_ptr.187, !318, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.188, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2644, i32 5}
!323 = !{ptr @.str.189, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2657, i32 4}
!325 = !{ptr @.str.190, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 2665, i32 3}
!327 = !{ptr @.str.191, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 952, i32 7}
!329 = !{ptr @.str.192, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 958, i32 6}
!331 = !{ptr @.str.193, !330, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @evergreen_cs_track_check._entry, !330, !"_entry", i1 false, i1 false}
!333 = !{ptr @evergreen_cs_track_check._entry_ptr, !330, !"_entry_ptr", i1 false, i1 false}
!334 = !{ptr @.str.195, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 980, i32 6}
!336 = !{ptr @evergreen_cs_track_check._entry.194, !335, !"_entry", i1 false, i1 false}
!337 = !{ptr @evergreen_cs_track_check._entry_ptr.196, !335, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @.str.197, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 416, i32 3}
!340 = !{ptr @.str.198, !339, !"<string literal>", i1 false, i1 false}
!341 = !{ptr @evergreen_cs_track_validate_cb._entry, !339, !"_entry", i1 false, i1 false}
!342 = !{ptr @evergreen_cs_track_validate_cb._entry_ptr, !339, !"_entry_ptr", i1 false, i1 false}
!343 = !{ptr @.str.199, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 422, i32 51}
!345 = !{ptr @.str.201, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 429, i32 3}
!347 = !{ptr @evergreen_cs_track_validate_cb._entry.200, !346, !"_entry", i1 false, i1 false}
!348 = !{ptr @evergreen_cs_track_validate_cb._entry_ptr.202, !346, !"_entry_ptr", i1 false, i1 false}
!349 = !{ptr @.str.204, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 438, i32 3}
!351 = !{ptr @evergreen_cs_track_validate_cb._entry.203, !350, !"_entry", i1 false, i1 false}
!352 = !{ptr @evergreen_cs_track_validate_cb._entry_ptr.205, !350, !"_entry_ptr", i1 false, i1 false}
!353 = !{ptr @.str.207, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 478, i32 3}
!355 = !{ptr @evergreen_cs_track_validate_cb._entry.206, !354, !"_entry", i1 false, i1 false}
!356 = !{ptr @evergreen_cs_track_validate_cb._entry_ptr.208, !354, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @.str.210, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 483, i32 3}
!359 = !{ptr @evergreen_cs_track_validate_cb._entry.209, !358, !"_entry", i1 false, i1 false}
!360 = !{ptr @evergreen_cs_track_validate_cb._entry_ptr.211, !358, !"_entry_ptr", i1 false, i1 false}
!361 = !{ptr @.str.212, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 332, i32 3}
!363 = !{ptr @.str.213, !362, !"<string literal>", i1 false, i1 false}
!364 = !{ptr @evergreen_surface_value_conv_check._entry, !362, !"_entry", i1 false, i1 false}
!365 = !{ptr @evergreen_surface_value_conv_check._entry_ptr, !362, !"_entry_ptr", i1 false, i1 false}
!366 = !{ptr @.str.215, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 343, i32 3}
!368 = !{ptr @evergreen_surface_value_conv_check._entry.214, !367, !"_entry", i1 false, i1 false}
!369 = !{ptr @evergreen_surface_value_conv_check._entry_ptr.216, !367, !"_entry_ptr", i1 false, i1 false}
!370 = !{ptr @.str.218, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 353, i32 3}
!372 = !{ptr @evergreen_surface_value_conv_check._entry.217, !371, !"_entry", i1 false, i1 false}
!373 = !{ptr @evergreen_surface_value_conv_check._entry_ptr.219, !371, !"_entry_ptr", i1 false, i1 false}
!374 = !{ptr @.str.221, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 363, i32 3}
!376 = !{ptr @evergreen_surface_value_conv_check._entry.220, !375, !"_entry", i1 false, i1 false}
!377 = !{ptr @evergreen_surface_value_conv_check._entry_ptr.222, !375, !"_entry_ptr", i1 false, i1 false}
!378 = !{ptr @.str.224, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 373, i32 3}
!380 = !{ptr @evergreen_surface_value_conv_check._entry.223, !379, !"_entry", i1 false, i1 false}
!381 = !{ptr @evergreen_surface_value_conv_check._entry_ptr.225, !379, !"_entry_ptr", i1 false, i1 false}
!382 = !{ptr @.str.227, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 386, i32 3}
!384 = !{ptr @evergreen_surface_value_conv_check._entry.226, !383, !"_entry", i1 false, i1 false}
!385 = !{ptr @evergreen_surface_value_conv_check._entry_ptr.228, !383, !"_entry_ptr", i1 false, i1 false}
!386 = !{ptr @.str.229, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 313, i32 3}
!388 = !{ptr @evergreen_surface_check._entry, !387, !"_entry", i1 false, i1 false}
!389 = !{ptr @evergreen_surface_check._entry_ptr, !387, !"_entry_ptr", i1 false, i1 false}
!390 = !{ptr @.str.230, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 214, i32 4}
!392 = !{ptr @.str.231, !391, !"<string literal>", i1 false, i1 false}
!393 = !{ptr @evergreen_surface_check_linear_aligned._entry, !391, !"_entry", i1 false, i1 false}
!394 = !{ptr @evergreen_surface_check_linear_aligned._entry_ptr, !391, !"_entry_ptr", i1 false, i1 false}
!395 = !{ptr @.str.232, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 237, i32 4}
!397 = !{ptr @.str.233, !396, !"<string literal>", i1 false, i1 false}
!398 = !{ptr @evergreen_surface_check_1d._entry, !396, !"_entry", i1 false, i1 false}
!399 = !{ptr @evergreen_surface_check_1d._entry_ptr, !396, !"_entry_ptr", i1 false, i1 false}
!400 = !{ptr @.str.235, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 245, i32 4}
!402 = !{ptr @evergreen_surface_check_1d._entry.234, !401, !"_entry", i1 false, i1 false}
!403 = !{ptr @evergreen_surface_check_1d._entry_ptr.236, !401, !"_entry_ptr", i1 false, i1 false}
!404 = !{ptr @.str.237, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 280, i32 4}
!406 = !{ptr @evergreen_surface_check_2d._entry, !405, !"_entry", i1 false, i1 false}
!407 = !{ptr @evergreen_surface_check_2d._entry_ptr, !405, !"_entry_ptr", i1 false, i1 false}
!408 = !{ptr @.str.239, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 287, i32 4}
!410 = !{ptr @evergreen_surface_check_2d._entry.238, !409, !"_entry", i1 false, i1 false}
!411 = !{ptr @evergreen_surface_check_2d._entry_ptr.240, !409, !"_entry_ptr", i1 false, i1 false}
!412 = !{ptr @.str.241, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 583, i32 3}
!414 = !{ptr @.str.242, !413, !"<string literal>", i1 false, i1 false}
!415 = !{ptr @evergreen_cs_track_validate_stencil._entry, !413, !"_entry", i1 false, i1 false}
!416 = !{ptr @evergreen_cs_track_validate_stencil._entry_ptr, !413, !"_entry_ptr", i1 false, i1 false}
!417 = !{ptr @.str.243, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 590, i32 51}
!419 = !{ptr @.str.245, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 604, i32 4}
!421 = !{ptr @evergreen_cs_track_validate_stencil._entry.244, !420, !"_entry", i1 false, i1 false}
!422 = !{ptr @evergreen_cs_track_validate_stencil._entry_ptr.246, !420, !"_entry_ptr", i1 false, i1 false}
!423 = !{ptr @.str.248, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 613, i32 3}
!425 = !{ptr @evergreen_cs_track_validate_stencil._entry.247, !424, !"_entry", i1 false, i1 false}
!426 = !{ptr @evergreen_cs_track_validate_stencil._entry_ptr.249, !424, !"_entry_ptr", i1 false, i1 false}
!427 = !{ptr @.str.251, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 619, i32 3}
!429 = !{ptr @evergreen_cs_track_validate_stencil._entry.250, !428, !"_entry", i1 false, i1 false}
!430 = !{ptr @evergreen_cs_track_validate_stencil._entry_ptr.252, !428, !"_entry_ptr", i1 false, i1 false}
!431 = !{ptr @evergreen_cs_track_validate_stencil._entry.253, !432, !"_entry", i1 false, i1 false}
!432 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 624, i32 3}
!433 = !{ptr @evergreen_cs_track_validate_stencil._entry_ptr.254, !432, !"_entry_ptr", i1 false, i1 false}
!434 = !{ptr @.str.256, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 632, i32 3}
!436 = !{ptr @evergreen_cs_track_validate_stencil._entry.255, !435, !"_entry", i1 false, i1 false}
!437 = !{ptr @evergreen_cs_track_validate_stencil._entry_ptr.257, !435, !"_entry_ptr", i1 false, i1 false}
!438 = !{ptr @.str.259, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 638, i32 3}
!440 = !{ptr @evergreen_cs_track_validate_stencil._entry.258, !439, !"_entry", i1 false, i1 false}
!441 = !{ptr @evergreen_cs_track_validate_stencil._entry_ptr.260, !439, !"_entry_ptr", i1 false, i1 false}
!442 = !{ptr @.str.261, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 502, i32 3}
!444 = !{ptr @.str.262, !443, !"<string literal>", i1 false, i1 false}
!445 = !{ptr @evergreen_cs_track_validate_htile._entry, !443, !"_entry", i1 false, i1 false}
!446 = !{ptr @evergreen_cs_track_validate_htile._entry_ptr, !443, !"_entry_ptr", i1 false, i1 false}
!447 = !{ptr @.str.264, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 539, i32 4}
!449 = !{ptr @evergreen_cs_track_validate_htile._entry.263, !448, !"_entry", i1 false, i1 false}
!450 = !{ptr @evergreen_cs_track_validate_htile._entry_ptr.265, !448, !"_entry_ptr", i1 false, i1 false}
!451 = !{ptr @.str.267, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 552, i32 3}
!453 = !{ptr @evergreen_cs_track_validate_htile._entry.266, !452, !"_entry", i1 false, i1 false}
!454 = !{ptr @evergreen_cs_track_validate_htile._entry_ptr.268, !452, !"_entry_ptr", i1 false, i1 false}
!455 = !{ptr @.str.269, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 688, i32 3}
!457 = !{ptr @.str.270, !456, !"<string literal>", i1 false, i1 false}
!458 = !{ptr @evergreen_cs_track_validate_depth._entry, !456, !"_entry", i1 false, i1 false}
!459 = !{ptr @evergreen_cs_track_validate_depth._entry_ptr, !456, !"_entry_ptr", i1 false, i1 false}
!460 = !{ptr @.str.271, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 693, i32 51}
!462 = !{ptr @.str.273, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 695, i32 3}
!464 = !{ptr @evergreen_cs_track_validate_depth._entry.272, !463, !"_entry", i1 false, i1 false}
!465 = !{ptr @evergreen_cs_track_validate_depth._entry_ptr.274, !463, !"_entry_ptr", i1 false, i1 false}
!466 = !{ptr @evergreen_cs_track_validate_depth._entry.275, !467, !"_entry", i1 false, i1 false}
!467 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 703, i32 3}
!468 = !{ptr @evergreen_cs_track_validate_depth._entry_ptr.276, !467, !"_entry_ptr", i1 false, i1 false}
!469 = !{ptr @evergreen_cs_track_validate_depth._entry.277, !470, !"_entry", i1 false, i1 false}
!470 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 711, i32 3}
!471 = !{ptr @evergreen_cs_track_validate_depth._entry_ptr.278, !470, !"_entry_ptr", i1 false, i1 false}
!472 = !{ptr @.str.280, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 717, i32 3}
!474 = !{ptr @evergreen_cs_track_validate_depth._entry.279, !473, !"_entry", i1 false, i1 false}
!475 = !{ptr @evergreen_cs_track_validate_depth._entry_ptr.281, !473, !"_entry_ptr", i1 false, i1 false}
!476 = !{ptr @evergreen_cs_track_validate_depth._entry.282, !477, !"_entry", i1 false, i1 false}
!477 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 727, i32 3}
!478 = !{ptr @evergreen_cs_track_validate_depth._entry_ptr.283, !477, !"_entry_ptr", i1 false, i1 false}
!479 = !{ptr @.str.285, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 733, i32 3}
!481 = !{ptr @evergreen_cs_track_validate_depth._entry.284, !480, !"_entry", i1 false, i1 false}
!482 = !{ptr @evergreen_cs_track_validate_depth._entry_ptr.286, !480, !"_entry_ptr", i1 false, i1 false}
!483 = !{ptr @.str.287, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1144, i32 4}
!485 = !{ptr @.str.288, !484, !"<string literal>", i1 false, i1 false}
!486 = !{ptr @evergreen_cs_handle_reg._entry, !484, !"_entry", i1 false, i1 false}
!487 = !{ptr @evergreen_cs_handle_reg._entry_ptr, !484, !"_entry_ptr", i1 false, i1 false}
!488 = !{ptr @evergreen_cs_handle_reg._entry.289, !489, !"_entry", i1 false, i1 false}
!489 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1156, i32 4}
!490 = !{ptr @evergreen_cs_handle_reg._entry_ptr.290, !489, !"_entry_ptr", i1 false, i1 false}
!491 = !{ptr @evergreen_cs_handle_reg._entry.291, !492, !"_entry", i1 false, i1 false}
!492 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1163, i32 4}
!493 = !{ptr @evergreen_cs_handle_reg._entry_ptr.292, !492, !"_entry_ptr", i1 false, i1 false}
!494 = !{ptr @evergreen_cs_handle_reg._entry.293, !495, !"_entry", i1 false, i1 false}
!495 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1173, i32 5}
!496 = !{ptr @evergreen_cs_handle_reg._entry_ptr.294, !495, !"_entry_ptr", i1 false, i1 false}
!497 = !{ptr @evergreen_cs_handle_reg._entry.295, !498, !"_entry", i1 false, i1 false}
!498 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1215, i32 4}
!499 = !{ptr @evergreen_cs_handle_reg._entry_ptr.296, !498, !"_entry_ptr", i1 false, i1 false}
!500 = !{ptr @evergreen_cs_handle_reg._entry.297, !501, !"_entry", i1 false, i1 false}
!501 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1227, i32 4}
!502 = !{ptr @evergreen_cs_handle_reg._entry_ptr.298, !501, !"_entry_ptr", i1 false, i1 false}
!503 = !{ptr @evergreen_cs_handle_reg._entry.299, !504, !"_entry", i1 false, i1 false}
!504 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1239, i32 4}
!505 = !{ptr @evergreen_cs_handle_reg._entry_ptr.300, !504, !"_entry_ptr", i1 false, i1 false}
!506 = !{ptr @evergreen_cs_handle_reg._entry.301, !507, !"_entry", i1 false, i1 false}
!507 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1251, i32 4}
!508 = !{ptr @evergreen_cs_handle_reg._entry_ptr.302, !507, !"_entry_ptr", i1 false, i1 false}
!509 = !{ptr @evergreen_cs_handle_reg._entry.303, !510, !"_entry", i1 false, i1 false}
!510 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1274, i32 4}
!511 = !{ptr @evergreen_cs_handle_reg._entry_ptr.304, !510, !"_entry_ptr", i1 false, i1 false}
!512 = !{ptr @.str.306, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1296, i32 4}
!514 = !{ptr @evergreen_cs_handle_reg._entry.305, !513, !"_entry", i1 false, i1 false}
!515 = !{ptr @evergreen_cs_handle_reg._entry_ptr.307, !513, !"_entry_ptr", i1 false, i1 false}
!516 = !{ptr @evergreen_cs_handle_reg._entry.308, !517, !"_entry", i1 false, i1 false}
!517 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1312, i32 4}
!518 = !{ptr @evergreen_cs_handle_reg._entry_ptr.309, !517, !"_entry_ptr", i1 false, i1 false}
!519 = !{ptr @evergreen_cs_handle_reg._entry.310, !520, !"_entry", i1 false, i1 false}
!520 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1321, i32 4}
!521 = !{ptr @evergreen_cs_handle_reg._entry_ptr.311, !520, !"_entry_ptr", i1 false, i1 false}
!522 = !{ptr @evergreen_cs_handle_reg._entry.312, !523, !"_entry", i1 false, i1 false}
!523 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1361, i32 5}
!524 = !{ptr @evergreen_cs_handle_reg._entry_ptr.313, !523, !"_entry_ptr", i1 false, i1 false}
!525 = !{ptr @evergreen_cs_handle_reg._entry.314, !526, !"_entry", i1 false, i1 false}
!526 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1379, i32 5}
!527 = !{ptr @evergreen_cs_handle_reg._entry_ptr.315, !526, !"_entry_ptr", i1 false, i1 false}
!528 = !{ptr @evergreen_cs_handle_reg._entry.316, !529, !"_entry", i1 false, i1 false}
!529 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1440, i32 4}
!530 = !{ptr @evergreen_cs_handle_reg._entry_ptr.317, !529, !"_entry_ptr", i1 false, i1 false}
!531 = !{ptr @evergreen_cs_handle_reg._entry.318, !532, !"_entry", i1 false, i1 false}
!532 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1468, i32 4}
!533 = !{ptr @evergreen_cs_handle_reg._entry_ptr.319, !532, !"_entry_ptr", i1 false, i1 false}
!534 = !{ptr @evergreen_cs_handle_reg._entry.320, !535, !"_entry", i1 false, i1 false}
!535 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1501, i32 4}
!536 = !{ptr @evergreen_cs_handle_reg._entry_ptr.321, !535, !"_entry_ptr", i1 false, i1 false}
!537 = !{ptr @evergreen_cs_handle_reg._entry.322, !538, !"_entry", i1 false, i1 false}
!538 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1518, i32 4}
!539 = !{ptr @evergreen_cs_handle_reg._entry_ptr.323, !538, !"_entry_ptr", i1 false, i1 false}
!540 = !{ptr @evergreen_cs_handle_reg._entry.324, !541, !"_entry", i1 false, i1 false}
!541 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1556, i32 4}
!542 = !{ptr @evergreen_cs_handle_reg._entry_ptr.325, !541, !"_entry_ptr", i1 false, i1 false}
!543 = !{ptr @evergreen_cs_handle_reg._entry.326, !544, !"_entry", i1 false, i1 false}
!544 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1572, i32 4}
!545 = !{ptr @evergreen_cs_handle_reg._entry_ptr.327, !544, !"_entry_ptr", i1 false, i1 false}
!546 = !{ptr @evergreen_cs_handle_reg._entry.328, !547, !"_entry", i1 false, i1 false}
!547 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1585, i32 4}
!548 = !{ptr @evergreen_cs_handle_reg._entry_ptr.329, !547, !"_entry_ptr", i1 false, i1 false}
!549 = !{ptr @evergreen_cs_handle_reg._entry.330, !550, !"_entry", i1 false, i1 false}
!550 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1703, i32 4}
!551 = !{ptr @evergreen_cs_handle_reg._entry_ptr.331, !550, !"_entry_ptr", i1 false, i1 false}
!552 = !{ptr @.str.333, !553, !"<string literal>", i1 false, i1 false}
!553 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1711, i32 4}
!554 = !{ptr @evergreen_cs_handle_reg._entry.332, !553, !"_entry", i1 false, i1 false}
!555 = !{ptr @evergreen_cs_handle_reg._entry_ptr.334, !553, !"_entry_ptr", i1 false, i1 false}
!556 = !{ptr @evergreen_cs_handle_reg._entry.335, !557, !"_entry", i1 false, i1 false}
!557 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1717, i32 4}
!558 = !{ptr @evergreen_cs_handle_reg._entry_ptr.336, !557, !"_entry_ptr", i1 false, i1 false}
!559 = !{ptr @evergreen_cs_handle_reg._entry.337, !560, !"_entry", i1 false, i1 false}
!560 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1725, i32 4}
!561 = !{ptr @evergreen_cs_handle_reg._entry_ptr.338, !560, !"_entry_ptr", i1 false, i1 false}
!562 = !{ptr @evergreen_cs_handle_reg._entry.339, !563, !"_entry", i1 false, i1 false}
!563 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1731, i32 4}
!564 = !{ptr @evergreen_cs_handle_reg._entry_ptr.340, !563, !"_entry_ptr", i1 false, i1 false}
!565 = !{ptr @evergreen_cs_handle_reg._entry.341, !566, !"_entry", i1 false, i1 false}
!566 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 1741, i32 3}
!567 = !{ptr @evergreen_cs_handle_reg._entry_ptr.342, !566, !"_entry_ptr", i1 false, i1 false}
!568 = !{ptr @.str.343, !569, !"<string literal>", i1 false, i1 false}
!569 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 792, i32 3}
!570 = !{ptr @.str.344, !569, !"<string literal>", i1 false, i1 false}
!571 = !{ptr @evergreen_cs_track_validate_texture._entry, !569, !"_entry", i1 false, i1 false}
!572 = !{ptr @evergreen_cs_track_validate_texture._entry_ptr, !569, !"_entry_ptr", i1 false, i1 false}
!573 = !{ptr @.str.346, !574, !"<string literal>", i1 false, i1 false}
!574 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 813, i32 3}
!575 = !{ptr @evergreen_cs_track_validate_texture._entry.345, !574, !"_entry", i1 false, i1 false}
!576 = !{ptr @evergreen_cs_track_validate_texture._entry_ptr.347, !574, !"_entry_ptr", i1 false, i1 false}
!577 = !{ptr @.str.348, !578, !"<string literal>", i1 false, i1 false}
!578 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 818, i32 51}
!579 = !{ptr @.str.350, !580, !"<string literal>", i1 false, i1 false}
!580 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 829, i32 3}
!581 = !{ptr @evergreen_cs_track_validate_texture._entry.349, !580, !"_entry", i1 false, i1 false}
!582 = !{ptr @evergreen_cs_track_validate_texture._entry_ptr.351, !580, !"_entry_ptr", i1 false, i1 false}
!583 = !{ptr @.str.353, !584, !"<string literal>", i1 false, i1 false}
!584 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 837, i32 3}
!585 = !{ptr @evergreen_cs_track_validate_texture._entry.352, !584, !"_entry", i1 false, i1 false}
!586 = !{ptr @evergreen_cs_track_validate_texture._entry_ptr.354, !584, !"_entry_ptr", i1 false, i1 false}
!587 = !{ptr @.str.356, !588, !"<string literal>", i1 false, i1 false}
!588 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 842, i32 3}
!589 = !{ptr @evergreen_cs_track_validate_texture._entry.355, !588, !"_entry", i1 false, i1 false}
!590 = !{ptr @evergreen_cs_track_validate_texture._entry_ptr.357, !588, !"_entry_ptr", i1 false, i1 false}
!591 = !{ptr @.str.359, !592, !"<string literal>", i1 false, i1 false}
!592 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 852, i32 3}
!593 = !{ptr @evergreen_cs_track_validate_texture._entry.358, !592, !"_entry", i1 false, i1 false}
!594 = !{ptr @evergreen_cs_track_validate_texture._entry_ptr.360, !592, !"_entry_ptr", i1 false, i1 false}
!595 = !{ptr @.str.362, !596, !"<string literal>", i1 false, i1 false}
!596 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 863, i32 4}
!597 = !{ptr @evergreen_cs_track_validate_texture._entry.361, !596, !"_entry", i1 false, i1 false}
!598 = !{ptr @evergreen_cs_track_validate_texture._entry_ptr.363, !596, !"_entry_ptr", i1 false, i1 false}
!599 = !{ptr @.str.365, !600, !"<string literal>", i1 false, i1 false}
!600 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 894, i32 4}
!601 = !{ptr @evergreen_cs_track_validate_texture._entry.364, !600, !"_entry", i1 false, i1 false}
!602 = !{ptr @evergreen_cs_track_validate_texture._entry_ptr.366, !600, !"_entry_ptr", i1 false, i1 false}
!603 = !{ptr @.str.367, !604, !"<string literal>", i1 false, i1 false}
!604 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 901, i32 41}
!605 = !{ptr @.str.369, !606, !"<string literal>", i1 false, i1 false}
!606 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 912, i32 4}
!607 = !{ptr @evergreen_cs_track_validate_texture._entry.368, !606, !"_entry", i1 false, i1 false}
!608 = !{ptr @evergreen_cs_track_validate_texture._entry_ptr.370, !606, !"_entry_ptr", i1 false, i1 false}
!609 = !{ptr @evergreen_cs_track_validate_texture._entry.371, !610, !"_entry", i1 false, i1 false}
!610 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 919, i32 4}
!611 = !{ptr @evergreen_cs_track_validate_texture._entry_ptr.372, !610, !"_entry_ptr", i1 false, i1 false}
!612 = !{ptr @.str.373, !613, !"<string literal>", i1 false, i1 false}
!613 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 3360, i32 4}
!614 = !{ptr @.str.374, !615, !"<string literal>", i1 false, i1 false}
!615 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 3457, i32 7}
!616 = !{ptr @.str.375, !617, !"<string literal>", i1 false, i1 false}
!617 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 3478, i32 7}
!618 = !{ptr @.str.376, !619, !"<string literal>", i1 false, i1 false}
!619 = !{!"../drivers/gpu/drm/radeon/evergreen_cs.c", i32 3342, i32 3}
!620 = !{i32 1, !"wchar_size", i32 2}
!621 = !{i32 1, !"min_enum_size", i32 4}
!622 = !{i32 8, !"branch-target-enforcement", i32 0}
!623 = !{i32 8, !"sign-return-address", i32 0}
!624 = !{i32 8, !"sign-return-address-all", i32 0}
!625 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!626 = !{i32 7, !"uwtable", i32 1}
!627 = !{i32 7, !"frame-pointer", i32 2}
!628 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!629 = !{!"auto-init"}
!630 = !{!"branch_weights", i32 1, i32 2000}
!631 = !{i8 0, i8 2}
