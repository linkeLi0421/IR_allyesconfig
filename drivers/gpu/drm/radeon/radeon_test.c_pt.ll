; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/radeon_test.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/radeon_test.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.radeon_asic = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.94, %struct.anon.95, [8 x ptr], %struct.anon.96, %struct.anon.97, %struct.anon.98, %struct.anon.99, %struct.anon.100, %struct.anon.101, %struct.anon.102, %struct.anon.103 }
%struct.anon.94 = type { ptr, ptr, ptr }
%struct.anon.95 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.96 = type { ptr, ptr }
%struct.anon.97 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.98 = type { ptr, i32, ptr, i32, ptr, i32 }
%struct.anon.99 = type { ptr, ptr }
%struct.anon.100 = type { ptr, ptr, ptr, ptr }
%struct.anon.101 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.102 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.103 = type { ptr, ptr }
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

@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to create semaphore\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to lock ring A %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Fence 1 signaled without waiting for semaphore.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to lock ring B %p\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to wait for sync fence 1\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Fence 2 signaled without waiting for semaphore.\0A\00", [47 x i8] zeroinitializer }, align 32
@radeon_test_ring_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014Error while testing ring sync (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"radeon_test_ring_sync\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/gpu/drm/radeon/radeon_test.c\00", [59 x i8] zeroinitializer }, align 32
@radeon_test_ring_sync._entry_ptr = internal global ptr @radeon_test_ring_sync._entry, section ".printk_index", align 4
@radeon_test_syncing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.8, i32 543, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016[drm] Testing syncing between rings %d and %d...\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"radeon_test_syncing\00", [44 x i8] zeroinitializer }, align 32
@radeon_test_syncing._entry_ptr = internal global ptr @radeon_test_syncing._entry, section ".printk_index", align 4
@radeon_test_syncing._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.8, i32 546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@radeon_test_syncing._entry_ptr.12 = internal global ptr @radeon_test_syncing._entry.11, section ".printk_index", align 4
@radeon_test_syncing._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.10, ptr @.str.8, i32 560, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016[drm] Testing syncing between rings %d, %d and %d...\0A\00", [40 x i8] zeroinitializer }, align 32
@radeon_test_syncing._entry_ptr.15 = internal global ptr @radeon_test_syncing._entry.13, section ".printk_index", align 4
@radeon_test_syncing._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.10, ptr @.str.8, i32 563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@radeon_test_syncing._entry_ptr.17 = internal global ptr @radeon_test_syncing._entry.16, section ".printk_index", align 4
@radeon_test_syncing._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.10, ptr @.str.8, i32 566, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@radeon_test_syncing._entry_ptr.19 = internal global ptr @radeon_test_syncing._entry.18, section ".printk_index", align 4
@radeon_test_syncing._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.10, ptr @.str.8, i32 569, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@radeon_test_syncing._entry_ptr.21 = internal global ptr @radeon_test_syncing._entry.20, section ".printk_index", align 4
@radeon_test_syncing._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.10, ptr @.str.8, i32 572, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@radeon_test_syncing._entry_ptr.23 = internal global ptr @radeon_test_syncing._entry.22, section ".printk_index", align 4
@radeon_test_syncing._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.10, ptr @.str.8, i32 575, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@radeon_test_syncing._entry_ptr.25 = internal global ptr @radeon_test_syncing._entry.24, section ".printk_index", align 4
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Unknown copy method\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to allocate %d pointers\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to create VRAM object\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to pin VRAM object\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to create GTT object %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to pin GTT object %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to map GTT object %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed GTT->VRAM copy %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to wait for GTT->VRAM fence %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to map VRAM object after copy %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"Incorrect GTT->VRAM copy %d: Got 0x%p, expected 0x%p (GTT/VRAM offset 0x%16llx/0x%16llx)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed VRAM->GTT copy %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to wait for VRAM->GTT fence %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to map GTT object after copy %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"Incorrect VRAM->GTT copy %d: Got 0x%p, expected 0x%p (VRAM/GTT offset 0x%16llx/0x%16llx)\0A\00", [38 x i8] zeroinitializer }, align 32
@radeon_do_test_moves._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.8, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\016[drm] Tested GTT->VRAM and VRAM->GTT copy for GTT offset 0x%llx\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"radeon_do_test_moves\00", [43 x i8] zeroinitializer }, align 32
@radeon_do_test_moves._entry_ptr = internal global ptr @radeon_do_test_moves._entry, section ".printk_index", align 4
@radeon_do_test_moves._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.8, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014Error while testing BO move\0A\00", [33 x i8] zeroinitializer }, align 32
@radeon_do_test_moves._entry_ptr.45 = internal global ptr @radeon_do_test_moves._entry.43, section ".printk_index", align 4
@radeon_bo_reserve._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.48, i32 71, ptr @.str.49, ptr @.str.50 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%p reserve failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"radeon_bo_reserve\00", [46 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/radeon/radeon_object.h\00", [57 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@radeon_bo_reserve._entry_ptr = internal global ptr @radeon_bo_reserve._entry, section ".printk_index", align 4
@.str.52 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to get dummy create msg\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to get dummy destroy msg\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to emit fence\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to lock ring B %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Fence A signaled without waiting for semaphore.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Fence B signaled without waiting for semaphore.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Neither fence A nor B has been signaled\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Both fence A and B has been signaled\0A\00", [58 x i8] zeroinitializer }, align 32
@radeon_test_ring_sync2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.8, i32 480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016[drm] Fence %c was first signaled\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"radeon_test_ring_sync2\00", [41 x i8] zeroinitializer }, align 32
@radeon_test_ring_sync2._entry_ptr = internal global ptr @radeon_test_ring_sync2._entry, section ".printk_index", align 4
@.str.62 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to wait for sync fence A\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to wait for sync fence B\0A\00", [63 x i8] zeroinitializer }, align 32
@radeon_test_ring_sync2._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.61, ptr @.str.8, i32 513, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@radeon_test_ring_sync2._entry_ptr.65 = internal global ptr @radeon_test_ring_sync2._entry.64, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.68 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 6, i64 7]
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 323, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 329, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 354, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 360, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 368, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 375, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 403, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 543, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 546, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 560, i32 5 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 563, i32 5 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 566, i32 5 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 569, i32 5 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 572, i32 5 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 575, i32 5 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 51, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 65, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 73, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 81, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 94, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 103, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 109, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 129, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 136, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 144, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 153, i32 5 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 180, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 187, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 195, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 204, i32 5 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 221, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 250, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant [42 x i8] c"../drivers/gpu/drm/radeon/radeon_object.h\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 71, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 272, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 278, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 304, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 436, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 448, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 452, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 473, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 476, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 480, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 494, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 499, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.250 = private constant [40 x i8] c"../drivers/gpu/drm/radeon/radeon_test.c\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 513, i32 3 }
@llvm.compiler.used = appending global [75 x ptr] [ptr @radeon_bo_reserve._entry, ptr @radeon_bo_reserve._entry_ptr, ptr @radeon_do_test_moves._entry, ptr @radeon_do_test_moves._entry.43, ptr @radeon_do_test_moves._entry_ptr, ptr @radeon_do_test_moves._entry_ptr.45, ptr @radeon_test_ring_sync._entry, ptr @radeon_test_ring_sync._entry_ptr, ptr @radeon_test_ring_sync2._entry, ptr @radeon_test_ring_sync2._entry.64, ptr @radeon_test_ring_sync2._entry_ptr, ptr @radeon_test_ring_sync2._entry_ptr.65, ptr @radeon_test_syncing._entry, ptr @radeon_test_syncing._entry.11, ptr @radeon_test_syncing._entry.13, ptr @radeon_test_syncing._entry.16, ptr @radeon_test_syncing._entry.18, ptr @radeon_test_syncing._entry.20, ptr @radeon_test_syncing._entry.22, ptr @radeon_test_syncing._entry.24, ptr @radeon_test_syncing._entry_ptr, ptr @radeon_test_syncing._entry_ptr.12, ptr @radeon_test_syncing._entry_ptr.15, ptr @radeon_test_syncing._entry_ptr.17, ptr @radeon_test_syncing._entry_ptr.19, ptr @radeon_test_syncing._entry_ptr.21, ptr @radeon_test_syncing._entry_ptr.23, ptr @radeon_test_syncing._entry_ptr.25, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.14, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_test_ring_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_test_syncing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_test_syncing._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_test_syncing._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_test_syncing._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_test_syncing._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_test_syncing._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_test_syncing._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_test_syncing._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_do_test_moves._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_do_test_moves._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_bo_reserve._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_test_ring_sync2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_test_ring_sync2._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_test_moves(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %0 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asic, align 8
  %dma = getelementptr inbounds %struct.radeon_asic, ptr %1, i32 0, i32 17, i32 2
  %2 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @radeon_do_test_moves(ptr noundef %rdev, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %asic, align 8
  %copy2 = getelementptr inbounds %struct.radeon_asic, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %copy2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %copy2, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @radeon_do_test_moves(ptr noundef %rdev, i32 noundef 1)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_do_test_moves(ptr noundef %rdev, i32 noundef %flag) unnamed_addr #0 align 64 {
entry:
  %vram_obj = alloca ptr, align 4
  %gtt_addr = alloca i64, align 8
  %vram_addr = alloca i64, align 8
  %gtt_map = alloca ptr, align 4
  %vram_map = alloca ptr, align 4
  %fence = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vram_obj) #6
  %0 = ptrtoint ptr %vram_obj to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %vram_obj, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %gtt_addr) #6
  %1 = ptrtoint ptr %gtt_addr to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %gtt_addr, align 8, !annotation !131
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vram_addr) #6
  %2 = ptrtoint ptr %vram_addr to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %vram_addr, align 8, !annotation !131
  %3 = zext i32 %flag to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %flag, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %4 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %asic, align 8
  %dma_ring_index = getelementptr inbounds %struct.radeon_asic, ptr %5, i32 0, i32 17, i32 3
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %asic2 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %6 = ptrtoint ptr %asic2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %asic2, align 8
  %blit_ring_index = getelementptr inbounds %struct.radeon_asic, ptr %7, i32 0, i32 17, i32 1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26) #6
  br label %cleanup211

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %ring.0.in = phi ptr [ %blit_ring_index, %sw.bb1 ], [ %dma_ring_index, %sw.bb ]
  %8 = ptrtoint ptr %ring.0.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %ring.0 = load i32, ptr %ring.0.in, align 4
  %gtt_size = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 5
  %9 = ptrtoint ptr %gtt_size to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %gtt_size, align 8
  %gart_pin_size = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 115
  %11 = ptrtoint ptr %gart_pin_size to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %gart_pin_size, align 8
  %sub = sub i64 %10, %12
  %conv = trunc i64 %sub to i32
  %div334 = lshr i32 %conv, 20
  %13 = shl nuw nsw i32 %div334, 2
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %13, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.27, i32 noundef %div334) #6
  br label %out_cleanup.thread

if.end:                                           ; preds = %sw.epilog
  %call4 = call i32 @radeon_bo_create(ptr noundef %rdev, i32 noundef 1048576, i32 noundef 4096, i1 noundef zeroext true, i32 noundef 4, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef nonnull %vram_obj) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.28) #6
  br label %out_cleanup.thread

if.end7:                                          ; preds = %if.end
  %14 = ptrtoint ptr %vram_obj to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vram_obj, align 4
  %resv32.i.i = getelementptr inbounds %struct.radeon_bo, ptr %15, i32 0, i32 4, i32 0, i32 9
  %16 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = call i32 @ww_mutex_lock_interruptible(ptr noundef %17, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %retval.1.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %18 = zext i32 %retval.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %retval.1.i.i, label %do.end.i [
    i32 0, label %if.end13
    i32 -512, label %if.end7.out_cleanup_crit_edge
  ], !prof !132

if.end7.out_cleanup_crit_edge:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_cleanup

do.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %rdev.i = getelementptr inbounds %struct.radeon_bo, ptr %15, i32 0, i32 13
  %19 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rdev.i, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.46, ptr noundef %15) #10
  br label %out_cleanup

if.end13:                                         ; preds = %if.end7
  %23 = ptrtoint ptr %vram_obj to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vram_obj, align 4
  %call14 = call i32 @radeon_bo_pin(ptr noundef %24, i32 noundef 4, ptr noundef nonnull %vram_addr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %for.cond.preheader, label %if.then16

for.cond.preheader:                               ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %conv)
  %cmp18483.not = icmp ult i32 %conv, 1048576
  br i1 %cmp18483.not, label %for.cond.preheader.for.end202_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end202_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end202

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ring.0)
  %cmp51 = icmp eq i32 %ring.0, 3
  %asic58 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %gtt_start175 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 6
  %umax = call i32 @llvm.umax.i32(i32 %div334, i32 1)
  br label %for.body

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.29) #6
  br label %out_unres

for.body:                                         ; preds = %for.inc201.for.body_crit_edge, %for.body.lr.ph
  %i.0484 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc201.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gtt_map) #6
  %25 = ptrtoint ptr %gtt_map to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 -1 to ptr), ptr %gtt_map, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vram_map) #6
  %26 = ptrtoint ptr %vram_map to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 -1 to ptr), ptr %vram_map, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fence) #6
  %27 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %fence, align 4
  %add.ptr = getelementptr ptr, ptr %call8.i.i, i32 %i.0484
  %call20 = call i32 @radeon_bo_create(ptr noundef %rdev, i32 noundef 1048576, i32 noundef 4096, i1 noundef zeroext true, i32 noundef 2, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef %add.ptr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.then22

if.then22:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.30, i32 noundef %i.0484) #6
  br label %out_lclean

if.end23:                                         ; preds = %for.body
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr, align 4
  %resv32.i.i336 = getelementptr inbounds %struct.radeon_bo, ptr %29, i32 0, i32 4, i32 0, i32 9
  %30 = ptrtoint ptr %resv32.i.i336 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %resv32.i.i336, align 8
  %call.i.i.i337 = call i32 @ww_mutex_lock_interruptible(ptr noundef %31, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i337)
  %cmp.i.i338 = icmp eq i32 %call.i.i.i337, -4
  %retval.1.i.i339 = select i1 %cmp.i.i338, i32 -512, i32 %call.i.i.i337
  %32 = zext i32 %retval.1.i.i339 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %retval.1.i.i339, label %do.end.i341 [
    i32 0, label %if.end34
    i32 -512, label %if.end23.out_lclean_unref_crit_edge
  ], !prof !132

if.end23.out_lclean_unref_crit_edge:              ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_lclean_unref

do.end.i341:                                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %rdev.i340 = getelementptr inbounds %struct.radeon_bo, ptr %29, i32 0, i32 13
  %33 = ptrtoint ptr %rdev.i340 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rdev.i340, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.46, ptr noundef %29) #10
  br label %out_lclean_unref

if.end34:                                         ; preds = %if.end23
  %37 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr, align 4
  %call36 = call i32 @radeon_bo_pin(ptr noundef %38, i32 noundef 2, ptr noundef nonnull %gtt_addr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.then38

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.31, i32 noundef %i.0484) #6
  br label %out_lclean_unres

if.end39:                                         ; preds = %if.end34
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr, align 4
  %call41 = call i32 @radeon_bo_kmap(ptr noundef %40, ptr noundef nonnull %gtt_map) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.then43

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.32, i32 noundef %i.0484) #6
  br label %out_lclean_unpin

if.end44:                                         ; preds = %if.end39
  %41 = ptrtoint ptr %gtt_map to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %gtt_map, align 4
  %add.ptr45 = getelementptr i8, ptr %42, i32 1048576
  %cmp47475 = icmp ult ptr %42, %add.ptr45
  br i1 %cmp47475, label %if.end44.for.body49_crit_edge, label %if.end44.for.end_crit_edge

if.end44.for.end_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end44.for.body49_crit_edge:                    ; preds = %if.end44
  br label %for.body49

for.body49:                                       ; preds = %for.body49.for.body49_crit_edge, %if.end44.for.body49_crit_edge
  %gtt_start.0476 = phi ptr [ %incdec.ptr, %for.body49.for.body49_crit_edge ], [ %42, %if.end44.for.body49_crit_edge ]
  %43 = ptrtoint ptr %gtt_start.0476 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %gtt_start.0476, ptr %gtt_start.0476, align 4
  %incdec.ptr = getelementptr ptr, ptr %gtt_start.0476, i32 1
  %cmp47 = icmp ult ptr %incdec.ptr, %add.ptr45
  br i1 %cmp47, label %for.body49.for.body49_crit_edge, label %for.body49.for.end_crit_edge

for.body49.for.end_crit_edge:                     ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body49.for.body49_crit_edge:                  ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body49

for.end:                                          ; preds = %for.body49.for.end_crit_edge, %if.end44.for.end_crit_edge
  %44 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr, align 4
  call void @radeon_bo_kunmap(ptr noundef %45) #6
  %46 = ptrtoint ptr %asic58 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %asic58, align 8
  br i1 %cmp51, label %if.then53, label %if.else

if.then53:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %dma = getelementptr inbounds %struct.radeon_asic, ptr %47, i32 0, i32 17, i32 2
  %48 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dma, align 4
  %50 = ptrtoint ptr %gtt_addr to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %gtt_addr, align 8
  %52 = ptrtoint ptr %vram_addr to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %vram_addr, align 8
  %54 = ptrtoint ptr %vram_obj to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %vram_obj, align 4
  %resv = getelementptr inbounds %struct.radeon_bo, ptr %55, i32 0, i32 4, i32 0, i32 9
  %56 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %resv, align 8
  %call57 = call ptr %49(ptr noundef %rdev, i64 noundef %51, i64 noundef %53, i32 noundef 256, ptr noundef %57) #6
  br label %if.end65

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %copy59 = getelementptr inbounds %struct.radeon_asic, ptr %47, i32 0, i32 17
  %58 = ptrtoint ptr %copy59 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %copy59, align 4
  %60 = ptrtoint ptr %gtt_addr to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %gtt_addr, align 8
  %62 = ptrtoint ptr %vram_addr to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %vram_addr, align 8
  %64 = ptrtoint ptr %vram_obj to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %vram_obj, align 4
  %resv63 = getelementptr inbounds %struct.radeon_bo, ptr %65, i32 0, i32 4, i32 0, i32 9
  %66 = ptrtoint ptr %resv63 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %resv63, align 8
  %call64 = call ptr %59(ptr noundef %rdev, i64 noundef %61, i64 noundef %63, i32 noundef 256, ptr noundef %67) #6
  br label %if.end65

if.end65:                                         ; preds = %if.else, %if.then53
  %storemerge = phi ptr [ %call64, %if.else ], [ %call57, %if.then53 ]
  %68 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %storemerge, ptr %fence, align 4
  %cmp.i = icmp ugt ptr %storemerge, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then67, label %if.end69

if.then67:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33, i32 noundef %i.0484) #6
  %69 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %fence, align 4
  %71 = ptrtoint ptr %70 to i32
  br label %out_lclean_unpin

if.end69:                                         ; preds = %if.end65
  %call70 = call i32 @radeon_fence_wait(ptr noundef %storemerge, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end73, label %if.then72

if.then72:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34, i32 noundef %i.0484) #6
  br label %out_lclean_unpin

if.end73:                                         ; preds = %if.end69
  call void @radeon_fence_unref(ptr noundef nonnull %fence) #6
  %72 = ptrtoint ptr %vram_obj to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %vram_obj, align 4
  %call74 = call i32 @radeon_bo_kmap(ptr noundef %73, ptr noundef nonnull %vram_map) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %if.then76

if.then76:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35, i32 noundef %i.0484) #6
  br label %out_lclean_unpin

if.end77:                                         ; preds = %if.end73
  %74 = ptrtoint ptr %vram_map to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %vram_map, align 4
  %add.ptr79 = getelementptr i8, ptr %75, i32 1048576
  %cmp81477 = icmp ult ptr %75, %add.ptr79
  br i1 %cmp81477, label %for.body83.preheader, label %if.end77.for.end105_crit_edge

if.end77.for.end105_crit_edge:                    ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end105

for.body83.preheader:                             ; preds = %if.end77
  %76 = ptrtoint ptr %gtt_map to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %gtt_map, align 4
  br label %for.body83

for.body83:                                       ; preds = %if.end101.for.body83_crit_edge, %for.body83.preheader
  %vram_start.0479 = phi ptr [ %incdec.ptr104, %if.end101.for.body83_crit_edge ], [ %75, %for.body83.preheader ]
  %gtt_start.1478 = phi ptr [ %incdec.ptr103, %if.end101.for.body83_crit_edge ], [ %77, %for.body83.preheader ]
  %78 = ptrtoint ptr %vram_start.0479 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %vram_start.0479, align 4
  %cmp84.not = icmp eq ptr %79, %gtt_start.1478
  br i1 %cmp84.not, label %if.end101, label %if.then86

if.then86:                                        ; preds = %for.body83
  call void @__sanitizer_cov_trace_pc() #8
  %80 = ptrtoint ptr %gtt_addr to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %gtt_addr, align 8
  %82 = ptrtoint ptr %gtt_start175 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %gtt_start175, align 8
  %sub89 = sub i64 %81, %83
  %idx.ext = trunc i64 %sub89 to i32
  %add.ptr90 = getelementptr i8, ptr %gtt_start.1478, i32 %idx.ext
  %84 = ptrtoint ptr %gtt_map to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %gtt_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr90 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %85 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv91 = sext i32 %sub.ptr.sub to i64
  %86 = ptrtoint ptr %vram_addr to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %vram_addr, align 8
  %vram_start93 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 8
  %88 = ptrtoint ptr %vram_start93 to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %vram_start93, align 8
  %sub94 = sub i64 %87, %89
  %idx.ext95 = trunc i64 %sub94 to i32
  %add.ptr96 = getelementptr i8, ptr %gtt_start.1478, i32 %idx.ext95
  %sub.ptr.lhs.cast97 = ptrtoint ptr %add.ptr96 to i32
  %sub.ptr.sub99 = sub i32 %sub.ptr.lhs.cast97, %sub.ptr.rhs.cast
  %conv100 = sext i32 %sub.ptr.sub99 to i64
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.36, i32 noundef %i.0484, ptr noundef %79, ptr noundef %gtt_start.1478, i64 noundef %conv91, i64 noundef %conv100) #6
  %90 = ptrtoint ptr %vram_obj to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %vram_obj, align 4
  call void @radeon_bo_kunmap(ptr noundef %91) #6
  br label %out_lclean_unpin

if.end101:                                        ; preds = %for.body83
  %92 = ptrtoint ptr %vram_start.0479 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %vram_start.0479, ptr %vram_start.0479, align 4
  %incdec.ptr103 = getelementptr ptr, ptr %gtt_start.1478, i32 1
  %incdec.ptr104 = getelementptr ptr, ptr %vram_start.0479, i32 1
  %cmp81 = icmp ult ptr %incdec.ptr104, %add.ptr79
  br i1 %cmp81, label %if.end101.for.body83_crit_edge, label %if.end101.for.end105_crit_edge

if.end101.for.end105_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end105

if.end101.for.body83_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body83

for.end105:                                       ; preds = %if.end101.for.end105_crit_edge, %if.end77.for.end105_crit_edge
  %93 = ptrtoint ptr %vram_obj to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %vram_obj, align 4
  call void @radeon_bo_kunmap(ptr noundef %94) #6
  %95 = ptrtoint ptr %asic58 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %asic58, align 8
  br i1 %cmp51, label %if.then108, label %if.else117

if.then108:                                       ; preds = %for.end105
  call void @__sanitizer_cov_trace_pc() #8
  %dma111 = getelementptr inbounds %struct.radeon_asic, ptr %96, i32 0, i32 17, i32 2
  %97 = ptrtoint ptr %dma111 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dma111, align 4
  %99 = ptrtoint ptr %vram_addr to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %vram_addr, align 8
  %101 = ptrtoint ptr %gtt_addr to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %gtt_addr, align 8
  %103 = ptrtoint ptr %vram_obj to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %vram_obj, align 4
  %resv115 = getelementptr inbounds %struct.radeon_bo, ptr %104, i32 0, i32 4, i32 0, i32 9
  %105 = ptrtoint ptr %resv115 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %resv115, align 8
  %call116 = call ptr %98(ptr noundef %rdev, i64 noundef %100, i64 noundef %102, i32 noundef 256, ptr noundef %106) #6
  br label %if.end126

if.else117:                                       ; preds = %for.end105
  call void @__sanitizer_cov_trace_pc() #8
  %copy119 = getelementptr inbounds %struct.radeon_asic, ptr %96, i32 0, i32 17
  %107 = ptrtoint ptr %copy119 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %copy119, align 4
  %109 = ptrtoint ptr %vram_addr to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %vram_addr, align 8
  %111 = ptrtoint ptr %gtt_addr to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %gtt_addr, align 8
  %113 = ptrtoint ptr %vram_obj to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %vram_obj, align 4
  %resv124 = getelementptr inbounds %struct.radeon_bo, ptr %114, i32 0, i32 4, i32 0, i32 9
  %115 = ptrtoint ptr %resv124 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %resv124, align 8
  %call125 = call ptr %108(ptr noundef %rdev, i64 noundef %110, i64 noundef %112, i32 noundef 256, ptr noundef %116) #6
  br label %if.end126

if.end126:                                        ; preds = %if.else117, %if.then108
  %storemerge335 = phi ptr [ %call125, %if.else117 ], [ %call116, %if.then108 ]
  %117 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %storemerge335, ptr %fence, align 4
  %cmp.i343 = icmp ugt ptr %storemerge335, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i343, label %if.then128, label %if.end130

if.then128:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.37, i32 noundef %i.0484) #6
  %118 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %fence, align 4
  %120 = ptrtoint ptr %119 to i32
  br label %out_lclean_unpin

if.end130:                                        ; preds = %if.end126
  %call131 = call i32 @radeon_fence_wait(ptr noundef %storemerge335, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %if.end134, label %if.then133

if.then133:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.38, i32 noundef %i.0484) #6
  br label %out_lclean_unpin

if.end134:                                        ; preds = %if.end130
  call void @radeon_fence_unref(ptr noundef nonnull %fence) #6
  %121 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %add.ptr, align 4
  %call136 = call i32 @radeon_bo_kmap(ptr noundef %122, ptr noundef nonnull %gtt_map) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %if.end139, label %if.then138

if.then138:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.39, i32 noundef %i.0484) #6
  br label %out_lclean_unpin

if.end139:                                        ; preds = %if.end134
  %123 = ptrtoint ptr %gtt_map to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %gtt_map, align 4
  %add.ptr140 = getelementptr i8, ptr %124, i32 1048576
  %125 = ptrtoint ptr %vram_map to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %vram_map, align 4
  %cmp143480 = icmp ult ptr %124, %add.ptr140
  br i1 %cmp143480, label %if.end139.for.body145_crit_edge, label %if.end139.for.inc201_crit_edge

if.end139.for.inc201_crit_edge:                   ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc201

if.end139.for.body145_crit_edge:                  ; preds = %if.end139
  br label %for.body145

for.body145:                                      ; preds = %for.inc169.for.body145_crit_edge, %if.end139.for.body145_crit_edge
  %vram_start.1482 = phi ptr [ %incdec.ptr171, %for.inc169.for.body145_crit_edge ], [ %126, %if.end139.for.body145_crit_edge ]
  %gtt_start.2481 = phi ptr [ %incdec.ptr170, %for.inc169.for.body145_crit_edge ], [ %124, %if.end139.for.body145_crit_edge ]
  %127 = ptrtoint ptr %gtt_start.2481 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %gtt_start.2481, align 4
  %cmp146.not = icmp eq ptr %128, %vram_start.1482
  br i1 %cmp146.not, label %for.inc169, label %if.then148

if.then148:                                       ; preds = %for.body145
  call void @__sanitizer_cov_trace_pc() #8
  %129 = ptrtoint ptr %vram_addr to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %vram_addr, align 8
  %vram_start150 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 8
  %131 = ptrtoint ptr %vram_start150 to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %vram_start150, align 8
  %sub151 = sub i64 %130, %132
  %idx.ext152 = trunc i64 %sub151 to i32
  %add.ptr153 = getelementptr i8, ptr %vram_start.1482, i32 %idx.ext152
  %sub.ptr.lhs.cast154 = ptrtoint ptr %add.ptr153 to i32
  %sub.ptr.rhs.cast155 = ptrtoint ptr %126 to i32
  %sub.ptr.sub156 = sub i32 %sub.ptr.lhs.cast154, %sub.ptr.rhs.cast155
  %conv157 = sext i32 %sub.ptr.sub156 to i64
  %133 = ptrtoint ptr %gtt_addr to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %gtt_addr, align 8
  %135 = ptrtoint ptr %gtt_start175 to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %gtt_start175, align 8
  %sub160 = sub i64 %134, %136
  %idx.ext161 = trunc i64 %sub160 to i32
  %add.ptr162 = getelementptr i8, ptr %vram_start.1482, i32 %idx.ext161
  %sub.ptr.lhs.cast163 = ptrtoint ptr %add.ptr162 to i32
  %sub.ptr.sub165 = sub i32 %sub.ptr.lhs.cast163, %sub.ptr.rhs.cast155
  %conv166 = sext i32 %sub.ptr.sub165 to i64
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.40, i32 noundef %i.0484, ptr noundef %128, ptr noundef %vram_start.1482, i64 noundef %conv157, i64 noundef %conv166) #6
  %137 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %add.ptr, align 4
  call void @radeon_bo_kunmap(ptr noundef %138) #6
  br label %out_lclean_unpin

for.inc169:                                       ; preds = %for.body145
  %incdec.ptr170 = getelementptr ptr, ptr %gtt_start.2481, i32 1
  %incdec.ptr171 = getelementptr ptr, ptr %vram_start.1482, i32 1
  %cmp143 = icmp ult ptr %incdec.ptr170, %add.ptr140
  br i1 %cmp143, label %for.inc169.for.body145_crit_edge, label %for.inc169.for.inc201_crit_edge

for.inc169.for.inc201_crit_edge:                  ; preds = %for.inc169
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc201

for.inc169.for.body145_crit_edge:                 ; preds = %for.inc169
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body145

out_lclean_unpin:                                 ; preds = %if.then148, %if.then138, %if.then133, %if.then128, %if.then86, %if.then76, %if.then72, %if.then67, %if.then43
  %r.1 = phi i32 [ %call41, %if.then43 ], [ %71, %if.then67 ], [ %call70, %if.then72 ], [ %call74, %if.then76 ], [ 0, %if.then86 ], [ %120, %if.then128 ], [ %call131, %if.then133 ], [ %call136, %if.then138 ], [ 0, %if.then148 ]
  %139 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %add.ptr, align 4
  call void @radeon_bo_unpin(ptr noundef %140) #6
  br label %out_lclean_unres

out_lclean_unres:                                 ; preds = %out_lclean_unpin, %if.then38
  %r.2 = phi i32 [ %call36, %if.then38 ], [ %r.1, %out_lclean_unpin ]
  %141 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %add.ptr, align 4
  %tbo.i = getelementptr inbounds %struct.radeon_bo, ptr %142, i32 0, i32 4
  %bdev.i.i.i = getelementptr inbounds %struct.radeon_bo, ptr %142, i32 0, i32 4, i32 1
  %143 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %144, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #6
  %resource.i.i.i = getelementptr inbounds %struct.radeon_bo, ptr %142, i32 0, i32 4, i32 6
  %145 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %resource.i.i.i, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i, ptr noundef %146, ptr noundef null) #6
  %147 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %148, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #6
  %resv.i.i = getelementptr inbounds %struct.radeon_bo, ptr %142, i32 0, i32 4, i32 0, i32 9
  %149 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %resv.i.i, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %150) #6
  call void @ww_mutex_unlock(ptr noundef %150) #6
  br label %out_lclean_unref

out_lclean_unref:                                 ; preds = %out_lclean_unres, %do.end.i341, %if.end23.out_lclean_unref_crit_edge
  %r.3 = phi i32 [ %retval.1.i.i339, %do.end.i341 ], [ %r.2, %out_lclean_unres ], [ %retval.1.i.i339, %if.end23.out_lclean_unref_crit_edge ]
  call void @radeon_bo_unref(ptr noundef %add.ptr) #6
  br label %out_lclean

out_lclean:                                       ; preds = %out_lclean_unref, %if.then22
  %r.4 = phi i32 [ %call20, %if.then22 ], [ %r.3, %out_lclean_unref ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0484)
  %cmp182488.not = icmp eq i32 %i.0484, 0
  br i1 %cmp182488.not, label %out_lclean.for.end190_crit_edge, label %out_lclean.for.body184_crit_edge

out_lclean.for.body184_crit_edge:                 ; preds = %out_lclean
  br label %for.body184

out_lclean.for.end190_crit_edge:                  ; preds = %out_lclean
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end190

for.body184:                                      ; preds = %for.body184.for.body184_crit_edge, %out_lclean.for.body184_crit_edge
  %i.1489.in = phi i32 [ %i.1489, %for.body184.for.body184_crit_edge ], [ %i.0484, %out_lclean.for.body184_crit_edge ]
  %i.1489 = add nsw i32 %i.1489.in, -1
  %arrayidx185 = getelementptr ptr, ptr %call8.i.i, i32 %i.1489
  %151 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %arrayidx185, align 4
  call void @radeon_bo_unpin(ptr noundef %152) #6
  %153 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %arrayidx185, align 4
  %tbo.i344 = getelementptr inbounds %struct.radeon_bo, ptr %154, i32 0, i32 4
  %bdev.i.i.i345 = getelementptr inbounds %struct.radeon_bo, ptr %154, i32 0, i32 4, i32 1
  %155 = ptrtoint ptr %bdev.i.i.i345 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %bdev.i.i.i345, align 8
  %lru_lock.i.i.i346 = getelementptr inbounds %struct.ttm_device, ptr %156, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i346) #6
  %resource.i.i.i347 = getelementptr inbounds %struct.radeon_bo, ptr %154, i32 0, i32 4, i32 6
  %157 = ptrtoint ptr %resource.i.i.i347 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %resource.i.i.i347, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i344, ptr noundef %158, ptr noundef null) #6
  %159 = ptrtoint ptr %bdev.i.i.i345 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %bdev.i.i.i345, align 8
  %lru_lock2.i.i.i348 = getelementptr inbounds %struct.ttm_device, ptr %160, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i348) #6
  %resv.i.i349 = getelementptr inbounds %struct.radeon_bo, ptr %154, i32 0, i32 4, i32 0, i32 9
  %161 = ptrtoint ptr %resv.i.i349 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %resv.i.i349, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %162) #6
  call void @ww_mutex_unlock(ptr noundef %162) #6
  call void @radeon_bo_unref(ptr noundef %arrayidx185) #6
  %cmp182 = icmp sgt i32 %i.1489.in, 1
  br i1 %cmp182, label %for.body184.for.body184_crit_edge, label %for.body184.for.end190_crit_edge

for.body184.for.end190_crit_edge:                 ; preds = %for.body184
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end190

for.body184.for.body184_crit_edge:                ; preds = %for.body184
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body184

for.end190:                                       ; preds = %for.body184.for.end190_crit_edge, %out_lclean.for.end190_crit_edge
  %163 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %fence, align 4
  %tobool191.not = icmp eq ptr %164, null
  %cmp.i350 = icmp ugt ptr %164, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool191.not, %cmp.i350
  br i1 %or.cond, label %for.end190.cleanup.thread_crit_edge, label %if.then193

for.end190.cleanup.thread_crit_edge:              ; preds = %for.end190
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.then193:                                       ; preds = %for.end190
  call void @__sanitizer_cov_trace_pc() #8
  call void @radeon_fence_unref(ptr noundef nonnull %fence) #6
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then193, %for.end190.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vram_map) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gtt_map) #6
  br label %for.end202

for.inc201:                                       ; preds = %for.inc169.for.inc201_crit_edge, %if.end139.for.inc201_crit_edge
  %165 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %add.ptr, align 4
  call void @radeon_bo_kunmap(ptr noundef %166) #6
  %167 = ptrtoint ptr %gtt_addr to i32
  call void @__asan_load8_noabort(i32 %167)
  %168 = load i64, ptr %gtt_addr, align 8
  %169 = ptrtoint ptr %gtt_start175 to i32
  call void @__asan_load8_noabort(i32 %169)
  %170 = load i64, ptr %gtt_start175, align 8
  %sub176 = sub i64 %168, %170
  %call177 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i64 noundef %sub176) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vram_map) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gtt_map) #6
  %inc = add nuw nsw i32 %i.0484, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc201.for.end202_crit_edge, label %for.inc201.for.body_crit_edge

for.inc201.for.body_crit_edge:                    ; preds = %for.inc201
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc201.for.end202_crit_edge:                  ; preds = %for.inc201
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end202

for.end202:                                       ; preds = %for.inc201.for.end202_crit_edge, %cleanup.thread, %for.cond.preheader.for.end202_crit_edge
  %r.6 = phi i32 [ %r.4, %cleanup.thread ], [ 0, %for.cond.preheader.for.end202_crit_edge ], [ 0, %for.inc201.for.end202_crit_edge ]
  %171 = ptrtoint ptr %vram_obj to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %vram_obj, align 4
  call void @radeon_bo_unpin(ptr noundef %172) #6
  br label %out_unres

out_unres:                                        ; preds = %for.end202, %if.then16
  %r.7 = phi i32 [ %call14, %if.then16 ], [ %r.6, %for.end202 ]
  %173 = ptrtoint ptr %vram_obj to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %vram_obj, align 4
  %tbo.i351 = getelementptr inbounds %struct.radeon_bo, ptr %174, i32 0, i32 4
  %bdev.i.i.i352 = getelementptr inbounds %struct.radeon_bo, ptr %174, i32 0, i32 4, i32 1
  %175 = ptrtoint ptr %bdev.i.i.i352 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %bdev.i.i.i352, align 8
  %lru_lock.i.i.i353 = getelementptr inbounds %struct.ttm_device, ptr %176, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i353) #6
  %resource.i.i.i354 = getelementptr inbounds %struct.radeon_bo, ptr %174, i32 0, i32 4, i32 6
  %177 = ptrtoint ptr %resource.i.i.i354 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %resource.i.i.i354, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i351, ptr noundef %178, ptr noundef null) #6
  %179 = ptrtoint ptr %bdev.i.i.i352 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %bdev.i.i.i352, align 8
  %lru_lock2.i.i.i355 = getelementptr inbounds %struct.ttm_device, ptr %180, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i355) #6
  %resv.i.i356 = getelementptr inbounds %struct.radeon_bo, ptr %174, i32 0, i32 4, i32 0, i32 9
  %181 = ptrtoint ptr %resv.i.i356 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %resv.i.i356, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %182) #6
  call void @ww_mutex_unlock(ptr noundef %182) #6
  br label %out_cleanup

out_cleanup.thread:                               ; preds = %if.then6, %if.then
  %retval.0.i.i359.ph = phi ptr [ null, %if.then ], [ %call8.i.i, %if.then6 ]
  call void @kfree(ptr noundef %retval.0.i.i359.ph) #6
  br label %do.end207

out_cleanup:                                      ; preds = %out_unres, %do.end.i, %if.end7.out_cleanup_crit_edge
  %r.8 = phi i32 [ %retval.1.i.i, %do.end.i ], [ %r.7, %out_unres ], [ %retval.1.i.i, %if.end7.out_cleanup_crit_edge ]
  call void @radeon_bo_unref(ptr noundef nonnull %vram_obj) #6
  call void @kfree(ptr noundef nonnull %call8.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.8)
  %tobool203.not = icmp eq i32 %r.8, 0
  br i1 %tobool203.not, label %out_cleanup.cleanup211_crit_edge, label %out_cleanup.do.end207_crit_edge

out_cleanup.do.end207_crit_edge:                  ; preds = %out_cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end207

out_cleanup.cleanup211_crit_edge:                 ; preds = %out_cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup211

do.end207:                                        ; preds = %out_cleanup.do.end207_crit_edge, %out_cleanup.thread
  %call209 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #10
  br label %cleanup211

cleanup211:                                       ; preds = %do.end207, %out_cleanup.cleanup211_crit_edge, %sw.default
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vram_addr) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %gtt_addr) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vram_obj) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_test_ring_sync(ptr noundef %rdev, ptr noundef %ringA, ptr noundef %ringB) local_unnamed_addr #0 align 64 {
entry:
  %fence1 = alloca ptr, align 4
  %fence2 = alloca ptr, align 4
  %semaphore = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fence1) #6
  %0 = ptrtoint ptr %fence1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %fence1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fence2) #6
  %1 = ptrtoint ptr %fence2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %fence2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %semaphore) #6
  %2 = ptrtoint ptr %semaphore to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %semaphore, align 4
  %call = call i32 @radeon_semaphore_create(ptr noundef %rdev, ptr noundef nonnull %semaphore) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #6
  br label %out_cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @radeon_ring_lock(ptr noundef %rdev, ptr noundef %ringA, i32 noundef 64) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  %idx5 = getelementptr inbounds %struct.radeon_ring, ptr %ringA, i32 0, i32 19
  %3 = ptrtoint ptr %idx5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %idx5, align 8
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, i32 noundef %4) #6
  br label %out_cleanup

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %semaphore to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %semaphore, align 4
  %call6 = call zeroext i1 @radeon_semaphore_emit_wait(ptr noundef %rdev, i32 noundef %4, ptr noundef %6) #6
  call void @radeon_ring_unlock_commit(ptr noundef %rdev, ptr noundef %ringA, i1 noundef zeroext false) #6
  %call7 = call fastcc i32 @radeon_test_create_and_emit_fence(ptr noundef %rdev, ptr noundef %ringA, ptr noundef nonnull %fence1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end4.out_cleanup_crit_edge

if.end4.out_cleanup_crit_edge:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_cleanup

if.end10:                                         ; preds = %if.end4
  %call11 = call i32 @radeon_ring_lock(ptr noundef %rdev, ptr noundef %ringA, i32 noundef 64) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  %7 = ptrtoint ptr %idx5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idx5, align 8
  br i1 %tobool12.not, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, i32 noundef %8) #6
  br label %out_cleanup

if.end15:                                         ; preds = %if.end10
  %9 = ptrtoint ptr %semaphore to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %semaphore, align 4
  %call17 = call zeroext i1 @radeon_semaphore_emit_wait(ptr noundef %rdev, i32 noundef %8, ptr noundef %10) #6
  call void @radeon_ring_unlock_commit(ptr noundef %rdev, ptr noundef %ringA, i1 noundef zeroext false) #6
  %call18 = call fastcc i32 @radeon_test_create_and_emit_fence(ptr noundef %rdev, ptr noundef %ringA, ptr noundef nonnull %fence2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end15.out_cleanup_crit_edge

if.end15.out_cleanup_crit_edge:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_cleanup

if.end21:                                         ; preds = %if.end15
  call void @msleep(i32 noundef 1000) #6
  %11 = ptrtoint ptr %fence1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fence1, align 4
  %call22 = call zeroext i1 @radeon_fence_signaled(ptr noundef %12) #6
  br i1 %call22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #6
  br label %out_cleanup

if.end24:                                         ; preds = %if.end21
  %call25 = call i32 @radeon_ring_lock(ptr noundef %rdev, ptr noundef %ringB, i32 noundef 64) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, ptr noundef %ringB) #6
  br label %out_cleanup

if.end28:                                         ; preds = %if.end24
  %idx29 = getelementptr inbounds %struct.radeon_ring, ptr %ringB, i32 0, i32 19
  %13 = ptrtoint ptr %idx29 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %idx29, align 8
  %15 = ptrtoint ptr %semaphore to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %semaphore, align 4
  %call30 = call zeroext i1 @radeon_semaphore_emit_signal(ptr noundef %rdev, i32 noundef %14, ptr noundef %16) #6
  call void @radeon_ring_unlock_commit(ptr noundef %rdev, ptr noundef %ringB, i1 noundef zeroext false) #6
  %17 = ptrtoint ptr %fence1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fence1, align 4
  %call31 = call i32 @radeon_fence_wait(ptr noundef %18, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.then33

if.then33:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #6
  br label %out_cleanup

if.end34:                                         ; preds = %if.end28
  call void @msleep(i32 noundef 1000) #6
  %19 = ptrtoint ptr %fence2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fence2, align 4
  %call35 = call zeroext i1 @radeon_fence_signaled(ptr noundef %20) #6
  br i1 %call35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #6
  br label %out_cleanup

if.end37:                                         ; preds = %if.end34
  %call38 = call i32 @radeon_ring_lock(ptr noundef %rdev, ptr noundef %ringB, i32 noundef 64) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.then40

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, ptr noundef %ringB) #6
  br label %out_cleanup

if.end41:                                         ; preds = %if.end37
  %21 = ptrtoint ptr %idx29 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %idx29, align 8
  %23 = ptrtoint ptr %semaphore to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %semaphore, align 4
  %call43 = call zeroext i1 @radeon_semaphore_emit_signal(ptr noundef %rdev, i32 noundef %22, ptr noundef %24) #6
  call void @radeon_ring_unlock_commit(ptr noundef %rdev, ptr noundef %ringB, i1 noundef zeroext false) #6
  %25 = ptrtoint ptr %fence2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fence2, align 4
  %call44 = call i32 @radeon_fence_wait(ptr noundef %26, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end41.out_cleanup_crit_edge, label %if.then46

if.end41.out_cleanup_crit_edge:                   ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_cleanup

if.then46:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #6
  br label %out_cleanup

out_cleanup:                                      ; preds = %if.then46, %if.end41.out_cleanup_crit_edge, %if.then40, %if.then36, %if.then33, %if.then27, %if.then23, %if.end15.out_cleanup_crit_edge, %if.then13, %if.end4.out_cleanup_crit_edge, %if.then3, %if.then
  %r.0 = phi i32 [ %call, %if.then ], [ %call1, %if.then3 ], [ %call7, %if.end4.out_cleanup_crit_edge ], [ %call11, %if.then13 ], [ %call18, %if.end15.out_cleanup_crit_edge ], [ 0, %if.then23 ], [ %call25, %if.then27 ], [ %call31, %if.then33 ], [ 0, %if.then36 ], [ %call38, %if.then40 ], [ %call44, %if.then46 ], [ 0, %if.end41.out_cleanup_crit_edge ]
  call void @radeon_semaphore_free(ptr noundef %rdev, ptr noundef nonnull %semaphore, ptr noundef null) #6
  %27 = ptrtoint ptr %fence1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fence1, align 4
  %tobool48.not = icmp eq ptr %28, null
  br i1 %tobool48.not, label %out_cleanup.if.end50_crit_edge, label %if.then49

out_cleanup.if.end50_crit_edge:                   ; preds = %out_cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then49:                                        ; preds = %out_cleanup
  call void @__sanitizer_cov_trace_pc() #8
  call void @radeon_fence_unref(ptr noundef nonnull %fence1) #6
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %out_cleanup.if.end50_crit_edge
  %29 = ptrtoint ptr %fence2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fence2, align 4
  %tobool51.not = icmp eq ptr %30, null
  br i1 %tobool51.not, label %if.end50.if.end53_crit_edge, label %if.then52

if.end50.if.end53_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.then52:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  call void @radeon_fence_unref(ptr noundef nonnull %fence2) #6
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.end50.if.end53_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0)
  %tobool54.not = icmp eq i32 %r.0, 0
  br i1 %tobool54.not, label %if.end53.if.end57_crit_edge, label %do.end

if.end53.if.end57_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

do.end:                                           ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %r.0) #10
  br label %if.end57

if.end57:                                         ; preds = %do.end, %if.end53.if.end57_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %semaphore) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence1) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_semaphore_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_ring_lock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_semaphore_emit_wait(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ring_unlock_commit(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @radeon_test_create_and_emit_fence(ptr noundef %rdev, ptr noundef %ring, ptr noundef %fence) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %idx = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 19
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx, align 8
  %xor = xor i32 %1, -558907665
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %1, label %if.else24 [
    i32 5, label %if.then
    i32 6, label %entry.if.then13_crit_edge
    i32 7, label %entry.if.then13_crit_edge73
  ]

entry.if.then13_crit_edge73:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13

entry.if.then13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13

if.then:                                          ; preds = %entry
  %call = tail call i32 @radeon_uvd_get_create_msg(ptr noundef %rdev, i32 noundef 5, i32 noundef %xor, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.52) #6
  br label %cleanup

if.end:                                           ; preds = %if.then
  %3 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %idx, align 8
  %call5 = tail call i32 @radeon_uvd_get_destroy_msg(ptr noundef %rdev, i32 noundef %4, i32 noundef %xor, ptr noundef %fence) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.then7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.53) #6
  br label %cleanup

if.then13:                                        ; preds = %entry.if.then13_crit_edge, %entry.if.then13_crit_edge73
  %call15 = tail call i32 @radeon_vce_get_create_msg(ptr noundef %rdev, i32 noundef %1, i32 noundef %xor, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.52) #6
  br label %cleanup

if.end18:                                         ; preds = %if.then13
  %5 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %idx, align 8
  %call20 = tail call i32 @radeon_vce_get_destroy_msg(ptr noundef %rdev, i32 noundef %6, i32 noundef %xor, ptr noundef %fence) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end18.cleanup_crit_edge, label %if.then22

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.53) #6
  br label %cleanup

if.else24:                                        ; preds = %entry
  %call25 = tail call i32 @radeon_ring_lock(ptr noundef %rdev, ptr noundef %ring, i32 noundef 64) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  %7 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idx, align 8
  br i1 %tobool26.not, label %if.end29, label %if.then27

if.then27:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, i32 noundef %8) #6
  br label %cleanup

if.end29:                                         ; preds = %if.else24
  %call31 = tail call i32 @radeon_fence_emit(ptr noundef %rdev, ptr noundef %fence, i32 noundef %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.then33

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.54) #6
  tail call void @radeon_ring_unlock_undo(ptr noundef %rdev, ptr noundef %ring) #6
  br label %cleanup

if.end34:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @radeon_ring_unlock_commit(ptr noundef %rdev, ptr noundef %ring, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.then33, %if.then27, %if.then22, %if.end18.cleanup_crit_edge, %if.then17, %if.then7, %if.end.cleanup_crit_edge, %if.then3
  %retval.0 = phi i32 [ %call, %if.then3 ], [ %call5, %if.then7 ], [ %call15, %if.then17 ], [ %call20, %if.then22 ], [ %call25, %if.then27 ], [ %call31, %if.then33 ], [ 0, %if.end34 ], [ 0, %if.end18.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_fence_signaled(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_semaphore_emit_signal(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_fence_wait(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_semaphore_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_fence_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_test_syncing(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %cleanup69.for.body_crit_edge, %entry
  %i.0171 = phi i32 [ 1, %entry ], [ %inc73, %cleanup69.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %i.0171
  %ready = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %i.0171, i32 17
  %0 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ready, align 8, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.not = icmp eq i8 %1, 0
  br i1 %tobool.not.not, label %for.body.cleanup69_crit_edge, label %for.body3.lr.ph

for.body.cleanup69_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup69

for.body3.lr.ph:                                  ; preds = %for.body
  %idx.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %i.0171, i32 19
  br label %for.body3

for.body3:                                        ; preds = %cleanup63.for.body3_crit_edge, %for.body3.lr.ph
  %j.0168 = phi i32 [ 0, %for.body3.lr.ph ], [ %inc67, %cleanup63.for.body3_crit_edge ]
  %arrayidx5 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %j.0168
  %ready6 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %j.0168, i32 17
  %2 = ptrtoint ptr %ready6 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ready6, align 8, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool7.not = icmp eq i8 %3, 0
  br i1 %tobool7.not, label %for.body3.cleanup63_crit_edge, label %if.end9

for.body3.cleanup63_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup63

if.end9:                                          ; preds = %for.body3
  %4 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %5)
  %cmp.i = icmp eq i32 %5, 7
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end9.do.end_crit_edge

if.end9.do.end_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true.i:                                  ; preds = %if.end9
  %idx1.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %j.0168, i32 19
  %6 = ptrtoint ptr %idx1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %idx1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %7)
  %cmp2.i = icmp eq i32 %7, 6
  br i1 %cmp2.i, label %land.lhs.true.i.cleanup63_crit_edge, label %land.lhs.true.i.do.end_crit_edge

land.lhs.true.i.do.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true.i.cleanup63_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup63

do.end:                                           ; preds = %land.lhs.true.i.do.end_crit_edge, %if.end9.do.end_crit_edge
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %i.0171, i32 noundef %j.0168) #10
  tail call void @radeon_test_ring_sync(ptr noundef %rdev, ptr noundef %arrayidx, ptr noundef %arrayidx5)
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %j.0168, i32 noundef %i.0171) #10
  tail call void @radeon_test_ring_sync(ptr noundef %rdev, ptr noundef %arrayidx5, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.0168)
  %cmp19162.not = icmp eq i32 %j.0168, 0
  br i1 %cmp19162.not, label %do.end.cleanup63_crit_edge, label %for.body20.lr.ph

do.end.cleanup63_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup63

for.body20.lr.ph:                                 ; preds = %do.end
  %idx.i151 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %j.0168, i32 19
  br label %for.body20

for.body20:                                       ; preds = %cleanup.for.body20_crit_edge, %for.body20.lr.ph
  %k.0163 = phi i32 [ 0, %for.body20.lr.ph ], [ %inc, %cleanup.for.body20_crit_edge ]
  %arrayidx22 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %k.0163
  %ready23 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %k.0163, i32 17
  %8 = ptrtoint ptr %ready23 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ready23, align 8, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool24.not = icmp eq i8 %9, 0
  br i1 %tobool24.not, label %for.body20.cleanup_crit_edge, label %if.end26

for.body20.cleanup_crit_edge:                     ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26:                                         ; preds = %for.body20
  %10 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %idx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %11)
  %cmp.i144 = icmp eq i32 %11, 7
  br i1 %cmp.i144, label %land.lhs.true.i147, label %if.end26.if.end29_crit_edge

if.end26.if.end29_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

land.lhs.true.i147:                               ; preds = %if.end26
  %idx1.i145 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %k.0163, i32 19
  %12 = ptrtoint ptr %idx1.i145 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %idx1.i145, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %13)
  %cmp2.i146 = icmp eq i32 %13, 6
  br i1 %cmp2.i146, label %land.lhs.true.i147.cleanup_crit_edge, label %land.lhs.true.i147.if.end29_crit_edge

land.lhs.true.i147.if.end29_crit_edge:            ; preds = %land.lhs.true.i147
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

land.lhs.true.i147.cleanup_crit_edge:             ; preds = %land.lhs.true.i147
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end29:                                         ; preds = %land.lhs.true.i147.if.end29_crit_edge, %if.end26.if.end29_crit_edge
  %14 = ptrtoint ptr %idx.i151 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %idx.i151, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %15)
  %cmp.i152 = icmp eq i32 %15, 7
  br i1 %cmp.i152, label %land.lhs.true.i155, label %if.end29.do.end35_crit_edge

if.end29.do.end35_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end35

land.lhs.true.i155:                               ; preds = %if.end29
  %idx1.i153 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %k.0163, i32 19
  %16 = ptrtoint ptr %idx1.i153 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %idx1.i153, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %17)
  %cmp2.i154 = icmp eq i32 %17, 6
  br i1 %cmp2.i154, label %land.lhs.true.i155.cleanup_crit_edge, label %land.lhs.true.i155.do.end35_crit_edge

land.lhs.true.i155.do.end35_crit_edge:            ; preds = %land.lhs.true.i155
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end35

land.lhs.true.i155.cleanup_crit_edge:             ; preds = %land.lhs.true.i155
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end35:                                         ; preds = %land.lhs.true.i155.do.end35_crit_edge, %if.end29.do.end35_crit_edge
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %i.0171, i32 noundef %j.0168, i32 noundef %k.0163) #10
  tail call fastcc void @radeon_test_ring_sync2(ptr noundef %rdev, ptr noundef %arrayidx, ptr noundef %arrayidx5, ptr noundef %arrayidx22)
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %i.0171, i32 noundef %k.0163, i32 noundef %j.0168) #10
  tail call fastcc void @radeon_test_ring_sync2(ptr noundef %rdev, ptr noundef %arrayidx, ptr noundef %arrayidx22, ptr noundef %arrayidx5)
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %j.0168, i32 noundef %i.0171, i32 noundef %k.0163) #10
  tail call fastcc void @radeon_test_ring_sync2(ptr noundef %rdev, ptr noundef %arrayidx5, ptr noundef %arrayidx, ptr noundef %arrayidx22)
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %j.0168, i32 noundef %k.0163, i32 noundef %i.0171) #10
  tail call fastcc void @radeon_test_ring_sync2(ptr noundef %rdev, ptr noundef %arrayidx5, ptr noundef %arrayidx22, ptr noundef %arrayidx)
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %k.0163, i32 noundef %i.0171, i32 noundef %j.0168) #10
  tail call fastcc void @radeon_test_ring_sync2(ptr noundef %rdev, ptr noundef %arrayidx22, ptr noundef %arrayidx, ptr noundef %arrayidx5)
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %k.0163, i32 noundef %j.0168, i32 noundef %i.0171) #10
  tail call fastcc void @radeon_test_ring_sync2(ptr noundef %rdev, ptr noundef %arrayidx22, ptr noundef %arrayidx5, ptr noundef %arrayidx)
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %land.lhs.true.i155.cleanup_crit_edge, %land.lhs.true.i147.cleanup_crit_edge, %for.body20.cleanup_crit_edge
  %inc = add nuw nsw i32 %k.0163, 1
  %exitcond.not = icmp eq i32 %inc, %j.0168
  br i1 %exitcond.not, label %cleanup.cleanup63_crit_edge, label %cleanup.for.body20_crit_edge

cleanup.for.body20_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body20

cleanup.cleanup63_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup63

cleanup63:                                        ; preds = %cleanup.cleanup63_crit_edge, %do.end.cleanup63_crit_edge, %land.lhs.true.i.cleanup63_crit_edge, %for.body3.cleanup63_crit_edge
  %inc67 = add nuw nsw i32 %j.0168, 1
  %exitcond174.not = icmp eq i32 %inc67, %i.0171
  br i1 %exitcond174.not, label %cleanup63.cleanup69_crit_edge, label %cleanup63.for.body3_crit_edge

cleanup63.for.body3_crit_edge:                    ; preds = %cleanup63
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body3

cleanup63.cleanup69_crit_edge:                    ; preds = %cleanup63
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup69

cleanup69:                                        ; preds = %cleanup63.cleanup69_crit_edge, %for.body.cleanup69_crit_edge
  %inc73 = add nuw nsw i32 %i.0171, 1
  %exitcond175.not = icmp eq i32 %inc73, 8
  br i1 %exitcond175.not, label %for.end74, label %cleanup69.for.body_crit_edge

cleanup69.for.body_crit_edge:                     ; preds = %cleanup69
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end74:                                        ; preds = %cleanup69
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_test_ring_sync2(ptr noundef %rdev, ptr noundef %ringA, ptr noundef %ringB, ptr noundef %ringC) unnamed_addr #0 align 64 {
entry:
  %fenceA = alloca ptr, align 4
  %fenceB = alloca ptr, align 4
  %semaphore = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fenceA) #6
  %0 = ptrtoint ptr %fenceA to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %fenceA, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fenceB) #6
  %1 = ptrtoint ptr %fenceB to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %fenceB, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %semaphore) #6
  %2 = ptrtoint ptr %semaphore to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %semaphore, align 4
  %call = call i32 @radeon_semaphore_create(ptr noundef %rdev, ptr noundef nonnull %semaphore) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #6
  br label %out_cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @radeon_ring_lock(ptr noundef %rdev, ptr noundef %ringA, i32 noundef 64) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  %idx5 = getelementptr inbounds %struct.radeon_ring, ptr %ringA, i32 0, i32 19
  %3 = ptrtoint ptr %idx5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %idx5, align 8
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, i32 noundef %4) #6
  br label %out_cleanup

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %semaphore to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %semaphore, align 4
  %call6 = call zeroext i1 @radeon_semaphore_emit_wait(ptr noundef %rdev, i32 noundef %4, ptr noundef %6) #6
  call void @radeon_ring_unlock_commit(ptr noundef %rdev, ptr noundef %ringA, i1 noundef zeroext false) #6
  %call7 = call fastcc i32 @radeon_test_create_and_emit_fence(ptr noundef %rdev, ptr noundef %ringA, ptr noundef nonnull %fenceA)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end4.out_cleanup_crit_edge

if.end4.out_cleanup_crit_edge:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_cleanup

if.end10:                                         ; preds = %if.end4
  %call11 = call i32 @radeon_ring_lock(ptr noundef %rdev, ptr noundef %ringB, i32 noundef 64) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  %idx16 = getelementptr inbounds %struct.radeon_ring, ptr %ringB, i32 0, i32 19
  %7 = ptrtoint ptr %idx16 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idx16, align 8
  br i1 %tobool12.not, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.55, i32 noundef %8) #6
  br label %out_cleanup

if.end15:                                         ; preds = %if.end10
  %9 = ptrtoint ptr %semaphore to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %semaphore, align 4
  %call17 = call zeroext i1 @radeon_semaphore_emit_wait(ptr noundef %rdev, i32 noundef %8, ptr noundef %10) #6
  call void @radeon_ring_unlock_commit(ptr noundef %rdev, ptr noundef %ringB, i1 noundef zeroext false) #6
  %call18 = call fastcc i32 @radeon_test_create_and_emit_fence(ptr noundef %rdev, ptr noundef %ringB, ptr noundef nonnull %fenceB)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end15.out_cleanup_crit_edge

if.end15.out_cleanup_crit_edge:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_cleanup

if.end21:                                         ; preds = %if.end15
  call void @msleep(i32 noundef 1000) #6
  %11 = ptrtoint ptr %fenceA to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fenceA, align 4
  %call22 = call zeroext i1 @radeon_fence_signaled(ptr noundef %12) #6
  br i1 %call22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.56) #6
  br label %out_cleanup

if.end24:                                         ; preds = %if.end21
  %13 = ptrtoint ptr %fenceB to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fenceB, align 4
  %call25 = call zeroext i1 @radeon_fence_signaled(ptr noundef %14) #6
  br i1 %call25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.57) #6
  br label %out_cleanup

if.end27:                                         ; preds = %if.end24
  %call28 = call i32 @radeon_ring_lock(ptr noundef %rdev, ptr noundef %ringC, i32 noundef 64) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, ptr noundef %ringC) #6
  br label %out_cleanup

if.end31:                                         ; preds = %if.end27
  %idx32 = getelementptr inbounds %struct.radeon_ring, ptr %ringC, i32 0, i32 19
  %15 = ptrtoint ptr %idx32 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %idx32, align 8
  %17 = ptrtoint ptr %semaphore to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %semaphore, align 4
  %call33 = call zeroext i1 @radeon_semaphore_emit_signal(ptr noundef %rdev, i32 noundef %16, ptr noundef %18) #6
  call void @radeon_ring_unlock_commit(ptr noundef %rdev, ptr noundef %ringC, i1 noundef zeroext false) #6
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0134, 1
  %exitcond.not = icmp eq i32 %inc, 30
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end31
  %i.0134 = phi i32 [ 0, %if.end31 ], [ %inc, %for.cond.for.body_crit_edge ]
  call void @msleep(i32 noundef 100) #6
  %19 = ptrtoint ptr %fenceA to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fenceA, align 4
  %call34 = call zeroext i1 @radeon_fence_signaled(ptr noundef %20) #6
  %21 = ptrtoint ptr %fenceB to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fenceB, align 4
  %call35 = call zeroext i1 @radeon_fence_signaled(ptr noundef %22) #6
  %brmerge = select i1 %call34, i1 true, i1 %call35
  br i1 %brmerge, label %for.body.for.end_crit_edge, label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %call34.lcssa = phi i1 [ %call34, %for.body.for.end_crit_edge ], [ false, %for.cond.for.end_crit_edge ]
  %call35.lcssa = phi i1 [ %call35, %for.body.for.end_crit_edge ], [ false, %for.cond.for.end_crit_edge ]
  %brmerge132 = select i1 %call34.lcssa, i1 true, i1 %call35.lcssa
  br i1 %brmerge132, label %if.else, label %if.then43

if.then43:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.58) #6
  br label %out_cleanup

if.else:                                          ; preds = %for.end
  %23 = select i1 %call34.lcssa, i1 %call35.lcssa, i1 false
  br i1 %23, label %if.then47, label %do.end

if.then47:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.59) #6
  br label %out_cleanup

do.end:                                           ; preds = %if.else
  %.mux = select i1 %call34.lcssa, i32 65, i32 66
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %.mux) #10
  %call52 = call i32 @radeon_ring_lock(ptr noundef %rdev, ptr noundef %ringC, i32 noundef 64) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.then54

if.then54:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, ptr noundef %ringC) #6
  br label %out_cleanup

if.end55:                                         ; preds = %do.end
  %24 = ptrtoint ptr %idx32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %idx32, align 8
  %26 = ptrtoint ptr %semaphore to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %semaphore, align 4
  %call57 = call zeroext i1 @radeon_semaphore_emit_signal(ptr noundef %rdev, i32 noundef %25, ptr noundef %27) #6
  call void @radeon_ring_unlock_commit(ptr noundef %rdev, ptr noundef %ringC, i1 noundef zeroext false) #6
  call void @msleep(i32 noundef 1000) #6
  %28 = ptrtoint ptr %fenceA to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fenceA, align 4
  %call58 = call i32 @radeon_fence_wait(ptr noundef %29, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %if.then60

if.then60:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.62) #6
  br label %out_cleanup

if.end61:                                         ; preds = %if.end55
  %30 = ptrtoint ptr %fenceB to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fenceB, align 4
  %call62 = call i32 @radeon_fence_wait(ptr noundef %31, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end61.out_cleanup_crit_edge, label %if.then64

if.end61.out_cleanup_crit_edge:                   ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_cleanup

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.63) #6
  br label %out_cleanup

out_cleanup:                                      ; preds = %if.then64, %if.end61.out_cleanup_crit_edge, %if.then60, %if.then54, %if.then47, %if.then43, %if.then30, %if.then26, %if.then23, %if.end15.out_cleanup_crit_edge, %if.then13, %if.end4.out_cleanup_crit_edge, %if.then3, %if.then
  %r.0 = phi i32 [ %call, %if.then ], [ %call1, %if.then3 ], [ %call7, %if.end4.out_cleanup_crit_edge ], [ %call11, %if.then13 ], [ %call18, %if.end15.out_cleanup_crit_edge ], [ 0, %if.then23 ], [ 0, %if.then26 ], [ %call28, %if.then30 ], [ 0, %if.then47 ], [ %call52, %if.then54 ], [ %call58, %if.then60 ], [ %call62, %if.then64 ], [ 0, %if.end61.out_cleanup_crit_edge ], [ 0, %if.then43 ]
  call void @radeon_semaphore_free(ptr noundef %rdev, ptr noundef nonnull %semaphore, ptr noundef null) #6
  %32 = ptrtoint ptr %fenceA to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fenceA, align 4
  %tobool66.not = icmp eq ptr %33, null
  br i1 %tobool66.not, label %out_cleanup.if.end68_crit_edge, label %if.then67

out_cleanup.if.end68_crit_edge:                   ; preds = %out_cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

if.then67:                                        ; preds = %out_cleanup
  call void @__sanitizer_cov_trace_pc() #8
  call void @radeon_fence_unref(ptr noundef nonnull %fenceA) #6
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %out_cleanup.if.end68_crit_edge
  %34 = ptrtoint ptr %fenceB to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fenceB, align 4
  %tobool69.not = icmp eq ptr %35, null
  br i1 %tobool69.not, label %if.end68.if.end71_crit_edge, label %if.then70

if.end68.if.end71_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.then70:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  call void @radeon_fence_unref(ptr noundef nonnull %fenceB) #6
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %if.end68.if.end71_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0)
  %tobool72.not = icmp eq i32 %r.0, 0
  br i1 %tobool72.not, label %if.end71.if.end79_crit_edge, label %do.end76

if.end71.if.end79_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

do.end76:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  %call78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %r.0) #10
  br label %if.end79

if.end79:                                         ; preds = %do.end76, %if.end71.if.end79_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %semaphore) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fenceB) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fenceA) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_bo_create(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_bo_pin(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_bo_kmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_bo_kunmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_bo_unpin(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_bo_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

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
declare dso_local i32 @radeon_uvd_get_create_msg(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_uvd_get_destroy_msg(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_vce_get_create_msg(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_vce_get_destroy_msg(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_fence_emit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ring_unlock_undo(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !20, !21, !22, !23, !25, !26, !28, !29, !30, !32, !33, !35, !36, !38, !39, !41, !42, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !78, !79, !80, !82, !83, !84, !86, !87, !88, !89, !90, !91, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !113, !114, !115, !117, !119, !121}
!llvm.module.flags = !{!122, !123, !124, !125, !126, !127, !128, !129}
!llvm.ident = !{!130}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/radeon_test.c", i32 323, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/radeon_test.c", i32 329, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/radeon/radeon_test.c", i32 354, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/radeon/radeon_test.c", i32 360, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/radeon/radeon_test.c", i32 368, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/radeon/radeon_test.c", i32 375, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/radeon/radeon_test.c", i32 403, i32 3}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @radeon_test_ring_sync._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @radeon_test_ring_sync._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/radeon/radeon_test.c", i32 543, i32 4}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @radeon_test_syncing._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @radeon_test_syncing._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @radeon_test_syncing._entry.11, !24, !"_entry", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/radeon/radeon_test.c", i32 546, i32 4}
!25 = !{ptr @radeon_test_syncing._entry_ptr.12, !24, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/radeon/radeon_test.c", i32 560, i32 5}
!28 = !{ptr @radeon_test_syncing._entry.13, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @radeon_test_syncing._entry_ptr.15, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @radeon_test_syncing._entry.16, !31, !"_entry", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/radeon/radeon_test.c", i32 563, i32 5}
!32 = !{ptr @radeon_test_syncing._entry_ptr.17, !31, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @radeon_test_syncing._entry.18, !34, !"_entry", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/radeon/radeon_test.c", i32 566, i32 5}
!35 = !{ptr @radeon_test_syncing._entry_ptr.19, !34, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @radeon_test_syncing._entry.20, !37, !"_entry", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/radeon/radeon_test.c", i32 569, i32 5}
!38 = !{ptr @radeon_test_syncing._entry_ptr.21, !37, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @radeon_test_syncing._entry.22, !40, !"_entry", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/radeon/radeon_test.c", i32 572, i32 5}
!41 = !{ptr @radeon_test_syncing._entry_ptr.23, !40, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @radeon_test_syncing._entry.24, !43, !"_entry", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/radeon/radeon_test.c", i32 575, i32 5}
!44 = !{ptr @radeon_test_syncing._entry_ptr.25, !43, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/radeon/radeon_test.c", i32 51, i32 3}
!47 = !{ptr @.str.27, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/radeon/radeon_test.c", i32 65, i32 3}
!49 = !{ptr @.str.28, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/radeon/radeon_test.c", i32 73, i32 3}
!51 = !{ptr @.str.29, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/radeon/radeon_test.c", i32 81, i32 3}
!53 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/radeon/radeon_test.c", i32 94, i32 4}
!55 = !{ptr @.str.31, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/radeon/radeon_test.c", i32 103, i32 4}
!57 = !{ptr @.str.32, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/radeon/radeon_test.c", i32 109, i32 4}
!59 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/radeon/radeon_test.c", i32 129, i32 4}
!61 = !{ptr @.str.34, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/radeon/radeon_test.c", i32 136, i32 4}
!63 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/radeon/radeon_test.c", i32 144, i32 4}
!65 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/radeon/radeon_test.c", i32 153, i32 5}
!67 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/radeon/radeon_test.c", i32 180, i32 4}
!69 = !{ptr @.str.38, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/radeon/radeon_test.c", i32 187, i32 4}
!71 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/radeon/radeon_test.c", i32 195, i32 4}
!73 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/radeon/radeon_test.c", i32 204, i32 5}
!75 = !{ptr @.str.41, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/radeon/radeon_test.c", i32 221, i32 3}
!77 = !{ptr @.str.42, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @radeon_do_test_moves._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @radeon_do_test_moves._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.44, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/radeon/radeon_test.c", i32 250, i32 3}
!82 = !{ptr @radeon_do_test_moves._entry.43, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @radeon_do_test_moves._entry_ptr.45, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.46, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/radeon/radeon_object.h", i32 71, i32 4}
!86 = !{ptr @.str.47, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.48, !85, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.49, !85, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.50, !85, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @radeon_bo_reserve._entry, !85, !"_entry", i1 false, i1 false}
!91 = !{ptr @radeon_bo_reserve._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!92 = distinct !{null, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../include/drm/ttm/ttm_bo_driver.h", i32 140, i32 7}
!94 = !{ptr @.str.52, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/radeon/radeon_test.c", i32 272, i32 4}
!96 = !{ptr @.str.53, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/radeon/radeon_test.c", i32 278, i32 4}
!98 = !{ptr @.str.54, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/radeon/radeon_test.c", i32 304, i32 4}
!100 = !{ptr @.str.55, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/radeon/radeon_test.c", i32 436, i32 3}
!102 = !{ptr @.str.56, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/radeon/radeon_test.c", i32 448, i32 3}
!104 = !{ptr @.str.57, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/radeon/radeon_test.c", i32 452, i32 3}
!106 = !{ptr @.str.58, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/radeon/radeon_test.c", i32 473, i32 3}
!108 = !{ptr @.str.59, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/radeon/radeon_test.c", i32 476, i32 3}
!110 = !{ptr @.str.60, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/radeon/radeon_test.c", i32 480, i32 2}
!112 = !{ptr @.str.61, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @radeon_test_ring_sync2._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @radeon_test_ring_sync2._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.62, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/radeon/radeon_test.c", i32 494, i32 3}
!117 = !{ptr @.str.63, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/radeon/radeon_test.c", i32 499, i32 3}
!119 = !{ptr @radeon_test_ring_sync2._entry.64, !120, !"_entry", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/radeon/radeon_test.c", i32 513, i32 3}
!121 = !{ptr @radeon_test_ring_sync2._entry_ptr.65, !120, !"_entry_ptr", i1 false, i1 false}
!122 = !{i32 1, !"wchar_size", i32 2}
!123 = !{i32 1, !"min_enum_size", i32 4}
!124 = !{i32 8, !"branch-target-enforcement", i32 0}
!125 = !{i32 8, !"sign-return-address", i32 0}
!126 = !{i32 8, !"sign-return-address-all", i32 0}
!127 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!128 = !{i32 7, !"uwtable", i32 1}
!129 = !{i32 7, !"frame-pointer", i32 2}
!130 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!131 = !{!"auto-init"}
!132 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!133 = !{i8 0, i8 2}
