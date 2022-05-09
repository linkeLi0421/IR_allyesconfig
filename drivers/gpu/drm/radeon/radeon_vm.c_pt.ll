; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/radeon_vm.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/radeon_vm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%struct.atomic_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.radeon_vm = type { %struct.mutex, %struct.rb_root_cached, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, ptr, ptr, [8 x %struct.radeon_vm_id] }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.radeon_vm_id = type { i32, i64, ptr, ptr }
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
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }
%struct.mmu_interval_notifier = type { %struct.interval_tree_node, ptr, ptr, %struct.hlist_node, i32 }
%struct.interval_tree_node = type { %struct.rb_node, i32, i32, i32 }
%struct.radeon_vm_pt = type { ptr, i64 }
%struct.radeon_fence = type { %struct.dma_fence, ptr, i64, i32, i8, %struct.wait_queue_entry }
%struct.dma_fence = type { ptr, ptr, %union.anon.84, i64, i64, i32, %struct.kref, i32 }
%union.anon.84 = type { i64 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ttm_resource = type { i32, i32, i32, i32, %struct.ttm_bus_placement }
%struct.ttm_bus_placement = type { ptr, i32, i8, i32 }
%struct.radeon_asic_ring = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.radeon_bo_va = type { %struct.list_head, i32, ptr, i32, %struct.interval_tree_node, %struct.list_head, ptr, ptr }
%struct.ttm_operation_ctx = type { i8, i8, i8, i8, i8, ptr, i64 }
%struct.radeon_ib = type { ptr, i32, i64, ptr, i32, ptr, ptr, i8, %struct.radeon_sync }
%struct.radeon_sync = type { [4 x ptr], [8 x ptr], ptr }

@radeon_vm_bo_set_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 469, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"va above limit (0x%08X >= 0x%08X)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"radeon_vm_bo_set_addr\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/gpu/drm/radeon/radeon_vm.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@radeon_vm_bo_set_addr._entry_ptr = internal global ptr @radeon_vm_bo_set_addr._entry, section ".printk_index", align 4
@radeon_vm_bo_set_addr._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 490, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"bo %p va 0x%010Lx conflict with (bo %p 0x%010lx 0x%010lx)\0A\00", [37 x i8] zeroinitializer }, align 32
@radeon_vm_bo_set_addr._entry_ptr.7 = internal global ptr @radeon_vm_bo_set_addr._entry.5, section ".printk_index", align 4
@radeon_vm_block_size = external dso_local local_unnamed_addr global i32, align 4
@radeon_vm_bo_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 924, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"bo %p don't has a mapping in vm %p\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"radeon_vm_bo_update\00", [44 x i8] zeroinitializer }, align 32
@radeon_vm_bo_update._entry_ptr = internal global ptr @radeon_vm_bo_update._entry, section ".printk_index", align 4
@radeon_vm_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&vm->mutex\00", [21 x i8] zeroinitializer }, align 32
@radeon_vm_init.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&vm->status_lock\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Cannot allocate memory for page table array\0A\00", [51 x i8] zeroinitializer }, align 32
@radeon_vm_fini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 1235, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"still active bo inside vm\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"radeon_vm_fini\00", [17 x i8] zeroinitializer }, align 32
@radeon_vm_fini._entry_ptr = internal global ptr @radeon_vm_fini._entry, section ".printk_index", align 4
@__tracepoint_radeon_vm_grab_id = external dso_local global %struct.tracepoint, align 4
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/radeon/radeon_trace.h\00", [58 x i8] zeroinitializer }, align 32
@trace_radeon_vm_grab_id.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_radeon_vm_flush = external dso_local global %struct.tracepoint, align 4
@trace_radeon_vm_flush.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__const.radeon_vm_clear_bo.ctx = private unnamed_addr constant { i8, i8, i8, i8, i8, [3 x i8], ptr, [4 x i8], i64 } { i8 1, i8 0, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, ptr null, [4 x i8] zeroinitializer, i64 0 }, align 8
@__tracepoint_radeon_vm_set_page = external dso_local global %struct.tracepoint, align 4
@trace_radeon_vm_set_page.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_radeon_vm_bo_update = external dso_local global %struct.tracepoint, align 4
@trace_radeon_vm_bo_update.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@radeon_bo_reserve._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.21, i32 71, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%p reserve failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"radeon_bo_reserve\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/radeon/radeon_object.h\00", [57 x i8] zeroinitializer }, align 32
@radeon_bo_reserve._entry_ptr = internal global ptr @radeon_bo_reserve._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 468, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 488, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 923, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 1186, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 1188, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 1200, i32 3 }
@___asan_gen_.84 = private constant [38 x i8] c"../drivers/gpu/drm/radeon/radeon_vm.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 1235, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [41 x i8] c"../drivers/gpu/drm/radeon/radeon_trace.h\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 50, i32 1 }
@___asan_gen_.93 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 108, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [42 x i8] c"../drivers/gpu/drm/radeon/radeon_object.h\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 71, i32 4 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @radeon_bo_reserve._entry, ptr @radeon_bo_reserve._entry_ptr, ptr @radeon_vm_bo_set_addr._entry, ptr @radeon_vm_bo_set_addr._entry.5, ptr @radeon_vm_bo_set_addr._entry_ptr, ptr @radeon_vm_bo_set_addr._entry_ptr.7, ptr @radeon_vm_bo_update._entry, ptr @radeon_vm_bo_update._entry_ptr, ptr @radeon_vm_fini._entry, ptr @radeon_vm_fini._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @radeon_vm_init.__key, ptr @.str.10, ptr @radeon_vm_init.__key.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_vm_bo_set_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_vm_bo_set_addr._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_vm_bo_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_vm_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_vm_init.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_vm_fini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_bo_reserve._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_vm_manager_init(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 100, i32 4
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 8, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %2 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asic, align 8
  %vm = getelementptr inbounds %struct.radeon_asic, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %vm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vm, align 4
  %call = tail call i32 %5(ptr noundef %rdev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %enabled, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ 0, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_vm_manager_fini(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 100, i32 4
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 8, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %vm_manager = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 100
  tail call void @radeon_fence_unref(ptr noundef %vm_manager) #11
  %arrayidx.1 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 100, i32 0, i32 1
  tail call void @radeon_fence_unref(ptr noundef %arrayidx.1) #11
  %arrayidx.2 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 100, i32 0, i32 2
  tail call void @radeon_fence_unref(ptr noundef %arrayidx.2) #11
  %arrayidx.3 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 100, i32 0, i32 3
  tail call void @radeon_fence_unref(ptr noundef %arrayidx.3) #11
  %arrayidx.4 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 100, i32 0, i32 4
  tail call void @radeon_fence_unref(ptr noundef %arrayidx.4) #11
  %arrayidx.5 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 100, i32 0, i32 5
  tail call void @radeon_fence_unref(ptr noundef %arrayidx.5) #11
  %arrayidx.6 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 100, i32 0, i32 6
  tail call void @radeon_fence_unref(ptr noundef %arrayidx.6) #11
  %arrayidx.7 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 100, i32 0, i32 7
  tail call void @radeon_fence_unref(ptr noundef %arrayidx.7) #11
  %arrayidx.8 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 100, i32 0, i32 8
  tail call void @radeon_fence_unref(ptr noundef %arrayidx.8) #11
  %arrayidx.9 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 100, i32 0, i32 9
  tail call void @radeon_fence_unref(ptr noundef %arrayidx.9) #11
  %arrayidx.10 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 100, i32 0, i32 10
  tail call void @radeon_fence_unref(ptr noundef %arrayidx.10) #11
  %arrayidx.11 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 100, i32 0, i32 11
  tail call void @radeon_fence_unref(ptr noundef %arrayidx.11) #11
  %arrayidx.12 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 100, i32 0, i32 12
  tail call void @radeon_fence_unref(ptr noundef %arrayidx.12) #11
  %arrayidx.13 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 100, i32 0, i32 13
  tail call void @radeon_fence_unref(ptr noundef %arrayidx.13) #11
  %arrayidx.14 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 100, i32 0, i32 14
  tail call void @radeon_fence_unref(ptr noundef %arrayidx.14) #11
  %arrayidx.15 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 100, i32 0, i32 15
  tail call void @radeon_fence_unref(ptr noundef %arrayidx.15) #11
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %2 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asic, align 8
  %fini = getelementptr inbounds %struct.radeon_asic, ptr %3, i32 0, i32 13, i32 1
  %4 = ptrtoint ptr %fini to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fini, align 4
  tail call void %5(ptr noundef %rdev) #11
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %enabled, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.body.preheader, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_fence_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @radeon_vm_get_bos(ptr nocapture noundef readnone %rdev, ptr nocapture noundef readonly %vm, ptr noundef %head) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %max_pde_used = getelementptr inbounds %struct.radeon_vm, ptr %vm, i32 0, i32 7
  %0 = ptrtoint ptr %max_pde_used to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_pde_used, align 4
  %add = add i32 %1, 2
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 48) #11
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %entry.cleanup_crit_edge, label %kvmalloc_array.exit, !prof !66

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

kvmalloc_array.exit:                              ; preds = %entry
  %4 = extractvalue { i32, i1 } %2, 0
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %4, i32 noundef 3264, i32 noundef -1) #14
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %kvmalloc_array.exit.cleanup_crit_edge, label %if.end

kvmalloc_array.exit.cleanup_crit_edge:            ; preds = %kvmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %kvmalloc_array.exit
  %page_directory = getelementptr inbounds %struct.radeon_vm, ptr %vm, i32 0, i32 6
  %5 = ptrtoint ptr %page_directory to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %page_directory, align 8
  %7 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %call.i.i, align 8
  %preferred_domains = getelementptr inbounds %struct.radeon_bo_list, ptr %call.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %preferred_domains to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %preferred_domains, align 8
  %allowed_domains = getelementptr inbounds %struct.radeon_bo_list, ptr %call.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %allowed_domains to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %allowed_domains, align 4
  %tbo = getelementptr inbounds %struct.radeon_bo, ptr %6, i32 0, i32 4
  %tv = getelementptr inbounds %struct.radeon_bo_list, ptr %call.i.i, i32 0, i32 1
  %bo = getelementptr inbounds %struct.radeon_bo_list, ptr %call.i.i, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %bo to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %tbo, ptr %bo, align 4
  %num_shared = getelementptr inbounds %struct.radeon_bo_list, ptr %call.i.i, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %num_shared to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %num_shared, align 4
  %tiling_flags = getelementptr inbounds %struct.radeon_bo_list, ptr %call.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %tiling_flags to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %tiling_flags, align 8
  %13 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head, align 4
  %call.i.i75 = tail call zeroext i1 @__list_add_valid(ptr noundef %tv, ptr noundef %head, ptr noundef %14) #11
  br i1 %call.i.i75, label %if.end.i.i, label %if.end.list_add.exit_crit_edge

if.end.list_add.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %tv, ptr %prev1.i.i, align 4
  %16 = ptrtoint ptr %tv to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %tv, align 4
  %prev3.i.i = getelementptr inbounds %struct.radeon_bo_list, ptr %call.i.i, i32 0, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %head, ptr %prev3.i.i, align 4
  %18 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %tv, ptr %head, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end.list_add.exit_crit_edge
  %page_tables = getelementptr inbounds %struct.radeon_vm, ptr %vm, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %list_add.exit
  %idx.084 = phi i32 [ 1, %list_add.exit ], [ %idx.1, %for.inc.for.body_crit_edge ]
  %i.083 = phi i32 [ 0, %list_add.exit ], [ %inc40, %for.inc.for.body_crit_edge ]
  %19 = ptrtoint ptr %page_tables to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %page_tables, align 8
  %arrayidx12 = getelementptr %struct.radeon_vm_pt, ptr %20, i32 %i.083
  %21 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx12, align 8
  %tobool14.not = icmp eq ptr %22, null
  br i1 %tobool14.not, label %for.body.for.inc_crit_edge, label %if.end16

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end16:                                         ; preds = %for.body
  %arrayidx20 = getelementptr %struct.radeon_bo_list, ptr %call.i.i, i32 %idx.084
  %23 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %arrayidx20, align 8
  %preferred_domains23 = getelementptr %struct.radeon_bo_list, ptr %call.i.i, i32 %idx.084, i32 3
  %24 = ptrtoint ptr %preferred_domains23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4, ptr %preferred_domains23, align 8
  %allowed_domains25 = getelementptr %struct.radeon_bo_list, ptr %call.i.i, i32 %idx.084, i32 4
  %25 = ptrtoint ptr %allowed_domains25 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4, ptr %allowed_domains25, align 4
  %tbo28 = getelementptr inbounds %struct.radeon_bo, ptr %22, i32 0, i32 4
  %tv30 = getelementptr %struct.radeon_bo_list, ptr %call.i.i, i32 %idx.084, i32 1
  %bo31 = getelementptr %struct.radeon_bo_list, ptr %call.i.i, i32 %idx.084, i32 1, i32 1
  %26 = ptrtoint ptr %bo31 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %tbo28, ptr %bo31, align 4
  %num_shared34 = getelementptr %struct.radeon_bo_list, ptr %call.i.i, i32 %idx.084, i32 1, i32 2
  %27 = ptrtoint ptr %num_shared34 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %num_shared34, align 4
  %tiling_flags36 = getelementptr %struct.radeon_bo_list, ptr %call.i.i, i32 %idx.084, i32 5
  %28 = ptrtoint ptr %tiling_flags36 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %tiling_flags36, align 8
  %inc = add i32 %idx.084, 1
  %29 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %head, align 4
  %call.i.i76 = tail call zeroext i1 @__list_add_valid(ptr noundef %tv30, ptr noundef %head, ptr noundef %30) #11
  br i1 %call.i.i76, label %if.end.i.i79, label %if.end16.for.inc_crit_edge

if.end16.for.inc_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end.i.i79:                                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i77 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i77 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %tv30, ptr %prev1.i.i77, align 4
  %32 = ptrtoint ptr %tv30 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %30, ptr %tv30, align 4
  %prev3.i.i78 = getelementptr inbounds %struct.list_head, ptr %tv30, i32 0, i32 1
  %33 = ptrtoint ptr %prev3.i.i78 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %head, ptr %prev3.i.i78, align 4
  %34 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %tv30, ptr %head, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i79, %if.end16.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %idx.1 = phi i32 [ %idx.084, %for.body.for.inc_crit_edge ], [ %inc, %if.end16.for.inc_crit_edge ], [ %inc, %if.end.i.i79 ]
  %inc40 = add i32 %i.083, 1
  %35 = ptrtoint ptr %max_pde_used to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %max_pde_used, align 4
  %cmp.not = icmp ugt i32 %inc40, %36
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %kvmalloc_array.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %kvmalloc_array.exit.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ %call.i.i, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @radeon_vm_grab_id(ptr nocapture noundef readonly %rdev, ptr nocapture noundef %vm, i32 noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  %best = alloca [8 x ptr], align 4
  %choices = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %best) #11
  %0 = call ptr @memset(ptr %best, i32 0, i32 32)
  %arrayidx = getelementptr %struct.radeon_vm, ptr %vm, i32 0, i32 10, i32 %ring
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %choices) #11
  %1 = ptrtoint ptr %choices to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %choices, align 8
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %last_id_use = getelementptr %struct.radeon_vm, ptr %vm, i32 0, i32 10, i32 %ring, i32 3
  %4 = ptrtoint ptr %last_id_use to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %last_id_use, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true2

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %vm_manager = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 100
  %arrayidx5 = getelementptr [16 x ptr], ptr %vm_manager, i32 0, i32 %3
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx5, align 4
  %cmp = icmp eq ptr %5, %7
  br i1 %cmp, label %land.lhs.true2.cleanup44_crit_edge, label %land.lhs.true2.if.end_crit_edge

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true2.cleanup44_crit_edge:               ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup44

if.end:                                           ; preds = %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %pd_gpu_addr = getelementptr %struct.radeon_vm, ptr %vm, i32 0, i32 10, i32 %ring, i32 1
  %8 = ptrtoint ptr %pd_gpu_addr to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %pd_gpu_addr, align 8
  %vm_manager6 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 100
  %nvm = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 100, i32 2
  %9 = ptrtoint ptr %nvm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nvm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp786 = icmp ugt i32 %10, 1
  br i1 %cmp786, label %if.end.for.body_crit_edge, label %if.end.for.cond24.preheader_crit_edge

if.end.for.cond24.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond24.preheader

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.cond24.preheader:                             ; preds = %for.inc.for.cond24.preheader_crit_edge, %if.end.for.cond24.preheader_crit_edge
  %11 = ptrtoint ptr %choices to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %choices, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool28.not = icmp eq i32 %12, 0
  br i1 %tobool28.not, label %for.cond24, label %for.cond24.preheader.if.then29_crit_edge

for.cond24.preheader.if.then29_crit_edge:         ; preds = %for.cond24.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.087 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %if.end.for.body_crit_edge ]
  %arrayidx10 = getelementptr [16 x ptr], ptr %vm_manager6, i32 0, i32 %i.087
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx10, align 4
  %cmp11 = icmp eq ptr %14, null
  br i1 %cmp11, label %if.then12, label %if.end.i

if.then12:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %i.087, ptr %arrayidx, align 8
  tail call fastcc void @trace_radeon_vm_grab_id(i32 noundef %i.087, i32 noundef %ring)
  br label %cleanup44

if.end.i:                                         ; preds = %for.body
  %ring15 = getelementptr inbounds %struct.radeon_fence, ptr %14, i32 0, i32 3
  %16 = ptrtoint ptr %ring15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ring15, align 8
  %arrayidx16 = getelementptr [8 x ptr], ptr %best, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx16, align 4
  %tobool1.not.i = icmp eq ptr %19, null
  br i1 %tobool1.not.i, label %if.end.i.if.then17_crit_edge, label %do.body.i

if.end.i.if.then17_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

do.body.i:                                        ; preds = %if.end.i
  %ring4.i = getelementptr inbounds %struct.radeon_fence, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %ring4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ring4.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %21)
  %cmp.not.i = icmp eq i32 %17, %21
  br i1 %cmp.not.i, label %radeon_fence_is_earlier.exit, label %do.body8.i, !prof !67

do.body8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/radeon/radeon.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 437, 0\0A.popsection", ""() #11, !srcloc !68
  unreachable

radeon_fence_is_earlier.exit:                     ; preds = %do.body.i
  %seq.i = getelementptr inbounds %struct.radeon_fence, ptr %14, i32 0, i32 2
  %22 = ptrtoint ptr %seq.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %seq.i, align 8
  %seq13.i = getelementptr inbounds %struct.radeon_fence, ptr %19, i32 0, i32 2
  %24 = ptrtoint ptr %seq13.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %seq13.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %25)
  %cmp14.i = icmp ult i64 %23, %25
  br i1 %cmp14.i, label %radeon_fence_is_earlier.exit.if.then17_crit_edge, label %radeon_fence_is_earlier.exit.for.inc_crit_edge

radeon_fence_is_earlier.exit.for.inc_crit_edge:   ; preds = %radeon_fence_is_earlier.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

radeon_fence_is_earlier.exit.if.then17_crit_edge: ; preds = %radeon_fence_is_earlier.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

if.then17:                                        ; preds = %radeon_fence_is_earlier.exit.if.then17_crit_edge, %if.end.i.if.then17_crit_edge
  %26 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %14, ptr %arrayidx16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %ring)
  %cmp21 = icmp ne i32 %17, %ring
  %cond = zext i1 %cmp21 to i32
  %arrayidx22 = getelementptr [2 x i32], ptr %choices, i32 0, i32 %cond
  %27 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %i.087, ptr %arrayidx22, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then17, %radeon_fence_is_earlier.exit.for.inc_crit_edge
  %inc = add nuw i32 %i.087, 1
  %exitcond.not = icmp eq i32 %inc, %10
  br i1 %exitcond.not, label %for.inc.for.cond24.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.cond24.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond24.preheader

for.cond24:                                       ; preds = %for.cond24.preheader
  %arrayidx27.1 = getelementptr inbounds [2 x i32], ptr %choices, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx27.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx27.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool28.not.1 = icmp eq i32 %29, 0
  br i1 %tobool28.not.1, label %for.cond24.1, label %for.cond24.if.then29_crit_edge

for.cond24.if.then29_crit_edge:                   ; preds = %for.cond24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29

for.cond24.1:                                     ; preds = %for.cond24
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/radeon/radeon_vm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 221, 0\0A.popsection", ""() #11, !srcloc !69
  unreachable

if.then29:                                        ; preds = %for.cond24.if.then29_crit_edge, %for.cond24.preheader.if.then29_crit_edge
  %.lcssa = phi i32 [ %12, %for.cond24.preheader.if.then29_crit_edge ], [ %29, %for.cond24.if.then29_crit_edge ]
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.lcssa, ptr %arrayidx, align 8
  tail call fastcc void @trace_radeon_vm_grab_id(i32 noundef %.lcssa, i32 noundef %ring)
  %arrayidx36 = getelementptr [16 x ptr], ptr %vm_manager6, i32 0, i32 %.lcssa
  %31 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx36, align 4
  br label %cleanup44

cleanup44:                                        ; preds = %if.then29, %if.then12, %land.lhs.true2.cleanup44_crit_edge
  %retval.2 = phi ptr [ %32, %if.then29 ], [ null, %land.lhs.true2.cleanup44_crit_edge ], [ null, %if.then12 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %choices) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %best) #11
  ret ptr %retval.2
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_radeon_vm_grab_id(i32 noundef %vmid, i32 noundef %ring) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_radeon_vm_grab_id, i32 0, i32 1), ptr blockaddress(@trace_radeon_vm_grab_id, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !70

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !67

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !71
  %call42 = tail call i32 @__traceiter_radeon_vm_grab_id(ptr noundef null, i32 noundef %vmid, i32 noundef %ring) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !72
  %13 = tail call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !67

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !73
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_radeon_vm_grab_id, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_radeon_vm_grab_id, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_radeon_vm_grab_id.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_radeon_vm_grab_id.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 63, ptr noundef nonnull @.str.17) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !74
  %31 = tail call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_vm_flush(ptr noundef %rdev, ptr noundef %vm, i32 noundef %ring, ptr noundef %updates) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %page_directory = getelementptr inbounds %struct.radeon_vm, ptr %vm, i32 0, i32 6
  %0 = ptrtoint ptr %page_directory to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %page_directory, align 8
  %bdev.i = getelementptr inbounds %struct.radeon_bo, ptr %1, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bdev.i, align 8
  %call.i = tail call ptr @radeon_get_rdev(ptr noundef %3) #11
  %resource.i = getelementptr inbounds %struct.radeon_bo, ptr %1, i32 0, i32 4, i32 6
  %4 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resource.i, align 4
  %mem_type.i = getelementptr inbounds %struct.ttm_resource, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %mem_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mem_type.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %entry.radeon_bo_gpu_offset.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb2.i
  ]

entry.radeon_bo_gpu_offset.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_bo_gpu_offset.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %gtt_start.i = getelementptr inbounds %struct.radeon_device, ptr %call.i, i32 0, i32 42, i32 6
  br label %sw.epilog.sink.split.i

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %vram_start.i = getelementptr inbounds %struct.radeon_device, ptr %call.i, i32 0, i32 42, i32 8
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb2.i, %sw.bb.i
  %vram_start.sink.i = phi ptr [ %vram_start.i, %sw.bb2.i ], [ %gtt_start.i, %sw.bb.i ]
  %9 = ptrtoint ptr %vram_start.sink.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %vram_start.sink.i, align 8
  br label %radeon_bo_gpu_offset.exit

radeon_bo_gpu_offset.exit:                        ; preds = %sw.epilog.sink.split.i, %entry.radeon_bo_gpu_offset.exit_crit_edge
  %start.0.i = phi i64 [ 0, %entry.radeon_bo_gpu_offset.exit_crit_edge ], [ %10, %sw.epilog.sink.split.i ]
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %5, align 4
  %shl.i = shl i32 %12, 12
  %conv.i = zext i32 %shl.i to i64
  %add.i = add i64 %start.0.i, %conv.i
  %arrayidx = getelementptr %struct.radeon_vm, ptr %vm, i32 0, i32 10, i32 %ring
  %pd_gpu_addr = getelementptr %struct.radeon_vm, ptr %vm, i32 0, i32 10, i32 %ring, i32 1
  %13 = ptrtoint ptr %pd_gpu_addr to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %pd_gpu_addr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %14)
  %cmp.not = icmp eq i64 %add.i, %14
  br i1 %cmp.not, label %lor.lhs.false, label %radeon_bo_gpu_offset.exit.if.then_crit_edge

radeon_bo_gpu_offset.exit.if.then_crit_edge:      ; preds = %radeon_bo_gpu_offset.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %radeon_bo_gpu_offset.exit
  %flushed_updates = getelementptr %struct.radeon_vm, ptr %vm, i32 0, i32 10, i32 %ring, i32 2
  %15 = ptrtoint ptr %flushed_updates to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %flushed_updates, align 8
  %tobool.not = icmp eq ptr %16, null
  %tobool1.not.i = icmp eq ptr %updates, null
  %or.cond = or i1 %tobool1.not.i, %tobool.not
  br i1 %or.cond, label %lor.lhs.false.if.then_crit_edge, label %do.body.i

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

do.body.i:                                        ; preds = %lor.lhs.false
  %ring.i = getelementptr inbounds %struct.radeon_fence, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ring.i, align 8
  %ring4.i = getelementptr inbounds %struct.radeon_fence, ptr %updates, i32 0, i32 3
  %19 = ptrtoint ptr %ring4.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ring4.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp.not.i = icmp eq i32 %18, %20
  br i1 %cmp.not.i, label %radeon_fence_is_earlier.exit, label %do.body8.i, !prof !67

do.body8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/radeon/radeon.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 437, 0\0A.popsection", ""() #11, !srcloc !68
  unreachable

radeon_fence_is_earlier.exit:                     ; preds = %do.body.i
  %seq.i = getelementptr inbounds %struct.radeon_fence, ptr %16, i32 0, i32 2
  %21 = ptrtoint ptr %seq.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %seq.i, align 8
  %seq13.i = getelementptr inbounds %struct.radeon_fence, ptr %updates, i32 0, i32 2
  %23 = ptrtoint ptr %seq13.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %seq13.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %24)
  %cmp14.i = icmp ult i64 %22, %24
  br i1 %cmp14.i, label %radeon_fence_is_earlier.exit.if.then_crit_edge, label %radeon_fence_is_earlier.exit.if.end_crit_edge

radeon_fence_is_earlier.exit.if.end_crit_edge:    ; preds = %radeon_fence_is_earlier.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

radeon_fence_is_earlier.exit.if.then_crit_edge:   ; preds = %radeon_fence_is_earlier.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %radeon_fence_is_earlier.exit.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %radeon_bo_gpu_offset.exit.if.then_crit_edge
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 8
  tail call fastcc void @trace_radeon_vm_flush(i64 noundef %add.i, i32 noundef %ring, i32 noundef %26)
  %flushed_updates6 = getelementptr %struct.radeon_vm, ptr %vm, i32 0, i32 10, i32 %ring, i32 2
  tail call void @radeon_fence_unref(ptr noundef %flushed_updates6) #11
  %call7 = tail call ptr @radeon_fence_ref(ptr noundef %updates) #11
  %27 = ptrtoint ptr %flushed_updates6 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7, ptr %flushed_updates6, align 8
  %28 = ptrtoint ptr %pd_gpu_addr to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %add.i, ptr %pd_gpu_addr, align 8
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %29 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %asic, align 8
  %arrayidx12 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %ring
  %idx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %ring, i32 19
  %31 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %idx, align 8
  %arrayidx13 = getelementptr %struct.radeon_asic, ptr %30, i32 0, i32 14, i32 %32
  %33 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx13, align 4
  %vm_flush = getelementptr inbounds %struct.radeon_asic_ring, ptr %34, i32 0, i32 9
  %35 = ptrtoint ptr %vm_flush to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vm_flush, align 4
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx, align 8
  tail call void %36(ptr noundef %rdev, ptr noundef %arrayidx12, i32 noundef %38, i64 noundef %add.i) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %radeon_fence_is_earlier.exit.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_radeon_vm_flush(i64 noundef %pd_addr, i32 noundef %ring, i32 noundef %id) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_radeon_vm_flush, i32 0, i32 1), ptr blockaddress(@trace_radeon_vm_flush, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !70

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !67

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !75
  %call42 = tail call i32 @__traceiter_radeon_vm_flush(ptr noundef null, i64 noundef %pd_addr, i32 noundef %ring, i32 noundef %id) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !76
  %13 = tail call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !67

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !73
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_radeon_vm_flush, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_radeon_vm_flush, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_radeon_vm_flush.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_radeon_vm_flush.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 123, ptr noundef nonnull @.str.17) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !74
  %31 = tail call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radeon_fence_ref(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_vm_fence(ptr noundef %rdev, ptr noundef %vm, ptr noundef %fence) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ring = getelementptr inbounds %struct.radeon_fence, ptr %fence, i32 0, i32 3
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ring, align 8
  %arrayidx = getelementptr %struct.radeon_vm, ptr %vm, i32 0, i32 10, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 8
  %vm_manager = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 100
  %arrayidx1 = getelementptr [16 x ptr], ptr %vm_manager, i32 0, i32 %3
  tail call void @radeon_fence_unref(ptr noundef %arrayidx1) #11
  %call = tail call ptr @radeon_fence_ref(ptr noundef %fence) #11
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %arrayidx1, align 4
  %5 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ring, align 8
  %last_id_use = getelementptr %struct.radeon_vm, ptr %vm, i32 0, i32 10, i32 %6, i32 3
  tail call void @radeon_fence_unref(ptr noundef %last_id_use) #11
  %call8 = tail call ptr @radeon_fence_ref(ptr noundef %fence) #11
  %7 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ring, align 8
  %last_id_use12 = getelementptr %struct.radeon_vm, ptr %vm, i32 0, i32 10, i32 %8, i32 3
  %9 = ptrtoint ptr %last_id_use12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call8, ptr %last_id_use12, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @radeon_vm_bo_find(ptr noundef readnone %vm, ptr noundef readonly %bo) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %va = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 12
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %bo_va.0.in = phi ptr [ %va, %entry ], [ %bo_va.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %bo_va.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %bo_va.0 = load ptr, ptr %bo_va.0.in, align 4
  %cmp.not = icmp eq ptr %bo_va.0, %va
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %vm2 = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va.0, i32 0, i32 6
  %1 = ptrtoint ptr %vm2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vm2, align 4
  %cmp3 = icmp eq ptr %2, %vm
  br i1 %cmp3, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %bo_va.0, %for.body.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @radeon_vm_bo_add(ptr nocapture noundef readnone %rdev, ptr noundef %vm, ptr noundef %bo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 60) #15
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %vm1 = getelementptr inbounds %struct.radeon_bo_va, ptr %call7.i.i, i32 0, i32 6
  %1 = ptrtoint ptr %vm1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %vm, ptr %vm1, align 4
  %bo2 = getelementptr inbounds %struct.radeon_bo_va, ptr %call7.i.i, i32 0, i32 7
  %2 = ptrtoint ptr %bo2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %bo, ptr %bo2, align 8
  %start = getelementptr inbounds %struct.radeon_bo_va, ptr %call7.i.i, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %start, align 8
  %last = getelementptr inbounds %struct.radeon_bo_va, ptr %call7.i.i, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %last, align 4
  %flags = getelementptr inbounds %struct.radeon_bo_va, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %flags, align 8
  %ref_count = getelementptr inbounds %struct.radeon_bo_va, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %ref_count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %ref_count, align 8
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %vm_status = getelementptr inbounds %struct.radeon_bo_va, ptr %call7.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %vm_status to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %vm_status, ptr %vm_status, align 4
  %prev.i19 = getelementptr inbounds %struct.radeon_bo_va, ptr %call7.i.i, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %prev.i19 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %vm_status, ptr %prev.i19, align 8
  tail call void @mutex_lock_nested(ptr noundef %vm, i32 noundef 0) #11
  %va = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 12
  %prev.i20 = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 12, i32 1
  %11 = ptrtoint ptr %prev.i20 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i20, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %12, ptr noundef %va) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %prev.i20 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %prev.i20, align 4
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %va, ptr %call7.i.i, align 8
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %call7.i.i, ptr %12, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %vm) #11
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_vm_bo_set_addr(ptr noundef %rdev, ptr noundef %bo_va, i64 noundef %soffset, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %pt = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bo = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va, i32 0, i32 7
  %vm1 = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va, i32 0, i32 6
  %0 = ptrtoint ptr %vm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm1, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %soffset)
  %tobool.not = icmp eq i64 %soffset, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bo, align 4
  %size.i = getelementptr inbounds %struct.radeon_bo, ptr %3, i32 0, i32 4, i32 0, i32 5
  %4 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size.i, align 8
  %conv = zext i32 %5 to i64
  %add = add i64 %soffset, -1
  %sub = add i64 %add, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %soffset)
  %cmp.not = icmp ugt i64 %sub, %soffset
  br i1 %cmp.not, label %if.end, label %if.then.error_unreserve_crit_edge

if.then.error_unreserve_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_unreserve

if.end:                                           ; preds = %if.then
  %div253 = lshr i64 %sub, 12
  %conv4 = trunc i64 %div253 to i32
  %max_pfn = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 100, i32 1
  %6 = ptrtoint ptr %max_pfn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_pfn, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv4)
  %cmp5.not = icmp ugt i32 %7, %conv4
  br i1 %cmp5.not, label %if.end.if.end11_crit_edge, label %do.end

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str, i32 noundef %conv4, i32 noundef %7) #16
  br label %error_unreserve

if.end11:                                         ; preds = %if.end.if.end11_crit_edge, %entry.if.end11_crit_edge
  %eoffset.0 = phi i64 [ %sub, %if.end.if.end11_crit_edge ], [ 0, %entry.if.end11_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #11
  %div12251 = lshr i64 %soffset, 12
  %div13252 = lshr i64 %eoffset.0, 12
  call void @__sanitizer_cov_trace_const_cmp8(i64 4096, i64 %soffset)
  %tobool14.not = icmp ult i64 %soffset, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 4096, i64 %eoffset.0)
  %tobool15.not = icmp ult i64 %eoffset.0, 4096
  %or.cond = select i1 %tobool14.not, i1 %tobool15.not, i1 false
  br i1 %or.cond, label %if.end11.if.end36_crit_edge, label %if.then16

if.end11.if.end36_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then16:                                        ; preds = %if.end11
  %va = getelementptr inbounds %struct.radeon_vm, ptr %1, i32 0, i32 1
  %conv17 = trunc i64 %div12251 to i32
  %conv18 = trunc i64 %div13252 to i32
  %call19 = tail call ptr @interval_tree_iter_first(ptr noundef %va, i32 noundef %conv17, i32 noundef %conv18) #11
  %tobool20.not = icmp eq ptr %call19, null
  %it21 = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va, i32 0, i32 4
  %cmp22.not = icmp eq ptr %call19, %it21
  %or.cond254 = select i1 %tobool20.not, i1 true, i1 %cmp22.not
  br i1 %or.cond254, label %if.then16.if.end36_crit_edge, label %cleanup

if.then16.if.end36_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

cleanup:                                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rdev, align 8
  %12 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bo, align 4
  %bo31 = getelementptr i8, ptr %call19, i32 36
  %14 = ptrtoint ptr %bo31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bo31, align 4
  %start = getelementptr inbounds %struct.interval_tree_node, ptr %call19, i32 0, i32 1
  %16 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %start, align 4
  %last = getelementptr inbounds %struct.interval_tree_node, ptr %call19, i32 0, i32 2
  %18 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %last, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.6, ptr noundef %13, i64 noundef %div12251, ptr noundef %15, i32 noundef %17, i32 noundef %19) #16
  tail call void @mutex_unlock(ptr noundef %1) #11
  br label %error_unreserve

if.end36:                                         ; preds = %if.then16.if.end36_crit_edge, %if.end11.if.end36_crit_edge
  %it37 = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va, i32 0, i32 4
  %start38 = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %start38 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %start38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool39.not = icmp eq i32 %21, 0
  br i1 %tobool39.not, label %lor.lhs.false40, label %if.end36.if.then44_crit_edge

if.end36.if.then44_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then44

lor.lhs.false40:                                  ; preds = %if.end36
  %last42 = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va, i32 0, i32 4, i32 2
  %22 = ptrtoint ptr %last42 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %last42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool43.not = icmp eq i32 %23, 0
  br i1 %tobool43.not, label %lor.lhs.false40.if.end74_crit_edge, label %lor.lhs.false40.if.then44_crit_edge

lor.lhs.false40.if.then44_crit_edge:              ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then44

lor.lhs.false40.if.end74_crit_edge:               ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74

if.then44:                                        ; preds = %lor.lhs.false40.if.then44_crit_edge, %if.end36.if.then44_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 60) #15
  %tobool47.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool47.not, label %cleanup71, label %if.end50

if.end50:                                         ; preds = %if.then44
  %25 = ptrtoint ptr %start38 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %start38, align 4
  %start54 = getelementptr inbounds %struct.radeon_bo_va, ptr %call7.i.i, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %start54 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %start54, align 8
  %last56 = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va, i32 0, i32 4, i32 2
  %28 = ptrtoint ptr %last56 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %last56, align 4
  %last58 = getelementptr inbounds %struct.radeon_bo_va, ptr %call7.i.i, i32 0, i32 4, i32 2
  %30 = ptrtoint ptr %last58 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %last58, align 4
  %vm59 = getelementptr inbounds %struct.radeon_bo_va, ptr %call7.i.i, i32 0, i32 6
  %31 = ptrtoint ptr %vm59 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %1, ptr %vm59, align 4
  %32 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bo, align 4
  %call61 = tail call ptr @radeon_bo_ref(ptr noundef %33) #11
  %bo62 = getelementptr inbounds %struct.radeon_bo_va, ptr %call7.i.i, i32 0, i32 7
  %34 = ptrtoint ptr %bo62 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call61, ptr %bo62, align 8
  %va64 = getelementptr inbounds %struct.radeon_vm, ptr %1, i32 0, i32 1
  tail call void @interval_tree_remove(ptr noundef %it37, ptr noundef %va64) #11
  %status_lock = getelementptr inbounds %struct.radeon_vm, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %status_lock) #11
  %35 = ptrtoint ptr %start38 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %start38, align 4
  %36 = ptrtoint ptr %last56 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %last56, align 4
  %vm_status = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %vm_status) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end50.list_del_init.exit_crit_edge

if.end50.list_del_init.exit_crit_edge:            ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va, i32 0, i32 5, i32 1
  %37 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i, align 4
  %39 = ptrtoint ptr %vm_status to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %vm_status, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end50.list_del_init.exit_crit_edge
  %43 = ptrtoint ptr %vm_status to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %vm_status, ptr %vm_status, align 4
  %prev.i3.i = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va, i32 0, i32 5, i32 1
  %44 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %vm_status, ptr %prev.i3.i, align 4
  %vm_status69 = getelementptr inbounds %struct.radeon_bo_va, ptr %call7.i.i, i32 0, i32 5
  %freed = getelementptr inbounds %struct.radeon_vm, ptr %1, i32 0, i32 4
  %45 = ptrtoint ptr %freed to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %freed, align 4
  %call.i.i259 = tail call zeroext i1 @__list_add_valid(ptr noundef %vm_status69, ptr noundef %freed, ptr noundef %46) #11
  br i1 %call.i.i259, label %if.end.i.i260, label %list_del_init.exit.cleanup71.thread_crit_edge

list_del_init.exit.cleanup71.thread_crit_edge:    ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup71.thread

if.end.i.i260:                                    ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %vm_status69, ptr %prev1.i.i, align 4
  %48 = ptrtoint ptr %vm_status69 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %46, ptr %vm_status69, align 4
  %prev3.i.i = getelementptr inbounds %struct.radeon_bo_va, ptr %call7.i.i, i32 0, i32 5, i32 1
  %49 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %freed, ptr %prev3.i.i, align 8
  %50 = ptrtoint ptr %freed to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %vm_status69, ptr %freed, align 4
  br label %cleanup71.thread

cleanup71.thread:                                 ; preds = %if.end.i.i260, %list_del_init.exit.cleanup71.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %status_lock) #11
  br label %if.end74

cleanup71:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef %1) #11
  br label %error_unreserve

if.end74:                                         ; preds = %cleanup71.thread, %lor.lhs.false40.if.end74_crit_edge
  br i1 %or.cond, label %if.end74.if.end90_crit_edge, label %if.then78

if.end74.if.end90_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90

if.then78:                                        ; preds = %if.end74
  %status_lock79 = getelementptr inbounds %struct.radeon_vm, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %status_lock79) #11
  %conv80 = trunc i64 %div12251 to i32
  %51 = ptrtoint ptr %start38 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv80, ptr %start38, align 4
  %conv83 = trunc i64 %div13252 to i32
  %last85 = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va, i32 0, i32 4, i32 2
  %52 = ptrtoint ptr %last85 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv83, ptr %last85, align 4
  %vm_status86 = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va, i32 0, i32 5
  %cleared = getelementptr inbounds %struct.radeon_vm, ptr %1, i32 0, i32 5
  %53 = ptrtoint ptr %cleared to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cleared, align 4
  %call.i.i261 = tail call zeroext i1 @__list_add_valid(ptr noundef %vm_status86, ptr noundef %cleared, ptr noundef %54) #11
  br i1 %call.i.i261, label %if.end.i.i264, label %if.then78.list_add.exit265_crit_edge

if.then78.list_add.exit265_crit_edge:             ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit265

if.end.i.i264:                                    ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i262 = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %prev1.i.i262 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %vm_status86, ptr %prev1.i.i262, align 4
  %56 = ptrtoint ptr %vm_status86 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %54, ptr %vm_status86, align 4
  %prev3.i.i263 = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va, i32 0, i32 5, i32 1
  %57 = ptrtoint ptr %prev3.i.i263 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %cleared, ptr %prev3.i.i263, align 4
  %58 = ptrtoint ptr %cleared to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %vm_status86, ptr %cleared, align 4
  br label %list_add.exit265

list_add.exit265:                                 ; preds = %if.end.i.i264, %if.then78.list_add.exit265_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %status_lock79) #11
  %va89 = getelementptr inbounds %struct.radeon_vm, ptr %1, i32 0, i32 1
  tail call void @interval_tree_insert(ptr noundef %it37, ptr noundef %va89) #11
  br label %if.end90

if.end90:                                         ; preds = %list_add.exit265, %if.end74.if.end90_crit_edge
  %flags91 = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va, i32 0, i32 1
  %59 = ptrtoint ptr %flags91 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %flags, ptr %flags91, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_vm_block_size to i32))
  %60 = load i32, ptr @radeon_vm_block_size, align 4
  %sh_prom = zext i32 %60 to i64
  %shr = lshr i64 %div12251, %sh_prom
  %shr93 = lshr i64 %div13252, %sh_prom
  %max_pfn.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 100, i32 1
  %61 = ptrtoint ptr %max_pfn.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %max_pfn.i, align 8
  %shr.i = lshr i32 %62, %60
  %conv96 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shr93, i64 %conv96)
  %cmp97.not = icmp ult i64 %shr93, %conv96
  br i1 %cmp97.not, label %do.end110, label %do.body102, !prof !67

do.body102:                                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/radeon/radeon_vm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 534, 0\0A.popsection", ""() #11, !srcloc !77
  unreachable

do.end110:                                        ; preds = %if.end90
  %max_pde_used = getelementptr inbounds %struct.radeon_vm, ptr %1, i32 0, i32 7
  %63 = ptrtoint ptr %max_pde_used to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %max_pde_used, align 4
  %conv111 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shr93, i64 %conv111)
  %cmp112 = icmp ugt i64 %shr93, %conv111
  br i1 %cmp112, label %if.then114, label %do.end110.if.end117_crit_edge

do.end110.if.end117_crit_edge:                    ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end117

if.then114:                                       ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #13
  %conv115 = trunc i64 %shr93 to i32
  %65 = ptrtoint ptr %max_pde_used to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv115, ptr %max_pde_used, align 4
  br label %if.end117

if.end117:                                        ; preds = %if.then114, %do.end110.if.end117_crit_edge
  %66 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bo, align 4
  %tbo.i = getelementptr inbounds %struct.radeon_bo, ptr %67, i32 0, i32 4
  %bdev.i.i.i = getelementptr inbounds %struct.radeon_bo, ptr %67, i32 0, i32 4, i32 1
  %68 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %69, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #11
  %resource.i.i.i = getelementptr inbounds %struct.radeon_bo, ptr %67, i32 0, i32 4, i32 6
  %70 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %resource.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i, ptr noundef %71, ptr noundef null) #11
  %72 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %73, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #11
  %resv.i.i = getelementptr inbounds %struct.radeon_bo, ptr %67, i32 0, i32 4, i32 0, i32 9
  %74 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %resv.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %75) #11
  tail call void @ww_mutex_unlock(ptr noundef %75) #11
  %conv120282 = and i64 %shr, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %shr93, i64 %conv120282)
  %cmp121.not283 = icmp ult i64 %shr93, %conv120282
  br i1 %cmp121.not283, label %if.end117.for.end_crit_edge, label %for.body.lr.ph

if.end117.for.end_crit_edge:                      ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end117
  %conv119 = trunc i64 %shr to i32
  %page_tables = getelementptr inbounds %struct.radeon_vm, ptr %1, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %pt_idx.0284 = phi i32 [ %conv119, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pt) #11
  %76 = ptrtoint ptr %pt to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr inttoptr (i32 -1 to ptr), ptr %pt, align 4, !annotation !78
  %77 = ptrtoint ptr %page_tables to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %page_tables, align 8
  %arrayidx = getelementptr %struct.radeon_vm_pt, ptr %78, i32 %pt_idx.0284
  %79 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx, align 8
  %tobool124.not = icmp eq ptr %80, null
  br i1 %tobool124.not, label %if.end126, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end126:                                        ; preds = %for.body
  call void @mutex_unlock(ptr noundef %1) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_vm_block_size to i32))
  %81 = load i32, ptr @radeon_vm_block_size, align 4
  %mul = shl i32 8, %81
  %call128 = call i32 @radeon_bo_create(ptr noundef %rdev, i32 noundef %mul, i32 noundef 4096, i1 noundef zeroext true, i32 noundef 4, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef nonnull %pt) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.end131, label %if.end126.cleanup150_crit_edge

if.end126.cleanup150_crit_edge:                   ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup150

if.end131:                                        ; preds = %if.end126
  %82 = ptrtoint ptr %pt to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pt, align 4
  %call132 = call fastcc i32 @radeon_vm_clear_bo(ptr noundef %rdev, ptr noundef %83)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %if.end135, label %if.then134

if.then134:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #13
  call void @radeon_bo_unref(ptr noundef nonnull %pt) #11
  br label %cleanup150

if.end135:                                        ; preds = %if.end131
  call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #11
  %84 = ptrtoint ptr %page_tables to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %page_tables, align 8
  %arrayidx138 = getelementptr %struct.radeon_vm_pt, ptr %85, i32 %pt_idx.0284
  %86 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx138, align 8
  %tobool140.not = icmp eq ptr %87, null
  br i1 %tobool140.not, label %if.end144, label %if.then141

if.then141:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #13
  call void @mutex_unlock(ptr noundef %1) #11
  call void @radeon_bo_unref(ptr noundef nonnull %pt) #11
  call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #11
  br label %for.inc

if.end144:                                        ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #13
  %addr = getelementptr %struct.radeon_vm_pt, ptr %85, i32 %pt_idx.0284, i32 1
  %88 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 0, ptr %addr, align 8
  %89 = ptrtoint ptr %pt to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pt, align 4
  %91 = ptrtoint ptr %page_tables to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %page_tables, align 8
  %arrayidx148 = getelementptr %struct.radeon_vm_pt, ptr %92, i32 %pt_idx.0284
  %93 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %90, ptr %arrayidx148, align 8
  br label %for.inc

cleanup150:                                       ; preds = %if.then134, %if.end126.cleanup150_crit_edge
  %retval.1 = phi i32 [ %call132, %if.then134 ], [ %call128, %if.end126.cleanup150_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pt) #11
  br label %cleanup155

for.inc:                                          ; preds = %if.end144, %if.then141, %for.body.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pt) #11
  %inc = add i32 %pt_idx.0284, 1
  %conv120 = zext i32 %inc to i64
  %cmp121.not = icmp ult i64 %shr93, %conv120
  br i1 %cmp121.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end117.for.end_crit_edge
  call void @mutex_unlock(ptr noundef %1) #11
  br label %cleanup155

error_unreserve:                                  ; preds = %cleanup71, %cleanup, %do.end, %if.then.error_unreserve_crit_edge
  %r.3 = phi i32 [ -22, %do.end ], [ -22, %cleanup ], [ -12, %cleanup71 ], [ -22, %if.then.error_unreserve_crit_edge ]
  %94 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %bo, align 4
  %tbo.i266 = getelementptr inbounds %struct.radeon_bo, ptr %95, i32 0, i32 4
  %bdev.i.i.i267 = getelementptr inbounds %struct.radeon_bo, ptr %95, i32 0, i32 4, i32 1
  %96 = ptrtoint ptr %bdev.i.i.i267 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %bdev.i.i.i267, align 8
  %lru_lock.i.i.i268 = getelementptr inbounds %struct.ttm_device, ptr %97, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i268) #11
  %resource.i.i.i269 = getelementptr inbounds %struct.radeon_bo, ptr %95, i32 0, i32 4, i32 6
  %98 = ptrtoint ptr %resource.i.i.i269 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %resource.i.i.i269, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i266, ptr noundef %99, ptr noundef null) #11
  %100 = ptrtoint ptr %bdev.i.i.i267 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %bdev.i.i.i267, align 8
  %lru_lock2.i.i.i270 = getelementptr inbounds %struct.ttm_device, ptr %101, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i270) #11
  %resv.i.i271 = getelementptr inbounds %struct.radeon_bo, ptr %95, i32 0, i32 4, i32 0, i32 9
  %102 = ptrtoint ptr %resv.i.i271 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %resv.i.i271, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %103) #11
  tail call void @ww_mutex_unlock(ptr noundef %103) #11
  br label %cleanup155

cleanup155:                                       ; preds = %error_unreserve, %for.end, %cleanup150
  %retval.2 = phi i32 [ %r.3, %error_unreserve ], [ %retval.1, %cleanup150 ], [ 0, %for.end ]
  ret i32 %retval.2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @interval_tree_iter_first(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radeon_bo_ref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @interval_tree_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @interval_tree_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_bo_create(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @radeon_vm_clear_bo(ptr noundef %rdev, ptr noundef %bo) unnamed_addr #0 align 64 {
entry:
  %ctx = alloca %struct.ttm_operation_ctx, align 8
  %ib = alloca %struct.radeon_ib, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ctx) #11
  %0 = call ptr @memcpy(ptr %ctx, ptr @__const.radeon_vm_clear_bo.ctx, i32 24)
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %ib) #11
  %1 = call ptr @memset(ptr %ib, i32 255, i32 88)
  %resv32.i.i = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 0, i32 9
  %2 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %3, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %retval.1.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %4 = zext i32 %retval.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %retval.1.i.i, label %do.end.i [
    i32 0, label %if.end
    i32 -512, label %entry.cleanup_crit_edge
  ], !prof !79

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %rdev.i = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 13
  %5 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rdev.i, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.19, ptr noundef %bo) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %tbo = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4
  %placement = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 3
  %call1 = call i32 @ttm_bo_validate(ptr noundef %tbo, ptr noundef %placement, ptr noundef nonnull %ctx) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.error_unreserve_crit_edge

if.end.error_unreserve_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_unreserve

if.end4:                                          ; preds = %if.end
  %bdev.i = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bdev.i, align 8
  %call.i = call ptr @radeon_get_rdev(ptr noundef %10) #11
  %resource.i = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 6
  %11 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %resource.i, align 4
  %mem_type.i = getelementptr inbounds %struct.ttm_resource, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %mem_type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mem_type.i, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %14, label %if.end4.radeon_bo_gpu_offset.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb2.i
  ]

if.end4.radeon_bo_gpu_offset.exit_crit_edge:      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_bo_gpu_offset.exit

sw.bb.i:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %gtt_start.i = getelementptr inbounds %struct.radeon_device, ptr %call.i, i32 0, i32 42, i32 6
  br label %sw.epilog.sink.split.i

sw.bb2.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %vram_start.i = getelementptr inbounds %struct.radeon_device, ptr %call.i, i32 0, i32 42, i32 8
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb2.i, %sw.bb.i
  %vram_start.sink.i = phi ptr [ %vram_start.i, %sw.bb2.i ], [ %gtt_start.i, %sw.bb.i ]
  %16 = ptrtoint ptr %vram_start.sink.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %vram_start.sink.i, align 8
  br label %radeon_bo_gpu_offset.exit

radeon_bo_gpu_offset.exit:                        ; preds = %sw.epilog.sink.split.i, %if.end4.radeon_bo_gpu_offset.exit_crit_edge
  %start.0.i = phi i64 [ 0, %if.end4.radeon_bo_gpu_offset.exit_crit_edge ], [ %17, %sw.epilog.sink.split.i ]
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %12, align 4
  %size.i = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 0, i32 5
  %20 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size.i, align 8
  %call7 = call i32 @radeon_ib_get(ptr noundef %rdev, i32 noundef 3, ptr noundef nonnull %ib, ptr noundef null, i32 noundef 256) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %radeon_bo_gpu_offset.exit.error_unreserve_crit_edge

radeon_bo_gpu_offset.exit.error_unreserve_crit_edge: ; preds = %radeon_bo_gpu_offset.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_unreserve

if.end10:                                         ; preds = %radeon_bo_gpu_offset.exit
  %shl.i = shl i32 %19, 12
  %conv.i = zext i32 %shl.i to i64
  %add.i = add i64 %start.0.i, %conv.i
  %div58 = lshr i32 %21, 3
  %length_dw = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 1
  %22 = ptrtoint ptr %length_dw to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %length_dw, align 4
  call fastcc void @trace_radeon_vm_set_page(i64 noundef %add.i, i64 noundef 0, i32 noundef %div58, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %21)
  %cmp2.i = icmp ult i32 %21, 24
  %asic5.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %23 = ptrtoint ptr %asic5.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %asic5.i, align 8
  %write_pages.i = getelementptr inbounds %struct.radeon_asic, ptr %24, i32 0, i32 13, i32 3
  %set_pages.i = getelementptr inbounds %struct.radeon_asic, ptr %24, i32 0, i32 13, i32 4
  %write_pages.i.sink = select i1 %cmp2.i, ptr %write_pages.i, ptr %set_pages.i
  %25 = ptrtoint ptr %write_pages.i.sink to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write_pages.i.sink, align 4
  call void %26(ptr noundef %rdev, ptr noundef nonnull %ib, i64 noundef %add.i, i64 noundef 0, i32 noundef %div58, i32 noundef 0, i32 noundef 0) #11
  %27 = ptrtoint ptr %asic5.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %asic5.i, align 8
  %pad_ib = getelementptr inbounds %struct.radeon_asic, ptr %28, i32 0, i32 13, i32 5
  %29 = ptrtoint ptr %pad_ib to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pad_ib, align 4
  call void %30(ptr noundef nonnull %ib) #11
  %31 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %length_dw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %32)
  %cmp = icmp ugt i32 %32, 64
  br i1 %cmp, label %do.end, label %if.end10.if.end26_crit_edge, !prof !66

if.end10.if.end26_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 416, i32 noundef 9, ptr noundef null) #11
  br label %if.end26

if.end26:                                         ; preds = %do.end, %if.end10.if.end26_crit_edge
  %call33 = call i32 @radeon_ib_schedule(ptr noundef %rdev, ptr noundef nonnull %ib, ptr noundef null, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end26.error_free_crit_edge

if.end26.error_free_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_free

if.end36:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %fence = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 5
  %33 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fence, align 8
  %is_vm_update = getelementptr inbounds %struct.radeon_fence, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %is_vm_update to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %is_vm_update, align 4
  call void @radeon_bo_fence(ptr noundef %bo, ptr noundef %34, i1 noundef zeroext false) #11
  br label %error_free

error_free:                                       ; preds = %if.end36, %if.end26.error_free_crit_edge
  call void @radeon_ib_free(ptr noundef %rdev, ptr noundef nonnull %ib) #11
  br label %error_unreserve

error_unreserve:                                  ; preds = %error_free, %radeon_bo_gpu_offset.exit.error_unreserve_crit_edge, %if.end.error_unreserve_crit_edge
  %r.0 = phi i32 [ %call1, %if.end.error_unreserve_crit_edge ], [ %call7, %radeon_bo_gpu_offset.exit.error_unreserve_crit_edge ], [ %call33, %error_free ]
  %bdev.i.i.i = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 1
  %36 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %37, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #11
  %resource.i.i.i = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 6
  %38 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %resource.i.i.i, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo, ptr noundef %39, ptr noundef null) #11
  %40 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %41, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #11
  %42 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %resv32.i.i, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %43) #11
  call void @ww_mutex_unlock(ptr noundef %43) #11
  br label %cleanup

cleanup:                                          ; preds = %error_unreserve, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %error_unreserve ], [ %retval.1.i.i, %do.end.i ], [ %retval.1.i.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %ib) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ctx) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_bo_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @radeon_vm_map_gart(ptr nocapture noundef readonly %rdev, i64 noundef %addr) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pages_entry = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 7
  %0 = ptrtoint ptr %pages_entry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pages_entry, align 4
  %shr = lshr i64 %addr, 12
  %idxprom = trunc i64 %shr to i32
  %arrayidx = getelementptr i64, ptr %1, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx, align 8
  %and = and i64 %3, -4096
  ret i64 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_vm_update_page_directory(ptr noundef %rdev, ptr nocapture noundef readonly %vm) local_unnamed_addr #0 align 64 {
entry:
  %ib = alloca %struct.radeon_ib, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %page_directory = getelementptr inbounds %struct.radeon_vm, ptr %vm, i32 0, i32 6
  %0 = ptrtoint ptr %page_directory to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %page_directory, align 8
  %bdev.i = getelementptr inbounds %struct.radeon_bo, ptr %1, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bdev.i, align 8
  %call.i = tail call ptr @radeon_get_rdev(ptr noundef %3) #11
  %resource.i = getelementptr inbounds %struct.radeon_bo, ptr %1, i32 0, i32 4, i32 6
  %4 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resource.i, align 4
  %mem_type.i = getelementptr inbounds %struct.ttm_resource, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %mem_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mem_type.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %7, label %entry.radeon_bo_gpu_offset.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb2.i
  ]

entry.radeon_bo_gpu_offset.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_bo_gpu_offset.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %gtt_start.i = getelementptr inbounds %struct.radeon_device, ptr %call.i, i32 0, i32 42, i32 6
  br label %sw.epilog.sink.split.i

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %vram_start.i = getelementptr inbounds %struct.radeon_device, ptr %call.i, i32 0, i32 42, i32 8
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb2.i, %sw.bb.i
  %vram_start.sink.i = phi ptr [ %vram_start.i, %sw.bb2.i ], [ %gtt_start.i, %sw.bb.i ]
  %9 = ptrtoint ptr %vram_start.sink.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %vram_start.sink.i, align 8
  br label %radeon_bo_gpu_offset.exit

radeon_bo_gpu_offset.exit:                        ; preds = %sw.epilog.sink.split.i, %entry.radeon_bo_gpu_offset.exit_crit_edge
  %start.0.i = phi i64 [ 0, %entry.radeon_bo_gpu_offset.exit_crit_edge ], [ %10, %sw.epilog.sink.split.i ]
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %5, align 4
  %shl.i = shl i32 %12, 12
  %conv.i = zext i32 %shl.i to i64
  %add.i = add i64 %start.0.i, %conv.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_vm_block_size to i32))
  %13 = load i32, ptr @radeon_vm_block_size, align 4
  %mul = shl i32 8, %13
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %ib) #11
  %14 = call ptr @memset(ptr %ib, i32 255, i32 88)
  %max_pde_used = getelementptr inbounds %struct.radeon_vm, ptr %vm, i32 0, i32 7
  %15 = ptrtoint ptr %max_pde_used to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_pde_used, align 4
  %mul1 = mul i32 %16, 6
  %add = add i32 %mul1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048575, i32 %add)
  %cmp = icmp ugt i32 %add, 1048575
  br i1 %cmp, label %radeon_bo_gpu_offset.exit.cleanup80_crit_edge, label %if.end

radeon_bo_gpu_offset.exit.cleanup80_crit_edge:    ; preds = %radeon_bo_gpu_offset.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup80

if.end:                                           ; preds = %radeon_bo_gpu_offset.exit
  %mul2 = shl nuw nsw i32 %add, 2
  %call3 = call i32 @radeon_ib_get(ptr noundef %rdev, i32 noundef 3, ptr noundef nonnull %ib, ptr noundef null, i32 noundef %mul2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup80_crit_edge

if.end.cleanup80_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup80

if.end5:                                          ; preds = %if.end
  %length_dw = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 1
  %17 = ptrtoint ptr %length_dw to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %length_dw, align 4
  %page_tables = getelementptr inbounds %struct.radeon_vm, ptr %vm, i32 0, i32 8
  %asic5.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end5
  %pt_idx.0158 = phi i32 [ 0, %if.end5 ], [ %inc40, %cleanup.for.body_crit_edge ]
  %count.0157 = phi i32 [ 0, %if.end5 ], [ %count.2, %cleanup.for.body_crit_edge ]
  %last_pt.0156 = phi i64 [ -1, %if.end5 ], [ %last_pt.2, %cleanup.for.body_crit_edge ]
  %last_pde.0155 = phi i64 [ -1, %if.end5 ], [ %last_pde.2, %cleanup.for.body_crit_edge ]
  %18 = ptrtoint ptr %page_tables to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %page_tables, align 8
  %arrayidx = getelementptr %struct.radeon_vm_pt, ptr %19, i32 %pt_idx.0158
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 8
  %cmp9 = icmp eq ptr %21, null
  br i1 %cmp9, label %for.body.cleanup_crit_edge, label %if.end11

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %for.body
  %bdev.i133 = getelementptr inbounds %struct.radeon_bo, ptr %21, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %bdev.i133 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bdev.i133, align 8
  %call.i134 = call ptr @radeon_get_rdev(ptr noundef %23) #11
  %resource.i135 = getelementptr inbounds %struct.radeon_bo, ptr %21, i32 0, i32 4, i32 6
  %24 = ptrtoint ptr %resource.i135 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %resource.i135, align 4
  %mem_type.i136 = getelementptr inbounds %struct.ttm_resource, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %mem_type.i136 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mem_type.i136, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %27, label %if.end11.radeon_bo_gpu_offset.exit147_crit_edge [
    i32 1, label %sw.bb.i138
    i32 2, label %sw.bb2.i140
  ]

if.end11.radeon_bo_gpu_offset.exit147_crit_edge:  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_bo_gpu_offset.exit147

sw.bb.i138:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %gtt_start.i137 = getelementptr inbounds %struct.radeon_device, ptr %call.i134, i32 0, i32 42, i32 6
  br label %sw.epilog.sink.split.i142

sw.bb2.i140:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %vram_start.i139 = getelementptr inbounds %struct.radeon_device, ptr %call.i134, i32 0, i32 42, i32 8
  br label %sw.epilog.sink.split.i142

sw.epilog.sink.split.i142:                        ; preds = %sw.bb2.i140, %sw.bb.i138
  %vram_start.sink.i141 = phi ptr [ %vram_start.i139, %sw.bb2.i140 ], [ %gtt_start.i137, %sw.bb.i138 ]
  %29 = ptrtoint ptr %vram_start.sink.i141 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %vram_start.sink.i141, align 8
  br label %radeon_bo_gpu_offset.exit147

radeon_bo_gpu_offset.exit147:                     ; preds = %sw.epilog.sink.split.i142, %if.end11.radeon_bo_gpu_offset.exit147_crit_edge
  %start.0.i143 = phi i64 [ 0, %if.end11.radeon_bo_gpu_offset.exit147_crit_edge ], [ %30, %sw.epilog.sink.split.i142 ]
  %31 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %25, align 4
  %shl.i144 = shl i32 %32, 12
  %conv.i145 = zext i32 %shl.i144 to i64
  %add.i146 = add i64 %start.0.i143, %conv.i145
  %33 = ptrtoint ptr %page_tables to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %page_tables, align 8
  %addr = getelementptr %struct.radeon_vm_pt, ptr %34, i32 %pt_idx.0158, i32 1
  %35 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %addr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %36, i64 %add.i146)
  %cmp15 = icmp eq i64 %36, %add.i146
  br i1 %cmp15, label %radeon_bo_gpu_offset.exit147.cleanup_crit_edge, label %if.end17

radeon_bo_gpu_offset.exit147.cleanup_crit_edge:   ; preds = %radeon_bo_gpu_offset.exit147
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17:                                         ; preds = %radeon_bo_gpu_offset.exit147
  %37 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %add.i146, ptr %addr, align 8
  %mul21 = shl i32 %pt_idx.0158, 3
  %conv = zext i32 %mul21 to i64
  %add22 = add i64 %add.i, %conv
  %mul23 = shl i32 %count.0157, 3
  %conv24 = zext i32 %mul23 to i64
  %add25 = add i64 %last_pde.0155, %conv24
  call void @__sanitizer_cov_trace_cmp8(i64 %add25, i64 %add22)
  %cmp26.not = icmp eq i64 %add25, %add22
  br i1 %cmp26.not, label %lor.lhs.false, label %if.end17.if.then33_crit_edge

if.end17.if.then33_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then33

lor.lhs.false:                                    ; preds = %if.end17
  %mul28 = mul i32 %count.0157, %mul
  %conv29 = zext i32 %mul28 to i64
  %add30 = add i64 %last_pt.0156, %conv29
  call void @__sanitizer_cov_trace_cmp8(i64 %add30, i64 %add.i146)
  %cmp31.not = icmp eq i64 %add30, %add.i146
  br i1 %cmp31.not, label %if.else, label %lor.lhs.false.if.then33_crit_edge

lor.lhs.false.if.then33_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then33

if.then33:                                        ; preds = %lor.lhs.false.if.then33_crit_edge, %if.end17.if.then33_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0157)
  %tobool34.not = icmp eq i32 %count.0157, 0
  br i1 %tobool34.not, label %if.then33.cleanup_crit_edge, label %if.then35

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then35:                                        ; preds = %if.then33
  call fastcc void @trace_radeon_vm_set_page(i64 noundef %last_pde.0155, i64 noundef %last_pt.0156, i32 noundef %count.0157, i32 noundef %mul, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count.0157)
  %cmp2.i = icmp ult i32 %count.0157, 3
  %38 = ptrtoint ptr %asic5.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %asic5.i, align 8
  br i1 %cmp2.i, label %if.then4.i, label %if.else7.i

if.then4.i:                                       ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  %write_pages.i = getelementptr inbounds %struct.radeon_asic, ptr %39, i32 0, i32 13, i32 3
  %40 = ptrtoint ptr %write_pages.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write_pages.i, align 4
  call void %41(ptr noundef %rdev, ptr noundef nonnull %ib, i64 noundef %last_pde.0155, i64 noundef %last_pt.0156, i32 noundef %count.0157, i32 noundef %mul, i32 noundef 1) #11
  br label %cleanup

if.else7.i:                                       ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  %set_pages.i = getelementptr inbounds %struct.radeon_asic, ptr %39, i32 0, i32 13, i32 4
  %42 = ptrtoint ptr %set_pages.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %set_pages.i, align 4
  call void %43(ptr noundef %rdev, ptr noundef nonnull %ib, i64 noundef %last_pde.0155, i64 noundef %last_pt.0156, i32 noundef %count.0157, i32 noundef %mul, i32 noundef 1) #11
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %inc = add i32 %count.0157, 1
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.else7.i, %if.then4.i, %if.then33.cleanup_crit_edge, %radeon_bo_gpu_offset.exit147.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %last_pde.2 = phi i64 [ %last_pde.0155, %for.body.cleanup_crit_edge ], [ %last_pde.0155, %radeon_bo_gpu_offset.exit147.cleanup_crit_edge ], [ %last_pde.0155, %if.else ], [ %add22, %if.then33.cleanup_crit_edge ], [ %add22, %if.then4.i ], [ %add22, %if.else7.i ]
  %last_pt.2 = phi i64 [ %last_pt.0156, %for.body.cleanup_crit_edge ], [ %last_pt.0156, %radeon_bo_gpu_offset.exit147.cleanup_crit_edge ], [ %last_pt.0156, %if.else ], [ %add.i146, %if.then33.cleanup_crit_edge ], [ %add.i146, %if.then4.i ], [ %add.i146, %if.else7.i ]
  %count.2 = phi i32 [ %count.0157, %for.body.cleanup_crit_edge ], [ %count.0157, %radeon_bo_gpu_offset.exit147.cleanup_crit_edge ], [ %inc, %if.else ], [ 1, %if.then33.cleanup_crit_edge ], [ 1, %if.then4.i ], [ 1, %if.else7.i ]
  %inc40 = add i32 %pt_idx.0158, 1
  %44 = ptrtoint ptr %max_pde_used to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %max_pde_used, align 4
  %cmp7.not = icmp ugt i32 %inc40, %45
  br i1 %cmp7.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.2)
  %tobool41.not = icmp eq i32 %count.2, 0
  br i1 %tobool41.not, label %for.end.if.end43_crit_edge, label %if.then42

for.end.if.end43_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.then42:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @trace_radeon_vm_set_page(i64 noundef %last_pde.2, i64 noundef %last_pt.2, i32 noundef %count.2, i32 noundef %mul, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count.2)
  %cmp2.i148 = icmp ult i32 %count.2, 3
  %46 = ptrtoint ptr %asic5.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %asic5.i, align 8
  %set_pages.i152 = getelementptr inbounds %struct.radeon_asic, ptr %47, i32 0, i32 13, i32 4
  %write_pages.i150 = getelementptr inbounds %struct.radeon_asic, ptr %47, i32 0, i32 13, i32 3
  %set_pages.i152.sink = select i1 %cmp2.i148, ptr %write_pages.i150, ptr %set_pages.i152
  %48 = ptrtoint ptr %set_pages.i152.sink to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %set_pages.i152.sink, align 4
  call void %49(ptr noundef %rdev, ptr noundef nonnull %ib, i64 noundef %last_pde.2, i64 noundef %last_pt.2, i32 noundef %count.2, i32 noundef %mul, i32 noundef 1) #11
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %for.end.if.end43_crit_edge
  %50 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %length_dw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp45.not = icmp eq i32 %51, 0
  br i1 %cmp45.not, label %if.end43.cleanup80.sink.split_crit_edge, label %if.then47

if.end43.cleanup80.sink.split_crit_edge:          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup80.sink.split

if.then47:                                        ; preds = %if.end43
  %52 = ptrtoint ptr %asic5.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %asic5.i, align 8
  %pad_ib = getelementptr inbounds %struct.radeon_asic, ptr %53, i32 0, i32 13, i32 5
  %54 = ptrtoint ptr %pad_ib to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pad_ib, align 4
  call void %55(ptr noundef nonnull %ib) #11
  %sync = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 8
  %resv = getelementptr inbounds %struct.radeon_bo, ptr %1, i32 0, i32 4, i32 0, i32 9
  %56 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %resv, align 8
  %call49 = call i32 @radeon_sync_resv(ptr noundef %rdev, ptr noundef %sync, ptr noundef %57, i1 noundef zeroext true) #11
  %58 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %length_dw, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %add)
  %cmp51 = icmp ugt i32 %59, %add
  br i1 %cmp51, label %do.end, label %if.then47.if.end67_crit_edge, !prof !66

if.then47.if.end67_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

do.end:                                           ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 705, i32 noundef 9, ptr noundef null) #11
  br label %if.end67

if.end67:                                         ; preds = %do.end, %if.then47.if.end67_crit_edge
  %call74 = call i32 @radeon_ib_schedule(ptr noundef %rdev, ptr noundef nonnull %ib, ptr noundef null, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %if.end67.cleanup80.sink.split_crit_edge

if.end67.cleanup80.sink.split_crit_edge:          ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup80.sink.split

if.end77:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  %fence = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 5
  %60 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %fence, align 8
  %is_vm_update = getelementptr inbounds %struct.radeon_fence, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %is_vm_update to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %is_vm_update, align 4
  call void @radeon_bo_fence(ptr noundef %1, ptr noundef %61, i1 noundef zeroext false) #11
  br label %cleanup80.sink.split

cleanup80.sink.split:                             ; preds = %if.end77, %if.end67.cleanup80.sink.split_crit_edge, %if.end43.cleanup80.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call74, %if.end67.cleanup80.sink.split_crit_edge ], [ 0, %if.end77 ], [ 0, %if.end43.cleanup80.sink.split_crit_edge ]
  call void @radeon_ib_free(ptr noundef %rdev, ptr noundef nonnull %ib) #11
  br label %cleanup80

cleanup80:                                        ; preds = %cleanup80.sink.split, %if.end.cleanup80_crit_edge, %radeon_bo_gpu_offset.exit.cleanup80_crit_edge
  %retval.0 = phi i32 [ -12, %radeon_bo_gpu_offset.exit.cleanup80_crit_edge ], [ %call3, %if.end.cleanup80_crit_edge ], [ %retval.0.ph, %cleanup80.sink.split ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %ib) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_ib_get(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_sync_resv(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_ib_schedule(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ib_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_bo_fence(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_vm_bo_update(ptr noundef %rdev, ptr noundef %bo_va, ptr noundef readonly %mem) local_unnamed_addr #0 align 64 {
entry:
  %ib = alloca %struct.radeon_ib, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vm1 = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va, i32 0, i32 6
  %0 = ptrtoint ptr %vm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm1, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %ib) #11
  %2 = call ptr @memset(ptr %ib, i32 255, i32 88)
  %start = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rdev, align 8
  %bo = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va, i32 0, i32 7
  %7 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bo, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.8, ptr noundef %8, ptr noundef %1) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %status_lock = getelementptr inbounds %struct.radeon_vm, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %status_lock) #11
  %tobool2.not = icmp eq ptr %mem, null
  %vm_status9 = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va, i32 0, i32 5
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %9 = ptrtoint ptr %vm_status9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %vm_status9, align 4
  %cmp.i.not = icmp eq ptr %10, %vm_status9
  br i1 %cmp.i.not, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %status_lock) #11
  br label %cleanup

if.end7:                                          ; preds = %if.then3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %vm_status9) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end7.list_del_init.exit_crit_edge

if.end7.list_del_init.exit_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %vm_status9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vm_status9, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end7.list_del_init.exit_crit_edge
  %17 = ptrtoint ptr %vm_status9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %vm_status9, ptr %vm_status9, align 4
  %prev.i3.i = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va, i32 0, i32 5, i32 1
  %18 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %vm_status9, ptr %prev.i3.i, align 4
  br label %if.end11

if.else:                                          ; preds = %if.end
  %call.i.i230 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %vm_status9) #11
  br i1 %call.i.i230, label %if.end.i.i233, label %if.else.list_del.exit_crit_edge

if.else.list_del.exit_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i233:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i231 = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va, i32 0, i32 5, i32 1
  %19 = ptrtoint ptr %prev.i.i231 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i231, align 4
  %21 = ptrtoint ptr %vm_status9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vm_status9, align 4
  %prev1.i.i.i232 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i232 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i232, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i233, %if.else.list_del.exit_crit_edge
  %25 = ptrtoint ptr %vm_status9 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %vm_status9, align 4
  %prev.i = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va, i32 0, i32 5, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %cleared = getelementptr inbounds %struct.radeon_vm, ptr %1, i32 0, i32 5
  %27 = ptrtoint ptr %cleared to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cleared, align 4
  %call.i.i234 = tail call zeroext i1 @__list_add_valid(ptr noundef %vm_status9, ptr noundef %cleared, ptr noundef %28) #11
  br i1 %call.i.i234, label %if.end.i.i235, label %list_del.exit.if.end11_crit_edge

list_del.exit.if.end11_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.end.i.i235:                                    ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %vm_status9, ptr %prev1.i.i, align 4
  %30 = ptrtoint ptr %vm_status9 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %28, ptr %vm_status9, align 4
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %cleared, ptr %prev.i, align 4
  %32 = ptrtoint ptr %cleared to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %vm_status9, ptr %cleared, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end.i.i235, %list_del.exit.if.end11_crit_edge, %list_del_init.exit
  tail call void @_raw_spin_unlock(ptr noundef %status_lock) #11
  %flags13 = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va, i32 0, i32 1
  %33 = ptrtoint ptr %flags13 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags13, align 4
  %and17 = and i32 %34, -26
  store i32 %and17, ptr %flags13, align 4
  %bo18 = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va, i32 0, i32 7
  %35 = ptrtoint ptr %bo18 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bo18, align 4
  %tobool19.not = icmp eq ptr %36, null
  br i1 %tobool19.not, label %if.end11.if.end25_crit_edge, label %land.lhs.true

if.end11.if.end25_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end11
  %ttm = getelementptr inbounds %struct.radeon_bo, ptr %36, i32 0, i32 4, i32 7
  %37 = ptrtoint ptr %ttm to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ttm, align 8
  %call21 = tail call zeroext i1 @radeon_ttm_tt_is_readonly(ptr noundef %rdev, ptr noundef %38) #11
  br i1 %call21, label %if.then22, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %flags13 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags13, align 4
  %and24 = and i32 %40, -5
  store i32 %and24, ptr %flags13, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %land.lhs.true.if.end25_crit_edge, %if.end11.if.end25_crit_edge
  br i1 %tobool2.not, label %if.end25.if.end50_crit_edge, label %if.then27

if.end25.if.end50_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.then27:                                        ; preds = %if.end25
  %41 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mem, align 4
  %conv = zext i32 %42 to i64
  %shl = shl nuw nsw i64 %conv, 12
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %mem, i32 0, i32 2
  %43 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mem_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.not = icmp eq i32 %44, 0
  br i1 %cmp.not, label %if.then27.if.else47_crit_edge, label %if.end32

if.then27.if.else47_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else47

if.end32:                                         ; preds = %if.then27
  %45 = ptrtoint ptr %flags13 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags13, align 4
  %or = or i32 %46, 1
  store i32 %or, ptr %flags13, align 4
  %47 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pr = load i32, ptr %mem_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp34 = icmp eq i32 %.pr, 1
  br i1 %cmp34, label %if.then36, label %if.end32.if.else47_crit_edge

if.end32.if.else47_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else47

if.then36:                                        ; preds = %if.end32
  %48 = ptrtoint ptr %flags13 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags13, align 4
  %or38 = or i32 %49, 8
  store i32 %or38, ptr %flags13, align 4
  %50 = ptrtoint ptr %bo18 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bo18, align 4
  %flags40 = getelementptr inbounds %struct.radeon_bo, ptr %51, i32 0, i32 6
  %52 = ptrtoint ptr %flags40 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags40, align 8
  %and41 = and i32 %53, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.then43, label %if.then36.if.end50_crit_edge

if.then36.if.end50_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.then43:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #13
  %or45 = or i32 %49, 24
  %54 = ptrtoint ptr %flags13 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %or45, ptr %flags13, align 4
  br label %if.end50

if.else47:                                        ; preds = %if.end32.if.else47_crit_edge, %if.then27.if.else47_crit_edge
  %vram_base_offset = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 100, i32 3
  %55 = ptrtoint ptr %vram_base_offset to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %vram_base_offset, align 8
  %add = add i64 %56, %shl
  br label %if.end50

if.end50:                                         ; preds = %if.else47, %if.then43, %if.then36.if.end50_crit_edge, %if.end25.if.end50_crit_edge
  %addr.0 = phi i64 [ %shl, %if.then36.if.end50_crit_edge ], [ %shl, %if.then43 ], [ %add, %if.else47 ], [ 0, %if.end25.if.end50_crit_edge ]
  tail call fastcc void @trace_radeon_vm_bo_update(ptr noundef %bo_va)
  %last = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va, i32 0, i32 4, i32 2
  %57 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %last, align 4
  %59 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %start, align 4
  %sub = sub i32 %58, %60
  %add54 = add i32 %sub, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_vm_block_size to i32))
  %61 = load i32, ptr @radeon_vm_block_size, align 4
  %62 = tail call i32 @llvm.smin.i32(i32 %61, i32 11)
  %shr = lshr i32 %add54, %62
  %add57 = add i32 %shr, 1
  %63 = ptrtoint ptr %flags13 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags13, align 4
  %and.i = and i32 %64, 1
  %and1.i = shl i32 %64, 4
  %65 = and i32 %and1.i, 32
  %or4.i = or i32 %65, %and.i
  %66 = and i32 %and1.i, 64
  %or8.i = or i32 %or4.i, %66
  %and9.i = lshr i32 %64, 2
  %67 = and i32 %and9.i, 2
  %68 = or i32 %67, %or8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %68)
  %cmp61 = icmp eq i32 %68, 99
  br i1 %cmp61, label %if.then63, label %if.else65

if.then63:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  %mul = mul i32 %add57, 7
  %add64 = add i32 %mul, 64
  br label %if.end78

if.else65:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool67.not = icmp eq i32 %67, 0
  br i1 %tobool67.not, label %if.else73, label %if.then68

if.then68:                                        ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #13
  %mul69 = shl i32 %add57, 2
  %mul71 = shl i32 %add54, 1
  %add70 = add i32 %mul71, 64
  %add72 = add i32 %add70, %mul69
  br label %if.end78

if.else73:                                        ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #13
  %mul74 = mul i32 %add57, 10
  %add76 = add i32 %mul74, 84
  br label %if.end78

if.end78:                                         ; preds = %if.else73, %if.then68, %if.then63
  %ndw.0 = phi i32 [ %add64, %if.then63 ], [ %add72, %if.then68 ], [ %add76, %if.else73 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048575, i32 %ndw.0)
  %cmp79 = icmp ugt i32 %ndw.0, 1048575
  br i1 %cmp79, label %if.end78.cleanup_crit_edge, label %if.end82

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end82:                                         ; preds = %if.end78
  %mul83 = shl nuw nsw i32 %ndw.0, 2
  %call84 = call i32 @radeon_ib_get(ptr noundef %rdev, i32 noundef 3, ptr noundef nonnull %ib, ptr noundef null, i32 noundef %mul83) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end87, label %if.end82.cleanup_crit_edge

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end87:                                         ; preds = %if.end82
  %length_dw = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 1
  %69 = ptrtoint ptr %length_dw to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %length_dw, align 4
  %70 = ptrtoint ptr %flags13 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %flags13, align 4
  %and89 = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %for.cond.preheader, label %if.end87.if.end94_crit_edge

if.end87.if.end94_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

for.cond.preheader:                               ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  %sync = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 8
  %last_id_use = getelementptr %struct.radeon_vm, ptr %1, i32 0, i32 10, i32 0, i32 3
  %72 = ptrtoint ptr %last_id_use to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %last_id_use, align 4
  call void @radeon_sync_fence(ptr noundef %sync, ptr noundef %73) #11
  %last_id_use.1 = getelementptr %struct.radeon_vm, ptr %1, i32 0, i32 10, i32 1, i32 3
  %74 = ptrtoint ptr %last_id_use.1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %last_id_use.1, align 4
  call void @radeon_sync_fence(ptr noundef %sync, ptr noundef %75) #11
  %last_id_use.2 = getelementptr %struct.radeon_vm, ptr %1, i32 0, i32 10, i32 2, i32 3
  %76 = ptrtoint ptr %last_id_use.2 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %last_id_use.2, align 4
  call void @radeon_sync_fence(ptr noundef %sync, ptr noundef %77) #11
  %last_id_use.3 = getelementptr %struct.radeon_vm, ptr %1, i32 0, i32 10, i32 3, i32 3
  %78 = ptrtoint ptr %last_id_use.3 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %last_id_use.3, align 4
  call void @radeon_sync_fence(ptr noundef %sync, ptr noundef %79) #11
  %last_id_use.4 = getelementptr %struct.radeon_vm, ptr %1, i32 0, i32 10, i32 4, i32 3
  %80 = ptrtoint ptr %last_id_use.4 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %last_id_use.4, align 4
  call void @radeon_sync_fence(ptr noundef %sync, ptr noundef %81) #11
  %last_id_use.5 = getelementptr %struct.radeon_vm, ptr %1, i32 0, i32 10, i32 5, i32 3
  %82 = ptrtoint ptr %last_id_use.5 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %last_id_use.5, align 4
  call void @radeon_sync_fence(ptr noundef %sync, ptr noundef %83) #11
  %last_id_use.6 = getelementptr %struct.radeon_vm, ptr %1, i32 0, i32 10, i32 6, i32 3
  %84 = ptrtoint ptr %last_id_use.6 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %last_id_use.6, align 4
  call void @radeon_sync_fence(ptr noundef %sync, ptr noundef %85) #11
  %last_id_use.7 = getelementptr %struct.radeon_vm, ptr %1, i32 0, i32 10, i32 7, i32 3
  %86 = ptrtoint ptr %last_id_use.7 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %last_id_use.7, align 4
  call void @radeon_sync_fence(ptr noundef %sync, ptr noundef %87) #11
  br label %if.end94

if.end94:                                         ; preds = %for.cond.preheader, %if.end87.if.end94_crit_edge
  %88 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %start, align 4
  %90 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %last, align 4
  %add100 = add i32 %91, 1
  %conv101 = zext i32 %add100 to i64
  %92 = ptrtoint ptr %flags13 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %flags13, align 4
  %and.i236 = and i32 %93, 1
  %and1.i237 = shl i32 %93, 4
  %94 = and i32 %and1.i237, 32
  %or4.i238 = or i32 %94, %and.i236
  %95 = and i32 %and1.i237, 64
  %or8.i239 = or i32 %or4.i238, %95
  %and9.i240 = and i32 %93, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i240)
  %tobool10.not.i241 = icmp eq i32 %and9.i240, 0
  %and12.i242 = lshr i32 %93, 2
  %96 = and i32 %and12.i242, 4
  %or11.i243 = or i32 %96, %or8.i239
  %or15.i244 = or i32 %or11.i243, 2
  %hw_flags.0.i245 = select i1 %tobool10.not.i241, i32 %or8.i239, i32 %or15.i244
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_vm_block_size to i32))
  %97 = load i32, ptr @radeon_vm_block_size, align 4
  %notmask.i = shl nsw i32 -1, %97
  %sub.i = xor i32 %notmask.i, -1
  %conv.i246 = sext i32 %sub.i to i64
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %add100)
  %cmp101.i = icmp ult i32 %89, %add100
  br i1 %cmp101.i, label %for.body.lr.ph.i, label %if.end94.if.end107_crit_edge

if.end94.if.end107_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end107

for.body.lr.ph.i:                                 ; preds = %if.end94
  %conv97 = zext i32 %89 to i64
  %page_tables.i = getelementptr inbounds %struct.radeon_vm, ptr %1, i32 0, i32 8
  %sync.i = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 8
  %neg.i = xor i64 %conv.i246, -1
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %addr.0107.i = phi i64 [ %conv97, %for.body.lr.ph.i ], [ %add37.i, %cleanup.i.for.body.i_crit_edge ]
  %count.0106.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %count.1.i, %cleanup.i.for.body.i_crit_edge ]
  %last_dst.0105.i = phi i64 [ -1, %for.body.lr.ph.i ], [ %last_dst.1.i, %cleanup.i.for.body.i_crit_edge ]
  %last_pte.0104.i = phi i64 [ -1, %for.body.lr.ph.i ], [ %last_pte.1.i, %cleanup.i.for.body.i_crit_edge ]
  %dst.addr.0102.i = phi i64 [ %addr.0, %for.body.lr.ph.i ], [ %add40.i, %cleanup.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_vm_block_size to i32))
  %98 = load i32, ptr @radeon_vm_block_size, align 4
  %sh_prom.i = zext i32 %98 to i64
  %shr.i = lshr i64 %addr.0107.i, %sh_prom.i
  %99 = ptrtoint ptr %page_tables.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %page_tables.i, align 8
  %idxprom.i = trunc i64 %shr.i to i32
  %arrayidx.i = getelementptr %struct.radeon_vm_pt, ptr %100, i32 %idxprom.i
  %101 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx.i, align 8
  %resv.i = getelementptr inbounds %struct.radeon_bo, ptr %102, i32 0, i32 4, i32 0, i32 9
  %103 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %resv.i, align 8
  %call.i = call i32 @radeon_sync_resv(ptr noundef %rdev, ptr noundef %sync.i, ptr noundef %104, i1 noundef zeroext true) #11
  %105 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %resv.i, align 8
  %call5.i = call i32 @dma_resv_reserve_shared(ptr noundef %106, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then106

if.end.i:                                         ; preds = %for.body.i
  %107 = xor i64 %addr.0107.i, %conv101
  %108 = and i64 %107, %neg.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %108)
  %cmp8.i = icmp eq i64 %108, 0
  br i1 %cmp8.i, label %if.then10.i, label %if.else.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %109 = trunc i64 %addr.0107.i to i32
  %conv12.i = sub i32 %add100, %109
  br label %if.end18.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_vm_block_size to i32))
  %110 = load i32, ptr @radeon_vm_block_size, align 4
  %shl13.i = shl nuw i32 1, %110
  %111 = trunc i64 %addr.0107.i to i32
  %112 = and i32 %111, %sub.i
  %conv17.i = sub i32 %shl13.i, %112
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.else.i, %if.then10.i
  %nptes.0.i = phi i32 [ %conv12.i, %if.then10.i ], [ %conv17.i, %if.else.i ]
  %bdev.i.i = getelementptr inbounds %struct.radeon_bo, ptr %102, i32 0, i32 4, i32 1
  %113 = ptrtoint ptr %bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %bdev.i.i, align 8
  %call.i.i247 = call ptr @radeon_get_rdev(ptr noundef %114) #11
  %resource.i.i = getelementptr inbounds %struct.radeon_bo, ptr %102, i32 0, i32 4, i32 6
  %115 = ptrtoint ptr %resource.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %resource.i.i, align 4
  %mem_type.i.i = getelementptr inbounds %struct.ttm_resource, ptr %116, i32 0, i32 2
  %117 = ptrtoint ptr %mem_type.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %mem_type.i.i, align 4
  %119 = zext i32 %118 to i64
  call void @__sanitizer_cov_trace_switch(i64 %119, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %118, label %if.end18.i.radeon_bo_gpu_offset.exit.i_crit_edge [
    i32 1, label %sw.bb.i.i
    i32 2, label %sw.bb2.i.i
  ]

if.end18.i.radeon_bo_gpu_offset.exit.i_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_bo_gpu_offset.exit.i

sw.bb.i.i:                                        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  %gtt_start.i.i = getelementptr inbounds %struct.radeon_device, ptr %call.i.i247, i32 0, i32 42, i32 6
  br label %sw.epilog.sink.split.i.i

sw.bb2.i.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  %vram_start.i.i = getelementptr inbounds %struct.radeon_device, ptr %call.i.i247, i32 0, i32 42, i32 8
  br label %sw.epilog.sink.split.i.i

sw.epilog.sink.split.i.i:                         ; preds = %sw.bb2.i.i, %sw.bb.i.i
  %vram_start.sink.i.i = phi ptr [ %vram_start.i.i, %sw.bb2.i.i ], [ %gtt_start.i.i, %sw.bb.i.i ]
  %120 = ptrtoint ptr %vram_start.sink.i.i to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %vram_start.sink.i.i, align 8
  br label %radeon_bo_gpu_offset.exit.i

radeon_bo_gpu_offset.exit.i:                      ; preds = %sw.epilog.sink.split.i.i, %if.end18.i.radeon_bo_gpu_offset.exit.i_crit_edge
  %start.0.i.i = phi i64 [ 0, %if.end18.i.radeon_bo_gpu_offset.exit.i_crit_edge ], [ %121, %sw.epilog.sink.split.i.i ]
  %122 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %116, align 4
  %shl.i.i = shl i32 %123, 12
  %conv.i.i = zext i32 %shl.i.i to i64
  %and20.i = and i64 %addr.0107.i, %conv.i246
  %mul.i = shl i64 %and20.i, 3
  %add.i.i = add i64 %start.0.i.i, %mul.i
  %add.i = add i64 %add.i.i, %conv.i.i
  %mul21.i = shl i32 %count.0106.i, 3
  %conv22.i = zext i32 %mul21.i to i64
  %add23.i = add i64 %last_pte.0104.i, %conv22.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add23.i, i64 %add.i)
  %cmp24.not.i = icmp eq i64 %add23.i, %add.i
  br i1 %cmp24.not.i, label %if.else33.i, label %if.then26.i

if.then26.i:                                      ; preds = %radeon_bo_gpu_offset.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0106.i)
  %tobool27.not.i = icmp eq i32 %count.0106.i, 0
  br i1 %tobool27.not.i, label %if.then26.i.cleanup.i_crit_edge, label %if.then28.i

if.then26.i.cleanup.i_crit_edge:                  ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.then28.i:                                      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @radeon_vm_frag_ptes(ptr noundef %rdev, ptr noundef nonnull %ib, i64 noundef %last_pte.0104.i, i64 noundef %add23.i, i64 noundef %last_dst.0105.i, i32 noundef %hw_flags.0.i245) #11
  br label %cleanup.i

if.else33.i:                                      ; preds = %radeon_bo_gpu_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %add34.i = add i32 %nptes.0.i, %count.0106.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.else33.i, %if.then28.i, %if.then26.i.cleanup.i_crit_edge
  %last_pte.1.i = phi i64 [ %last_pte.0104.i, %if.else33.i ], [ %add.i, %if.then28.i ], [ %add.i, %if.then26.i.cleanup.i_crit_edge ]
  %last_dst.1.i = phi i64 [ %last_dst.0105.i, %if.else33.i ], [ %dst.addr.0102.i, %if.then28.i ], [ %dst.addr.0102.i, %if.then26.i.cleanup.i_crit_edge ]
  %count.1.i = phi i32 [ %add34.i, %if.else33.i ], [ %nptes.0.i, %if.then28.i ], [ %nptes.0.i, %if.then26.i.cleanup.i_crit_edge ]
  %conv36.i = zext i32 %nptes.0.i to i64
  %add37.i = add i64 %addr.0107.i, %conv36.i
  %mul38.i = shl i32 %nptes.0.i, 12
  %conv39.i = zext i32 %mul38.i to i64
  %add40.i = add i64 %dst.addr.0102.i, %conv39.i
  %cmp.i248 = icmp ult i64 %add37.i, %conv101
  br i1 %cmp.i248, label %cleanup.i.for.body.i_crit_edge, label %for.end.i

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1.i)
  %tobool45.not.i = icmp eq i32 %count.1.i, 0
  br i1 %tobool45.not.i, label %for.end.i.if.end107_crit_edge, label %if.then46.i

for.end.i.if.end107_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end107

if.then46.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %mul47.i = shl i32 %count.1.i, 3
  %conv48.i = zext i32 %mul47.i to i64
  %add49.i = add i64 %last_pte.1.i, %conv48.i
  call fastcc void @radeon_vm_frag_ptes(ptr noundef %rdev, ptr noundef nonnull %ib, i64 noundef %last_pte.1.i, i64 noundef %add49.i, i64 noundef %last_dst.1.i, i32 noundef %hw_flags.0.i245) #11
  br label %if.end107

if.then106:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @radeon_ib_free(ptr noundef %rdev, ptr noundef nonnull %ib) #11
  br label %cleanup

if.end107:                                        ; preds = %if.then46.i, %for.end.i.if.end107_crit_edge, %if.end94.if.end107_crit_edge
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %124 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %asic, align 8
  %pad_ib = getelementptr inbounds %struct.radeon_asic, ptr %125, i32 0, i32 13, i32 5
  %126 = ptrtoint ptr %pad_ib to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %pad_ib, align 4
  call void %127(ptr noundef nonnull %ib) #11
  %128 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %length_dw, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %129, i32 %ndw.0)
  %cmp110 = icmp ugt i32 %129, %ndw.0
  br i1 %cmp110, label %do.end123, label %if.end107.if.end129_crit_edge, !prof !66

if.end107.if.end129_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end129

do.end123:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1020, i32 noundef 9, ptr noundef null) #11
  br label %if.end129

if.end129:                                        ; preds = %do.end123, %if.end107.if.end129_crit_edge
  %call137 = call i32 @radeon_ib_schedule(ptr noundef %rdev, ptr noundef nonnull %ib, ptr noundef null, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %if.end140, label %if.then139

if.then139:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #13
  call void @radeon_ib_free(ptr noundef %rdev, ptr noundef nonnull %ib) #11
  br label %cleanup

if.end140:                                        ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #13
  %fence = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 5
  %130 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %fence, align 8
  %is_vm_update = getelementptr inbounds %struct.radeon_fence, ptr %131, i32 0, i32 4
  %132 = ptrtoint ptr %is_vm_update to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 1, ptr %is_vm_update, align 4
  %133 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %start, align 4
  %conv143 = zext i32 %134 to i64
  %135 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %last, align 4
  %add146 = add i32 %136, 1
  %conv147 = zext i32 %add146 to i64
  call fastcc void @radeon_vm_fence_pts(ptr noundef %1, i64 noundef %conv143, i64 noundef %conv147, ptr noundef %131)
  %last_pt_update = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va, i32 0, i32 2
  call void @radeon_fence_unref(ptr noundef %last_pt_update) #11
  %137 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %fence, align 8
  %call150 = call ptr @radeon_fence_ref(ptr noundef %138) #11
  %139 = ptrtoint ptr %last_pt_update to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %call150, ptr %last_pt_update, align 4
  call void @radeon_ib_free(ptr noundef %rdev, ptr noundef nonnull %ib) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end140, %if.then139, %if.then106, %if.end82.cleanup_crit_edge, %if.end78.cleanup_crit_edge, %if.then5, %do.end
  %retval.0 = phi i32 [ 0, %if.then5 ], [ %call5.i, %if.then106 ], [ %call137, %if.then139 ], [ 0, %if.end140 ], [ -22, %do.end ], [ -12, %if.end78.cleanup_crit_edge ], [ %call84, %if.end82.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %ib) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_ttm_tt_is_readonly(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_radeon_vm_bo_update(ptr noundef %bo_va) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_radeon_vm_bo_update, i32 0, i32 1), ptr blockaddress(@trace_radeon_vm_bo_update, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !70

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !67

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !80
  %call42 = tail call i32 @__traceiter_radeon_vm_bo_update(ptr noundef null, ptr noundef %bo_va) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !81
  %13 = tail call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !67

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !73
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_radeon_vm_bo_update, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_radeon_vm_bo_update, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_radeon_vm_bo_update.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_radeon_vm_bo_update.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 81, ptr noundef nonnull @.str.17) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !74
  %31 = tail call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_sync_fence(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_vm_fence_pts(ptr nocapture noundef readonly %vm, i64 noundef %start, i64 noundef %end, ptr noundef %fence) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_vm_block_size to i32))
  %0 = load i32, ptr @radeon_vm_block_size, align 4
  %sh_prom = zext i32 %0 to i64
  %shr = lshr i64 %start, %sh_prom
  %sub = add i64 %end, -1
  %shr2 = lshr i64 %sub, %sh_prom
  %conv39 = and i64 %shr, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %shr2, i64 %conv39)
  %cmp.not10 = icmp ult i64 %shr2, %conv39
  br i1 %cmp.not10, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %conv = trunc i64 %shr to i32
  %page_tables = getelementptr inbounds %struct.radeon_vm, ptr %vm, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.011 = phi i32 [ %conv, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %1 = ptrtoint ptr %page_tables to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %page_tables, align 8
  %arrayidx = getelementptr %struct.radeon_vm_pt, ptr %2, i32 %i.011
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 8
  tail call void @radeon_bo_fence(ptr noundef %4, ptr noundef %fence, i1 noundef zeroext true) #11
  %inc = add i32 %i.011, 1
  %conv3 = zext i32 %inc to i64
  %cmp.not = icmp ult i64 %shr2, %conv3
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_vm_clear_freed(ptr noundef %rdev, ptr noundef %vm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %status_lock = getelementptr inbounds %struct.radeon_vm, ptr %vm, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %status_lock) #11
  %freed = getelementptr inbounds %struct.radeon_vm, ptr %vm, i32 0, i32 4
  br label %while.cond

while.cond:                                       ; preds = %list_del.exit.while.cond_crit_edge, %entry
  %0 = ptrtoint ptr %freed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %freed, align 4
  %cmp.i.not = icmp eq ptr %1, %freed
  br i1 %cmp.i.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.cond
  %add.ptr = getelementptr i8, ptr %1, i32 -44
  tail call void @_raw_spin_unlock(ptr noundef %status_lock) #11
  %call3 = tail call i32 @radeon_vm_bo_update(ptr noundef %rdev, ptr noundef %add.ptr, ptr noundef null)
  %bo = getelementptr i8, ptr %1, i32 12
  tail call void @radeon_bo_unref(ptr noundef %bo) #11
  %last_pt_update = getelementptr i8, ptr %1, i32 -32
  tail call void @radeon_fence_unref(ptr noundef %last_pt_update) #11
  tail call void @_raw_spin_lock(ptr noundef %status_lock) #11
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #11
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %add.ptr) #11
  %tobool5.not = icmp eq i32 %call3, 0
  br i1 %tobool5.not, label %list_del.exit.while.cond_crit_edge, label %list_del.exit.while.end_crit_edge

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

list_del.exit.while.cond_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %while.cond.while.end_crit_edge
  %r.1 = phi i32 [ %call3, %list_del.exit.while.end_crit_edge ], [ 0, %while.cond.while.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %status_lock) #11
  ret i32 %r.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_vm_clear_invalids(ptr noundef %rdev, ptr noundef %vm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %status_lock = getelementptr inbounds %struct.radeon_vm, ptr %vm, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %status_lock) #11
  %invalidated = getelementptr inbounds %struct.radeon_vm, ptr %vm, i32 0, i32 3
  %0 = ptrtoint ptr %invalidated to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %invalidated, align 4
  %cmp.i.not14 = icmp eq ptr %1, %invalidated
  br i1 %cmp.i.not14, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %4, %if.end.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %2, i32 -44
  tail call void @_raw_spin_unlock(ptr noundef %status_lock) #11
  %call3 = tail call i32 @radeon_vm_bo_update(ptr noundef %rdev, ptr noundef %add.ptr, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %while.body
  tail call void @_raw_spin_lock(ptr noundef %status_lock) #11
  %3 = ptrtoint ptr %invalidated to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %invalidated, align 4
  %cmp.i.not = icmp eq ptr %4, %invalidated
  br i1 %cmp.i.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %status_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %while.end, %while.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end ], [ %call3, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_vm_bo_rmv(ptr nocapture noundef readnone %rdev, ptr noundef %bo_va) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vm1 = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va, i32 0, i32 6
  %0 = ptrtoint ptr %vm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm1, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %bo_va) #11
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %bo_va, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %bo_va to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bo_va, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %8 = ptrtoint ptr %bo_va to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %bo_va, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %bo_va, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #11
  %it = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va, i32 0, i32 4
  %start = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %lor.lhs.false, label %list_del.exit.if.then_crit_edge

list_del.exit.if.then_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %list_del.exit
  %last = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va, i32 0, i32 4, i32 2
  %12 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %last, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool3.not = icmp eq i32 %13, 0
  br i1 %tobool3.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %list_del.exit.if.then_crit_edge
  %va = getelementptr inbounds %struct.radeon_vm, ptr %1, i32 0, i32 1
  tail call void @interval_tree_remove(ptr noundef %it, ptr noundef %va) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %status_lock = getelementptr inbounds %struct.radeon_vm, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %status_lock) #11
  %vm_status = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va, i32 0, i32 5
  %call.i.i35 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %vm_status) #11
  br i1 %call.i.i35, label %if.end.i.i38, label %if.end.list_del.exit40_crit_edge

if.end.list_del.exit40_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit40

if.end.i.i38:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i36 = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %prev.i.i36 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i36, align 4
  %16 = ptrtoint ptr %vm_status to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vm_status, align 4
  %prev1.i.i.i37 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i37 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i37, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del.exit40

list_del.exit40:                                  ; preds = %if.end.i.i38, %if.end.list_del.exit40_crit_edge
  %20 = ptrtoint ptr %vm_status to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %vm_status, align 4
  %prev.i39 = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va, i32 0, i32 5, i32 1
  %21 = ptrtoint ptr %prev.i39 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i39, align 4
  %22 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool7.not = icmp eq i32 %23, 0
  br i1 %tobool7.not, label %lor.lhs.false8, label %list_del.exit40.if.then12_crit_edge

list_del.exit40.if.then12_crit_edge:              ; preds = %list_del.exit40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

lor.lhs.false8:                                   ; preds = %list_del.exit40
  %last10 = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va, i32 0, i32 4, i32 2
  %24 = ptrtoint ptr %last10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %last10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool11.not = icmp eq i32 %25, 0
  br i1 %tobool11.not, label %if.else, label %lor.lhs.false8.if.then12_crit_edge

lor.lhs.false8.if.then12_crit_edge:               ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

if.then12:                                        ; preds = %lor.lhs.false8.if.then12_crit_edge, %list_del.exit40.if.then12_crit_edge
  %bo = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va, i32 0, i32 7
  %26 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bo, align 4
  %call = tail call ptr @radeon_bo_ref(ptr noundef %27) #11
  %28 = ptrtoint ptr %bo to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call, ptr %bo, align 4
  %freed = getelementptr inbounds %struct.radeon_vm, ptr %1, i32 0, i32 4
  %29 = ptrtoint ptr %freed to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %freed, align 4
  %call.i.i41 = tail call zeroext i1 @__list_add_valid(ptr noundef %vm_status, ptr noundef %freed, ptr noundef %30) #11
  br i1 %call.i.i41, label %if.end.i.i42, label %if.then12.if.end15_crit_edge

if.then12.if.end15_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.end.i.i42:                                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %vm_status, ptr %prev1.i.i, align 4
  %32 = ptrtoint ptr %vm_status to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %30, ptr %vm_status, align 4
  %33 = ptrtoint ptr %prev.i39 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %freed, ptr %prev.i39, align 4
  %34 = ptrtoint ptr %freed to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %vm_status, ptr %freed, align 4
  br label %if.end15

if.else:                                          ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #13
  %last_pt_update = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va, i32 0, i32 2
  tail call void @radeon_fence_unref(ptr noundef %last_pt_update) #11
  tail call void @kfree(ptr noundef %bo_va) #11
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.end.i.i42, %if.then12.if.end15_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %status_lock) #11
  tail call void @mutex_unlock(ptr noundef %1) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_vm_bo_invalidate(ptr nocapture noundef readnone %rdev, ptr noundef readonly %bo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %va = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 12
  %0 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %0)
  %bo_va.023 = load ptr, ptr %va, align 4
  %cmp.not24 = icmp eq ptr %bo_va.023, %va
  br i1 %cmp.not24, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %bo_va.025 = phi ptr [ %bo_va.0, %if.end.for.body_crit_edge ], [ %bo_va.023, %entry.for.body_crit_edge ]
  %vm = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va.025, i32 0, i32 6
  %1 = ptrtoint ptr %vm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vm, align 4
  %status_lock = getelementptr inbounds %struct.radeon_vm, ptr %2, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %status_lock) #11
  %vm_status = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va.025, i32 0, i32 5
  %3 = ptrtoint ptr %vm_status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %vm_status, align 4
  %cmp.i.not = icmp eq ptr %4, %vm_status
  br i1 %cmp.i.not, label %land.lhs.true, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %start = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va.025, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %last = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va.025, i32 0, i32 4, i32 2
  %7 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %last, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not = icmp eq i32 %8, 0
  br i1 %tobool4.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %9 = ptrtoint ptr %vm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vm, align 4
  %invalidated = getelementptr inbounds %struct.radeon_vm, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %invalidated to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %invalidated, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %vm_status, ptr noundef %invalidated, ptr noundef %12) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %vm_status, ptr %prev1.i.i, align 4
  %14 = ptrtoint ptr %vm_status to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %12, ptr %vm_status, align 4
  %prev3.i.i = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va.025, i32 0, i32 5, i32 1
  %15 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %invalidated, ptr %prev3.i.i, align 4
  %16 = ptrtoint ptr %invalidated to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %vm_status, ptr %invalidated, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %if.then.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge, %for.body.if.end_crit_edge
  %17 = ptrtoint ptr %vm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vm, align 4
  %status_lock8 = getelementptr inbounds %struct.radeon_vm, ptr %18, i32 0, i32 2
  tail call void @_raw_spin_unlock(ptr noundef %status_lock8) #11
  %19 = ptrtoint ptr %bo_va.025 to i32
  call void @__asan_load4_noabort(i32 %19)
  %bo_va.0 = load ptr, ptr %bo_va.025, align 4
  %cmp.not = icmp eq ptr %bo_va.0, %va
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_vm_init(ptr noundef %rdev, ptr noundef %vm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_vm_block_size to i32))
  %0 = load i32, ptr @radeon_vm_block_size, align 4
  %ib_bo_va = getelementptr inbounds %struct.radeon_vm, ptr %vm, i32 0, i32 9
  %1 = ptrtoint ptr %ib_bo_va to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %ib_bo_va, align 4
  %arrayidx = getelementptr %struct.radeon_vm, ptr %vm, i32 0, i32 10, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %arrayidx, align 8
  %flushed_updates = getelementptr %struct.radeon_vm, ptr %vm, i32 0, i32 10, i32 0, i32 2
  %3 = ptrtoint ptr %flushed_updates to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %flushed_updates, align 8
  %last_id_use = getelementptr %struct.radeon_vm, ptr %vm, i32 0, i32 10, i32 0, i32 3
  %4 = ptrtoint ptr %last_id_use to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %last_id_use, align 4
  %arrayidx.1 = getelementptr %struct.radeon_vm, ptr %vm, i32 0, i32 10, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %arrayidx.1, align 8
  %flushed_updates.1 = getelementptr %struct.radeon_vm, ptr %vm, i32 0, i32 10, i32 1, i32 2
  %6 = ptrtoint ptr %flushed_updates.1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %flushed_updates.1, align 8
  %last_id_use.1 = getelementptr %struct.radeon_vm, ptr %vm, i32 0, i32 10, i32 1, i32 3
  %7 = ptrtoint ptr %last_id_use.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %last_id_use.1, align 4
  %arrayidx.2 = getelementptr %struct.radeon_vm, ptr %vm, i32 0, i32 10, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %arrayidx.2, align 8
  %flushed_updates.2 = getelementptr %struct.radeon_vm, ptr %vm, i32 0, i32 10, i32 2, i32 2
  %9 = ptrtoint ptr %flushed_updates.2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %flushed_updates.2, align 8
  %last_id_use.2 = getelementptr %struct.radeon_vm, ptr %vm, i32 0, i32 10, i32 2, i32 3
  %10 = ptrtoint ptr %last_id_use.2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %last_id_use.2, align 4
  %arrayidx.3 = getelementptr %struct.radeon_vm, ptr %vm, i32 0, i32 10, i32 3
  %11 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %arrayidx.3, align 8
  %flushed_updates.3 = getelementptr %struct.radeon_vm, ptr %vm, i32 0, i32 10, i32 3, i32 2
  %12 = ptrtoint ptr %flushed_updates.3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %flushed_updates.3, align 8
  %last_id_use.3 = getelementptr %struct.radeon_vm, ptr %vm, i32 0, i32 10, i32 3, i32 3
  %13 = ptrtoint ptr %last_id_use.3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %last_id_use.3, align 4
  %arrayidx.4 = getelementptr %struct.radeon_vm, ptr %vm, i32 0, i32 10, i32 4
  %14 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %arrayidx.4, align 8
  %flushed_updates.4 = getelementptr %struct.radeon_vm, ptr %vm, i32 0, i32 10, i32 4, i32 2
  %15 = ptrtoint ptr %flushed_updates.4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %flushed_updates.4, align 8
  %last_id_use.4 = getelementptr %struct.radeon_vm, ptr %vm, i32 0, i32 10, i32 4, i32 3
  %16 = ptrtoint ptr %last_id_use.4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %last_id_use.4, align 4
  %arrayidx.5 = getelementptr %struct.radeon_vm, ptr %vm, i32 0, i32 10, i32 5
  %17 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %arrayidx.5, align 8
  %flushed_updates.5 = getelementptr %struct.radeon_vm, ptr %vm, i32 0, i32 10, i32 5, i32 2
  %18 = ptrtoint ptr %flushed_updates.5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %flushed_updates.5, align 8
  %last_id_use.5 = getelementptr %struct.radeon_vm, ptr %vm, i32 0, i32 10, i32 5, i32 3
  %19 = ptrtoint ptr %last_id_use.5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %last_id_use.5, align 4
  %arrayidx.6 = getelementptr %struct.radeon_vm, ptr %vm, i32 0, i32 10, i32 6
  %20 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %arrayidx.6, align 8
  %flushed_updates.6 = getelementptr %struct.radeon_vm, ptr %vm, i32 0, i32 10, i32 6, i32 2
  %21 = ptrtoint ptr %flushed_updates.6 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %flushed_updates.6, align 8
  %last_id_use.6 = getelementptr %struct.radeon_vm, ptr %vm, i32 0, i32 10, i32 6, i32 3
  %22 = ptrtoint ptr %last_id_use.6 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %last_id_use.6, align 4
  %arrayidx.7 = getelementptr %struct.radeon_vm, ptr %vm, i32 0, i32 10, i32 7
  %23 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %arrayidx.7, align 8
  %flushed_updates.7 = getelementptr %struct.radeon_vm, ptr %vm, i32 0, i32 10, i32 7, i32 2
  %24 = ptrtoint ptr %flushed_updates.7 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %flushed_updates.7, align 8
  %last_id_use.7 = getelementptr %struct.radeon_vm, ptr %vm, i32 0, i32 10, i32 7, i32 3
  %25 = ptrtoint ptr %last_id_use.7 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %last_id_use.7, align 4
  tail call void @__mutex_init(ptr noundef %vm, ptr noundef nonnull @.str.10, ptr noundef nonnull @radeon_vm_init.__key) #11
  %va = getelementptr inbounds %struct.radeon_vm, ptr %vm, i32 0, i32 1
  %26 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %va, align 4
  %.compoundliteral.sroa.2.0.va.sroa_idx = getelementptr inbounds %struct.radeon_vm, ptr %vm, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %.compoundliteral.sroa.2.0.va.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %.compoundliteral.sroa.2.0.va.sroa_idx, align 4
  %status_lock = getelementptr inbounds %struct.radeon_vm, ptr %vm, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %status_lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @radeon_vm_init.__key.11, i16 noundef signext 3) #11
  %invalidated = getelementptr inbounds %struct.radeon_vm, ptr %vm, i32 0, i32 3
  %28 = ptrtoint ptr %invalidated to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %invalidated, ptr %invalidated, align 4
  %prev.i = getelementptr inbounds %struct.radeon_vm, ptr %vm, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %invalidated, ptr %prev.i, align 4
  %freed = getelementptr inbounds %struct.radeon_vm, ptr %vm, i32 0, i32 4
  %30 = ptrtoint ptr %freed to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %freed, ptr %freed, align 4
  %prev.i57 = getelementptr inbounds %struct.radeon_vm, ptr %vm, i32 0, i32 4, i32 1
  %31 = ptrtoint ptr %prev.i57 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %freed, ptr %prev.i57, align 4
  %cleared = getelementptr inbounds %struct.radeon_vm, ptr %vm, i32 0, i32 5
  %32 = ptrtoint ptr %cleared to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %cleared, ptr %cleared, align 4
  %prev.i58 = getelementptr inbounds %struct.radeon_vm, ptr %vm, i32 0, i32 5, i32 1
  %33 = ptrtoint ptr %prev.i58 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %cleared, ptr %prev.i58, align 4
  %max_pfn.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 100, i32 1
  %34 = ptrtoint ptr %max_pfn.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_pfn.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_vm_block_size to i32))
  %36 = load i32, ptr @radeon_vm_block_size, align 4
  %shr.i.i = lshr i32 %35, %36
  %mul11 = shl i32 %shr.i.i, 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul11, i32 noundef 3520) #14
  %page_tables = getelementptr inbounds %struct.radeon_vm, ptr %vm, i32 0, i32 8
  %37 = ptrtoint ptr %page_tables to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call9.i.i, ptr %page_tables, align 8
  %cmp14 = icmp eq ptr %call9.i.i, null
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul.i = shl i32 %shr.i.i, 3
  %add.i = add i32 %mul.i, 4095
  %and.i = and i32 %add.i, -4096
  %mul = shl i32 8, %0
  %38 = tail call i32 @llvm.smin.i32(i32 %mul, i32 32768)
  %page_directory = getelementptr inbounds %struct.radeon_vm, ptr %vm, i32 0, i32 6
  %call15 = tail call i32 @radeon_bo_create(ptr noundef %rdev, i32 noundef %and.i, i32 noundef %38, i1 noundef zeroext true, i32 noundef 4, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef %page_directory) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %if.end17, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %39 = ptrtoint ptr %page_directory to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %page_directory, align 8
  %call19 = tail call fastcc i32 @radeon_vm_clear_bo(ptr noundef %rdev, ptr noundef %40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end17.cleanup_crit_edge, label %if.then21

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @radeon_bo_unref(ptr noundef %page_directory) #11
  %41 = ptrtoint ptr %page_directory to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %page_directory, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.end17.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -12, %if.then ], [ %call19, %if.then21 ], [ %call15, %if.end.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_vm_fini(ptr nocapture noundef readonly %rdev, ptr noundef %vm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %va = getelementptr inbounds %struct.radeon_vm, ptr %vm, i32 0, i32 1
  %0 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %va, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.if.end_crit_edge, label %do.end4

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.14) #16
  br label %if.end

if.end:                                           ; preds = %do.end4, %entry.if.end_crit_edge
  %call = tail call ptr @rb_first_postorder(ptr noundef %va) #11
  %tobool.not = icmp eq ptr %call, null
  %add.ptr = getelementptr i8, ptr %call, i32 -20
  %tobool9.not103112 = icmp eq ptr %add.ptr, null
  %tobool9.not103 = or i1 %tobool.not, %tobool9.not103112
  br i1 %tobool9.not103, label %if.end.for.end_crit_edge, label %if.end.land.rhs_crit_edge

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  br label %land.rhs

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %if.end.land.rhs_crit_edge
  %bo_va.0104 = phi ptr [ %add.ptr17, %for.inc.land.rhs_crit_edge ], [ %add.ptr, %if.end.land.rhs_crit_edge ]
  %it = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va.0104, i32 0, i32 4
  %call11 = tail call ptr @rb_next_postorder(ptr noundef %it) #11
  %tobool13.not = icmp eq ptr %call11, null
  %add.ptr17 = getelementptr i8, ptr %call11, i32 -20
  tail call void @interval_tree_remove(ptr noundef %it, ptr noundef %va) #11
  %bo = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va.0104, i32 0, i32 7
  %4 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bo, align 4
  %resv32.i.i = getelementptr inbounds %struct.radeon_bo, ptr %5, i32 0, i32 4, i32 0, i32 9
  %6 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %7, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %retval.1.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %8 = zext i32 %retval.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %retval.1.i.i, label %do.end.i [
    i32 0, label %if.then27
    i32 -512, label %land.rhs.for.inc_crit_edge
  ], !prof !79

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.end.i:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  %rdev.i = getelementptr inbounds %struct.radeon_bo, ptr %5, i32 0, i32 13
  %9 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rdev.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.19, ptr noundef %5) #16
  br label %for.inc

if.then27:                                        ; preds = %land.rhs
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %bo_va.0104) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then27.list_del_init.exit_crit_edge

if.then27.list_del_init.exit_crit_edge:           ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %bo_va.0104, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %bo_va.0104 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bo_va.0104, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then27.list_del_init.exit_crit_edge
  %19 = ptrtoint ptr %bo_va.0104 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %bo_va.0104, ptr %bo_va.0104, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %bo_va.0104, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %bo_va.0104, ptr %prev.i3.i, align 4
  %21 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bo, align 4
  %tbo.i = getelementptr inbounds %struct.radeon_bo, ptr %22, i32 0, i32 4
  %bdev.i.i.i = getelementptr inbounds %struct.radeon_bo, ptr %22, i32 0, i32 4, i32 1
  %23 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %24, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #11
  %resource.i.i.i = getelementptr inbounds %struct.radeon_bo, ptr %22, i32 0, i32 4, i32 6
  %25 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %resource.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i, ptr noundef %26, ptr noundef null) #11
  %27 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %28, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #11
  %resv.i.i = getelementptr inbounds %struct.radeon_bo, ptr %22, i32 0, i32 4, i32 0, i32 9
  %29 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %resv.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %30) #11
  tail call void @ww_mutex_unlock(ptr noundef %30) #11
  %last_pt_update = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va.0104, i32 0, i32 2
  tail call void @radeon_fence_unref(ptr noundef %last_pt_update) #11
  tail call void @kfree(ptr noundef nonnull %bo_va.0104) #11
  br label %for.inc

for.inc:                                          ; preds = %list_del_init.exit, %do.end.i, %land.rhs.for.inc_crit_edge
  %tobool9.not113 = icmp eq ptr %add.ptr17, null
  %tobool9.not = or i1 %tobool13.not, %tobool9.not113
  br i1 %tobool9.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %freed = getelementptr inbounds %struct.radeon_vm, ptr %vm, i32 0, i32 4
  %31 = ptrtoint ptr %freed to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %freed, align 8
  %cmp40.not106 = icmp eq ptr %32, %freed
  br i1 %cmp40.not106, label %for.end.for.cond51.preheader_crit_edge, label %for.end.for.body41_crit_edge

for.end.for.body41_crit_edge:                     ; preds = %for.end
  br label %for.body41

for.end.for.cond51.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond51.preheader

for.cond51.preheader:                             ; preds = %for.body41.for.cond51.preheader_crit_edge, %for.end.for.cond51.preheader_crit_edge
  %max_pfn.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 100, i32 1
  %33 = ptrtoint ptr %max_pfn.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %max_pfn.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_vm_block_size to i32))
  %35 = load i32, ptr @radeon_vm_block_size, align 4
  %shr.i108 = lshr i32 %34, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i108)
  %cmp53109.not = icmp eq i32 %shr.i108, 0
  br i1 %cmp53109.not, label %for.cond51.preheader.for.end57_crit_edge, label %for.body54.lr.ph

for.cond51.preheader.for.end57_crit_edge:         ; preds = %for.cond51.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end57

for.body54.lr.ph:                                 ; preds = %for.cond51.preheader
  %page_tables = getelementptr inbounds %struct.radeon_vm, ptr %vm, i32 0, i32 8
  br label %for.body54

for.body41:                                       ; preds = %for.body41.for.body41_crit_edge, %for.end.for.body41_crit_edge
  %.pn.in107 = phi ptr [ %.pn, %for.body41.for.body41_crit_edge ], [ %32, %for.end.for.body41_crit_edge ]
  %bo_va.1 = getelementptr i8, ptr %.pn.in107, i32 -44
  %36 = ptrtoint ptr %.pn.in107 to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn = load ptr, ptr %.pn.in107, align 4
  %bo42 = getelementptr i8, ptr %.pn.in107, i32 12
  tail call void @radeon_bo_unref(ptr noundef %bo42) #11
  %last_pt_update43 = getelementptr i8, ptr %.pn.in107, i32 -32
  tail call void @radeon_fence_unref(ptr noundef %last_pt_update43) #11
  tail call void @kfree(ptr noundef %bo_va.1) #11
  %cmp40.not = icmp eq ptr %.pn, %freed
  br i1 %cmp40.not, label %for.body41.for.cond51.preheader_crit_edge, label %for.body41.for.body41_crit_edge

for.body41.for.body41_crit_edge:                  ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body41

for.body41.for.cond51.preheader_crit_edge:        ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond51.preheader

for.body54:                                       ; preds = %for.body54.for.body54_crit_edge, %for.body54.lr.ph
  %i.0110 = phi i32 [ 0, %for.body54.lr.ph ], [ %inc, %for.body54.for.body54_crit_edge ]
  %37 = ptrtoint ptr %page_tables to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %page_tables, align 8
  %arrayidx = getelementptr %struct.radeon_vm_pt, ptr %38, i32 %i.0110
  tail call void @radeon_bo_unref(ptr noundef %arrayidx) #11
  %inc = add nuw i32 %i.0110, 1
  %39 = ptrtoint ptr %max_pfn.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max_pfn.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_vm_block_size to i32))
  %41 = load i32, ptr @radeon_vm_block_size, align 4
  %shr.i = lshr i32 %40, %41
  %cmp53 = icmp ult i32 %inc, %shr.i
  br i1 %cmp53, label %for.body54.for.body54_crit_edge, label %for.body54.for.end57_crit_edge

for.body54.for.end57_crit_edge:                   ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end57

for.body54.for.body54_crit_edge:                  ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body54

for.end57:                                        ; preds = %for.body54.for.end57_crit_edge, %for.cond51.preheader.for.end57_crit_edge
  %page_tables58 = getelementptr inbounds %struct.radeon_vm, ptr %vm, i32 0, i32 8
  %42 = ptrtoint ptr %page_tables58 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %page_tables58, align 8
  tail call void @kfree(ptr noundef %43) #11
  %page_directory = getelementptr inbounds %struct.radeon_vm, ptr %vm, i32 0, i32 6
  tail call void @radeon_bo_unref(ptr noundef %page_directory) #11
  %flushed_updates = getelementptr %struct.radeon_vm, ptr %vm, i32 0, i32 10, i32 0, i32 2
  tail call void @radeon_fence_unref(ptr noundef %flushed_updates) #11
  %last_id_use = getelementptr %struct.radeon_vm, ptr %vm, i32 0, i32 10, i32 0, i32 3
  tail call void @radeon_fence_unref(ptr noundef %last_id_use) #11
  %flushed_updates.1 = getelementptr %struct.radeon_vm, ptr %vm, i32 0, i32 10, i32 1, i32 2
  tail call void @radeon_fence_unref(ptr noundef %flushed_updates.1) #11
  %last_id_use.1 = getelementptr %struct.radeon_vm, ptr %vm, i32 0, i32 10, i32 1, i32 3
  tail call void @radeon_fence_unref(ptr noundef %last_id_use.1) #11
  %flushed_updates.2 = getelementptr %struct.radeon_vm, ptr %vm, i32 0, i32 10, i32 2, i32 2
  tail call void @radeon_fence_unref(ptr noundef %flushed_updates.2) #11
  %last_id_use.2 = getelementptr %struct.radeon_vm, ptr %vm, i32 0, i32 10, i32 2, i32 3
  tail call void @radeon_fence_unref(ptr noundef %last_id_use.2) #11
  %flushed_updates.3 = getelementptr %struct.radeon_vm, ptr %vm, i32 0, i32 10, i32 3, i32 2
  tail call void @radeon_fence_unref(ptr noundef %flushed_updates.3) #11
  %last_id_use.3 = getelementptr %struct.radeon_vm, ptr %vm, i32 0, i32 10, i32 3, i32 3
  tail call void @radeon_fence_unref(ptr noundef %last_id_use.3) #11
  %flushed_updates.4 = getelementptr %struct.radeon_vm, ptr %vm, i32 0, i32 10, i32 4, i32 2
  tail call void @radeon_fence_unref(ptr noundef %flushed_updates.4) #11
  %last_id_use.4 = getelementptr %struct.radeon_vm, ptr %vm, i32 0, i32 10, i32 4, i32 3
  tail call void @radeon_fence_unref(ptr noundef %last_id_use.4) #11
  %flushed_updates.5 = getelementptr %struct.radeon_vm, ptr %vm, i32 0, i32 10, i32 5, i32 2
  tail call void @radeon_fence_unref(ptr noundef %flushed_updates.5) #11
  %last_id_use.5 = getelementptr %struct.radeon_vm, ptr %vm, i32 0, i32 10, i32 5, i32 3
  tail call void @radeon_fence_unref(ptr noundef %last_id_use.5) #11
  %flushed_updates.6 = getelementptr %struct.radeon_vm, ptr %vm, i32 0, i32 10, i32 6, i32 2
  tail call void @radeon_fence_unref(ptr noundef %flushed_updates.6) #11
  %last_id_use.6 = getelementptr %struct.radeon_vm, ptr %vm, i32 0, i32 10, i32 6, i32 3
  tail call void @radeon_fence_unref(ptr noundef %last_id_use.6) #11
  %flushed_updates.7 = getelementptr %struct.radeon_vm, ptr %vm, i32 0, i32 10, i32 7, i32 2
  tail call void @radeon_fence_unref(ptr noundef %flushed_updates.7) #11
  %last_id_use.7 = getelementptr %struct.radeon_vm, ptr %vm, i32 0, i32 10, i32 7, i32 3
  tail call void @radeon_fence_unref(ptr noundef %last_id_use.7) #11
  tail call void @mutex_destroy(ptr noundef %vm) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first_postorder(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next_postorder(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_radeon_vm_grab_id(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radeon_get_rdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_radeon_vm_flush(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_move_to_lru_tail(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_reset_shared_max(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_validate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_radeon_vm_set_page(i64 noundef %pe, i64 noundef %addr, i32 noundef %count, i32 noundef %incr, i32 noundef %flags) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_radeon_vm_set_page, i32 0, i32 1), ptr blockaddress(@trace_radeon_vm_set_page, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !70

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !67

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !82
  %call42 = tail call i32 @__traceiter_radeon_vm_set_page(ptr noundef null, i64 noundef %pe, i64 noundef %addr, i32 noundef %count, i32 noundef %incr, i32 noundef %flags) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !83
  %13 = tail call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !67

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !73
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_radeon_vm_set_page, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_radeon_vm_set_page, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_radeon_vm_set_page.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_radeon_vm_set_page.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 105, ptr noundef nonnull @.str.17) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !74
  %31 = tail call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_radeon_vm_set_page(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_radeon_vm_bo_update(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_resv_reserve_shared(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_vm_frag_ptes(ptr noundef %rdev, ptr noundef %ib, i64 noundef %pe_start, i64 noundef %pe_end, i64 noundef %addr, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %family, align 4
  %2 = and i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %2)
  %3 = icmp eq i32 %2, 50
  %4 = select i1 %3, i32 768, i32 512
  %5 = select i1 %3, i32 512, i32 128
  %6 = zext i32 %5 to i64
  %sub = add i64 %pe_start, -1
  %add = add i64 %sub, %6
  %neg = sub nsw i64 0, %6
  %and = and i64 %add, %neg
  %and16 = and i64 %neg, %pe_end
  %and17 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool.not = icmp ne i32 %and17, 0
  %7 = and i32 %flags, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %.not = icmp eq i32 %7, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and16, i64 %and)
  %cmp21.not = icmp ugt i64 %and16, %and
  %or.cond103 = select i1 %.not, i1 %cmp21.not, i1 false
  br i1 %or.cond103, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %sub23 = sub i64 %pe_end, %pe_start
  %div98 = lshr i64 %sub23, 3
  %conv24 = trunc i64 %div98 to i32
  tail call fastcc void @trace_radeon_vm_set_page(i64 noundef %pe_start, i64 noundef %addr, i32 noundef %conv24, i32 noundef 4096, i32 noundef %flags) #11
  %and.i = and i32 %flags, 99
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 99
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %gart.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43
  %8 = ptrtoint ptr %gart.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gart.i, align 8
  %conv.i = zext i32 %9 to i64
  %10 = lshr i64 %addr, 9
  %mul.i = and i64 %10, 36028797018963960
  %add.i = add nuw nsw i64 %mul.i, %conv.i
  %asic.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %11 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %asic.i, align 8
  %copy_pages.i = getelementptr inbounds %struct.radeon_asic, ptr %12, i32 0, i32 13, i32 2
  %13 = ptrtoint ptr %copy_pages.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %copy_pages.i, align 4
  tail call void %14(ptr noundef %rdev, ptr noundef %ib, i64 noundef %pe_start, i64 noundef %add.i, i32 noundef %conv24) #11
  br label %cleanup

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv24)
  %cmp2.i = icmp ult i32 %conv24, 3
  %or.cond.i = or i1 %cmp2.i, %tobool.not
  %asic5.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %15 = ptrtoint ptr %asic5.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %asic5.i, align 8
  br i1 %or.cond.i, label %if.then4.i, label %if.else7.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %write_pages.i = getelementptr inbounds %struct.radeon_asic, ptr %16, i32 0, i32 13, i32 3
  %17 = ptrtoint ptr %write_pages.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write_pages.i, align 4
  tail call void %18(ptr noundef %rdev, ptr noundef %ib, i64 noundef %pe_start, i64 noundef %addr, i32 noundef %conv24, i32 noundef 4096, i32 noundef %flags) #11
  br label %cleanup

if.else7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %set_pages.i = getelementptr inbounds %struct.radeon_asic, ptr %16, i32 0, i32 13, i32 4
  %19 = ptrtoint ptr %set_pages.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %set_pages.i, align 4
  tail call void %20(ptr noundef %rdev, ptr noundef %ib, i64 noundef %pe_start, i64 noundef %addr, i32 noundef %conv24, i32 noundef 4096, i32 noundef %flags) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp8(i64 %and, i64 %pe_start)
  %cmp25.not = icmp eq i64 %and, %pe_start
  br i1 %cmp25.not, label %if.end.if.end33_crit_edge, label %if.then27

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %.pre = and i32 %flags, 99
  br label %if.end33

if.then27:                                        ; preds = %if.end
  %sub28 = sub i64 %and, %pe_start
  %div29102 = lshr i64 %sub28, 3
  %conv30 = trunc i64 %div29102 to i32
  tail call fastcc void @trace_radeon_vm_set_page(i64 noundef %pe_start, i64 noundef %addr, i32 noundef %conv30, i32 noundef 4096, i32 noundef %flags) #11
  %and.i104 = and i32 %flags, 99
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %and.i104)
  %cmp.i105 = icmp eq i32 %and.i104, 99
  br i1 %cmp.i105, label %if.then.i112, label %if.else.i118

if.then.i112:                                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  %gart.i106 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43
  %21 = ptrtoint ptr %gart.i106 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %gart.i106, align 8
  %conv.i107 = zext i32 %22 to i64
  %23 = lshr i64 %addr, 9
  %mul.i108 = and i64 %23, 36028797018963960
  %add.i109 = add nuw nsw i64 %mul.i108, %conv.i107
  %asic.i110 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %24 = ptrtoint ptr %asic.i110 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %asic.i110, align 8
  %copy_pages.i111 = getelementptr inbounds %struct.radeon_asic, ptr %25, i32 0, i32 13, i32 2
  %26 = ptrtoint ptr %copy_pages.i111 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %copy_pages.i111, align 4
  tail call void %27(ptr noundef %rdev, ptr noundef %ib, i64 noundef %pe_start, i64 noundef %add.i109, i32 noundef %conv30) #11
  br label %radeon_vm_set_pages.exit123

if.else.i118:                                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv30)
  %cmp2.i115 = icmp ult i32 %conv30, 3
  %or.cond.i116 = or i1 %tobool.not, %cmp2.i115
  %asic5.i117 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %28 = ptrtoint ptr %asic5.i117 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %asic5.i117, align 8
  br i1 %or.cond.i116, label %if.then4.i120, label %if.else7.i122

if.then4.i120:                                    ; preds = %if.else.i118
  call void @__sanitizer_cov_trace_pc() #13
  %write_pages.i119 = getelementptr inbounds %struct.radeon_asic, ptr %29, i32 0, i32 13, i32 3
  %30 = ptrtoint ptr %write_pages.i119 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write_pages.i119, align 4
  tail call void %31(ptr noundef %rdev, ptr noundef %ib, i64 noundef %pe_start, i64 noundef %addr, i32 noundef %conv30, i32 noundef 4096, i32 noundef %flags) #11
  br label %radeon_vm_set_pages.exit123

if.else7.i122:                                    ; preds = %if.else.i118
  call void @__sanitizer_cov_trace_pc() #13
  %set_pages.i121 = getelementptr inbounds %struct.radeon_asic, ptr %29, i32 0, i32 13, i32 4
  %32 = ptrtoint ptr %set_pages.i121 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %set_pages.i121, align 4
  tail call void %33(ptr noundef %rdev, ptr noundef %ib, i64 noundef %pe_start, i64 noundef %addr, i32 noundef %conv30, i32 noundef 4096, i32 noundef %flags) #11
  br label %radeon_vm_set_pages.exit123

radeon_vm_set_pages.exit123:                      ; preds = %if.else7.i122, %if.then4.i120, %if.then.i112
  %mul = shl i32 %conv30, 12
  %conv31 = zext i32 %mul to i64
  %add32 = add i64 %conv31, %addr
  br label %if.end33

if.end33:                                         ; preds = %radeon_vm_set_pages.exit123, %if.end.if.end33_crit_edge
  %and.i124.pre-phi = phi i32 [ %.pre, %if.end.if.end33_crit_edge ], [ %and.i104, %radeon_vm_set_pages.exit123 ]
  %addr.addr.0 = phi i64 [ %addr, %if.end.if.end33_crit_edge ], [ %add32, %radeon_vm_set_pages.exit123 ]
  %sub34 = sub i64 %and16, %and
  %div3599 = lshr exact i64 %sub34, 3
  %conv36 = trunc i64 %div3599 to i32
  %or100 = or i32 %4, %flags
  tail call fastcc void @trace_radeon_vm_set_page(i64 noundef %and, i64 noundef %addr.addr.0, i32 noundef %conv36, i32 noundef 4096, i32 noundef %or100) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %and.i124.pre-phi)
  %cmp.i125 = icmp eq i32 %and.i124.pre-phi, 99
  br i1 %cmp.i125, label %if.then.i132, label %if.else.i138

if.then.i132:                                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %gart.i126 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43
  %34 = ptrtoint ptr %gart.i126 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %gart.i126, align 8
  %conv.i127 = zext i32 %35 to i64
  %36 = lshr i64 %addr.addr.0, 9
  %mul.i128 = and i64 %36, 36028797018963960
  %add.i129 = add nuw nsw i64 %mul.i128, %conv.i127
  %asic.i130 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %37 = ptrtoint ptr %asic.i130 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %asic.i130, align 8
  %copy_pages.i131 = getelementptr inbounds %struct.radeon_asic, ptr %38, i32 0, i32 13, i32 2
  %39 = ptrtoint ptr %copy_pages.i131 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %copy_pages.i131, align 4
  tail call void %40(ptr noundef %rdev, ptr noundef %ib, i64 noundef %and, i64 noundef %add.i129, i32 noundef %conv36) #11
  br label %radeon_vm_set_pages.exit143

if.else.i138:                                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv36)
  %cmp2.i135 = icmp ult i32 %conv36, 3
  %or.cond.i136 = or i1 %tobool.not, %cmp2.i135
  %asic5.i137 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %41 = ptrtoint ptr %asic5.i137 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %asic5.i137, align 8
  br i1 %or.cond.i136, label %if.then4.i140, label %if.else7.i142

if.then4.i140:                                    ; preds = %if.else.i138
  call void @__sanitizer_cov_trace_pc() #13
  %write_pages.i139 = getelementptr inbounds %struct.radeon_asic, ptr %42, i32 0, i32 13, i32 3
  %43 = ptrtoint ptr %write_pages.i139 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write_pages.i139, align 4
  tail call void %44(ptr noundef %rdev, ptr noundef %ib, i64 noundef %and, i64 noundef %addr.addr.0, i32 noundef %conv36, i32 noundef 4096, i32 noundef %or100) #11
  br label %radeon_vm_set_pages.exit143

if.else7.i142:                                    ; preds = %if.else.i138
  call void @__sanitizer_cov_trace_pc() #13
  %set_pages.i141 = getelementptr inbounds %struct.radeon_asic, ptr %42, i32 0, i32 13, i32 4
  %45 = ptrtoint ptr %set_pages.i141 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %set_pages.i141, align 4
  tail call void %46(ptr noundef %rdev, ptr noundef %ib, i64 noundef %and, i64 noundef %addr.addr.0, i32 noundef %conv36, i32 noundef 4096, i32 noundef %or100) #11
  br label %radeon_vm_set_pages.exit143

radeon_vm_set_pages.exit143:                      ; preds = %if.else7.i142, %if.then4.i140, %if.then.i132
  call void @__sanitizer_cov_trace_cmp8(i64 %and16, i64 %pe_end)
  %cmp39.not = icmp eq i64 %and16, %pe_end
  br i1 %cmp39.not, label %radeon_vm_set_pages.exit143.cleanup_crit_edge, label %if.then41

radeon_vm_set_pages.exit143.cleanup_crit_edge:    ; preds = %radeon_vm_set_pages.exit143
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then41:                                        ; preds = %radeon_vm_set_pages.exit143
  %mul42 = shl i32 %conv36, 12
  %conv43 = zext i32 %mul42 to i64
  %add44 = add i64 %addr.addr.0, %conv43
  %sub45 = sub i64 %pe_end, %and16
  %div46101 = lshr i64 %sub45, 3
  %conv47 = trunc i64 %div46101 to i32
  tail call fastcc void @trace_radeon_vm_set_page(i64 noundef %and16, i64 noundef %add44, i32 noundef %conv47, i32 noundef 4096, i32 noundef %flags) #11
  br i1 %cmp.i125, label %if.then.i152, label %if.else.i158

if.then.i152:                                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  %gart.i146 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43
  %47 = ptrtoint ptr %gart.i146 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %gart.i146, align 8
  %conv.i147 = zext i32 %48 to i64
  %49 = lshr i64 %add44, 9
  %mul.i148 = and i64 %49, 36028797018963960
  %add.i149 = add nuw nsw i64 %mul.i148, %conv.i147
  %asic.i150 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %50 = ptrtoint ptr %asic.i150 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %asic.i150, align 8
  %copy_pages.i151 = getelementptr inbounds %struct.radeon_asic, ptr %51, i32 0, i32 13, i32 2
  %52 = ptrtoint ptr %copy_pages.i151 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %copy_pages.i151, align 4
  tail call void %53(ptr noundef %rdev, ptr noundef %ib, i64 noundef %and16, i64 noundef %add.i149, i32 noundef %conv47) #11
  br label %cleanup

if.else.i158:                                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv47)
  %cmp2.i155 = icmp ult i32 %conv47, 3
  %or.cond.i156 = or i1 %tobool.not, %cmp2.i155
  %asic5.i157 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %54 = ptrtoint ptr %asic5.i157 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %asic5.i157, align 8
  br i1 %or.cond.i156, label %if.then4.i160, label %if.else7.i162

if.then4.i160:                                    ; preds = %if.else.i158
  call void @__sanitizer_cov_trace_pc() #13
  %write_pages.i159 = getelementptr inbounds %struct.radeon_asic, ptr %55, i32 0, i32 13, i32 3
  %56 = ptrtoint ptr %write_pages.i159 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write_pages.i159, align 4
  tail call void %57(ptr noundef %rdev, ptr noundef %ib, i64 noundef %and16, i64 noundef %add44, i32 noundef %conv47, i32 noundef 4096, i32 noundef %flags) #11
  br label %cleanup

if.else7.i162:                                    ; preds = %if.else.i158
  call void @__sanitizer_cov_trace_pc() #13
  %set_pages.i161 = getelementptr inbounds %struct.radeon_asic, ptr %55, i32 0, i32 13, i32 4
  %58 = ptrtoint ptr %set_pages.i161 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %set_pages.i161, align 4
  tail call void %59(ptr noundef %rdev, ptr noundef %ib, i64 noundef %and16, i64 noundef %add44, i32 noundef %conv47, i32 noundef 4096, i32 noundef %flags) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else7.i162, %if.then4.i160, %if.then.i152, %radeon_vm_set_pages.exit143.cleanup_crit_edge, %if.else7.i, %if.then4.i, %if.then.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock_interruptible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !20, !22, !23, !25, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !51, !52, !53}
!llvm.named.register.sp = !{!55}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/radeon_vm.c", i32 468, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @radeon_vm_bo_set_addr._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @radeon_vm_bo_set_addr._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/radeon/radeon_vm.c", i32 488, i32 4}
!10 = !{ptr @radeon_vm_bo_set_addr._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @radeon_vm_bo_set_addr._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/radeon/radeon_vm.c", i32 923, i32 3}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @radeon_vm_bo_update._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @radeon_vm_bo_update._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @radeon_vm_init.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/radeon/radeon_vm.c", i32 1186, i32 2}
!19 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @radeon_vm_init.__key.11, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/radeon/radeon_vm.c", i32 1188, i32 2}
!22 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/radeon/radeon_vm.c", i32 1200, i32 3}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/radeon/radeon_vm.c", i32 1235, i32 3}
!27 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @radeon_vm_fini._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @radeon_vm_fini._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/radeon/radeon_trace.h", i32 50, i32 1}
!32 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!34 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!37 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/radeon/radeon_trace.h", i32 107, i32 1}
!40 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/radeon/radeon_trace.h", i32 83, i32 1}
!43 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/radeon/radeon_trace.h", i32 65, i32 1}
!46 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/radeon/radeon_object.h", i32 71, i32 4}
!49 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @radeon_bo_reserve._entry, !48, !"_entry", i1 false, i1 false}
!52 = !{ptr @radeon_bo_reserve._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!53 = distinct !{null, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../include/drm/ttm/ttm_bo_driver.h", i32 140, i32 7}
!55 = !{!"sp"}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i8 0, i8 2}
!66 = !{!"branch_weights", i32 1, i32 2000}
!67 = !{!"branch_weights", i32 2000, i32 1}
!68 = !{i64 2157472289, i64 2157472785, i64 2157472326, i64 2157472382, i64 2157472416, i64 2157472440, i64 2157472481, i64 2157472502, i64 2157472530, i64 2157472564}
!69 = !{i64 2157902754, i64 2157903253, i64 2157902791, i64 2157902847, i64 2157902881, i64 2157902905, i64 2157902946, i64 2157902967, i64 2157902995, i64 2157903029}
!70 = !{i64 2149037605, i64 2149037610, i64 2149037623, i64 2149037667, i64 2149037701, i64 2149037722}
!71 = !{i64 2157743348}
!72 = !{i64 2157743565}
!73 = !{i64 2149603056}
!74 = !{i64 2149604092}
!75 = !{i64 2157798285}
!76 = !{i64 2157798512}
!77 = !{i64 2157914564, i64 2157915063, i64 2157914601, i64 2157914657, i64 2157914691, i64 2157914715, i64 2157914756, i64 2157914777, i64 2157914805, i64 2157914839}
!78 = !{!"auto-init"}
!79 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!80 = !{i64 2157759799}
!81 = !{i64 2157760010}
!82 = !{i64 2157777250}
!83 = !{i64 2157777505}
