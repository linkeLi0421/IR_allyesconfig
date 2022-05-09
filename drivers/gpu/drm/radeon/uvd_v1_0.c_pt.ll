; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/uvd_v1_0.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/uvd_v1_0.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.radeon_fence = type { %struct.dma_fence, ptr, i64, i32, i8, %struct.wait_queue_entry }
%struct.dma_fence = type { ptr, ptr, %union.anon.84, i64, i64, i32, %struct.kref, i32 }
%union.anon.84 = type { i64 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
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
%struct.radeon_ib = type { ptr, i32, i64, ptr, i32, ptr, ptr, i8, %struct.radeon_sync }
%struct.radeon_sync = type { [4 x ptr], [8 x ptr], ptr }

@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"radeon: ring failed to lock UVD ring (%d).\0A\00", [52 x i8] zeroinitializer }, align 32
@uvd_v1_0_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016[drm] UVD initialized successfully.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"uvd_v1_0_init\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/gpu/drm/radeon/uvd_v1_0.c\00", [62 x i8] zeroinitializer }, align 32
@uvd_v1_0_init._entry_ptr = internal global ptr @uvd_v1_0_init._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"UVD not responding, trying to reset the VCPU!!!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"UVD not responding, giving up!!!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"radeon: cp failed to lock ring %d (%d).\0A\00", [55 x i8] zeroinitializer }, align 32
@uvd_v1_0_ring_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016[drm] ring test on %d succeeded in %d usecs\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"uvd_v1_0_ring_test\00", [45 x i8] zeroinitializer }, align 32
@uvd_v1_0_ring_test._entry_ptr = internal global ptr @uvd_v1_0_ring_test._entry, section ".printk_index", align 4
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"radeon: ring %d test failed (0x%08X)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"radeon: failed to raise UVD clocks (%d).\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"radeon: failed to get create msg (%d).\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"radeon: failed to get destroy ib (%d).\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"radeon: fence wait failed (%d).\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"radeon: fence wait timed out.\0A\00", [33 x i8] zeroinitializer }, align 32
@uvd_v1_0_ib_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 537, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016[drm] ib test on ring %d succeeded\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"uvd_v1_0_ib_test\00", [47 x i8] zeroinitializer }, align 32
@uvd_v1_0_ib_test._entry_ptr = internal global ptr @uvd_v1_0_ib_test._entry, section ".printk_index", align 4
@.str.17 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"radeon: writing more dwords to the ring than expected!\0A\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 28, i64 29, i64 30, i64 31, i64 32]
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 182, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 235, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 341, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 350, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 430, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 445, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 448, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 510, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 516, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 522, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 529, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 532, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.76 = private constant [37 x i8] c"../drivers/gpu/drm/radeon/uvd_v1_0.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 537, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [35 x i8] c"../drivers/gpu/drm/radeon/radeon.h\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 2721, i32 3 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @uvd_v1_0_ib_test._entry, ptr @uvd_v1_0_ib_test._entry_ptr, ptr @uvd_v1_0_init._entry, ptr @uvd_v1_0_init._entry_ptr, ptr @uvd_v1_0_ring_test._entry, ptr @uvd_v1_0_ring_test._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvd_v1_0_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvd_v1_0_ring_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvd_v1_0_ib_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvd_v1_0_get_rptr(ptr nocapture noundef readonly %rdev, ptr nocapture noundef readnone %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 63120
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvd_v1_0_get_wptr(ptr nocapture noundef readonly %rdev, ptr nocapture noundef readnone %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 63124
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @uvd_v1_0_set_wptr(ptr nocapture noundef readonly %rdev, ptr nocapture noundef readonly %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %wptr = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 7
  %0 = ptrtoint ptr %wptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wptr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #6
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %3 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 63124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #6, !srcloc !50
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @uvd_v1_0_fence_emit(ptr noundef %rdev, ptr nocapture noundef readonly %fence) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ring2 = getelementptr inbounds %struct.radeon_fence, ptr %fence, i32 0, i32 3
  %0 = ptrtoint ptr %ring2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ring2, align 8
  %gpu_addr = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 48, i32 %1, i32 2
  %2 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %gpu_addr, align 8
  %count_dw.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 11
  %4 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count_dw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp slt i32 %5, 1
  br i1 %cmp.i, label %if.then.i, label %entry.radeon_ring_write.exit_crit_edge

entry.radeon_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #6
  br label %radeon_ring_write.exit

radeon_ring_write.exit:                           ; preds = %if.then.i, %entry.radeon_ring_write.exit_crit_edge
  %ring1.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 2
  %6 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ring1.i, align 8
  %wptr.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 7
  %8 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wptr.i, align 4
  %inc.i = add i32 %9, 1
  store i32 %inc.i, ptr %wptr.i, align 4
  %arrayidx.i = getelementptr i32, ptr %7, i32 %9
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 15300, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 16
  %11 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ptr_mask.i, align 4
  %13 = load i32, ptr %wptr.i, align 4
  %and.i = and i32 %13, %12
  store i32 %and.i, ptr %wptr.i, align 4
  %14 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count_dw.i, align 4
  %dec.i = add i32 %15, -1
  store i32 %dec.i, ptr %count_dw.i, align 4
  %ring_free_dw.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 10
  %16 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i = add i32 %17, -1
  store i32 %dec4.i, ptr %ring_free_dw.i, align 8
  %conv = trunc i64 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i21 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i21, label %if.then.i22, label %radeon_ring_write.exit.radeon_ring_write.exit32_crit_edge

radeon_ring_write.exit.radeon_ring_write.exit32_crit_edge: ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_ring_write.exit32

if.then.i22:                                      ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #6
  br label %radeon_ring_write.exit32

radeon_ring_write.exit32:                         ; preds = %if.then.i22, %radeon_ring_write.exit.radeon_ring_write.exit32_crit_edge
  %18 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ring1.i, align 8
  %20 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %wptr.i, align 4
  %inc.i25 = add i32 %21, 1
  store i32 %inc.i25, ptr %wptr.i, align 4
  %arrayidx.i26 = getelementptr i32, ptr %19, i32 %21
  %22 = ptrtoint ptr %arrayidx.i26 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 %conv, ptr %arrayidx.i26, align 4
  %23 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ptr_mask.i, align 4
  %25 = load i32, ptr %wptr.i, align 4
  %and.i28 = and i32 %25, %24
  store i32 %and.i28, ptr %wptr.i, align 4
  %26 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count_dw.i, align 4
  %dec.i29 = add i32 %27, -1
  store i32 %dec.i29, ptr %count_dw.i, align 4
  %28 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i31 = add i32 %29, -1
  store i32 %dec4.i31, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i29)
  %cmp.i34 = icmp slt i32 %dec.i29, 1
  br i1 %cmp.i34, label %if.then.i35, label %radeon_ring_write.exit32.radeon_ring_write.exit45_crit_edge

radeon_ring_write.exit32.radeon_ring_write.exit45_crit_edge: ; preds = %radeon_ring_write.exit32
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_ring_write.exit45

if.then.i35:                                      ; preds = %radeon_ring_write.exit32
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #6
  br label %radeon_ring_write.exit45

radeon_ring_write.exit45:                         ; preds = %if.then.i35, %radeon_ring_write.exit32.radeon_ring_write.exit45_crit_edge
  %30 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ring1.i, align 8
  %32 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %wptr.i, align 4
  %inc.i38 = add i32 %33, 1
  store i32 %inc.i38, ptr %wptr.i, align 4
  %arrayidx.i39 = getelementptr i32, ptr %31, i32 %33
  %34 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 15301, ptr %arrayidx.i39, align 4
  %35 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ptr_mask.i, align 4
  %37 = load i32, ptr %wptr.i, align 4
  %and.i41 = and i32 %37, %36
  store i32 %and.i41, ptr %wptr.i, align 4
  %38 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %count_dw.i, align 4
  %dec.i42 = add i32 %39, -1
  store i32 %dec.i42, ptr %count_dw.i, align 4
  %40 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i44 = add i32 %41, -1
  store i32 %dec4.i44, ptr %ring_free_dw.i, align 8
  %seq = getelementptr inbounds %struct.radeon_fence, ptr %fence, i32 0, i32 2
  %42 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %seq, align 8
  %conv5 = trunc i64 %43 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i42)
  %cmp.i47 = icmp slt i32 %dec.i42, 1
  br i1 %cmp.i47, label %if.then.i48, label %radeon_ring_write.exit45.radeon_ring_write.exit58_crit_edge

radeon_ring_write.exit45.radeon_ring_write.exit58_crit_edge: ; preds = %radeon_ring_write.exit45
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_ring_write.exit58

if.then.i48:                                      ; preds = %radeon_ring_write.exit45
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #6
  br label %radeon_ring_write.exit58

radeon_ring_write.exit58:                         ; preds = %if.then.i48, %radeon_ring_write.exit45.radeon_ring_write.exit58_crit_edge
  %44 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ring1.i, align 8
  %46 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %wptr.i, align 4
  %inc.i51 = add i32 %47, 1
  store i32 %inc.i51, ptr %wptr.i, align 4
  %arrayidx.i52 = getelementptr i32, ptr %45, i32 %47
  %48 = ptrtoint ptr %arrayidx.i52 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 %conv5, ptr %arrayidx.i52, align 4
  %49 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ptr_mask.i, align 4
  %51 = load i32, ptr %wptr.i, align 4
  %and.i54 = and i32 %51, %50
  store i32 %and.i54, ptr %wptr.i, align 4
  %52 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %count_dw.i, align 4
  %dec.i55 = add i32 %53, -1
  store i32 %dec.i55, ptr %count_dw.i, align 4
  %54 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i57 = add i32 %55, -1
  store i32 %dec4.i57, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i55)
  %cmp.i60 = icmp slt i32 %dec.i55, 1
  br i1 %cmp.i60, label %if.then.i61, label %radeon_ring_write.exit58.radeon_ring_write.exit71_crit_edge

radeon_ring_write.exit58.radeon_ring_write.exit71_crit_edge: ; preds = %radeon_ring_write.exit58
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_ring_write.exit71

if.then.i61:                                      ; preds = %radeon_ring_write.exit58
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #6
  br label %radeon_ring_write.exit71

radeon_ring_write.exit71:                         ; preds = %if.then.i61, %radeon_ring_write.exit58.radeon_ring_write.exit71_crit_edge
  %56 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ring1.i, align 8
  %58 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %wptr.i, align 4
  %inc.i64 = add i32 %59, 1
  store i32 %inc.i64, ptr %wptr.i, align 4
  %arrayidx.i65 = getelementptr i32, ptr %57, i32 %59
  %60 = ptrtoint ptr %arrayidx.i65 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile i32 15299, ptr %arrayidx.i65, align 4
  %61 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ptr_mask.i, align 4
  %63 = load i32, ptr %wptr.i, align 4
  %and.i67 = and i32 %63, %62
  store i32 %and.i67, ptr %wptr.i, align 4
  %64 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %count_dw.i, align 4
  %dec.i68 = add i32 %65, -1
  store i32 %dec.i68, ptr %count_dw.i, align 4
  %66 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i70 = add i32 %67, -1
  store i32 %dec4.i70, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i68)
  %cmp.i73 = icmp slt i32 %dec.i68, 1
  br i1 %cmp.i73, label %if.then.i74, label %radeon_ring_write.exit71.radeon_ring_write.exit84_crit_edge

radeon_ring_write.exit71.radeon_ring_write.exit84_crit_edge: ; preds = %radeon_ring_write.exit71
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_ring_write.exit84

if.then.i74:                                      ; preds = %radeon_ring_write.exit71
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #6
  br label %radeon_ring_write.exit84

radeon_ring_write.exit84:                         ; preds = %if.then.i74, %radeon_ring_write.exit71.radeon_ring_write.exit84_crit_edge
  %68 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ring1.i, align 8
  %70 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %wptr.i, align 4
  %inc.i77 = add i32 %71, 1
  store i32 %inc.i77, ptr %wptr.i, align 4
  %arrayidx.i78 = getelementptr i32, ptr %69, i32 %71
  %72 = ptrtoint ptr %arrayidx.i78 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile i32 0, ptr %arrayidx.i78, align 4
  %73 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ptr_mask.i, align 4
  %75 = load i32, ptr %wptr.i, align 4
  %and.i80 = and i32 %75, %74
  store i32 %and.i80, ptr %wptr.i, align 4
  %76 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %count_dw.i, align 4
  %dec.i81 = add i32 %77, -1
  store i32 %dec.i81, ptr %count_dw.i, align 4
  %78 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i83 = add i32 %79, -1
  store i32 %dec4.i83, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i81)
  %cmp.i86 = icmp slt i32 %dec.i81, 1
  br i1 %cmp.i86, label %if.then.i87, label %radeon_ring_write.exit84.radeon_ring_write.exit97_crit_edge

radeon_ring_write.exit84.radeon_ring_write.exit97_crit_edge: ; preds = %radeon_ring_write.exit84
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_ring_write.exit97

if.then.i87:                                      ; preds = %radeon_ring_write.exit84
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #6
  br label %radeon_ring_write.exit97

radeon_ring_write.exit97:                         ; preds = %if.then.i87, %radeon_ring_write.exit84.radeon_ring_write.exit97_crit_edge
  %80 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ring1.i, align 8
  %82 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %wptr.i, align 4
  %inc.i90 = add i32 %83, 1
  store i32 %inc.i90, ptr %wptr.i, align 4
  %arrayidx.i91 = getelementptr i32, ptr %81, i32 %83
  %84 = ptrtoint ptr %arrayidx.i91 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile i32 15300, ptr %arrayidx.i91, align 4
  %85 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %ptr_mask.i, align 4
  %87 = load i32, ptr %wptr.i, align 4
  %and.i93 = and i32 %87, %86
  store i32 %and.i93, ptr %wptr.i, align 4
  %88 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %count_dw.i, align 4
  %dec.i94 = add i32 %89, -1
  store i32 %dec.i94, ptr %count_dw.i, align 4
  %90 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i96 = add i32 %91, -1
  store i32 %dec4.i96, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i94)
  %cmp.i99 = icmp slt i32 %dec.i94, 1
  br i1 %cmp.i99, label %if.then.i100, label %radeon_ring_write.exit97.radeon_ring_write.exit110_crit_edge

radeon_ring_write.exit97.radeon_ring_write.exit110_crit_edge: ; preds = %radeon_ring_write.exit97
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_ring_write.exit110

if.then.i100:                                     ; preds = %radeon_ring_write.exit97
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #6
  br label %radeon_ring_write.exit110

radeon_ring_write.exit110:                        ; preds = %if.then.i100, %radeon_ring_write.exit97.radeon_ring_write.exit110_crit_edge
  %92 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ring1.i, align 8
  %94 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %wptr.i, align 4
  %inc.i103 = add i32 %95, 1
  store i32 %inc.i103, ptr %wptr.i, align 4
  %arrayidx.i104 = getelementptr i32, ptr %93, i32 %95
  %96 = ptrtoint ptr %arrayidx.i104 to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile i32 0, ptr %arrayidx.i104, align 4
  %97 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %ptr_mask.i, align 4
  %99 = load i32, ptr %wptr.i, align 4
  %and.i106 = and i32 %99, %98
  store i32 %and.i106, ptr %wptr.i, align 4
  %100 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %count_dw.i, align 4
  %dec.i107 = add i32 %101, -1
  store i32 %dec.i107, ptr %count_dw.i, align 4
  %102 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i109 = add i32 %103, -1
  store i32 %dec4.i109, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i107)
  %cmp.i112 = icmp slt i32 %dec.i107, 1
  br i1 %cmp.i112, label %if.then.i113, label %radeon_ring_write.exit110.radeon_ring_write.exit123_crit_edge

radeon_ring_write.exit110.radeon_ring_write.exit123_crit_edge: ; preds = %radeon_ring_write.exit110
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_ring_write.exit123

if.then.i113:                                     ; preds = %radeon_ring_write.exit110
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #6
  br label %radeon_ring_write.exit123

radeon_ring_write.exit123:                        ; preds = %if.then.i113, %radeon_ring_write.exit110.radeon_ring_write.exit123_crit_edge
  %104 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ring1.i, align 8
  %106 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %wptr.i, align 4
  %inc.i116 = add i32 %107, 1
  store i32 %inc.i116, ptr %wptr.i, align 4
  %arrayidx.i117 = getelementptr i32, ptr %105, i32 %107
  %108 = ptrtoint ptr %arrayidx.i117 to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile i32 15301, ptr %arrayidx.i117, align 4
  %109 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %ptr_mask.i, align 4
  %111 = load i32, ptr %wptr.i, align 4
  %and.i119 = and i32 %111, %110
  store i32 %and.i119, ptr %wptr.i, align 4
  %112 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %count_dw.i, align 4
  %dec.i120 = add i32 %113, -1
  store i32 %dec.i120, ptr %count_dw.i, align 4
  %114 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i122 = add i32 %115, -1
  store i32 %dec4.i122, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i120)
  %cmp.i125 = icmp slt i32 %dec.i120, 1
  br i1 %cmp.i125, label %if.then.i126, label %radeon_ring_write.exit123.radeon_ring_write.exit136_crit_edge

radeon_ring_write.exit123.radeon_ring_write.exit136_crit_edge: ; preds = %radeon_ring_write.exit123
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_ring_write.exit136

if.then.i126:                                     ; preds = %radeon_ring_write.exit123
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #6
  br label %radeon_ring_write.exit136

radeon_ring_write.exit136:                        ; preds = %if.then.i126, %radeon_ring_write.exit123.radeon_ring_write.exit136_crit_edge
  %116 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ring1.i, align 8
  %118 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %wptr.i, align 4
  %inc.i129 = add i32 %119, 1
  store i32 %inc.i129, ptr %wptr.i, align 4
  %arrayidx.i130 = getelementptr i32, ptr %117, i32 %119
  %120 = ptrtoint ptr %arrayidx.i130 to i32
  call void @__asan_store4_noabort(i32 %120)
  store volatile i32 0, ptr %arrayidx.i130, align 4
  %121 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %ptr_mask.i, align 4
  %123 = load i32, ptr %wptr.i, align 4
  %and.i132 = and i32 %123, %122
  store i32 %and.i132, ptr %wptr.i, align 4
  %124 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %count_dw.i, align 4
  %dec.i133 = add i32 %125, -1
  store i32 %dec.i133, ptr %count_dw.i, align 4
  %126 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i135 = add i32 %127, -1
  store i32 %dec4.i135, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i133)
  %cmp.i138 = icmp slt i32 %dec.i133, 1
  br i1 %cmp.i138, label %if.then.i139, label %radeon_ring_write.exit136.radeon_ring_write.exit149_crit_edge

radeon_ring_write.exit136.radeon_ring_write.exit149_crit_edge: ; preds = %radeon_ring_write.exit136
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_ring_write.exit149

if.then.i139:                                     ; preds = %radeon_ring_write.exit136
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #6
  br label %radeon_ring_write.exit149

radeon_ring_write.exit149:                        ; preds = %if.then.i139, %radeon_ring_write.exit136.radeon_ring_write.exit149_crit_edge
  %128 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ring1.i, align 8
  %130 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %wptr.i, align 4
  %inc.i142 = add i32 %131, 1
  store i32 %inc.i142, ptr %wptr.i, align 4
  %arrayidx.i143 = getelementptr i32, ptr %129, i32 %131
  %132 = ptrtoint ptr %arrayidx.i143 to i32
  call void @__asan_store4_noabort(i32 %132)
  store volatile i32 15299, ptr %arrayidx.i143, align 4
  %133 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %ptr_mask.i, align 4
  %135 = load i32, ptr %wptr.i, align 4
  %and.i145 = and i32 %135, %134
  store i32 %and.i145, ptr %wptr.i, align 4
  %136 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %count_dw.i, align 4
  %dec.i146 = add i32 %137, -1
  store i32 %dec.i146, ptr %count_dw.i, align 4
  %138 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i148 = add i32 %139, -1
  store i32 %dec4.i148, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i146)
  %cmp.i151 = icmp slt i32 %dec.i146, 1
  br i1 %cmp.i151, label %if.then.i152, label %radeon_ring_write.exit149.radeon_ring_write.exit162_crit_edge

radeon_ring_write.exit149.radeon_ring_write.exit162_crit_edge: ; preds = %radeon_ring_write.exit149
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_ring_write.exit162

if.then.i152:                                     ; preds = %radeon_ring_write.exit149
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #6
  br label %radeon_ring_write.exit162

radeon_ring_write.exit162:                        ; preds = %if.then.i152, %radeon_ring_write.exit149.radeon_ring_write.exit162_crit_edge
  %140 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %ring1.i, align 8
  %142 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %wptr.i, align 4
  %inc.i155 = add i32 %143, 1
  store i32 %inc.i155, ptr %wptr.i, align 4
  %arrayidx.i156 = getelementptr i32, ptr %141, i32 %143
  %144 = ptrtoint ptr %arrayidx.i156 to i32
  call void @__asan_store4_noabort(i32 %144)
  store volatile i32 2, ptr %arrayidx.i156, align 4
  %145 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %ptr_mask.i, align 4
  %147 = load i32, ptr %wptr.i, align 4
  %and.i158 = and i32 %147, %146
  store i32 %and.i158, ptr %wptr.i, align 4
  %148 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %count_dw.i, align 4
  %dec.i159 = add i32 %149, -1
  store i32 %dec.i159, ptr %count_dw.i, align 4
  %150 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i161 = add i32 %151, -1
  store i32 %dec4.i161, ptr %ring_free_dw.i, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvd_v1_0_resume(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @radeon_uvd_resume(ptr noundef %rdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %gpu_addr = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 59, i32 3
  %0 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %gpu_addr, align 8
  %shr = lshr i64 %1, 3
  %uvd_fw = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 80
  %2 = ptrtoint ptr %uvd_fw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %uvd_fw, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %add2 = add i32 %5, 4095
  %and = lshr i32 %add2, 3
  %shr3 = and i32 %and, 536870400
  %6 = trunc i64 %shr to i32
  %conv = add i32 %6, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %7 = tail call i32 @llvm.bswap.i32(i32 %conv) #6
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %8 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 62984
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %10 = tail call i32 @llvm.bswap.i32(i32 %shr3) #6
  %11 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i57 = getelementptr i8, ptr %12, i32 62988
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 %10) #6, !srcloc !50
  %conv6 = add i32 %shr3, %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %13 = tail call i32 @llvm.bswap.i32(i32 %conv6) #6
  %14 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i59 = getelementptr i8, ptr %15, i32 62992
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %13) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i61 = getelementptr i8, ptr %17, i32 62996
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 8388608) #6, !srcloc !50
  %max_handles = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 59, i32 4
  %18 = ptrtoint ptr %max_handles to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_handles, align 8
  %mul = mul i32 %19, 51200
  %add10 = add i32 %mul, 204800
  %shr11 = lshr exact i32 %add10, 3
  %conv12 = add i32 %conv6, 32768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %20 = tail call i32 @llvm.bswap.i32(i32 %conv12) #6
  %21 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i63 = getelementptr i8, ptr %22, i32 63000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 %20) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %23 = tail call i32 @llvm.bswap.i32(i32 %shr11) #6
  %24 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i65 = getelementptr i8, ptr %25, i32 63004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65, i32 %23) #6, !srcloc !50
  %26 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %gpu_addr, align 8
  %28 = trunc i64 %27 to i32
  %29 = lshr i32 %28, 28
  %conv18 = mul nuw nsw i32 %29, 4097
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %30 = tail call i32 @llvm.bswap.i32(i32 %conv18) #6
  %31 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i67 = getelementptr i8, ptr %32, i32 62868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67, i32 %30) #6, !srcloc !50
  %33 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %gpu_addr, align 8
  %shr21 = lshr i64 %34, 32
  %35 = trunc i64 %shr21 to i32
  %36 = and i32 %35, 255
  %conv25 = or i32 %36, -2146893824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %37 = tail call i32 @llvm.bswap.i32(i32 %conv25) #6
  %38 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i69 = getelementptr i8, ptr %39, i32 62616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69, i32 %37) #6, !srcloc !50
  %cpu_addr = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 59, i32 2
  %40 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cpu_addr, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #6
  %45 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i71 = getelementptr i8, ptr %46, i32 62748
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71, i32 %44) #6, !srcloc !50
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_uvd_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvd_v1_0_init(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 5
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %1)
  %cmp = icmp ult i32 %1, 38
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %2 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asic, align 8
  %set_uvd_clocks = getelementptr inbounds %struct.radeon_asic, ptr %3, i32 0, i32 20, i32 12
  %4 = ptrtoint ptr %set_uvd_clocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_uvd_clocks, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %5(ptr noundef %rdev, i32 noundef 10000, i32 noundef 10000) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 %5(ptr noundef %rdev, i32 noundef 53300, i32 noundef 40000) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call6 = tail call i32 @uvd_v1_0_start(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end8, label %if.end.done_crit_edge

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end8:                                          ; preds = %if.end
  %ready = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 5, i32 17
  %6 = ptrtoint ptr %ready to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %ready, align 8
  %asic9 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %7 = ptrtoint ptr %asic9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %asic9, align 8
  %arrayidx11 = getelementptr %struct.radeon_asic, ptr %8, i32 0, i32 14, i32 5
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx11, align 4
  %ring_test = getelementptr inbounds %struct.radeon_asic_ring, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %ring_test to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ring_test, align 4
  %call12 = tail call i32 %12(ptr noundef %rdev, ptr noundef %arrayidx) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end16, label %if.then14

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %ready to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %ready, align 8
  br label %done

if.end16:                                         ; preds = %if.end8
  %call17 = tail call i32 @radeon_ring_lock(ptr noundef %rdev, ptr noundef %arrayidx, i32 noundef 10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %call17) #6
  br label %done

if.end20:                                         ; preds = %if.end16
  %count_dw.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 5, i32 11
  %14 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count_dw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp.i = icmp slt i32 %15, 1
  br i1 %cmp.i, label %if.then.i, label %if.end20.radeon_ring_write.exit_crit_edge

if.end20.radeon_ring_write.exit_crit_edge:        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_ring_write.exit

if.then.i:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #6
  br label %radeon_ring_write.exit

radeon_ring_write.exit:                           ; preds = %if.then.i, %if.end20.radeon_ring_write.exit_crit_edge
  %ring1.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 5, i32 2
  %16 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ring1.i, align 8
  %wptr.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 5, i32 7
  %18 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %wptr.i, align 4
  %inc.i = add i32 %19, 1
  store i32 %inc.i, ptr %wptr.i, align 4
  %arrayidx.i = getelementptr i32, ptr %17, i32 %19
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 15794, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 5, i32 16
  %21 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ptr_mask.i, align 4
  %23 = load i32, ptr %wptr.i, align 4
  %and.i = and i32 %23, %22
  store i32 %and.i, ptr %wptr.i, align 4
  %24 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %count_dw.i, align 4
  %dec.i = add i32 %25, -1
  store i32 %dec.i, ptr %count_dw.i, align 4
  %ring_free_dw.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 5, i32 10
  %26 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i = add i32 %27, -1
  store i32 %dec4.i, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i79 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i79, label %if.then.i80, label %radeon_ring_write.exit.radeon_ring_write.exit90_crit_edge

radeon_ring_write.exit.radeon_ring_write.exit90_crit_edge: ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_ring_write.exit90

if.then.i80:                                      ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #6
  br label %radeon_ring_write.exit90

radeon_ring_write.exit90:                         ; preds = %if.then.i80, %radeon_ring_write.exit.radeon_ring_write.exit90_crit_edge
  %28 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ring1.i, align 8
  %30 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %wptr.i, align 4
  %inc.i83 = add i32 %31, 1
  store i32 %inc.i83, ptr %wptr.i, align 4
  %arrayidx.i84 = getelementptr i32, ptr %29, i32 %31
  %32 = ptrtoint ptr %arrayidx.i84 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 1048575, ptr %arrayidx.i84, align 4
  %33 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ptr_mask.i, align 4
  %35 = load i32, ptr %wptr.i, align 4
  %and.i86 = and i32 %35, %34
  store i32 %and.i86, ptr %wptr.i, align 4
  %36 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %count_dw.i, align 4
  %dec.i87 = add i32 %37, -1
  store i32 %dec.i87, ptr %count_dw.i, align 4
  %38 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i89 = add i32 %39, -1
  store i32 %dec4.i89, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i87)
  %cmp.i92 = icmp slt i32 %dec.i87, 1
  br i1 %cmp.i92, label %if.then.i93, label %radeon_ring_write.exit90.radeon_ring_write.exit103_crit_edge

radeon_ring_write.exit90.radeon_ring_write.exit103_crit_edge: ; preds = %radeon_ring_write.exit90
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_ring_write.exit103

if.then.i93:                                      ; preds = %radeon_ring_write.exit90
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #6
  br label %radeon_ring_write.exit103

radeon_ring_write.exit103:                        ; preds = %if.then.i93, %radeon_ring_write.exit90.radeon_ring_write.exit103_crit_edge
  %40 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ring1.i, align 8
  %42 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %wptr.i, align 4
  %inc.i96 = add i32 %43, 1
  store i32 %inc.i96, ptr %wptr.i, align 4
  %arrayidx.i97 = getelementptr i32, ptr %41, i32 %43
  %44 = ptrtoint ptr %arrayidx.i97 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 15793, ptr %arrayidx.i97, align 4
  %45 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ptr_mask.i, align 4
  %47 = load i32, ptr %wptr.i, align 4
  %and.i99 = and i32 %47, %46
  store i32 %and.i99, ptr %wptr.i, align 4
  %48 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %count_dw.i, align 4
  %dec.i100 = add i32 %49, -1
  store i32 %dec.i100, ptr %count_dw.i, align 4
  %50 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i102 = add i32 %51, -1
  store i32 %dec4.i102, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i100)
  %cmp.i105 = icmp slt i32 %dec.i100, 1
  br i1 %cmp.i105, label %if.then.i106, label %radeon_ring_write.exit103.radeon_ring_write.exit116_crit_edge

radeon_ring_write.exit103.radeon_ring_write.exit116_crit_edge: ; preds = %radeon_ring_write.exit103
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_ring_write.exit116

if.then.i106:                                     ; preds = %radeon_ring_write.exit103
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #6
  br label %radeon_ring_write.exit116

radeon_ring_write.exit116:                        ; preds = %if.then.i106, %radeon_ring_write.exit103.radeon_ring_write.exit116_crit_edge
  %52 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ring1.i, align 8
  %54 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %wptr.i, align 4
  %inc.i109 = add i32 %55, 1
  store i32 %inc.i109, ptr %wptr.i, align 4
  %arrayidx.i110 = getelementptr i32, ptr %53, i32 %55
  %56 = ptrtoint ptr %arrayidx.i110 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile i32 1048575, ptr %arrayidx.i110, align 4
  %57 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ptr_mask.i, align 4
  %59 = load i32, ptr %wptr.i, align 4
  %and.i112 = and i32 %59, %58
  store i32 %and.i112, ptr %wptr.i, align 4
  %60 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %count_dw.i, align 4
  %dec.i113 = add i32 %61, -1
  store i32 %dec.i113, ptr %count_dw.i, align 4
  %62 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i115 = add i32 %63, -1
  store i32 %dec4.i115, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i113)
  %cmp.i118 = icmp slt i32 %dec.i113, 1
  br i1 %cmp.i118, label %if.then.i119, label %radeon_ring_write.exit116.radeon_ring_write.exit129_crit_edge

radeon_ring_write.exit116.radeon_ring_write.exit129_crit_edge: ; preds = %radeon_ring_write.exit116
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_ring_write.exit129

if.then.i119:                                     ; preds = %radeon_ring_write.exit116
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #6
  br label %radeon_ring_write.exit129

radeon_ring_write.exit129:                        ; preds = %if.then.i119, %radeon_ring_write.exit116.radeon_ring_write.exit129_crit_edge
  %64 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ring1.i, align 8
  %66 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %wptr.i, align 4
  %inc.i122 = add i32 %67, 1
  store i32 %inc.i122, ptr %wptr.i, align 4
  %arrayidx.i123 = getelementptr i32, ptr %65, i32 %67
  %68 = ptrtoint ptr %arrayidx.i123 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile i32 15795, ptr %arrayidx.i123, align 4
  %69 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ptr_mask.i, align 4
  %71 = load i32, ptr %wptr.i, align 4
  %and.i125 = and i32 %71, %70
  store i32 %and.i125, ptr %wptr.i, align 4
  %72 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %count_dw.i, align 4
  %dec.i126 = add i32 %73, -1
  store i32 %dec.i126, ptr %count_dw.i, align 4
  %74 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i128 = add i32 %75, -1
  store i32 %dec4.i128, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i126)
  %cmp.i131 = icmp slt i32 %dec.i126, 1
  br i1 %cmp.i131, label %if.then.i132, label %radeon_ring_write.exit129.radeon_ring_write.exit142_crit_edge

radeon_ring_write.exit129.radeon_ring_write.exit142_crit_edge: ; preds = %radeon_ring_write.exit129
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_ring_write.exit142

if.then.i132:                                     ; preds = %radeon_ring_write.exit129
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #6
  br label %radeon_ring_write.exit142

radeon_ring_write.exit142:                        ; preds = %if.then.i132, %radeon_ring_write.exit129.radeon_ring_write.exit142_crit_edge
  %76 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ring1.i, align 8
  %78 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %wptr.i, align 4
  %inc.i135 = add i32 %79, 1
  store i32 %inc.i135, ptr %wptr.i, align 4
  %arrayidx.i136 = getelementptr i32, ptr %77, i32 %79
  %80 = ptrtoint ptr %arrayidx.i136 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile i32 1048575, ptr %arrayidx.i136, align 4
  %81 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %ptr_mask.i, align 4
  %83 = load i32, ptr %wptr.i, align 4
  %and.i138 = and i32 %83, %82
  store i32 %and.i138, ptr %wptr.i, align 4
  %84 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %count_dw.i, align 4
  %dec.i139 = add i32 %85, -1
  store i32 %dec.i139, ptr %count_dw.i, align 4
  %86 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i141 = add i32 %87, -1
  store i32 %dec4.i141, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i139)
  %cmp.i144 = icmp slt i32 %dec.i139, 1
  br i1 %cmp.i144, label %if.then.i145, label %radeon_ring_write.exit142.radeon_ring_write.exit155_crit_edge

radeon_ring_write.exit142.radeon_ring_write.exit155_crit_edge: ; preds = %radeon_ring_write.exit142
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_ring_write.exit155

if.then.i145:                                     ; preds = %radeon_ring_write.exit142
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #6
  br label %radeon_ring_write.exit155

radeon_ring_write.exit155:                        ; preds = %if.then.i145, %radeon_ring_write.exit142.radeon_ring_write.exit155_crit_edge
  %88 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ring1.i, align 8
  %90 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %wptr.i, align 4
  %inc.i148 = add i32 %91, 1
  store i32 %inc.i148, ptr %wptr.i, align 4
  %arrayidx.i149 = getelementptr i32, ptr %89, i32 %91
  %92 = ptrtoint ptr %arrayidx.i149 to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile i32 15792, ptr %arrayidx.i149, align 4
  %93 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %ptr_mask.i, align 4
  %95 = load i32, ptr %wptr.i, align 4
  %and.i151 = and i32 %95, %94
  store i32 %and.i151, ptr %wptr.i, align 4
  %96 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %count_dw.i, align 4
  %dec.i152 = add i32 %97, -1
  store i32 %dec.i152, ptr %count_dw.i, align 4
  %98 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i154 = add i32 %99, -1
  store i32 %dec4.i154, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i152)
  %cmp.i157 = icmp slt i32 %dec.i152, 1
  br i1 %cmp.i157, label %if.then.i158, label %radeon_ring_write.exit155.radeon_ring_write.exit168_crit_edge

radeon_ring_write.exit155.radeon_ring_write.exit168_crit_edge: ; preds = %radeon_ring_write.exit155
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_ring_write.exit168

if.then.i158:                                     ; preds = %radeon_ring_write.exit155
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #6
  br label %radeon_ring_write.exit168

radeon_ring_write.exit168:                        ; preds = %if.then.i158, %radeon_ring_write.exit155.radeon_ring_write.exit168_crit_edge
  %100 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ring1.i, align 8
  %102 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %wptr.i, align 4
  %inc.i161 = add i32 %103, 1
  store i32 %inc.i161, ptr %wptr.i, align 4
  %arrayidx.i162 = getelementptr i32, ptr %101, i32 %103
  %104 = ptrtoint ptr %arrayidx.i162 to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile i32 8, ptr %arrayidx.i162, align 4
  %105 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %ptr_mask.i, align 4
  %107 = load i32, ptr %wptr.i, align 4
  %and.i164 = and i32 %107, %106
  store i32 %and.i164, ptr %wptr.i, align 4
  %108 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %count_dw.i, align 4
  %dec.i165 = add i32 %109, -1
  store i32 %dec.i165, ptr %count_dw.i, align 4
  %110 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i167 = add i32 %111, -1
  store i32 %dec4.i167, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i165)
  %cmp.i170 = icmp slt i32 %dec.i165, 1
  br i1 %cmp.i170, label %if.then.i171, label %radeon_ring_write.exit168.radeon_ring_write.exit181_crit_edge

radeon_ring_write.exit168.radeon_ring_write.exit181_crit_edge: ; preds = %radeon_ring_write.exit168
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_ring_write.exit181

if.then.i171:                                     ; preds = %radeon_ring_write.exit168
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #6
  br label %radeon_ring_write.exit181

radeon_ring_write.exit181:                        ; preds = %if.then.i171, %radeon_ring_write.exit168.radeon_ring_write.exit181_crit_edge
  %112 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ring1.i, align 8
  %114 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %wptr.i, align 4
  %inc.i174 = add i32 %115, 1
  store i32 %inc.i174, ptr %wptr.i, align 4
  %arrayidx.i175 = getelementptr i32, ptr %113, i32 %115
  %116 = ptrtoint ptr %arrayidx.i175 to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile i32 15616, ptr %arrayidx.i175, align 4
  %117 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %ptr_mask.i, align 4
  %119 = load i32, ptr %wptr.i, align 4
  %and.i177 = and i32 %119, %118
  store i32 %and.i177, ptr %wptr.i, align 4
  %120 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %count_dw.i, align 4
  %dec.i178 = add i32 %121, -1
  store i32 %dec.i178, ptr %count_dw.i, align 4
  %122 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i180 = add i32 %123, -1
  store i32 %dec4.i180, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i178)
  %cmp.i183 = icmp slt i32 %dec.i178, 1
  br i1 %cmp.i183, label %if.then.i184, label %radeon_ring_write.exit181.radeon_ring_write.exit194_crit_edge

radeon_ring_write.exit181.radeon_ring_write.exit194_crit_edge: ; preds = %radeon_ring_write.exit181
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_ring_write.exit194

if.then.i184:                                     ; preds = %radeon_ring_write.exit181
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #6
  br label %radeon_ring_write.exit194

radeon_ring_write.exit194:                        ; preds = %if.then.i184, %radeon_ring_write.exit181.radeon_ring_write.exit194_crit_edge
  %124 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %ring1.i, align 8
  %126 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %wptr.i, align 4
  %inc.i187 = add i32 %127, 1
  store i32 %inc.i187, ptr %wptr.i, align 4
  %arrayidx.i188 = getelementptr i32, ptr %125, i32 %127
  %128 = ptrtoint ptr %arrayidx.i188 to i32
  call void @__asan_store4_noabort(i32 %128)
  store volatile i32 3, ptr %arrayidx.i188, align 4
  %129 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %ptr_mask.i, align 4
  %131 = load i32, ptr %wptr.i, align 4
  %and.i190 = and i32 %131, %130
  store i32 %and.i190, ptr %wptr.i, align 4
  %132 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %count_dw.i, align 4
  %dec.i191 = add i32 %133, -1
  store i32 %dec.i191, ptr %count_dw.i, align 4
  %134 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i193 = add i32 %135, -1
  store i32 %dec4.i193, ptr %ring_free_dw.i, align 8
  tail call void @radeon_ring_unlock_commit(ptr noundef %rdev, ptr noundef %arrayidx, i1 noundef zeroext false) #6
  br label %done

done:                                             ; preds = %radeon_ring_write.exit194, %if.then19, %if.then14, %if.end.done_crit_edge
  %r.0 = phi i32 [ %call6, %if.end.done_crit_edge ], [ %call12, %if.then14 ], [ %call17, %if.then19 ], [ 0, %radeon_ring_write.exit194 ]
  %asic21 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %136 = ptrtoint ptr %asic21 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %asic21, align 8
  %set_uvd_clocks23 = getelementptr inbounds %struct.radeon_asic, ptr %137, i32 0, i32 20, i32 12
  %138 = ptrtoint ptr %set_uvd_clocks23 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %set_uvd_clocks23, align 4
  %call24 = tail call i32 %139(ptr noundef %rdev, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0)
  %tobool25.not = icmp eq i32 %r.0, 0
  br i1 %tobool25.not, label %if.then26, label %done.if.end35_crit_edge

done.if.end35_crit_edge:                          ; preds = %done
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then26:                                        ; preds = %done
  %140 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %family, align 4
  %142 = zext i32 %141 to i64
  call void @__sanitizer_cov_trace_switch(i64 %142, ptr @__sancov_gen_cov_switch_values)
  switch i32 %141, label %if.then26.do.end32_crit_edge [
    i32 28, label %if.then26.sw.bb_crit_edge
    i32 29, label %if.then26.sw.bb_crit_edge205
    i32 31, label %if.then26.sw.bb_crit_edge206
    i32 30, label %if.then26.do.body_crit_edge
    i32 32, label %if.then26.do.body_crit_edge207
  ]

if.then26.do.body_crit_edge207:                   ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then26.do.body_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then26.sw.bb_crit_edge206:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.then26.sw.bb_crit_edge205:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.then26.sw.bb_crit_edge:                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.then26.do.end32_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end32

sw.bb:                                            ; preds = %if.then26.sw.bb_crit_edge, %if.then26.sw.bb_crit_edge205, %if.then26.sw.bb_crit_edge206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %143 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %144, i32 8192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %145 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i196 = getelementptr i8, ptr %146, i32 8192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i196, i32 268435456) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %147 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i198 = getelementptr i8, ptr %148, i32 9032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i198, i32 1056964608) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %149 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i200 = getelementptr i8, ptr %150, i32 8192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i200, i32 520093696) #6, !srcloc !50
  br label %do.body

do.body:                                          ; preds = %sw.bb, %if.then26.do.body_crit_edge, %if.then26.do.body_crit_edge207
  %rmmio.i201 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %151 = ptrtoint ptr %rmmio.i201 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %rmmio.i201, align 4
  %add.ptr.i202 = getelementptr i8, ptr %152, i32 63072
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i202) #6, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  %154 = or i32 %153, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %155 = ptrtoint ptr %rmmio.i201 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %rmmio.i201, align 4
  %add.ptr.i204 = getelementptr i8, ptr %156, i32 63072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i204, i32 %154) #6, !srcloc !50
  br label %do.end32

do.end32:                                         ; preds = %do.body, %if.then26.do.end32_crit_edge
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #9
  br label %if.end35

if.end35:                                         ; preds = %do.end32, %done.if.end35_crit_edge
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvd_v1_0_start(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 62632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !50
  %2 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i245 = getelementptr i8, ptr %3, i32 62720
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i245) #6, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  %5 = and i32 %4, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i247 = getelementptr i8, ptr %7, i32 62720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i247, i32 %5) #6, !srcloc !50
  %8 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i249 = getelementptr i8, ptr %9, i32 62708
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i249) #6, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  %11 = or i32 %10, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i251 = getelementptr i8, ptr %13, i32 62708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i251, i32 %11) #6, !srcloc !50
  %14 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i253 = getelementptr i8, ptr %15, i32 62592
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i253) #6, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  %17 = or i32 %16, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i255 = getelementptr i8, ptr %19, i32 62592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i255, i32 %17) #6, !srcloc !50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %21 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i257 = getelementptr i8, ptr %22, i32 63104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i257, i32 -283115520) #6, !srcloc !50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #6
  %28 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i259 = getelementptr i8, ptr %29, i32 3680
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i259) #6, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  %31 = and i32 %30, -1025
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %32 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i261 = getelementptr i8, ptr %33, i32 3680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i261, i32 %31) #6, !srcloc !50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748000) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %39 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i263 = getelementptr i8, ptr %40, i32 62872
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i263, i32 1076047872) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %41 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i265 = getelementptr i8, ptr %42, i32 62900
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i265, i32 167772160) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %43 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i267 = getelementptr i8, ptr %44, i32 62908
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i267, i32 0) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %45 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i269 = getelementptr i8, ptr %46, i32 62948
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i269, i32 1075842052) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %47 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i271 = getelementptr i8, ptr %48, i32 62952
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i271, i32 0) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %49 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i273 = getelementptr i8, ptr %50, i32 62956
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i273, i32 1075842052) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %51 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i275 = getelementptr i8, ptr %52, i32 62960
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i275, i32 0) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %53 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i277 = getelementptr i8, ptr %54, i32 62968
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i277, i32 0) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %55 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i279 = getelementptr i8, ptr %56, i32 62964
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i279, i32 -2013265920) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %57 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i281 = getelementptr i8, ptr %58, i32 63104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i281, i32 134217728) #6, !srcloc !50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 214748000) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %64 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i283 = getelementptr i8, ptr %65, i32 63072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i283, i32 131072) #6, !srcloc !50
  %66 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i285 = getelementptr i8, ptr %67, i32 62708
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i285) #6, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  %69 = and i32 %68, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %70 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i287 = getelementptr i8, ptr %71, i32 62708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i287, i32 %69) #6, !srcloc !50
  %72 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i289 = getelementptr i8, ptr %73, i32 62592
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i289) #6, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  %75 = and i32 %74, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %76 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i291 = getelementptr i8, ptr %77, i32 62592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i291, i32 %75) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %78 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i293 = getelementptr i8, ptr %79, i32 63104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i293, i32 0) #6, !srcloc !50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %80(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %81(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %82(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %83(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %84 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %84(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %85(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %86(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %87(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %88 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %88(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %89(i32 noundef 214748000) #6
  br label %for.cond55.preheader

for.cond55.preheader:                             ; preds = %if.end70.for.cond55.preheader_crit_edge, %entry
  %i.0341 = phi i32 [ %inc98, %if.end70.for.cond55.preheader_crit_edge ], [ 0, %entry ]
  br label %for.body57

for.body57:                                       ; preds = %while.body65.preheader.for.body57_crit_edge, %for.cond55.preheader
  %j.0338 = phi i32 [ 0, %for.cond55.preheader ], [ %inc, %while.body65.preheader.for.body57_crit_edge ]
  %90 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i295 = getelementptr i8, ptr %91, i32 63164
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i295) #6, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  %93 = and i32 %92, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool60.not = icmp eq i32 %93, 0
  br i1 %tobool60.not, label %while.body65.preheader, label %do.body103

while.body65.preheader:                           ; preds = %for.body57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %94 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %94(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %95(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %96(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %97 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %97(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %98 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %98(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %99 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %99(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %100 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %100(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %101(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %102 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %102(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %103 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %103(i32 noundef 214748000) #6
  %inc = add nuw nsw i32 %j.0338, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %if.end70, label %while.body65.preheader.for.body57_crit_edge

while.body65.preheader.for.body57_crit_edge:      ; preds = %while.body65.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body57

if.end70:                                         ; preds = %while.body65.preheader
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #6
  %104 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i297 = getelementptr i8, ptr %105, i32 63104
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i297) #6, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  %107 = or i32 %106, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %108 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i299 = getelementptr i8, ptr %109, i32 63104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i299, i32 %107) #6, !srcloc !50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %110 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %110(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %111 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %111(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %112 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %112(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %113 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %113(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %114 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %114(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %115 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %115(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %116 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %116(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %117 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %117(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %118 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %118(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %119 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %119(i32 noundef 214748000) #6
  %120 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i301 = getelementptr i8, ptr %121, i32 63104
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i301) #6, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  %123 = and i32 %122, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %124 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i303 = getelementptr i8, ptr %125, i32 63104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i303, i32 %123) #6, !srcloc !50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %126 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %126(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %127 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %127(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %128 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %128(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %129 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %129(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %130 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %130(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %131 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %131(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %132 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %132(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %133 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %133(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %134 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %134(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %135 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %135(i32 noundef 214748000) #6
  %inc98 = add nuw nsw i32 %i.0341, 1
  %exitcond342.not = icmp eq i32 %inc98, 10
  br i1 %exitcond342.not, label %if.then101, label %if.end70.for.cond55.preheader_crit_edge

if.end70.for.cond55.preheader_crit_edge:          ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond55.preheader

if.then101:                                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #6
  br label %cleanup158

do.body103:                                       ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #8
  %136 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i305 = getelementptr i8, ptr %137, i32 62720
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i305) #6, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  %139 = or i32 %138, 100663296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %140 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i307 = getelementptr i8, ptr %141, i32 62720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i307, i32 %139) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %142 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i309 = getelementptr i8, ptr %143, i32 63140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i309, i32 16843025) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %144 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i311 = getelementptr i8, ptr %145, i32 63128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i311, i32 0) #6, !srcloc !50
  %gpu_addr = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 5, i32 14
  %146 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %gpu_addr, align 8
  %shr = lshr i64 %147, 32
  %conv = trunc i64 %shr to i32
  %or112 = or i32 %conv, -2147024896
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %148 = tail call i32 @llvm.bswap.i32(i32 %or112) #6
  %149 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i313 = getelementptr i8, ptr %150, i32 62616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i313, i32 %148) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %151 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i315 = getelementptr i8, ptr %152, i32 63120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i315, i32 0) #6, !srcloc !50
  %153 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i317 = getelementptr i8, ptr %154, i32 63120
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i317) #6, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  %156 = tail call i32 @llvm.bswap.i32(i32 %155) #6
  %wptr = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 5, i32 7
  %157 = ptrtoint ptr %wptr to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %wptr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %158 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i319 = getelementptr i8, ptr %159, i32 63124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i319, i32 %155) #6, !srcloc !50
  %160 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %160)
  %161 = load i64, ptr %gpu_addr, align 8
  %conv116 = trunc i64 %161 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %162 = tail call i32 @llvm.bswap.i32(i32 %conv116) #6
  %163 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i321 = getelementptr i8, ptr %164, i32 63116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i321, i32 %162) #6, !srcloc !50
  %ring_size = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 5, i32 9
  %165 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %ring_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %166)
  %cmp.i = icmp ugt i32 %166, 1
  %sub.i322 = add i32 %166, -1
  %167 = tail call i32 @llvm.ctlz.i32(i32 %sub.i322, i1 false) #6, !range !51
  %add.i = sub nuw nsw i32 32, %167
  %phi.bo = and i32 %add.i, 73247
  %cond148 = select i1 %cmp.i, i32 %phi.bo, i32 0
  %168 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i324 = getelementptr i8, ptr %169, i32 63140
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i324) #6, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  %171 = and i32 %170, -522125569
  %172 = tail call i32 @llvm.bswap.i32(i32 %171)
  %and154 = or i32 %cond148, %172
  %or155 = or i32 %and154, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %173 = tail call i32 @llvm.bswap.i32(i32 %or155) #6
  %174 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i326 = getelementptr i8, ptr %175, i32 63140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i326, i32 %173) #6, !srcloc !50
  br label %cleanup158

cleanup158:                                       ; preds = %do.body103, %if.then101
  %retval.0 = phi i32 [ -1, %if.then101 ], [ 0, %do.body103 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_ring_lock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ring_unlock_commit(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @uvd_v1_0_fini(ptr nocapture noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @uvd_v1_0_stop(ptr noundef %rdev)
  %ready = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 5, i32 17
  %0 = ptrtoint ptr %ready to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %ready, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @uvd_v1_0_stop(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 63140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16843025) #6, !srcloc !50
  %2 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i38 = getelementptr i8, ptr %3, i32 62708
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38) #6, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  %5 = or i32 %4, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i40 = getelementptr i8, ptr %7, i32 62708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 %5) #6, !srcloc !50
  %8 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i42 = getelementptr i8, ptr %9, i32 62592
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42) #6, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  %11 = or i32 %10, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i44 = getelementptr i8, ptr %13, i32 62592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 %11) #6, !srcloc !50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i46 = getelementptr i8, ptr %16, i32 63104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 134217728) #6, !srcloc !50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %22 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i48 = getelementptr i8, ptr %23, i32 63072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 0) #6, !srcloc !50
  %24 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i50 = getelementptr i8, ptr %25, i32 62708
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i50) #6, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  %27 = and i32 %26, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %28 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i52 = getelementptr i8, ptr %29, i32 62708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 %27) #6, !srcloc !50
  %30 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i54 = getelementptr i8, ptr %31, i32 62592
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i54) #6, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  %33 = and i32 %32, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %34 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i56 = getelementptr i8, ptr %35, i32 62592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 %33) #6, !srcloc !50
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvd_v1_0_ring_test(ptr noundef %rdev, ptr noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 63220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1377894710) #6, !srcloc !50
  %call = tail call i32 @radeon_ring_lock(ptr noundef %rdev, ptr noundef %ring, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %idx = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 19
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6, i32 noundef %3, i32 noundef %call) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %count_dw.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 11
  %4 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count_dw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp slt i32 %5, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.radeon_ring_write.exit_crit_edge

if.end.radeon_ring_write.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_ring_write.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #6
  br label %radeon_ring_write.exit

radeon_ring_write.exit:                           ; preds = %if.then.i, %if.end.radeon_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 2
  %6 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ring1.i, align 8
  %wptr.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 7
  %8 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wptr.i, align 4
  %inc.i = add i32 %9, 1
  store i32 %inc.i, ptr %wptr.i, align 4
  %arrayidx.i = getelementptr i32, ptr %7, i32 %9
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 15805, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 16
  %11 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ptr_mask.i, align 4
  %13 = load i32, ptr %wptr.i, align 4
  %and.i = and i32 %13, %12
  store i32 %and.i, ptr %wptr.i, align 4
  %14 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count_dw.i, align 4
  %dec.i = add i32 %15, -1
  store i32 %dec.i, ptr %count_dw.i, align 4
  %ring_free_dw.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 10
  %16 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i = add i32 %17, -1
  store i32 %dec4.i, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i34 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i34, label %if.then.i35, label %radeon_ring_write.exit.radeon_ring_write.exit45_crit_edge

radeon_ring_write.exit.radeon_ring_write.exit45_crit_edge: ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_ring_write.exit45

if.then.i35:                                      ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #6
  br label %radeon_ring_write.exit45

radeon_ring_write.exit45:                         ; preds = %if.then.i35, %radeon_ring_write.exit.radeon_ring_write.exit45_crit_edge
  %18 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ring1.i, align 8
  %20 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %wptr.i, align 4
  %inc.i38 = add i32 %21, 1
  store i32 %inc.i38, ptr %wptr.i, align 4
  %arrayidx.i39 = getelementptr i32, ptr %19, i32 %21
  %22 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 -559038737, ptr %arrayidx.i39, align 4
  %23 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ptr_mask.i, align 4
  %25 = load i32, ptr %wptr.i, align 4
  %and.i41 = and i32 %25, %24
  store i32 %and.i41, ptr %wptr.i, align 4
  %26 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count_dw.i, align 4
  %dec.i42 = add i32 %27, -1
  store i32 %dec.i42, ptr %count_dw.i, align 4
  %28 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i44 = add i32 %29, -1
  store i32 %dec4.i44, ptr %ring_free_dw.i, align 8
  tail call void @radeon_ring_unlock_commit(ptr noundef %rdev, ptr noundef %ring, i1 noundef zeroext false) #6
  %usec_timeout = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %30 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %usec_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp48.not = icmp eq i32 %31, 0
  br i1 %cmp48.not, label %radeon_ring_write.exit45.for.end_crit_edge, label %radeon_ring_write.exit45.for.body_crit_edge

radeon_ring_write.exit45.for.body_crit_edge:      ; preds = %radeon_ring_write.exit45
  br label %for.body

radeon_ring_write.exit45.for.end_crit_edge:       ; preds = %radeon_ring_write.exit45
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %if.end4.for.body_crit_edge, %radeon_ring_write.exit45.for.body_crit_edge
  %i.049 = phi i32 [ %inc, %if.end4.for.body_crit_edge ], [ 0, %radeon_ring_write.exit45.for.body_crit_edge ]
  %32 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i47 = getelementptr i8, ptr %33, i32 63220
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47) #6, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  call void @__sanitizer_cov_trace_const_cmp4(i32 -272716322, i32 %34)
  %cmp2 = icmp eq i32 %34, -272716322
  br i1 %cmp2, label %for.body.for.end_crit_edge, label %if.end4

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end4:                                          ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748) #6
  %inc = add nuw i32 %i.049, 1
  %36 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %usec_timeout, align 4
  %cmp = icmp ult i32 %inc, %37
  br i1 %cmp, label %if.end4.for.body_crit_edge, label %for.cond.for.end_crit_edge

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %38 = tail call i32 @llvm.bswap.i32(i32 %34) #6
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.body.for.end_crit_edge, %radeon_ring_write.exit45.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %inc, %for.cond.for.end_crit_edge ], [ 0, %radeon_ring_write.exit45.for.end_crit_edge ], [ %i.049, %for.body.for.end_crit_edge ]
  %tmp.1 = phi i32 [ %38, %for.cond.for.end_crit_edge ], [ 0, %radeon_ring_write.exit45.for.end_crit_edge ], [ -559038737, %for.body.for.end_crit_edge ]
  %39 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %usec_timeout, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %40)
  %cmp6 = icmp ult i32 %i.0.lcssa, %40
  %idx9 = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 19
  %41 = ptrtoint ptr %idx9 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %idx9, align 8
  br i1 %cmp6, label %do.end, label %if.else

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %42, i32 noundef %i.0.lcssa) #9
  br label %cleanup

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9, i32 noundef %42, i32 noundef %tmp.1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %do.end ], [ -22, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @uvd_v1_0_semaphore_emit(ptr nocapture noundef readnone %rdev, ptr nocapture noundef readnone %ring, ptr nocapture noundef readnone %semaphore, i1 noundef zeroext %emit_wait) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @uvd_v1_0_ib_execute(ptr nocapture noundef %rdev, ptr nocapture noundef readonly %ib) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ring2 = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 4
  %0 = ptrtoint ptr %ring2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ring2, align 4
  %count_dw.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 11
  %2 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count_dw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp slt i32 %3, 1
  br i1 %cmp.i, label %if.then.i, label %entry.radeon_ring_write.exit_crit_edge

entry.radeon_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #6
  br label %radeon_ring_write.exit

radeon_ring_write.exit:                           ; preds = %if.then.i, %entry.radeon_ring_write.exit_crit_edge
  %ring1.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 2
  %4 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ring1.i, align 8
  %wptr.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 7
  %6 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wptr.i, align 4
  %inc.i = add i32 %7, 1
  store i32 %inc.i, ptr %wptr.i, align 4
  %arrayidx.i = getelementptr i32, ptr %5, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 15777, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 16
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
  %ring_free_dw.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 10
  %14 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i = add i32 %15, -1
  store i32 %dec4.i, ptr %ring_free_dw.i, align 8
  %gpu_addr = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 2
  %16 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %gpu_addr, align 8
  %conv = trunc i64 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i9 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i9, label %if.then.i10, label %radeon_ring_write.exit.radeon_ring_write.exit20_crit_edge

radeon_ring_write.exit.radeon_ring_write.exit20_crit_edge: ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_ring_write.exit20

if.then.i10:                                      ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #6
  br label %radeon_ring_write.exit20

radeon_ring_write.exit20:                         ; preds = %if.then.i10, %radeon_ring_write.exit.radeon_ring_write.exit20_crit_edge
  %18 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ring1.i, align 8
  %20 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %wptr.i, align 4
  %inc.i13 = add i32 %21, 1
  store i32 %inc.i13, ptr %wptr.i, align 4
  %arrayidx.i14 = getelementptr i32, ptr %19, i32 %21
  %22 = ptrtoint ptr %arrayidx.i14 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 %conv, ptr %arrayidx.i14, align 4
  %23 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ptr_mask.i, align 4
  %25 = load i32, ptr %wptr.i, align 4
  %and.i16 = and i32 %25, %24
  store i32 %and.i16, ptr %wptr.i, align 4
  %26 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count_dw.i, align 4
  %dec.i17 = add i32 %27, -1
  store i32 %dec.i17, ptr %count_dw.i, align 4
  %28 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i19 = add i32 %29, -1
  store i32 %dec4.i19, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i17)
  %cmp.i22 = icmp slt i32 %dec.i17, 1
  br i1 %cmp.i22, label %if.then.i23, label %radeon_ring_write.exit20.radeon_ring_write.exit33_crit_edge

radeon_ring_write.exit20.radeon_ring_write.exit33_crit_edge: ; preds = %radeon_ring_write.exit20
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_ring_write.exit33

if.then.i23:                                      ; preds = %radeon_ring_write.exit20
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #6
  br label %radeon_ring_write.exit33

radeon_ring_write.exit33:                         ; preds = %if.then.i23, %radeon_ring_write.exit20.radeon_ring_write.exit33_crit_edge
  %30 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ring1.i, align 8
  %32 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %wptr.i, align 4
  %inc.i26 = add i32 %33, 1
  store i32 %inc.i26, ptr %wptr.i, align 4
  %arrayidx.i27 = getelementptr i32, ptr %31, i32 %33
  %34 = ptrtoint ptr %arrayidx.i27 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 15778, ptr %arrayidx.i27, align 4
  %35 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ptr_mask.i, align 4
  %37 = load i32, ptr %wptr.i, align 4
  %and.i29 = and i32 %37, %36
  store i32 %and.i29, ptr %wptr.i, align 4
  %38 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %count_dw.i, align 4
  %dec.i30 = add i32 %39, -1
  store i32 %dec.i30, ptr %count_dw.i, align 4
  %40 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i32 = add i32 %41, -1
  store i32 %dec4.i32, ptr %ring_free_dw.i, align 8
  %length_dw = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 1
  %42 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %length_dw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i30)
  %cmp.i35 = icmp slt i32 %dec.i30, 1
  br i1 %cmp.i35, label %if.then.i36, label %radeon_ring_write.exit33.radeon_ring_write.exit46_crit_edge

radeon_ring_write.exit33.radeon_ring_write.exit46_crit_edge: ; preds = %radeon_ring_write.exit33
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_ring_write.exit46

if.then.i36:                                      ; preds = %radeon_ring_write.exit33
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #6
  br label %radeon_ring_write.exit46

radeon_ring_write.exit46:                         ; preds = %if.then.i36, %radeon_ring_write.exit33.radeon_ring_write.exit46_crit_edge
  %44 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ring1.i, align 8
  %46 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %wptr.i, align 4
  %inc.i39 = add i32 %47, 1
  store i32 %inc.i39, ptr %wptr.i, align 4
  %arrayidx.i40 = getelementptr i32, ptr %45, i32 %47
  %48 = ptrtoint ptr %arrayidx.i40 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 %43, ptr %arrayidx.i40, align 4
  %49 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ptr_mask.i, align 4
  %51 = load i32, ptr %wptr.i, align 4
  %and.i42 = and i32 %51, %50
  store i32 %and.i42, ptr %wptr.i, align 4
  %52 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %count_dw.i, align 4
  %dec.i43 = add i32 %53, -1
  store i32 %dec.i43, ptr %count_dw.i, align 4
  %54 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i45 = add i32 %55, -1
  store i32 %dec4.i45, ptr %ring_free_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvd_v1_0_ib_test(ptr noundef %rdev, ptr nocapture noundef readonly %ring) local_unnamed_addr #0 align 64 {
entry:
  %fence = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fence) #6
  %0 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %fence, align 4
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %1 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %2)
  %cmp = icmp ult i32 %2, 38
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %3 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %asic, align 8
  %set_uvd_clocks = getelementptr inbounds %struct.radeon_asic, ptr %4, i32 0, i32 20, i32 12
  %5 = ptrtoint ptr %set_uvd_clocks to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %set_uvd_clocks, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %6(ptr noundef %rdev, i32 noundef 10000, i32 noundef 10000) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 %6(ptr noundef %rdev, i32 noundef 53300, i32 noundef 40000) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %r.0 = phi i32 [ %call, %if.then ], [ %call4, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0)
  %tobool.not = icmp eq i32 %r.0, 0
  br i1 %tobool.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10, i32 noundef %r.0) #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %idx = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 19
  %7 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idx, align 8
  %call7 = tail call i32 @radeon_uvd_get_create_msg(ptr noundef %rdev, i32 noundef %8, i32 noundef 1, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11, i32 noundef %call7) #6
  br label %error

if.end10:                                         ; preds = %if.end6
  %9 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %idx, align 8
  %call12 = call i32 @radeon_uvd_get_destroy_msg(ptr noundef %rdev, i32 noundef %10, i32 noundef 1, ptr noundef nonnull %fence) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12, i32 noundef %call12) #6
  br label %error

if.end15:                                         ; preds = %if.end10
  %11 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fence, align 4
  %call.i = call i32 @jiffies_to_usecs(i32 noundef 1073741822) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, 1000000
  %spec.select.i = select i1 %cmp.i, i32 1073741822, i32 100
  %call17 = call i32 @radeon_fence_wait_timeout(ptr noundef %12, i1 noundef zeroext false, i32 noundef %spec.select.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.else20

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13, i32 noundef %call17) #6
  br label %error

if.else20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp21 = icmp eq i32 %call17, 0
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14) #6
  br label %error

if.end24:                                         ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %idx, align 8
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %14) #9
  br label %error

error:                                            ; preds = %if.end24, %if.then22, %if.then19, %if.then14, %if.then9
  %r.1 = phi i32 [ %call7, %if.then9 ], [ %call12, %if.then14 ], [ %call17, %if.then19 ], [ -110, %if.then22 ], [ 0, %if.end24 ]
  call void @radeon_fence_unref(ptr noundef nonnull %fence) #6
  %asic27 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %15 = ptrtoint ptr %asic27 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %asic27, align 8
  %set_uvd_clocks29 = getelementptr inbounds %struct.radeon_asic, ptr %16, i32 0, i32 20, i32 12
  %17 = ptrtoint ptr %set_uvd_clocks29 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_uvd_clocks29, align 4
  %call30 = call i32 %18(ptr noundef %rdev, i32 noundef 0, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %error, %if.then5
  %retval.0 = phi i32 [ %r.0, %if.then5 ], [ %r.1, %error ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_uvd_get_create_msg(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_uvd_get_destroy_msg(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_fence_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !16, !17, !18, !19, !21, !23, !25, !27, !29, !31, !33, !34, !35, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/uvd_v1_0.c", i32 182, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/uvd_v1_0.c", i32 235, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @uvd_v1_0_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @uvd_v1_0_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/radeon/uvd_v1_0.c", i32 341, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/radeon/uvd_v1_0.c", i32 350, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/radeon/uvd_v1_0.c", i32 430, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/radeon/uvd_v1_0.c", i32 445, i32 3}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @uvd_v1_0_ring_test._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @uvd_v1_0_ring_test._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/radeon/uvd_v1_0.c", i32 448, i32 3}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/radeon/uvd_v1_0.c", i32 510, i32 3}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/radeon/uvd_v1_0.c", i32 516, i32 3}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/radeon/uvd_v1_0.c", i32 522, i32 3}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/radeon/uvd_v1_0.c", i32 529, i32 3}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/radeon/uvd_v1_0.c", i32 532, i32 3}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/radeon/uvd_v1_0.c", i32 537, i32 2}
!33 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @uvd_v1_0_ib_test._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @uvd_v1_0_ib_test._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/radeon/radeon.h", i32 2721, i32 3}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i64 6698552}
!48 = !{i64 2157422798}
!49 = !{i64 2157423205}
!50 = !{i64 6698134}
!51 = !{i32 0, i32 33}
