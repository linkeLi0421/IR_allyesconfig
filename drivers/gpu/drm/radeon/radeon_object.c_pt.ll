; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/radeon_object.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/radeon_object.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%struct.atomic_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.radeon_device = type { ptr, ptr, ptr, ptr, %struct.rw_semaphore, %union.radeon_asic_config, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i16, ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.radeon_clock, %struct.radeon_mc, %struct.radeon_gart, %struct.radeon_mode_info, %struct.radeon_scratch, %struct.radeon_doorbell, %struct.radeon_mman, [8 x %struct.radeon_fence_driver], %struct.wait_queue_head, i64, %struct.mutex, [8 x %struct.radeon_ring], i8, %struct.radeon_sa_manager, %struct.radeon_irq, ptr, %struct.radeon_gem, %struct.radeon_pm, %struct.radeon_uvd, %struct.radeon_vce, [8 x i32], %struct.radeon_wb, %struct.radeon_dummy_page, i8, i8, i8, i8, i8, i8, [8 x %struct.radeon_surface_reg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.r600_vram_scratch, i32, %struct.r600_ih, %struct.radeon_rlc, %struct.radeon_mec, %struct.delayed_work, %struct.work_struct, %struct.work_struct, i32, %struct.mutex, i8, i8, %struct.r600_audio, %struct.notifier_block, ptr, ptr, [16 x ptr], %struct.radeon_vm_manager, %struct.mutex, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.radeon_atif, %struct.radeon_atcs, %struct.mutex, i32, i32, %struct.dev_pm_domain, i8, i32, i64, i64 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.radeon_atif = type { %struct.radeon_atif_notifications, %struct.radeon_atif_functions, %struct.radeon_atif_notification_cfg, ptr }
%struct.radeon_atif_notifications = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.radeon_atif_functions = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.radeon_atif_notification_cfg = type { i8, i32 }
%struct.radeon_atcs = type { %struct.radeon_atcs_functions }
%struct.radeon_atcs_functions = type { i8, i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.radeon_asic = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.96, %struct.anon.97, [8 x ptr], %struct.anon.98, %struct.anon.99, %struct.anon.100, %struct.anon.101, %struct.anon.102, %struct.anon.103, %struct.anon.104, %struct.anon.105 }
%struct.anon.96 = type { ptr, ptr, ptr }
%struct.anon.97 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.98 = type { ptr, ptr }
%struct.anon.99 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.100 = type { ptr, i32, ptr, i32, ptr, i32 }
%struct.anon.101 = type { ptr, ptr }
%struct.anon.102 = type { ptr, ptr, ptr, ptr }
%struct.anon.103 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.104 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.105 = type { ptr, ptr }
%struct.radeon_bo = type { %struct.list_head, i32, [4 x %struct.ttm_place], %struct.ttm_placement, %struct.ttm_buffer_object, %struct.ttm_bo_kmap_obj, i32, ptr, i32, i32, i32, i32, %struct.list_head, ptr, i32, %struct.mmu_interval_notifier }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }
%struct.mmu_interval_notifier = type { %struct.interval_tree_node, ptr, ptr, %struct.hlist_node, i32 }
%struct.interval_tree_node = type { %struct.rb_node, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ttm_resource = type { i32, i32, i32, i32, %struct.ttm_bus_placement }
%struct.ttm_bus_placement = type { ptr, i32, i8, i32 }
%struct.ttm_operation_ctx = type { i8, i8, i8, i8, i8, ptr, i64 }

@radeon_bo_pin_restricted.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/radeon/radeon_object.c\00", [57 x i8] zeroinitializer }, align 32
@radeon_bo_pin_restricted._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 346, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%p pin failed\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"radeon_bo_pin_restricted\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@radeon_bo_pin_restricted._entry_ptr = internal global ptr @radeon_bo_pin_restricted._entry, section ".printk_index", align 4
@radeon_bo_force_delete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 393, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Userspace still has active objects !\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"radeon_bo_force_delete\00", [41 x i8] zeroinitializer }, align 32
@radeon_bo_force_delete._entry_ptr = internal global ptr @radeon_bo_force_delete._entry, section ".printk_index", align 4
@radeon_bo_force_delete._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str, i32 397, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%p %p %lu %lu force free\0A\00", [38 x i8] zeroinitializer }, align 32
@radeon_bo_force_delete._entry_ptr.9 = internal global ptr @radeon_bo_force_delete._entry.7, section ".printk_index", align 4
@radeon_bo_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str, i32 419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016[drm] Detected VRAM RAM=%lluM, BAR=%lluM\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"radeon_bo_init\00", [17 x i8] zeroinitializer }, align 32
@radeon_bo_init._entry_ptr = internal global ptr @radeon_bo_init._entry, section ".printk_index", align 4
@radeon_bo_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str, i32 421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016[drm] RAM width %dbits %cDR\0A\00", [33 x i8] zeroinitializer }, align 32
@radeon_bo_init._entry_ptr.14 = internal global ptr @radeon_bo_init._entry.12, section ".printk_index", align 4
@__const.radeon_bo_list_validate.ctx = private unnamed_addr constant { i8, i8, i8, i8, i8, [3 x i8], ptr, [4 x i8], i64 } { i8 1, i8 0, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, ptr null, [4 x i8] zeroinitializer, i64 0 }, align 8
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"stealing surface reg %d from %p\0A\00", [63 x i8] zeroinitializer }, align 32
@radeon_ttm_bo_destroy.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__tracepoint_radeon_bo_create = external dso_local global %struct.tracepoint, align 4
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/radeon/radeon_trace.h\00", [58 x i8] zeroinitializer }, align 32
@trace_radeon_bo_create.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/drm/ttm/ttm_bo_api.h\00", [35 x i8] zeroinitializer }, align 32
@ttm_bo_pin.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ttm_bo_unpin.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ttm_bo_unpin.__already_done.20 = internal unnamed_addr global i1 false, section ".data.once", align 1
@radeon_bo_reserve._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.23, i32 71, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%p reserve failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"radeon_bo_reserve\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/radeon/radeon_object.h\00", [57 x i8] zeroinitializer }, align 32
@radeon_bo_reserve._entry_ptr = internal global ptr @radeon_bo_reserve._entry, section ".printk_index", align 4
@switch.table.radeon_bo_list_validate = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 2, i32 4], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.30 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.31 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.32 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967284]
@__sancov_gen_cov_switch_values.37 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294966784, i64 4294967280]
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 313, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 346, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 393, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 395, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 417, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 420, i32 2 }
@___asan_gen_.87 = private constant [42 x i8] c"../drivers/gpu/drm/radeon/radeon_object.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 595, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [41 x i8] c"../drivers/gpu/drm/radeon/radeon_trace.h\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 15, i32 1 }
@___asan_gen_.96 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 108, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [32 x i8] c"../include/drm/ttm/ttm_bo_api.h\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 551, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [42 x i8] c"../drivers/gpu/drm/radeon/radeon_object.h\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 71, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant [37 x i8] c"switch.table.radeon_bo_list_validate\00", align 1
@llvm.compiler.used = appending global [32 x ptr] [ptr @radeon_bo_force_delete._entry, ptr @radeon_bo_force_delete._entry.7, ptr @radeon_bo_force_delete._entry_ptr, ptr @radeon_bo_force_delete._entry_ptr.9, ptr @radeon_bo_init._entry, ptr @radeon_bo_init._entry.12, ptr @radeon_bo_init._entry_ptr, ptr @radeon_bo_init._entry_ptr.14, ptr @radeon_bo_pin_restricted._entry, ptr @radeon_bo_pin_restricted._entry_ptr, ptr @radeon_bo_reserve._entry, ptr @radeon_bo_reserve._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @switch.table.radeon_bo_list_validate], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_bo_pin_restricted._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_bo_force_delete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_bo_force_delete._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_bo_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_bo_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_bo_reserve._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.radeon_bo_list_validate to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @radeon_ttm_bo_is_radeon_bo(ptr nocapture noundef readonly %bo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %destroy = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 4
  %0 = ptrtoint ptr %destroy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %destroy, align 4
  %cmp = icmp eq ptr %1, @radeon_ttm_bo_destroy
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_ttm_bo_destroy(ptr noundef %tbo) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %tbo, i32 -96
  %rdev = getelementptr i8, ptr %tbo, i32 464
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 8
  %gem = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 57
  tail call void @mutex_lock_nested(ptr noundef %gem, i32 noundef 0) #11
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %add.ptr) #11
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr i8, ptr %tbo, i32 -92
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %add.ptr, ptr %add.ptr, align 4
  %prev.i3.i = getelementptr i8, ptr %tbo, i32 -92
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr, ptr %prev.i3.i, align 4
  %10 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rdev, align 8
  %gem2 = getelementptr inbounds %struct.radeon_device, ptr %11, i32 0, i32 57
  tail call void @mutex_unlock(ptr noundef %gem2) #11
  %surface_reg.i = getelementptr i8, ptr %tbo, i32 448
  %12 = ptrtoint ptr %surface_reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %surface_reg.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp.i = icmp eq i32 %13, -1
  br i1 %cmp.i, label %list_del_init.exit.radeon_bo_clear_surface_reg.exit_crit_edge, label %if.end.i

list_del_init.exit.radeon_bo_clear_surface_reg.exit_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_bo_clear_surface_reg.exit

if.end.i:                                         ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rdev, align 8
  %arrayidx.i = getelementptr %struct.radeon_device, ptr %15, i32 0, i32 70, i32 %13
  %asic.i = getelementptr inbounds %struct.radeon_device, ptr %15, i32 0, i32 56
  %16 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %asic.i, align 8
  %clear_reg.i = getelementptr inbounds %struct.radeon_asic, ptr %17, i32 0, i32 18, i32 1
  %18 = ptrtoint ptr %clear_reg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clear_reg.i, align 4
  tail call void %19(ptr noundef %15, i32 noundef %13) #11
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx.i, align 4
  %21 = ptrtoint ptr %surface_reg.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %surface_reg.i, align 8
  br label %radeon_bo_clear_surface_reg.exit

radeon_bo_clear_surface_reg.exit:                 ; preds = %if.end.i, %list_del_init.exit.radeon_bo_clear_surface_reg.exit_crit_edge
  %va = getelementptr i8, ptr %tbo, i32 456
  %22 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %va, align 4
  %cmp.i62.not = icmp eq ptr %23, %va
  br i1 %cmp.i62.not, label %radeon_bo_clear_surface_reg.exit.if.end33_crit_edge, label %land.rhs

radeon_bo_clear_surface_reg.exit.if.end33_crit_edge: ; preds = %radeon_bo_clear_surface_reg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

land.rhs:                                         ; preds = %radeon_bo_clear_surface_reg.exit
  %.b61 = load i1, ptr @radeon_ttm_bo_destroy.__already_done, align 1
  br i1 %.b61, label %land.rhs.if.end33_crit_edge, label %if.then, !prof !66

land.rhs.if.end33_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @radeon_ttm_bo_destroy.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 83, i32 noundef 9, ptr noundef null) #11
  br label %if.end33

if.end33:                                         ; preds = %if.then, %land.rhs.if.end33_crit_edge, %radeon_bo_clear_surface_reg.exit.if.end33_crit_edge
  %import_attach = getelementptr inbounds %struct.drm_gem_object, ptr %tbo, i32 0, i32 8
  %24 = ptrtoint ptr %import_attach to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %import_attach, align 4
  %tobool42.not = icmp eq ptr %25, null
  br i1 %tobool42.not, label %if.end33.if.end47_crit_edge, label %if.then43

if.end33.if.end47_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.then43:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %sg = getelementptr inbounds %struct.ttm_buffer_object, ptr %tbo, i32 0, i32 14
  %26 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sg, align 4
  tail call void @drm_prime_gem_destroy(ptr noundef %tbo, ptr noundef %27) #11
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %if.end33.if.end47_crit_edge
  tail call void @drm_gem_object_release(ptr noundef %tbo) #11
  tail call void @kfree(ptr noundef %add.ptr) #11
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_ttm_placement_from_domain(ptr noundef %rbo, i32 noundef %domain) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %placements = getelementptr inbounds %struct.radeon_bo, ptr %rbo, i32 0, i32 2
  %placement = getelementptr inbounds %struct.radeon_bo, ptr %rbo, i32 0, i32 3
  %placement1 = getelementptr inbounds %struct.radeon_bo, ptr %rbo, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %placement1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %placements, ptr %placement1, align 4
  %busy_placement = getelementptr inbounds %struct.radeon_bo, ptr %rbo, i32 0, i32 3, i32 3
  %1 = ptrtoint ptr %busy_placement to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %placements, ptr %busy_placement, align 4
  %and = and i32 %domain, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end29_crit_edge, label %if.then

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.radeon_bo, ptr %rbo, i32 0, i32 6
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and5 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %rdev = getelementptr inbounds %struct.radeon_bo, ptr %rbo, i32 0, i32 13
  %4 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rdev, align 8
  %visible_vram_size = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 42, i32 4
  %6 = ptrtoint ptr %visible_vram_size to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %visible_vram_size, align 8
  %real_vram_size = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 42, i32 11
  %8 = ptrtoint ptr %real_vram_size to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %real_vram_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %9)
  %cmp = icmp ult i64 %7, %9
  br i1 %cmp, label %if.then9, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %shr = lshr i64 %7, 12
  %conv = trunc i64 %shr to i32
  %10 = ptrtoint ptr %placements to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %placements, align 4
  %mem_type = getelementptr inbounds %struct.radeon_bo, ptr %rbo, i32 0, i32 2, i32 0, i32 2
  %11 = ptrtoint ptr %mem_type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %mem_type, align 4
  %flags18 = getelementptr inbounds %struct.radeon_bo, ptr %rbo, i32 0, i32 2, i32 0, i32 3
  %12 = ptrtoint ptr %flags18 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %flags18, align 4
  br label %if.end

if.end:                                           ; preds = %if.then9, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %c.0 = phi i32 [ 1, %if.then9 ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %if.then.if.end_crit_edge ]
  %arrayidx20 = getelementptr %struct.radeon_bo, ptr %rbo, i32 0, i32 2, i32 %c.0
  %13 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %arrayidx20, align 4
  %mem_type24 = getelementptr %struct.radeon_bo, ptr %rbo, i32 0, i32 2, i32 %c.0, i32 2
  %14 = ptrtoint ptr %mem_type24 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %mem_type24, align 4
  %inc26 = add nuw nsw i32 %c.0, 1
  %flags28 = getelementptr %struct.radeon_bo, ptr %rbo, i32 0, i32 2, i32 %c.0, i32 3
  %15 = ptrtoint ptr %flags28 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %flags28, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.end, %entry.if.end29_crit_edge
  %c.1 = phi i32 [ %inc26, %if.end ], [ 0, %entry.if.end29_crit_edge ]
  %and30 = and i32 %domain, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end29.if.end43_crit_edge, label %if.then32

if.end29.if.end43_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx34 = getelementptr %struct.radeon_bo, ptr %rbo, i32 0, i32 2, i32 %c.1
  %16 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %arrayidx34, align 4
  %mem_type38 = getelementptr %struct.radeon_bo, ptr %rbo, i32 0, i32 2, i32 %c.1, i32 2
  %17 = ptrtoint ptr %mem_type38 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %mem_type38, align 4
  %inc40 = add nuw nsw i32 %c.1, 1
  %flags42 = getelementptr %struct.radeon_bo, ptr %rbo, i32 0, i32 2, i32 %c.1, i32 3
  %18 = ptrtoint ptr %flags42 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %flags42, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then32, %if.end29.if.end43_crit_edge
  %c.2 = phi i32 [ %inc40, %if.then32 ], [ %c.1, %if.end29.if.end43_crit_edge ]
  %and44 = and i32 %domain, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end57, label %if.end57.thread

if.end57.thread:                                  ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx48 = getelementptr %struct.radeon_bo, ptr %rbo, i32 0, i32 2, i32 %c.2
  %19 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %arrayidx48, align 4
  %mem_type52 = getelementptr %struct.radeon_bo, ptr %rbo, i32 0, i32 2, i32 %c.2, i32 2
  %20 = ptrtoint ptr %mem_type52 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %mem_type52, align 4
  %inc54 = add nuw nsw i32 %c.2, 1
  br label %for.body.lr.ph.sink.split

if.end57:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.2)
  %tobool58.not = icmp eq i32 %c.2, 0
  br i1 %tobool58.not, label %if.then59, label %if.end57.for.body.lr.ph_crit_edge

if.end57.for.body.lr.ph_crit_edge:                ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.lr.ph

if.then59:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %placements to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %placements, align 4
  %mem_type65 = getelementptr inbounds %struct.radeon_bo, ptr %rbo, i32 0, i32 2, i32 0, i32 2
  %22 = ptrtoint ptr %mem_type65 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %mem_type65, align 4
  br label %for.body.lr.ph.sink.split

for.body.lr.ph.sink.split:                        ; preds = %if.then59, %if.end57.thread
  %c.2.sink = phi i32 [ %c.2, %if.end57.thread ], [ 0, %if.then59 ]
  %c.4.ph = phi i32 [ %inc54, %if.end57.thread ], [ 1, %if.then59 ]
  %flags56 = getelementptr %struct.radeon_bo, ptr %rbo, i32 0, i32 2, i32 %c.2.sink, i32 3
  %23 = ptrtoint ptr %flags56 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %flags56, align 4
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.body.lr.ph.sink.split, %if.end57.for.body.lr.ph_crit_edge
  %c.4 = phi i32 [ %c.2, %if.end57.for.body.lr.ph_crit_edge ], [ %c.4.ph, %for.body.lr.ph.sink.split ]
  %24 = ptrtoint ptr %placement to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %c.4, ptr %placement, align 4
  %num_busy_placement = getelementptr inbounds %struct.radeon_bo, ptr %rbo, i32 0, i32 3, i32 2
  %25 = ptrtoint ptr %num_busy_placement to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %c.4, ptr %num_busy_placement, align 4
  %flags75 = getelementptr inbounds %struct.radeon_bo, ptr %rbo, i32 0, i32 6
  %rdev90 = getelementptr inbounds %struct.radeon_bo, ptr %rbo, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0160 = phi i32 [ 0, %for.body.lr.ph ], [ %inc101, %for.inc.for.body_crit_edge ]
  %26 = ptrtoint ptr %flags75 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags75, align 8
  %and76 = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %for.body.for.inc_crit_edge, label %land.lhs.true78

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true78:                                  ; preds = %for.body
  %mem_type81 = getelementptr %struct.radeon_bo, ptr %rbo, i32 0, i32 2, i32 %i.0160, i32 2
  %28 = ptrtoint ptr %mem_type81 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mem_type81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp82 = icmp eq i32 %29, 2
  br i1 %cmp82, label %land.lhs.true84, label %land.lhs.true78.for.inc_crit_edge

land.lhs.true78.for.inc_crit_edge:                ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true84:                                  ; preds = %land.lhs.true78
  %arrayidx80 = getelementptr %struct.radeon_bo, ptr %rbo, i32 0, i32 2, i32 %i.0160
  %30 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool88.not = icmp eq i32 %31, 0
  br i1 %tobool88.not, label %if.then89, label %land.lhs.true84.for.inc_crit_edge

land.lhs.true84.for.inc_crit_edge:                ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then89:                                        ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %rdev90 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rdev90, align 8
  %visible_vram_size92 = getelementptr inbounds %struct.radeon_device, ptr %33, i32 0, i32 42, i32 4
  %34 = ptrtoint ptr %visible_vram_size92 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %visible_vram_size92, align 8
  %shr93 = lshr i64 %35, 12
  %conv94 = trunc i64 %shr93 to i32
  br label %for.inc

for.inc:                                          ; preds = %if.then89, %land.lhs.true84.for.inc_crit_edge, %land.lhs.true78.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %conv94.sink = phi i32 [ %conv94, %if.then89 ], [ 0, %land.lhs.true84.for.inc_crit_edge ], [ 0, %land.lhs.true78.for.inc_crit_edge ], [ 0, %for.body.for.inc_crit_edge ]
  %lpfn = getelementptr %struct.radeon_bo, ptr %rbo, i32 0, i32 2, i32 %i.0160, i32 1
  %36 = ptrtoint ptr %lpfn to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv94.sink, ptr %lpfn, align 4
  %inc101 = add nuw nsw i32 %i.0160, 1
  %exitcond.not = icmp eq i32 %inc101, %c.4
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_bo_create(ptr noundef %rdev, i32 noundef %size, i32 noundef %byte_align, i1 noundef zeroext %kernel, i32 noundef %domain, i32 noundef %flags, ptr noundef %sg, ptr noundef %resv, ptr nocapture noundef writeonly %bo_ptr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %byte_align, 4095
  %shr = lshr i32 %add, 12
  %add1 = add i32 %size, 4095
  %and = and i32 %add1, -4096
  %tobool2.not = icmp eq ptr %sg, null
  %. = select i1 %tobool2.not, i32 0, i32 2
  %type.0 = select i1 %kernel, i32 1, i32 %.
  %0 = ptrtoint ptr %bo_ptr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %bo_ptr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 616) #14
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %entry
  %ddev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %2 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddev, align 4
  %tbo = getelementptr inbounds %struct.radeon_bo, ptr %call7.i.i, i32 0, i32 4
  tail call void @drm_gem_private_object_init(ptr noundef %3, ptr noundef %tbo, i32 noundef %and) #11
  %rdev8 = getelementptr inbounds %struct.radeon_bo, ptr %call7.i.i, i32 0, i32 13
  %4 = ptrtoint ptr %rdev8 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %rdev, ptr %rdev8, align 8
  %surface_reg = getelementptr inbounds %struct.radeon_bo, ptr %call7.i.i, i32 0, i32 10
  %5 = ptrtoint ptr %surface_reg to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %surface_reg, align 8
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %va = getelementptr inbounds %struct.radeon_bo, ptr %call7.i.i, i32 0, i32 12
  %8 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %va, ptr %va, align 8
  %prev.i76 = getelementptr inbounds %struct.radeon_bo, ptr %call7.i.i, i32 0, i32 12, i32 1
  %9 = ptrtoint ptr %prev.i76 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %va, ptr %prev.i76, align 4
  %and9 = and i32 %domain, 7
  %initial_domain = getelementptr inbounds %struct.radeon_bo, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %initial_domain to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and9, ptr %initial_domain, align 8
  %flags10 = getelementptr inbounds %struct.radeon_bo, ptr %call7.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %flags10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %flags, ptr %flags10, align 8
  %flags11 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %12 = ptrtoint ptr %flags11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags11, align 8
  %and12 = and i32 %13, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.then14, label %if.end7.if.end17_crit_edge

if.end7.if.end17_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then14:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %and16 = and i32 %flags, -7
  %14 = ptrtoint ptr %flags10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and16, ptr %flags10, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end7.if.end17_crit_edge
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %15 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %family, align 4
  %17 = add i32 %16, -28
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %17)
  %18 = icmp ult i32 %17, 5
  br i1 %18, label %if.then21, label %if.end17.if.end24_crit_edge

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags10, align 8
  %and23 = and i32 %20, -7
  store i32 %and23, ptr %flags10, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end17.if.end24_crit_edge
  %21 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags10, align 8
  %and28 = and i32 %22, -5
  store i32 %and28, ptr %flags10, align 8
  tail call void @radeon_ttm_placement_from_domain(ptr noundef nonnull %call7.i.i, i32 noundef %domain)
  %mclk_lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 1
  tail call void @down_read(ptr noundef %mclk_lock) #11
  %mman = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 47
  %placement = getelementptr inbounds %struct.radeon_bo, ptr %call7.i.i, i32 0, i32 3
  %lnot = xor i1 %kernel, true
  %call32 = tail call i32 @ttm_bo_init(ptr noundef %mman, ptr noundef %tbo, i32 noundef %and, i32 noundef %type.0, ptr noundef %placement, i32 noundef %shr, i1 noundef zeroext %lnot, ptr noundef %sg, ptr noundef %resv, ptr noundef nonnull @radeon_ttm_bo_destroy) #11
  tail call void @up_read(ptr noundef %mclk_lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp35.not = icmp eq i32 %call32, 0
  br i1 %cmp35.not, label %if.end40, label %if.end24.cleanup_crit_edge, !prof !66

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end40:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %bo_ptr to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i, ptr %bo_ptr, align 4
  tail call fastcc void @trace_radeon_bo_create(ptr noundef nonnull %call7.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.end24.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end40 ], [ -12, %entry.cleanup_crit_edge ], [ %call32, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_private_object_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_radeon_bo_create(ptr noundef %bo) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_radeon_bo_create, i32 0, i32 1), ptr blockaddress(@trace_radeon_bo_create, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !67

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !56) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !66

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
  %9 = tail call i32 @llvm.read_register.i32(metadata !56) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !68
  %call42 = tail call i32 @__traceiter_radeon_bo_create(ptr noundef null, ptr noundef %bo) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !69
  %13 = tail call i32 @llvm.read_register.i32(metadata !56) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !56) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !66

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
  %26 = tail call i32 @llvm.read_register.i32(metadata !56) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_radeon_bo_create, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_radeon_bo_create, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_radeon_bo_create.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_radeon_bo_create.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 28, ptr noundef nonnull @.str.17) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !71
  %31 = tail call i32 @llvm.read_register.i32(metadata !56) #11
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
define dso_local i32 @radeon_bo_kmap(ptr noundef %bo, ptr noundef writeonly %ptr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %kptr = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 7
  %0 = ptrtoint ptr %kptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kptr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %tobool1.not = icmp eq ptr %ptr, null
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %if.then2

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %ptr, align 4
  br label %cleanup

if.end4:                                          ; preds = %entry
  %tbo = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4
  %resource = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 6
  %3 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %resource, align 4
  %num_pages = getelementptr inbounds %struct.ttm_resource, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_pages, align 4
  %kmap = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 5
  %call = tail call i32 @ttm_bo_kmap(ptr noundef %tbo, i32 noundef 0, i32 noundef %6, ptr noundef %kmap) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %7 = ptrtoint ptr %kmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %kmap, align 4
  %9 = ptrtoint ptr %kptr to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %kptr, align 4
  %tobool12.not = icmp eq ptr %ptr, null
  br i1 %tobool12.not, label %if.end8.if.end15_crit_edge, label %if.then13

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %ptr, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end8.if.end15_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %11 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool2.not.i = icmp eq i32 %11, 0
  br i1 %tobool2.not.i, label %if.end15.if.end28.i_crit_edge, label %land.rhs.i

if.end15.if.end28.i_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i

land.rhs.i:                                       ; preds = %if.end15
  %resv.i = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 0, i32 9
  %12 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %resv.i, align 8
  %dep_map.i = getelementptr inbounds %struct.mutex, ptr %13, i32 0, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end28.i_crit_edge, !prof !72

land.rhs.i.if.end28.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 702, i32 noundef 9, ptr noundef null) #11
  br label %if.end28.i

if.end28.i:                                       ; preds = %do.end.i, %land.rhs.i.if.end28.i_crit_edge, %if.end15.if.end28.i_crit_edge
  %tiling_flags.i = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 8
  %14 = ptrtoint ptr %tiling_flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tiling_flags.i, align 8
  %and.i = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool29.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool29.not.i, label %if.end28.i.cleanup_crit_edge, label %if.end34.i

if.end28.i.cleanup_crit_edge:                     ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end34.i:                                       ; preds = %if.end28.i
  %16 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %resource, align 4
  %mem_type.i = getelementptr inbounds %struct.ttm_resource, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %mem_type.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mem_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp36.not.i = icmp eq i32 %19, 2
  br i1 %cmp36.not.i, label %if.end44.i, label %if.end34.i.cleanup_crit_edge

if.end34.i.cleanup_crit_edge:                     ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end44.i:                                       ; preds = %if.end34.i
  %surface_reg45.i = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 10
  %20 = ptrtoint ptr %surface_reg45.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %surface_reg45.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp46.i = icmp slt i32 %21, 0
  br i1 %cmp46.i, label %if.end49.i, label %if.end44.i.cleanup_crit_edge

if.end44.i.cleanup_crit_edge:                     ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end49.i:                                       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #13
  %call50.i = tail call i32 @radeon_bo_get_surface_reg(ptr noundef %bo) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end49.i, %if.end44.i.cleanup_crit_edge, %if.end34.i.cleanup_crit_edge, %if.end28.i.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.then2, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 0, %if.then.cleanup_crit_edge ], [ %call, %if.end4.cleanup_crit_edge ], [ 0, %if.end34.i.cleanup_crit_edge ], [ 0, %if.end28.i.cleanup_crit_edge ], [ 0, %if.end44.i.cleanup_crit_edge ], [ 0, %if.end49.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_kmap(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_bo_check_tiling(ptr noundef %bo, i1 noundef zeroext %has_moved, i1 noundef zeroext %force_drop) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %force_drop, label %if.end28.thread, label %do.body

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool2.not = icmp eq i32 %0, 0
  br i1 %tobool2.not, label %do.body.if.end28_crit_edge, label %land.rhs

do.body.if.end28_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

land.rhs:                                         ; preds = %do.body
  %resv = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 0, i32 9
  %1 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %resv, align 8
  %dep_map = getelementptr inbounds %struct.mutex, ptr %2, i32 0, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end28_crit_edge, !prof !72

land.rhs.if.end28_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 702, i32 noundef 9, ptr noundef null) #11
  br label %if.end28

if.end28:                                         ; preds = %do.end, %land.rhs.if.end28_crit_edge, %do.body.if.end28_crit_edge
  %tiling_flags = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 8
  %3 = ptrtoint ptr %tiling_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tiling_flags, align 8
  %and = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %if.end28.return_crit_edge, label %if.end34

if.end28.return_crit_edge:                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end28.thread:                                  ; preds = %entry
  %tiling_flags69 = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 8
  %5 = ptrtoint ptr %tiling_flags69 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tiling_flags69, align 8
  %and70 = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool29.not71 = icmp eq i32 %and70, 0
  br i1 %tobool29.not71, label %if.end28.thread.return_crit_edge, label %if.then33

if.end28.thread.return_crit_edge:                 ; preds = %if.end28.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then33:                                        ; preds = %if.end28.thread
  %surface_reg.i = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 10
  %7 = ptrtoint ptr %surface_reg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %surface_reg.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp.i = icmp eq i32 %8, -1
  br i1 %cmp.i, label %if.then33.return_crit_edge, label %if.end.i

if.then33.return_crit_edge:                       ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end.i:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  %rdev1.i = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 13
  %9 = ptrtoint ptr %rdev1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rdev1.i, align 8
  %arrayidx.i = getelementptr %struct.radeon_device, ptr %10, i32 0, i32 70, i32 %8
  %asic.i = getelementptr inbounds %struct.radeon_device, ptr %10, i32 0, i32 56
  %11 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %asic.i, align 8
  %clear_reg.i = getelementptr inbounds %struct.radeon_asic, ptr %12, i32 0, i32 18, i32 1
  %13 = ptrtoint ptr %clear_reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clear_reg.i, align 4
  tail call void %14(ptr noundef %10, i32 noundef %8) #11
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %arrayidx.i, align 4
  %16 = ptrtoint ptr %surface_reg.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %surface_reg.i, align 8
  br label %return

if.end34:                                         ; preds = %if.end28
  %resource = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 6
  %17 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %resource, align 4
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mem_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp36.not = icmp eq i32 %20, 2
  br i1 %cmp36.not, label %if.end44, label %if.then37

if.then37:                                        ; preds = %if.end34
  br i1 %has_moved, label %if.end40, label %if.then37.return_crit_edge

if.then37.return_crit_edge:                       ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end40:                                         ; preds = %if.then37
  %surface_reg = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 10
  %21 = ptrtoint ptr %surface_reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %surface_reg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp41 = icmp sgt i32 %22, -1
  br i1 %cmp41, label %radeon_bo_clear_surface_reg.exit68, label %if.end40.return_crit_edge

if.end40.return_crit_edge:                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

radeon_bo_clear_surface_reg.exit68:               ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  %rdev1.i63 = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 13
  %23 = ptrtoint ptr %rdev1.i63 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rdev1.i63, align 8
  %arrayidx.i64 = getelementptr %struct.radeon_device, ptr %24, i32 0, i32 70, i32 %22
  %asic.i65 = getelementptr inbounds %struct.radeon_device, ptr %24, i32 0, i32 56
  %25 = ptrtoint ptr %asic.i65 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %asic.i65, align 8
  %clear_reg.i66 = getelementptr inbounds %struct.radeon_asic, ptr %26, i32 0, i32 18, i32 1
  %27 = ptrtoint ptr %clear_reg.i66 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clear_reg.i66, align 4
  tail call void %28(ptr noundef %24, i32 noundef %22) #11
  %29 = ptrtoint ptr %arrayidx.i64 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %arrayidx.i64, align 4
  %30 = ptrtoint ptr %surface_reg to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %surface_reg, align 8
  br label %return

if.end44:                                         ; preds = %if.end34
  %surface_reg45 = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 10
  %31 = ptrtoint ptr %surface_reg45 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %surface_reg45, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp46 = icmp slt i32 %32, 0
  %brmerge = or i1 %cmp46, %has_moved
  br i1 %brmerge, label %if.end49, label %if.end44.return_crit_edge

if.end44.return_crit_edge:                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end49:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  %call50 = tail call i32 @radeon_bo_get_surface_reg(ptr noundef %bo)
  br label %return

return:                                           ; preds = %if.end49, %if.end44.return_crit_edge, %radeon_bo_clear_surface_reg.exit68, %if.end40.return_crit_edge, %if.then37.return_crit_edge, %if.end.i, %if.then33.return_crit_edge, %if.end28.thread.return_crit_edge, %if.end28.return_crit_edge
  %retval.0 = phi i32 [ %call50, %if.end49 ], [ 0, %if.end28.return_crit_edge ], [ 0, %if.then37.return_crit_edge ], [ 0, %radeon_bo_clear_surface_reg.exit68 ], [ 0, %if.end40.return_crit_edge ], [ 0, %if.end44.return_crit_edge ], [ 0, %if.end28.thread.return_crit_edge ], [ 0, %if.then33.return_crit_edge ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_bo_kunmap(ptr noundef %bo) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %kptr = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 7
  %0 = ptrtoint ptr %kptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kptr, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %kptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %kptr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %3 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not.i = icmp eq i32 %3, 0
  br i1 %tobool2.not.i, label %if.end.if.end28.i_crit_edge, label %land.rhs.i

if.end.if.end28.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i

land.rhs.i:                                       ; preds = %if.end
  %resv.i = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 0, i32 9
  %4 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resv.i, align 8
  %dep_map.i = getelementptr inbounds %struct.mutex, ptr %5, i32 0, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end28.i_crit_edge, !prof !72

land.rhs.i.if.end28.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 702, i32 noundef 9, ptr noundef null) #11
  br label %if.end28.i

if.end28.i:                                       ; preds = %do.end.i, %land.rhs.i.if.end28.i_crit_edge, %if.end.if.end28.i_crit_edge
  %tiling_flags.i = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 8
  %6 = ptrtoint ptr %tiling_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tiling_flags.i, align 8
  %and.i = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool29.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool29.not.i, label %if.end28.i.radeon_bo_check_tiling.exit_crit_edge, label %if.end34.i

if.end28.i.radeon_bo_check_tiling.exit_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_bo_check_tiling.exit

if.end34.i:                                       ; preds = %if.end28.i
  %resource.i = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 6
  %8 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resource.i, align 4
  %mem_type.i = getelementptr inbounds %struct.ttm_resource, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %mem_type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mem_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp36.not.i = icmp eq i32 %11, 2
  br i1 %cmp36.not.i, label %if.end44.i, label %if.end34.i.radeon_bo_check_tiling.exit_crit_edge

if.end34.i.radeon_bo_check_tiling.exit_crit_edge: ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_bo_check_tiling.exit

if.end44.i:                                       ; preds = %if.end34.i
  %surface_reg45.i = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 10
  %12 = ptrtoint ptr %surface_reg45.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %surface_reg45.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp46.i = icmp slt i32 %13, 0
  br i1 %cmp46.i, label %if.end49.i, label %if.end44.i.radeon_bo_check_tiling.exit_crit_edge

if.end44.i.radeon_bo_check_tiling.exit_crit_edge: ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_bo_check_tiling.exit

if.end49.i:                                       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #13
  %call50.i = tail call i32 @radeon_bo_get_surface_reg(ptr noundef %bo) #11
  br label %radeon_bo_check_tiling.exit

radeon_bo_check_tiling.exit:                      ; preds = %if.end49.i, %if.end44.i.radeon_bo_check_tiling.exit_crit_edge, %if.end34.i.radeon_bo_check_tiling.exit_crit_edge, %if.end28.i.radeon_bo_check_tiling.exit_crit_edge
  %kmap = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 5
  tail call void @ttm_bo_kunmap(ptr noundef %kmap) #11
  br label %return

return:                                           ; preds = %radeon_bo_check_tiling.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_kunmap(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @radeon_bo_ref(ptr noundef %bo) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %bo, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %kref.i = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #11, !srcloc !73
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !72

if.end.if.end15.sink.split.i.i.i.i.i_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.return_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !66

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.return_crit_edge:               ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #11
  br label %return

return:                                           ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.return_crit_edge, %entry.return_crit_edge
  ret ptr %bo
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_bo_unref(ptr nocapture noundef %bo) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bo, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %tbo1 = getelementptr inbounds %struct.radeon_bo, ptr %1, i32 0, i32 4
  tail call void @ttm_bo_put(ptr noundef %tbo1) #11
  %2 = ptrtoint ptr %bo to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %bo, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_bo_pin_restricted(ptr noundef %bo, i32 noundef %domain, i64 noundef %max_offset, ptr noundef writeonly %gpu_addr) local_unnamed_addr #1 align 64 {
entry:
  %ctx = alloca %struct.ttm_operation_ctx, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ctx) #11
  %0 = call ptr @memset(ptr %ctx, i32 0, i32 24)
  %rdev = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 13
  %1 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rdev, align 8
  %tbo = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4
  %ttm = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 7
  %3 = ptrtoint ptr %ttm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ttm, align 8
  %call = tail call zeroext i1 @radeon_ttm_tt_has_userptr(ptr noundef %2, ptr noundef %4) #11
  br i1 %call, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %pin_count = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 13
  %5 = ptrtoint ptr %pin_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pin_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end55, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %7 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.then2.if.end.i_crit_edge, label %land.rhs.i

if.then2.if.end.i_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.then2
  %resv.i = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 0, i32 9
  %8 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resv.i, align 8
  %dep_map.i = getelementptr inbounds %struct.mutex, ptr %9, i32 0, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !72

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 551, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.then2.if.end.i_crit_edge
  %kref.i = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 5
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref.i, i32 noundef 4) #11
  %10 = ptrtoint ptr %kref.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %kref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool26.not.i = icmp eq i32 %11, 0
  br i1 %tobool26.not.i, label %land.rhs34.i, label %if.end.i.ttm_bo_pin.exit_crit_edge

if.end.i.ttm_bo_pin.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ttm_bo_pin.exit

land.rhs34.i:                                     ; preds = %if.end.i
  %.b85.i = load i1, ptr @ttm_bo_pin.__already_done, align 1
  br i1 %.b85.i, label %land.rhs34.i.ttm_bo_pin.exit_crit_edge, label %if.then45.i, !prof !66

land.rhs34.i.ttm_bo_pin.exit_crit_edge:           ; preds = %land.rhs34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ttm_bo_pin.exit

if.then45.i:                                      ; preds = %land.rhs34.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ttm_bo_pin.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 552, i32 noundef 9, ptr noundef null) #11
  br label %ttm_bo_pin.exit

ttm_bo_pin.exit:                                  ; preds = %if.then45.i, %land.rhs34.i.ttm_bo_pin.exit_crit_edge, %if.end.i.ttm_bo_pin.exit_crit_edge
  %12 = ptrtoint ptr %pin_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pin_count, align 8
  %inc.i = add i32 %13, 1
  store i32 %inc.i, ptr %pin_count, align 8
  %tobool4.not = icmp eq ptr %gpu_addr, null
  br i1 %tobool4.not, label %ttm_bo_pin.exit.if.end7_crit_edge, label %if.then5

ttm_bo_pin.exit.if.end7_crit_edge:                ; preds = %ttm_bo_pin.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then5:                                         ; preds = %ttm_bo_pin.exit
  %bdev.i = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bdev.i, align 8
  %call.i = tail call ptr @radeon_get_rdev(ptr noundef %15) #11
  %resource.i = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 6
  %16 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %resource.i, align 4
  %mem_type.i = getelementptr inbounds %struct.ttm_resource, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %mem_type.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mem_type.i, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %19, label %if.then5.radeon_bo_gpu_offset.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb2.i
  ]

if.then5.radeon_bo_gpu_offset.exit_crit_edge:     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_bo_gpu_offset.exit

sw.bb.i:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  %gtt_start.i = getelementptr inbounds %struct.radeon_device, ptr %call.i, i32 0, i32 42, i32 6
  br label %sw.epilog.sink.split.i

sw.bb2.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  %vram_start.i = getelementptr inbounds %struct.radeon_device, ptr %call.i, i32 0, i32 42, i32 8
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb2.i, %sw.bb.i
  %vram_start.sink.i = phi ptr [ %vram_start.i, %sw.bb2.i ], [ %gtt_start.i, %sw.bb.i ]
  %21 = ptrtoint ptr %vram_start.sink.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %vram_start.sink.i, align 8
  br label %radeon_bo_gpu_offset.exit

radeon_bo_gpu_offset.exit:                        ; preds = %sw.epilog.sink.split.i, %if.then5.radeon_bo_gpu_offset.exit_crit_edge
  %start.0.i = phi i64 [ 0, %if.then5.radeon_bo_gpu_offset.exit_crit_edge ], [ %22, %sw.epilog.sink.split.i ]
  %23 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %17, align 4
  %shl.i = shl i32 %24, 12
  %conv.i = zext i32 %shl.i to i64
  %add.i = add i64 %start.0.i, %conv.i
  %25 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %add.i, ptr %gpu_addr, align 8
  br label %if.end7

if.end7:                                          ; preds = %radeon_bo_gpu_offset.exit, %ttm_bo_pin.exit.if.end7_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %max_offset)
  %cmp.not = icmp eq i64 %max_offset, 0
  br i1 %cmp.not, label %if.end7.cleanup_crit_edge, label %if.then8

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then8:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %domain)
  %cmp9 = icmp eq i32 %domain, 4
  %26 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rdev, align 8
  %vram_start = getelementptr inbounds %struct.radeon_device, ptr %27, i32 0, i32 42, i32 8
  %gtt_start = getelementptr inbounds %struct.radeon_device, ptr %27, i32 0, i32 42, i32 6
  %domain_start.0.in = select i1 %cmp9, ptr %vram_start, ptr %gtt_start
  %28 = ptrtoint ptr %domain_start.0.in to i32
  call void @__asan_load8_noabort(i32 %28)
  %domain_start.0 = load i64, ptr %domain_start.0.in, align 8
  %bdev.i164 = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %bdev.i164 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bdev.i164, align 8
  %call.i165 = tail call ptr @radeon_get_rdev(ptr noundef %30) #11
  %resource.i166 = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 6
  %31 = ptrtoint ptr %resource.i166 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %resource.i166, align 4
  %mem_type.i167 = getelementptr inbounds %struct.ttm_resource, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %mem_type.i167 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mem_type.i167, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %34, label %if.then8.radeon_bo_gpu_offset.exit178_crit_edge [
    i32 1, label %sw.bb.i169
    i32 2, label %sw.bb2.i171
  ]

if.then8.radeon_bo_gpu_offset.exit178_crit_edge:  ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_bo_gpu_offset.exit178

sw.bb.i169:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %gtt_start.i168 = getelementptr inbounds %struct.radeon_device, ptr %call.i165, i32 0, i32 42, i32 6
  br label %sw.epilog.sink.split.i173

sw.bb2.i171:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %vram_start.i170 = getelementptr inbounds %struct.radeon_device, ptr %call.i165, i32 0, i32 42, i32 8
  br label %sw.epilog.sink.split.i173

sw.epilog.sink.split.i173:                        ; preds = %sw.bb2.i171, %sw.bb.i169
  %vram_start.sink.i172 = phi ptr [ %vram_start.i170, %sw.bb2.i171 ], [ %gtt_start.i168, %sw.bb.i169 ]
  %36 = ptrtoint ptr %vram_start.sink.i172 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %vram_start.sink.i172, align 8
  br label %radeon_bo_gpu_offset.exit178

radeon_bo_gpu_offset.exit178:                     ; preds = %sw.epilog.sink.split.i173, %if.then8.radeon_bo_gpu_offset.exit178_crit_edge
  %start.0.i174 = phi i64 [ 0, %if.then8.radeon_bo_gpu_offset.exit178_crit_edge ], [ %37, %sw.epilog.sink.split.i173 ]
  %38 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %32, align 4
  %shl.i175 = shl i32 %39, 12
  %conv.i176 = zext i32 %shl.i175 to i64
  %add.i177 = sub i64 %start.0.i174, %domain_start.0
  %sub = add i64 %add.i177, %conv.i176
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %max_offset)
  %cmp16 = icmp ugt i64 %sub, %max_offset
  br i1 %cmp16, label %land.rhs, label %radeon_bo_gpu_offset.exit178.cleanup_crit_edge

radeon_bo_gpu_offset.exit178.cleanup_crit_edge:   ; preds = %radeon_bo_gpu_offset.exit178
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.rhs:                                         ; preds = %radeon_bo_gpu_offset.exit178
  %.b163 = load i1, ptr @radeon_bo_pin_restricted.__already_done, align 1
  br i1 %.b163, label %land.rhs.cleanup_crit_edge, label %if.then24, !prof !66

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then24:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @radeon_bo_pin_restricted.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 314, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end55:                                         ; preds = %if.end
  %prime_shared_count = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 11
  %40 = ptrtoint ptr %prime_shared_count to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %prime_shared_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool56.not = icmp ne i32 %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %domain)
  %cmp57 = icmp eq i32 %domain, 4
  %or.cond = and i1 %cmp57, %tobool56.not
  br i1 %or.cond, label %if.end55.cleanup_crit_edge, label %if.end59

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end59:                                         ; preds = %if.end55
  tail call void @radeon_ttm_placement_from_domain(ptr noundef %bo, i32 noundef %domain)
  %placement = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 3
  %42 = ptrtoint ptr %placement to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %placement, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp60212.not = icmp eq i32 %43, 0
  br i1 %cmp60212.not, label %if.end59.for.end_crit_edge, label %for.body.lr.ph

if.end59.for.end_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end59
  %flags = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %max_offset)
  %tobool65.not = icmp eq i64 %max_offset, 0
  %shr76 = lshr i64 %max_offset, 12
  %conv77 = trunc i64 %shr76 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0213 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %mem_type = getelementptr %struct.radeon_bo, ptr %bo, i32 0, i32 2, i32 %i.0213, i32 2
  %44 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mem_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp61 = icmp eq i32 %45, 2
  br i1 %cmp61, label %land.lhs.true62, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true62:                                  ; preds = %for.body
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags, align 8
  %and = and i32 %47, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool63.not = icmp eq i32 %and, 0
  br i1 %tobool63.not, label %land.lhs.true64, label %land.lhs.true62.for.inc_crit_edge

land.lhs.true62.for.inc_crit_edge:                ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true64:                                  ; preds = %land.lhs.true62
  br i1 %tobool65.not, label %land.lhs.true64.if.then69_crit_edge, label %lor.lhs.false

land.lhs.true64.if.then69_crit_edge:              ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then69

lor.lhs.false:                                    ; preds = %land.lhs.true64
  %48 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rdev, align 8
  %visible_vram_size = getelementptr inbounds %struct.radeon_device, ptr %49, i32 0, i32 42, i32 4
  %50 = ptrtoint ptr %visible_vram_size to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %visible_vram_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %51, i64 %max_offset)
  %cmp68 = icmp ult i64 %51, %max_offset
  br i1 %cmp68, label %lor.lhs.false.if.then69_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

lor.lhs.false.if.then69_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then69

if.then69:                                        ; preds = %lor.lhs.false.if.then69_crit_edge, %land.lhs.true64.if.then69_crit_edge
  %52 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rdev, align 8
  %visible_vram_size72 = getelementptr inbounds %struct.radeon_device, ptr %53, i32 0, i32 42, i32 4
  %54 = ptrtoint ptr %visible_vram_size72 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %visible_vram_size72, align 8
  %shr = lshr i64 %55, 12
  %conv = trunc i64 %shr to i32
  br label %for.inc

for.inc:                                          ; preds = %if.then69, %lor.lhs.false.for.inc_crit_edge, %land.lhs.true62.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %conv.sink = phi i32 [ %conv, %if.then69 ], [ %conv77, %lor.lhs.false.for.inc_crit_edge ], [ %conv77, %land.lhs.true62.for.inc_crit_edge ], [ %conv77, %for.body.for.inc_crit_edge ]
  %lpfn = getelementptr %struct.radeon_bo, ptr %bo, i32 0, i32 2, i32 %i.0213, i32 1
  %56 = ptrtoint ptr %lpfn to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %conv.sink, ptr %lpfn, align 4
  %inc = add nuw i32 %i.0213, 1
  %exitcond.not = icmp eq i32 %inc, %43
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end59.for.end_crit_edge
  %call84 = call i32 @ttm_bo_validate(ptr noundef %tbo, ptr noundef %placement, ptr noundef nonnull %ctx) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp85 = icmp eq i32 %call84, 0
  br i1 %cmp85, label %if.then93, label %do.end115, !prof !66

if.then93:                                        ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %57 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i179 = icmp eq i32 %57, 0
  br i1 %tobool.not.i179, label %if.then93.if.end.i189_crit_edge, label %land.rhs.i184

if.then93.if.end.i189_crit_edge:                  ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i189

land.rhs.i184:                                    ; preds = %if.then93
  %resv.i180 = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 0, i32 9
  %58 = ptrtoint ptr %resv.i180 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %resv.i180, align 8
  %dep_map.i181 = getelementptr inbounds %struct.mutex, ptr %59, i32 0, i32 5
  %call.i.i182 = call i32 @lock_is_held_type(ptr noundef %dep_map.i181, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i182)
  %cmp.not.i183 = icmp eq i32 %call.i.i182, 0
  br i1 %cmp.not.i183, label %do.end.i185, label %land.rhs.i184.if.end.i189_crit_edge, !prof !72

land.rhs.i184.if.end.i189_crit_edge:              ; preds = %land.rhs.i184
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i189

do.end.i185:                                      ; preds = %land.rhs.i184
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 551, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i189

if.end.i189:                                      ; preds = %do.end.i185, %land.rhs.i184.if.end.i189_crit_edge, %if.then93.if.end.i189_crit_edge
  %kref.i186 = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 5
  %call.i.i.i.i.i187 = call zeroext i1 @__kasan_check_read(ptr noundef %kref.i186, i32 noundef 4) #11
  %60 = ptrtoint ptr %kref.i186 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %kref.i186, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool26.not.i188 = icmp eq i32 %61, 0
  br i1 %tobool26.not.i188, label %land.rhs34.i191, label %if.end.i189.ttm_bo_pin.exit195_crit_edge

if.end.i189.ttm_bo_pin.exit195_crit_edge:         ; preds = %if.end.i189
  call void @__sanitizer_cov_trace_pc() #13
  br label %ttm_bo_pin.exit195

land.rhs34.i191:                                  ; preds = %if.end.i189
  %.b85.i190 = load i1, ptr @ttm_bo_pin.__already_done, align 1
  br i1 %.b85.i190, label %land.rhs34.i191.ttm_bo_pin.exit195_crit_edge, label %if.then45.i192, !prof !66

land.rhs34.i191.ttm_bo_pin.exit195_crit_edge:     ; preds = %land.rhs34.i191
  call void @__sanitizer_cov_trace_pc() #13
  br label %ttm_bo_pin.exit195

if.then45.i192:                                   ; preds = %land.rhs34.i191
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ttm_bo_pin.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 552, i32 noundef 9, ptr noundef null) #11
  br label %ttm_bo_pin.exit195

ttm_bo_pin.exit195:                               ; preds = %if.then45.i192, %land.rhs34.i191.ttm_bo_pin.exit195_crit_edge, %if.end.i189.ttm_bo_pin.exit195_crit_edge
  %62 = ptrtoint ptr %pin_count to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %pin_count, align 8
  %inc.i194 = add i32 %63, 1
  store i32 %inc.i194, ptr %pin_count, align 8
  %cmp95.not = icmp eq ptr %gpu_addr, null
  br i1 %cmp95.not, label %ttm_bo_pin.exit195.if.end99_crit_edge, label %if.then97

ttm_bo_pin.exit195.if.end99_crit_edge:            ; preds = %ttm_bo_pin.exit195
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end99

if.then97:                                        ; preds = %ttm_bo_pin.exit195
  %bdev.i196 = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 1
  %64 = ptrtoint ptr %bdev.i196 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bdev.i196, align 8
  %call.i197 = call ptr @radeon_get_rdev(ptr noundef %65) #11
  %resource.i198 = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 6
  %66 = ptrtoint ptr %resource.i198 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %resource.i198, align 4
  %mem_type.i199 = getelementptr inbounds %struct.ttm_resource, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %mem_type.i199 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %mem_type.i199, align 4
  %70 = zext i32 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %69, label %if.then97.radeon_bo_gpu_offset.exit210_crit_edge [
    i32 1, label %sw.bb.i201
    i32 2, label %sw.bb2.i203
  ]

if.then97.radeon_bo_gpu_offset.exit210_crit_edge: ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_bo_gpu_offset.exit210

sw.bb.i201:                                       ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #13
  %gtt_start.i200 = getelementptr inbounds %struct.radeon_device, ptr %call.i197, i32 0, i32 42, i32 6
  br label %sw.epilog.sink.split.i205

sw.bb2.i203:                                      ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #13
  %vram_start.i202 = getelementptr inbounds %struct.radeon_device, ptr %call.i197, i32 0, i32 42, i32 8
  br label %sw.epilog.sink.split.i205

sw.epilog.sink.split.i205:                        ; preds = %sw.bb2.i203, %sw.bb.i201
  %vram_start.sink.i204 = phi ptr [ %vram_start.i202, %sw.bb2.i203 ], [ %gtt_start.i200, %sw.bb.i201 ]
  %71 = ptrtoint ptr %vram_start.sink.i204 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %vram_start.sink.i204, align 8
  br label %radeon_bo_gpu_offset.exit210

radeon_bo_gpu_offset.exit210:                     ; preds = %sw.epilog.sink.split.i205, %if.then97.radeon_bo_gpu_offset.exit210_crit_edge
  %start.0.i206 = phi i64 [ 0, %if.then97.radeon_bo_gpu_offset.exit210_crit_edge ], [ %72, %sw.epilog.sink.split.i205 ]
  %73 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %67, align 4
  %shl.i207 = shl i32 %74, 12
  %conv.i208 = zext i32 %shl.i207 to i64
  %add.i209 = add i64 %start.0.i206, %conv.i208
  %75 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %add.i209, ptr %gpu_addr, align 8
  br label %if.end99

if.end99:                                         ; preds = %radeon_bo_gpu_offset.exit210, %ttm_bo_pin.exit195.if.end99_crit_edge
  %size.i = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 0, i32 5
  %76 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %size.i, align 8
  %conv104 = zext i32 %77 to i64
  %78 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rdev, align 8
  br i1 %cmp57, label %if.then102, label %if.else106

if.then102:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #13
  %vram_pin_size = getelementptr inbounds %struct.radeon_device, ptr %79, i32 0, i32 114
  %80 = ptrtoint ptr %vram_pin_size to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %vram_pin_size, align 8
  %add = add i64 %81, %conv104
  store i64 %add, ptr %vram_pin_size, align 8
  br label %cleanup

if.else106:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #13
  %gart_pin_size = getelementptr inbounds %struct.radeon_device, ptr %79, i32 0, i32 115
  %82 = ptrtoint ptr %gart_pin_size to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %gart_pin_size, align 8
  %add110 = add i64 %83, %conv104
  store i64 %add110, ptr %gart_pin_size, align 8
  br label %cleanup

do.end115:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %84 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rdev, align 8
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.1, ptr noundef %bo) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end115, %if.else106, %if.then102, %if.end55.cleanup_crit_edge, %if.then24, %land.rhs.cleanup_crit_edge, %radeon_bo_gpu_offset.exit178.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 0, %land.rhs.cleanup_crit_edge ], [ 0, %if.then24 ], [ 0, %radeon_bo_gpu_offset.exit178.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ -22, %if.end55.cleanup_crit_edge ], [ 0, %if.then102 ], [ 0, %if.else106 ], [ %call84, %do.end115 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ctx) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_ttm_tt_has_userptr(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_validate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_bo_pin(ptr noundef %bo, i32 noundef %domain, ptr noundef %gpu_addr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @radeon_bo_pin_restricted(ptr noundef %bo, i32 noundef %domain, i64 noundef 0, ptr noundef %gpu_addr)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_bo_unpin(ptr noundef %bo) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %resv.i = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 0, i32 9
  %1 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %resv.i, align 8
  %dep_map.i = getelementptr inbounds %struct.mutex, ptr %2, i32 0, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !72

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 564, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %kref.i = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 5
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref.i, i32 noundef 4) #11
  %3 = ptrtoint ptr %kref.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %kref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool26.not.i = icmp eq i32 %4, 0
  br i1 %tobool26.not.i, label %land.rhs34.i, label %if.end.i.if.end72.i_crit_edge

if.end.i.if.end72.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72.i

land.rhs34.i:                                     ; preds = %if.end.i
  %.b142.i = load i1, ptr @ttm_bo_unpin.__already_done, align 1
  br i1 %.b142.i, label %land.rhs34.i.if.end72.i_crit_edge, label %if.then45.i, !prof !66

land.rhs34.i.if.end72.i_crit_edge:                ; preds = %land.rhs34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72.i

if.then45.i:                                      ; preds = %land.rhs34.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ttm_bo_unpin.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 565, i32 noundef 9, ptr noundef null) #11
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.then45.i, %land.rhs34.i.if.end72.i_crit_edge, %if.end.i.if.end72.i_crit_edge
  %pin_count.i = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 13
  %5 = ptrtoint ptr %pin_count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pin_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool80.not.i = icmp eq i32 %6, 0
  br i1 %tobool80.not.i, label %land.end89.i, label %if.then81.i

if.then81.i:                                      ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec.i = add i32 %6, -1
  %7 = ptrtoint ptr %pin_count.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %dec.i, ptr %pin_count.i, align 8
  br label %ttm_bo_unpin.exit

land.end89.i:                                     ; preds = %if.end72.i
  %.b140141.i = load i1, ptr @ttm_bo_unpin.__already_done.20, align 1
  br i1 %.b140141.i, label %land.end89.i.if.then_crit_edge, label %if.then96.i, !prof !66

land.end89.i.if.then_crit_edge:                   ; preds = %land.end89.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then96.i:                                      ; preds = %land.end89.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ttm_bo_unpin.__already_done.20, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 569, i32 noundef 9, ptr noundef null) #11
  %8 = ptrtoint ptr %pin_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load i32, ptr %pin_count.i, align 8
  br label %ttm_bo_unpin.exit

ttm_bo_unpin.exit:                                ; preds = %if.then96.i, %if.then81.i
  %9 = phi i32 [ %dec.i, %if.then81.i ], [ %.pr, %if.then96.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %ttm_bo_unpin.exit.if.then_crit_edge, label %ttm_bo_unpin.exit.if.end8_crit_edge

ttm_bo_unpin.exit.if.end8_crit_edge:              ; preds = %ttm_bo_unpin.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

ttm_bo_unpin.exit.if.then_crit_edge:              ; preds = %ttm_bo_unpin.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %ttm_bo_unpin.exit.if.then_crit_edge, %land.end89.i.if.then_crit_edge
  %resource = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 6
  %10 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %resource, align 4
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mem_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp = icmp eq i32 %13, 2
  %size.i = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 0, i32 5
  %14 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size.i, align 8
  %conv = zext i32 %15 to i64
  %rdev = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 13
  %16 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rdev, align 8
  %vram_pin_size = getelementptr inbounds %struct.radeon_device, ptr %17, i32 0, i32 114
  %gart_pin_size = getelementptr inbounds %struct.radeon_device, ptr %17, i32 0, i32 115
  %vram_pin_size.sink17 = select i1 %cmp, ptr %vram_pin_size, ptr %gart_pin_size
  %18 = ptrtoint ptr %vram_pin_size.sink17 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %vram_pin_size.sink17, align 8
  %sub = sub i64 %19, %conv
  store i64 %sub, ptr %vram_pin_size.sink17, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then, %ttm_bo_unpin.exit.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_bo_evict_vram(ptr noundef %rdev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 47, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mman = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 47
  %call2 = tail call i32 @ttm_resource_manager_evict_all(ptr noundef %mman, ptr noundef nonnull %1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_resource_manager_evict_all(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_bo_force_delete(ptr noundef %rdev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %objects = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 57, i32 1
  %0 = ptrtoint ptr %objects to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %objects, align 4
  %cmp.i.not = icmp eq ptr %1, %objects
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5) #15
  %4 = ptrtoint ptr %objects to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %objects, align 4
  %cmp.not46 = icmp eq ptr %5, %objects
  br i1 %cmp.not46, label %do.end.cleanup_crit_edge, label %do.end.do.end12_crit_edge

do.end.do.end12_crit_edge:                        ; preds = %do.end
  br label %do.end12

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end12:                                         ; preds = %drm_gem_object_put.exit.do.end12_crit_edge, %do.end.do.end12_crit_edge
  %bo.047 = phi ptr [ %n.0, %drm_gem_object_put.exit.do.end12_crit_edge ], [ %5, %do.end.do.end12_crit_edge ]
  %6 = ptrtoint ptr %bo.047 to i32
  call void @__asan_load4_noabort(i32 %6)
  %n.0 = load ptr, ptr %bo.047, align 8
  %7 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rdev, align 8
  %tbo = getelementptr inbounds %struct.radeon_bo, ptr %bo.047, i32 0, i32 4
  %size = getelementptr inbounds %struct.radeon_bo, ptr %bo.047, i32 0, i32 4, i32 0, i32 5
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size, align 8
  %11 = ptrtoint ptr %tbo to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tbo, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.8, ptr noundef %tbo, ptr noundef %bo.047, i32 noundef %10, i32 noundef %12) #15
  %rdev18 = getelementptr inbounds %struct.radeon_bo, ptr %bo.047, i32 0, i32 13
  %13 = ptrtoint ptr %rdev18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rdev18, align 8
  %gem19 = getelementptr inbounds %struct.radeon_device, ptr %14, i32 0, i32 57
  tail call void @mutex_lock_nested(ptr noundef %gem19, i32 noundef 0) #11
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %bo.047) #11
  br i1 %call.i.i, label %if.end.i.i, label %do.end12.list_del_init.exit_crit_edge

do.end12.list_del_init.exit_crit_edge:            ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %bo.047, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %bo.047 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bo.047, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.end12.list_del_init.exit_crit_edge
  %21 = ptrtoint ptr %bo.047 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %bo.047, ptr %bo.047, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %bo.047, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %bo.047, ptr %prev.i3.i, align 4
  %23 = ptrtoint ptr %rdev18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rdev18, align 8
  %gem22 = getelementptr inbounds %struct.radeon_device, ptr %24, i32 0, i32 57
  tail call void @mutex_unlock(ptr noundef %gem22) #11
  %tobool.not.i = icmp eq ptr %tbo, null
  br i1 %tobool.not.i, label %list_del_init.exit.drm_gem_object_put.exit_crit_edge, label %if.then.i

list_del_init.exit.drm_gem_object_put.exit_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %drm_gem_object_put.exit

if.then.i:                                        ; preds = %list_del_init.exit
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tbo, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !74
  tail call void @llvm.prefetch.p0(ptr nonnull %tbo, i32 1, i32 3, i32 1) #11
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %tbo, ptr nonnull %tbo, i32 1, ptr nonnull elementtype(i32) %tbo) #11, !srcloc !75
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !66

if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drm_gem_object_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef nonnull %tbo, i32 noundef 3) #11
  br label %drm_gem_object_put.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !76
  tail call void @drm_gem_object_free(ptr noundef nonnull %tbo) #11
  br label %drm_gem_object_put.exit

drm_gem_object_put.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, %list_del_init.exit.drm_gem_object_put.exit_crit_edge
  %cmp.not = icmp eq ptr %n.0, %objects
  br i1 %cmp.not, label %drm_gem_object_put.exit.cleanup_crit_edge, label %drm_gem_object_put.exit.do.end12_crit_edge

drm_gem_object_put.exit.do.end12_crit_edge:       ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12

drm_gem_object_put.exit.cleanup_crit_edge:        ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %drm_gem_object_put.exit.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_bo_init(ptr noundef %rdev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fastfb_working = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 67
  %0 = ptrtoint ptr %fastfb_working to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fastfb_working, align 1, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %vram_mtrr = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 12
  %2 = ptrtoint ptr %vram_mtrr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %vram_mtrr, align 8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %mc = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42
  %mc_vram_size = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 3
  %3 = ptrtoint ptr %mc_vram_size to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %mc_vram_size, align 8
  %shr = lshr i64 %4, 20
  %5 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mc, align 8
  %7 = lshr i32 %6, 20
  %shr11 = zext i32 %7 to i64
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i64 noundef %shr, i64 noundef %shr11) #15
  %vram_width = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 10
  %8 = ptrtoint ptr %vram_width to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vram_width, align 8
  %vram_is_ddr = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 13
  %10 = ptrtoint ptr %vram_is_ddr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %vram_is_ddr, align 4, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool18.not = icmp eq i8 %11, 0
  %cond = select i1 %tobool18.not, i32 83, i32 68
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %9, i32 noundef %cond) #15
  %call21 = tail call i32 @radeon_ttm_init(ptr noundef %rdev) #11
  ret i32 %call21
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_ttm_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_bo_fini(ptr noundef %rdev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @radeon_ttm_fini(ptr noundef %rdev) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ttm_fini(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_bo_list_validate(ptr noundef %rdev, ptr noundef %ticket, ptr noundef %head, i32 noundef %ring) local_unnamed_addr #1 align 64 {
entry:
  %ctx = alloca %struct.ttm_operation_ctx, align 8
  %duplicates = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ctx) #11
  %0 = call ptr @memcpy(ptr %ctx, ptr @__const.radeon_bo_list_validate.ctx, i32 24)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %duplicates) #11
  %1 = getelementptr inbounds %struct.list_head, ptr %duplicates, i32 0, i32 1
  %real_vram_size1.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 11
  %2 = ptrtoint ptr %real_vram_size1.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %real_vram_size1.i, align 8
  %vram_usage2.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 102
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %vram_usage2.i, i32 noundef 8) #11
  %call.i.i131 = tail call i64 @generic_atomic64_read(ptr noundef %vram_usage2.i) #11
  %shr.i = lshr i64 %3, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i, i64 %call.i.i131)
  %cmp.not.i = icmp ugt i64 %shr.i, %call.i.i131
  %sub.i = sub i64 %shr.i, %call.i.i131
  %phi.bo.i = lshr i64 %sub.i, 1
  %4 = tail call i64 @llvm.umax.i64(i64 %phi.bo.i, i64 1048576) #11
  %5 = select i1 %cmp.not.i, i64 %4, i64 1048576
  %6 = ptrtoint ptr %duplicates to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %duplicates, ptr %duplicates, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %duplicates, ptr %1, align 4
  %call1 = call i32 @ttm_eu_reserve_buffers(ptr noundef %ticket, ptr noundef %head, i1 noundef zeroext true, ptr noundef nonnull %duplicates) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %for.cond.preheader, label %entry.cleanup81_crit_edge, !prof !66

entry.cleanup81_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup81

for.cond.preheader:                               ; preds = %entry
  %8 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn157 = load ptr, ptr %head, align 4
  %cmp4.not158 = icmp eq ptr %.pn157, %head
  br i1 %cmp4.not158, label %for.cond.preheader.for.cond60.preheader_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.cond60.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond60.preheader

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %ring)
  %cmp18 = icmp eq i32 %ring, 5
  %num_bytes_moved = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 104
  br label %for.body

for.cond60.preheader:                             ; preds = %cleanup47.for.cond60.preheader_crit_edge, %for.cond.preheader.for.cond60.preheader_crit_edge
  %9 = ptrtoint ptr %duplicates to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn127161 = load ptr, ptr %duplicates, align 4
  %cmp63.not162 = icmp eq ptr %.pn127161, %duplicates
  br i1 %cmp63.not162, label %for.cond60.preheader.cleanup81_crit_edge, label %for.cond60.preheader.for.body66_crit_edge

for.cond60.preheader.for.body66_crit_edge:        ; preds = %for.cond60.preheader
  br label %for.body66

for.cond60.preheader.cleanup81_crit_edge:         ; preds = %for.cond60.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup81

for.body:                                         ; preds = %cleanup47.for.body_crit_edge, %for.body.lr.ph
  %.pn160 = phi ptr [ %.pn157, %for.body.lr.ph ], [ %.pn, %cleanup47.for.body_crit_edge ]
  %bytes_moved.0159 = phi i64 [ 0, %for.body.lr.ph ], [ %bytes_moved.2, %cleanup47.for.body_crit_edge ]
  %lobj.0 = getelementptr i8, ptr %.pn160, i32 -4
  %10 = ptrtoint ptr %lobj.0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lobj.0, align 8
  %tbo = getelementptr inbounds %struct.radeon_bo, ptr %11, i32 0, i32 4
  %pin_count = getelementptr inbounds %struct.radeon_bo, ptr %11, i32 0, i32 4, i32 13
  %12 = ptrtoint ptr %pin_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pin_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool7.not = icmp eq i32 %13, 0
  br i1 %tobool7.not, label %if.then8, label %for.body.if.end44_crit_edge

for.body.if.end44_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then8:                                         ; preds = %for.body
  %preferred_domains = getelementptr i8, ptr %.pn160, i32 28
  %14 = ptrtoint ptr %preferred_domains to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %preferred_domains, align 8
  %allowed_domains = getelementptr i8, ptr %.pn160, i32 32
  %16 = ptrtoint ptr %allowed_domains to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %allowed_domains, align 4
  %resource = getelementptr inbounds %struct.radeon_bo, ptr %11, i32 0, i32 4, i32 6
  %18 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %resource, align 4
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mem_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %22 = icmp ult i32 %21, 3
  br i1 %22, label %switch.lookup, label %if.then8.radeon_mem_type_to_domain.exit_crit_edge

if.then8.radeon_mem_type_to_domain.exit_crit_edge: ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_mem_type_to_domain.exit

switch.lookup:                                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.radeon_bo_list_validate, i32 0, i32 %21
  %23 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %23)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %radeon_mem_type_to_domain.exit

radeon_mem_type_to_domain.exit:                   ; preds = %switch.lookup, %if.then8.radeon_mem_type_to_domain.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.then8.radeon_mem_type_to_domain.exit_crit_edge ]
  %and = and i32 %retval.0.i, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp11.not = icmp ne i32 %and, 0
  %and12 = and i32 %retval.0.i, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %cmp13 = icmp eq i32 %and12, 0
  %or.cond = select i1 %cmp11.not, i1 %cmp13, i1 false
  call void @__sanitizer_cov_trace_cmp8(i64 %bytes_moved.0159, i64 %5)
  %cmp15 = icmp ugt i64 %bytes_moved.0159, %5
  %or.cond128 = select i1 %or.cond, i1 %cmp15, i1 false
  %domain.0 = select i1 %or.cond128, i32 %retval.0.i, i32 %15
  %placement = getelementptr inbounds %struct.radeon_bo, ptr %11, i32 0, i32 3
  br label %retry

retry:                                            ; preds = %land.lhs.true35.retry_crit_edge, %radeon_mem_type_to_domain.exit
  %domain.1 = phi i32 [ %domain.0, %radeon_mem_type_to_domain.exit ], [ %26, %land.lhs.true35.retry_crit_edge ]
  %bytes_moved.1 = phi i64 [ %bytes_moved.0159, %radeon_mem_type_to_domain.exit ], [ %add, %land.lhs.true35.retry_crit_edge ]
  call void @radeon_ttm_placement_from_domain(ptr noundef %11, i32 noundef %domain.1)
  br i1 %cmp18, label %if.then19, label %retry.if.end20_crit_edge

retry.if.end20_crit_edge:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then19:                                        ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #13
  call void @radeon_uvd_force_into_uvd_segment(ptr noundef %11, i32 noundef %17) #11
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %retry.if.end20_crit_edge
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %num_bytes_moved, i32 noundef 8) #11
  %call.i = call i64 @generic_atomic64_read(ptr noundef %num_bytes_moved) #11
  %call23 = call i32 @ttm_bo_validate(ptr noundef %tbo, ptr noundef %placement, ptr noundef nonnull %ctx) #11
  %call.i.i129 = call zeroext i1 @__kasan_check_read(ptr noundef %num_bytes_moved, i32 noundef 8) #11
  %call.i130 = call i64 @generic_atomic64_read(ptr noundef %num_bytes_moved) #11
  %sub = sub i64 %call.i130, %call.i
  %add = add i64 %sub, %bytes_moved.1
  %24 = zext i32 %call23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %call23, label %land.lhs.true35 [
    i32 0, label %if.end20.if.end44_crit_edge
    i32 -512, label %if.end20.cleanup47.thread_crit_edge
  ], !prof !78

if.end20.cleanup47.thread_crit_edge:              ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup47.thread

if.end20.if.end44_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

land.lhs.true35:                                  ; preds = %if.end20
  %25 = ptrtoint ptr %allowed_domains to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %allowed_domains, align 4
  %cmp37.not = icmp eq i32 %domain.1, %26
  br i1 %cmp37.not, label %land.lhs.true35.cleanup47.thread_crit_edge, label %land.lhs.true35.retry_crit_edge

land.lhs.true35.retry_crit_edge:                  ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #13
  br label %retry

land.lhs.true35.cleanup47.thread_crit_edge:       ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup47.thread

cleanup47.thread:                                 ; preds = %land.lhs.true35.cleanup47.thread_crit_edge, %if.end20.cleanup47.thread_crit_edge
  call void @ttm_eu_backoff_reservation(ptr noundef %ticket, ptr noundef %head) #11
  br label %cleanup81

if.end44:                                         ; preds = %if.end20.if.end44_crit_edge, %for.body.if.end44_crit_edge
  %bytes_moved.2 = phi i64 [ %bytes_moved.0159, %for.body.if.end44_crit_edge ], [ %add, %if.end20.if.end44_crit_edge ]
  %bdev.i = getelementptr inbounds %struct.radeon_bo, ptr %11, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bdev.i, align 8
  %call.i132 = call ptr @radeon_get_rdev(ptr noundef %28) #11
  %resource.i = getelementptr inbounds %struct.radeon_bo, ptr %11, i32 0, i32 4, i32 6
  %29 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %resource.i, align 4
  %mem_type.i = getelementptr inbounds %struct.ttm_resource, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %mem_type.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mem_type.i, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %32, label %if.end44.cleanup47_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb2.i133
  ]

if.end44.cleanup47_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup47

sw.bb.i:                                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  %gtt_start.i = getelementptr inbounds %struct.radeon_device, ptr %call.i132, i32 0, i32 42, i32 6
  br label %sw.epilog.sink.split.i

sw.bb2.i133:                                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  %vram_start.i = getelementptr inbounds %struct.radeon_device, ptr %call.i132, i32 0, i32 42, i32 8
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb2.i133, %sw.bb.i
  %vram_start.sink.i = phi ptr [ %vram_start.i, %sw.bb2.i133 ], [ %gtt_start.i, %sw.bb.i ]
  %34 = ptrtoint ptr %vram_start.sink.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %vram_start.sink.i, align 8
  br label %cleanup47

cleanup47:                                        ; preds = %sw.epilog.sink.split.i, %if.end44.cleanup47_crit_edge
  %start.0.i = phi i64 [ 0, %if.end44.cleanup47_crit_edge ], [ %35, %sw.epilog.sink.split.i ]
  %36 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %30, align 4
  %shl.i = shl i32 %37, 12
  %conv.i = zext i32 %shl.i to i64
  %add.i = add i64 %start.0.i, %conv.i
  %gpu_offset = getelementptr i8, ptr %.pn160, i32 20
  %38 = ptrtoint ptr %gpu_offset to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %add.i, ptr %gpu_offset, align 8
  %tiling_flags = getelementptr inbounds %struct.radeon_bo, ptr %11, i32 0, i32 8
  %39 = ptrtoint ptr %tiling_flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tiling_flags, align 8
  %tiling_flags46 = getelementptr i8, ptr %.pn160, i32 36
  %41 = ptrtoint ptr %tiling_flags46 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %tiling_flags46, align 8
  %42 = ptrtoint ptr %.pn160 to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn = load ptr, ptr %.pn160, align 4
  %cmp4.not = icmp eq ptr %.pn, %head
  br i1 %cmp4.not, label %cleanup47.for.cond60.preheader_crit_edge, label %cleanup47.for.body_crit_edge

cleanup47.for.body_crit_edge:                     ; preds = %cleanup47
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup47.for.cond60.preheader_crit_edge:         ; preds = %cleanup47
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond60.preheader

for.body66:                                       ; preds = %radeon_bo_gpu_offset.exit150.for.body66_crit_edge, %for.cond60.preheader.for.body66_crit_edge
  %.pn127163 = phi ptr [ %.pn127, %radeon_bo_gpu_offset.exit150.for.body66_crit_edge ], [ %.pn127161, %for.cond60.preheader.for.body66_crit_edge ]
  %lobj.1 = getelementptr i8, ptr %.pn127163, i32 -4
  %43 = ptrtoint ptr %lobj.1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %lobj.1, align 8
  %bdev.i135 = getelementptr inbounds %struct.radeon_bo, ptr %44, i32 0, i32 4, i32 1
  %45 = ptrtoint ptr %bdev.i135 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bdev.i135, align 8
  %call.i136 = call ptr @radeon_get_rdev(ptr noundef %46) #11
  %resource.i137 = getelementptr inbounds %struct.radeon_bo, ptr %44, i32 0, i32 4, i32 6
  %47 = ptrtoint ptr %resource.i137 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %resource.i137, align 4
  %mem_type.i138 = getelementptr inbounds %struct.ttm_resource, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %mem_type.i138 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mem_type.i138, align 4
  %51 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %50, label %for.body66.radeon_bo_gpu_offset.exit150_crit_edge [
    i32 1, label %sw.bb.i140
    i32 2, label %sw.bb2.i142
  ]

for.body66.radeon_bo_gpu_offset.exit150_crit_edge: ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_bo_gpu_offset.exit150

sw.bb.i140:                                       ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #13
  %gtt_start.i139 = getelementptr inbounds %struct.radeon_device, ptr %call.i136, i32 0, i32 42, i32 6
  br label %sw.epilog.sink.split.i144

sw.bb2.i142:                                      ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #13
  %vram_start.i141 = getelementptr inbounds %struct.radeon_device, ptr %call.i136, i32 0, i32 42, i32 8
  br label %sw.epilog.sink.split.i144

sw.epilog.sink.split.i144:                        ; preds = %sw.bb2.i142, %sw.bb.i140
  %vram_start.sink.i143 = phi ptr [ %vram_start.i141, %sw.bb2.i142 ], [ %gtt_start.i139, %sw.bb.i140 ]
  %52 = ptrtoint ptr %vram_start.sink.i143 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %vram_start.sink.i143, align 8
  br label %radeon_bo_gpu_offset.exit150

radeon_bo_gpu_offset.exit150:                     ; preds = %sw.epilog.sink.split.i144, %for.body66.radeon_bo_gpu_offset.exit150_crit_edge
  %start.0.i145 = phi i64 [ 0, %for.body66.radeon_bo_gpu_offset.exit150_crit_edge ], [ %53, %sw.epilog.sink.split.i144 ]
  %54 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %48, align 4
  %shl.i146 = shl i32 %55, 12
  %conv.i147 = zext i32 %shl.i146 to i64
  %add.i148 = add i64 %start.0.i145, %conv.i147
  %gpu_offset69 = getelementptr i8, ptr %.pn127163, i32 20
  %56 = ptrtoint ptr %gpu_offset69 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %add.i148, ptr %gpu_offset69, align 8
  %57 = ptrtoint ptr %lobj.1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %lobj.1, align 8
  %tiling_flags71 = getelementptr inbounds %struct.radeon_bo, ptr %58, i32 0, i32 8
  %59 = ptrtoint ptr %tiling_flags71 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tiling_flags71, align 8
  %tiling_flags72 = getelementptr i8, ptr %.pn127163, i32 36
  %61 = ptrtoint ptr %tiling_flags72 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %tiling_flags72, align 8
  %62 = ptrtoint ptr %.pn127163 to i32
  call void @__asan_load4_noabort(i32 %62)
  %.pn127 = load ptr, ptr %.pn127163, align 4
  %cmp63.not = icmp eq ptr %.pn127, %duplicates
  br i1 %cmp63.not, label %radeon_bo_gpu_offset.exit150.cleanup81_crit_edge, label %radeon_bo_gpu_offset.exit150.for.body66_crit_edge

radeon_bo_gpu_offset.exit150.for.body66_crit_edge: ; preds = %radeon_bo_gpu_offset.exit150
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body66

radeon_bo_gpu_offset.exit150.cleanup81_crit_edge: ; preds = %radeon_bo_gpu_offset.exit150
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup81

cleanup81:                                        ; preds = %radeon_bo_gpu_offset.exit150.cleanup81_crit_edge, %cleanup47.thread, %for.cond60.preheader.cleanup81_crit_edge, %entry.cleanup81_crit_edge
  %retval.4 = phi i32 [ %call1, %entry.cleanup81_crit_edge ], [ %call23, %cleanup47.thread ], [ 0, %for.cond60.preheader.cleanup81_crit_edge ], [ 0, %radeon_bo_gpu_offset.exit150.cleanup81_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %duplicates) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ctx) #11
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_eu_reserve_buffers(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_uvd_force_into_uvd_segment(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_eu_backoff_reservation(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_bo_get_surface_reg(ptr noundef %bo) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rdev1 = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 13
  %0 = ptrtoint ptr %rdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs:                                         ; preds = %entry
  %resv = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 0, i32 9
  %3 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %resv, align 8
  %dep_map = getelementptr inbounds %struct.mutex, ptr %4, i32 0, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !72

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 564, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %tiling_flags = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 8
  %5 = ptrtoint ptr %tiling_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tiling_flags, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool26.not = icmp eq i32 %6, 0
  br i1 %tobool26.not, label %if.end.cleanup_crit_edge, label %if.end28

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end28:                                         ; preds = %if.end
  %surface_reg = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 10
  %7 = ptrtoint ptr %surface_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %surface_reg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp29 = icmp sgt i32 %8, -1
  br i1 %cmp29, label %if.end28.out_crit_edge, label %for.body.preheader

if.end28.out_crit_edge:                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.body.preheader:                               ; preds = %if.end28
  %uglygep = getelementptr i8, ptr %1, i32 10372
  %arrayidx36 = getelementptr %struct.radeon_device, ptr %1, i32 0, i32 70, i32 0
  %9 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx36, align 4
  %tobool38.not = icmp eq ptr %10, null
  br i1 %tobool38.not, label %for.body.preheader.if.end56_crit_edge, label %if.end40

for.body.preheader.if.end56_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

if.end40:                                         ; preds = %for.body.preheader
  %arrayidx36.1 = getelementptr %struct.radeon_device, ptr %1, i32 0, i32 70, i32 1
  %11 = ptrtoint ptr %arrayidx36.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx36.1, align 4
  %tobool38.not.1 = icmp eq ptr %12, null
  br i1 %tobool38.not.1, label %if.end40.if.end56_crit_edge, label %if.end40.1

if.end40.if.end56_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

if.end40.1:                                       ; preds = %if.end40
  %arrayidx36.2 = getelementptr %struct.radeon_device, ptr %1, i32 0, i32 70, i32 2
  %13 = ptrtoint ptr %arrayidx36.2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx36.2, align 4
  %tobool38.not.2 = icmp eq ptr %14, null
  br i1 %tobool38.not.2, label %if.end40.1.if.end56_crit_edge, label %if.end40.2

if.end40.1.if.end56_crit_edge:                    ; preds = %if.end40.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

if.end40.2:                                       ; preds = %if.end40.1
  %arrayidx36.3 = getelementptr %struct.radeon_device, ptr %1, i32 0, i32 70, i32 3
  %15 = ptrtoint ptr %arrayidx36.3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx36.3, align 4
  %tobool38.not.3 = icmp eq ptr %16, null
  br i1 %tobool38.not.3, label %if.end40.2.if.end56_crit_edge, label %if.end40.3

if.end40.2.if.end56_crit_edge:                    ; preds = %if.end40.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

if.end40.3:                                       ; preds = %if.end40.2
  %arrayidx36.4 = getelementptr %struct.radeon_device, ptr %1, i32 0, i32 70, i32 4
  %17 = ptrtoint ptr %arrayidx36.4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx36.4, align 4
  %tobool38.not.4 = icmp eq ptr %18, null
  br i1 %tobool38.not.4, label %if.end40.3.if.end56_crit_edge, label %if.end40.4

if.end40.3.if.end56_crit_edge:                    ; preds = %if.end40.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

if.end40.4:                                       ; preds = %if.end40.3
  %arrayidx36.5 = getelementptr %struct.radeon_device, ptr %1, i32 0, i32 70, i32 5
  %19 = ptrtoint ptr %arrayidx36.5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx36.5, align 4
  %tobool38.not.5 = icmp eq ptr %20, null
  br i1 %tobool38.not.5, label %if.end40.4.if.end56_crit_edge, label %if.end40.5

if.end40.4.if.end56_crit_edge:                    ; preds = %if.end40.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

if.end40.5:                                       ; preds = %if.end40.4
  %arrayidx36.6 = getelementptr %struct.radeon_device, ptr %1, i32 0, i32 70, i32 6
  %21 = ptrtoint ptr %arrayidx36.6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx36.6, align 4
  %tobool38.not.6 = icmp eq ptr %22, null
  br i1 %tobool38.not.6, label %if.end40.5.if.end56_crit_edge, label %if.end40.6

if.end40.5.if.end56_crit_edge:                    ; preds = %if.end40.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

if.end40.6:                                       ; preds = %if.end40.5
  %23 = ptrtoint ptr %uglygep to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %uglygep, align 4
  %tobool38.not.7 = icmp eq ptr %24, null
  br i1 %tobool38.not.7, label %if.end40.6.if.end56_crit_edge, label %if.then47

if.end40.6.if.end56_crit_edge:                    ; preds = %if.end40.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

if.then47:                                        ; preds = %if.end40.6
  %pin_count.6 = getelementptr inbounds %struct.radeon_bo, ptr %22, i32 0, i32 4, i32 13
  %25 = ptrtoint ptr %pin_count.6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pin_count.6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp43.6 = icmp eq i32 %26, 0
  %pin_count.5 = getelementptr inbounds %struct.radeon_bo, ptr %20, i32 0, i32 4, i32 13
  %27 = ptrtoint ptr %pin_count.5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pin_count.5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp43.5 = icmp eq i32 %28, 0
  %pin_count.4 = getelementptr inbounds %struct.radeon_bo, ptr %18, i32 0, i32 4, i32 13
  %29 = ptrtoint ptr %pin_count.4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pin_count.4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp43.4 = icmp eq i32 %30, 0
  %pin_count.3 = getelementptr inbounds %struct.radeon_bo, ptr %16, i32 0, i32 4, i32 13
  %31 = ptrtoint ptr %pin_count.3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pin_count.3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp43.3 = icmp eq i32 %32, 0
  %pin_count.2 = getelementptr inbounds %struct.radeon_bo, ptr %14, i32 0, i32 4, i32 13
  %33 = ptrtoint ptr %pin_count.2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pin_count.2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp43.2 = icmp eq i32 %34, 0
  %pin_count.1 = getelementptr inbounds %struct.radeon_bo, ptr %12, i32 0, i32 4, i32 13
  %35 = ptrtoint ptr %pin_count.1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pin_count.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp43.1 = icmp eq i32 %36, 0
  %pin_count = getelementptr inbounds %struct.radeon_bo, ptr %10, i32 0, i32 4, i32 13
  %37 = ptrtoint ptr %pin_count to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pin_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp43 = icmp ne i32 %38, 0
  %spec.select = sext i1 %cmp43 to i32
  %spec.select.1 = select i1 %cmp43.1, i32 1, i32 %spec.select
  %spec.select.2 = select i1 %cmp43.2, i32 2, i32 %spec.select.1
  %spec.select.3 = select i1 %cmp43.3, i32 3, i32 %spec.select.2
  %spec.select.4 = select i1 %cmp43.4, i32 4, i32 %spec.select.3
  %spec.select.5 = select i1 %cmp43.5, i32 5, i32 %spec.select.4
  %spec.select.6 = select i1 %cmp43.6, i32 6, i32 %spec.select.5
  %pin_count.7 = getelementptr inbounds %struct.radeon_bo, ptr %24, i32 0, i32 4, i32 13
  %39 = ptrtoint ptr %pin_count.7 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pin_count.7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp43.7 = icmp eq i32 %40, 0
  %spec.select.7 = select i1 %cmp43.7, i32 7, i32 %spec.select.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %spec.select.7)
  %cmp48 = icmp eq i32 %spec.select.7, -1
  br i1 %cmp48, label %if.then47.cleanup_crit_edge, label %if.end50

if.then47.cleanup_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end50:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx52 = getelementptr %struct.radeon_device, ptr %1, i32 0, i32 70, i32 %spec.select.7
  %41 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx52, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.15, i32 noundef %spec.select.7, ptr noundef %42) #11
  %tbo54 = getelementptr inbounds %struct.radeon_bo, ptr %42, i32 0, i32 4
  tail call void @ttm_bo_unmap_virtual(ptr noundef %tbo54) #11
  %surface_reg55 = getelementptr inbounds %struct.radeon_bo, ptr %42, i32 0, i32 10
  %43 = ptrtoint ptr %surface_reg55 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %surface_reg55, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.end50, %if.end40.6.if.end56_crit_edge, %if.end40.5.if.end56_crit_edge, %if.end40.4.if.end56_crit_edge, %if.end40.3.if.end56_crit_edge, %if.end40.2.if.end56_crit_edge, %if.end40.1.if.end56_crit_edge, %if.end40.if.end56_crit_edge, %for.body.preheader.if.end56_crit_edge
  %reg.2 = phi ptr [ %arrayidx52, %if.end50 ], [ %arrayidx36, %for.body.preheader.if.end56_crit_edge ], [ %arrayidx36.1, %if.end40.if.end56_crit_edge ], [ %arrayidx36.2, %if.end40.1.if.end56_crit_edge ], [ %arrayidx36.3, %if.end40.2.if.end56_crit_edge ], [ %arrayidx36.4, %if.end40.3.if.end56_crit_edge ], [ %arrayidx36.5, %if.end40.4.if.end56_crit_edge ], [ %arrayidx36.6, %if.end40.5.if.end56_crit_edge ], [ %uglygep, %if.end40.6.if.end56_crit_edge ]
  %i.1 = phi i32 [ %spec.select.7, %if.end50 ], [ 0, %for.body.preheader.if.end56_crit_edge ], [ 1, %if.end40.if.end56_crit_edge ], [ 2, %if.end40.1.if.end56_crit_edge ], [ 3, %if.end40.2.if.end56_crit_edge ], [ 4, %if.end40.3.if.end56_crit_edge ], [ 5, %if.end40.4.if.end56_crit_edge ], [ 6, %if.end40.5.if.end56_crit_edge ], [ 7, %if.end40.6.if.end56_crit_edge ]
  %44 = ptrtoint ptr %surface_reg to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %i.1, ptr %surface_reg, align 8
  %45 = ptrtoint ptr %reg.2 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %bo, ptr %reg.2, align 4
  br label %out

out:                                              ; preds = %if.end56, %if.end28.out_crit_edge
  %i.2 = phi i32 [ %i.1, %if.end56 ], [ %8, %if.end28.out_crit_edge ]
  %asic = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 56
  %46 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %asic, align 8
  %surface = getelementptr inbounds %struct.radeon_asic, ptr %47, i32 0, i32 18
  %48 = ptrtoint ptr %surface to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %surface, align 4
  %50 = ptrtoint ptr %tiling_flags to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tiling_flags, align 8
  %pitch = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 9
  %52 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pitch, align 4
  %resource = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 6
  %54 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %resource, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 4
  %shl = shl i32 %57, 12
  %size = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 0, i32 5
  %58 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %size, align 8
  %call63 = tail call i32 %49(ptr noundef %1, i32 noundef %i.2, i32 noundef %51, i32 noundef %53, i32 noundef %shl, i32 noundef %59) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then47.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %out ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %if.then47.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_unmap_virtual(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_bo_set_tiling_flags(ptr noundef %bo, i32 noundef %tiling_flags, i32 noundef %pitch) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rdev1 = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 13
  %0 = ptrtoint ptr %rdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev1, align 8
  %family = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %3)
  %cmp = icmp ugt i32 %3, 38
  br i1 %cmp, label %if.then, label %entry.if.end25_crit_edge

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then:                                          ; preds = %entry
  %shr = lshr i32 %tiling_flags, 8
  %and = and i32 %shr, 15
  %shr4 = lshr i32 %tiling_flags, 16
  %and5 = and i32 %shr4, 15
  %4 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %and, label %if.then.cleanup32_crit_edge [
    i32 0, label %if.then.sw.epilog_crit_edge
    i32 1, label %if.then.sw.epilog_crit_edge47
    i32 2, label %if.then.sw.epilog_crit_edge48
    i32 4, label %if.then.sw.epilog_crit_edge49
    i32 8, label %if.then.sw.epilog_crit_edge50
  ]

if.then.sw.epilog_crit_edge50:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then.sw.epilog_crit_edge49:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then.sw.epilog_crit_edge48:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then.sw.epilog_crit_edge47:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then.cleanup32_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup32

sw.epilog:                                        ; preds = %if.then.sw.epilog_crit_edge, %if.then.sw.epilog_crit_edge47, %if.then.sw.epilog_crit_edge48, %if.then.sw.epilog_crit_edge49, %if.then.sw.epilog_crit_edge50
  %shr2 = lshr i32 %tiling_flags, 12
  %and3 = and i32 %shr2, 15
  %5 = zext i32 %and3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %and3, label %sw.epilog.cleanup32_crit_edge [
    i32 0, label %sw.epilog.sw.epilog12_crit_edge
    i32 1, label %sw.epilog.sw.epilog12_crit_edge51
    i32 2, label %sw.epilog.sw.epilog12_crit_edge52
    i32 4, label %sw.epilog.sw.epilog12_crit_edge53
    i32 8, label %sw.epilog.sw.epilog12_crit_edge54
  ]

sw.epilog.sw.epilog12_crit_edge54:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog12

sw.epilog.sw.epilog12_crit_edge53:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog12

sw.epilog.sw.epilog12_crit_edge52:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog12

sw.epilog.sw.epilog12_crit_edge51:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog12

sw.epilog.sw.epilog12_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog12

sw.epilog.cleanup32_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup32

sw.epilog12:                                      ; preds = %sw.epilog.sw.epilog12_crit_edge, %sw.epilog.sw.epilog12_crit_edge51, %sw.epilog.sw.epilog12_crit_edge52, %sw.epilog.sw.epilog12_crit_edge53, %sw.epilog.sw.epilog12_crit_edge54
  %6 = zext i32 %and5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %and5, label %sw.epilog12.cleanup32_crit_edge [
    i32 0, label %sw.epilog12.sw.epilog15_crit_edge
    i32 1, label %sw.epilog12.sw.epilog15_crit_edge55
    i32 2, label %sw.epilog12.sw.epilog15_crit_edge56
    i32 4, label %sw.epilog12.sw.epilog15_crit_edge57
    i32 8, label %sw.epilog12.sw.epilog15_crit_edge58
  ]

sw.epilog12.sw.epilog15_crit_edge58:              ; preds = %sw.epilog12
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog15

sw.epilog12.sw.epilog15_crit_edge57:              ; preds = %sw.epilog12
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog15

sw.epilog12.sw.epilog15_crit_edge56:              ; preds = %sw.epilog12
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog15

sw.epilog12.sw.epilog15_crit_edge55:              ; preds = %sw.epilog12
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog15

sw.epilog12.sw.epilog15_crit_edge:                ; preds = %sw.epilog12
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog15

sw.epilog12.cleanup32_crit_edge:                  ; preds = %sw.epilog12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup32

sw.epilog15:                                      ; preds = %sw.epilog12.sw.epilog15_crit_edge, %sw.epilog12.sw.epilog15_crit_edge55, %sw.epilog12.sw.epilog15_crit_edge56, %sw.epilog12.sw.epilog15_crit_edge57, %sw.epilog12.sw.epilog15_crit_edge58
  %7 = and i32 %tiling_flags, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 100663297, i32 %7)
  %cmp16 = icmp ult i32 %7, 100663297
  call void @__sanitizer_cov_trace_const_cmp4(i32 1879048192, i32 %tiling_flags)
  %cmp18 = icmp ult i32 %tiling_flags, 1879048192
  %or.cond = and i1 %cmp18, %cmp16
  br i1 %or.cond, label %sw.epilog15.if.end25_crit_edge, label %sw.epilog15.cleanup32_crit_edge

sw.epilog15.cleanup32_crit_edge:                  ; preds = %sw.epilog15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup32

sw.epilog15.if.end25_crit_edge:                   ; preds = %sw.epilog15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.end25:                                         ; preds = %sw.epilog15.if.end25_crit_edge, %entry.if.end25_crit_edge
  %resv32.i.i = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 0, i32 9
  %8 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %9, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %retval.1.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %10 = zext i32 %retval.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %retval.1.i.i, label %do.end.i [
    i32 0, label %if.end29
    i32 -512, label %if.end25.cleanup32_crit_edge
  ], !prof !78

if.end25.cleanup32_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup32

do.end.i:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %rdev1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rdev1, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.21, ptr noundef %bo) #15
  br label %cleanup32

if.end29:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %tiling_flags30 = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 8
  %15 = ptrtoint ptr %tiling_flags30 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %tiling_flags, ptr %tiling_flags30, align 8
  %pitch31 = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 9
  %16 = ptrtoint ptr %pitch31 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %pitch, ptr %pitch31, align 4
  %tbo.i = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4
  %bdev.i.i.i = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %18, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #11
  %resource.i.i.i = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 6
  %19 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %resource.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i, ptr noundef %20, ptr noundef null) #11
  %21 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %22, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #11
  %23 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %resv32.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %24) #11
  tail call void @ww_mutex_unlock(ptr noundef %24) #11
  br label %cleanup32

cleanup32:                                        ; preds = %if.end29, %do.end.i, %if.end25.cleanup32_crit_edge, %sw.epilog15.cleanup32_crit_edge, %sw.epilog12.cleanup32_crit_edge, %sw.epilog.cleanup32_crit_edge, %if.then.cleanup32_crit_edge
  %retval.1 = phi i32 [ 0, %if.end29 ], [ %retval.1.i.i, %do.end.i ], [ -22, %if.then.cleanup32_crit_edge ], [ -22, %sw.epilog.cleanup32_crit_edge ], [ -22, %sw.epilog12.cleanup32_crit_edge ], [ -22, %sw.epilog15.cleanup32_crit_edge ], [ %retval.1.i.i, %if.end25.cleanup32_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_bo_get_tiling_flags(ptr nocapture noundef readonly %bo, ptr noundef writeonly %tiling_flags, ptr noundef writeonly %pitch) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs:                                         ; preds = %entry
  %resv = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 0, i32 9
  %1 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %resv, align 8
  %dep_map = getelementptr inbounds %struct.mutex, ptr %2, i32 0, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !72

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 690, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool25.not = icmp eq ptr %tiling_flags, null
  br i1 %tobool25.not, label %if.end.if.end28_crit_edge, label %if.then26

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %tiling_flags27 = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 8
  %3 = ptrtoint ptr %tiling_flags27 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tiling_flags27, align 8
  %5 = ptrtoint ptr %tiling_flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %tiling_flags, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end.if.end28_crit_edge
  %tobool29.not = icmp eq ptr %pitch, null
  br i1 %tobool29.not, label %if.end28.if.end32_crit_edge, label %if.then30

if.end28.if.end32_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %pitch31 = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 9
  %6 = ptrtoint ptr %pitch31 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pitch31, align 4
  %8 = ptrtoint ptr %pitch to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %pitch, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end28.if.end32_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_bo_move_notify(ptr noundef %bo, i32 noundef %old_type, ptr noundef readonly %new_mem) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bdev.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 1
  %0 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev.i, align 8
  %call.i = tail call ptr @radeon_get_rdev(ptr noundef %1) #11
  %2 = zext i32 %old_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %old_type, label %entry.radeon_update_memory_usage.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb5.i
  ]

entry.radeon_update_memory_usage.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_update_memory_usage.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %size.i = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 5
  %3 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size.i, align 8
  %conv.i = zext i32 %4 to i64
  %gtt_usage.i = getelementptr inbounds %struct.radeon_device, ptr %call.i, i32 0, i32 103
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %gtt_usage.i, i32 noundef 8) #11
  tail call void @generic_atomic64_sub(i64 noundef %conv.i, ptr noundef %gtt_usage.i) #11
  br label %radeon_update_memory_usage.exit

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %size10.i = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 5
  %5 = ptrtoint ptr %size10.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size10.i, align 8
  %conv11.i = zext i32 %6 to i64
  %vram_usage.i = getelementptr inbounds %struct.radeon_device, ptr %call.i, i32 0, i32 102
  %call.i.i27.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %vram_usage.i, i32 noundef 8) #11
  tail call void @generic_atomic64_sub(i64 noundef %conv11.i, ptr noundef %vram_usage.i) #11
  br label %radeon_update_memory_usage.exit

radeon_update_memory_usage.exit:                  ; preds = %sw.bb5.i, %sw.bb.i, %entry.radeon_update_memory_usage.exit_crit_edge
  %tobool.not = icmp eq ptr %new_mem, null
  br i1 %tobool.not, label %radeon_update_memory_usage.exit.if.end_crit_edge, label %if.then

radeon_update_memory_usage.exit.if.end_crit_edge: ; preds = %radeon_update_memory_usage.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %radeon_update_memory_usage.exit
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %new_mem, i32 0, i32 2
  %7 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mem_type, align 4
  %9 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bdev.i, align 8
  %call.i11 = tail call ptr @radeon_get_rdev(ptr noundef %10) #11
  %11 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %8, label %if.then.if.end_crit_edge [
    i32 1, label %sw.bb.i16
    i32 2, label %sw.bb5.i21
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

sw.bb.i16:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %size.i12 = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 5
  %12 = ptrtoint ptr %size.i12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size.i12, align 8
  %conv.i13 = zext i32 %13 to i64
  %gtt_usage.i14 = getelementptr inbounds %struct.radeon_device, ptr %call.i11, i32 0, i32 103
  %call.i.i.i15 = tail call zeroext i1 @__kasan_check_write(ptr noundef %gtt_usage.i14, i32 noundef 8) #11
  tail call void @generic_atomic64_add(i64 noundef %conv.i13, ptr noundef %gtt_usage.i14) #11
  br label %if.end

sw.bb5.i21:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %size10.i17 = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 5
  %14 = ptrtoint ptr %size10.i17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size10.i17, align 8
  %conv11.i18 = zext i32 %15 to i64
  %vram_usage.i19 = getelementptr inbounds %struct.radeon_device, ptr %call.i11, i32 0, i32 102
  %call.i.i27.i20 = tail call zeroext i1 @__kasan_check_write(ptr noundef %vram_usage.i19, i32 noundef 8) #11
  tail call void @generic_atomic64_add(i64 noundef %conv11.i18, ptr noundef %vram_usage.i19) #11
  br label %if.end

if.end:                                           ; preds = %sw.bb5.i21, %sw.bb.i16, %if.then.if.end_crit_edge, %radeon_update_memory_usage.exit.if.end_crit_edge
  %destroy.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 4
  %16 = ptrtoint ptr %destroy.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %destroy.i, align 4
  %cmp.i = icmp eq ptr %17, @radeon_ttm_bo_destroy
  br i1 %cmp.i, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %bo, i32 -96
  %tiling_flags69.i = getelementptr i8, ptr %bo, i32 440
  %18 = ptrtoint ptr %tiling_flags69.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tiling_flags69.i, align 8
  %and70.i = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.i)
  %tobool29.not71.i = icmp eq i32 %and70.i, 0
  br i1 %tobool29.not71.i, label %if.end2.radeon_bo_check_tiling.exit_crit_edge, label %if.then33.i

if.end2.radeon_bo_check_tiling.exit_crit_edge:    ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_bo_check_tiling.exit

if.then33.i:                                      ; preds = %if.end2
  %surface_reg.i.i = getelementptr i8, ptr %bo, i32 448
  %20 = ptrtoint ptr %surface_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %surface_reg.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp.i.i = icmp eq i32 %21, -1
  br i1 %cmp.i.i, label %if.then33.i.radeon_bo_check_tiling.exit_crit_edge, label %if.end.i.i

if.then33.i.radeon_bo_check_tiling.exit_crit_edge: ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_bo_check_tiling.exit

if.end.i.i:                                       ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #13
  %rdev1.i.i = getelementptr i8, ptr %bo, i32 464
  %22 = ptrtoint ptr %rdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rdev1.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.radeon_device, ptr %23, i32 0, i32 70, i32 %21
  %asic.i.i = getelementptr inbounds %struct.radeon_device, ptr %23, i32 0, i32 56
  %24 = ptrtoint ptr %asic.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %asic.i.i, align 8
  %clear_reg.i.i = getelementptr inbounds %struct.radeon_asic, ptr %25, i32 0, i32 18, i32 1
  %26 = ptrtoint ptr %clear_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clear_reg.i.i, align 4
  tail call void %27(ptr noundef %23, i32 noundef %21) #11
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %arrayidx.i.i, align 4
  %29 = ptrtoint ptr %surface_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %surface_reg.i.i, align 8
  br label %radeon_bo_check_tiling.exit

radeon_bo_check_tiling.exit:                      ; preds = %if.end.i.i, %if.then33.i.radeon_bo_check_tiling.exit_crit_edge, %if.end2.radeon_bo_check_tiling.exit_crit_edge
  %rdev = getelementptr i8, ptr %bo, i32 464
  %30 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rdev, align 8
  tail call void @radeon_vm_bo_invalidate(ptr noundef %31, ptr noundef %add.ptr) #11
  br label %cleanup

cleanup:                                          ; preds = %radeon_bo_check_tiling.exit, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_vm_bo_invalidate(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_bo_fault_reserve_notify(ptr noundef %bo) local_unnamed_addr #1 align 64 {
entry:
  %ctx = alloca %struct.ttm_operation_ctx, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ctx) #11
  %0 = call ptr @memset(ptr %ctx, i32 0, i32 24)
  %destroy.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 4
  %1 = ptrtoint ptr %destroy.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %destroy.i, align 4
  %cmp.i = icmp eq ptr %2, @radeon_ttm_bo_destroy
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %bo, i32 -96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %3 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not.i = icmp eq i32 %3, 0
  br i1 %tobool2.not.i, label %if.end.if.end28.i_crit_edge, label %land.rhs.i

if.end.if.end28.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i

land.rhs.i:                                       ; preds = %if.end
  %resv.i = getelementptr i8, ptr %bo, i32 200
  %4 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resv.i, align 8
  %dep_map.i = getelementptr inbounds %struct.mutex, ptr %5, i32 0, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end28.i_crit_edge, !prof !72

land.rhs.i.if.end28.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 702, i32 noundef 9, ptr noundef null) #11
  br label %if.end28.i

if.end28.i:                                       ; preds = %do.end.i, %land.rhs.i.if.end28.i_crit_edge, %if.end.if.end28.i_crit_edge
  %tiling_flags.i = getelementptr i8, ptr %bo, i32 440
  %6 = ptrtoint ptr %tiling_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tiling_flags.i, align 8
  %and.i = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool29.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool29.not.i, label %if.end28.i.radeon_bo_check_tiling.exit_crit_edge, label %if.end34.i

if.end28.i.radeon_bo_check_tiling.exit_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_bo_check_tiling.exit

if.end34.i:                                       ; preds = %if.end28.i
  %resource.i = getelementptr i8, ptr %bo, i32 372
  %8 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resource.i, align 4
  %mem_type.i = getelementptr inbounds %struct.ttm_resource, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %mem_type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mem_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp36.not.i = icmp eq i32 %11, 2
  br i1 %cmp36.not.i, label %if.end44.i, label %if.end34.i.radeon_bo_check_tiling.exit_crit_edge

if.end34.i.radeon_bo_check_tiling.exit_crit_edge: ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_bo_check_tiling.exit

if.end44.i:                                       ; preds = %if.end34.i
  %surface_reg45.i = getelementptr i8, ptr %bo, i32 448
  %12 = ptrtoint ptr %surface_reg45.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %surface_reg45.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp46.i = icmp slt i32 %13, 0
  br i1 %cmp46.i, label %if.end49.i, label %if.end44.i.radeon_bo_check_tiling.exit_crit_edge

if.end44.i.radeon_bo_check_tiling.exit_crit_edge: ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_bo_check_tiling.exit

if.end49.i:                                       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #13
  %call50.i = tail call i32 @radeon_bo_get_surface_reg(ptr noundef %add.ptr) #11
  br label %radeon_bo_check_tiling.exit

radeon_bo_check_tiling.exit:                      ; preds = %if.end49.i, %if.end44.i.radeon_bo_check_tiling.exit_crit_edge, %if.end34.i.radeon_bo_check_tiling.exit_crit_edge, %if.end28.i.radeon_bo_check_tiling.exit_crit_edge
  %resource = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 6
  %14 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %resource, align 4
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mem_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp.not = icmp eq i32 %17, 2
  br i1 %cmp.not, label %if.end4, label %radeon_bo_check_tiling.exit.cleanup_crit_edge

radeon_bo_check_tiling.exit.cleanup_crit_edge:    ; preds = %radeon_bo_check_tiling.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %radeon_bo_check_tiling.exit
  %rdev2 = getelementptr i8, ptr %bo, i32 464
  %18 = ptrtoint ptr %rdev2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rdev2, align 8
  %num_pages = getelementptr inbounds %struct.ttm_resource, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_pages, align 4
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %15, align 4
  %24 = add i32 %23, %21
  %add = shl i32 %24, 12
  %conv = zext i32 %add to i64
  %visible_vram_size = getelementptr inbounds %struct.radeon_device, ptr %19, i32 0, i32 42, i32 4
  %25 = ptrtoint ptr %visible_vram_size to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %visible_vram_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %conv)
  %cmp8.not = icmp ult i64 %26, %conv
  br i1 %cmp8.not, label %if.end11, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %if.end4
  %pin_count = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 13
  %27 = ptrtoint ptr %pin_count to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pin_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp12.not = icmp eq i32 %28, 0
  br i1 %cmp12.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %placements.i = getelementptr i8, ptr %bo, i32 -84
  %placement.i = getelementptr i8, ptr %bo, i32 -20
  %placement1.i = getelementptr i8, ptr %bo, i32 -16
  %29 = ptrtoint ptr %placement1.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %placements.i, ptr %placement1.i, align 4
  %busy_placement.i = getelementptr i8, ptr %bo, i32 -8
  %30 = ptrtoint ptr %busy_placement.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %placements.i, ptr %busy_placement.i, align 4
  %flags.i = getelementptr i8, ptr %bo, i32 432
  %31 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags.i, align 8
  %and5.i = and i32 %32, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.end15.if.end.i_crit_edge, label %land.lhs.true.i

if.end15.if.end.i_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end15
  %33 = ptrtoint ptr %rdev2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rdev2, align 8
  %visible_vram_size.i = getelementptr inbounds %struct.radeon_device, ptr %34, i32 0, i32 42, i32 4
  %35 = ptrtoint ptr %visible_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %visible_vram_size.i, align 8
  %real_vram_size.i = getelementptr inbounds %struct.radeon_device, ptr %34, i32 0, i32 42, i32 11
  %37 = ptrtoint ptr %real_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %real_vram_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %36, i64 %38)
  %cmp.i132 = icmp ult i64 %36, %38
  br i1 %cmp.i132, label %if.then9.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then9.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %shr.i = lshr i64 %36, 12
  %conv.i = trunc i64 %shr.i to i32
  %39 = ptrtoint ptr %placements.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv.i, ptr %placements.i, align 4
  %mem_type.i133 = getelementptr i8, ptr %bo, i32 -76
  %40 = ptrtoint ptr %mem_type.i133 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %mem_type.i133, align 4
  %flags18.i = getelementptr i8, ptr %bo, i32 -72
  %41 = ptrtoint ptr %flags18.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %flags18.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then9.i, %land.lhs.true.i.if.end.i_crit_edge, %if.end15.if.end.i_crit_edge
  %exitcond.not.i = phi i1 [ false, %if.then9.i ], [ true, %land.lhs.true.i.if.end.i_crit_edge ], [ true, %if.end15.if.end.i_crit_edge ]
  %c.0.i = phi i32 [ 1, %if.then9.i ], [ 0, %land.lhs.true.i.if.end.i_crit_edge ], [ 0, %if.end15.if.end.i_crit_edge ]
  %arrayidx20.i = getelementptr %struct.radeon_bo, ptr %add.ptr, i32 0, i32 2, i32 %c.0.i
  %42 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %arrayidx20.i, align 4
  %mem_type24.i = getelementptr %struct.radeon_bo, ptr %add.ptr, i32 0, i32 2, i32 %c.0.i, i32 2
  %43 = ptrtoint ptr %mem_type24.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2, ptr %mem_type24.i, align 4
  %inc26.i = add nuw nsw i32 %c.0.i, 1
  %flags28.i = getelementptr %struct.radeon_bo, ptr %add.ptr, i32 0, i32 2, i32 %c.0.i, i32 3
  %44 = ptrtoint ptr %flags28.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %flags28.i, align 4
  %45 = ptrtoint ptr %placement.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %inc26.i, ptr %placement.i, align 4
  %num_busy_placement.i = getelementptr i8, ptr %bo, i32 -12
  %46 = ptrtoint ptr %num_busy_placement.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %inc26.i, ptr %num_busy_placement.i, align 4
  %47 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags.i, align 8
  %and76.i = and i32 %48, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76.i)
  %tobool77.not.i = icmp eq i32 %and76.i, 0
  br i1 %tobool77.not.i, label %if.end.i.for.inc.i_crit_edge, label %land.lhs.true78.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true78.i:                                ; preds = %if.end.i
  %mem_type81.i = getelementptr i8, ptr %bo, i32 -76
  %49 = ptrtoint ptr %mem_type81.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mem_type81.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %cmp82.i = icmp eq i32 %50, 2
  br i1 %cmp82.i, label %land.lhs.true84.i, label %land.lhs.true78.i.for.inc.i_crit_edge

land.lhs.true78.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true78.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true84.i:                                ; preds = %land.lhs.true78.i
  %arrayidx80.i = getelementptr i8, ptr %bo, i32 -84
  %51 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx80.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool88.not.i = icmp eq i32 %52, 0
  br i1 %tobool88.not.i, label %if.then89.i, label %land.lhs.true84.i.for.inc.i_crit_edge

land.lhs.true84.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true84.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then89.i:                                      ; preds = %land.lhs.true84.i
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %rdev2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rdev2, align 8
  %visible_vram_size92.i = getelementptr inbounds %struct.radeon_device, ptr %54, i32 0, i32 42, i32 4
  %55 = ptrtoint ptr %visible_vram_size92.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %visible_vram_size92.i, align 8
  %shr93.i = lshr i64 %56, 12
  %conv94.i = trunc i64 %shr93.i to i32
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then89.i, %land.lhs.true84.i.for.inc.i_crit_edge, %land.lhs.true78.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge
  %conv94.sink.i = phi i32 [ %conv94.i, %if.then89.i ], [ 0, %land.lhs.true84.i.for.inc.i_crit_edge ], [ 0, %land.lhs.true78.i.for.inc.i_crit_edge ], [ 0, %if.end.i.for.inc.i_crit_edge ]
  %lpfn.i = getelementptr i8, ptr %bo, i32 -80
  %57 = ptrtoint ptr %lpfn.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %conv94.sink.i, ptr %lpfn.i, align 4
  br i1 %exitcond.not.i, label %for.inc.i.radeon_ttm_placement_from_domain.exit_crit_edge, label %for.body.i.1

for.inc.i.radeon_ttm_placement_from_domain.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_ttm_placement_from_domain.exit

for.body.i.1:                                     ; preds = %for.inc.i
  %58 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %flags.i, align 8
  %and76.i.1 = and i32 %59, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76.i.1)
  %tobool77.not.i.1 = icmp eq i32 %and76.i.1, 0
  br i1 %tobool77.not.i.1, label %for.body.i.1.for.inc.i.1_crit_edge, label %land.lhs.true78.i.1

for.body.i.1.for.inc.i.1_crit_edge:               ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.1

land.lhs.true78.i.1:                              ; preds = %for.body.i.1
  %mem_type81.i.1 = getelementptr i8, ptr %bo, i32 -60
  %60 = ptrtoint ptr %mem_type81.i.1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %mem_type81.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %61)
  %cmp82.i.1 = icmp eq i32 %61, 2
  br i1 %cmp82.i.1, label %land.lhs.true84.i.1, label %land.lhs.true78.i.1.for.inc.i.1_crit_edge

land.lhs.true78.i.1.for.inc.i.1_crit_edge:        ; preds = %land.lhs.true78.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.1

land.lhs.true84.i.1:                              ; preds = %land.lhs.true78.i.1
  %arrayidx80.i.1 = getelementptr i8, ptr %bo, i32 -68
  %62 = ptrtoint ptr %arrayidx80.i.1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx80.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool88.not.i.1 = icmp eq i32 %63, 0
  br i1 %tobool88.not.i.1, label %if.then89.i.1, label %land.lhs.true84.i.1.for.inc.i.1_crit_edge

land.lhs.true84.i.1.for.inc.i.1_crit_edge:        ; preds = %land.lhs.true84.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.1

if.then89.i.1:                                    ; preds = %land.lhs.true84.i.1
  call void @__sanitizer_cov_trace_pc() #13
  %64 = ptrtoint ptr %rdev2 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rdev2, align 8
  %visible_vram_size92.i.1 = getelementptr inbounds %struct.radeon_device, ptr %65, i32 0, i32 42, i32 4
  %66 = ptrtoint ptr %visible_vram_size92.i.1 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %visible_vram_size92.i.1, align 8
  %shr93.i.1 = lshr i64 %67, 12
  %conv94.i.1 = trunc i64 %shr93.i.1 to i32
  br label %for.inc.i.1

for.inc.i.1:                                      ; preds = %if.then89.i.1, %land.lhs.true84.i.1.for.inc.i.1_crit_edge, %land.lhs.true78.i.1.for.inc.i.1_crit_edge, %for.body.i.1.for.inc.i.1_crit_edge
  %conv94.sink.i.1 = phi i32 [ %conv94.i.1, %if.then89.i.1 ], [ 0, %land.lhs.true84.i.1.for.inc.i.1_crit_edge ], [ 0, %land.lhs.true78.i.1.for.inc.i.1_crit_edge ], [ 0, %for.body.i.1.for.inc.i.1_crit_edge ]
  %lpfn.i.1 = getelementptr i8, ptr %bo, i32 -64
  %68 = ptrtoint ptr %lpfn.i.1 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %conv94.sink.i.1, ptr %lpfn.i.1, align 4
  br label %radeon_ttm_placement_from_domain.exit

radeon_ttm_placement_from_domain.exit:            ; preds = %for.inc.i.1, %for.inc.i.radeon_ttm_placement_from_domain.exit_crit_edge
  %69 = ptrtoint ptr %visible_vram_size to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %visible_vram_size, align 8
  %shr = lshr i64 %70, 12
  %conv18 = trunc i64 %shr to i32
  %71 = ptrtoint ptr %placement.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %placement.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp19135.not = icmp eq i32 %72, 0
  br i1 %cmp19135.not, label %radeon_ttm_placement_from_domain.exit.for.end_crit_edge, label %radeon_ttm_placement_from_domain.exit.for.body_crit_edge

radeon_ttm_placement_from_domain.exit.for.body_crit_edge: ; preds = %radeon_ttm_placement_from_domain.exit
  br label %for.body

radeon_ttm_placement_from_domain.exit.for.end_crit_edge: ; preds = %radeon_ttm_placement_from_domain.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %radeon_ttm_placement_from_domain.exit.for.body_crit_edge
  %i.0136 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %radeon_ttm_placement_from_domain.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x %struct.ttm_place], ptr %placements.i, i32 0, i32 %i.0136
  %mem_type21 = getelementptr inbounds %struct.ttm_place, ptr %arrayidx, i32 0, i32 2
  %73 = ptrtoint ptr %mem_type21 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %mem_type21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %74)
  %cmp22 = icmp eq i32 %74, 2
  br i1 %cmp22, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %lpfn26 = getelementptr inbounds %struct.ttm_place, ptr %arrayidx, i32 0, i32 1
  %75 = ptrtoint ptr %lpfn26 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %lpfn26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.not = icmp eq i32 %76, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %conv18)
  %cmp30 = icmp ugt i32 %76, %conv18
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp30
  br i1 %or.cond, label %if.then32, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then32:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %77 = ptrtoint ptr %lpfn26 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %conv18, ptr %lpfn26, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then32, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0136, 1
  %exitcond.not = icmp eq i32 %inc, %72
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %radeon_ttm_placement_from_domain.exit.for.end_crit_edge
  %call38 = call i32 @ttm_bo_validate(ptr noundef %bo, ptr noundef %placement.i, ptr noundef nonnull %ctx) #11
  %78 = zext i32 %call38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %call38, label %for.end.if.end68_crit_edge [
    i32 -12, label %if.then43
    i32 0, label %if.then55
  ], !prof !79

for.end.if.end68_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

if.then43:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @radeon_ttm_placement_from_domain(ptr noundef %add.ptr, i32 noundef 2)
  %call45 = call i32 @ttm_bo_validate(ptr noundef %bo, ptr noundef %placement.i, ptr noundef nonnull %ctx) #11
  br label %if.end68

if.then55:                                        ; preds = %for.end
  %79 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %resource, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %80, align 4
  %shl58131 = add i32 %82, %21
  %add59 = shl i32 %shl58131, 12
  %conv60 = zext i32 %add59 to i64
  %83 = ptrtoint ptr %visible_vram_size to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %visible_vram_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %84, i64 %conv60)
  %cmp63 = icmp ult i64 %84, %conv60
  br i1 %cmp63, label %if.then55.cleanup_crit_edge, label %if.then55.if.end90_crit_edge

if.then55.if.end90_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90

if.then55.cleanup_crit_edge:                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end68:                                         ; preds = %if.then43, %for.end.if.end68_crit_edge
  %r.0 = phi i32 [ %call45, %if.then43 ], [ %call38, %for.end.if.end68_crit_edge ]
  %85 = zext i32 %r.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %r.0, label %cleanup.fold.split [
    i32 -16, label %if.end68.cleanup_crit_edge
    i32 -512, label %if.end68.cleanup_crit_edge137
    i32 0, label %if.end68.if.end90_crit_edge
  ], !prof !80

if.end68.if.end90_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90

if.end68.cleanup_crit_edge137:                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end90:                                         ; preds = %if.end68.if.end90_crit_edge, %if.then55.if.end90_crit_edge
  call fastcc void @ttm_bo_move_to_lru_tail_unlocked(ptr noundef %bo)
  br label %cleanup

cleanup.fold.split:                               ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.fold.split, %if.end90, %if.end68.cleanup_crit_edge, %if.end68.cleanup_crit_edge137, %if.then55.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %radeon_bo_check_tiling.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end90 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %radeon_bo_check_tiling.exit.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ 2, %if.end11.cleanup_crit_edge ], [ 2, %if.then55.cleanup_crit_edge ], [ 256, %if.end68.cleanup_crit_edge ], [ 256, %if.end68.cleanup_crit_edge137 ], [ 2, %cleanup.fold.split ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ctx) #11
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ttm_bo_move_to_lru_tail_unlocked(ptr noundef %bo) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %bdev = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 1
  %0 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev, align 8
  %lru_lock = getelementptr inbounds %struct.ttm_device, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock) #11
  %resource = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 6
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resource, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %bo, ptr noundef %3, ptr noundef null) #11
  %4 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bdev, align 8
  %lru_lock2 = getelementptr inbounds %struct.ttm_device, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_bo_fence(ptr nocapture noundef readonly %bo, ptr noundef %fence, i1 noundef zeroext %shared) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %resv1 = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 0, i32 9
  %0 = ptrtoint ptr %resv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resv1, align 8
  br i1 %shared, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dma_resv_add_shared_fence(ptr noundef %1, ptr noundef %fence) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dma_resv_add_excl_fence(ptr noundef %1, ptr noundef %fence) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_add_shared_fence(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_add_excl_fence(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_prime_gem_destroy(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_radeon_bo_create(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radeon_get_rdev(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock_interruptible(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_reset_shared_max(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_sub(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_move_to_lru_tail(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #10

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

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !30, !32, !34, !35, !36, !37, !39, !40, !42, !44, !46, !48, !50, !51, !52, !53, !54}
!llvm.named.register.sp = !{!56}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/radeon_object.c", i32 313, i32 4}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/radeon/radeon_object.c", i32 346, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @radeon_bo_pin_restricted._entry, !4, !"_entry", i1 false, i1 false}
!9 = !{ptr @radeon_bo_pin_restricted._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/radeon/radeon_object.c", i32 393, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @radeon_bo_force_delete._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @radeon_bo_force_delete._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/radeon/radeon_object.c", i32 395, i32 3}
!17 = !{ptr @radeon_bo_force_delete._entry.7, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @radeon_bo_force_delete._entry_ptr.9, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/radeon/radeon_object.c", i32 417, i32 2}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @radeon_bo_init._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @radeon_bo_init._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/radeon/radeon_object.c", i32 420, i32 2}
!26 = !{ptr @radeon_bo_init._entry.12, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @radeon_bo_init._entry_ptr.14, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/radeon/radeon_object.c", i32 595, i32 3}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/radeon/radeon_object.c", i32 83, i32 2}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/radeon/radeon_trace.h", i32 15, i32 1}
!34 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!35 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!36 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../include/drm/ttm/ttm_bo_api.h", i32 551, i32 2}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../include/drm/ttm/ttm_bo_api.h", i32 552, i32 2}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../include/drm/ttm/ttm_bo_api.h", i32 565, i32 2}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../include/drm/ttm/ttm_bo_api.h", i32 569, i32 3}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/radeon/radeon_object.h", i32 71, i32 4}
!50 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @radeon_bo_reserve._entry, !49, !"_entry", i1 false, i1 false}
!53 = !{ptr @radeon_bo_reserve._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!54 = distinct !{null, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../include/drm/ttm/ttm_bo_driver.h", i32 140, i32 7}
!56 = !{!"sp"}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{!"branch_weights", i32 2000, i32 1}
!67 = !{i64 2148172326, i64 2148172331, i64 2148172344, i64 2148172388, i64 2148172422, i64 2148172443}
!68 = !{i64 2157704246}
!69 = !{i64 2157704445}
!70 = !{i64 2149341090}
!71 = !{i64 2149342126}
!72 = !{!"branch_weights", i32 1, i32 2000}
!73 = !{i64 2148442777, i64 2148442809, i64 2148442838, i64 2148442872, i64 2148442903, i64 2148442926}
!74 = !{i64 2148530778}
!75 = !{i64 2148445242, i64 2148445274, i64 2148445303, i64 2148445337, i64 2148445368, i64 2148445391}
!76 = !{i64 2150049596}
!77 = !{i8 0, i8 2}
!78 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!79 = !{!"branch_weights", i32 2000, i32 2001, i32 4000000}
!80 = !{!"branch_weights", i32 1, i32 2001, i32 2001, i32 2000}
