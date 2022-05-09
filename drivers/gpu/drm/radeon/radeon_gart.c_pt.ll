; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/radeon_gart.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/radeon_gart.c"
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
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.89] }
%struct.anon.89 = type { [12 x %struct.ttm_pool_type] }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.87, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.87 = type { ptr }
%struct.radeon_bo = type { %struct.list_head, i32, [4 x %struct.ttm_place], %struct.ttm_placement, %struct.ttm_buffer_object, %struct.ttm_bo_kmap_obj, i32, ptr, i32, i32, i32, i32, %struct.list_head, ptr, i32, %struct.mmu_interval_notifier }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }
%struct.mmu_interval_notifier = type { %struct.interval_tree_node, ptr, ptr, %struct.hlist_node, i32 }
%struct.interval_tree_node = type { %struct.rb_node, i32, i32, i32 }
%struct.radeon_asic = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.95, %struct.anon.96, [8 x ptr], %struct.anon.97, %struct.anon.98, %struct.anon.99, %struct.anon.100, %struct.anon.101, %struct.anon.102, %struct.anon.103, %struct.anon.104 }
%struct.anon.95 = type { ptr, ptr, ptr }
%struct.anon.96 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.97 = type { ptr, ptr }
%struct.anon.98 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.99 = type { ptr, i32, ptr, i32, ptr, i32 }
%struct.anon.100 = type { ptr, ptr }
%struct.anon.101 = type { ptr, ptr, ptr, ptr }
%struct.anon.102 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.103 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.104 = type { ptr, ptr }

@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/gpu/drm/radeon/radeon_gart.c\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"trying to unbind memory from uninitialized GART !\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"trying to bind memory to uninitialized GART !\0A\00", [49 x i8] zeroinitializer }, align 32
@radeon_gart_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016[drm] GART: num cpu pages %u, num gpu pages %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"radeon_gart_init\00", [47 x i8] zeroinitializer }, align 32
@radeon_gart_init._entry_ptr = internal global ptr @radeon_gart_init._entry, section ".printk_index", align 4
@radeon_bo_reserve._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 71, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%p reserve failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"radeon_bo_reserve\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/radeon/radeon_object.h\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@radeon_bo_reserve._entry_ptr = internal global ptr @radeon_bo_reserve._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 250, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 297, i32 3 }
@___asan_gen_.28 = private constant [40 x i8] c"../drivers/gpu/drm/radeon/radeon_gart.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 349, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [42 x i8] c"../drivers/gpu/drm/radeon/radeon_object.h\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 71, i32 4 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @radeon_bo_reserve._entry, ptr @radeon_bo_reserve._entry_ptr, ptr @radeon_gart_init._entry, ptr @radeon_gart_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_gart_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_bo_reserve._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_gart_table_ram_alloc(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %gart = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43
  %table_size = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 5
  %2 = ptrtoint ptr %table_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %table_size, align 4
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %3, ptr noundef %gart, i32 noundef 3264, i32 noundef 0) #6
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ptr3 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 2
  %4 = ptrtoint ptr %ptr3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %ptr3, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_gart_table_ram_free(ptr nocapture noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ptr = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 2
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %gart = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43
  %pdev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 2
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %table_size = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 5
  %4 = ptrtoint ptr %table_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %table_size, align 4
  %6 = ptrtoint ptr %gart to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gart, align 8
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %5, ptr noundef nonnull %1, i32 noundef %7, i32 noundef 0) #6
  %8 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %ptr, align 8
  %9 = ptrtoint ptr %gart to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %gart, align 8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_gart_table_vram_alloc(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %robj = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 1
  %0 = ptrtoint ptr %robj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %robj, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then:                                          ; preds = %entry
  %table_size = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 5
  %2 = ptrtoint ptr %table_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %table_size, align 4
  %call = tail call i32 @radeon_bo_create(ptr noundef %rdev, i32 noundef %3, i32 noundef 4096, i1 noundef zeroext true, i32 noundef 4, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef %robj) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %call, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_bo_create(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_gart_table_vram_pin(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  %gpu_addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %gpu_addr) #6
  %0 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %gpu_addr, align 8, !annotation !29
  %gart = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43
  %robj = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 1
  %1 = ptrtoint ptr %robj to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %robj, align 4
  %resv32.i.i = getelementptr inbounds %struct.radeon_bo, ptr %2, i32 0, i32 4, i32 0, i32 9
  %3 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %4, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %retval.1.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %5 = zext i32 %retval.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.1.i.i, label %do.end.i [
    i32 0, label %if.end
    i32 -512, label %entry.cleanup_crit_edge
  ], !prof !30

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rdev.i = getelementptr inbounds %struct.radeon_bo, ptr %2, i32 0, i32 13
  %6 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rdev.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.5, ptr noundef %2) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %robj to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %robj, align 4
  %call4 = call i32 @radeon_bo_pin(ptr noundef %11, i32 noundef 4, ptr noundef nonnull %gpu_addr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  %12 = ptrtoint ptr %robj to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %robj, align 4
  br i1 %tobool5.not, label %if.end9, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %tbo.i = getelementptr inbounds %struct.radeon_bo, ptr %13, i32 0, i32 4
  %bdev.i.i.i = getelementptr inbounds %struct.radeon_bo, ptr %13, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %15, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #6
  %resource.i.i.i = getelementptr inbounds %struct.radeon_bo, ptr %13, i32 0, i32 4, i32 6
  %16 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %resource.i.i.i, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i, ptr noundef %17, ptr noundef null) #6
  %18 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %19, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #6
  %resv.i.i = getelementptr inbounds %struct.radeon_bo, ptr %13, i32 0, i32 4, i32 0, i32 9
  %20 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %resv.i.i, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %21) #6
  call void @ww_mutex_unlock(ptr noundef %21) #6
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %ptr = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 2
  %call13 = call i32 @radeon_bo_kmap(ptr noundef %13, ptr noundef %ptr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  %22 = ptrtoint ptr %robj to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %robj, align 4
  br i1 %tobool14.not, label %if.then23.critedge, label %if.then15

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  call void @radeon_bo_unpin(ptr noundef %23) #6
  %24 = ptrtoint ptr %robj to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %robj, align 4
  %tbo.i56 = getelementptr inbounds %struct.radeon_bo, ptr %25, i32 0, i32 4
  %bdev.i.i.i57 = getelementptr inbounds %struct.radeon_bo, ptr %25, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %bdev.i.i.i57 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bdev.i.i.i57, align 8
  %lru_lock.i.i.i58 = getelementptr inbounds %struct.ttm_device, ptr %27, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i58) #6
  %resource.i.i.i59 = getelementptr inbounds %struct.radeon_bo, ptr %25, i32 0, i32 4, i32 6
  %28 = ptrtoint ptr %resource.i.i.i59 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %resource.i.i.i59, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i56, ptr noundef %29, ptr noundef null) #6
  %30 = ptrtoint ptr %bdev.i.i.i57 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bdev.i.i.i57, align 8
  %lru_lock2.i.i.i60 = getelementptr inbounds %struct.ttm_device, ptr %31, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i60) #6
  %resv.i.i61 = getelementptr inbounds %struct.radeon_bo, ptr %25, i32 0, i32 4, i32 0, i32 9
  %32 = ptrtoint ptr %resv.i.i61 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %resv.i.i61, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %33) #6
  call void @ww_mutex_unlock(ptr noundef %33) #6
  %34 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %gpu_addr, align 8
  %conv.c = trunc i64 %35 to i32
  %36 = ptrtoint ptr %gart to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv.c, ptr %gart, align 8
  br label %cleanup

if.then23.critedge:                               ; preds = %if.end9
  %tbo.i62 = getelementptr inbounds %struct.radeon_bo, ptr %23, i32 0, i32 4
  %bdev.i.i.i63 = getelementptr inbounds %struct.radeon_bo, ptr %23, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %bdev.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bdev.i.i.i63, align 8
  %lru_lock.i.i.i64 = getelementptr inbounds %struct.ttm_device, ptr %38, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i64) #6
  %resource.i.i.i65 = getelementptr inbounds %struct.radeon_bo, ptr %23, i32 0, i32 4, i32 6
  %39 = ptrtoint ptr %resource.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %resource.i.i.i65, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i62, ptr noundef %40, ptr noundef null) #6
  %41 = ptrtoint ptr %bdev.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bdev.i.i.i63, align 8
  %lru_lock2.i.i.i66 = getelementptr inbounds %struct.ttm_device, ptr %42, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i66) #6
  %resv.i.i67 = getelementptr inbounds %struct.radeon_bo, ptr %23, i32 0, i32 4, i32 0, i32 9
  %43 = ptrtoint ptr %resv.i.i67 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %resv.i.i67, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %44) #6
  call void @ww_mutex_unlock(ptr noundef %44) #6
  %45 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %gpu_addr, align 8
  %conv.c55 = trunc i64 %46 to i32
  %47 = ptrtoint ptr %gart to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv.c55, ptr %gart, align 8
  %num_gpu_pages = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 3
  %48 = ptrtoint ptr %num_gpu_pages to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_gpu_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp2568.not = icmp eq i32 %49, 0
  br i1 %cmp2568.not, label %if.then23.critedge.do.body_crit_edge, label %for.body.lr.ph

if.then23.critedge.do.body_crit_edge:             ; preds = %if.then23.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

for.body.lr.ph:                                   ; preds = %if.then23.critedge
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %pages_entry = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.069 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %50 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %asic, align 8
  %set_page = getelementptr inbounds %struct.radeon_asic, ptr %51, i32 0, i32 12, i32 2
  %52 = ptrtoint ptr %set_page to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %set_page, align 4
  %54 = ptrtoint ptr %pages_entry to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pages_entry, align 4
  %arrayidx = getelementptr i64, ptr %55, i32 %i.069
  %56 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %arrayidx, align 8
  call void %53(ptr noundef %rdev, i32 noundef %i.069, i64 noundef %57) #6
  %inc = add nuw i32 %i.069, 1
  %58 = ptrtoint ptr %num_gpu_pages to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %num_gpu_pages, align 4
  %cmp25 = icmp ult i32 %inc, %59
  br i1 %cmp25, label %for.body.for.body_crit_edge, label %for.body.do.body_crit_edge

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.body:                                          ; preds = %for.body.do.body_crit_edge, %if.then23.critedge.do.body_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @arm_heavy_mb() #6
  %asic29 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %60 = ptrtoint ptr %asic29 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %asic29, align 8
  %gart30 = getelementptr inbounds %struct.radeon_asic, ptr %61, i32 0, i32 12
  %62 = ptrtoint ptr %gart30 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %gart30, align 4
  call void %63(ptr noundef %rdev) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then15, %if.then6, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then6 ], [ %retval.1.i.i, %do.end.i ], [ %call13, %if.then15 ], [ 0, %do.body ], [ %retval.1.i.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %gpu_addr) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_bo_pin(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_bo_kmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_bo_unpin(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_gart_table_vram_unpin(ptr nocapture noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %robj = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 1
  %0 = ptrtoint ptr %robj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %robj, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %resv32.i.i = getelementptr inbounds %struct.radeon_bo, ptr %1, i32 0, i32 4, i32 0, i32 9
  %2 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %3, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %retval.1.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %4 = zext i32 %retval.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %retval.1.i.i, label %do.end.i [
    i32 0, label %if.then5
    i32 -512, label %if.end.cleanup_crit_edge
  ], !prof !30

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %rdev.i = getelementptr inbounds %struct.radeon_bo, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rdev.i, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.5, ptr noundef nonnull %1) #9
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %robj to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %robj, align 4
  tail call void @radeon_bo_kunmap(ptr noundef %10) #6
  %11 = ptrtoint ptr %robj to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %robj, align 4
  tail call void @radeon_bo_unpin(ptr noundef %12) #6
  %13 = ptrtoint ptr %robj to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %robj, align 4
  %tbo.i = getelementptr inbounds %struct.radeon_bo, ptr %14, i32 0, i32 4
  %bdev.i.i.i = getelementptr inbounds %struct.radeon_bo, ptr %14, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %16, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #6
  %resource.i.i.i = getelementptr inbounds %struct.radeon_bo, ptr %14, i32 0, i32 4, i32 6
  %17 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %resource.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i, ptr noundef %18, ptr noundef null) #6
  %19 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %20, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #6
  %resv.i.i = getelementptr inbounds %struct.radeon_bo, ptr %14, i32 0, i32 4, i32 0, i32 9
  %21 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %resv.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %22) #6
  tail call void @ww_mutex_unlock(ptr noundef %22) #6
  %ptr = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 2
  %23 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %ptr, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %do.end.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_bo_kunmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_gart_table_vram_free(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %robj = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 1
  %0 = ptrtoint ptr %robj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %robj, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @radeon_bo_unref(ptr noundef %robj) #6
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_bo_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_gart_unbind(ptr noundef %rdev, i32 noundef %offset, i32 noundef %pages) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ready = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 8
  %0 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ready, align 8, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.end, label %if.end17

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 9, ptr noundef nonnull @.str.1) #6
  br label %cleanup

if.end17:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pages)
  %cmp79 = icmp sgt i32 %pages, 0
  br i1 %cmp79, label %for.body.lr.ph, label %if.end17.for.end44_crit_edge

if.end17.for.end44_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end44

for.body.lr.ph:                                   ; preds = %if.end17
  %div77 = lshr i32 %offset, 12
  %pages20 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 6
  %dummy_page = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 63
  %pages_entry = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 7
  %ptr = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 2
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  br label %for.body

for.body:                                         ; preds = %for.inc41.for.body_crit_edge, %for.body.lr.ph
  %t.082 = phi i32 [ %div77, %for.body.lr.ph ], [ %t.2, %for.inc41.for.body_crit_edge ]
  %i.081 = phi i32 [ 0, %for.body.lr.ph ], [ %inc42, %for.inc41.for.body_crit_edge ]
  %p.080 = phi i32 [ %div77, %for.body.lr.ph ], [ %inc43, %for.inc41.for.body_crit_edge ]
  %2 = ptrtoint ptr %pages20 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pages20, align 8
  %arrayidx = getelementptr ptr, ptr %3, i32 %p.080
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool21.not = icmp eq ptr %5, null
  br i1 %tobool21.not, label %for.body.for.inc41_crit_edge, label %if.then22

for.body.for.inc41_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc41

if.then22:                                        ; preds = %for.body
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx, align 4
  %7 = ptrtoint ptr %dummy_page to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %dummy_page, align 8
  %9 = ptrtoint ptr %pages_entry to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pages_entry, align 4
  %arrayidx31 = getelementptr i64, ptr %10, i32 %t.082
  %11 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %8, ptr %arrayidx31, align 8
  %12 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ptr, align 8
  %tobool33.not = icmp eq ptr %13, null
  br i1 %tobool33.not, label %if.then22.for.inc_crit_edge, label %if.then34

if.then22.for.inc_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then34:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %asic, align 8
  %set_page = getelementptr inbounds %struct.radeon_asic, ptr %15, i32 0, i32 12, i32 2
  %16 = ptrtoint ptr %set_page to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set_page, align 4
  %18 = ptrtoint ptr %dummy_page to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %dummy_page, align 8
  tail call void %17(ptr noundef %rdev, i32 noundef %t.082, i64 noundef %19) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then34, %if.then22.for.inc_crit_edge
  %inc39 = add i32 %t.082, 1
  br label %for.inc41

for.inc41:                                        ; preds = %for.inc, %for.body.for.inc41_crit_edge
  %t.2 = phi i32 [ %t.082, %for.body.for.inc41_crit_edge ], [ %inc39, %for.inc ]
  %inc42 = add nuw nsw i32 %i.081, 1
  %inc43 = add nuw i32 %p.080, 1
  %exitcond.not = icmp eq i32 %inc42, %pages
  br i1 %exitcond.not, label %for.inc41.for.end44_crit_edge, label %for.inc41.for.body_crit_edge

for.inc41.for.body_crit_edge:                     ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc41.for.end44_crit_edge:                    ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end44

for.end44:                                        ; preds = %for.inc41.for.end44_crit_edge, %if.end17.for.end44_crit_edge
  %ptr46 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 2
  %20 = ptrtoint ptr %ptr46 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ptr46, align 8
  %tobool47.not = icmp eq ptr %21, null
  br i1 %tobool47.not, label %for.end44.cleanup_crit_edge, label %do.body49

for.end44.cleanup_crit_edge:                      ; preds = %for.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body49:                                        ; preds = %for.end44
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !33
  tail call void @arm_heavy_mb() #6
  %asic52 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %22 = ptrtoint ptr %asic52 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %asic52, align 8
  %gart53 = getelementptr inbounds %struct.radeon_asic, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %gart53 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %gart53, align 4
  tail call void %25(ptr noundef %rdev) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body49, %for.end44.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_gart_bind(ptr noundef %rdev, i32 noundef %offset, i32 noundef %pages, ptr noundef readonly %pagelist, ptr nocapture noundef readonly %dma_addr, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ready = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 8
  %0 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ready, align 8, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.end, label %if.end17

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 297, i32 noundef 9, ptr noundef nonnull @.str.2) #6
  br label %cleanup

if.end17:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pages)
  %cmp82 = icmp sgt i32 %pages, 0
  br i1 %cmp82, label %for.body.lr.ph, label %if.end17.for.end41_crit_edge

if.end17.for.end41_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end41

for.body.lr.ph:                                   ; preds = %if.end17
  %div79 = lshr i32 %offset, 12
  %tobool19.not = icmp eq ptr %pagelist, null
  %page = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 63, i32 1
  %pages21 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 6
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %pages_entry = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 7
  %ptr = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end36.for.body_crit_edge, %for.body.lr.ph
  %i.085 = phi i32 [ 0, %for.body.lr.ph ], [ %inc39, %if.end36.for.body_crit_edge ]
  %p.084 = phi i32 [ %div79, %for.body.lr.ph ], [ %inc40, %if.end36.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %pagelist, i32 %i.085
  %cond.in = select i1 %tobool19.not, ptr %page, ptr %arrayidx
  %2 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %cond = load ptr, ptr %cond.in, align 4
  %3 = ptrtoint ptr %pages21 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pages21, align 8
  %arrayidx22 = getelementptr ptr, ptr %4, i32 %p.084
  %5 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %cond, ptr %arrayidx22, align 4
  %arrayidx23 = getelementptr i32, ptr %dma_addr, i32 %i.085
  %6 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx23, align 4
  %conv = zext i32 %7 to i64
  %8 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %asic, align 8
  %get_page_entry = getelementptr inbounds %struct.radeon_asic, ptr %9, i32 0, i32 12, i32 1
  %10 = ptrtoint ptr %get_page_entry to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_page_entry, align 4
  %call = tail call i64 %11(i64 noundef %conv, i32 noundef %flags) #6
  %12 = ptrtoint ptr %pages_entry to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pages_entry, align 4
  %arrayidx30 = getelementptr i64, ptr %13, i32 %p.084
  %14 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %call, ptr %arrayidx30, align 8
  %15 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ptr, align 8
  %tobool32.not = icmp eq ptr %16, null
  br i1 %tobool32.not, label %for.body.if.end36_crit_edge, label %if.then33

for.body.if.end36_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then33:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %asic, align 8
  %set_page = getelementptr inbounds %struct.radeon_asic, ptr %18, i32 0, i32 12, i32 2
  %19 = ptrtoint ptr %set_page to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %set_page, align 4
  tail call void %20(ptr noundef %rdev, i32 noundef %p.084, i64 noundef %call) #6
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %for.body.if.end36_crit_edge
  %inc40 = add nuw i32 %p.084, 1
  %inc39 = add nuw nsw i32 %i.085, 1
  %exitcond.not = icmp eq i32 %inc39, %pages
  br i1 %exitcond.not, label %if.end36.for.end41_crit_edge, label %if.end36.for.body_crit_edge

if.end36.for.body_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end36.for.end41_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end41

for.end41:                                        ; preds = %if.end36.for.end41_crit_edge, %if.end17.for.end41_crit_edge
  %ptr43 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 2
  %21 = ptrtoint ptr %ptr43 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ptr43, align 8
  %tobool44.not = icmp eq ptr %22, null
  br i1 %tobool44.not, label %for.end41.cleanup_crit_edge, label %do.body46

for.end41.cleanup_crit_edge:                      ; preds = %for.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body46:                                        ; preds = %for.end41
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %asic49 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %23 = ptrtoint ptr %asic49 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %asic49, align 8
  %gart50 = getelementptr inbounds %struct.radeon_asic, ptr %24, i32 0, i32 12
  %25 = ptrtoint ptr %gart50 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %gart50, align 4
  tail call void %26(ptr noundef %rdev) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body46, %for.end41.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.body46 ], [ 0, %for.end41.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_gart_init(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pages = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 6
  %0 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pages, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @radeon_dummy_page_init(ptr noundef %rdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %gtt_size = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 5
  %2 = ptrtoint ptr %gtt_size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %gtt_size, align 8
  %div66 = lshr i64 %3, 12
  %conv = trunc i64 %div66 to i32
  %num_cpu_pages = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 4
  %4 = ptrtoint ptr %num_cpu_pages to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %num_cpu_pages, align 8
  %num_gpu_pages = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 3
  %5 = ptrtoint ptr %num_gpu_pages to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %num_gpu_pages, align 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %conv, i32 noundef %conv) #9
  %6 = ptrtoint ptr %num_cpu_pages to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_cpu_pages, align 8
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %7, i32 4) #6
  %9 = extractvalue { i32, i1 } %8, 1
  %10 = extractvalue { i32, i1 } %8, 0
  %retval.0.i = select i1 %9, i32 -1, i32 %10
  %call18 = tail call noalias ptr @vzalloc(i32 noundef %retval.0.i) #10
  %11 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call18, ptr %pages, align 8
  %cmp = icmp eq ptr %call18, null
  br i1 %cmp, label %if.end3.cleanup.sink.split_crit_edge, label %if.end25

if.end3.cleanup.sink.split_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end25:                                         ; preds = %if.end3
  %12 = ptrtoint ptr %num_gpu_pages to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_gpu_pages, align 4
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %13, i32 8) #6
  %15 = extractvalue { i32, i1 } %14, 1
  %16 = extractvalue { i32, i1 } %14, 0
  %retval.0.i68 = select i1 %15, i32 -1, i32 %16
  %call29 = tail call noalias ptr @vmalloc(i32 noundef %retval.0.i68) #10
  %pages_entry = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 7
  %17 = ptrtoint ptr %pages_entry to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call29, ptr %pages_entry, align 4
  %cmp33 = icmp eq ptr %call29, null
  br i1 %cmp33, label %if.end25.cleanup.sink.split_crit_edge, label %for.cond.preheader

if.end25.cleanup.sink.split_crit_edge:            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

for.cond.preheader:                               ; preds = %if.end25
  %18 = ptrtoint ptr %num_gpu_pages to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_gpu_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp3969.not = icmp eq i32 %19, 0
  br i1 %cmp3969.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dummy_page = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 63
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.070 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %20 = ptrtoint ptr %dummy_page to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %dummy_page, align 8
  %22 = ptrtoint ptr %pages_entry to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pages_entry, align 4
  %arrayidx = getelementptr i64, ptr %23, i32 %i.070
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %21, ptr %arrayidx, align 8
  %inc = add nuw i32 %i.070, 1
  %25 = ptrtoint ptr %num_gpu_pages to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_gpu_pages, align 4
  %cmp39 = icmp ult i32 %inc, %26
  br i1 %cmp39, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup.sink.split:                               ; preds = %if.end25.cleanup.sink.split_crit_edge, %if.end3.cleanup.sink.split_crit_edge
  tail call void @radeon_gart_fini(ptr noundef %rdev)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ -12, %cleanup.sink.split ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_dummy_page_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_gart_fini(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ready = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 8
  %0 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ready, align 8, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %num_cpu_pages = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 4
  %2 = ptrtoint ptr %num_cpu_pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_cpu_pages, align 8
  tail call void @radeon_gart_unbind(ptr noundef %rdev, i32 noundef 0, i32 noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %ready to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %ready, align 8
  %pages = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 6
  %5 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pages, align 8
  tail call void @vfree(ptr noundef %6) #6
  %pages_entry = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 7
  %7 = ptrtoint ptr %pages_entry to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pages_entry, align 4
  tail call void @vfree(ptr noundef %8) #6
  %9 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %pages, align 8
  %10 = ptrtoint ptr %pages_entry to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %pages_entry, align 4
  tail call void @radeon_dummy_page_fini(ptr noundef %rdev) #6
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_dummy_page_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
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
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !12, !13, !14, !15, !16, !17, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/radeon_gart.c", i32 250, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/radeon/radeon_gart.c", i32 297, i32 3}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/radeon/radeon_gart.c", i32 349, i32 2}
!7 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @radeon_gart_init._entry, !6, !"_entry", i1 false, i1 false}
!9 = !{ptr @radeon_gart_init._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/radeon/radeon_object.h", i32 71, i32 4}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @radeon_bo_reserve._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @radeon_bo_reserve._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = distinct !{null, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../include/drm/ttm/ttm_bo_driver.h", i32 140, i32 7}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"auto-init"}
!30 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!31 = !{i64 2157936673}
!32 = !{i8 0, i8 2}
!33 = !{i64 2157937735}
!34 = !{i64 2157938763}
