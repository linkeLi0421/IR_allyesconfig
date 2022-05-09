; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/radeon_ring.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/radeon_ring.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.radeon_ring = type { ptr, ptr, ptr, i32, i32, i64, ptr, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic64_t, i64, i32, i32, i8, i32, i32, i64, i64, i32, i32, i32, ptr, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.atomic64_t = type { i64 }
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
%struct.radeon_asic_ring = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.87, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.87 = type { i32, ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.79, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.80, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.81, ptr, %struct.address_space, %struct.list_head, %union.anon.82, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.79 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.80 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.81 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.82 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@jiffies_64 = external dso_local local_unnamed_addr global i64, section ".data..cacheline_aligned", align 128
@radeon_lockup_timeout = external dso_local local_unnamed_addr global i32, align 4
@radeon_ring_test_lockup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 267, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ring %d stalled for more than %llumsec\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"radeon_ring_test_lockup\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/gpu/drm/radeon/radeon_ring.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@radeon_ring_test_lockup._entry_ptr = internal global ptr @radeon_ring_test_lockup._entry, section ".printk_index", align 4
@radeon_ring_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 396, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"(%d) ring create failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"radeon_ring_init\00", [47 x i8] zeroinitializer }, align 32
@radeon_ring_init._entry_ptr = internal global ptr @radeon_ring_init._entry, section ".printk_index", align 4
@radeon_ring_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 406, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(%d) ring pin failed\0A\00", [42 x i8] zeroinitializer }, align 32
@radeon_ring_init._entry_ptr.9 = internal global ptr @radeon_ring_init._entry.7, section ".printk_index", align 4
@radeon_ring_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 413, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(%d) ring map failed\0A\00", [42 x i8] zeroinitializer }, align 32
@radeon_ring_init._entry_ptr.12 = internal global ptr @radeon_ring_init._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"radeon: writing more dwords to the ring than expected!\0A\00", [40 x i8] zeroinitializer }, align 32
@radeon_bo_reserve._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.16, i32 71, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%p reserve failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"radeon_bo_reserve\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/radeon/radeon_object.h\00", [57 x i8] zeroinitializer }, align 32
@radeon_bo_reserve._entry_ptr = internal global ptr @radeon_bo_reserve._entry, section ".printk_index", align 4
@radeon_debugfs_ring_info_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @radeon_debugfs_ring_info_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"radeon_ring_gfx\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"radeon_ring_cp1\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"radeon_ring_cp2\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"radeon_ring_dma1\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"radeon_ring_dma2\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"radeon_ring_uvd\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"radeon_ring_vce1\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"radeon_ring_vce2\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wptr: 0x%08x [%5d]\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rptr: 0x%08x [%5d]\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rptr next(0x%04x): 0x%08x [%5d]\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"driver's copy of the wptr: 0x%08x [%5d]\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"last semaphore signal addr : 0x%016llx\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"last semaphore wait addr   : 0x%016llx\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%u free dwords in ring\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%u dwords in ring\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"r[%5d]=0x%08x\00", [18 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c" *\00", [29 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c" #\00", [29 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@switch.table.radeon_ring_init = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 266, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 396, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 406, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 413, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant [35 x i8] c"../drivers/gpu/drm/radeon/radeon.h\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 2721, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [42 x i8] c"../drivers/gpu/drm/radeon/radeon_object.h\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 71, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant [30 x i8] c"radeon_debugfs_ring_info_fops\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 519, i32 1 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 525, i32 10 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 527, i32 10 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 529, i32 10 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 531, i32 10 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 533, i32 10 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 535, i32 10 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 537, i32 10 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 539, i32 10 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 477, i32 16 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 481, i32 16 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 486, i32 17 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 491, i32 16 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 493, i32 16 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 495, i32 16 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 497, i32 16 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 498, i32 16 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 508, i32 17 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 510, i32 16 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 512, i32 16 }
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.154 = private constant [40 x i8] c"../drivers/gpu/drm/radeon/radeon_ring.c\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 513, i32 15 }
@___asan_gen_.156 = private unnamed_addr constant [30 x i8] c"switch.table.radeon_ring_init\00", align 1
@llvm.compiler.used = appending global [45 x ptr] [ptr @radeon_bo_reserve._entry, ptr @radeon_bo_reserve._entry_ptr, ptr @radeon_ring_init._entry, ptr @radeon_ring_init._entry.10, ptr @radeon_ring_init._entry.7, ptr @radeon_ring_init._entry_ptr, ptr @radeon_ring_init._entry_ptr.12, ptr @radeon_ring_init._entry_ptr.9, ptr @radeon_ring_test_lockup._entry, ptr @radeon_ring_test_lockup._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @radeon_debugfs_ring_info_fops, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @switch.table.radeon_ring_init], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_ring_test_lockup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_ring_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_ring_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_ring_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_bo_reserve._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_debugfs_ring_info_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.radeon_ring_init to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @radeon_ring_supports_scratch_reg(ptr nocapture noundef readnone %rdev, ptr nocapture noundef readonly %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %idx = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 19
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %switch = icmp ult i32 %1, 3
  ret i1 %switch
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_ring_free_size(ptr noundef %rdev, ptr noundef %ring) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %0 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asic, align 8
  %idx = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 19
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx, align 8
  %arrayidx = getelementptr %struct.radeon_asic, ptr %1, i32 0, i32 14, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call = tail call i32 %7(ptr noundef %rdev, ptr noundef %ring) #8
  %ring_size = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 9
  %8 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ring_size, align 4
  %div21 = lshr i32 %9, 2
  %add = add i32 %div21, %call
  %ring_free_dw = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 10
  %wptr = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 7
  %10 = ptrtoint ptr %wptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wptr, align 4
  %sub = sub i32 %add, %11
  %ptr_mask = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 16
  %12 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ptr_mask, align 4
  %and = and i32 %13, %sub
  %14 = ptrtoint ptr %ring_free_dw to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and, ptr %ring_free_dw, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %ring_free_dw to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div21, ptr %ring_free_dw, align 8
  %last_rptr.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 12
  %16 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %asic, align 8
  %18 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %idx, align 8
  %arrayidx.i = getelementptr %struct.radeon_asic, ptr %17, i32 0, i32 14, i32 %19
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %call.i = tail call i32 %23(ptr noundef %rdev, ptr noundef %ring) #8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %last_rptr.i, i32 noundef 4) #8
  %24 = ptrtoint ptr %last_rptr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 %call.i, ptr %last_rptr.i, align 4
  %last_activity.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 13
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @jiffies_64 to i32))
  %25 = load i64, ptr @jiffies_64, align 128
  %call.i.i6.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %last_activity.i, i32 noundef 8) #8
  tail call void @generic_atomic64_set(ptr noundef %last_activity.i, i64 noundef %25) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_ring_lockup_update(ptr noundef %rdev, ptr noundef %ring) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %last_rptr = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 12
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %0 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asic, align 8
  %idx = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 19
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx, align 8
  %arrayidx = getelementptr %struct.radeon_asic, ptr %1, i32 0, i32 14, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call = tail call i32 %7(ptr noundef %rdev, ptr noundef %ring) #8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %last_rptr, i32 noundef 4) #8
  %8 = ptrtoint ptr %last_rptr to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 %call, ptr %last_rptr, align 4
  %last_activity = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 13
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @jiffies_64 to i32))
  %9 = load i64, ptr @jiffies_64, align 128
  %call.i.i6 = tail call zeroext i1 @__kasan_check_write(ptr noundef %last_activity, i32 noundef 8) #8
  tail call void @generic_atomic64_set(ptr noundef %last_activity, i64 noundef %9) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_ring_alloc(ptr noundef %rdev, ptr noundef %ring, i32 noundef %ndw) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ring_size = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 9
  %0 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ring_size, align 4
  %div26 = lshr i32 %1, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %div26, i32 %ndw)
  %cmp = icmp ult i32 %div26, %ndw
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @radeon_ring_free_size(ptr noundef %rdev, ptr noundef %ring)
  %align_mask = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 15
  %2 = ptrtoint ptr %align_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %align_mask, align 8
  %add = add i32 %3, %ndw
  %neg = xor i32 %3, -1
  %and = and i32 %add, %neg
  %ring_free_dw = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 10
  %idx = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 19
  br label %while.cond

while.cond:                                       ; preds = %if.end6.while.cond_crit_edge, %if.end
  %4 = ptrtoint ptr %ring_free_dw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ring_free_dw, align 8
  %sub = add i32 %5, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %sub)
  %cmp2 = icmp ugt i32 %and, %sub
  br i1 %cmp2, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.cond
  tail call void @radeon_ring_free_size(ptr noundef %rdev, ptr noundef %ring)
  %6 = ptrtoint ptr %ring_free_dw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ring_free_dw, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %7)
  %cmp4 = icmp ult i32 %and, %7
  br i1 %cmp4, label %while.body.while.end_crit_edge, label %if.end6

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end6:                                          ; preds = %while.body
  %8 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idx, align 8
  %call = tail call i32 @radeon_fence_wait_next(ptr noundef %rdev, i32 noundef %9) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end6.while.cond_crit_edge, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6.while.cond_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  %count_dw = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 11
  %10 = ptrtoint ptr %count_dw to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and, ptr %count_dw, align 4
  %wptr = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 7
  %11 = ptrtoint ptr %wptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wptr, align 4
  %wptr_old = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 8
  %13 = ptrtoint ptr %wptr_old to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %wptr_old, align 8
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end ], [ -12, %entry.cleanup_crit_edge ], [ %call, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_fence_wait_next(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_ring_lock(ptr noundef %rdev, ptr noundef %ring, i32 noundef %ndw) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ring_lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 51
  tail call void @mutex_lock_nested(ptr noundef %ring_lock, i32 noundef 0) #8
  %ring_size.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 9
  %0 = ptrtoint ptr %ring_size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ring_size.i, align 4
  %div26.i = lshr i32 %1, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %div26.i, i32 %ndw)
  %cmp.i = icmp ult i32 %div26.i, %ndw
  br i1 %cmp.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end.i:                                         ; preds = %entry
  tail call void @radeon_ring_free_size(ptr noundef %rdev, ptr noundef %ring) #8
  %align_mask.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 15
  %2 = ptrtoint ptr %align_mask.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %align_mask.i, align 8
  %add.i = add i32 %3, %ndw
  %neg.i = xor i32 %3, -1
  %and.i = and i32 %add.i, %neg.i
  %ring_free_dw.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 10
  %idx.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 19
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end6.i.while.cond.i_crit_edge, %if.end.i
  %4 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ring_free_dw.i, align 8
  %sub.i = add i32 %5, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %sub.i)
  %cmp2.i = icmp ugt i32 %and.i, %sub.i
  br i1 %cmp2.i, label %while.body.i, label %while.cond.i.radeon_ring_alloc.exit_crit_edge

while.cond.i.radeon_ring_alloc.exit_crit_edge:    ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_alloc.exit

while.body.i:                                     ; preds = %while.cond.i
  tail call void @radeon_ring_free_size(ptr noundef %rdev, ptr noundef %ring) #8
  %6 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %7)
  %cmp4.i = icmp ult i32 %and.i, %7
  br i1 %cmp4.i, label %while.body.i.radeon_ring_alloc.exit_crit_edge, label %if.end6.i

while.body.i.radeon_ring_alloc.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_alloc.exit

if.end6.i:                                        ; preds = %while.body.i
  %8 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idx.i, align 8
  %call.i = tail call i32 @radeon_fence_wait_next(ptr noundef %rdev, i32 noundef %9) #8
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end6.i.while.cond.i_crit_edge, label %if.end6.i.if.then_crit_edge

if.end6.i.if.then_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end6.i.while.cond.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

radeon_ring_alloc.exit:                           ; preds = %while.body.i.radeon_ring_alloc.exit_crit_edge, %while.cond.i.radeon_ring_alloc.exit_crit_edge
  %count_dw.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 11
  %10 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and.i, ptr %count_dw.i, align 4
  %wptr.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 7
  %11 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wptr.i, align 4
  %wptr_old.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 8
  %13 = ptrtoint ptr %wptr_old.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %wptr_old.i, align 8
  br label %cleanup

if.then:                                          ; preds = %if.end6.i.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %entry.if.then_crit_edge ], [ %call.i, %if.end6.i.if.then_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %ring_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %radeon_ring_alloc.exit
  %retval.0 = phi i32 [ %retval.0.i.ph, %if.then ], [ 0, %radeon_ring_alloc.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_ring_commit(ptr noundef %rdev, ptr noundef %ring, i1 noundef zeroext %hdp_flush) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %hdp_flush, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %0 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asic, align 8
  %idx = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 19
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx, align 8
  %arrayidx = getelementptr %struct.radeon_asic, ptr %1, i32 0, i32 14, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %hdp_flush2 = getelementptr inbounds %struct.radeon_asic_ring, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %hdp_flush2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdp_flush2, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %7(ptr noundef %rdev, ptr noundef %ring) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %wptr = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 7
  %align_mask = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 15
  %8 = ptrtoint ptr %wptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wptr, align 4
  %10 = ptrtoint ptr %align_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %align_mask, align 8
  %and39 = and i32 %11, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool9.not40 = icmp eq i32 %and39, 0
  br i1 %tobool9.not40, label %if.end.do.body_crit_edge, label %while.body.lr.ph

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

while.body.lr.ph:                                 ; preds = %if.end
  %nop = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 18
  %count_dw.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 11
  %ring1.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 2
  %ptr_mask.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 16
  %ring_free_dw.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 10
  br label %while.body

while.body:                                       ; preds = %radeon_ring_write.exit.while.body_crit_edge, %while.body.lr.ph
  %12 = ptrtoint ptr %nop to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nop, align 4
  %14 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count_dw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp.i = icmp slt i32 %15, 1
  br i1 %cmp.i, label %if.then.i, label %while.body.radeon_ring_write.exit_crit_edge

while.body.radeon_ring_write.exit_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #8
  br label %radeon_ring_write.exit

radeon_ring_write.exit:                           ; preds = %if.then.i, %while.body.radeon_ring_write.exit_crit_edge
  %16 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ring1.i, align 8
  %18 = ptrtoint ptr %wptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %wptr, align 4
  %inc.i = add i32 %19, 1
  store i32 %inc.i, ptr %wptr, align 4
  %arrayidx.i = getelementptr i32, ptr %17, i32 %19
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 %13, ptr %arrayidx.i, align 4
  %21 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ptr_mask.i, align 4
  %23 = load i32, ptr %wptr, align 4
  %and.i = and i32 %23, %22
  store i32 %and.i, ptr %wptr, align 4
  %24 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %count_dw.i, align 4
  %dec.i = add i32 %25, -1
  store i32 %dec.i, ptr %count_dw.i, align 4
  %26 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i = add i32 %27, -1
  store i32 %dec4.i, ptr %ring_free_dw.i, align 8
  %28 = ptrtoint ptr %align_mask to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %align_mask, align 8
  %and = and i32 %29, %and.i
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %radeon_ring_write.exit.do.body_crit_edge, label %radeon_ring_write.exit.while.body_crit_edge

radeon_ring_write.exit.while.body_crit_edge:      ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

radeon_ring_write.exit.do.body_crit_edge:         ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %radeon_ring_write.exit.do.body_crit_edge, %if.end.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  tail call void @arm_heavy_mb() #8
  br i1 %hdp_flush, label %land.lhs.true11, label %do.body.if.end17_crit_edge

do.body.if.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

land.lhs.true11:                                  ; preds = %do.body
  %asic12 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %30 = ptrtoint ptr %asic12 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %asic12, align 8
  %mmio_hdp_flush = getelementptr inbounds %struct.radeon_asic, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %mmio_hdp_flush to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio_hdp_flush, align 4
  %tobool13.not = icmp eq ptr %33, null
  br i1 %tobool13.not, label %land.lhs.true11.if.end17_crit_edge, label %if.then14

land.lhs.true11.if.end17_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then14:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %33(ptr noundef %rdev) #8
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %land.lhs.true11.if.end17_crit_edge, %do.body.if.end17_crit_edge
  %asic18 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %34 = ptrtoint ptr %asic18 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %asic18, align 8
  %idx20 = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 19
  %36 = ptrtoint ptr %idx20 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %idx20, align 8
  %arrayidx21 = getelementptr %struct.radeon_asic, ptr %35, i32 0, i32 14, i32 %37
  %38 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx21, align 4
  %set_wptr = getelementptr inbounds %struct.radeon_asic_ring, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %set_wptr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %set_wptr, align 4
  tail call void %41(ptr noundef %rdev, ptr noundef %ring) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_ring_unlock_commit(ptr noundef %rdev, ptr noundef %ring, i1 noundef zeroext %hdp_flush) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @radeon_ring_commit(ptr noundef %rdev, ptr noundef %ring, i1 noundef zeroext %hdp_flush)
  %ring_lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 51
  tail call void @mutex_unlock(ptr noundef %ring_lock) #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @radeon_ring_undo(ptr nocapture noundef %ring) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %wptr_old = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 8
  %0 = ptrtoint ptr %wptr_old to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wptr_old, align 8
  %wptr = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 7
  %2 = ptrtoint ptr %wptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %wptr, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_ring_unlock_undo(ptr noundef %rdev, ptr nocapture noundef %ring) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %wptr_old.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 8
  %0 = ptrtoint ptr %wptr_old.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wptr_old.i, align 8
  %wptr.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 7
  %2 = ptrtoint ptr %wptr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %wptr.i, align 4
  %ring_lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 51
  tail call void @mutex_unlock(ptr noundef %ring_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @radeon_ring_test_lockup(ptr noundef %rdev, ptr noundef %ring) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %0 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asic, align 8
  %idx = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 19
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx, align 8
  %arrayidx = getelementptr %struct.radeon_asic, ptr %1, i32 0, i32 14, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call = tail call i32 %7(ptr noundef %rdev, ptr noundef %ring) #8
  %last_activity = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %last_activity, i32 noundef 8) #8
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %last_activity) #8
  %last_rptr = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 12
  %call.i.i23 = tail call zeroext i1 @__kasan_check_read(ptr noundef %last_rptr, i32 noundef 4) #8
  %8 = ptrtoint ptr %last_rptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %last_rptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %9)
  %cmp.not = icmp eq i32 %call, %9
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %asic, align 8
  %12 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %idx, align 8
  %arrayidx.i = getelementptr %struct.radeon_asic, ptr %11, i32 0, i32 14, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call.i24 = tail call i32 %17(ptr noundef %rdev, ptr noundef %ring) #8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %last_rptr, i32 noundef 4) #8
  %18 = ptrtoint ptr %last_rptr to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 %call.i24, ptr %last_rptr, align 4
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @jiffies_64 to i32))
  %19 = load i64, ptr @jiffies_64, align 128
  %call.i.i6.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %last_activity, i32 noundef 8) #8
  tail call void @generic_atomic64_set(ptr noundef %last_activity, i64 noundef %19) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @jiffies_64 to i32))
  %20 = load i64, ptr @jiffies_64, align 128
  %sub = sub i64 %20, %call.i
  %conv = trunc i64 %sub to i32
  %call4 = tail call i32 @jiffies_to_msecs(i32 noundef %conv) #8
  %conv5 = zext i32 %call4 to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_lockup_timeout to i32))
  %21 = load i32, ptr @radeon_lockup_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  %conv6 = sext i32 %21 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv5, i64 %conv6)
  %cmp7.not = icmp ult i64 %conv5, %conv6
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp7.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rdev, align 8
  %24 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %idx, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str, i32 noundef %25, i64 noundef %conv5) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i1 [ false, %if.then ], [ true, %do.end ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_ring_backup(ptr noundef %rdev, ptr nocapture noundef readonly %ring, ptr nocapture noundef %data) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ring_lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 51
  tail call void @mutex_lock_nested(ptr noundef %ring_lock, i32 noundef 0) #8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %data, align 4
  %ring_obj = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 1
  %1 = ptrtoint ptr %ring_obj to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ring_obj, align 4
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %idx = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 19
  %3 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %idx, align 8
  %call = tail call i32 @radeon_fence_count_emitted(ptr noundef %rdev, i32 noundef %4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %rptr_save_reg = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 4
  %5 = ptrtoint ptr %rptr_save_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rptr_save_reg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool5.not = icmp eq i32 %6, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end4
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %7 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %6)
  %cmp.i = icmp ugt i32 %8, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %6)
  %cmp1.i = icmp ult i32 %6, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %9 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 %6
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !83
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  br label %if.end14

if.else.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %6) #8
  br label %if.end14

if.else:                                          ; preds = %if.end4
  %enabled = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 62, i32 3
  %13 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %enabled, align 8, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool9.not = icmp eq i8 %14, 0
  br i1 %tobool9.not, label %if.else.cleanup_crit_edge, label %if.then10

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %next_rptr_cpu_addr = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 6
  %15 = ptrtoint ptr %next_rptr_cpu_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %next_rptr_cpu_addr, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.else.i, %if.then.i
  %ptr.0 = phi i32 [ %19, %if.then10 ], [ %call3.i, %if.else.i ], [ %12, %if.then.i ]
  %wptr = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 7
  %20 = ptrtoint ptr %wptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %wptr, align 4
  %ring_size = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 9
  %22 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ring_size, align 4
  %div63 = lshr i32 %23, 2
  %add = sub i32 %21, %ptr.0
  %sub = add i32 %add, %div63
  %ptr_mask = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 16
  %24 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ptr_mask, align 4
  %and = and i32 %sub, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp15 = icmp eq i32 %and, 0
  br i1 %cmp15, label %if.end14.cleanup_crit_edge, label %if.end18

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %26 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %and, i32 4) #8
  %27 = extractvalue { i32, i1 } %26, 1
  br i1 %27, label %kvmalloc_array.exit.thread, label %kvmalloc_array.exit, !prof !86

kvmalloc_array.exit.thread:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %data, align 4
  br label %cleanup

kvmalloc_array.exit:                              ; preds = %if.end18
  %29 = extractvalue { i32, i1 } %26, 0
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %29, i32 noundef 3264, i32 noundef -1) #12
  %30 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i.i, ptr %data, align 4
  %tobool20.not = icmp eq ptr %call.i.i, null
  br i1 %tobool20.not, label %kvmalloc_array.exit.cleanup_crit_edge, label %for.body.preheader

kvmalloc_array.exit.cleanup_crit_edge:            ; preds = %kvmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.preheader:                               ; preds = %kvmalloc_array.exit
  %ring25 = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.069 = phi i32 [ %inc29, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %ptr.168 = phi i32 [ %and28, %for.body.for.body_crit_edge ], [ %ptr.0, %for.body.preheader ]
  %31 = ptrtoint ptr %ring25 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ring25, align 8
  %inc = add i32 %ptr.168, 1
  %arrayidx = getelementptr i32, ptr %32, i32 %ptr.168
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %arrayidx, align 4
  %35 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data, align 4
  %arrayidx26 = getelementptr i32, ptr %36, i32 %i.069
  %37 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %34, ptr %arrayidx26, align 4
  %38 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ptr_mask, align 4
  %and28 = and i32 %39, %inc
  %inc29 = add nuw i32 %i.069, 1
  %exitcond.not = icmp eq i32 %inc29, %and
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %kvmalloc_array.exit.cleanup_crit_edge, %kvmalloc_array.exit.thread, %if.end14.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ 0, %kvmalloc_array.exit.thread ], [ 0, %kvmalloc_array.exit.cleanup_crit_edge ], [ %and, %for.body.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %ring_lock) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_fence_count_emitted(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_ring_restore(ptr noundef %rdev, ptr noundef %ring, i32 noundef %size, ptr noundef %data) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not = icmp eq i32 %size, 0
  %tobool1.not = icmp eq ptr %data, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @radeon_ring_lock(ptr noundef %rdev, ptr noundef %ring, i32 noundef %size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %for.body.lr.ph, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %count_dw.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 11
  %ring1.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 2
  %wptr.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 7
  %ptr_mask.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 16
  %ring_free_dw.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %radeon_ring_write.exit.for.body_crit_edge, %for.body.lr.ph
  %i.019 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %radeon_ring_write.exit.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %data, i32 %i.019
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count_dw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp slt i32 %3, 1
  br i1 %cmp.i, label %if.then.i, label %for.body.radeon_ring_write.exit_crit_edge

for.body.radeon_ring_write.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #8
  br label %radeon_ring_write.exit

radeon_ring_write.exit:                           ; preds = %if.then.i, %for.body.radeon_ring_write.exit_crit_edge
  %4 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ring1.i, align 8
  %6 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wptr.i, align 4
  %inc.i = add i32 %7, 1
  store i32 %inc.i, ptr %wptr.i, align 4
  %arrayidx.i = getelementptr i32, ptr %5, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 %1, ptr %arrayidx.i, align 4
  %9 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ptr_mask.i, align 4
  %11 = load i32, ptr %wptr.i, align 4
  %and.i = and i32 %11, %10
  store i32 %and.i, ptr %wptr.i, align 4
  %12 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count_dw.i, align 4
  %dec.i = add i32 %13, -1
  store i32 %dec.i, ptr %count_dw.i, align 4
  %14 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i = add i32 %15, -1
  store i32 %dec4.i, ptr %ring_free_dw.i, align 8
  %inc = add nuw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, %size
  br i1 %exitcond.not, label %for.end, label %radeon_ring_write.exit.for.body_crit_edge

radeon_ring_write.exit.for.body_crit_edge:        ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %radeon_ring_write.exit
  %wptr.i16 = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 7
  %align_mask.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 15
  %16 = ptrtoint ptr %wptr.i16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wptr.i16, align 4
  %18 = ptrtoint ptr %align_mask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %align_mask.i, align 8
  %and39.i = and i32 %19, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool9.not40.i = icmp eq i32 %and39.i, 0
  br i1 %tobool9.not40.i, label %for.end.radeon_ring_commit.exit_crit_edge, label %while.body.lr.ph.i

for.end.radeon_ring_commit.exit_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_commit.exit

while.body.lr.ph.i:                               ; preds = %for.end
  %nop.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 18
  %count_dw.i.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 11
  %ring1.i.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 2
  %ptr_mask.i.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 16
  %ring_free_dw.i.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 10
  br label %while.body.i

while.body.i:                                     ; preds = %radeon_ring_write.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %20 = ptrtoint ptr %nop.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nop.i, align 4
  %22 = ptrtoint ptr %count_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %count_dw.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp.i.i = icmp slt i32 %23, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %while.body.i.radeon_ring_write.exit.i_crit_edge

while.body.i.radeon_ring_write.exit.i_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #8
  br label %radeon_ring_write.exit.i

radeon_ring_write.exit.i:                         ; preds = %if.then.i.i, %while.body.i.radeon_ring_write.exit.i_crit_edge
  %24 = ptrtoint ptr %ring1.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ring1.i.i, align 8
  %26 = ptrtoint ptr %wptr.i16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %wptr.i16, align 4
  %inc.i.i = add i32 %27, 1
  store i32 %inc.i.i, ptr %wptr.i16, align 4
  %arrayidx.i.i = getelementptr i32, ptr %25, i32 %27
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 %21, ptr %arrayidx.i.i, align 4
  %29 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ptr_mask.i.i, align 4
  %31 = load i32, ptr %wptr.i16, align 4
  %and.i.i = and i32 %31, %30
  store i32 %and.i.i, ptr %wptr.i16, align 4
  %32 = ptrtoint ptr %count_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %count_dw.i.i, align 4
  %dec.i.i = add i32 %33, -1
  store i32 %dec.i.i, ptr %count_dw.i.i, align 4
  %34 = ptrtoint ptr %ring_free_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ring_free_dw.i.i, align 8
  %dec4.i.i = add i32 %35, -1
  store i32 %dec4.i.i, ptr %ring_free_dw.i.i, align 8
  %36 = ptrtoint ptr %align_mask.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %align_mask.i, align 8
  %and.i17 = and i32 %37, %and.i.i
  %tobool9.not.i = icmp eq i32 %and.i17, 0
  br i1 %tobool9.not.i, label %radeon_ring_write.exit.i.radeon_ring_commit.exit_crit_edge, label %radeon_ring_write.exit.i.while.body.i_crit_edge

radeon_ring_write.exit.i.while.body.i_crit_edge:  ; preds = %radeon_ring_write.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

radeon_ring_write.exit.i.radeon_ring_commit.exit_crit_edge: ; preds = %radeon_ring_write.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_commit.exit

radeon_ring_commit.exit:                          ; preds = %radeon_ring_write.exit.i.radeon_ring_commit.exit_crit_edge, %for.end.radeon_ring_commit.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  tail call void @arm_heavy_mb() #8
  %asic18.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %38 = ptrtoint ptr %asic18.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %asic18.i, align 8
  %idx20.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 19
  %40 = ptrtoint ptr %idx20.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %idx20.i, align 8
  %arrayidx21.i = getelementptr %struct.radeon_asic, ptr %39, i32 0, i32 14, i32 %41
  %42 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx21.i, align 4
  %set_wptr.i = getelementptr inbounds %struct.radeon_asic_ring, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %set_wptr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %set_wptr.i, align 4
  tail call void %45(ptr noundef %rdev, ptr noundef %ring) #8
  %ring_lock.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 51
  tail call void @mutex_unlock(ptr noundef %ring_lock.i) #8
  tail call void @kvfree(ptr noundef nonnull %data) #8
  br label %cleanup

cleanup:                                          ; preds = %radeon_ring_commit.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %radeon_ring_commit.exit ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_ring_init(ptr noundef %rdev, ptr noundef %ring, i32 noundef %ring_size, i32 noundef %rptr_offs, i32 noundef %nop) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ring_size1 = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 9
  %0 = ptrtoint ptr %ring_size1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %ring_size, ptr %ring_size1, align 4
  %rptr_offs2 = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 3
  %1 = ptrtoint ptr %rptr_offs2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %rptr_offs, ptr %rptr_offs2, align 4
  %nop3 = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 18
  %2 = ptrtoint ptr %nop3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %nop, ptr %nop3, align 4
  %3 = ptrtoint ptr %ring to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %rdev, ptr %ring, align 8
  %ring_obj = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 1
  %4 = ptrtoint ptr %ring_obj to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ring_obj, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then, label %entry.if.end36_crit_edge

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then:                                          ; preds = %entry
  %call = tail call i32 @radeon_bo_create(ptr noundef %rdev, i32 noundef %ring_size, i32 noundef 4096, i1 noundef zeroext true, i32 noundef 2, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef %ring_obj) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.5, i32 noundef %call) #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  %8 = ptrtoint ptr %ring_obj to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ring_obj, align 4
  %resv32.i.i = getelementptr inbounds %struct.radeon_bo, ptr %9, i32 0, i32 4, i32 0, i32 9
  %10 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %11, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %retval.1.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %12 = zext i32 %retval.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.1.i.i, label %do.end.i [
    i32 0, label %if.end14
    i32 -512, label %if.end.cleanup_crit_edge
  ], !prof !87

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %rdev.i = getelementptr inbounds %struct.radeon_bo, ptr %9, i32 0, i32 13
  %13 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rdev.i, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.14, ptr noundef %9) #11
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %17 = ptrtoint ptr %ring_obj to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ring_obj, align 4
  %gpu_addr = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 14
  %call16 = tail call i32 @radeon_bo_pin(ptr noundef %18, i32 noundef 2, ptr noundef %gpu_addr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  %19 = ptrtoint ptr %ring_obj to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ring_obj, align 4
  br i1 %tobool17.not, label %if.end24, label %if.then18

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %tbo.i = getelementptr inbounds %struct.radeon_bo, ptr %20, i32 0, i32 4
  %bdev.i.i.i = getelementptr inbounds %struct.radeon_bo, ptr %20, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %22, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #8
  %resource.i.i.i = getelementptr inbounds %struct.radeon_bo, ptr %20, i32 0, i32 4, i32 6
  %23 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %resource.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i, ptr noundef %24, ptr noundef null) #8
  %25 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %26, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #8
  %resv.i.i = getelementptr inbounds %struct.radeon_bo, ptr %20, i32 0, i32 4, i32 0, i32 9
  %27 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %resv.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %28) #8
  tail call void @ww_mutex_unlock(ptr noundef %28) #8
  %29 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.8, i32 noundef %call16) #11
  br label %cleanup

if.end24:                                         ; preds = %if.end14
  %ring26 = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 2
  %call27 = tail call i32 @radeon_bo_kmap(ptr noundef %20, ptr noundef %ring26) #8
  %31 = ptrtoint ptr %ring_obj to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ring_obj, align 4
  %tbo.i94 = getelementptr inbounds %struct.radeon_bo, ptr %32, i32 0, i32 4
  %bdev.i.i.i95 = getelementptr inbounds %struct.radeon_bo, ptr %32, i32 0, i32 4, i32 1
  %33 = ptrtoint ptr %bdev.i.i.i95 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bdev.i.i.i95, align 8
  %lru_lock.i.i.i96 = getelementptr inbounds %struct.ttm_device, ptr %34, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i96) #8
  %resource.i.i.i97 = getelementptr inbounds %struct.radeon_bo, ptr %32, i32 0, i32 4, i32 6
  %35 = ptrtoint ptr %resource.i.i.i97 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %resource.i.i.i97, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i94, ptr noundef %36, ptr noundef null) #8
  %37 = ptrtoint ptr %bdev.i.i.i95 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bdev.i.i.i95, align 8
  %lru_lock2.i.i.i98 = getelementptr inbounds %struct.ttm_device, ptr %38, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i98) #8
  %resv.i.i99 = getelementptr inbounds %struct.radeon_bo, ptr %32, i32 0, i32 4, i32 0, i32 9
  %39 = ptrtoint ptr %resv.i.i99 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %resv.i.i99, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %40) #8
  tail call void @ww_mutex_unlock(ptr noundef %40) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool29.not = icmp eq i32 %call27, 0
  br i1 %tobool29.not, label %if.end24.if.end36_crit_edge, label %do.end33

if.end24.if.end36_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

do.end33:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.11, i32 noundef %call27) #11
  br label %cleanup

if.end36:                                         ; preds = %if.end24.if.end36_crit_edge, %entry.if.end36_crit_edge
  %43 = ptrtoint ptr %ring_size1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ring_size1, align 4
  %div91 = lshr i32 %44, 2
  %sub = add nsw i32 %div91, -1
  %ptr_mask = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 16
  %45 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %sub, ptr %ptr_mask, align 4
  %ring_free_dw = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 10
  %46 = ptrtoint ptr %ring_free_dw to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %div91, ptr %ring_free_dw, align 8
  %enabled = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 62, i32 3
  %47 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %enabled, align 8, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool40.not = icmp eq i8 %48, 0
  br i1 %tobool40.not, label %if.end36.if.end48_crit_edge, label %if.then41

if.end36.if.end48_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %idx = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 19
  %49 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %idx, align 8
  %mul = shl i32 %50, 2
  %add = add i32 %mul, 256
  %gpu_addr43 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 62, i32 2
  %51 = ptrtoint ptr %gpu_addr43 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %gpu_addr43, align 8
  %conv = zext i32 %add to i64
  %add44 = add i64 %52, %conv
  %next_rptr_gpu_addr = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 5
  %53 = ptrtoint ptr %next_rptr_gpu_addr to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %add44, ptr %next_rptr_gpu_addr, align 8
  %wb46 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 62, i32 1
  %54 = ptrtoint ptr %wb46 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %wb46, align 4
  %div4793 = lshr exact i32 %add, 2
  %arrayidx = getelementptr i32, ptr %55, i32 %div4793
  %next_rptr_cpu_addr = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 6
  %56 = ptrtoint ptr %next_rptr_cpu_addr to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %arrayidx, ptr %next_rptr_cpu_addr, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.then41, %if.end36.if.end48_crit_edge
  %idx.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 19
  %57 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %idx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %58)
  %59 = icmp ult i32 %58, 8
  br i1 %59, label %switch.lookup, label %if.end48.radeon_debugfs_ring_init.exit_crit_edge

if.end48.radeon_debugfs_ring_init.exit_crit_edge: ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_debugfs_ring_init.exit

switch.lookup:                                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [8 x ptr], ptr @switch.table.radeon_ring_init, i32 0, i32 %58
  %60 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %60)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %ddev.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %61 = ptrtoint ptr %ddev.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ddev.i, align 4
  %primary.i = getelementptr inbounds %struct.drm_device, ptr %62, i32 0, i32 6
  %63 = ptrtoint ptr %primary.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %primary.i, align 4
  %debugfs_root.i = getelementptr inbounds %struct.drm_minor, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %debugfs_root.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %debugfs_root.i, align 4
  %call1.i = tail call ptr @debugfs_create_file(ptr noundef nonnull %switch.load, i16 noundef zeroext 292, ptr noundef %66, ptr noundef %ring, ptr noundef nonnull @radeon_debugfs_ring_info_fops) #8
  br label %radeon_debugfs_ring_init.exit

radeon_debugfs_ring_init.exit:                    ; preds = %switch.lookup, %if.end48.radeon_debugfs_ring_init.exit_crit_edge
  %last_rptr.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 12
  %asic.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %67 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %asic.i, align 8
  %69 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %idx.i, align 8
  %arrayidx.i = getelementptr %struct.radeon_asic, ptr %68, i32 0, i32 14, i32 %70
  %71 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 4
  %call.i = tail call i32 %74(ptr noundef %rdev, ptr noundef %ring) #8
  %call.i.i.i101 = tail call zeroext i1 @__kasan_check_write(ptr noundef %last_rptr.i, i32 noundef 4) #8
  %75 = ptrtoint ptr %last_rptr.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile i32 %call.i, ptr %last_rptr.i, align 4
  %last_activity.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 13
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @jiffies_64 to i32))
  %76 = load i64, ptr @jiffies_64, align 128
  %call.i.i6.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %last_activity.i, i32 noundef 8) #8
  tail call void @generic_atomic64_set(ptr noundef %last_activity.i, i64 noundef %76) #8
  br label %cleanup

cleanup:                                          ; preds = %radeon_debugfs_ring_init.exit, %do.end33, %if.then18, %do.end.i, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call16, %if.then18 ], [ %call27, %do.end33 ], [ 0, %radeon_debugfs_ring_init.exit ], [ %retval.1.i.i, %do.end.i ], [ %retval.1.i.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_bo_create(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_bo_pin(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_bo_kmap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_ring_fini(ptr noundef %rdev, ptr nocapture noundef %ring) local_unnamed_addr #1 align 64 {
entry:
  %ring_obj = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ring_obj) #8
  %ring_lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 51
  tail call void @mutex_lock_nested(ptr noundef %ring_lock, i32 noundef 0) #8
  %ring_obj1 = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %ring_obj1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring_obj1, align 4
  %2 = ptrtoint ptr %ring_obj to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %ring_obj, align 4
  %ready = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 17
  %3 = ptrtoint ptr %ready to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %ready, align 8
  %ring2 = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 2
  %4 = ptrtoint ptr %ring2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %ring2, align 8
  store ptr null, ptr %ring_obj1, align 4
  tail call void @mutex_unlock(ptr noundef %ring_lock) #8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then:                                          ; preds = %entry
  %resv32.i.i = getelementptr inbounds %struct.radeon_bo, ptr %1, i32 0, i32 4, i32 0, i32 9
  %5 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %6, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %retval.1.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %7 = zext i32 %retval.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %retval.1.i.i, label %do.end.i [
    i32 0, label %if.then7
    i32 -512, label %if.then.if.end_crit_edge
  ], !prof !87

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %rdev.i = getelementptr inbounds %struct.radeon_bo, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rdev.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.14, ptr noundef nonnull %1) #11
  br label %if.end

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %ring_obj to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ring_obj, align 4
  tail call void @radeon_bo_kunmap(ptr noundef %13) #8
  tail call void @radeon_bo_unpin(ptr noundef %13) #8
  %tbo.i = getelementptr inbounds %struct.radeon_bo, ptr %13, i32 0, i32 4
  %bdev.i.i.i = getelementptr inbounds %struct.radeon_bo, ptr %13, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %15, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #8
  %resource.i.i.i = getelementptr inbounds %struct.radeon_bo, ptr %13, i32 0, i32 4, i32 6
  %16 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %resource.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i, ptr noundef %17, ptr noundef null) #8
  %18 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %19, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #8
  %resv.i.i = getelementptr inbounds %struct.radeon_bo, ptr %13, i32 0, i32 4, i32 0, i32 9
  %20 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %resv.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %21) #8
  tail call void @ww_mutex_unlock(ptr noundef %21) #8
  br label %if.end

if.end:                                           ; preds = %if.then7, %do.end.i, %if.then.if.end_crit_edge
  call void @radeon_bo_unref(ptr noundef nonnull %ring_obj) #8
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry.if.end8_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ring_obj) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_bo_kunmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_bo_unpin(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_bo_unref(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_mm_rreg_slow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock_interruptible(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_move_to_lru_tail(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_reset_shared_max(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_debugfs_ring_info_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @radeon_debugfs_ring_info_show, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_debugfs_ring_info_show(ptr noundef %m, ptr nocapture noundef readnone %unused) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void @radeon_ring_free_size(ptr noundef %3, ptr noundef %1)
  %ring_size = getelementptr inbounds %struct.radeon_ring, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ring_size, align 4
  %div89 = lshr i32 %5, 2
  %ring_free_dw = getelementptr inbounds %struct.radeon_ring, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %ring_free_dw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ring_free_dw, align 8
  %sub = sub i32 %div89, %7
  %asic = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 56
  %8 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %asic, align 8
  %idx = getelementptr inbounds %struct.radeon_ring, ptr %1, i32 0, i32 19
  %10 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %idx, align 8
  %arrayidx = getelementptr %struct.radeon_asic, ptr %9, i32 0, i32 14, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %get_wptr = getelementptr inbounds %struct.radeon_asic_ring, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %get_wptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_wptr, align 4
  %call = tail call i32 %15(ptr noundef %3, ptr noundef %1) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.26, i32 noundef %call, i32 noundef %call) #8
  %16 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %asic, align 8
  %18 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %idx, align 8
  %arrayidx6 = getelementptr %struct.radeon_asic, ptr %17, i32 0, i32 14, i32 %19
  %20 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx6, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %call7 = tail call i32 %23(ptr noundef %3, ptr noundef %1) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.27, i32 noundef %call7, i32 noundef %call7) #8
  %rptr_save_reg = getelementptr inbounds %struct.radeon_ring, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %rptr_save_reg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rptr_save_reg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not = icmp eq i32 %25, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 18
  %26 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %25)
  %cmp.i = icmp ugt i32 %27, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %25)
  %cmp1.i = icmp ult i32 %25, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %28 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %29, i32 %25
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !83
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %25) #8
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i ], [ %31, %if.then.i ]
  %32 = ptrtoint ptr %rptr_save_reg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rptr_save_reg, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.28, i32 noundef %33, i32 noundef %retval.0.i, i32 noundef %retval.0.i) #8
  br label %if.end

if.end:                                           ; preds = %r100_mm_rreg.exit, %entry.if.end_crit_edge
  %rptr_next.0 = phi i32 [ %retval.0.i, %r100_mm_rreg.exit ], [ -1, %entry.if.end_crit_edge ]
  %wptr11 = getelementptr inbounds %struct.radeon_ring, ptr %1, i32 0, i32 7
  %34 = ptrtoint ptr %wptr11 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %wptr11, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.29, i32 noundef %35, i32 noundef %35) #8
  %last_semaphore_signal_addr = getelementptr inbounds %struct.radeon_ring, ptr %1, i32 0, i32 20
  %36 = ptrtoint ptr %last_semaphore_signal_addr to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %last_semaphore_signal_addr, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.30, i64 noundef %37) #8
  %last_semaphore_wait_addr = getelementptr inbounds %struct.radeon_ring, ptr %1, i32 0, i32 21
  %38 = ptrtoint ptr %last_semaphore_wait_addr to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %last_semaphore_wait_addr, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.31, i64 noundef %39) #8
  %40 = ptrtoint ptr %ring_free_dw to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ring_free_dw, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.32, i32 noundef %41) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.33, i32 noundef %sub) #8
  %ring14 = getelementptr inbounds %struct.radeon_ring, ptr %1, i32 0, i32 2
  %42 = ptrtoint ptr %ring14 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ring14, align 8
  %tobool15.not = icmp eq ptr %43, null
  br i1 %tobool15.not, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %ptr_mask = getelementptr inbounds %struct.radeon_ring, ptr %1, i32 0, i32 16
  %44 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ptr_mask, align 4
  %add = add i32 %call7, -31
  %sub19 = add i32 %add, %45
  %and = and i32 %sub19, %45
  %add21 = add i32 %sub, 32
  br label %for.body

for.body:                                         ; preds = %if.end29.for.body_crit_edge, %if.end17
  %j.091 = phi i32 [ 0, %if.end17 ], [ %inc, %if.end29.for.body_crit_edge ]
  %i.090 = phi i32 [ %and, %if.end17 ], [ %and32, %if.end29.for.body_crit_edge ]
  %46 = ptrtoint ptr %ring14 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ring14, align 8
  %arrayidx23 = getelementptr i32, ptr %47, i32 %i.090
  %48 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %arrayidx23, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.34, i32 noundef %i.090, i32 noundef %49) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call7, i32 %i.090)
  %cmp24 = icmp eq i32 %call7, %i.090
  br i1 %cmp24, label %if.then25, label %for.body.if.end26_crit_edge

for.body.if.end26_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then25:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.35) #8
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %for.body.if.end26_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %rptr_next.0, i32 %i.090)
  %cmp27 = icmp eq i32 %rptr_next.0, %i.090
  br i1 %cmp27, label %if.then28, label %if.end26.if.end29_crit_edge

if.end26.if.end29_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.36) #8
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end26.if.end29_crit_edge
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.37) #8
  %add30 = add i32 %i.090, 1
  %50 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ptr_mask, align 4
  %and32 = and i32 %51, %add30
  %inc = add i32 %j.091, 1
  %cmp.not = icmp ugt i32 %inc, %add21
  br i1 %cmp.not, label %if.end29.cleanup_crit_edge, label %if.end29.for.body_crit_edge

if.end29.for.body_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end29.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !25, !26, !27, !28, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/radeon_ring.c", i32 266, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @radeon_ring_test_lockup._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @radeon_ring_test_lockup._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/radeon/radeon_ring.c", i32 396, i32 4}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @radeon_ring_init._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @radeon_ring_init._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/radeon/radeon_ring.c", i32 406, i32 4}
!15 = !{ptr @radeon_ring_init._entry.7, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @radeon_ring_init._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/radeon/radeon_ring.c", i32 413, i32 4}
!19 = !{ptr @radeon_ring_init._entry.10, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @radeon_ring_init._entry_ptr.12, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/radeon/radeon.h", i32 2721, i32 3}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/radeon/radeon_object.h", i32 71, i32 4}
!25 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.16, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @radeon_bo_reserve._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @radeon_bo_reserve._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = distinct !{null, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../include/drm/ttm/ttm_bo_driver.h", i32 140, i32 7}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/radeon/radeon_ring.c", i32 525, i32 10}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/radeon/radeon_ring.c", i32 527, i32 10}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/radeon/radeon_ring.c", i32 529, i32 10}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/radeon/radeon_ring.c", i32 531, i32 10}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/radeon/radeon_ring.c", i32 533, i32 10}
!41 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/radeon/radeon_ring.c", i32 535, i32 10}
!43 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/radeon/radeon_ring.c", i32 537, i32 10}
!45 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/radeon/radeon_ring.c", i32 539, i32 10}
!47 = !{ptr @radeon_debugfs_ring_info_fops, !48, !"radeon_debugfs_ring_info_fops", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/radeon/radeon_ring.c", i32 519, i32 1}
!49 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/radeon/radeon_ring.c", i32 477, i32 16}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/radeon/radeon_ring.c", i32 481, i32 16}
!53 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/radeon/radeon_ring.c", i32 486, i32 17}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/radeon/radeon_ring.c", i32 491, i32 16}
!57 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/radeon/radeon_ring.c", i32 493, i32 16}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/radeon/radeon_ring.c", i32 495, i32 16}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/radeon/radeon_ring.c", i32 497, i32 16}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/radeon/radeon_ring.c", i32 498, i32 16}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/radeon/radeon_ring.c", i32 508, i32 17}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/radeon/radeon_ring.c", i32 510, i32 16}
!69 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/radeon/radeon_ring.c", i32 512, i32 16}
!71 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/radeon/radeon_ring.c", i32 513, i32 15}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{i64 2157618348}
!83 = !{i64 6024802}
!84 = !{i64 2157469364}
!85 = !{i8 0, i8 2}
!86 = !{!"branch_weights", i32 1, i32 2000}
!87 = !{!"branch_weights", i32 1, i32 4000, i32 1}
