; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/r600_dma.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/r600_dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.radeon_asic_ring = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.radeon_fence = type { %struct.dma_fence, ptr, i64, i32, i8, %struct.wait_queue_entry }
%struct.dma_fence = type { ptr, ptr, %union.anon.84, i64, i64, i32, %struct.kref, i32 }
%union.anon.84 = type { i64 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.radeon_semaphore = type { ptr, i32, i64 }
%struct.radeon_ib = type { ptr, i32, i64, ptr, i32, ptr, ptr, i8, %struct.radeon_sync }
%struct.radeon_sync = type { [4 x ptr], [8 x ptr], ptr }

@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"radeon: dma failed to lock ring %d (%d).\0A\00", [54 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@r600_dma_ring_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016[drm] ring test on %d succeeded in %d usecs\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"r600_dma_ring_test\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/gpu/drm/radeon/r600_dma.c\00", [62 x i8] zeroinitializer }, align 32
@r600_dma_ring_test._entry_ptr = internal global ptr @r600_dma_ring_test._entry, section ".printk_index", align 4
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"radeon: ring %d test failed (0x%08X)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"radeon: failed to get ib (%d).\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"radeon: failed to schedule ib (%d).\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"radeon: fence wait failed (%d).\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"radeon: fence wait timed out.\0A\00", [33 x i8] zeroinitializer }, align 32
@r600_dma_ib_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016[drm] ib test on ring %d succeeded in %u usecs\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"r600_dma_ib_test\00", [47 x i8] zeroinitializer }, align 32
@r600_dma_ib_test._entry_ptr = internal global ptr @r600_dma_ib_test._entry, section ".printk_index", align 4
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"radeon: ib test failed (0x%08X)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"radeon: moving bo (%d).\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"radeon: writing more dwords to the ring than expected!\0A\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 250, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 267, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 269, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 354, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 367, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 373, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 376, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 387, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 389, i32 3 }
@___asan_gen_.57 = private constant [37 x i8] c"../drivers/gpu/drm/radeon/r600_dma.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 462, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [35 x i8] c"../drivers/gpu/drm/radeon/radeon.h\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 2721, i32 3 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @r600_dma_ib_test._entry, ptr @r600_dma_ib_test._entry_ptr, ptr @r600_dma_ring_test._entry, ptr @r600_dma_ring_test._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_dma_ring_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_dma_ib_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r600_dma_get_rptr(ptr nocapture noundef readonly %rdev, ptr nocapture noundef readonly %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 62, i32 3
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 8, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %wb2 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 62, i32 1
  %2 = ptrtoint ptr %wb2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wb2, align 4
  %rptr_offs = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 3
  %4 = ptrtoint ptr %rptr_offs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rptr_offs, align 4
  %div5 = lshr i32 %5, 2
  %arrayidx = getelementptr i32, ptr %3, i32 %div5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %8 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 53256
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %rptr.0 = phi i32 [ %7, %if.then ], [ %11, %if.else ]
  %and = lshr i32 %rptr.0, 2
  %shr = and i32 %and, 65535
  ret i32 %shr
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r600_dma_get_wptr(ptr nocapture noundef readonly %rdev, ptr nocapture noundef readnone %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 53260
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  %and = lshr i32 %3, 2
  %shr = and i32 %and, 65535
  ret i32 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_dma_set_wptr(ptr nocapture noundef readonly %rdev, ptr nocapture noundef readonly %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %wptr = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 7
  %0 = ptrtoint ptr %wptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wptr, align 4
  %shl = shl i32 %1, 2
  %and = and i32 %shl, 262140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %2 = tail call i32 @llvm.bswap.i32(i32 %and) #5
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %3 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 53260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #5, !srcloc !42
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_dma_stop(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 53248
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %3 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %asic, align 8
  %copy_ring_index = getelementptr inbounds %struct.radeon_asic, ptr %4, i32 0, i32 17, i32 5
  %5 = ptrtoint ptr %copy_ring_index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %copy_ring_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp = icmp eq i32 %6, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %visible_vram_size = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 4
  %7 = ptrtoint ptr %visible_vram_size to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %visible_vram_size, align 8
  tail call void @radeon_ttm_set_active_vram_size(ptr noundef %rdev, i64 noundef %8) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %9 = and i32 %2, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %11, i32 53248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %9) #5, !srcloc !42
  %ready = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 3, i32 17
  %12 = ptrtoint ptr %ready to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %ready, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ttm_set_active_vram_size(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r600_dma_resume(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 53316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %2 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i119 = getelementptr i8, ptr %3, i32 53320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119, i32 0) #5, !srcloc !42
  %ring_size = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 3, i32 9
  %4 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ring_size, align 4
  %div117 = lshr i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %5)
  %cmp.i = icmp ugt i32 %5, 7
  %sub.i120 = add nsw i32 %div117, -1
  %6 = tail call i32 @llvm.ctlz.i32(i32 %sub.i120, i1 false) #5, !range !43
  %.neg = mul nsw i32 %6, -2
  %phi.bo = add nsw i32 %.neg, 64
  %cond34 = select i1 %cmp.i, i32 %phi.bo, i32 0
  %or = or i32 %cond34, 8704
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %7 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %8 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i122 = getelementptr i8, ptr %9, i32 53248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i122, i32 %7) #5, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i124 = getelementptr i8, ptr %11, i32 53256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i124, i32 0) #5, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i126 = getelementptr i8, ptr %13, i32 53260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i126, i32 0) #5, !srcloc !42
  %gpu_addr = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 62, i32 2
  %14 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %gpu_addr, align 8
  %add35 = add i64 %15, 1792
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %sh.diff = lshr i64 %add35, 8
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %and = and i32 %tr.sh.diff, -16777216
  %16 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i128 = getelementptr i8, ptr %17, i32 53276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128, i32 %and) #5, !srcloc !42
  %18 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %gpu_addr, align 8
  %20 = trunc i64 %19 to i32
  %21 = add i32 %20, 1792
  %conv42 = and i32 %21, -4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %22 = tail call i32 @llvm.bswap.i32(i32 %conv42) #5
  %23 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i130 = getelementptr i8, ptr %24, i32 53280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130, i32 %22) #5, !srcloc !42
  %enabled = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 62, i32 3
  %25 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %enabled, align 8, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not = icmp eq i8 %26, 0
  %or44 = or i32 %cond34, 12800
  %spec.select = select i1 %tobool.not, i32 %or, i32 %or44
  %gpu_addr45 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 3, i32 14
  %27 = ptrtoint ptr %gpu_addr45 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %gpu_addr45, align 8
  %shr46 = lshr i64 %28, 8
  %conv47 = trunc i64 %shr46 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %29 = tail call i32 @llvm.bswap.i32(i32 %conv47) #5
  %30 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i132 = getelementptr i8, ptr %31, i32 53252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i132, i32 %29) #5, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %32 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i134 = getelementptr i8, ptr %33, i32 53284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i134, i32 285212672) #5, !srcloc !42
  %34 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i136 = getelementptr i8, ptr %35, i32 53292
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i136) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  %37 = and i32 %36, -17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %38 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i138 = getelementptr i8, ptr %39, i32 53292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i138, i32 %37) #5, !srcloc !42
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %40 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %41)
  %cmp51 = icmp ugt i32 %41, 34
  br i1 %cmp51, label %if.then53, label %entry.if.end54_crit_edge

entry.if.end54_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54

if.then53:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %42 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i140 = getelementptr i8, ptr %43, i32 53436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i140, i32 16777216) #5, !srcloc !42
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %entry.if.end54_crit_edge
  %wptr = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 3, i32 7
  %44 = ptrtoint ptr %wptr to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %wptr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %45 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i142 = getelementptr i8, ptr %46, i32 53260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i142, i32 0) #5, !srcloc !42
  %or57 = or i32 %spec.select, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %47 = tail call i32 @llvm.bswap.i32(i32 %or57) #5
  %48 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i144 = getelementptr i8, ptr %49, i32 53248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i144, i32 %47) #5, !srcloc !42
  %ready = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 3, i32 17
  %50 = ptrtoint ptr %ready to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %ready, align 8
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %51 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %asic, align 8
  %arrayidx59 = getelementptr %struct.radeon_asic, ptr %52, i32 0, i32 14, i32 3
  %53 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx59, align 4
  %ring_test = getelementptr inbounds %struct.radeon_asic_ring, ptr %54, i32 0, i32 10
  %55 = ptrtoint ptr %ring_test to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ring_test, align 4
  %call60 = tail call i32 %56(ptr noundef %rdev, ptr noundef %arrayidx) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end64, label %if.then62

if.then62:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  %57 = ptrtoint ptr %ready to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %ready, align 8
  br label %cleanup

if.end64:                                         ; preds = %if.end54
  %58 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %asic, align 8
  %copy_ring_index = getelementptr inbounds %struct.radeon_asic, ptr %59, i32 0, i32 17, i32 5
  %60 = ptrtoint ptr %copy_ring_index to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %copy_ring_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %61)
  %cmp66 = icmp eq i32 %61, 3
  br i1 %cmp66, label %if.then68, label %if.end64.cleanup_crit_edge

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then68:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  %real_vram_size = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 11
  %62 = ptrtoint ptr %real_vram_size to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %real_vram_size, align 8
  tail call void @radeon_ttm_set_active_vram_size(ptr noundef %rdev, i64 noundef %63) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then68, %if.end64.cleanup_crit_edge, %if.then62
  ret i32 %call60
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_dma_fini(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 53248
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  %asic.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %3 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %asic.i, align 8
  %copy_ring_index.i = getelementptr inbounds %struct.radeon_asic, ptr %4, i32 0, i32 17, i32 5
  %5 = ptrtoint ptr %copy_ring_index.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %copy_ring_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp.i = icmp eq i32 %6, 3
  br i1 %cmp.i, label %if.then.i, label %entry.r600_dma_stop.exit_crit_edge

entry.r600_dma_stop.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %r600_dma_stop.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %visible_vram_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 4
  %7 = ptrtoint ptr %visible_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %visible_vram_size.i, align 8
  tail call void @radeon_ttm_set_active_vram_size(ptr noundef %rdev, i64 noundef %8) #5
  br label %r600_dma_stop.exit

r600_dma_stop.exit:                               ; preds = %if.then.i, %entry.r600_dma_stop.exit_crit_edge
  %9 = and i32 %2, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %11, i32 53248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %9) #5, !srcloc !42
  %ready.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 3, i32 17
  %12 = ptrtoint ptr %ready.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %ready.i, align 8
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 3
  tail call void @radeon_ring_fini(ptr noundef %rdev, ptr noundef %arrayidx) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ring_fini(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @r600_dma_is_lockup(ptr noundef %rdev, ptr noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @r600_gpu_check_soft_reset(ptr noundef %rdev) #5
  %and = and i32 %call, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @radeon_ring_lockup_update(ptr noundef %rdev, ptr noundef %ring) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call zeroext i1 @radeon_ring_test_lockup(ptr noundef %rdev, ptr noundef %ring) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i1 [ %call1, %if.end ], [ false, %if.then ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_gpu_check_soft_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ring_lockup_update(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_ring_test_lockup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r600_dma_ring_test(ptr noundef %rdev, ptr noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %idx = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 19
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  %. = select i1 %cmp, i32 3588, i32 3592
  %gpu_addr1 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 62, i32 2
  %2 = ptrtoint ptr %gpu_addr1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %gpu_addr1, align 8
  %wb3 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 62, i32 1
  %4 = ptrtoint ptr %wb3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wb3, align 4
  %div61 = lshr exact i32 %., 2
  %arrayidx = getelementptr i32, ptr %5, i32 %div61
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 -1377894710, ptr %arrayidx, align 4
  %call = tail call i32 @radeon_ring_lock(ptr noundef %rdev, ptr noundef %ring, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idx, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %8, i32 noundef %call) #5
  br label %cleanup

if.end6:                                          ; preds = %entry
  %conv = zext i32 %. to i64
  %add = add i64 %3, %conv
  %count_dw.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 11
  %9 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count_dw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.i = icmp slt i32 %10, 1
  br i1 %cmp.i, label %if.then.i, label %if.end6.radeon_ring_write.exit_crit_edge

if.end6.radeon_ring_write.exit_crit_edge:         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #5
  br label %radeon_ring_write.exit

radeon_ring_write.exit:                           ; preds = %if.then.i, %if.end6.radeon_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 2
  %11 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ring1.i, align 8
  %wptr.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 7
  %13 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wptr.i, align 4
  %inc.i = add i32 %14, 1
  store i32 %inc.i, ptr %wptr.i, align 4
  %arrayidx.i = getelementptr i32, ptr %12, i32 %14
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 536870913, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 16
  %16 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ptr_mask.i, align 4
  %18 = load i32, ptr %wptr.i, align 4
  %and.i = and i32 %18, %17
  store i32 %and.i, ptr %wptr.i, align 4
  %19 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %count_dw.i, align 4
  %dec.i = add i32 %20, -1
  store i32 %dec.i, ptr %count_dw.i, align 4
  %ring_free_dw.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 10
  %21 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i = add i32 %22, -1
  store i32 %dec4.i, ptr %ring_free_dw.i, align 8
  %conv7 = trunc i64 %add to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i63 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i63, label %if.then.i64, label %radeon_ring_write.exit.radeon_ring_write.exit74_crit_edge

radeon_ring_write.exit.radeon_ring_write.exit74_crit_edge: ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit74

if.then.i64:                                      ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #5
  br label %radeon_ring_write.exit74

radeon_ring_write.exit74:                         ; preds = %if.then.i64, %radeon_ring_write.exit.radeon_ring_write.exit74_crit_edge
  %23 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ring1.i, align 8
  %25 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %wptr.i, align 4
  %inc.i67 = add i32 %26, 1
  store i32 %inc.i67, ptr %wptr.i, align 4
  %arrayidx.i68 = getelementptr i32, ptr %24, i32 %26
  %27 = ptrtoint ptr %arrayidx.i68 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 %conv7, ptr %arrayidx.i68, align 4
  %28 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ptr_mask.i, align 4
  %30 = load i32, ptr %wptr.i, align 4
  %and.i70 = and i32 %30, %29
  store i32 %and.i70, ptr %wptr.i, align 4
  %31 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %count_dw.i, align 4
  %dec.i71 = add i32 %32, -1
  store i32 %dec.i71, ptr %count_dw.i, align 4
  %33 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i73 = add i32 %34, -1
  store i32 %dec4.i73, ptr %ring_free_dw.i, align 8
  %shr = lshr i64 %add, 32
  %conv9 = trunc i64 %shr to i32
  %and10 = and i32 %conv9, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i71)
  %cmp.i76 = icmp slt i32 %dec.i71, 1
  br i1 %cmp.i76, label %if.then.i77, label %radeon_ring_write.exit74.radeon_ring_write.exit87_crit_edge

radeon_ring_write.exit74.radeon_ring_write.exit87_crit_edge: ; preds = %radeon_ring_write.exit74
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit87

if.then.i77:                                      ; preds = %radeon_ring_write.exit74
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #5
  br label %radeon_ring_write.exit87

radeon_ring_write.exit87:                         ; preds = %if.then.i77, %radeon_ring_write.exit74.radeon_ring_write.exit87_crit_edge
  %35 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ring1.i, align 8
  %37 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %wptr.i, align 4
  %inc.i80 = add i32 %38, 1
  store i32 %inc.i80, ptr %wptr.i, align 4
  %arrayidx.i81 = getelementptr i32, ptr %36, i32 %38
  %39 = ptrtoint ptr %arrayidx.i81 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 %and10, ptr %arrayidx.i81, align 4
  %40 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ptr_mask.i, align 4
  %42 = load i32, ptr %wptr.i, align 4
  %and.i83 = and i32 %42, %41
  store i32 %and.i83, ptr %wptr.i, align 4
  %43 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %count_dw.i, align 4
  %dec.i84 = add i32 %44, -1
  store i32 %dec.i84, ptr %count_dw.i, align 4
  %45 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i86 = add i32 %46, -1
  store i32 %dec4.i86, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i84)
  %cmp.i89 = icmp slt i32 %dec.i84, 1
  br i1 %cmp.i89, label %if.then.i90, label %radeon_ring_write.exit87.radeon_ring_write.exit100_crit_edge

radeon_ring_write.exit87.radeon_ring_write.exit100_crit_edge: ; preds = %radeon_ring_write.exit87
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit100

if.then.i90:                                      ; preds = %radeon_ring_write.exit87
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #5
  br label %radeon_ring_write.exit100

radeon_ring_write.exit100:                        ; preds = %if.then.i90, %radeon_ring_write.exit87.radeon_ring_write.exit100_crit_edge
  %47 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ring1.i, align 8
  %49 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %wptr.i, align 4
  %inc.i93 = add i32 %50, 1
  store i32 %inc.i93, ptr %wptr.i, align 4
  %arrayidx.i94 = getelementptr i32, ptr %48, i32 %50
  %51 = ptrtoint ptr %arrayidx.i94 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile i32 -559038737, ptr %arrayidx.i94, align 4
  %52 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ptr_mask.i, align 4
  %54 = load i32, ptr %wptr.i, align 4
  %and.i96 = and i32 %54, %53
  store i32 %and.i96, ptr %wptr.i, align 4
  %55 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %count_dw.i, align 4
  %dec.i97 = add i32 %56, -1
  store i32 %dec.i97, ptr %count_dw.i, align 4
  %57 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i99 = add i32 %58, -1
  store i32 %dec4.i99, ptr %ring_free_dw.i, align 8
  tail call void @radeon_ring_unlock_commit(ptr noundef %rdev, ptr noundef %ring, i1 noundef zeroext false) #5
  %usec_timeout = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %59 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %usec_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp11104.not = icmp eq i32 %60, 0
  br i1 %cmp11104.not, label %radeon_ring_write.exit100.if.else28_crit_edge, label %radeon_ring_write.exit100.for.body_crit_edge

radeon_ring_write.exit100.for.body_crit_edge:     ; preds = %radeon_ring_write.exit100
  br label %for.body

radeon_ring_write.exit100.if.else28_crit_edge:    ; preds = %radeon_ring_write.exit100
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else28

for.body:                                         ; preds = %if.end20.for.body_crit_edge, %radeon_ring_write.exit100.for.body_crit_edge
  %i.0105 = phi i32 [ %inc, %if.end20.for.body_crit_edge ], [ 0, %radeon_ring_write.exit100.for.body_crit_edge ]
  %61 = ptrtoint ptr %wb3 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %wb3, align 4
  %arrayidx16 = getelementptr i32, ptr %62, i32 %div61
  %63 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %arrayidx16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -272716322, i32 %64)
  %cmp17 = icmp eq i32 %64, -272716322
  br i1 %cmp17, label %do.end, label %if.end20

if.end20:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 214748) #5
  %inc = add nuw i32 %i.0105, 1
  %66 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %usec_timeout, align 4
  %cmp11 = icmp ult i32 %inc, %67
  br i1 %cmp11, label %if.end20.for.body_crit_edge, label %for.cond.if.else28_crit_edge

if.end20.for.body_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %68 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %idx, align 8
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %69, i32 noundef %i.0105) #8
  br label %cleanup

for.cond.if.else28_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %70 = tail call i32 @llvm.bswap.i32(i32 %64)
  br label %if.else28

if.else28:                                        ; preds = %for.cond.if.else28_crit_edge, %radeon_ring_write.exit100.if.else28_crit_edge
  %tmp.0.lcssa = phi i32 [ %70, %for.cond.if.else28_crit_edge ], [ -889266515, %radeon_ring_write.exit100.if.else28_crit_edge ]
  %71 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %idx, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4, i32 noundef %72, i32 noundef %tmp.0.lcssa) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else28, %do.end, %if.then4
  %retval.0 = phi i32 [ %call, %if.then4 ], [ 0, %do.end ], [ -22, %if.else28 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_ring_lock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ring_unlock_commit(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_dma_fence_ring_emit(ptr noundef %rdev, ptr nocapture noundef readonly %fence) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #5
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
  store volatile i32 1610612736, ptr %arrayidx.i, align 4
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
  %18 = trunc i64 %3 to i32
  %conv = and i32 %18, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i19 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i19, label %if.then.i20, label %radeon_ring_write.exit.radeon_ring_write.exit30_crit_edge

radeon_ring_write.exit.radeon_ring_write.exit30_crit_edge: ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit30

if.then.i20:                                      ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #5
  br label %radeon_ring_write.exit30

radeon_ring_write.exit30:                         ; preds = %if.then.i20, %radeon_ring_write.exit.radeon_ring_write.exit30_crit_edge
  %19 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ring1.i, align 8
  %21 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %wptr.i, align 4
  %inc.i23 = add i32 %22, 1
  store i32 %inc.i23, ptr %wptr.i, align 4
  %arrayidx.i24 = getelementptr i32, ptr %20, i32 %22
  %23 = ptrtoint ptr %arrayidx.i24 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 %conv, ptr %arrayidx.i24, align 4
  %24 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ptr_mask.i, align 4
  %26 = load i32, ptr %wptr.i, align 4
  %and.i26 = and i32 %26, %25
  store i32 %and.i26, ptr %wptr.i, align 4
  %27 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %count_dw.i, align 4
  %dec.i27 = add i32 %28, -1
  store i32 %dec.i27, ptr %count_dw.i, align 4
  %29 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i29 = add i32 %30, -1
  store i32 %dec4.i29, ptr %ring_free_dw.i, align 8
  %shr = lshr i64 %3, 32
  %conv6 = trunc i64 %shr to i32
  %and7 = and i32 %conv6, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i27)
  %cmp.i32 = icmp slt i32 %dec.i27, 1
  br i1 %cmp.i32, label %if.then.i33, label %radeon_ring_write.exit30.radeon_ring_write.exit43_crit_edge

radeon_ring_write.exit30.radeon_ring_write.exit43_crit_edge: ; preds = %radeon_ring_write.exit30
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit43

if.then.i33:                                      ; preds = %radeon_ring_write.exit30
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #5
  br label %radeon_ring_write.exit43

radeon_ring_write.exit43:                         ; preds = %if.then.i33, %radeon_ring_write.exit30.radeon_ring_write.exit43_crit_edge
  %31 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ring1.i, align 8
  %33 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %wptr.i, align 4
  %inc.i36 = add i32 %34, 1
  store i32 %inc.i36, ptr %wptr.i, align 4
  %arrayidx.i37 = getelementptr i32, ptr %32, i32 %34
  %35 = ptrtoint ptr %arrayidx.i37 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 %and7, ptr %arrayidx.i37, align 4
  %36 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ptr_mask.i, align 4
  %38 = load i32, ptr %wptr.i, align 4
  %and.i39 = and i32 %38, %37
  store i32 %and.i39, ptr %wptr.i, align 4
  %39 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count_dw.i, align 4
  %dec.i40 = add i32 %40, -1
  store i32 %dec.i40, ptr %count_dw.i, align 4
  %41 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i42 = add i32 %42, -1
  store i32 %dec4.i42, ptr %ring_free_dw.i, align 8
  %seq = getelementptr inbounds %struct.radeon_fence, ptr %fence, i32 0, i32 2
  %43 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %seq, align 8
  %conv9 = trunc i64 %44 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i40)
  %cmp.i45 = icmp slt i32 %dec.i40, 1
  br i1 %cmp.i45, label %if.then.i46, label %radeon_ring_write.exit43.radeon_ring_write.exit56_crit_edge

radeon_ring_write.exit43.radeon_ring_write.exit56_crit_edge: ; preds = %radeon_ring_write.exit43
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit56

if.then.i46:                                      ; preds = %radeon_ring_write.exit43
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #5
  br label %radeon_ring_write.exit56

radeon_ring_write.exit56:                         ; preds = %if.then.i46, %radeon_ring_write.exit43.radeon_ring_write.exit56_crit_edge
  %45 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ring1.i, align 8
  %47 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %wptr.i, align 4
  %inc.i49 = add i32 %48, 1
  store i32 %inc.i49, ptr %wptr.i, align 4
  %arrayidx.i50 = getelementptr i32, ptr %46, i32 %48
  %49 = ptrtoint ptr %arrayidx.i50 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile i32 %conv9, ptr %arrayidx.i50, align 4
  %50 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ptr_mask.i, align 4
  %52 = load i32, ptr %wptr.i, align 4
  %and.i52 = and i32 %52, %51
  store i32 %and.i52, ptr %wptr.i, align 4
  %53 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %count_dw.i, align 4
  %dec.i53 = add i32 %54, -1
  store i32 %dec.i53, ptr %count_dw.i, align 4
  %55 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i55 = add i32 %56, -1
  store i32 %dec4.i55, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i53)
  %cmp.i58 = icmp slt i32 %dec.i53, 1
  br i1 %cmp.i58, label %if.then.i59, label %radeon_ring_write.exit56.radeon_ring_write.exit69_crit_edge

radeon_ring_write.exit56.radeon_ring_write.exit69_crit_edge: ; preds = %radeon_ring_write.exit56
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit69

if.then.i59:                                      ; preds = %radeon_ring_write.exit56
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #5
  br label %radeon_ring_write.exit69

radeon_ring_write.exit69:                         ; preds = %if.then.i59, %radeon_ring_write.exit56.radeon_ring_write.exit69_crit_edge
  %57 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ring1.i, align 8
  %59 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %wptr.i, align 4
  %inc.i62 = add i32 %60, 1
  store i32 %inc.i62, ptr %wptr.i, align 4
  %arrayidx.i63 = getelementptr i32, ptr %58, i32 %60
  %61 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 1879048192, ptr %arrayidx.i63, align 4
  %62 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ptr_mask.i, align 4
  %64 = load i32, ptr %wptr.i, align 4
  %and.i65 = and i32 %64, %63
  store i32 %and.i65, ptr %wptr.i, align 4
  %65 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %count_dw.i, align 4
  %dec.i66 = add i32 %66, -1
  store i32 %dec.i66, ptr %count_dw.i, align 4
  %67 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i68 = add i32 %68, -1
  store i32 %dec4.i68, ptr %ring_free_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @r600_dma_semaphore_ring_emit(ptr nocapture noundef readnone %rdev, ptr nocapture noundef %ring, ptr nocapture noundef readonly %semaphore, i1 noundef zeroext %emit_wait) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %gpu_addr = getelementptr inbounds %struct.radeon_semaphore, ptr %semaphore, i32 0, i32 2
  %0 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %gpu_addr, align 8
  %or = select i1 %emit_wait, i32 1342177280, i32 1346371584
  %count_dw.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 11
  %2 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count_dw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp slt i32 %3, 1
  br i1 %cmp.i, label %if.then.i, label %entry.radeon_ring_write.exit_crit_edge

entry.radeon_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #5
  br label %radeon_ring_write.exit

radeon_ring_write.exit:                           ; preds = %if.then.i, %entry.radeon_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 2
  %4 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ring1.i, align 8
  %wptr.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 7
  %6 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wptr.i, align 4
  %inc.i = add i32 %7, 1
  store i32 %inc.i, ptr %wptr.i, align 4
  %arrayidx.i = getelementptr i32, ptr %5, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 %or, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 16
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
  %ring_free_dw.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 10
  %14 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i = add i32 %15, -1
  store i32 %dec4.i, ptr %ring_free_dw.i, align 8
  %16 = trunc i64 %1 to i32
  %conv = and i32 %16, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i10 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i10, label %if.then.i11, label %radeon_ring_write.exit.radeon_ring_write.exit21_crit_edge

radeon_ring_write.exit.radeon_ring_write.exit21_crit_edge: ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit21

if.then.i11:                                      ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #5
  br label %radeon_ring_write.exit21

radeon_ring_write.exit21:                         ; preds = %if.then.i11, %radeon_ring_write.exit.radeon_ring_write.exit21_crit_edge
  %17 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ring1.i, align 8
  %19 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wptr.i, align 4
  %inc.i14 = add i32 %20, 1
  store i32 %inc.i14, ptr %wptr.i, align 4
  %arrayidx.i15 = getelementptr i32, ptr %18, i32 %20
  %21 = ptrtoint ptr %arrayidx.i15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 %conv, ptr %arrayidx.i15, align 4
  %22 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ptr_mask.i, align 4
  %24 = load i32, ptr %wptr.i, align 4
  %and.i17 = and i32 %24, %23
  store i32 %and.i17, ptr %wptr.i, align 4
  %25 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %count_dw.i, align 4
  %dec.i18 = add i32 %26, -1
  store i32 %dec.i18, ptr %count_dw.i, align 4
  %27 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i20 = add i32 %28, -1
  store i32 %dec4.i20, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i18)
  %cmp.i23 = icmp slt i32 %dec.i18, 1
  br i1 %cmp.i23, label %if.then.i24, label %radeon_ring_write.exit21.radeon_ring_write.exit34_crit_edge

radeon_ring_write.exit21.radeon_ring_write.exit34_crit_edge: ; preds = %radeon_ring_write.exit21
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit34

if.then.i24:                                      ; preds = %radeon_ring_write.exit21
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #5
  br label %radeon_ring_write.exit34

radeon_ring_write.exit34:                         ; preds = %if.then.i24, %radeon_ring_write.exit21.radeon_ring_write.exit34_crit_edge
  %shr = lshr i64 %1, 32
  %conv4 = trunc i64 %shr to i32
  %and5 = and i32 %conv4, 255
  %29 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ring1.i, align 8
  %31 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %wptr.i, align 4
  %inc.i27 = add i32 %32, 1
  store i32 %inc.i27, ptr %wptr.i, align 4
  %arrayidx.i28 = getelementptr i32, ptr %30, i32 %32
  %33 = ptrtoint ptr %arrayidx.i28 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile i32 %and5, ptr %arrayidx.i28, align 4
  %34 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ptr_mask.i, align 4
  %36 = load i32, ptr %wptr.i, align 4
  %and.i30 = and i32 %36, %35
  store i32 %and.i30, ptr %wptr.i, align 4
  %37 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %count_dw.i, align 4
  %dec.i31 = add i32 %38, -1
  store i32 %dec.i31, ptr %count_dw.i, align 4
  %39 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i33 = add i32 %40, -1
  store i32 %dec4.i33, ptr %ring_free_dw.i, align 8
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r600_dma_ib_test(ptr noundef %rdev, ptr nocapture noundef readonly %ring) local_unnamed_addr #0 align 64 {
entry:
  %ib = alloca %struct.radeon_ib, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %ib) #5
  %0 = call ptr @memset(ptr %ib, i32 255, i32 88)
  %idx = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 19
  %1 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %cmp = icmp eq i32 %2, 3
  %. = select i1 %cmp, i32 3588, i32 3592
  %gpu_addr1 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 62, i32 2
  %3 = ptrtoint ptr %gpu_addr1 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %gpu_addr1, align 8
  %call = call i32 @radeon_ib_get(ptr noundef %rdev, i32 noundef %2, ptr noundef nonnull %ib, ptr noundef null, i32 noundef 256) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5, i32 noundef %call) #5
  br label %cleanup

if.end4:                                          ; preds = %entry
  %conv = zext i32 %. to i64
  %add = add i64 %4, %conv
  %ptr = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 3
  %5 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ptr, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 536870913, ptr %6, align 4
  %conv5 = trunc i64 %add to i32
  %8 = load ptr, ptr %ptr, align 8
  %arrayidx7 = getelementptr i32, ptr %8, i32 1
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv5, ptr %arrayidx7, align 4
  %shr = lshr i64 %add, 32
  %conv9 = trunc i64 %shr to i32
  %and10 = and i32 %conv9, 255
  %10 = load ptr, ptr %ptr, align 8
  %arrayidx12 = getelementptr i32, ptr %10, i32 2
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and10, ptr %arrayidx12, align 4
  %12 = load ptr, ptr %ptr, align 8
  %arrayidx14 = getelementptr i32, ptr %12, i32 3
  %13 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -559038737, ptr %arrayidx14, align 4
  %length_dw = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 1
  %14 = ptrtoint ptr %length_dw to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %length_dw, align 4
  %call15 = call i32 @radeon_ib_schedule(ptr noundef %rdev, ptr noundef nonnull %ib, ptr noundef null, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  call void @radeon_ib_free(ptr noundef %rdev, ptr noundef nonnull %ib) #5
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6, i32 noundef %call15) #5
  br label %cleanup

if.end18:                                         ; preds = %if.end4
  %fence = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 5
  %15 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fence, align 8
  %call.i = call i32 @jiffies_to_usecs(i32 noundef 1073741822) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, 1000000
  %spec.select.i = select i1 %cmp.i, i32 1073741822, i32 100
  %call20 = call i32 @radeon_fence_wait_timeout(ptr noundef %16, i1 noundef zeroext false, i32 noundef %spec.select.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then23, label %if.else24

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7, i32 noundef %call20) #5
  br label %cleanup

if.else24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp25 = icmp eq i32 %call20, 0
  br i1 %cmp25, label %if.then27, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else24
  %usec_timeout = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %17 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %usec_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp3082.not = icmp eq i32 %18, 0
  br i1 %cmp3082.not, label %for.cond.preheader.if.else47_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.else47_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else47

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %wb33 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 62, i32 1
  %div78 = lshr exact i32 %., 2
  br label %for.body

if.then27:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #5
  br label %cleanup

for.body:                                         ; preds = %if.end38.for.body_crit_edge, %for.body.lr.ph
  %i.083 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end38.for.body_crit_edge ]
  %19 = ptrtoint ptr %wb33 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wb33, align 4
  %arrayidx34 = getelementptr i32, ptr %20, i32 %div78
  %21 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %arrayidx34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -272716322, i32 %22)
  %cmp35 = icmp eq i32 %22, -272716322
  br i1 %cmp35, label %do.end, label %if.end38

if.end38:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %23(i32 noundef 214748) #5
  %inc = add nuw i32 %i.083, 1
  %24 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %usec_timeout, align 4
  %cmp30 = icmp ult i32 %inc, %25
  br i1 %cmp30, label %if.end38.for.body_crit_edge, label %for.cond.if.else47_crit_edge

if.end38.for.body_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fence, align 8
  %ring45 = getelementptr inbounds %struct.radeon_fence, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %ring45 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ring45, align 8
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %29, i32 noundef %i.083) #8
  br label %if.end48

for.cond.if.else47_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  %30 = call i32 @llvm.bswap.i32(i32 %22)
  br label %if.else47

if.else47:                                        ; preds = %for.cond.if.else47_crit_edge, %for.cond.preheader.if.else47_crit_edge
  %tmp.0.lcssa = phi i32 [ %30, %for.cond.if.else47_crit_edge ], [ 0, %for.cond.preheader.if.else47_crit_edge ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11, i32 noundef %tmp.0.lcssa) #5
  br label %if.end48

if.end48:                                         ; preds = %if.else47, %do.end
  %r.0 = phi i32 [ 0, %do.end ], [ -22, %if.else47 ]
  call void @radeon_ib_free(ptr noundef %rdev, ptr noundef nonnull %ib) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.then27, %if.then23, %if.then17, %if.then3
  %retval.0 = phi i32 [ %call, %if.then3 ], [ %call15, %if.then17 ], [ %call20, %if.then23 ], [ -110, %if.then27 ], [ %r.0, %if.end48 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %ib) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_ib_get(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_ib_schedule(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ib_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_dma_ring_ib_execute(ptr noundef %rdev, ptr nocapture noundef readonly %ib) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ring2 = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 4
  %0 = ptrtoint ptr %ring2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ring2, align 4
  %enabled = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 62, i32 3
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 8, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %wptr = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 7
  %4 = ptrtoint ptr %wptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wptr, align 4
  %add = add i32 %5, 4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.then
  %next_rptr.0 = phi i32 [ %add, %if.then ], [ %inc, %while.cond.while.cond_crit_edge ]
  %and = and i32 %next_rptr.0, 7
  %cmp.not = icmp eq i32 %and, 5
  %inc = add i32 %next_rptr.0, 1
  br i1 %cmp.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %add3 = add i32 %next_rptr.0, 3
  %count_dw.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 11
  %6 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count_dw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp slt i32 %7, 1
  br i1 %cmp.i, label %if.then.i, label %while.end.radeon_ring_write.exit_crit_edge

while.end.radeon_ring_write.exit_crit_edge:       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit

if.then.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #5
  br label %radeon_ring_write.exit

radeon_ring_write.exit:                           ; preds = %if.then.i, %while.end.radeon_ring_write.exit_crit_edge
  %ring1.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 2
  %8 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ring1.i, align 8
  %10 = ptrtoint ptr %wptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wptr, align 4
  %inc.i = add i32 %11, 1
  store i32 %inc.i, ptr %wptr, align 4
  %arrayidx.i = getelementptr i32, ptr %9, i32 %11
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 536870913, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 16
  %13 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ptr_mask.i, align 4
  %15 = load i32, ptr %wptr, align 4
  %and.i = and i32 %15, %14
  store i32 %and.i, ptr %wptr, align 4
  %16 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count_dw.i, align 4
  %dec.i = add i32 %17, -1
  store i32 %dec.i, ptr %count_dw.i, align 4
  %ring_free_dw.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 10
  %18 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i = add i32 %19, -1
  store i32 %dec4.i, ptr %ring_free_dw.i, align 8
  %next_rptr_gpu_addr = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 5
  %20 = ptrtoint ptr %next_rptr_gpu_addr to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %next_rptr_gpu_addr, align 8
  %22 = trunc i64 %21 to i32
  %conv = and i32 %22, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i42 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i42, label %if.then.i43, label %radeon_ring_write.exit.radeon_ring_write.exit53_crit_edge

radeon_ring_write.exit.radeon_ring_write.exit53_crit_edge: ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit53

if.then.i43:                                      ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #5
  br label %radeon_ring_write.exit53

radeon_ring_write.exit53:                         ; preds = %if.then.i43, %radeon_ring_write.exit.radeon_ring_write.exit53_crit_edge
  %23 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ring1.i, align 8
  %25 = ptrtoint ptr %wptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %wptr, align 4
  %inc.i46 = add i32 %26, 1
  store i32 %inc.i46, ptr %wptr, align 4
  %arrayidx.i47 = getelementptr i32, ptr %24, i32 %26
  %27 = ptrtoint ptr %arrayidx.i47 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 %conv, ptr %arrayidx.i47, align 4
  %28 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ptr_mask.i, align 4
  %30 = load i32, ptr %wptr, align 4
  %and.i49 = and i32 %30, %29
  store i32 %and.i49, ptr %wptr, align 4
  %31 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %count_dw.i, align 4
  %dec.i50 = add i32 %32, -1
  store i32 %dec.i50, ptr %count_dw.i, align 4
  %33 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i52 = add i32 %34, -1
  store i32 %dec4.i52, ptr %ring_free_dw.i, align 8
  %35 = ptrtoint ptr %next_rptr_gpu_addr to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %next_rptr_gpu_addr, align 8
  %shr = lshr i64 %36, 32
  %conv7 = trunc i64 %shr to i32
  %and8 = and i32 %conv7, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i50)
  %cmp.i55 = icmp slt i32 %dec.i50, 1
  br i1 %cmp.i55, label %if.then.i56, label %radeon_ring_write.exit53.radeon_ring_write.exit66_crit_edge

radeon_ring_write.exit53.radeon_ring_write.exit66_crit_edge: ; preds = %radeon_ring_write.exit53
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit66

if.then.i56:                                      ; preds = %radeon_ring_write.exit53
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #5
  br label %radeon_ring_write.exit66

radeon_ring_write.exit66:                         ; preds = %if.then.i56, %radeon_ring_write.exit53.radeon_ring_write.exit66_crit_edge
  %37 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ring1.i, align 8
  %39 = ptrtoint ptr %wptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %wptr, align 4
  %inc.i59 = add i32 %40, 1
  store i32 %inc.i59, ptr %wptr, align 4
  %arrayidx.i60 = getelementptr i32, ptr %38, i32 %40
  %41 = ptrtoint ptr %arrayidx.i60 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 %and8, ptr %arrayidx.i60, align 4
  %42 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ptr_mask.i, align 4
  %44 = load i32, ptr %wptr, align 4
  %and.i62 = and i32 %44, %43
  store i32 %and.i62, ptr %wptr, align 4
  %45 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %count_dw.i, align 4
  %dec.i63 = add i32 %46, -1
  store i32 %dec.i63, ptr %count_dw.i, align 4
  %47 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i65 = add i32 %48, -1
  store i32 %dec4.i65, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i63)
  %cmp.i68 = icmp slt i32 %dec.i63, 1
  br i1 %cmp.i68, label %if.then.i69, label %radeon_ring_write.exit66.radeon_ring_write.exit79_crit_edge

radeon_ring_write.exit66.radeon_ring_write.exit79_crit_edge: ; preds = %radeon_ring_write.exit66
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit79

if.then.i69:                                      ; preds = %radeon_ring_write.exit66
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #5
  br label %radeon_ring_write.exit79

radeon_ring_write.exit79:                         ; preds = %if.then.i69, %radeon_ring_write.exit66.radeon_ring_write.exit79_crit_edge
  %49 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ring1.i, align 8
  %51 = ptrtoint ptr %wptr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %wptr, align 4
  %inc.i72 = add i32 %52, 1
  store i32 %inc.i72, ptr %wptr, align 4
  %arrayidx.i73 = getelementptr i32, ptr %50, i32 %52
  %53 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile i32 %add3, ptr %arrayidx.i73, align 4
  %54 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ptr_mask.i, align 4
  %56 = load i32, ptr %wptr, align 4
  %and.i75 = and i32 %56, %55
  store i32 %and.i75, ptr %wptr, align 4
  %57 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %count_dw.i, align 4
  %dec.i76 = add i32 %58, -1
  store i32 %dec.i76, ptr %count_dw.i, align 4
  %59 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i78 = add i32 %60, -1
  store i32 %dec4.i78, ptr %ring_free_dw.i, align 8
  br label %if.end

if.end:                                           ; preds = %radeon_ring_write.exit79, %entry.if.end_crit_edge
  %wptr10 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 7
  %61 = ptrtoint ptr %wptr10 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %wptr10, align 4
  %and11132 = and i32 %62, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and11132)
  %cmp12.not133 = icmp eq i32 %and11132, 5
  br i1 %cmp12.not133, label %if.end.while.end15_crit_edge, label %while.body14.lr.ph

if.end.while.end15_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end15

while.body14.lr.ph:                               ; preds = %if.end
  %count_dw.i80 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 11
  %ring1.i83 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 2
  %ptr_mask.i87 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 16
  %ring_free_dw.i90 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 10
  br label %while.body14

while.body14:                                     ; preds = %radeon_ring_write.exit92.while.body14_crit_edge, %while.body14.lr.ph
  %63 = ptrtoint ptr %count_dw.i80 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %count_dw.i80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %64)
  %cmp.i81 = icmp slt i32 %64, 1
  br i1 %cmp.i81, label %if.then.i82, label %while.body14.radeon_ring_write.exit92_crit_edge

while.body14.radeon_ring_write.exit92_crit_edge:  ; preds = %while.body14
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit92

if.then.i82:                                      ; preds = %while.body14
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #5
  br label %radeon_ring_write.exit92

radeon_ring_write.exit92:                         ; preds = %if.then.i82, %while.body14.radeon_ring_write.exit92_crit_edge
  %65 = ptrtoint ptr %ring1.i83 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ring1.i83, align 8
  %67 = ptrtoint ptr %wptr10 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %wptr10, align 4
  %inc.i85 = add i32 %68, 1
  store i32 %inc.i85, ptr %wptr10, align 4
  %arrayidx.i86 = getelementptr i32, ptr %66, i32 %68
  %69 = ptrtoint ptr %arrayidx.i86 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile i32 -268435456, ptr %arrayidx.i86, align 4
  %70 = ptrtoint ptr %ptr_mask.i87 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ptr_mask.i87, align 4
  %72 = load i32, ptr %wptr10, align 4
  %and.i88 = and i32 %72, %71
  store i32 %and.i88, ptr %wptr10, align 4
  %73 = ptrtoint ptr %count_dw.i80 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %count_dw.i80, align 4
  %dec.i89 = add i32 %74, -1
  store i32 %dec.i89, ptr %count_dw.i80, align 4
  %75 = ptrtoint ptr %ring_free_dw.i90 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ring_free_dw.i90, align 8
  %dec4.i91 = add i32 %76, -1
  store i32 %dec4.i91, ptr %ring_free_dw.i90, align 8
  %and11 = and i32 %and.i88, 7
  %cmp12.not = icmp eq i32 %and11, 5
  br i1 %cmp12.not, label %radeon_ring_write.exit92.while.end15_crit_edge, label %radeon_ring_write.exit92.while.body14_crit_edge

radeon_ring_write.exit92.while.body14_crit_edge:  ; preds = %radeon_ring_write.exit92
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body14

radeon_ring_write.exit92.while.end15_crit_edge:   ; preds = %radeon_ring_write.exit92
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end15

while.end15:                                      ; preds = %radeon_ring_write.exit92.while.end15_crit_edge, %if.end.while.end15_crit_edge
  %count_dw.i93 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 11
  %77 = ptrtoint ptr %count_dw.i93 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %count_dw.i93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %78)
  %cmp.i94 = icmp slt i32 %78, 1
  br i1 %cmp.i94, label %if.then.i95, label %while.end15.radeon_ring_write.exit105_crit_edge

while.end15.radeon_ring_write.exit105_crit_edge:  ; preds = %while.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit105

if.then.i95:                                      ; preds = %while.end15
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #5
  br label %radeon_ring_write.exit105

radeon_ring_write.exit105:                        ; preds = %if.then.i95, %while.end15.radeon_ring_write.exit105_crit_edge
  %ring1.i96 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 2
  %79 = ptrtoint ptr %ring1.i96 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ring1.i96, align 8
  %81 = ptrtoint ptr %wptr10 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %wptr10, align 4
  %inc.i98 = add i32 %82, 1
  store i32 %inc.i98, ptr %wptr10, align 4
  %arrayidx.i99 = getelementptr i32, ptr %80, i32 %82
  %83 = ptrtoint ptr %arrayidx.i99 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile i32 1073741824, ptr %arrayidx.i99, align 4
  %ptr_mask.i100 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 16
  %84 = ptrtoint ptr %ptr_mask.i100 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %ptr_mask.i100, align 4
  %86 = load i32, ptr %wptr10, align 4
  %and.i101 = and i32 %86, %85
  store i32 %and.i101, ptr %wptr10, align 4
  %87 = ptrtoint ptr %count_dw.i93 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %count_dw.i93, align 4
  %dec.i102 = add i32 %88, -1
  store i32 %dec.i102, ptr %count_dw.i93, align 4
  %ring_free_dw.i103 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 10
  %89 = ptrtoint ptr %ring_free_dw.i103 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %ring_free_dw.i103, align 8
  %dec4.i104 = add i32 %90, -1
  store i32 %dec4.i104, ptr %ring_free_dw.i103, align 8
  %gpu_addr = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 2
  %91 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %gpu_addr, align 8
  %93 = trunc i64 %92 to i32
  %conv17 = and i32 %93, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i102)
  %cmp.i107 = icmp slt i32 %dec.i102, 1
  br i1 %cmp.i107, label %if.then.i108, label %radeon_ring_write.exit105.radeon_ring_write.exit118_crit_edge

radeon_ring_write.exit105.radeon_ring_write.exit118_crit_edge: ; preds = %radeon_ring_write.exit105
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit118

if.then.i108:                                     ; preds = %radeon_ring_write.exit105
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #5
  br label %radeon_ring_write.exit118

radeon_ring_write.exit118:                        ; preds = %if.then.i108, %radeon_ring_write.exit105.radeon_ring_write.exit118_crit_edge
  %94 = ptrtoint ptr %ring1.i96 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ring1.i96, align 8
  %96 = ptrtoint ptr %wptr10 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %wptr10, align 4
  %inc.i111 = add i32 %97, 1
  store i32 %inc.i111, ptr %wptr10, align 4
  %arrayidx.i112 = getelementptr i32, ptr %95, i32 %97
  %98 = ptrtoint ptr %arrayidx.i112 to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile i32 %conv17, ptr %arrayidx.i112, align 4
  %99 = ptrtoint ptr %ptr_mask.i100 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %ptr_mask.i100, align 4
  %101 = load i32, ptr %wptr10, align 4
  %and.i114 = and i32 %101, %100
  store i32 %and.i114, ptr %wptr10, align 4
  %102 = ptrtoint ptr %count_dw.i93 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %count_dw.i93, align 4
  %dec.i115 = add i32 %103, -1
  store i32 %dec.i115, ptr %count_dw.i93, align 4
  %104 = ptrtoint ptr %ring_free_dw.i103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %ring_free_dw.i103, align 8
  %dec4.i117 = add i32 %105, -1
  store i32 %dec4.i117, ptr %ring_free_dw.i103, align 8
  %length_dw = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 1
  %106 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %length_dw, align 4
  %108 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %gpu_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i115)
  %cmp.i120 = icmp slt i32 %dec.i115, 1
  br i1 %cmp.i120, label %if.then.i121, label %radeon_ring_write.exit118.radeon_ring_write.exit131_crit_edge

radeon_ring_write.exit118.radeon_ring_write.exit131_crit_edge: ; preds = %radeon_ring_write.exit118
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit131

if.then.i121:                                     ; preds = %radeon_ring_write.exit118
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #5
  br label %radeon_ring_write.exit131

radeon_ring_write.exit131:                        ; preds = %if.then.i121, %radeon_ring_write.exit118.radeon_ring_write.exit131_crit_edge
  %shl = shl i32 %107, 16
  %shr19 = lshr i64 %109, 32
  %conv21 = trunc i64 %shr19 to i32
  %and22 = and i32 %conv21, 255
  %or = or i32 %and22, %shl
  %110 = ptrtoint ptr %ring1.i96 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ring1.i96, align 8
  %112 = ptrtoint ptr %wptr10 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %wptr10, align 4
  %inc.i124 = add i32 %113, 1
  store i32 %inc.i124, ptr %wptr10, align 4
  %arrayidx.i125 = getelementptr i32, ptr %111, i32 %113
  %114 = ptrtoint ptr %arrayidx.i125 to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile i32 %or, ptr %arrayidx.i125, align 4
  %115 = ptrtoint ptr %ptr_mask.i100 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %ptr_mask.i100, align 4
  %117 = load i32, ptr %wptr10, align 4
  %and.i127 = and i32 %117, %116
  store i32 %and.i127, ptr %wptr10, align 4
  %118 = ptrtoint ptr %count_dw.i93 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %count_dw.i93, align 4
  %dec.i128 = add i32 %119, -1
  store i32 %dec.i128, ptr %count_dw.i93, align 4
  %120 = ptrtoint ptr %ring_free_dw.i103 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %ring_free_dw.i103, align 8
  %dec4.i130 = add i32 %121, -1
  store i32 %dec4.i130, ptr %ring_free_dw.i103, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @r600_copy_dma(ptr noundef %rdev, i64 noundef %src_offset, i64 noundef %dst_offset, i32 noundef %num_gpu_pages, ptr noundef %resv) local_unnamed_addr #0 align 64 {
entry:
  %fence = alloca ptr, align 4
  %sync = alloca %struct.radeon_sync, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fence) #5
  %0 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fence, align 4, !annotation !44
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %sync) #5
  %1 = call ptr @memset(ptr %sync, i32 255, i32 52)
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %2 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asic, align 8
  %dma_ring_index = getelementptr inbounds %struct.radeon_asic, ptr %3, i32 0, i32 17, i32 3
  %4 = ptrtoint ptr %dma_ring_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_ring_index, align 4
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %5
  call void @radeon_sync_create(ptr noundef nonnull %sync) #5
  %6 = shl i32 %num_gpu_pages, 10
  %div78 = and i32 %6, 1073740800
  %sub = add nuw nsw i32 %div78, 65533
  %div2 = udiv i32 %sub, 65534
  %mul = shl nuw nsw i32 %div2, 2
  %add3 = add nuw nsw i32 %mul, 8
  %call = call i32 @radeon_ring_lock(ptr noundef %rdev, ptr noundef %arrayidx, i32 noundef %add3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12, i32 noundef %call) #5
  call void @radeon_sync_free(ptr noundef %rdev, ptr noundef nonnull %sync, ptr noundef null) #5
  %7 = inttoptr i32 %call to ptr
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = call i32 @radeon_sync_resv(ptr noundef %rdev, ptr noundef nonnull %sync, ptr noundef %resv, i1 noundef zeroext false) #5
  %idx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %5, i32 19
  %8 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idx, align 8
  %call6 = call i32 @radeon_sync_rings(ptr noundef %rdev, ptr noundef nonnull %sync, i32 noundef %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div78)
  %10 = icmp eq i32 %div78, 0
  br i1 %10, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %count_dw.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %5, i32 11
  %ring1.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %5, i32 2
  %wptr.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %5, i32 7
  %ptr_mask.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %5, i32 16
  %ring_free_dw.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %5, i32 10
  %umax = call i32 @llvm.umax.i32(i32 %div2, i32 1)
  br label %for.body

for.body:                                         ; preds = %radeon_ring_write.exit117.for.body_crit_edge, %for.body.lr.ph
  %i.0122 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %radeon_ring_write.exit117.for.body_crit_edge ]
  %size_in_dw.0121 = phi i32 [ %div78, %for.body.lr.ph ], [ %sub10, %radeon_ring_write.exit117.for.body_crit_edge ]
  %src_offset.addr.0120 = phi i64 [ %src_offset, %for.body.lr.ph ], [ %add26, %radeon_ring_write.exit117.for.body_crit_edge ]
  %dst_offset.addr.0119 = phi i64 [ %dst_offset, %for.body.lr.ph ], [ %add29, %radeon_ring_write.exit117.for.body_crit_edge ]
  %11 = call i32 @llvm.umin.i32(i32 %size_in_dw.0121, i32 65534)
  %sub10 = sub i32 %size_in_dw.0121, %11
  %or = or i32 %11, 805306368
  %12 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count_dw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i = icmp slt i32 %13, 1
  br i1 %cmp.i, label %if.then.i, label %for.body.radeon_ring_write.exit_crit_edge

for.body.radeon_ring_write.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #5
  br label %radeon_ring_write.exit

radeon_ring_write.exit:                           ; preds = %if.then.i, %for.body.radeon_ring_write.exit_crit_edge
  %14 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ring1.i, align 8
  %16 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wptr.i, align 4
  %inc.i = add i32 %17, 1
  store i32 %inc.i, ptr %wptr.i, align 4
  %arrayidx.i = getelementptr i32, ptr %15, i32 %17
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 %or, ptr %arrayidx.i, align 4
  %19 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ptr_mask.i, align 4
  %21 = load i32, ptr %wptr.i, align 4
  %and.i = and i32 %21, %20
  store i32 %and.i, ptr %wptr.i, align 4
  %22 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %count_dw.i, align 4
  %dec.i = add i32 %23, -1
  store i32 %dec.i, ptr %count_dw.i, align 4
  %24 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i = add i32 %25, -1
  store i32 %dec4.i, ptr %ring_free_dw.i, align 8
  %26 = trunc i64 %dst_offset.addr.0119 to i32
  %conv = and i32 %26, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i80 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i80, label %if.then.i81, label %radeon_ring_write.exit.radeon_ring_write.exit91_crit_edge

radeon_ring_write.exit.radeon_ring_write.exit91_crit_edge: ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit91

if.then.i81:                                      ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #5
  br label %radeon_ring_write.exit91

radeon_ring_write.exit91:                         ; preds = %if.then.i81, %radeon_ring_write.exit.radeon_ring_write.exit91_crit_edge
  %27 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ring1.i, align 8
  %29 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %wptr.i, align 4
  %inc.i84 = add i32 %30, 1
  store i32 %inc.i84, ptr %wptr.i, align 4
  %arrayidx.i85 = getelementptr i32, ptr %28, i32 %30
  %31 = ptrtoint ptr %arrayidx.i85 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 %conv, ptr %arrayidx.i85, align 4
  %32 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ptr_mask.i, align 4
  %34 = load i32, ptr %wptr.i, align 4
  %and.i87 = and i32 %34, %33
  store i32 %and.i87, ptr %wptr.i, align 4
  %35 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %count_dw.i, align 4
  %dec.i88 = add i32 %36, -1
  store i32 %dec.i88, ptr %count_dw.i, align 4
  %37 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i90 = add i32 %38, -1
  store i32 %dec4.i90, ptr %ring_free_dw.i, align 8
  %39 = trunc i64 %src_offset.addr.0120 to i32
  %conv14 = and i32 %39, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i88)
  %cmp.i93 = icmp slt i32 %dec.i88, 1
  br i1 %cmp.i93, label %if.then.i94, label %radeon_ring_write.exit91.radeon_ring_write.exit104_crit_edge

radeon_ring_write.exit91.radeon_ring_write.exit104_crit_edge: ; preds = %radeon_ring_write.exit91
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit104

if.then.i94:                                      ; preds = %radeon_ring_write.exit91
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #5
  br label %radeon_ring_write.exit104

radeon_ring_write.exit104:                        ; preds = %if.then.i94, %radeon_ring_write.exit91.radeon_ring_write.exit104_crit_edge
  %40 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ring1.i, align 8
  %42 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %wptr.i, align 4
  %inc.i97 = add i32 %43, 1
  store i32 %inc.i97, ptr %wptr.i, align 4
  %arrayidx.i98 = getelementptr i32, ptr %41, i32 %43
  %44 = ptrtoint ptr %arrayidx.i98 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 %conv14, ptr %arrayidx.i98, align 4
  %45 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ptr_mask.i, align 4
  %47 = load i32, ptr %wptr.i, align 4
  %and.i100 = and i32 %47, %46
  store i32 %and.i100, ptr %wptr.i, align 4
  %48 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %count_dw.i, align 4
  %dec.i101 = add i32 %49, -1
  store i32 %dec.i101, ptr %count_dw.i, align 4
  %50 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i103 = add i32 %51, -1
  store i32 %dec4.i103, ptr %ring_free_dw.i, align 8
  %sh.diff = lshr i64 %dst_offset.addr.0119, 16
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %shl18 = and i32 %tr.sh.diff, 16711680
  %shr19 = lshr i64 %src_offset.addr.0120, 32
  %conv21 = trunc i64 %shr19 to i32
  %and22 = and i32 %conv21, 255
  %or23 = or i32 %and22, %shl18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i101)
  %cmp.i106 = icmp slt i32 %dec.i101, 1
  br i1 %cmp.i106, label %if.then.i107, label %radeon_ring_write.exit104.radeon_ring_write.exit117_crit_edge

radeon_ring_write.exit104.radeon_ring_write.exit117_crit_edge: ; preds = %radeon_ring_write.exit104
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit117

if.then.i107:                                     ; preds = %radeon_ring_write.exit104
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #5
  br label %radeon_ring_write.exit117

radeon_ring_write.exit117:                        ; preds = %if.then.i107, %radeon_ring_write.exit104.radeon_ring_write.exit117_crit_edge
  %52 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ring1.i, align 8
  %54 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %wptr.i, align 4
  %inc.i110 = add i32 %55, 1
  store i32 %inc.i110, ptr %wptr.i, align 4
  %arrayidx.i111 = getelementptr i32, ptr %53, i32 %55
  %56 = ptrtoint ptr %arrayidx.i111 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile i32 %or23, ptr %arrayidx.i111, align 4
  %57 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ptr_mask.i, align 4
  %59 = load i32, ptr %wptr.i, align 4
  %and.i113 = and i32 %59, %58
  store i32 %and.i113, ptr %wptr.i, align 4
  %60 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %count_dw.i, align 4
  %dec.i114 = add i32 %61, -1
  store i32 %dec.i114, ptr %count_dw.i, align 4
  %62 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i116 = add i32 %63, -1
  store i32 %dec4.i116, ptr %ring_free_dw.i, align 8
  %mul24 = shl nuw nsw i32 %11, 2
  %conv25 = zext i32 %mul24 to i64
  %add26 = add i64 %src_offset.addr.0120, %conv25
  %add29 = add i64 %dst_offset.addr.0119, %conv25
  %inc = add nuw nsw i32 %i.0122, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %radeon_ring_write.exit117.for.end_crit_edge, label %radeon_ring_write.exit117.for.body_crit_edge

radeon_ring_write.exit117.for.body_crit_edge:     ; preds = %radeon_ring_write.exit117
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

radeon_ring_write.exit117.for.end_crit_edge:      ; preds = %radeon_ring_write.exit117
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %radeon_ring_write.exit117.for.end_crit_edge, %if.end.for.end_crit_edge
  %64 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %idx, align 8
  %call31 = call i32 @radeon_fence_emit(ptr noundef %rdev, ptr noundef nonnull %fence, i32 noundef %65) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end35, label %if.then33

if.then33:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @radeon_ring_unlock_undo(ptr noundef %rdev, ptr noundef %arrayidx) #5
  call void @radeon_sync_free(ptr noundef %rdev, ptr noundef nonnull %sync, ptr noundef null) #5
  %66 = inttoptr i32 %call31 to ptr
  br label %cleanup

if.end35:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @radeon_ring_unlock_commit(ptr noundef %rdev, ptr noundef %arrayidx, i1 noundef zeroext false) #5
  %67 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %fence, align 4
  call void @radeon_sync_free(ptr noundef %rdev, ptr noundef nonnull %sync, ptr noundef %68) #5
  %69 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %fence, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then33, %if.then
  %retval.0 = phi ptr [ %7, %if.then ], [ %66, %if.then33 ], [ %70, %if.end35 ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %sync) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence) #5
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_sync_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_sync_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_sync_resv(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_sync_rings(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_fence_emit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ring_unlock_undo(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !25, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/r600_dma.c", i32 250, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/r600_dma.c", i32 267, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @r600_dma_ring_test._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @r600_dma_ring_test._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/radeon/r600_dma.c", i32 269, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/radeon/r600_dma.c", i32 354, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/radeon/r600_dma.c", i32 367, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/radeon/r600_dma.c", i32 373, i32 3}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/radeon/r600_dma.c", i32 376, i32 3}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/radeon/r600_dma.c", i32 387, i32 3}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @r600_dma_ib_test._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @r600_dma_ib_test._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/radeon/r600_dma.c", i32 389, i32 3}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/radeon/r600_dma.c", i32 462, i32 3}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/radeon/radeon.h", i32 2721, i32 3}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i8 0, i8 2}
!39 = !{i64 6699803}
!40 = !{i64 2157419988}
!41 = !{i64 2157420395}
!42 = !{i64 6699385}
!43 = !{i32 0, i32 33}
!44 = !{!"auto-init"}
