; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/radeon_benchmark.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/radeon_benchmark.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.radeon_bo = type { %struct.list_head, i32, [4 x %struct.ttm_place], %struct.ttm_placement, %struct.ttm_buffer_object, %struct.ttm_bo_kmap_obj, i32, ptr, i32, i32, i32, i32, %struct.list_head, ptr, i32, %struct.mmu_interval_notifier }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
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
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mmu_interval_notifier = type { %struct.interval_tree_node, ptr, ptr, %struct.hlist_node, i32 }
%struct.interval_tree_node = type { %struct.rb_node, i32, i32, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.88] }
%struct.anon.88 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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

@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Unknown benchmark\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dma\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"blit\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Error while benchmarking BO move.\0A\00", [61 x i8] zeroinitializer }, align 32
@radeon_bo_reserve._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 71, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%p reserve failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"radeon_bo_reserve\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/radeon/radeon_object.h\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@radeon_bo_reserve._entry_ptr = internal global ptr @radeon_bo_reserve._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Unknown copy method\0A\00", [43 x i8] zeroinitializer }, align 32
@radeon_benchmark_log_results._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.13, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"\016[drm] radeon: %s %u bo moves of %u kB from %d to %d in %u ms, throughput: %u Mb/s or %u MB/s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"radeon_benchmark_log_results\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/gpu/drm/radeon/radeon_benchmark.c\00", [54 x i8] zeroinitializer }, align 32
@radeon_benchmark_log_results._entry_ptr = internal global ptr @radeon_benchmark_log_results._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 247, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 130, i32 30 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 141, i32 30 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 163, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [42 x i8] c"../drivers/gpu/drm/radeon/radeon_object.h\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 71, i32 4 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 59, i32 4 }
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private constant [45 x i8] c"../drivers/gpu/drm/radeon/radeon_benchmark.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 81, i32 2 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @radeon_benchmark_log_results._entry, ptr @radeon_benchmark_log_results._entry_ptr, ptr @radeon_bo_reserve._entry, ptr @radeon_bo_reserve._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_bo_reserve._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_benchmark_log_results._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_benchmark(ptr noundef %rdev, i32 noundef %test_number) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %test_number to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %test_number, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %for.body.preheader
    i32 4, label %for.body6.preheader
    i32 5, label %for.body14.preheader
    i32 6, label %for.body22.preheader
    i32 7, label %for.body28.preheader
    i32 8, label %for.body36.preheader
  ]

for.body36.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 1228800, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 1382400, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 1920000, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 1628160, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 3145728, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 3538944, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 3686400, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 4096000, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 4372480, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 4915200, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 5242880, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 5184000, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 5880000, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 7056000, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 7680000, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 8294400, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 9216000, i32 noundef 4, i32 noundef 4)
  br label %sw.epilog

for.body28.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 1228800, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 1382400, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 1920000, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 1628160, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 3145728, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 3538944, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 3686400, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 4096000, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 4372480, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 4915200, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 5242880, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 5184000, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 5880000, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 7056000, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 7680000, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 8294400, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 9216000, i32 noundef 4, i32 noundef 2)
  br label %sw.epilog

for.body22.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 1228800, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 1382400, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 1920000, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 1628160, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 3145728, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 3538944, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 3686400, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 4096000, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 4372480, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 4915200, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 5242880, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 5184000, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 5880000, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 7056000, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 7680000, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 8294400, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 9216000, i32 noundef 2, i32 noundef 4)
  br label %sw.epilog

for.body14.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 4096, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 8192, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 16384, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 32768, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 65536, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 131072, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 262144, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 524288, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 1048576, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 2097152, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 4194304, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 8388608, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 16777216, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 33554432, i32 noundef 4, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 67108864, i32 noundef 4, i32 noundef 4)
  br label %sw.epilog

for.body6.preheader:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 4096, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 8192, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 16384, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 32768, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 65536, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 131072, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 262144, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 524288, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 1048576, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 2097152, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 4194304, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 8388608, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 16777216, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 33554432, i32 noundef 4, i32 noundef 2)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 67108864, i32 noundef 4, i32 noundef 2)
  br label %sw.epilog

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 4096, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 8192, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 16384, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 32768, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 65536, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 131072, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 262144, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 524288, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 1048576, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 2097152, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 4194304, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 8388608, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 16777216, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 33554432, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 67108864, i32 noundef 2, i32 noundef 4)
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 1048576, i32 noundef 2, i32 noundef 4)
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 1048576, i32 noundef 4, i32 noundef 2)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef 1048576, i32 noundef 4, i32 noundef 4)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %sw.bb, %for.body.preheader, %for.body6.preheader, %for.body14.preheader, %for.body22.preheader, %for.body28.preheader, %for.body36.preheader
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_benchmark_move(ptr noundef %rdev, i32 noundef %size, i32 noundef %sdomain, i32 noundef %ddomain) unnamed_addr #0 align 64 {
entry:
  %dobj = alloca ptr, align 4
  %sobj = alloca ptr, align 4
  %saddr = alloca i64, align 8
  %daddr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dobj) #4
  %0 = ptrtoint ptr %dobj to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %dobj, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sobj) #4
  %1 = ptrtoint ptr %sobj to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %sobj, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %saddr) #4
  %2 = ptrtoint ptr %saddr to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %saddr, align 8, !annotation !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %daddr) #4
  %3 = ptrtoint ptr %daddr to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %daddr, align 8, !annotation !35
  %call = call i32 @radeon_bo_create(ptr noundef %rdev, i32 noundef %size, i32 noundef 4096, i1 noundef zeroext true, i32 noundef %sdomain, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef nonnull %sobj) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_cleanup_crit_edge

entry.out_cleanup_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %sobj to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sobj, align 4
  %resv32.i.i = getelementptr inbounds %struct.radeon_bo, ptr %5, i32 0, i32 4, i32 0, i32 9
  %6 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = call i32 @ww_mutex_lock_interruptible(ptr noundef %7, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %retval.1.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %8 = zext i32 %retval.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %retval.1.i.i, label %do.end.i [
    i32 0, label %if.end5
    i32 -512, label %if.end.out_cleanup_crit_edge
  ], !prof !36

if.end.out_cleanup_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_cleanup

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %rdev.i = getelementptr inbounds %struct.radeon_bo, ptr %5, i32 0, i32 13
  %9 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rdev.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.4, ptr noundef %5) #7
  br label %out_cleanup

if.end5:                                          ; preds = %if.end
  %13 = ptrtoint ptr %sobj to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sobj, align 4
  %call6 = call i32 @radeon_bo_pin(ptr noundef %14, i32 noundef %sdomain, ptr noundef nonnull %saddr) #4
  %15 = ptrtoint ptr %sobj to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sobj, align 4
  %tbo.i = getelementptr inbounds %struct.radeon_bo, ptr %16, i32 0, i32 4
  %bdev.i.i.i = getelementptr inbounds %struct.radeon_bo, ptr %16, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %18, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #4
  %resource.i.i.i = getelementptr inbounds %struct.radeon_bo, ptr %16, i32 0, i32 4, i32 6
  %19 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %resource.i.i.i, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i, ptr noundef %20, ptr noundef null) #4
  %21 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %22, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #4
  %resv.i.i = getelementptr inbounds %struct.radeon_bo, ptr %16, i32 0, i32 4, i32 0, i32 9
  %23 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %resv.i.i, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %24) #4
  call void @ww_mutex_unlock(ptr noundef %24) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.out_cleanup_crit_edge

if.end5.out_cleanup_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_cleanup

if.end9:                                          ; preds = %if.end5
  %call10 = call i32 @radeon_bo_create(ptr noundef %rdev, i32 noundef %size, i32 noundef 4096, i1 noundef zeroext true, i32 noundef %ddomain, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef nonnull %dobj) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.out_cleanup_crit_edge

if.end9.out_cleanup_crit_edge:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_cleanup

if.end13:                                         ; preds = %if.end9
  %25 = ptrtoint ptr %dobj to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dobj, align 4
  %resv32.i.i115 = getelementptr inbounds %struct.radeon_bo, ptr %26, i32 0, i32 4, i32 0, i32 9
  %27 = ptrtoint ptr %resv32.i.i115 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %resv32.i.i115, align 8
  %call.i.i.i116 = call i32 @ww_mutex_lock_interruptible(ptr noundef %28, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i116)
  %cmp.i.i117 = icmp eq i32 %call.i.i.i116, -4
  %retval.1.i.i118 = select i1 %cmp.i.i117, i32 -512, i32 %call.i.i.i116
  %29 = zext i32 %retval.1.i.i118 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %retval.1.i.i118, label %do.end.i120 [
    i32 0, label %if.end23
    i32 -512, label %if.end13.out_cleanup_crit_edge
  ], !prof !36

if.end13.out_cleanup_crit_edge:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_cleanup

do.end.i120:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  %rdev.i119 = getelementptr inbounds %struct.radeon_bo, ptr %26, i32 0, i32 13
  %30 = ptrtoint ptr %rdev.i119 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rdev.i119, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.4, ptr noundef %26) #7
  br label %out_cleanup

if.end23:                                         ; preds = %if.end13
  %34 = ptrtoint ptr %dobj to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dobj, align 4
  %call24 = call i32 @radeon_bo_pin(ptr noundef %35, i32 noundef %ddomain, ptr noundef nonnull %daddr) #4
  %36 = ptrtoint ptr %dobj to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dobj, align 4
  %tbo.i122 = getelementptr inbounds %struct.radeon_bo, ptr %37, i32 0, i32 4
  %bdev.i.i.i123 = getelementptr inbounds %struct.radeon_bo, ptr %37, i32 0, i32 4, i32 1
  %38 = ptrtoint ptr %bdev.i.i.i123 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bdev.i.i.i123, align 8
  %lru_lock.i.i.i124 = getelementptr inbounds %struct.ttm_device, ptr %39, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i124) #4
  %resource.i.i.i125 = getelementptr inbounds %struct.radeon_bo, ptr %37, i32 0, i32 4, i32 6
  %40 = ptrtoint ptr %resource.i.i.i125 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %resource.i.i.i125, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i122, ptr noundef %41, ptr noundef null) #4
  %42 = ptrtoint ptr %bdev.i.i.i123 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bdev.i.i.i123, align 8
  %lru_lock2.i.i.i126 = getelementptr inbounds %struct.ttm_device, ptr %43, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i126) #4
  %resv.i.i127 = getelementptr inbounds %struct.radeon_bo, ptr %37, i32 0, i32 4, i32 0, i32 9
  %44 = ptrtoint ptr %resv.i.i127 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %resv.i.i127, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %45) #4
  call void @ww_mutex_unlock(ptr noundef %45) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end23.out_cleanup_crit_edge

if.end23.out_cleanup_crit_edge:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_cleanup

if.end27:                                         ; preds = %if.end23
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %46 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %asic, align 8
  %dma = getelementptr inbounds %struct.radeon_asic, ptr %47, i32 0, i32 17, i32 2
  %48 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dma, align 4
  %tobool28.not = icmp eq ptr %49, null
  br i1 %tobool28.not, label %if.end27.if.end37_crit_edge, label %if.then29

if.end27.if.end37_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

if.then29:                                        ; preds = %if.end27
  %50 = ptrtoint ptr %saddr to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %saddr, align 8
  %52 = ptrtoint ptr %daddr to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %daddr, align 8
  %54 = ptrtoint ptr %dobj to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dobj, align 4
  %resv = getelementptr inbounds %struct.radeon_bo, ptr %55, i32 0, i32 4, i32 0, i32 9
  %56 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %resv, align 8
  %call30 = call fastcc i32 @radeon_benchmark_do_move(ptr noundef %rdev, i32 noundef %size, i64 noundef %51, i64 noundef %53, i32 noundef 0, ptr noundef %57)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then29.out_cleanup_crit_edge, label %if.end33

if.then29.out_cleanup_crit_edge:                  ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_cleanup

if.end33:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp34.not = icmp eq i32 %call30, 0
  br i1 %cmp34.not, label %if.end33.if.end37_crit_edge, label %if.then35

if.end33.if.end37_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  %shr.i = lshr i32 %size, 10
  %mul.i = and i32 %size, -1024
  %div.i = udiv i32 %mul.i, %call30
  %mul2.i = shl i32 %div.i, 3
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 1024, i32 noundef %shr.i, i32 noundef %sdomain, i32 noundef %ddomain, i32 noundef %call30, i32 noundef %mul2.i, i32 noundef %div.i) #7
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end33.if.end37_crit_edge, %if.end27.if.end37_crit_edge
  %58 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %asic, align 8
  %copy39 = getelementptr inbounds %struct.radeon_asic, ptr %59, i32 0, i32 17
  %60 = ptrtoint ptr %copy39 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %copy39, align 4
  %tobool40.not = icmp eq ptr %61, null
  br i1 %tobool40.not, label %if.end37.out_cleanup_crit_edge, label %if.then41

if.end37.out_cleanup_crit_edge:                   ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_cleanup

if.then41:                                        ; preds = %if.end37
  %62 = ptrtoint ptr %saddr to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %saddr, align 8
  %64 = ptrtoint ptr %daddr to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %daddr, align 8
  %66 = ptrtoint ptr %dobj to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dobj, align 4
  %resv44 = getelementptr inbounds %struct.radeon_bo, ptr %67, i32 0, i32 4, i32 0, i32 9
  %68 = ptrtoint ptr %resv44 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %resv44, align 8
  %call45 = call fastcc i32 @radeon_benchmark_do_move(ptr noundef %rdev, i32 noundef %size, i64 noundef %63, i64 noundef %65, i32 noundef 1, ptr noundef %69)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call45)
  %70 = icmp slt i32 %call45, 1
  br i1 %70, label %if.then41.out_cleanup_crit_edge, label %if.then50

if.then41.out_cleanup_crit_edge:                  ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_cleanup

if.then50:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #6
  %shr.i128 = lshr i32 %size, 10
  %mul.i129 = and i32 %size, -1024
  %div.i130 = udiv i32 %mul.i129, %call45
  %mul2.i131 = shl i32 %div.i130, 3
  %call.i132 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.2, i32 noundef 1024, i32 noundef %shr.i128, i32 noundef %sdomain, i32 noundef %ddomain, i32 noundef %call45, i32 noundef %mul2.i131, i32 noundef %div.i130) #7
  br label %out_cleanup

out_cleanup:                                      ; preds = %if.then50, %if.then41.out_cleanup_crit_edge, %if.end37.out_cleanup_crit_edge, %if.then29.out_cleanup_crit_edge, %if.end23.out_cleanup_crit_edge, %do.end.i120, %if.end13.out_cleanup_crit_edge, %if.end9.out_cleanup_crit_edge, %if.end5.out_cleanup_crit_edge, %do.end.i, %if.end.out_cleanup_crit_edge, %entry.out_cleanup_crit_edge
  %r.0 = phi i32 [ %call, %entry.out_cleanup_crit_edge ], [ %retval.1.i.i, %do.end.i ], [ %call6, %if.end5.out_cleanup_crit_edge ], [ %call10, %if.end9.out_cleanup_crit_edge ], [ %retval.1.i.i118, %do.end.i120 ], [ %call24, %if.end23.out_cleanup_crit_edge ], [ 0, %if.then29.out_cleanup_crit_edge ], [ 0, %if.then41.out_cleanup_crit_edge ], [ 0, %if.then50 ], [ 0, %if.end37.out_cleanup_crit_edge ], [ %retval.1.i.i, %if.end.out_cleanup_crit_edge ], [ %retval.1.i.i118, %if.end13.out_cleanup_crit_edge ]
  %71 = ptrtoint ptr %sobj to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %sobj, align 4
  %tobool53.not = icmp eq ptr %72, null
  br i1 %tobool53.not, label %out_cleanup.if.end65_crit_edge, label %if.then54

out_cleanup.if.end65_crit_edge:                   ; preds = %out_cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end65

if.then54:                                        ; preds = %out_cleanup
  %resv32.i.i133 = getelementptr inbounds %struct.radeon_bo, ptr %72, i32 0, i32 4, i32 0, i32 9
  %73 = ptrtoint ptr %resv32.i.i133 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %resv32.i.i133, align 8
  %call.i.i.i134 = call i32 @ww_mutex_lock_interruptible(ptr noundef %74, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i134)
  %cmp.i.i135 = icmp eq i32 %call.i.i.i134, -4
  %retval.1.i.i136 = select i1 %cmp.i.i135, i32 -512, i32 %call.i.i.i134
  %75 = zext i32 %retval.1.i.i136 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %retval.1.i.i136, label %do.end.i138 [
    i32 0, label %if.then63
    i32 -512, label %if.then54.if.end64_crit_edge
  ], !prof !36

if.then54.if.end64_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end64

do.end.i138:                                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #6
  %rdev.i137 = getelementptr inbounds %struct.radeon_bo, ptr %72, i32 0, i32 13
  %76 = ptrtoint ptr %rdev.i137 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rdev.i137, align 8
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.4, ptr noundef nonnull %72) #7
  br label %if.end64

if.then63:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #6
  %80 = ptrtoint ptr %sobj to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %sobj, align 4
  call void @radeon_bo_unpin(ptr noundef %81) #4
  %82 = ptrtoint ptr %sobj to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %sobj, align 4
  %tbo.i140 = getelementptr inbounds %struct.radeon_bo, ptr %83, i32 0, i32 4
  %bdev.i.i.i141 = getelementptr inbounds %struct.radeon_bo, ptr %83, i32 0, i32 4, i32 1
  %84 = ptrtoint ptr %bdev.i.i.i141 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %bdev.i.i.i141, align 8
  %lru_lock.i.i.i142 = getelementptr inbounds %struct.ttm_device, ptr %85, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i142) #4
  %resource.i.i.i143 = getelementptr inbounds %struct.radeon_bo, ptr %83, i32 0, i32 4, i32 6
  %86 = ptrtoint ptr %resource.i.i.i143 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %resource.i.i.i143, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i140, ptr noundef %87, ptr noundef null) #4
  %88 = ptrtoint ptr %bdev.i.i.i141 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %bdev.i.i.i141, align 8
  %lru_lock2.i.i.i144 = getelementptr inbounds %struct.ttm_device, ptr %89, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i144) #4
  %resv.i.i145 = getelementptr inbounds %struct.radeon_bo, ptr %83, i32 0, i32 4, i32 0, i32 9
  %90 = ptrtoint ptr %resv.i.i145 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %resv.i.i145, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %91) #4
  call void @ww_mutex_unlock(ptr noundef %91) #4
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %do.end.i138, %if.then54.if.end64_crit_edge
  call void @radeon_bo_unref(ptr noundef nonnull %sobj) #4
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %out_cleanup.if.end65_crit_edge
  %r.1 = phi i32 [ %retval.1.i.i136, %if.end64 ], [ %r.0, %out_cleanup.if.end65_crit_edge ]
  %92 = ptrtoint ptr %dobj to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dobj, align 4
  %tobool66.not = icmp eq ptr %93, null
  br i1 %tobool66.not, label %if.end65.if.end78_crit_edge, label %if.then67

if.end65.if.end78_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end78

if.then67:                                        ; preds = %if.end65
  %resv32.i.i146 = getelementptr inbounds %struct.radeon_bo, ptr %93, i32 0, i32 4, i32 0, i32 9
  %94 = ptrtoint ptr %resv32.i.i146 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %resv32.i.i146, align 8
  %call.i.i.i147 = call i32 @ww_mutex_lock_interruptible(ptr noundef %95, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i147)
  %cmp.i.i148 = icmp eq i32 %call.i.i.i147, -4
  %retval.1.i.i149 = select i1 %cmp.i.i148, i32 -512, i32 %call.i.i.i147
  %96 = zext i32 %retval.1.i.i149 to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %retval.1.i.i149, label %do.end.i151 [
    i32 0, label %if.then76
    i32 -512, label %if.then67.if.end77_crit_edge
  ], !prof !36

if.then67.if.end77_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end77

do.end.i151:                                      ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #6
  %rdev.i150 = getelementptr inbounds %struct.radeon_bo, ptr %93, i32 0, i32 13
  %97 = ptrtoint ptr %rdev.i150 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %rdev.i150, align 8
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.4, ptr noundef nonnull %93) #7
  br label %if.end77

if.then76:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #6
  %101 = ptrtoint ptr %dobj to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dobj, align 4
  call void @radeon_bo_unpin(ptr noundef %102) #4
  %103 = ptrtoint ptr %dobj to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dobj, align 4
  %tbo.i153 = getelementptr inbounds %struct.radeon_bo, ptr %104, i32 0, i32 4
  %bdev.i.i.i154 = getelementptr inbounds %struct.radeon_bo, ptr %104, i32 0, i32 4, i32 1
  %105 = ptrtoint ptr %bdev.i.i.i154 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %bdev.i.i.i154, align 8
  %lru_lock.i.i.i155 = getelementptr inbounds %struct.ttm_device, ptr %106, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i155) #4
  %resource.i.i.i156 = getelementptr inbounds %struct.radeon_bo, ptr %104, i32 0, i32 4, i32 6
  %107 = ptrtoint ptr %resource.i.i.i156 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %resource.i.i.i156, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i153, ptr noundef %108, ptr noundef null) #4
  %109 = ptrtoint ptr %bdev.i.i.i154 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %bdev.i.i.i154, align 8
  %lru_lock2.i.i.i157 = getelementptr inbounds %struct.ttm_device, ptr %110, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i157) #4
  %resv.i.i158 = getelementptr inbounds %struct.radeon_bo, ptr %104, i32 0, i32 4, i32 0, i32 9
  %111 = ptrtoint ptr %resv.i.i158 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %resv.i.i158, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %112) #4
  call void @ww_mutex_unlock(ptr noundef %112) #4
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %do.end.i151, %if.then67.if.end77_crit_edge
  call void @radeon_bo_unref(ptr noundef nonnull %dobj) #4
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.end65.if.end78_crit_edge
  %r.2 = phi i32 [ %retval.1.i.i149, %if.end77 ], [ %r.1, %if.end65.if.end78_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.2)
  %tobool79.not = icmp eq i32 %r.2, 0
  br i1 %tobool79.not, label %if.end78.if.end81_crit_edge, label %if.then80

if.end78.if.end81_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end81

if.then80:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #4
  br label %if.end81

if.end81:                                         ; preds = %if.then80, %if.end78.if.end81_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %daddr) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %saddr) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sobj) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dobj) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_bo_create(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_bo_pin(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @radeon_benchmark_do_move(ptr noundef %rdev, i32 noundef %size, i64 noundef %saddr, i64 noundef %daddr, i32 noundef %flag, ptr noundef %resv) unnamed_addr #0 align 64 {
entry:
  %fence = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fence) #4
  %0 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %fence, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %asic2 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %div41 = lshr i32 %size, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flag)
  %switch = icmp ult i32 %flag, 2
  br i1 %switch, label %for.body.preheader, label %sw.default

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flag)
  %cond = icmp eq i32 %flag, 0
  br label %for.body

for.cond:                                         ; preds = %if.end
  %inc = add nuw nsw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, 1024
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i.04 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %2 = ptrtoint ptr %asic2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asic2, align 8
  %copy3 = getelementptr inbounds %struct.radeon_asic, ptr %3, i32 0, i32 17
  %dma = getelementptr inbounds %struct.radeon_asic, ptr %3, i32 0, i32 17, i32 2
  %copy3.sink = select i1 %cond, ptr %dma, ptr %copy3
  %4 = ptrtoint ptr %copy3.sink to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %copy3.sink, align 4
  %call5 = call ptr %5(ptr noundef %rdev, i64 noundef %saddr, i64 noundef %daddr, i32 noundef %div41, ptr noundef %resv) #4
  %6 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5, ptr %fence, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #4
  br label %cleanup

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end:                                           ; preds = %for.body
  %call8 = call i32 @radeon_fence_wait(ptr noundef %call5, i1 noundef zeroext false) #4
  call void @radeon_fence_unref(ptr noundef nonnull %fence) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %for.cond, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %8, %1
  %call11 = call i32 @jiffies_to_msecs(i32 noundef %sub) #4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %if.then, %sw.default
  %retval.0 = phi i32 [ -22, %sw.default ], [ %7, %if.then ], [ %call11, %for.end ], [ %call8, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_bo_unpin(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_bo_unref(ptr noundef) local_unnamed_addr #2

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
declare dso_local i32 @radeon_fence_wait(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_fence_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !20, !22, !23, !24, !25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/radeon_benchmark.c", i32 247, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/radeon_benchmark.c", i32 130, i32 30}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/radeon/radeon_benchmark.c", i32 141, i32 30}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/radeon/radeon_benchmark.c", i32 163, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/radeon/radeon_object.h", i32 71, i32 4}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @radeon_bo_reserve._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @radeon_bo_reserve._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = distinct !{null, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../include/drm/ttm/ttm_bo_driver.h", i32 140, i32 7}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/radeon/radeon_benchmark.c", i32 59, i32 4}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/radeon/radeon_benchmark.c", i32 81, i32 2}
!22 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @radeon_benchmark_log_results._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @radeon_benchmark_log_results._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{!"auto-init"}
!36 = !{!"branch_weights", i32 1, i32 4000, i32 1}
