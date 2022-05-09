; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/cik_sdma.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/cik_sdma.c"
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
%struct.radeon_ib = type { ptr, i32, i64, ptr, i32, ptr, ptr, i8, %struct.radeon_sync }
%struct.radeon_sync = type { [4 x ptr], [8 x ptr], ptr }
%struct.radeon_vm = type { %struct.mutex, %struct.rb_root_cached, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, ptr, ptr, [8 x %struct.radeon_vm_id] }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.radeon_vm_id = type { i32, i64, ptr, ptr }
%struct.radeon_fence = type { %struct.dma_fence, ptr, i64, i32, i8, %struct.wait_queue_entry }
%struct.dma_fence = type { ptr, ptr, %union.anon.84, i64, i64, i32, %struct.kref, i32 }
%union.anon.84 = type { i64 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.radeon_semaphore = type { ptr, i32, i64 }
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
%struct.firmware = type { i32, ptr, ptr }
%struct.common_firmware_header = type { i32, i32, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.radeon_asic_ring = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"radeon: moving bo (%d).\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"radeon: dma failed to lock ring %d (%d).\0A\00", [54 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@cik_sdma_ring_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 683, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016[drm] ring test on %d succeeded in %d usecs\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cik_sdma_ring_test\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/gpu/drm/radeon/cik_sdma.c\00", [62 x i8] zeroinitializer }, align 32
@cik_sdma_ring_test._entry_ptr = internal global ptr @cik_sdma_ring_test._entry, section ".printk_index", align 4
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"radeon: ring %d test failed (0x%08X)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"radeon: failed to get ib (%d).\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"radeon: failed to schedule ib (%d).\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"radeon: fence wait failed (%d).\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"radeon: fence wait timed out.\0A\00", [33 x i8] zeroinitializer }, align 32
@cik_sdma_ib_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 756, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016[drm] ib test on ring %d succeeded in %u usecs\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cik_sdma_ib_test\00", [47 x i8] zeroinitializer }, align 32
@cik_sdma_ib_test._entry_ptr = internal global ptr @cik_sdma_ib_test._entry, section ".printk_index", align 4
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"radeon: ib test failed (0x%08X)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"radeon: writing more dwords to the ring than expected!\0A\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 597, i32 3 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 665, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 683, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 685, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 722, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 736, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 742, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 745, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 756, i32 3 }
@___asan_gen_.57 = private constant [37 x i8] c"../drivers/gpu/drm/radeon/cik_sdma.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 758, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [35 x i8] c"../drivers/gpu/drm/radeon/radeon.h\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 2721, i32 3 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @cik_sdma_ib_test._entry, ptr @cik_sdma_ib_test._entry_ptr, ptr @cik_sdma_ring_test._entry, ptr @cik_sdma_ring_test._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cik_sdma_ring_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cik_sdma_ib_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cik_sdma_get_rptr(ptr nocapture noundef readonly %rdev, ptr nocapture noundef readonly %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 62, i32 3
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 8, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %wb2 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 62, i32 1
  %2 = ptrtoint ptr %wb2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wb2, align 4
  %rptr_offs = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 3
  %4 = ptrtoint ptr %rptr_offs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rptr_offs, align 4
  %div9 = lshr i32 %5, 2
  %arrayidx = getelementptr i32, ptr %3, i32 %div9
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx, align 4
  br label %if.end5

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %idx = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 19
  %8 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp = icmp eq i32 %9, 3
  %. = select i1 %cmp, i32 53772, i32 55820
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %10 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %.
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #7
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then
  %rptr.0 = phi i32 [ %7, %if.then ], [ %13, %if.else ]
  %and = lshr i32 %rptr.0, 2
  %shr = and i32 %and, 65535
  ret i32 %shr
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cik_sdma_get_wptr(ptr nocapture noundef readonly %rdev, ptr nocapture noundef readonly %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idx = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 19
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  %. = select i1 %cmp, i32 53776, i32 55824
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %2 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %.
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  %and = lshr i32 %5, 2
  %shr = and i32 %and, 65535
  ret i32 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cik_sdma_set_wptr(ptr nocapture noundef readonly %rdev, ptr nocapture noundef readonly %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idx = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 19
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  %. = select i1 %cmp, i32 53776, i32 55824
  %wptr = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 7
  %2 = ptrtoint ptr %wptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wptr, align 4
  %shl = shl i32 %3, 2
  %and = and i32 %shl, 262140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %and) #7
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %5 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %.
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #7, !srcloc !42
  %7 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %8, i32 %.
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5) #7, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cik_sdma_ring_ib_execute(ptr noundef %rdev, ptr nocapture noundef readonly %ib) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ring2 = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 4
  %0 = ptrtoint ptr %ring2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ring2, align 4
  %vm = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 6
  %2 = ptrtoint ptr %vm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx5 = getelementptr %struct.radeon_vm, ptr %3, i32 0, i32 10, i32 %1
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx5, align 8
  %phi.bo = shl i32 %5, 16
  %phi.bo51 = and i32 %phi.bo, 983040
  %phi.bo52 = or i32 %phi.bo51, 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %phi.bo52, %cond.true ], [ 4, %entry.cond.end_crit_edge ]
  %enabled = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 62, i32 3
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enabled, align 8, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not = icmp eq i8 %7, 0
  br i1 %tobool6.not, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %cond.end
  %wptr = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 7
  %8 = ptrtoint ptr %wptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wptr, align 4
  %add = add i32 %9, 5
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.then
  %next_rptr.0 = phi i32 [ %add, %if.then ], [ %inc, %while.cond.while.cond_crit_edge ]
  %and7 = and i32 %next_rptr.0, 7
  %cmp.not = icmp eq i32 %and7, 4
  %inc = add i32 %next_rptr.0, 1
  br i1 %cmp.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %add8 = add i32 %next_rptr.0, 4
  %count_dw.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 11
  %10 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count_dw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i = icmp slt i32 %11, 1
  br i1 %cmp.i, label %if.then.i, label %while.end.radeon_ring_write.exit_crit_edge

while.end.radeon_ring_write.exit_crit_edge:       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit

if.then.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit

radeon_ring_write.exit:                           ; preds = %if.then.i, %while.end.radeon_ring_write.exit_crit_edge
  %ring1.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 2
  %12 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ring1.i, align 8
  %14 = ptrtoint ptr %wptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wptr, align 4
  %inc.i = add i32 %15, 1
  store i32 %inc.i, ptr %wptr, align 4
  %arrayidx.i = getelementptr i32, ptr %13, i32 %15
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 2, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 16
  %17 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ptr_mask.i, align 4
  %19 = load i32, ptr %wptr, align 4
  %and.i = and i32 %19, %18
  store i32 %and.i, ptr %wptr, align 4
  %20 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %count_dw.i, align 4
  %dec.i = add i32 %21, -1
  store i32 %dec.i, ptr %count_dw.i, align 4
  %ring_free_dw.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 10
  %22 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i = add i32 %23, -1
  store i32 %dec4.i, ptr %ring_free_dw.i, align 8
  %next_rptr_gpu_addr = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 5
  %24 = ptrtoint ptr %next_rptr_gpu_addr to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %next_rptr_gpu_addr, align 8
  %26 = trunc i64 %25 to i32
  %conv = and i32 %26, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i54 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i54, label %if.then.i55, label %radeon_ring_write.exit.radeon_ring_write.exit65_crit_edge

radeon_ring_write.exit.radeon_ring_write.exit65_crit_edge: ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit65

if.then.i55:                                      ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit65

radeon_ring_write.exit65:                         ; preds = %if.then.i55, %radeon_ring_write.exit.radeon_ring_write.exit65_crit_edge
  %27 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ring1.i, align 8
  %29 = ptrtoint ptr %wptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %wptr, align 4
  %inc.i58 = add i32 %30, 1
  store i32 %inc.i58, ptr %wptr, align 4
  %arrayidx.i59 = getelementptr i32, ptr %28, i32 %30
  %31 = ptrtoint ptr %arrayidx.i59 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 %conv, ptr %arrayidx.i59, align 4
  %32 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ptr_mask.i, align 4
  %34 = load i32, ptr %wptr, align 4
  %and.i61 = and i32 %34, %33
  store i32 %and.i61, ptr %wptr, align 4
  %35 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %count_dw.i, align 4
  %dec.i62 = add i32 %36, -1
  store i32 %dec.i62, ptr %count_dw.i, align 4
  %37 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i64 = add i32 %38, -1
  store i32 %dec4.i64, ptr %ring_free_dw.i, align 8
  %39 = ptrtoint ptr %next_rptr_gpu_addr to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %next_rptr_gpu_addr, align 8
  %shr = lshr i64 %40, 32
  %conv12 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i62)
  %cmp.i67 = icmp slt i32 %dec.i62, 1
  br i1 %cmp.i67, label %if.then.i68, label %radeon_ring_write.exit65.radeon_ring_write.exit78_crit_edge

radeon_ring_write.exit65.radeon_ring_write.exit78_crit_edge: ; preds = %radeon_ring_write.exit65
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit78

if.then.i68:                                      ; preds = %radeon_ring_write.exit65
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit78

radeon_ring_write.exit78:                         ; preds = %if.then.i68, %radeon_ring_write.exit65.radeon_ring_write.exit78_crit_edge
  %41 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ring1.i, align 8
  %43 = ptrtoint ptr %wptr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %wptr, align 4
  %inc.i71 = add i32 %44, 1
  store i32 %inc.i71, ptr %wptr, align 4
  %arrayidx.i72 = getelementptr i32, ptr %42, i32 %44
  %45 = ptrtoint ptr %arrayidx.i72 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile i32 %conv12, ptr %arrayidx.i72, align 4
  %46 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ptr_mask.i, align 4
  %48 = load i32, ptr %wptr, align 4
  %and.i74 = and i32 %48, %47
  store i32 %and.i74, ptr %wptr, align 4
  %49 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %count_dw.i, align 4
  %dec.i75 = add i32 %50, -1
  store i32 %dec.i75, ptr %count_dw.i, align 4
  %51 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i77 = add i32 %52, -1
  store i32 %dec4.i77, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i75)
  %cmp.i80 = icmp slt i32 %dec.i75, 1
  br i1 %cmp.i80, label %if.then.i81, label %radeon_ring_write.exit78.radeon_ring_write.exit91_crit_edge

radeon_ring_write.exit78.radeon_ring_write.exit91_crit_edge: ; preds = %radeon_ring_write.exit78
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit91

if.then.i81:                                      ; preds = %radeon_ring_write.exit78
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit91

radeon_ring_write.exit91:                         ; preds = %if.then.i81, %radeon_ring_write.exit78.radeon_ring_write.exit91_crit_edge
  %53 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ring1.i, align 8
  %55 = ptrtoint ptr %wptr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %wptr, align 4
  %inc.i84 = add i32 %56, 1
  store i32 %inc.i84, ptr %wptr, align 4
  %arrayidx.i85 = getelementptr i32, ptr %54, i32 %56
  %57 = ptrtoint ptr %arrayidx.i85 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile i32 1, ptr %arrayidx.i85, align 4
  %58 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ptr_mask.i, align 4
  %60 = load i32, ptr %wptr, align 4
  %and.i87 = and i32 %60, %59
  store i32 %and.i87, ptr %wptr, align 4
  %61 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %count_dw.i, align 4
  %dec.i88 = add i32 %62, -1
  store i32 %dec.i88, ptr %count_dw.i, align 4
  %63 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i90 = add i32 %64, -1
  store i32 %dec4.i90, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i88)
  %cmp.i93 = icmp slt i32 %dec.i88, 1
  br i1 %cmp.i93, label %if.then.i94, label %radeon_ring_write.exit91.radeon_ring_write.exit104_crit_edge

radeon_ring_write.exit91.radeon_ring_write.exit104_crit_edge: ; preds = %radeon_ring_write.exit91
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit104

if.then.i94:                                      ; preds = %radeon_ring_write.exit91
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit104

radeon_ring_write.exit104:                        ; preds = %if.then.i94, %radeon_ring_write.exit91.radeon_ring_write.exit104_crit_edge
  %65 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ring1.i, align 8
  %67 = ptrtoint ptr %wptr to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %wptr, align 4
  %inc.i97 = add i32 %68, 1
  store i32 %inc.i97, ptr %wptr, align 4
  %arrayidx.i98 = getelementptr i32, ptr %66, i32 %68
  %69 = ptrtoint ptr %arrayidx.i98 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile i32 %add8, ptr %arrayidx.i98, align 4
  %70 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ptr_mask.i, align 4
  %72 = load i32, ptr %wptr, align 4
  %and.i100 = and i32 %72, %71
  store i32 %and.i100, ptr %wptr, align 4
  %73 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %count_dw.i, align 4
  %dec.i101 = add i32 %74, -1
  store i32 %dec.i101, ptr %count_dw.i, align 4
  %75 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i103 = add i32 %76, -1
  store i32 %dec4.i103, ptr %ring_free_dw.i, align 8
  br label %if.end

if.end:                                           ; preds = %radeon_ring_write.exit104, %cond.end.if.end_crit_edge
  %wptr14 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 7
  %77 = ptrtoint ptr %wptr14 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %wptr14, align 4
  %and15170 = and i32 %78, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and15170)
  %cmp16.not171 = icmp eq i32 %and15170, 4
  br i1 %cmp16.not171, label %if.end.while.end19_crit_edge, label %while.body18.lr.ph

if.end.while.end19_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end19

while.body18.lr.ph:                               ; preds = %if.end
  %count_dw.i105 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 11
  %ring1.i108 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 2
  %ptr_mask.i112 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 16
  %ring_free_dw.i115 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 10
  br label %while.body18

while.body18:                                     ; preds = %radeon_ring_write.exit117.while.body18_crit_edge, %while.body18.lr.ph
  %79 = ptrtoint ptr %count_dw.i105 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %count_dw.i105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %80)
  %cmp.i106 = icmp slt i32 %80, 1
  br i1 %cmp.i106, label %if.then.i107, label %while.body18.radeon_ring_write.exit117_crit_edge

while.body18.radeon_ring_write.exit117_crit_edge: ; preds = %while.body18
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit117

if.then.i107:                                     ; preds = %while.body18
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit117

radeon_ring_write.exit117:                        ; preds = %if.then.i107, %while.body18.radeon_ring_write.exit117_crit_edge
  %81 = ptrtoint ptr %ring1.i108 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ring1.i108, align 8
  %83 = ptrtoint ptr %wptr14 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %wptr14, align 4
  %inc.i110 = add i32 %84, 1
  store i32 %inc.i110, ptr %wptr14, align 4
  %arrayidx.i111 = getelementptr i32, ptr %82, i32 %84
  %85 = ptrtoint ptr %arrayidx.i111 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile i32 0, ptr %arrayidx.i111, align 4
  %86 = ptrtoint ptr %ptr_mask.i112 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ptr_mask.i112, align 4
  %88 = load i32, ptr %wptr14, align 4
  %and.i113 = and i32 %88, %87
  store i32 %and.i113, ptr %wptr14, align 4
  %89 = ptrtoint ptr %count_dw.i105 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %count_dw.i105, align 4
  %dec.i114 = add i32 %90, -1
  store i32 %dec.i114, ptr %count_dw.i105, align 4
  %91 = ptrtoint ptr %ring_free_dw.i115 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ring_free_dw.i115, align 8
  %dec4.i116 = add i32 %92, -1
  store i32 %dec4.i116, ptr %ring_free_dw.i115, align 8
  %and15 = and i32 %and.i113, 7
  %cmp16.not = icmp eq i32 %and15, 4
  br i1 %cmp16.not, label %radeon_ring_write.exit117.while.end19_crit_edge, label %radeon_ring_write.exit117.while.body18_crit_edge

radeon_ring_write.exit117.while.body18_crit_edge: ; preds = %radeon_ring_write.exit117
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body18

radeon_ring_write.exit117.while.end19_crit_edge:  ; preds = %radeon_ring_write.exit117
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end19

while.end19:                                      ; preds = %radeon_ring_write.exit117.while.end19_crit_edge, %if.end.while.end19_crit_edge
  %count_dw.i118 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 11
  %93 = ptrtoint ptr %count_dw.i118 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %count_dw.i118, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %94)
  %cmp.i119 = icmp slt i32 %94, 1
  br i1 %cmp.i119, label %if.then.i120, label %while.end19.radeon_ring_write.exit130_crit_edge

while.end19.radeon_ring_write.exit130_crit_edge:  ; preds = %while.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit130

if.then.i120:                                     ; preds = %while.end19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit130

radeon_ring_write.exit130:                        ; preds = %if.then.i120, %while.end19.radeon_ring_write.exit130_crit_edge
  %ring1.i121 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 2
  %95 = ptrtoint ptr %ring1.i121 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ring1.i121, align 8
  %97 = ptrtoint ptr %wptr14 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %wptr14, align 4
  %inc.i123 = add i32 %98, 1
  store i32 %inc.i123, ptr %wptr14, align 4
  %arrayidx.i124 = getelementptr i32, ptr %96, i32 %98
  %99 = ptrtoint ptr %arrayidx.i124 to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile i32 %cond, ptr %arrayidx.i124, align 4
  %ptr_mask.i125 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 16
  %100 = ptrtoint ptr %ptr_mask.i125 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %ptr_mask.i125, align 4
  %102 = load i32, ptr %wptr14, align 4
  %and.i126 = and i32 %102, %101
  store i32 %and.i126, ptr %wptr14, align 4
  %103 = ptrtoint ptr %count_dw.i118 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %count_dw.i118, align 4
  %dec.i127 = add i32 %104, -1
  store i32 %dec.i127, ptr %count_dw.i118, align 4
  %ring_free_dw.i128 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 10
  %105 = ptrtoint ptr %ring_free_dw.i128 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %ring_free_dw.i128, align 8
  %dec4.i129 = add i32 %106, -1
  store i32 %dec4.i129, ptr %ring_free_dw.i128, align 8
  %gpu_addr = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 2
  %107 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %gpu_addr, align 8
  %109 = trunc i64 %108 to i32
  %conv23 = and i32 %109, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i127)
  %cmp.i132 = icmp slt i32 %dec.i127, 1
  br i1 %cmp.i132, label %if.then.i133, label %radeon_ring_write.exit130.radeon_ring_write.exit143_crit_edge

radeon_ring_write.exit130.radeon_ring_write.exit143_crit_edge: ; preds = %radeon_ring_write.exit130
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit143

if.then.i133:                                     ; preds = %radeon_ring_write.exit130
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit143

radeon_ring_write.exit143:                        ; preds = %if.then.i133, %radeon_ring_write.exit130.radeon_ring_write.exit143_crit_edge
  %110 = ptrtoint ptr %ring1.i121 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ring1.i121, align 8
  %112 = ptrtoint ptr %wptr14 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %wptr14, align 4
  %inc.i136 = add i32 %113, 1
  store i32 %inc.i136, ptr %wptr14, align 4
  %arrayidx.i137 = getelementptr i32, ptr %111, i32 %113
  %114 = ptrtoint ptr %arrayidx.i137 to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile i32 %conv23, ptr %arrayidx.i137, align 4
  %115 = ptrtoint ptr %ptr_mask.i125 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %ptr_mask.i125, align 4
  %117 = load i32, ptr %wptr14, align 4
  %and.i139 = and i32 %117, %116
  store i32 %and.i139, ptr %wptr14, align 4
  %118 = ptrtoint ptr %count_dw.i118 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %count_dw.i118, align 4
  %dec.i140 = add i32 %119, -1
  store i32 %dec.i140, ptr %count_dw.i118, align 4
  %120 = ptrtoint ptr %ring_free_dw.i128 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %ring_free_dw.i128, align 8
  %dec4.i142 = add i32 %121, -1
  store i32 %dec4.i142, ptr %ring_free_dw.i128, align 8
  %122 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %gpu_addr, align 8
  %shr25 = lshr i64 %123, 32
  %conv27 = trunc i64 %shr25 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i140)
  %cmp.i145 = icmp slt i32 %dec.i140, 1
  br i1 %cmp.i145, label %if.then.i146, label %radeon_ring_write.exit143.radeon_ring_write.exit156_crit_edge

radeon_ring_write.exit143.radeon_ring_write.exit156_crit_edge: ; preds = %radeon_ring_write.exit143
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit156

if.then.i146:                                     ; preds = %radeon_ring_write.exit143
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit156

radeon_ring_write.exit156:                        ; preds = %if.then.i146, %radeon_ring_write.exit143.radeon_ring_write.exit156_crit_edge
  %124 = ptrtoint ptr %ring1.i121 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %ring1.i121, align 8
  %126 = ptrtoint ptr %wptr14 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %wptr14, align 4
  %inc.i149 = add i32 %127, 1
  store i32 %inc.i149, ptr %wptr14, align 4
  %arrayidx.i150 = getelementptr i32, ptr %125, i32 %127
  %128 = ptrtoint ptr %arrayidx.i150 to i32
  call void @__asan_store4_noabort(i32 %128)
  store volatile i32 %conv27, ptr %arrayidx.i150, align 4
  %129 = ptrtoint ptr %ptr_mask.i125 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %ptr_mask.i125, align 4
  %131 = load i32, ptr %wptr14, align 4
  %and.i152 = and i32 %131, %130
  store i32 %and.i152, ptr %wptr14, align 4
  %132 = ptrtoint ptr %count_dw.i118 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %count_dw.i118, align 4
  %dec.i153 = add i32 %133, -1
  store i32 %dec.i153, ptr %count_dw.i118, align 4
  %134 = ptrtoint ptr %ring_free_dw.i128 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %ring_free_dw.i128, align 8
  %dec4.i155 = add i32 %135, -1
  store i32 %dec4.i155, ptr %ring_free_dw.i128, align 8
  %length_dw = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 1
  %136 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %length_dw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i153)
  %cmp.i158 = icmp slt i32 %dec.i153, 1
  br i1 %cmp.i158, label %if.then.i159, label %radeon_ring_write.exit156.radeon_ring_write.exit169_crit_edge

radeon_ring_write.exit156.radeon_ring_write.exit169_crit_edge: ; preds = %radeon_ring_write.exit156
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit169

if.then.i159:                                     ; preds = %radeon_ring_write.exit156
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit169

radeon_ring_write.exit169:                        ; preds = %if.then.i159, %radeon_ring_write.exit156.radeon_ring_write.exit169_crit_edge
  %138 = ptrtoint ptr %ring1.i121 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ring1.i121, align 8
  %140 = ptrtoint ptr %wptr14 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %wptr14, align 4
  %inc.i162 = add i32 %141, 1
  store i32 %inc.i162, ptr %wptr14, align 4
  %arrayidx.i163 = getelementptr i32, ptr %139, i32 %141
  %142 = ptrtoint ptr %arrayidx.i163 to i32
  call void @__asan_store4_noabort(i32 %142)
  store volatile i32 %137, ptr %arrayidx.i163, align 4
  %143 = ptrtoint ptr %ptr_mask.i125 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %ptr_mask.i125, align 4
  %145 = load i32, ptr %wptr14, align 4
  %and.i165 = and i32 %145, %144
  store i32 %and.i165, ptr %wptr14, align 4
  %146 = ptrtoint ptr %count_dw.i118 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %count_dw.i118, align 4
  %dec.i166 = add i32 %147, -1
  store i32 %dec.i166, ptr %count_dw.i118, align 4
  %148 = ptrtoint ptr %ring_free_dw.i128 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %ring_free_dw.i128, align 8
  %dec4.i168 = add i32 %149, -1
  store i32 %dec4.i168, ptr %ring_free_dw.i128, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cik_sdma_fence_ring_emit(ptr noundef %rdev, ptr nocapture noundef readonly %fence) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
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
  store volatile i32 5, ptr %arrayidx.i, align 4
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
  %cmp.i20 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i20, label %if.then.i21, label %radeon_ring_write.exit.radeon_ring_write.exit31_crit_edge

radeon_ring_write.exit.radeon_ring_write.exit31_crit_edge: ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit31

if.then.i21:                                      ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit31

radeon_ring_write.exit31:                         ; preds = %if.then.i21, %radeon_ring_write.exit.radeon_ring_write.exit31_crit_edge
  %18 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ring1.i, align 8
  %20 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %wptr.i, align 4
  %inc.i24 = add i32 %21, 1
  store i32 %inc.i24, ptr %wptr.i, align 4
  %arrayidx.i25 = getelementptr i32, ptr %19, i32 %21
  %22 = ptrtoint ptr %arrayidx.i25 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 %conv, ptr %arrayidx.i25, align 4
  %23 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ptr_mask.i, align 4
  %25 = load i32, ptr %wptr.i, align 4
  %and.i27 = and i32 %25, %24
  store i32 %and.i27, ptr %wptr.i, align 4
  %26 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count_dw.i, align 4
  %dec.i28 = add i32 %27, -1
  store i32 %dec.i28, ptr %count_dw.i, align 4
  %28 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i30 = add i32 %29, -1
  store i32 %dec4.i30, ptr %ring_free_dw.i, align 8
  %shr = lshr i64 %3, 32
  %conv6 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i28)
  %cmp.i33 = icmp slt i32 %dec.i28, 1
  br i1 %cmp.i33, label %if.then.i34, label %radeon_ring_write.exit31.radeon_ring_write.exit44_crit_edge

radeon_ring_write.exit31.radeon_ring_write.exit44_crit_edge: ; preds = %radeon_ring_write.exit31
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit44

if.then.i34:                                      ; preds = %radeon_ring_write.exit31
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit44

radeon_ring_write.exit44:                         ; preds = %if.then.i34, %radeon_ring_write.exit31.radeon_ring_write.exit44_crit_edge
  %30 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ring1.i, align 8
  %32 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %wptr.i, align 4
  %inc.i37 = add i32 %33, 1
  store i32 %inc.i37, ptr %wptr.i, align 4
  %arrayidx.i38 = getelementptr i32, ptr %31, i32 %33
  %34 = ptrtoint ptr %arrayidx.i38 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 %conv6, ptr %arrayidx.i38, align 4
  %35 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ptr_mask.i, align 4
  %37 = load i32, ptr %wptr.i, align 4
  %and.i40 = and i32 %37, %36
  store i32 %and.i40, ptr %wptr.i, align 4
  %38 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %count_dw.i, align 4
  %dec.i41 = add i32 %39, -1
  store i32 %dec.i41, ptr %count_dw.i, align 4
  %40 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i43 = add i32 %41, -1
  store i32 %dec4.i43, ptr %ring_free_dw.i, align 8
  %seq = getelementptr inbounds %struct.radeon_fence, ptr %fence, i32 0, i32 2
  %42 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %seq, align 8
  %conv7 = trunc i64 %43 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i41)
  %cmp.i46 = icmp slt i32 %dec.i41, 1
  br i1 %cmp.i46, label %if.then.i47, label %radeon_ring_write.exit44.radeon_ring_write.exit57_crit_edge

radeon_ring_write.exit44.radeon_ring_write.exit57_crit_edge: ; preds = %radeon_ring_write.exit44
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit57

if.then.i47:                                      ; preds = %radeon_ring_write.exit44
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit57

radeon_ring_write.exit57:                         ; preds = %if.then.i47, %radeon_ring_write.exit44.radeon_ring_write.exit57_crit_edge
  %44 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ring1.i, align 8
  %46 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %wptr.i, align 4
  %inc.i50 = add i32 %47, 1
  store i32 %inc.i50, ptr %wptr.i, align 4
  %arrayidx.i51 = getelementptr i32, ptr %45, i32 %47
  %48 = ptrtoint ptr %arrayidx.i51 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 %conv7, ptr %arrayidx.i51, align 4
  %49 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ptr_mask.i, align 4
  %51 = load i32, ptr %wptr.i, align 4
  %and.i53 = and i32 %51, %50
  store i32 %and.i53, ptr %wptr.i, align 4
  %52 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %count_dw.i, align 4
  %dec.i54 = add i32 %53, -1
  store i32 %dec.i54, ptr %count_dw.i, align 4
  %54 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i56 = add i32 %55, -1
  store i32 %dec4.i56, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i54)
  %cmp.i59 = icmp slt i32 %dec.i54, 1
  br i1 %cmp.i59, label %if.then.i60, label %radeon_ring_write.exit57.radeon_ring_write.exit70_crit_edge

radeon_ring_write.exit57.radeon_ring_write.exit70_crit_edge: ; preds = %radeon_ring_write.exit57
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit70

if.then.i60:                                      ; preds = %radeon_ring_write.exit57
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit70

radeon_ring_write.exit70:                         ; preds = %if.then.i60, %radeon_ring_write.exit57.radeon_ring_write.exit70_crit_edge
  %56 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ring1.i, align 8
  %58 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %wptr.i, align 4
  %inc.i63 = add i32 %59, 1
  store i32 %inc.i63, ptr %wptr.i, align 4
  %arrayidx.i64 = getelementptr i32, ptr %57, i32 %59
  %60 = ptrtoint ptr %arrayidx.i64 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile i32 6, ptr %arrayidx.i64, align 4
  %61 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ptr_mask.i, align 4
  %63 = load i32, ptr %wptr.i, align 4
  %and.i66 = and i32 %63, %62
  store i32 %and.i66, ptr %wptr.i, align 4
  %64 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %count_dw.i, align 4
  %dec.i67 = add i32 %65, -1
  store i32 %dec.i67, ptr %count_dw.i, align 4
  %66 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i69 = add i32 %67, -1
  store i32 %dec4.i69, ptr %ring_free_dw.i, align 8
  %68 = ptrtoint ptr %ring2 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ring2, align 8
  tail call fastcc void @cik_sdma_hdp_flush_ring_emit(ptr noundef %rdev, i32 noundef %69)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cik_sdma_hdp_flush_ring_emit(ptr noundef %rdev, i32 noundef %ridx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ridx)
  %cmp = icmp eq i32 %ridx, 3
  %. = select i1 %cmp, i32 1024, i32 2048
  %count_dw.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %ridx, i32 11
  %0 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count_dw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp slt i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %entry.radeon_ring_write.exit_crit_edge

entry.radeon_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit

radeon_ring_write.exit:                           ; preds = %if.then.i, %entry.radeon_ring_write.exit_crit_edge
  %ring1.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %ridx, i32 2
  %2 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring1.i, align 8
  %wptr.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %ridx, i32 7
  %4 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wptr.i, align 4
  %inc.i = add i32 %5, 1
  store i32 %inc.i, ptr %wptr.i, align 4
  %arrayidx.i = getelementptr i32, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 872415240, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %ridx, i32 16
  %7 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ptr_mask.i, align 4
  %9 = load i32, ptr %wptr.i, align 4
  %and.i = and i32 %9, %8
  store i32 %and.i, ptr %wptr.i, align 4
  %10 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count_dw.i, align 4
  %dec.i = add i32 %11, -1
  store i32 %dec.i, ptr %count_dw.i, align 4
  %ring_free_dw.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %ridx, i32 10
  %12 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i = add i32 %13, -1
  store i32 %dec4.i, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i11 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i11, label %if.then.i12, label %radeon_ring_write.exit.radeon_ring_write.exit22_crit_edge

radeon_ring_write.exit.radeon_ring_write.exit22_crit_edge: ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit22

if.then.i12:                                      ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit22

radeon_ring_write.exit22:                         ; preds = %if.then.i12, %radeon_ring_write.exit.radeon_ring_write.exit22_crit_edge
  %14 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ring1.i, align 8
  %16 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wptr.i, align 4
  %inc.i15 = add i32 %17, 1
  store i32 %inc.i15, ptr %wptr.i, align 4
  %arrayidx.i16 = getelementptr i32, ptr %15, i32 %17
  %18 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 21728, ptr %arrayidx.i16, align 4
  %19 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ptr_mask.i, align 4
  %21 = load i32, ptr %wptr.i, align 4
  %and.i18 = and i32 %21, %20
  store i32 %and.i18, ptr %wptr.i, align 4
  %22 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %count_dw.i, align 4
  %dec.i19 = add i32 %23, -1
  store i32 %dec.i19, ptr %count_dw.i, align 4
  %24 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i21 = add i32 %25, -1
  store i32 %dec4.i21, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i19)
  %cmp.i24 = icmp slt i32 %dec.i19, 1
  br i1 %cmp.i24, label %if.then.i25, label %radeon_ring_write.exit22.radeon_ring_write.exit35_crit_edge

radeon_ring_write.exit22.radeon_ring_write.exit35_crit_edge: ; preds = %radeon_ring_write.exit22
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit35

if.then.i25:                                      ; preds = %radeon_ring_write.exit22
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit35

radeon_ring_write.exit35:                         ; preds = %if.then.i25, %radeon_ring_write.exit22.radeon_ring_write.exit35_crit_edge
  %26 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ring1.i, align 8
  %28 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %wptr.i, align 4
  %inc.i28 = add i32 %29, 1
  store i32 %inc.i28, ptr %wptr.i, align 4
  %arrayidx.i29 = getelementptr i32, ptr %27, i32 %29
  %30 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 21724, ptr %arrayidx.i29, align 4
  %31 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ptr_mask.i, align 4
  %33 = load i32, ptr %wptr.i, align 4
  %and.i31 = and i32 %33, %32
  store i32 %and.i31, ptr %wptr.i, align 4
  %34 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %count_dw.i, align 4
  %dec.i32 = add i32 %35, -1
  store i32 %dec.i32, ptr %count_dw.i, align 4
  %36 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i34 = add i32 %37, -1
  store i32 %dec4.i34, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i32)
  %cmp.i37 = icmp slt i32 %dec.i32, 1
  br i1 %cmp.i37, label %if.then.i38, label %radeon_ring_write.exit35.radeon_ring_write.exit48_crit_edge

radeon_ring_write.exit35.radeon_ring_write.exit48_crit_edge: ; preds = %radeon_ring_write.exit35
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit48

if.then.i38:                                      ; preds = %radeon_ring_write.exit35
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit48

radeon_ring_write.exit48:                         ; preds = %if.then.i38, %radeon_ring_write.exit35.radeon_ring_write.exit48_crit_edge
  %38 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ring1.i, align 8
  %40 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %wptr.i, align 4
  %inc.i41 = add i32 %41, 1
  store i32 %inc.i41, ptr %wptr.i, align 4
  %arrayidx.i42 = getelementptr i32, ptr %39, i32 %41
  %42 = ptrtoint ptr %arrayidx.i42 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile i32 %., ptr %arrayidx.i42, align 4
  %43 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ptr_mask.i, align 4
  %45 = load i32, ptr %wptr.i, align 4
  %and.i44 = and i32 %45, %44
  store i32 %and.i44, ptr %wptr.i, align 4
  %46 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %count_dw.i, align 4
  %dec.i45 = add i32 %47, -1
  store i32 %dec.i45, ptr %count_dw.i, align 4
  %48 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i47 = add i32 %49, -1
  store i32 %dec4.i47, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i45)
  %cmp.i50 = icmp slt i32 %dec.i45, 1
  br i1 %cmp.i50, label %if.then.i51, label %radeon_ring_write.exit48.radeon_ring_write.exit61_crit_edge

radeon_ring_write.exit48.radeon_ring_write.exit61_crit_edge: ; preds = %radeon_ring_write.exit48
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit61

if.then.i51:                                      ; preds = %radeon_ring_write.exit48
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit61

radeon_ring_write.exit61:                         ; preds = %if.then.i51, %radeon_ring_write.exit48.radeon_ring_write.exit61_crit_edge
  %50 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ring1.i, align 8
  %52 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %wptr.i, align 4
  %inc.i54 = add i32 %53, 1
  store i32 %inc.i54, ptr %wptr.i, align 4
  %arrayidx.i55 = getelementptr i32, ptr %51, i32 %53
  %54 = ptrtoint ptr %arrayidx.i55 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile i32 %., ptr %arrayidx.i55, align 4
  %55 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ptr_mask.i, align 4
  %57 = load i32, ptr %wptr.i, align 4
  %and.i57 = and i32 %57, %56
  store i32 %and.i57, ptr %wptr.i, align 4
  %58 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %count_dw.i, align 4
  %dec.i58 = add i32 %59, -1
  store i32 %dec.i58, ptr %count_dw.i, align 4
  %60 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i60 = add i32 %61, -1
  store i32 %dec4.i60, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i58)
  %cmp.i63 = icmp slt i32 %dec.i58, 1
  br i1 %cmp.i63, label %if.then.i64, label %radeon_ring_write.exit61.radeon_ring_write.exit74_crit_edge

radeon_ring_write.exit61.radeon_ring_write.exit74_crit_edge: ; preds = %radeon_ring_write.exit61
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit74

if.then.i64:                                      ; preds = %radeon_ring_write.exit61
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit74

radeon_ring_write.exit74:                         ; preds = %if.then.i64, %radeon_ring_write.exit61.radeon_ring_write.exit74_crit_edge
  %62 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ring1.i, align 8
  %64 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %wptr.i, align 4
  %inc.i67 = add i32 %65, 1
  store i32 %inc.i67, ptr %wptr.i, align 4
  %arrayidx.i68 = getelementptr i32, ptr %63, i32 %65
  %66 = ptrtoint ptr %arrayidx.i68 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile i32 268369930, ptr %arrayidx.i68, align 4
  %67 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ptr_mask.i, align 4
  %69 = load i32, ptr %wptr.i, align 4
  %and.i70 = and i32 %69, %68
  store i32 %and.i70, ptr %wptr.i, align 4
  %70 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %count_dw.i, align 4
  %dec.i71 = add i32 %71, -1
  store i32 %dec.i71, ptr %count_dw.i, align 4
  %72 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i73 = add i32 %73, -1
  store i32 %dec4.i73, ptr %ring_free_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @cik_sdma_semaphore_ring_emit(ptr nocapture noundef readnone %rdev, ptr nocapture noundef %ring, ptr nocapture noundef readonly %semaphore, i1 noundef zeroext %emit_wait) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %gpu_addr = getelementptr inbounds %struct.radeon_semaphore, ptr %semaphore, i32 0, i32 2
  %0 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %gpu_addr, align 8
  %or1 = select i1 %emit_wait, i32 7, i32 1073741831
  %count_dw.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 11
  %2 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count_dw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp slt i32 %3, 1
  br i1 %cmp.i, label %if.then.i, label %entry.radeon_ring_write.exit_crit_edge

entry.radeon_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
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
  store volatile i32 %or1, ptr %arrayidx.i, align 4
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
  %conv = and i32 %16, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i9 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i9, label %if.then.i10, label %radeon_ring_write.exit.radeon_ring_write.exit20_crit_edge

radeon_ring_write.exit.radeon_ring_write.exit20_crit_edge: ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit20

if.then.i10:                                      ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit20

radeon_ring_write.exit20:                         ; preds = %if.then.i10, %radeon_ring_write.exit.radeon_ring_write.exit20_crit_edge
  %17 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ring1.i, align 8
  %19 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wptr.i, align 4
  %inc.i13 = add i32 %20, 1
  store i32 %inc.i13, ptr %wptr.i, align 4
  %arrayidx.i14 = getelementptr i32, ptr %18, i32 %20
  %21 = ptrtoint ptr %arrayidx.i14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 %conv, ptr %arrayidx.i14, align 4
  %22 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ptr_mask.i, align 4
  %24 = load i32, ptr %wptr.i, align 4
  %and.i16 = and i32 %24, %23
  store i32 %and.i16, ptr %wptr.i, align 4
  %25 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %count_dw.i, align 4
  %dec.i17 = add i32 %26, -1
  store i32 %dec.i17, ptr %count_dw.i, align 4
  %27 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i19 = add i32 %28, -1
  store i32 %dec4.i19, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i17)
  %cmp.i22 = icmp slt i32 %dec.i17, 1
  br i1 %cmp.i22, label %if.then.i23, label %radeon_ring_write.exit20.radeon_ring_write.exit33_crit_edge

radeon_ring_write.exit20.radeon_ring_write.exit33_crit_edge: ; preds = %radeon_ring_write.exit20
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit33

if.then.i23:                                      ; preds = %radeon_ring_write.exit20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit33

radeon_ring_write.exit33:                         ; preds = %if.then.i23, %radeon_ring_write.exit20.radeon_ring_write.exit33_crit_edge
  %shr = lshr i64 %1, 32
  %conv4 = trunc i64 %shr to i32
  %29 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ring1.i, align 8
  %31 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %wptr.i, align 4
  %inc.i26 = add i32 %32, 1
  store i32 %inc.i26, ptr %wptr.i, align 4
  %arrayidx.i27 = getelementptr i32, ptr %30, i32 %32
  %33 = ptrtoint ptr %arrayidx.i27 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile i32 %conv4, ptr %arrayidx.i27, align 4
  %34 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ptr_mask.i, align 4
  %36 = load i32, ptr %wptr.i, align 4
  %and.i29 = and i32 %36, %35
  store i32 %and.i29, ptr %wptr.i, align 4
  %37 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %count_dw.i, align 4
  %dec.i30 = add i32 %38, -1
  store i32 %dec.i30, ptr %count_dw.i, align 4
  %39 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i32 = add i32 %40, -1
  store i32 %dec4.i32, ptr %ring_free_dw.i, align 8
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cik_sdma_enable(ptr noundef %rdev, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %asic.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %0 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asic.i, align 8
  %copy_ring_index.i = getelementptr inbounds %struct.radeon_asic, ptr %1, i32 0, i32 17, i32 5
  %2 = ptrtoint ptr %copy_ring_index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %copy_ring_index.i, align 4
  %.off.i = add i32 %3, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.then.i, label %if.then.cik_sdma_gfx_stop.exit_crit_edge

if.then.cik_sdma_gfx_stop.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cik_sdma_gfx_stop.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %visible_vram_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 4
  %4 = ptrtoint ptr %visible_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %visible_vram_size.i, align 8
  tail call void @radeon_ttm_set_active_vram_size(ptr noundef %rdev, i64 noundef %5) #7
  br label %cik_sdma_gfx_stop.exit

cik_sdma_gfx_stop.exit:                           ; preds = %if.then.i, %if.then.cik_sdma_gfx_stop.exit_crit_edge
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %6 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 53760
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  %9 = and i32 %8, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i34.i = getelementptr i8, ptr %11, i32 53760
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i, i32 %9) #7, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i36.i = getelementptr i8, ptr %13, i32 53800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36.i, i32 0) #7, !srcloc !42
  %14 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.1.i = getelementptr i8, ptr %15, i32 55808
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i) #7, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  %17 = and i32 %16, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i34.1.i = getelementptr i8, ptr %19, i32 55808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.1.i, i32 %17) #7, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i36.1.i = getelementptr i8, ptr %21, i32 55848
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36.1.i, i32 0) #7, !srcloc !42
  %ready.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 3, i32 17
  %22 = ptrtoint ptr %ready.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %ready.i, align 8
  %ready13.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 4, i32 17
  %23 = ptrtoint ptr %ready13.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %ready13.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @arm_heavy_mb() #7
  %24 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i38.i = getelementptr i8, ptr %25, i32 3680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38.i, i32 1073745920) #7, !srcloc !42
  %26 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i40.i = getelementptr i8, ptr %27, i32 3680
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i40.i) #7, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 10737400) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @arm_heavy_mb() #7
  %30 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i42.i = getelementptr i8, ptr %31, i32 3680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42.i, i32 0) #7, !srcloc !42
  %32 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i44.i = getelementptr i8, ptr %33, i32 3680
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44.i) #7, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  br label %if.end

if.end:                                           ; preds = %cik_sdma_gfx_stop.exit, %entry.if.end_crit_edge
  %masksel.i = phi i32 [ 0, %cik_sdma_gfx_stop.exit ], [ 262144, %entry.if.end_crit_edge ]
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %not.enable = xor i1 %enable, true
  %masksel = zext i1 %not.enable to i32
  %35 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %36, i32 53320
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  %38 = and i32 %37, -16777217
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %me_cntl.0 = or i32 %39, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @arm_heavy_mb() #7
  %40 = tail call i32 @llvm.bswap.i32(i32 %me_cntl.0) #7
  %41 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i22 = getelementptr i8, ptr %42, i32 53320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 %40) #7, !srcloc !42
  %43 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %44, i32 55368
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1) #7, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  %46 = and i32 %45, -16777217
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  %me_cntl.0.1 = or i32 %47, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @arm_heavy_mb() #7
  %48 = tail call i32 @llvm.bswap.i32(i32 %me_cntl.0.1) #7
  %49 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i22.1 = getelementptr i8, ptr %50, i32 55368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.1, i32 %48) #7, !srcloc !42
  %51 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i.i24 = getelementptr i8, ptr %52, i32 53264
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i24) #7, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  %54 = and i32 %53, -1025
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #7
  %value.0.i = or i32 %55, %masksel.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @arm_heavy_mb() #7
  %56 = tail call i32 @llvm.bswap.i32(i32 %value.0.i) #7
  %57 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %58, i32 53264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 %56) #7, !srcloc !42
  %59 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i.1.i25 = getelementptr i8, ptr %60, i32 55312
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i25) #7, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  %62 = and i32 %61, -1025
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #7
  %value.0.1.i = or i32 %63, %masksel.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @arm_heavy_mb() #7
  %64 = tail call i32 @llvm.bswap.i32(i32 %value.0.1.i) #7
  %65 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i13.1.i = getelementptr i8, ptr %66, i32 55312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.1.i, i32 %64) #7, !srcloc !42
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cik_sdma_resume(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sdma_fw.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 78
  %0 = ptrtoint ptr %sdma_fw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdma_fw.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  tail call void @cik_sdma_enable(ptr noundef %rdev, i1 noundef zeroext false) #7
  %new_fw.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 82
  %2 = ptrtoint ptr %new_fw.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %new_fw.i, align 4, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not.i = icmp eq i8 %3, 0
  %4 = ptrtoint ptr %sdma_fw.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sdma_fw.i, align 4
  %data26.i = getelementptr inbounds %struct.firmware, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %data26.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data26.i, align 4
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  tail call void @radeon_ucode_print_sdma_hdr(ptr noundef %7) #7
  %8 = ptrtoint ptr %sdma_fw.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sdma_fw.i, align 4
  %data5.i = getelementptr inbounds %struct.firmware, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %data5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data5.i, align 4
  %ucode_array_offset_bytes.i = getelementptr inbounds %struct.common_firmware_header, ptr %7, i32 0, i32 8
  %12 = ptrtoint ptr %ucode_array_offset_bytes.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ucode_array_offset_bytes.i, align 4
  %ucode_size_bytes.i = getelementptr inbounds %struct.common_firmware_header, ptr %7, i32 0, i32 7
  %14 = ptrtoint ptr %ucode_size_bytes.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ucode_size_bytes.i, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @arm_heavy_mb() #7
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %17 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 53248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !42
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %16)
  %cmp109.not.i = icmp ult i32 %16, 4
  br i1 %cmp109.not.i, label %if.then2.i.for.end.i_crit_edge, label %for.body.preheader.i

if.then2.i.for.end.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.preheader.i:                             ; preds = %if.then2.i
  %div81.i = lshr i32 %16, 2
  %19 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  %add.ptr.i = getelementptr i8, ptr %11, i32 %19
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %fw_data.0111.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %add.ptr.i, %for.body.preheader.i ]
  %i.0110.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %incdec.ptr.i = getelementptr i32, ptr %fw_data.0111.i, i32 1
  %20 = ptrtoint ptr %fw_data.0111.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fw_data.0111.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i84.i = getelementptr i8, ptr %23, i32 53252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i84.i, i32 %21) #7, !srcloc !42
  %inc.i = add nuw nsw i32 %i.0110.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div81.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.then2.i.for.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @arm_heavy_mb() #7
  %24 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i86.i = getelementptr i8, ptr %25, i32 53252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86.i, i32 1073741824) #7, !srcloc !42
  %26 = ptrtoint ptr %sdma_fw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sdma_fw.i, align 4
  %data9.i = getelementptr inbounds %struct.firmware, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %data9.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data9.i, align 4
  %30 = ptrtoint ptr %ucode_array_offset_bytes.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ucode_array_offset_bytes.i, align 4
  %32 = ptrtoint ptr %ucode_size_bytes.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ucode_size_bytes.i, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @arm_heavy_mb() #7
  %35 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i88.i = getelementptr i8, ptr %36, i32 55296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88.i, i32 0) #7, !srcloc !42
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %34)
  %cmp17112.not.i = icmp ult i32 %34, 4
  br i1 %cmp17112.not.i, label %for.end.i.for.end23.i_crit_edge, label %for.body18.preheader.i

for.end.i.for.end23.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end23.i

for.body18.preheader.i:                           ; preds = %for.end.i
  %div1582.i = lshr i32 %34, 2
  %37 = tail call i32 @llvm.bswap.i32(i32 %31) #7
  %add.ptr12.i = getelementptr i8, ptr %29, i32 %37
  br label %for.body18.i

for.body18.i:                                     ; preds = %for.body18.i.for.body18.i_crit_edge, %for.body18.preheader.i
  %fw_data.1114.i = phi ptr [ %incdec.ptr19.i, %for.body18.i.for.body18.i_crit_edge ], [ %add.ptr12.i, %for.body18.preheader.i ]
  %i.1113.i = phi i32 [ %inc22.i, %for.body18.i.for.body18.i_crit_edge ], [ 0, %for.body18.preheader.i ]
  %incdec.ptr19.i = getelementptr i32, ptr %fw_data.1114.i, i32 1
  %38 = ptrtoint ptr %fw_data.1114.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %fw_data.1114.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @arm_heavy_mb() #7
  %40 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i90.i = getelementptr i8, ptr %41, i32 55300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90.i, i32 %39) #7, !srcloc !42
  %inc22.i = add nuw nsw i32 %i.1113.i, 1
  %exitcond120.not.i = icmp eq i32 %inc22.i, %div1582.i
  br i1 %exitcond120.not.i, label %for.body18.i.for.end23.i_crit_edge, label %for.body18.i.for.body18.i_crit_edge

for.body18.i.for.body18.i_crit_edge:              ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body18.i

for.body18.i.for.end23.i_crit_edge:               ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end23.i

for.end23.i:                                      ; preds = %for.body18.i.for.end23.i_crit_edge, %for.end.i.for.end23.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @arm_heavy_mb() #7
  %42 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i92.i = getelementptr i8, ptr %43, i32 55300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92.i, i32 1073741824) #7, !srcloc !42
  br label %if.end

if.else.i:                                        ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @arm_heavy_mb() #7
  %rmmio.i93.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %44 = ptrtoint ptr %rmmio.i93.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rmmio.i93.i, align 4
  %add.ptr.i94.i = getelementptr i8, ptr %45, i32 53248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i94.i, i32 0) #7, !srcloc !42
  br label %for.body29.i

for.body29.i:                                     ; preds = %for.body29.i.for.body29.i_crit_edge, %if.else.i
  %fw_data24.0116.i = phi ptr [ %7, %if.else.i ], [ %incdec.ptr30.i, %for.body29.i.for.body29.i_crit_edge ]
  %i.2115.i = phi i32 [ 0, %if.else.i ], [ %inc33.i, %for.body29.i.for.body29.i_crit_edge ]
  %incdec.ptr30.i = getelementptr i32, ptr %fw_data24.0116.i, i32 1
  %46 = ptrtoint ptr %fw_data24.0116.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fw_data24.0116.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @arm_heavy_mb() #7
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #7
  %49 = ptrtoint ptr %rmmio.i93.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rmmio.i93.i, align 4
  %add.ptr.i96.i = getelementptr i8, ptr %50, i32 53252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i96.i, i32 %48) #7, !srcloc !42
  %inc33.i = add nuw nsw i32 %i.2115.i, 1
  %exitcond121.not.i = icmp eq i32 %inc33.i, 1050
  br i1 %exitcond121.not.i, label %for.end34.i, label %for.body29.i.for.body29.i_crit_edge

for.body29.i.for.body29.i_crit_edge:              ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body29.i

for.end34.i:                                      ; preds = %for.body29.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @arm_heavy_mb() #7
  %51 = ptrtoint ptr %rmmio.i93.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rmmio.i93.i, align 4
  %add.ptr.i98.i = getelementptr i8, ptr %52, i32 53252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i98.i, i32 1073741824) #7, !srcloc !42
  %53 = ptrtoint ptr %sdma_fw.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sdma_fw.i, align 4
  %data36.i = getelementptr inbounds %struct.firmware, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %data36.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data36.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @arm_heavy_mb() #7
  %57 = ptrtoint ptr %rmmio.i93.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rmmio.i93.i, align 4
  %add.ptr.i100.i = getelementptr i8, ptr %58, i32 55296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i100.i, i32 0) #7, !srcloc !42
  br label %for.body39.i

for.body39.i:                                     ; preds = %for.body39.i.for.body39.i_crit_edge, %for.end34.i
  %fw_data24.1118.i = phi ptr [ %56, %for.end34.i ], [ %incdec.ptr40.i, %for.body39.i.for.body39.i_crit_edge ]
  %i.3117.i = phi i32 [ 0, %for.end34.i ], [ %inc43.i, %for.body39.i.for.body39.i_crit_edge ]
  %incdec.ptr40.i = getelementptr i32, ptr %fw_data24.1118.i, i32 1
  %59 = ptrtoint ptr %fw_data24.1118.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %fw_data24.1118.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @arm_heavy_mb() #7
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #7
  %62 = ptrtoint ptr %rmmio.i93.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rmmio.i93.i, align 4
  %add.ptr.i102.i = getelementptr i8, ptr %63, i32 55300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i102.i, i32 %61) #7, !srcloc !42
  %inc43.i = add nuw nsw i32 %i.3117.i, 1
  %exitcond122.not.i = icmp eq i32 %inc43.i, 1050
  br i1 %exitcond122.not.i, label %for.end44.i, label %for.body39.i.for.body39.i_crit_edge

for.body39.i.for.body39.i_crit_edge:              ; preds = %for.body39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body39.i

for.end44.i:                                      ; preds = %for.body39.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @arm_heavy_mb() #7
  %64 = ptrtoint ptr %rmmio.i93.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rmmio.i93.i, align 4
  %add.ptr.i104.i = getelementptr i8, ptr %65, i32 55300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i104.i, i32 1073741824) #7, !srcloc !42
  br label %if.end

if.end:                                           ; preds = %for.end44.i, %for.end23.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @arm_heavy_mb() #7
  %rmmio.i105.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %66 = ptrtoint ptr %rmmio.i105.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rmmio.i105.i, align 4
  %add.ptr.i106.i = getelementptr i8, ptr %67, i32 53248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i106.i, i32 0) #7, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @arm_heavy_mb() #7
  %68 = ptrtoint ptr %rmmio.i105.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rmmio.i105.i, align 4
  %add.ptr.i108.i = getelementptr i8, ptr %69, i32 55296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i108.i, i32 0) #7, !srcloc !42
  tail call void @cik_sdma_enable(ptr noundef %rdev, i1 noundef zeroext true)
  %arrayidx.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 3
  %arrayidx4.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 4
  %gpu_addr.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 62, i32 2
  %enabled.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 62, i32 3
  %asic.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  br label %for.body.i19

for.cond.i:                                       ; preds = %for.body.i19
  br i1 %cmp1.i, label %for.cond.i.for.body.i19_crit_edge, label %for.end.i21

for.cond.i.for.body.i19_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i19

for.body.i19:                                     ; preds = %for.cond.i.for.body.i19_crit_edge, %if.end
  %cmp1.i = phi i1 [ true, %if.end ], [ false, %for.cond.i.for.body.i19_crit_edge ]
  %ring.0.i = select i1 %cmp1.i, ptr %arrayidx.i, ptr %arrayidx4.i
  %reg_offset.0.i = select i1 %cmp1.i, i32 0, i32 2048
  %wb_offset.0.i = select i1 %cmp1.i, i32 1792, i32 2304
  %add.i = or i32 %reg_offset.0.i, 53280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @arm_heavy_mb() #7
  %70 = ptrtoint ptr %rmmio.i105.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rmmio.i105.i, align 4
  %add.ptr.i.i18 = getelementptr i8, ptr %71, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i18, i32 0) #7, !srcloc !42
  %add5.i = or i32 %reg_offset.0.i, 53284
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @arm_heavy_mb() #7
  %72 = ptrtoint ptr %rmmio.i105.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rmmio.i105.i, align 4
  %add.ptr.i158.i = getelementptr i8, ptr %73, i32 %add5.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i158.i, i32 0) #7, !srcloc !42
  %ring_size.i = getelementptr inbounds %struct.radeon_ring, ptr %ring.0.i, i32 0, i32 9
  %74 = ptrtoint ptr %ring_size.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ring_size.i, align 4
  %div156.i = lshr i32 %75, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %75)
  %cmp.i.i = icmp ugt i32 %75, 7
  %sub.i159.i = add nsw i32 %div156.i, -1
  %76 = tail call i32 @llvm.ctlz.i32(i32 %sub.i159.i, i1 false) #7, !range !43
  %.neg = mul nsw i32 %76, -2
  %add.i.i.op = add nsw i32 %.neg, 64
  %shl.i = select i1 %cmp.i.i, i32 %add.i.i.op, i32 0
  %or.i = or i32 %shl.i, 8704
  %add41.i = or i32 %reg_offset.0.i, 53760
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @arm_heavy_mb() #7
  %77 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %78 = ptrtoint ptr %rmmio.i105.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rmmio.i105.i, align 4
  %add.ptr.i161.i = getelementptr i8, ptr %79, i32 %add41.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i161.i, i32 %77) #7, !srcloc !42
  %add42.i = or i32 %reg_offset.0.i, 53772
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @arm_heavy_mb() #7
  %80 = ptrtoint ptr %rmmio.i105.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %rmmio.i105.i, align 4
  %add.ptr.i163.i = getelementptr i8, ptr %81, i32 %add42.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i163.i, i32 0) #7, !srcloc !42
  %add43.i = or i32 %reg_offset.0.i, 53776
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @arm_heavy_mb() #7
  %82 = ptrtoint ptr %rmmio.i105.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rmmio.i105.i, align 4
  %add.ptr.i165.i = getelementptr i8, ptr %83, i32 %add43.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i165.i, i32 0) #7, !srcloc !42
  %add44.i = or i32 %reg_offset.0.i, 53792
  %84 = ptrtoint ptr %gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %gpu_addr.i, align 8
  %conv45.i = zext i32 %wb_offset.0.i to i64
  %add46.i = add i64 %85, %conv45.i
  %shr.i = lshr i64 %add46.i, 32
  %conv48.i = trunc i64 %shr.i to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @arm_heavy_mb() #7
  %86 = tail call i32 @llvm.bswap.i32(i32 %conv48.i) #7
  %87 = ptrtoint ptr %rmmio.i105.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %rmmio.i105.i, align 4
  %add.ptr.i167.i = getelementptr i8, ptr %88, i32 %add44.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i167.i, i32 %86) #7, !srcloc !42
  %add49.i = or i32 %reg_offset.0.i, 53796
  %89 = ptrtoint ptr %gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %gpu_addr.i, align 8
  %91 = trunc i64 %90 to i32
  %92 = add i32 %wb_offset.0.i, %91
  %conv55.i = and i32 %92, -4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @arm_heavy_mb() #7
  %93 = tail call i32 @llvm.bswap.i32(i32 %conv55.i) #7
  %94 = ptrtoint ptr %rmmio.i105.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rmmio.i105.i, align 4
  %add.ptr.i169.i = getelementptr i8, ptr %95, i32 %add49.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i169.i, i32 %93) #7, !srcloc !42
  %96 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %enabled.i, align 8, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool.not.i20 = icmp eq i8 %97, 0
  %or58.i = or i32 %shl.i, 12800
  %spec.select.i = select i1 %tobool.not.i20, i32 %or.i, i32 %or58.i
  %add60.i = or i32 %reg_offset.0.i, 53764
  %gpu_addr61.i = getelementptr inbounds %struct.radeon_ring, ptr %ring.0.i, i32 0, i32 14
  %98 = ptrtoint ptr %gpu_addr61.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %gpu_addr61.i, align 8
  %shr62.i = lshr i64 %99, 8
  %conv63.i = trunc i64 %shr62.i to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @arm_heavy_mb() #7
  %100 = tail call i32 @llvm.bswap.i32(i32 %conv63.i) #7
  %101 = ptrtoint ptr %rmmio.i105.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %rmmio.i105.i, align 4
  %add.ptr.i171.i = getelementptr i8, ptr %102, i32 %add60.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i171.i, i32 %100) #7, !srcloc !42
  %add64.i = or i32 %reg_offset.0.i, 53768
  %103 = ptrtoint ptr %gpu_addr61.i to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %gpu_addr61.i, align 8
  %shr66.i = lshr i64 %104, 40
  %conv67.i = trunc i64 %shr66.i to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @arm_heavy_mb() #7
  %105 = tail call i32 @llvm.bswap.i32(i32 %conv67.i) #7
  %106 = ptrtoint ptr %rmmio.i105.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %rmmio.i105.i, align 4
  %add.ptr.i173.i = getelementptr i8, ptr %107, i32 %add64.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i173.i, i32 %105) #7, !srcloc !42
  %wptr.i = getelementptr inbounds %struct.radeon_ring, ptr %ring.0.i, i32 0, i32 7
  %108 = ptrtoint ptr %wptr.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %wptr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @arm_heavy_mb() #7
  %109 = ptrtoint ptr %rmmio.i105.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %rmmio.i105.i, align 4
  %add.ptr.i175.i = getelementptr i8, ptr %110, i32 %add43.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i175.i, i32 0) #7, !srcloc !42
  %or72.i = or i32 %spec.select.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @arm_heavy_mb() #7
  %111 = tail call i32 @llvm.bswap.i32(i32 %or72.i) #7
  %112 = ptrtoint ptr %rmmio.i105.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %rmmio.i105.i, align 4
  %add.ptr.i177.i = getelementptr i8, ptr %113, i32 %add41.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i177.i, i32 %111) #7, !srcloc !42
  %add74.i = or i32 %reg_offset.0.i, 53800
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @arm_heavy_mb() #7
  %114 = ptrtoint ptr %rmmio.i105.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %rmmio.i105.i, align 4
  %add.ptr.i179.i = getelementptr i8, ptr %115, i32 %add74.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i179.i, i32 285212672) #7, !srcloc !42
  %ready.i = getelementptr inbounds %struct.radeon_ring, ptr %ring.0.i, i32 0, i32 17
  %116 = ptrtoint ptr %ready.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 1, ptr %ready.i, align 8
  %117 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %asic.i, align 8
  %idx.i = getelementptr inbounds %struct.radeon_ring, ptr %ring.0.i, i32 0, i32 19
  %119 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %idx.i, align 8
  %arrayidx76.i = getelementptr %struct.radeon_asic, ptr %118, i32 0, i32 14, i32 %120
  %121 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx76.i, align 4
  %ring_test.i = getelementptr inbounds %struct.radeon_asic_ring, ptr %122, i32 0, i32 10
  %123 = ptrtoint ptr %ring_test.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ring_test.i, align 4
  %call77.i = tail call i32 %124(ptr noundef %rdev, ptr noundef %ring.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i)
  %tobool78.not.i = icmp eq i32 %call77.i, 0
  br i1 %tobool78.not.i, label %for.cond.i, label %cik_sdma_gfx_resume.exit

for.end.i21:                                      ; preds = %for.cond.i
  %125 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %asic.i, align 8
  %copy_ring_index.i = getelementptr inbounds %struct.radeon_asic, ptr %126, i32 0, i32 17, i32 5
  %127 = ptrtoint ptr %copy_ring_index.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %copy_ring_index.i, align 4
  %.off.i = add i32 %128, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.then91.i, label %for.end.i21.cleanup_crit_edge

for.end.i21.cleanup_crit_edge:                    ; preds = %for.end.i21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then91.i:                                      ; preds = %for.end.i21
  call void @__sanitizer_cov_trace_pc() #9
  %real_vram_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 11
  %129 = ptrtoint ptr %real_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %real_vram_size.i, align 8
  tail call void @radeon_ttm_set_active_vram_size(ptr noundef %rdev, i64 noundef %130) #7
  br label %cleanup

cik_sdma_gfx_resume.exit:                         ; preds = %for.body.i19
  call void @__sanitizer_cov_trace_pc() #9
  %ready.i.le = getelementptr inbounds %struct.radeon_ring, ptr %ring.0.i, i32 0, i32 17
  %131 = ptrtoint ptr %ready.i.le to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 0, ptr %ready.i.le, align 8
  br label %cleanup

cleanup:                                          ; preds = %cik_sdma_gfx_resume.exit, %if.then91.i, %for.end.i21.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call77.i, %cik_sdma_gfx_resume.exit ], [ -22, %entry.cleanup_crit_edge ], [ 0, %for.end.i21.cleanup_crit_edge ], [ 0, %if.then91.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cik_sdma_fini(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @cik_sdma_enable(ptr noundef %rdev, i1 noundef zeroext false)
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 3
  tail call void @radeon_ring_fini(ptr noundef %rdev, ptr noundef %arrayidx) #7
  %arrayidx2 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 4
  tail call void @radeon_ring_fini(ptr noundef %rdev, ptr noundef %arrayidx2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ring_fini(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cik_copy_dma(ptr noundef %rdev, i64 noundef %src_offset, i64 noundef %dst_offset, i32 noundef %num_gpu_pages, ptr noundef %resv) local_unnamed_addr #0 align 64 {
entry:
  %fence = alloca ptr, align 4
  %sync = alloca %struct.radeon_sync, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fence) #7
  %0 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fence, align 4, !annotation !44
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %sync) #7
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
  call void @radeon_sync_create(ptr noundef nonnull %sync) #7
  %shl = shl i32 %num_gpu_pages, 12
  %sub = add i32 %shl, 2097150
  %div = udiv i32 %sub, 2097151
  %mul = mul nuw nsw i32 %div, 7
  %add2 = add nuw nsw i32 %mul, 14
  %call = call i32 @radeon_ring_lock(ptr noundef %rdev, ptr noundef %arrayidx, i32 noundef %add2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %call) #7
  call void @radeon_sync_free(ptr noundef %rdev, ptr noundef nonnull %sync, ptr noundef null) #7
  %6 = inttoptr i32 %call to ptr
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call i32 @radeon_sync_resv(ptr noundef %rdev, ptr noundef nonnull %sync, ptr noundef %resv, i1 noundef zeroext false) #7
  %idx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %5, i32 19
  %7 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idx, align 8
  %call5 = call i32 @radeon_sync_rings(ptr noundef %rdev, ptr noundef nonnull %sync, i32 noundef %8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097151, i32 %sub)
  %9 = icmp ult i32 %sub, 2097151
  br i1 %9, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %count_dw.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %5, i32 11
  %ring1.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %5, i32 2
  %wptr.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %5, i32 7
  %ptr_mask.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %5, i32 16
  %ring_free_dw.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %5, i32 10
  br label %for.body

for.body:                                         ; preds = %radeon_ring_write.exit149.for.body_crit_edge, %for.body.lr.ph
  %i.0154 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %radeon_ring_write.exit149.for.body_crit_edge ]
  %size_in_bytes.0153 = phi i32 [ %shl, %for.body.lr.ph ], [ %sub9, %radeon_ring_write.exit149.for.body_crit_edge ]
  %src_offset.addr.0152 = phi i64 [ %src_offset, %for.body.lr.ph ], [ %add18, %radeon_ring_write.exit149.for.body_crit_edge ]
  %dst_offset.addr.0151 = phi i64 [ %dst_offset, %for.body.lr.ph ], [ %add20, %radeon_ring_write.exit149.for.body_crit_edge ]
  %10 = call i32 @llvm.umin.i32(i32 %size_in_bytes.0153, i32 2097151)
  %sub9 = sub i32 %size_in_bytes.0153, %10
  %11 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count_dw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i = icmp slt i32 %12, 1
  br i1 %cmp.i, label %if.then.i, label %for.body.radeon_ring_write.exit_crit_edge

for.body.radeon_ring_write.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit

radeon_ring_write.exit:                           ; preds = %if.then.i, %for.body.radeon_ring_write.exit_crit_edge
  %13 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ring1.i, align 8
  %15 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wptr.i, align 4
  %inc.i = add i32 %16, 1
  store i32 %inc.i, ptr %wptr.i, align 4
  %arrayidx.i = getelementptr i32, ptr %14, i32 %16
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 1, ptr %arrayidx.i, align 4
  %18 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ptr_mask.i, align 4
  %20 = load i32, ptr %wptr.i, align 4
  %and.i = and i32 %20, %19
  store i32 %and.i, ptr %wptr.i, align 4
  %21 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %count_dw.i, align 4
  %dec.i = add i32 %22, -1
  store i32 %dec.i, ptr %count_dw.i, align 4
  %23 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i = add i32 %24, -1
  store i32 %dec4.i, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i73 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i73, label %if.then.i74, label %radeon_ring_write.exit.radeon_ring_write.exit84_crit_edge

radeon_ring_write.exit.radeon_ring_write.exit84_crit_edge: ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit84

if.then.i74:                                      ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit84

radeon_ring_write.exit84:                         ; preds = %if.then.i74, %radeon_ring_write.exit.radeon_ring_write.exit84_crit_edge
  %25 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ring1.i, align 8
  %27 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %wptr.i, align 4
  %inc.i77 = add i32 %28, 1
  store i32 %inc.i77, ptr %wptr.i, align 4
  %arrayidx.i78 = getelementptr i32, ptr %26, i32 %28
  %29 = ptrtoint ptr %arrayidx.i78 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile i32 %10, ptr %arrayidx.i78, align 4
  %30 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ptr_mask.i, align 4
  %32 = load i32, ptr %wptr.i, align 4
  %and.i80 = and i32 %32, %31
  store i32 %and.i80, ptr %wptr.i, align 4
  %33 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %count_dw.i, align 4
  %dec.i81 = add i32 %34, -1
  store i32 %dec.i81, ptr %count_dw.i, align 4
  %35 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i83 = add i32 %36, -1
  store i32 %dec4.i83, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i81)
  %cmp.i86 = icmp slt i32 %dec.i81, 1
  br i1 %cmp.i86, label %if.then.i87, label %radeon_ring_write.exit84.radeon_ring_write.exit97_crit_edge

radeon_ring_write.exit84.radeon_ring_write.exit97_crit_edge: ; preds = %radeon_ring_write.exit84
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit97

if.then.i87:                                      ; preds = %radeon_ring_write.exit84
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit97

radeon_ring_write.exit97:                         ; preds = %if.then.i87, %radeon_ring_write.exit84.radeon_ring_write.exit97_crit_edge
  %37 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ring1.i, align 8
  %39 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %wptr.i, align 4
  %inc.i90 = add i32 %40, 1
  store i32 %inc.i90, ptr %wptr.i, align 4
  %arrayidx.i91 = getelementptr i32, ptr %38, i32 %40
  %41 = ptrtoint ptr %arrayidx.i91 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 0, ptr %arrayidx.i91, align 4
  %42 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ptr_mask.i, align 4
  %44 = load i32, ptr %wptr.i, align 4
  %and.i93 = and i32 %44, %43
  store i32 %and.i93, ptr %wptr.i, align 4
  %45 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %count_dw.i, align 4
  %dec.i94 = add i32 %46, -1
  store i32 %dec.i94, ptr %count_dw.i, align 4
  %47 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i96 = add i32 %48, -1
  store i32 %dec4.i96, ptr %ring_free_dw.i, align 8
  %conv = trunc i64 %src_offset.addr.0152 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i94)
  %cmp.i99 = icmp slt i32 %dec.i94, 1
  br i1 %cmp.i99, label %if.then.i100, label %radeon_ring_write.exit97.radeon_ring_write.exit110_crit_edge

radeon_ring_write.exit97.radeon_ring_write.exit110_crit_edge: ; preds = %radeon_ring_write.exit97
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit110

if.then.i100:                                     ; preds = %radeon_ring_write.exit97
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit110

radeon_ring_write.exit110:                        ; preds = %if.then.i100, %radeon_ring_write.exit97.radeon_ring_write.exit110_crit_edge
  %49 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ring1.i, align 8
  %51 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %wptr.i, align 4
  %inc.i103 = add i32 %52, 1
  store i32 %inc.i103, ptr %wptr.i, align 4
  %arrayidx.i104 = getelementptr i32, ptr %50, i32 %52
  %53 = ptrtoint ptr %arrayidx.i104 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile i32 %conv, ptr %arrayidx.i104, align 4
  %54 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ptr_mask.i, align 4
  %56 = load i32, ptr %wptr.i, align 4
  %and.i106 = and i32 %56, %55
  store i32 %and.i106, ptr %wptr.i, align 4
  %57 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %count_dw.i, align 4
  %dec.i107 = add i32 %58, -1
  store i32 %dec.i107, ptr %count_dw.i, align 4
  %59 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i109 = add i32 %60, -1
  store i32 %dec4.i109, ptr %ring_free_dw.i, align 8
  %shr = lshr i64 %src_offset.addr.0152, 32
  %conv11 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i107)
  %cmp.i112 = icmp slt i32 %dec.i107, 1
  br i1 %cmp.i112, label %if.then.i113, label %radeon_ring_write.exit110.radeon_ring_write.exit123_crit_edge

radeon_ring_write.exit110.radeon_ring_write.exit123_crit_edge: ; preds = %radeon_ring_write.exit110
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit123

if.then.i113:                                     ; preds = %radeon_ring_write.exit110
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit123

radeon_ring_write.exit123:                        ; preds = %if.then.i113, %radeon_ring_write.exit110.radeon_ring_write.exit123_crit_edge
  %61 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ring1.i, align 8
  %63 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %wptr.i, align 4
  %inc.i116 = add i32 %64, 1
  store i32 %inc.i116, ptr %wptr.i, align 4
  %arrayidx.i117 = getelementptr i32, ptr %62, i32 %64
  %65 = ptrtoint ptr %arrayidx.i117 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile i32 %conv11, ptr %arrayidx.i117, align 4
  %66 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ptr_mask.i, align 4
  %68 = load i32, ptr %wptr.i, align 4
  %and.i119 = and i32 %68, %67
  store i32 %and.i119, ptr %wptr.i, align 4
  %69 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %count_dw.i, align 4
  %dec.i120 = add i32 %70, -1
  store i32 %dec.i120, ptr %count_dw.i, align 4
  %71 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i122 = add i32 %72, -1
  store i32 %dec4.i122, ptr %ring_free_dw.i, align 8
  %conv13 = trunc i64 %dst_offset.addr.0151 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i120)
  %cmp.i125 = icmp slt i32 %dec.i120, 1
  br i1 %cmp.i125, label %if.then.i126, label %radeon_ring_write.exit123.radeon_ring_write.exit136_crit_edge

radeon_ring_write.exit123.radeon_ring_write.exit136_crit_edge: ; preds = %radeon_ring_write.exit123
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit136

if.then.i126:                                     ; preds = %radeon_ring_write.exit123
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit136

radeon_ring_write.exit136:                        ; preds = %if.then.i126, %radeon_ring_write.exit123.radeon_ring_write.exit136_crit_edge
  %73 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ring1.i, align 8
  %75 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %wptr.i, align 4
  %inc.i129 = add i32 %76, 1
  store i32 %inc.i129, ptr %wptr.i, align 4
  %arrayidx.i130 = getelementptr i32, ptr %74, i32 %76
  %77 = ptrtoint ptr %arrayidx.i130 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile i32 %conv13, ptr %arrayidx.i130, align 4
  %78 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %ptr_mask.i, align 4
  %80 = load i32, ptr %wptr.i, align 4
  %and.i132 = and i32 %80, %79
  store i32 %and.i132, ptr %wptr.i, align 4
  %81 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %count_dw.i, align 4
  %dec.i133 = add i32 %82, -1
  store i32 %dec.i133, ptr %count_dw.i, align 4
  %83 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i135 = add i32 %84, -1
  store i32 %dec4.i135, ptr %ring_free_dw.i, align 8
  %shr14 = lshr i64 %dst_offset.addr.0151, 32
  %conv16 = trunc i64 %shr14 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i133)
  %cmp.i138 = icmp slt i32 %dec.i133, 1
  br i1 %cmp.i138, label %if.then.i139, label %radeon_ring_write.exit136.radeon_ring_write.exit149_crit_edge

radeon_ring_write.exit136.radeon_ring_write.exit149_crit_edge: ; preds = %radeon_ring_write.exit136
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit149

if.then.i139:                                     ; preds = %radeon_ring_write.exit136
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit149

radeon_ring_write.exit149:                        ; preds = %if.then.i139, %radeon_ring_write.exit136.radeon_ring_write.exit149_crit_edge
  %85 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ring1.i, align 8
  %87 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %wptr.i, align 4
  %inc.i142 = add i32 %88, 1
  store i32 %inc.i142, ptr %wptr.i, align 4
  %arrayidx.i143 = getelementptr i32, ptr %86, i32 %88
  %89 = ptrtoint ptr %arrayidx.i143 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile i32 %conv16, ptr %arrayidx.i143, align 4
  %90 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %ptr_mask.i, align 4
  %92 = load i32, ptr %wptr.i, align 4
  %and.i145 = and i32 %92, %91
  store i32 %and.i145, ptr %wptr.i, align 4
  %93 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %count_dw.i, align 4
  %dec.i146 = add i32 %94, -1
  store i32 %dec.i146, ptr %count_dw.i, align 4
  %95 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i148 = add i32 %96, -1
  store i32 %dec4.i148, ptr %ring_free_dw.i, align 8
  %conv17 = zext i32 %10 to i64
  %add18 = add i64 %src_offset.addr.0152, %conv17
  %add20 = add i64 %dst_offset.addr.0151, %conv17
  %inc = add nuw nsw i32 %i.0154, 1
  %exitcond.not = icmp eq i32 %inc, %div
  br i1 %exitcond.not, label %radeon_ring_write.exit149.for.end_crit_edge, label %radeon_ring_write.exit149.for.body_crit_edge

radeon_ring_write.exit149.for.body_crit_edge:     ; preds = %radeon_ring_write.exit149
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

radeon_ring_write.exit149.for.end_crit_edge:      ; preds = %radeon_ring_write.exit149
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %radeon_ring_write.exit149.for.end_crit_edge, %if.end.for.end_crit_edge
  %97 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %idx, align 8
  %call22 = call i32 @radeon_fence_emit(ptr noundef %rdev, ptr noundef nonnull %fence, i32 noundef %98) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end26, label %if.then24

if.then24:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @radeon_ring_unlock_undo(ptr noundef %rdev, ptr noundef %arrayidx) #7
  call void @radeon_sync_free(ptr noundef %rdev, ptr noundef nonnull %sync, ptr noundef null) #7
  %99 = inttoptr i32 %call22 to ptr
  br label %cleanup

if.end26:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @radeon_ring_unlock_commit(ptr noundef %rdev, ptr noundef %arrayidx, i1 noundef zeroext false) #7
  %100 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %fence, align 4
  call void @radeon_sync_free(ptr noundef %rdev, ptr noundef nonnull %sync, ptr noundef %101) #7
  %102 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %fence, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then24, %if.then
  %retval.0 = phi ptr [ %6, %if.then ], [ %99, %if.then24 ], [ %103, %if.end26 ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %sync) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence) #7
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_sync_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_ring_lock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

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
declare dso_local void @radeon_ring_unlock_commit(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cik_sdma_ring_test(ptr noundef %rdev, ptr noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %call = tail call i32 @radeon_ring_lock(ptr noundef %rdev, ptr noundef %ring, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idx, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, i32 noundef %8, i32 noundef %call) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
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
  store volatile i32 2, ptr %arrayidx.i, align 4
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit74

if.then.i64:                                      ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i71)
  %cmp.i76 = icmp slt i32 %dec.i71, 1
  br i1 %cmp.i76, label %if.then.i77, label %radeon_ring_write.exit74.radeon_ring_write.exit87_crit_edge

radeon_ring_write.exit74.radeon_ring_write.exit87_crit_edge: ; preds = %radeon_ring_write.exit74
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit87

if.then.i77:                                      ; preds = %radeon_ring_write.exit74
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
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
  store volatile i32 %conv9, ptr %arrayidx.i81, align 4
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit100

if.then.i90:                                      ; preds = %radeon_ring_write.exit87
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
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
  store volatile i32 1, ptr %arrayidx.i94, align 4
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i97)
  %cmp.i102 = icmp slt i32 %dec.i97, 1
  br i1 %cmp.i102, label %if.then.i103, label %radeon_ring_write.exit100.radeon_ring_write.exit113_crit_edge

radeon_ring_write.exit100.radeon_ring_write.exit113_crit_edge: ; preds = %radeon_ring_write.exit100
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit113

if.then.i103:                                     ; preds = %radeon_ring_write.exit100
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit113

radeon_ring_write.exit113:                        ; preds = %if.then.i103, %radeon_ring_write.exit100.radeon_ring_write.exit113_crit_edge
  %59 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ring1.i, align 8
  %61 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %wptr.i, align 4
  %inc.i106 = add i32 %62, 1
  store i32 %inc.i106, ptr %wptr.i, align 4
  %arrayidx.i107 = getelementptr i32, ptr %60, i32 %62
  %63 = ptrtoint ptr %arrayidx.i107 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile i32 -559038737, ptr %arrayidx.i107, align 4
  %64 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ptr_mask.i, align 4
  %66 = load i32, ptr %wptr.i, align 4
  %and.i109 = and i32 %66, %65
  store i32 %and.i109, ptr %wptr.i, align 4
  %67 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %count_dw.i, align 4
  %dec.i110 = add i32 %68, -1
  store i32 %dec.i110, ptr %count_dw.i, align 4
  %69 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i112 = add i32 %70, -1
  store i32 %dec4.i112, ptr %ring_free_dw.i, align 8
  tail call void @radeon_ring_unlock_commit(ptr noundef %rdev, ptr noundef %ring, i1 noundef zeroext false) #7
  %usec_timeout = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %71 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %usec_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp10117.not = icmp eq i32 %72, 0
  br i1 %cmp10117.not, label %radeon_ring_write.exit113.if.else27_crit_edge, label %radeon_ring_write.exit113.for.body_crit_edge

radeon_ring_write.exit113.for.body_crit_edge:     ; preds = %radeon_ring_write.exit113
  br label %for.body

radeon_ring_write.exit113.if.else27_crit_edge:    ; preds = %radeon_ring_write.exit113
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else27

for.body:                                         ; preds = %if.end19.for.body_crit_edge, %radeon_ring_write.exit113.for.body_crit_edge
  %i.0118 = phi i32 [ %inc, %if.end19.for.body_crit_edge ], [ 0, %radeon_ring_write.exit113.for.body_crit_edge ]
  %73 = ptrtoint ptr %wb3 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %wb3, align 4
  %arrayidx15 = getelementptr i32, ptr %74, i32 %div61
  %75 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %arrayidx15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -272716322, i32 %76)
  %cmp16 = icmp eq i32 %76, -272716322
  br i1 %cmp16, label %do.end, label %if.end19

if.end19:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %77(i32 noundef 214748) #7
  %inc = add nuw i32 %i.0118, 1
  %78 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %usec_timeout, align 4
  %cmp10 = icmp ult i32 %inc, %79
  br i1 %cmp10, label %if.end19.for.body_crit_edge, label %for.cond.if.else27_crit_edge

if.end19.for.body_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %idx, align 8
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %81, i32 noundef %i.0118) #10
  br label %cleanup

for.cond.if.else27_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %82 = tail call i32 @llvm.bswap.i32(i32 %76)
  br label %if.else27

if.else27:                                        ; preds = %for.cond.if.else27_crit_edge, %radeon_ring_write.exit113.if.else27_crit_edge
  %tmp.0.lcssa = phi i32 [ %82, %for.cond.if.else27_crit_edge ], [ -889266515, %radeon_ring_write.exit113.if.else27_crit_edge ]
  %83 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %idx, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5, i32 noundef %84, i32 noundef %tmp.0.lcssa) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else27, %do.end, %if.then4
  %retval.0 = phi i32 [ %call, %if.then4 ], [ 0, %do.end ], [ -22, %if.else27 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cik_sdma_ib_test(ptr noundef %rdev, ptr nocapture noundef readonly %ring) local_unnamed_addr #0 align 64 {
entry:
  %ib = alloca %struct.radeon_ib, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %ib) #7
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
  %wb3 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 62, i32 1
  %5 = ptrtoint ptr %wb3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wb3, align 4
  %div86 = lshr exact i32 %., 2
  %arrayidx = getelementptr i32, ptr %6, i32 %div86
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 -1377894710, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idx, align 8
  %call = call i32 @radeon_ib_get(ptr noundef %rdev, i32 noundef %9, ptr noundef nonnull %ib, ptr noundef null, i32 noundef 256) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6, i32 noundef %call) #7
  br label %cleanup

if.end6:                                          ; preds = %entry
  %conv = zext i32 %. to i64
  %add = add i64 %4, %conv
  %ptr = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 3
  %10 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ptr, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %11, align 4
  %conv8 = trunc i64 %add to i32
  %13 = load ptr, ptr %ptr, align 8
  %arrayidx10 = getelementptr i32, ptr %13, i32 1
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv8, ptr %arrayidx10, align 4
  %shr = lshr i64 %add, 32
  %conv12 = trunc i64 %shr to i32
  %15 = load ptr, ptr %ptr, align 8
  %arrayidx14 = getelementptr i32, ptr %15, i32 2
  %16 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv12, ptr %arrayidx14, align 4
  %17 = load ptr, ptr %ptr, align 8
  %arrayidx16 = getelementptr i32, ptr %17, i32 3
  %18 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %arrayidx16, align 4
  %19 = load ptr, ptr %ptr, align 8
  %arrayidx18 = getelementptr i32, ptr %19, i32 4
  %20 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -559038737, ptr %arrayidx18, align 4
  %length_dw = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 1
  %21 = ptrtoint ptr %length_dw to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 5, ptr %length_dw, align 4
  %call19 = call i32 @radeon_ib_schedule(ptr noundef %rdev, ptr noundef nonnull %ib, ptr noundef null, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  call void @radeon_ib_free(ptr noundef %rdev, ptr noundef nonnull %ib) #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7, i32 noundef %call19) #7
  br label %cleanup

if.end22:                                         ; preds = %if.end6
  %fence = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 5
  %22 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fence, align 8
  %call.i = call i32 @jiffies_to_usecs(i32 noundef 1073741822) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, 1000000
  %spec.select.i = select i1 %cmp.i, i32 1073741822, i32 100
  %call24 = call i32 @radeon_fence_wait_timeout(ptr noundef %23, i1 noundef zeroext false, i32 noundef %spec.select.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.else28

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8, i32 noundef %call24) #7
  br label %cleanup

if.else28:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp29 = icmp eq i32 %call24, 0
  br i1 %cmp29, label %if.then31, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else28
  %usec_timeout = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %24 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %usec_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp3490.not = icmp eq i32 %25, 0
  br i1 %cmp3490.not, label %for.cond.preheader.if.else52_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.else52_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else52

if.then31:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9) #7
  br label %cleanup

for.body:                                         ; preds = %if.end43.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.091 = phi i32 [ %inc, %if.end43.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %26 = ptrtoint ptr %wb3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wb3, align 4
  %arrayidx39 = getelementptr i32, ptr %27, i32 %div86
  %28 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %arrayidx39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -272716322, i32 %29)
  %cmp40 = icmp eq i32 %29, -272716322
  br i1 %cmp40, label %do.end, label %if.end43

if.end43:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %30(i32 noundef 214748) #7
  %inc = add nuw i32 %i.091, 1
  %31 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %usec_timeout, align 4
  %cmp34 = icmp ult i32 %inc, %32
  br i1 %cmp34, label %if.end43.for.body_crit_edge, label %for.cond.if.else52_crit_edge

if.end43.for.body_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fence, align 8
  %ring50 = getelementptr inbounds %struct.radeon_fence, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %ring50 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ring50, align 8
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %36, i32 noundef %i.091) #10
  br label %if.end53

for.cond.if.else52_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %37 = call i32 @llvm.bswap.i32(i32 %29)
  br label %if.else52

if.else52:                                        ; preds = %for.cond.if.else52_crit_edge, %for.cond.preheader.if.else52_crit_edge
  %tmp.0.lcssa = phi i32 [ %37, %for.cond.if.else52_crit_edge ], [ -889266515, %for.cond.preheader.if.else52_crit_edge ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12, i32 noundef %tmp.0.lcssa) #7
  br label %if.end53

if.end53:                                         ; preds = %if.else52, %do.end
  %r.0 = phi i32 [ 0, %do.end ], [ -22, %if.else52 ]
  call void @radeon_ib_free(ptr noundef %rdev, ptr noundef nonnull %ib) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.then31, %if.then27, %if.then21, %if.then5
  %retval.0 = phi i32 [ %call, %if.then5 ], [ %call19, %if.then21 ], [ %call24, %if.then27 ], [ -110, %if.then31 ], [ %r.0, %if.end53 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %ib) #7
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
define dso_local zeroext i1 @cik_sdma_is_lockup(ptr noundef %rdev, ptr noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cik_gpu_check_soft_reset(ptr noundef %rdev) #7
  %idx = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 19
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  %. = select i1 %cmp, i32 4, i32 32
  %and = and i32 %., %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @radeon_ring_lockup_update(ptr noundef %rdev, ptr noundef %ring) #7
  br label %cleanup

if.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call zeroext i1 @radeon_ring_test_lockup(ptr noundef %rdev, ptr noundef %ring) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then1
  %retval.0 = phi i1 [ %call3, %if.end2 ], [ false, %if.then1 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cik_gpu_check_soft_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ring_lockup_update(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_ring_test_lockup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cik_sdma_vm_copy_pages(ptr nocapture noundef readnone %rdev, ptr nocapture noundef %ib, i64 noundef %pe, i64 noundef %src, i32 noundef %count) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not59 = icmp eq i32 %count, 0
  br i1 %tobool.not59, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %ptr = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 3
  %length_dw = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %pe.addr.062 = phi i64 [ %pe, %while.body.lr.ph ], [ %add, %while.body.while.body_crit_edge ]
  %count.addr.061 = phi i32 [ %count, %while.body.lr.ph ], [ %sub, %while.body.while.body_crit_edge ]
  %src.addr.060 = phi i64 [ %src, %while.body.lr.ph ], [ %add34, %while.body.while.body_crit_edge ]
  %mul = shl i32 %count.addr.061, 3
  %0 = tail call i32 @llvm.umin.i32(i32 %mul, i32 2097144)
  %1 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ptr, align 8
  %3 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %length_dw, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %length_dw, align 4
  %arrayidx = getelementptr i32, ptr %2, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %arrayidx, align 4
  %6 = load ptr, ptr %ptr, align 8
  %7 = load i32, ptr %length_dw, align 4
  %inc3 = add i32 %7, 1
  store i32 %inc3, ptr %length_dw, align 4
  %arrayidx4 = getelementptr i32, ptr %6, i32 %7
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %0, ptr %arrayidx4, align 4
  %9 = load ptr, ptr %ptr, align 8
  %10 = load i32, ptr %length_dw, align 4
  %inc7 = add i32 %10, 1
  store i32 %inc7, ptr %length_dw, align 4
  %arrayidx8 = getelementptr i32, ptr %9, i32 %10
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %arrayidx8, align 4
  %conv = trunc i64 %src.addr.060 to i32
  %12 = load ptr, ptr %ptr, align 8
  %13 = load i32, ptr %length_dw, align 4
  %inc11 = add i32 %13, 1
  store i32 %inc11, ptr %length_dw, align 4
  %arrayidx12 = getelementptr i32, ptr %12, i32 %13
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv, ptr %arrayidx12, align 4
  %shr = lshr i64 %src.addr.060, 32
  %conv14 = trunc i64 %shr to i32
  %15 = load ptr, ptr %ptr, align 8
  %16 = load i32, ptr %length_dw, align 4
  %inc17 = add i32 %16, 1
  store i32 %inc17, ptr %length_dw, align 4
  %arrayidx18 = getelementptr i32, ptr %15, i32 %16
  %17 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv14, ptr %arrayidx18, align 4
  %conv20 = trunc i64 %pe.addr.062 to i32
  %18 = load ptr, ptr %ptr, align 8
  %19 = load i32, ptr %length_dw, align 4
  %inc23 = add i32 %19, 1
  store i32 %inc23, ptr %length_dw, align 4
  %arrayidx24 = getelementptr i32, ptr %18, i32 %19
  %20 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv20, ptr %arrayidx24, align 4
  %shr25 = lshr i64 %pe.addr.062, 32
  %conv27 = trunc i64 %shr25 to i32
  %21 = load ptr, ptr %ptr, align 8
  %22 = load i32, ptr %length_dw, align 4
  %inc30 = add i32 %22, 1
  store i32 %inc30, ptr %length_dw, align 4
  %arrayidx31 = getelementptr i32, ptr %21, i32 %22
  %23 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv27, ptr %arrayidx31, align 4
  %conv32 = zext i32 %0 to i64
  %add = add i64 %pe.addr.062, %conv32
  %add34 = add i64 %src.addr.060, %conv32
  %div58 = lshr exact i32 %0, 3
  %sub = sub i32 %count.addr.061, %div58
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cik_sdma_vm_write_pages(ptr noundef %rdev, ptr nocapture noundef %ib, i64 noundef %pe, i64 noundef %addr, i32 noundef %count, i32 noundef %incr, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not76 = icmp eq i32 %count, 0
  br i1 %tobool.not76, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %ptr = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 3
  %length_dw = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 1
  %and = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  %and19 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %conv25 = zext i32 %incr to i64
  br label %while.body

while.cond.loopexit:                              ; preds = %if.end24.while.cond.loopexit_crit_edge, %while.body.while.cond.loopexit_crit_edge
  %count.addr.1.lcssa = phi i32 [ %count.addr.077, %while.body.while.cond.loopexit_crit_edge ], [ %dec, %if.end24.while.cond.loopexit_crit_edge ]
  %addr.addr.1.lcssa = phi i64 [ %addr.addr.078, %while.body.while.cond.loopexit_crit_edge ], [ %add, %if.end24.while.cond.loopexit_crit_edge ]
  %pe.addr.1.lcssa = phi i64 [ %pe.addr.079, %while.body.while.cond.loopexit_crit_edge ], [ %add39, %if.end24.while.cond.loopexit_crit_edge ]
  %tobool.not = icmp eq i32 %count.addr.1.lcssa, 0
  br i1 %tobool.not, label %while.cond.loopexit.while.end_crit_edge, label %while.cond.loopexit.while.body_crit_edge

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.cond.loopexit.while.end_crit_edge:          ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %while.body.lr.ph
  %pe.addr.079 = phi i64 [ %pe, %while.body.lr.ph ], [ %pe.addr.1.lcssa, %while.cond.loopexit.while.body_crit_edge ]
  %addr.addr.078 = phi i64 [ %addr, %while.body.lr.ph ], [ %addr.addr.1.lcssa, %while.cond.loopexit.while.body_crit_edge ]
  %count.addr.077 = phi i32 [ %count, %while.body.lr.ph ], [ %count.addr.1.lcssa, %while.cond.loopexit.while.body_crit_edge ]
  %mul = shl i32 %count.addr.077, 1
  %0 = tail call i32 @llvm.umin.i32(i32 %mul, i32 1048574)
  %1 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ptr, align 8
  %3 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %length_dw, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %length_dw, align 4
  %arrayidx = getelementptr i32, ptr %2, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %arrayidx, align 4
  %conv = trunc i64 %pe.addr.079 to i32
  %6 = load ptr, ptr %ptr, align 8
  %7 = load i32, ptr %length_dw, align 4
  %inc3 = add i32 %7, 1
  store i32 %inc3, ptr %length_dw, align 4
  %arrayidx4 = getelementptr i32, ptr %6, i32 %7
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %arrayidx4, align 4
  %shr = lshr i64 %pe.addr.079, 32
  %conv6 = trunc i64 %shr to i32
  %9 = load ptr, ptr %ptr, align 8
  %10 = load i32, ptr %length_dw, align 4
  %inc9 = add i32 %10, 1
  store i32 %inc9, ptr %length_dw, align 4
  %arrayidx10 = getelementptr i32, ptr %9, i32 %10
  %11 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv6, ptr %arrayidx10, align 4
  %12 = load ptr, ptr %ptr, align 8
  %13 = load i32, ptr %length_dw, align 4
  %inc13 = add i32 %13, 1
  store i32 %inc13, ptr %length_dw, align 4
  %arrayidx14 = getelementptr i32, ptr %12, i32 %13
  %14 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %0, ptr %arrayidx14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp15.not68 = icmp eq i32 %0, 0
  br i1 %cmp15.not68, label %while.body.while.cond.loopexit_crit_edge, label %while.body.for.body_crit_edge

while.body.for.body_crit_edge:                    ; preds = %while.body
  br label %for.body

while.body.while.cond.loopexit_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.loopexit

for.body:                                         ; preds = %if.end24.for.body_crit_edge, %while.body.for.body_crit_edge
  %ndw.073 = phi i32 [ %sub, %if.end24.for.body_crit_edge ], [ %0, %while.body.for.body_crit_edge ]
  %pe.addr.172 = phi i64 [ %add39, %if.end24.for.body_crit_edge ], [ %pe.addr.079, %while.body.for.body_crit_edge ]
  %addr.addr.170 = phi i64 [ %add, %if.end24.for.body_crit_edge ], [ %addr.addr.078, %while.body.for.body_crit_edge ]
  %count.addr.169 = phi i32 [ %dec, %if.end24.for.body_crit_edge ], [ %count.addr.077, %while.body.for.body_crit_edge ]
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i64 @radeon_vm_map_gart(ptr noundef %rdev, i64 noundef %addr.addr.170) #7
  %extract.t = trunc i64 %call to i32
  %extract = lshr i64 %call, 32
  %extract.t65 = trunc i64 %extract to i32
  br label %if.end24

if.else:                                          ; preds = %for.body
  br i1 %tobool20.not, label %if.else.if.end24_crit_edge, label %if.then21

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %extract.t64 = trunc i64 %addr.addr.170 to i32
  %extract66 = lshr i64 %addr.addr.170, 32
  %extract.t67 = trunc i64 %extract66 to i32
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.else.if.end24_crit_edge, %if.then18
  %value.0.off0 = phi i32 [ %extract.t, %if.then18 ], [ %extract.t64, %if.then21 ], [ 0, %if.else.if.end24_crit_edge ]
  %value.0.off32 = phi i32 [ %extract.t65, %if.then18 ], [ %extract.t67, %if.then21 ], [ 0, %if.else.if.end24_crit_edge ]
  %add = add i64 %addr.addr.170, %conv25
  %conv27 = or i32 %value.0.off0, %flags
  %15 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ptr, align 8
  %17 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %length_dw, align 4
  %inc30 = add i32 %18, 1
  store i32 %inc30, ptr %length_dw, align 4
  %arrayidx31 = getelementptr i32, ptr %16, i32 %18
  %19 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv27, ptr %arrayidx31, align 4
  %20 = load ptr, ptr %ptr, align 8
  %21 = load i32, ptr %length_dw, align 4
  %inc37 = add i32 %21, 1
  store i32 %inc37, ptr %length_dw, align 4
  %arrayidx38 = getelementptr i32, ptr %20, i32 %21
  %22 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %value.0.off32, ptr %arrayidx38, align 4
  %sub = add i32 %ndw.073, -2
  %dec = add i32 %count.addr.169, -1
  %add39 = add i64 %pe.addr.172, 8
  %cmp15.not = icmp eq i32 %sub, 0
  br i1 %cmp15.not, label %if.end24.while.cond.loopexit_crit_edge, label %if.end24.for.body_crit_edge

if.end24.for.body_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end24.while.cond.loopexit_crit_edge:           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.loopexit

while.end:                                        ; preds = %while.cond.loopexit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @radeon_vm_map_gart(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cik_sdma_vm_set_pages(ptr nocapture noundef readnone %rdev, ptr nocapture noundef %ib, i64 noundef %pe, i64 noundef %addr, i32 noundef %count, i32 noundef %incr, i32 noundef %flags) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not82 = icmp eq i32 %count, 0
  br i1 %tobool.not82, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %ptr = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 3
  %length_dw = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %pe.addr.085 = phi i64 [ %pe, %while.body.lr.ph ], [ %add, %while.body.while.body_crit_edge ]
  %addr.addr.084 = phi i64 [ %addr, %while.body.lr.ph ], [ %add49, %while.body.while.body_crit_edge ]
  %count.addr.083 = phi i32 [ %count, %while.body.lr.ph ], [ %sub, %while.body.while.body_crit_edge ]
  %0 = tail call i32 @llvm.umin.i32(i32 %count.addr.083, i32 524287)
  %extract.t = trunc i64 %addr.addr.084 to i32
  %extract = lshr i64 %addr.addr.084, 32
  %extract.t81 = trunc i64 %extract to i32
  %value.0.off0 = select i1 %tobool1.not, i32 0, i32 %extract.t
  %value.0.off32 = select i1 %tobool1.not, i32 0, i32 %extract.t81
  %1 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ptr, align 8
  %3 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %length_dw, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %length_dw, align 4
  %arrayidx = getelementptr i32, ptr %2, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 12, ptr %arrayidx, align 4
  %conv = trunc i64 %pe.addr.085 to i32
  %6 = load ptr, ptr %ptr, align 8
  %7 = load i32, ptr %length_dw, align 4
  %inc6 = add i32 %7, 1
  store i32 %inc6, ptr %length_dw, align 4
  %arrayidx7 = getelementptr i32, ptr %6, i32 %7
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %arrayidx7, align 4
  %shr = lshr i64 %pe.addr.085, 32
  %conv9 = trunc i64 %shr to i32
  %9 = load ptr, ptr %ptr, align 8
  %10 = load i32, ptr %length_dw, align 4
  %inc12 = add i32 %10, 1
  store i32 %inc12, ptr %length_dw, align 4
  %arrayidx13 = getelementptr i32, ptr %9, i32 %10
  %11 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv9, ptr %arrayidx13, align 4
  %12 = load ptr, ptr %ptr, align 8
  %13 = load i32, ptr %length_dw, align 4
  %inc16 = add i32 %13, 1
  store i32 %inc16, ptr %length_dw, align 4
  %arrayidx17 = getelementptr i32, ptr %12, i32 %13
  %14 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %flags, ptr %arrayidx17, align 4
  %15 = load ptr, ptr %ptr, align 8
  %16 = load i32, ptr %length_dw, align 4
  %inc20 = add i32 %16, 1
  store i32 %inc20, ptr %length_dw, align 4
  %arrayidx21 = getelementptr i32, ptr %15, i32 %16
  %17 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %arrayidx21, align 4
  %18 = load ptr, ptr %ptr, align 8
  %19 = load i32, ptr %length_dw, align 4
  %inc25 = add i32 %19, 1
  store i32 %inc25, ptr %length_dw, align 4
  %arrayidx26 = getelementptr i32, ptr %18, i32 %19
  %20 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %value.0.off0, ptr %arrayidx26, align 4
  %21 = load ptr, ptr %ptr, align 8
  %22 = load i32, ptr %length_dw, align 4
  %inc32 = add i32 %22, 1
  store i32 %inc32, ptr %length_dw, align 4
  %arrayidx33 = getelementptr i32, ptr %21, i32 %22
  %23 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %value.0.off32, ptr %arrayidx33, align 4
  %24 = load ptr, ptr %ptr, align 8
  %25 = load i32, ptr %length_dw, align 4
  %inc36 = add i32 %25, 1
  store i32 %inc36, ptr %length_dw, align 4
  %arrayidx37 = getelementptr i32, ptr %24, i32 %25
  %26 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %incr, ptr %arrayidx37, align 4
  %27 = load ptr, ptr %ptr, align 8
  %28 = load i32, ptr %length_dw, align 4
  %inc40 = add i32 %28, 1
  store i32 %inc40, ptr %length_dw, align 4
  %arrayidx41 = getelementptr i32, ptr %27, i32 %28
  %29 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %arrayidx41, align 4
  %30 = load ptr, ptr %ptr, align 8
  %31 = load i32, ptr %length_dw, align 4
  %inc44 = add i32 %31, 1
  store i32 %inc44, ptr %length_dw, align 4
  %arrayidx45 = getelementptr i32, ptr %30, i32 %31
  %32 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %0, ptr %arrayidx45, align 4
  %mul = shl nuw nsw i32 %0, 3
  %conv46 = zext i32 %mul to i64
  %add = add i64 %pe.addr.085, %conv46
  %mul47 = mul i32 %0, %incr
  %conv48 = zext i32 %mul47 to i64
  %add49 = add i64 %addr.addr.084, %conv48
  %sub = sub i32 %count.addr.083, %0
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cik_sdma_vm_pad_ib(ptr nocapture noundef %ib) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %length_dw = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 1
  %0 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length_dw, align 4
  %and4 = and i32 %1, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not5 = icmp eq i32 %and4, 0
  br i1 %tobool.not5, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %ptr = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %2 = phi i32 [ %1, %while.body.lr.ph ], [ %7, %while.body.while.body_crit_edge ]
  %3 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ptr, align 8
  %inc = add i32 %2, 1
  %5 = ptrtoint ptr %length_dw to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %inc, ptr %length_dw, align 4
  %arrayidx = getelementptr i32, ptr %4, i32 %2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %arrayidx, align 4
  %7 = load i32, ptr %length_dw, align 4
  %and = and i32 %7, 7
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cik_dma_vm_flush(ptr noundef %rdev, ptr noundef %ring, i32 noundef %vm_id, i64 noundef %pd_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %count_dw.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count_dw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp slt i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %entry.radeon_ring_write.exit_crit_edge

entry.radeon_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit

radeon_ring_write.exit:                           ; preds = %if.then.i, %entry.radeon_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 2
  %2 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring1.i, align 8
  %wptr.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 7
  %4 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wptr.i, align 4
  %inc.i = add i32 %5, 1
  store i32 %inc.i, ptr %wptr.i, align 4
  %arrayidx.i = getelementptr i32, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 -268435442, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 16
  %7 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ptr_mask.i, align 4
  %9 = load i32, ptr %wptr.i, align 4
  %and.i = and i32 %9, %8
  store i32 %and.i, ptr %wptr.i, align 4
  %10 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count_dw.i, align 4
  %dec.i = add i32 %11, -1
  store i32 %dec.i, ptr %count_dw.i, align 4
  %ring_free_dw.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 10
  %12 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i = add i32 %13, -1
  store i32 %dec4.i, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %vm_id)
  %cmp = icmp ult i32 %vm_id, 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %radeon_ring_write.exit
  %14 = add nuw nsw i32 %vm_id, 1359
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i45 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i45, label %if.then.i46, label %if.then.radeon_ring_write.exit56_crit_edge

if.then.radeon_ring_write.exit56_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit56

if.then.i46:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit56

radeon_ring_write.exit56:                         ; preds = %if.then.i46, %if.then.radeon_ring_write.exit56_crit_edge
  %15 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ring1.i, align 8
  %17 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wptr.i, align 4
  %inc.i49 = add i32 %18, 1
  store i32 %inc.i49, ptr %wptr.i, align 4
  %arrayidx.i50 = getelementptr i32, ptr %16, i32 %18
  %19 = ptrtoint ptr %arrayidx.i50 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 %14, ptr %arrayidx.i50, align 4
  br label %if.end

if.else:                                          ; preds = %radeon_ring_write.exit
  %20 = add i32 %vm_id, 1286
  %shr3 = and i32 %20, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i58 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i58, label %if.then.i59, label %if.else.radeon_ring_write.exit69_crit_edge

if.else.radeon_ring_write.exit69_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit69

if.then.i59:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit69

radeon_ring_write.exit69:                         ; preds = %if.then.i59, %if.else.radeon_ring_write.exit69_crit_edge
  %21 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ring1.i, align 8
  %23 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %wptr.i, align 4
  %inc.i62 = add i32 %24, 1
  store i32 %inc.i62, ptr %wptr.i, align 4
  %arrayidx.i63 = getelementptr i32, ptr %22, i32 %24
  %25 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 %shr3, ptr %arrayidx.i63, align 4
  br label %if.end

if.end:                                           ; preds = %radeon_ring_write.exit69, %radeon_ring_write.exit56
  %26 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ptr_mask.i, align 4
  %28 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %wptr.i, align 4
  %and.i65 = and i32 %29, %27
  store i32 %and.i65, ptr %wptr.i, align 4
  %30 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.in = load i32, ptr %count_dw.i, align 4
  %31 = add i32 %.in, -1
  store i32 %31, ptr %count_dw.i, align 4
  %32 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %storemerge.in = load i32, ptr %ring_free_dw.i, align 8
  %storemerge = add i32 %storemerge.in, -1
  store i32 %storemerge, ptr %ring_free_dw.i, align 8
  %shr4 = lshr i64 %pd_addr, 12
  %conv = trunc i64 %shr4 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp.i71 = icmp slt i32 %31, 1
  br i1 %cmp.i71, label %if.then.i72, label %if.end.radeon_ring_write.exit82_crit_edge

if.end.radeon_ring_write.exit82_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit82

if.then.i72:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit82

radeon_ring_write.exit82:                         ; preds = %if.then.i72, %if.end.radeon_ring_write.exit82_crit_edge
  %33 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ring1.i, align 8
  %35 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %wptr.i, align 4
  %inc.i75 = add i32 %36, 1
  store i32 %inc.i75, ptr %wptr.i, align 4
  %arrayidx.i76 = getelementptr i32, ptr %34, i32 %36
  %37 = ptrtoint ptr %arrayidx.i76 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 %conv, ptr %arrayidx.i76, align 4
  %38 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ptr_mask.i, align 4
  %40 = load i32, ptr %wptr.i, align 4
  %and.i78 = and i32 %40, %39
  store i32 %and.i78, ptr %wptr.i, align 4
  %41 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %count_dw.i, align 4
  %dec.i79 = add i32 %42, -1
  store i32 %dec.i79, ptr %count_dw.i, align 4
  %43 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i81 = add i32 %44, -1
  store i32 %dec4.i81, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i79)
  %cmp.i84 = icmp slt i32 %dec.i79, 1
  br i1 %cmp.i84, label %if.then.i85, label %radeon_ring_write.exit82.radeon_ring_write.exit95_crit_edge

radeon_ring_write.exit82.radeon_ring_write.exit95_crit_edge: ; preds = %radeon_ring_write.exit82
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit95

if.then.i85:                                      ; preds = %radeon_ring_write.exit82
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit95

radeon_ring_write.exit95:                         ; preds = %if.then.i85, %radeon_ring_write.exit82.radeon_ring_write.exit95_crit_edge
  %45 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ring1.i, align 8
  %47 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %wptr.i, align 4
  %inc.i88 = add i32 %48, 1
  store i32 %inc.i88, ptr %wptr.i, align 4
  %arrayidx.i89 = getelementptr i32, ptr %46, i32 %48
  %49 = ptrtoint ptr %arrayidx.i89 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile i32 -268435442, ptr %arrayidx.i89, align 4
  %50 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ptr_mask.i, align 4
  %52 = load i32, ptr %wptr.i, align 4
  %and.i91 = and i32 %52, %51
  store i32 %and.i91, ptr %wptr.i, align 4
  %53 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %count_dw.i, align 4
  %dec.i92 = add i32 %54, -1
  store i32 %dec.i92, ptr %count_dw.i, align 4
  %55 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i94 = add i32 %56, -1
  store i32 %dec4.i94, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i92)
  %cmp.i97 = icmp slt i32 %dec.i92, 1
  br i1 %cmp.i97, label %if.then.i98, label %radeon_ring_write.exit95.radeon_ring_write.exit108_crit_edge

radeon_ring_write.exit95.radeon_ring_write.exit108_crit_edge: ; preds = %radeon_ring_write.exit95
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit108

if.then.i98:                                      ; preds = %radeon_ring_write.exit95
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit108

radeon_ring_write.exit108:                        ; preds = %if.then.i98, %radeon_ring_write.exit95.radeon_ring_write.exit108_crit_edge
  %57 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ring1.i, align 8
  %59 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %wptr.i, align 4
  %inc.i101 = add i32 %60, 1
  store i32 %inc.i101, ptr %wptr.i, align 4
  %arrayidx.i102 = getelementptr i32, ptr %58, i32 %60
  %61 = ptrtoint ptr %arrayidx.i102 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 913, ptr %arrayidx.i102, align 4
  %62 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ptr_mask.i, align 4
  %64 = load i32, ptr %wptr.i, align 4
  %and.i104 = and i32 %64, %63
  store i32 %and.i104, ptr %wptr.i, align 4
  %65 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %count_dw.i, align 4
  %dec.i105 = add i32 %66, -1
  store i32 %dec.i105, ptr %count_dw.i, align 4
  %67 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i107 = add i32 %68, -1
  store i32 %dec4.i107, ptr %ring_free_dw.i, align 8
  %shl5 = shl i32 %vm_id, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i105)
  %cmp.i110 = icmp slt i32 %dec.i105, 1
  br i1 %cmp.i110, label %if.then.i111, label %radeon_ring_write.exit108.radeon_ring_write.exit121_crit_edge

radeon_ring_write.exit108.radeon_ring_write.exit121_crit_edge: ; preds = %radeon_ring_write.exit108
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit121

if.then.i111:                                     ; preds = %radeon_ring_write.exit108
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit121

radeon_ring_write.exit121:                        ; preds = %if.then.i111, %radeon_ring_write.exit108.radeon_ring_write.exit121_crit_edge
  %69 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ring1.i, align 8
  %71 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %wptr.i, align 4
  %inc.i114 = add i32 %72, 1
  store i32 %inc.i114, ptr %wptr.i, align 4
  %arrayidx.i115 = getelementptr i32, ptr %70, i32 %72
  %73 = ptrtoint ptr %arrayidx.i115 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile i32 %shl5, ptr %arrayidx.i115, align 4
  %74 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ptr_mask.i, align 4
  %76 = load i32, ptr %wptr.i, align 4
  %and.i117 = and i32 %76, %75
  store i32 %and.i117, ptr %wptr.i, align 4
  %77 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %count_dw.i, align 4
  %dec.i118 = add i32 %78, -1
  store i32 %dec.i118, ptr %count_dw.i, align 4
  %79 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i120 = add i32 %80, -1
  store i32 %dec4.i120, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i118)
  %cmp.i123 = icmp slt i32 %dec.i118, 1
  br i1 %cmp.i123, label %if.then.i124, label %radeon_ring_write.exit121.radeon_ring_write.exit134_crit_edge

radeon_ring_write.exit121.radeon_ring_write.exit134_crit_edge: ; preds = %radeon_ring_write.exit121
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit134

if.then.i124:                                     ; preds = %radeon_ring_write.exit121
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit134

radeon_ring_write.exit134:                        ; preds = %if.then.i124, %radeon_ring_write.exit121.radeon_ring_write.exit134_crit_edge
  %81 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ring1.i, align 8
  %83 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %wptr.i, align 4
  %inc.i127 = add i32 %84, 1
  store i32 %inc.i127, ptr %wptr.i, align 4
  %arrayidx.i128 = getelementptr i32, ptr %82, i32 %84
  %85 = ptrtoint ptr %arrayidx.i128 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile i32 -268435442, ptr %arrayidx.i128, align 4
  %86 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ptr_mask.i, align 4
  %88 = load i32, ptr %wptr.i, align 4
  %and.i130 = and i32 %88, %87
  store i32 %and.i130, ptr %wptr.i, align 4
  %89 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %count_dw.i, align 4
  %dec.i131 = add i32 %90, -1
  store i32 %dec.i131, ptr %count_dw.i, align 4
  %91 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i133 = add i32 %92, -1
  store i32 %dec4.i133, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i131)
  %cmp.i136 = icmp slt i32 %dec.i131, 1
  br i1 %cmp.i136, label %if.then.i137, label %radeon_ring_write.exit134.radeon_ring_write.exit147_crit_edge

radeon_ring_write.exit134.radeon_ring_write.exit147_crit_edge: ; preds = %radeon_ring_write.exit134
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit147

if.then.i137:                                     ; preds = %radeon_ring_write.exit134
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit147

radeon_ring_write.exit147:                        ; preds = %if.then.i137, %radeon_ring_write.exit134.radeon_ring_write.exit147_crit_edge
  %93 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ring1.i, align 8
  %95 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %wptr.i, align 4
  %inc.i140 = add i32 %96, 1
  store i32 %inc.i140, ptr %wptr.i, align 4
  %arrayidx.i141 = getelementptr i32, ptr %94, i32 %96
  %97 = ptrtoint ptr %arrayidx.i141 to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile i32 8970, ptr %arrayidx.i141, align 4
  %98 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %ptr_mask.i, align 4
  %100 = load i32, ptr %wptr.i, align 4
  %and.i143 = and i32 %100, %99
  store i32 %and.i143, ptr %wptr.i, align 4
  %101 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %count_dw.i, align 4
  %dec.i144 = add i32 %102, -1
  store i32 %dec.i144, ptr %count_dw.i, align 4
  %103 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i146 = add i32 %104, -1
  store i32 %dec4.i146, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i144)
  %cmp.i149 = icmp slt i32 %dec.i144, 1
  br i1 %cmp.i149, label %if.then.i150, label %radeon_ring_write.exit147.radeon_ring_write.exit160_crit_edge

radeon_ring_write.exit147.radeon_ring_write.exit160_crit_edge: ; preds = %radeon_ring_write.exit147
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit160

if.then.i150:                                     ; preds = %radeon_ring_write.exit147
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit160

radeon_ring_write.exit160:                        ; preds = %if.then.i150, %radeon_ring_write.exit147.radeon_ring_write.exit160_crit_edge
  %105 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ring1.i, align 8
  %107 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %wptr.i, align 4
  %inc.i153 = add i32 %108, 1
  store i32 %inc.i153, ptr %wptr.i, align 4
  %arrayidx.i154 = getelementptr i32, ptr %106, i32 %108
  %109 = ptrtoint ptr %arrayidx.i154 to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile i32 0, ptr %arrayidx.i154, align 4
  %110 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %ptr_mask.i, align 4
  %112 = load i32, ptr %wptr.i, align 4
  %and.i156 = and i32 %112, %111
  store i32 %and.i156, ptr %wptr.i, align 4
  %113 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %count_dw.i, align 4
  %dec.i157 = add i32 %114, -1
  store i32 %dec.i157, ptr %count_dw.i, align 4
  %115 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i159 = add i32 %116, -1
  store i32 %dec4.i159, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i157)
  %cmp.i162 = icmp slt i32 %dec.i157, 1
  br i1 %cmp.i162, label %if.then.i163, label %radeon_ring_write.exit160.radeon_ring_write.exit173_crit_edge

radeon_ring_write.exit160.radeon_ring_write.exit173_crit_edge: ; preds = %radeon_ring_write.exit160
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit173

if.then.i163:                                     ; preds = %radeon_ring_write.exit160
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit173

radeon_ring_write.exit173:                        ; preds = %if.then.i163, %radeon_ring_write.exit160.radeon_ring_write.exit173_crit_edge
  %117 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ring1.i, align 8
  %119 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %wptr.i, align 4
  %inc.i166 = add i32 %120, 1
  store i32 %inc.i166, ptr %wptr.i, align 4
  %arrayidx.i167 = getelementptr i32, ptr %118, i32 %120
  %121 = ptrtoint ptr %arrayidx.i167 to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile i32 -268435442, ptr %arrayidx.i167, align 4
  %122 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %ptr_mask.i, align 4
  %124 = load i32, ptr %wptr.i, align 4
  %and.i169 = and i32 %124, %123
  store i32 %and.i169, ptr %wptr.i, align 4
  %125 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %count_dw.i, align 4
  %dec.i170 = add i32 %126, -1
  store i32 %dec.i170, ptr %count_dw.i, align 4
  %127 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i172 = add i32 %128, -1
  store i32 %dec4.i172, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i170)
  %cmp.i175 = icmp slt i32 %dec.i170, 1
  br i1 %cmp.i175, label %if.then.i176, label %radeon_ring_write.exit173.radeon_ring_write.exit186_crit_edge

radeon_ring_write.exit173.radeon_ring_write.exit186_crit_edge: ; preds = %radeon_ring_write.exit173
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit186

if.then.i176:                                     ; preds = %radeon_ring_write.exit173
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit186

radeon_ring_write.exit186:                        ; preds = %if.then.i176, %radeon_ring_write.exit173.radeon_ring_write.exit186_crit_edge
  %129 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ring1.i, align 8
  %131 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %wptr.i, align 4
  %inc.i179 = add i32 %132, 1
  store i32 %inc.i179, ptr %wptr.i, align 4
  %arrayidx.i180 = getelementptr i32, ptr %130, i32 %132
  %133 = ptrtoint ptr %arrayidx.i180 to i32
  call void @__asan_store4_noabort(i32 %133)
  store volatile i32 8973, ptr %arrayidx.i180, align 4
  %134 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %ptr_mask.i, align 4
  %136 = load i32, ptr %wptr.i, align 4
  %and.i182 = and i32 %136, %135
  store i32 %and.i182, ptr %wptr.i, align 4
  %137 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %count_dw.i, align 4
  %dec.i183 = add i32 %138, -1
  store i32 %dec.i183, ptr %count_dw.i, align 4
  %139 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i185 = add i32 %140, -1
  store i32 %dec4.i185, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i183)
  %cmp.i188 = icmp slt i32 %dec.i183, 1
  br i1 %cmp.i188, label %if.then.i189, label %radeon_ring_write.exit186.radeon_ring_write.exit199_crit_edge

radeon_ring_write.exit186.radeon_ring_write.exit199_crit_edge: ; preds = %radeon_ring_write.exit186
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit199

if.then.i189:                                     ; preds = %radeon_ring_write.exit186
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit199

radeon_ring_write.exit199:                        ; preds = %if.then.i189, %radeon_ring_write.exit186.radeon_ring_write.exit199_crit_edge
  %141 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %ring1.i, align 8
  %143 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %wptr.i, align 4
  %inc.i192 = add i32 %144, 1
  store i32 %inc.i192, ptr %wptr.i, align 4
  %arrayidx.i193 = getelementptr i32, ptr %142, i32 %144
  %145 = ptrtoint ptr %arrayidx.i193 to i32
  call void @__asan_store4_noabort(i32 %145)
  store volatile i32 0, ptr %arrayidx.i193, align 4
  %146 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %ptr_mask.i, align 4
  %148 = load i32, ptr %wptr.i, align 4
  %and.i195 = and i32 %148, %147
  store i32 %and.i195, ptr %wptr.i, align 4
  %149 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %count_dw.i, align 4
  %dec.i196 = add i32 %150, -1
  store i32 %dec.i196, ptr %count_dw.i, align 4
  %151 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i198 = add i32 %152, -1
  store i32 %dec4.i198, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i196)
  %cmp.i201 = icmp slt i32 %dec.i196, 1
  br i1 %cmp.i201, label %if.then.i202, label %radeon_ring_write.exit199.radeon_ring_write.exit212_crit_edge

radeon_ring_write.exit199.radeon_ring_write.exit212_crit_edge: ; preds = %radeon_ring_write.exit199
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit212

if.then.i202:                                     ; preds = %radeon_ring_write.exit199
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit212

radeon_ring_write.exit212:                        ; preds = %if.then.i202, %radeon_ring_write.exit199.radeon_ring_write.exit212_crit_edge
  %153 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %ring1.i, align 8
  %155 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %wptr.i, align 4
  %inc.i205 = add i32 %156, 1
  store i32 %inc.i205, ptr %wptr.i, align 4
  %arrayidx.i206 = getelementptr i32, ptr %154, i32 %156
  %157 = ptrtoint ptr %arrayidx.i206 to i32
  call void @__asan_store4_noabort(i32 %157)
  store volatile i32 -268435442, ptr %arrayidx.i206, align 4
  %158 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %ptr_mask.i, align 4
  %160 = load i32, ptr %wptr.i, align 4
  %and.i208 = and i32 %160, %159
  store i32 %and.i208, ptr %wptr.i, align 4
  %161 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %count_dw.i, align 4
  %dec.i209 = add i32 %162, -1
  store i32 %dec.i209, ptr %count_dw.i, align 4
  %163 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i211 = add i32 %164, -1
  store i32 %dec4.i211, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i209)
  %cmp.i214 = icmp slt i32 %dec.i209, 1
  br i1 %cmp.i214, label %if.then.i215, label %radeon_ring_write.exit212.radeon_ring_write.exit225_crit_edge

radeon_ring_write.exit212.radeon_ring_write.exit225_crit_edge: ; preds = %radeon_ring_write.exit212
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit225

if.then.i215:                                     ; preds = %radeon_ring_write.exit212
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit225

radeon_ring_write.exit225:                        ; preds = %if.then.i215, %radeon_ring_write.exit212.radeon_ring_write.exit225_crit_edge
  %165 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %ring1.i, align 8
  %167 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %wptr.i, align 4
  %inc.i218 = add i32 %168, 1
  store i32 %inc.i218, ptr %wptr.i, align 4
  %arrayidx.i219 = getelementptr i32, ptr %166, i32 %168
  %169 = ptrtoint ptr %arrayidx.i219 to i32
  call void @__asan_store4_noabort(i32 %169)
  store volatile i32 8971, ptr %arrayidx.i219, align 4
  %170 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %ptr_mask.i, align 4
  %172 = load i32, ptr %wptr.i, align 4
  %and.i221 = and i32 %172, %171
  store i32 %and.i221, ptr %wptr.i, align 4
  %173 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %count_dw.i, align 4
  %dec.i222 = add i32 %174, -1
  store i32 %dec.i222, ptr %count_dw.i, align 4
  %175 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i224 = add i32 %176, -1
  store i32 %dec4.i224, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i222)
  %cmp.i227 = icmp slt i32 %dec.i222, 1
  br i1 %cmp.i227, label %if.then.i228, label %radeon_ring_write.exit225.radeon_ring_write.exit238_crit_edge

radeon_ring_write.exit225.radeon_ring_write.exit238_crit_edge: ; preds = %radeon_ring_write.exit225
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit238

if.then.i228:                                     ; preds = %radeon_ring_write.exit225
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit238

radeon_ring_write.exit238:                        ; preds = %if.then.i228, %radeon_ring_write.exit225.radeon_ring_write.exit238_crit_edge
  %177 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %ring1.i, align 8
  %179 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %wptr.i, align 4
  %inc.i231 = add i32 %180, 1
  store i32 %inc.i231, ptr %wptr.i, align 4
  %arrayidx.i232 = getelementptr i32, ptr %178, i32 %180
  %181 = ptrtoint ptr %arrayidx.i232 to i32
  call void @__asan_store4_noabort(i32 %181)
  store volatile i32 1, ptr %arrayidx.i232, align 4
  %182 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %ptr_mask.i, align 4
  %184 = load i32, ptr %wptr.i, align 4
  %and.i234 = and i32 %184, %183
  store i32 %and.i234, ptr %wptr.i, align 4
  %185 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %count_dw.i, align 4
  %dec.i235 = add i32 %186, -1
  store i32 %dec.i235, ptr %count_dw.i, align 4
  %187 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i237 = add i32 %188, -1
  store i32 %dec4.i237, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i235)
  %cmp.i240 = icmp slt i32 %dec.i235, 1
  br i1 %cmp.i240, label %if.then.i241, label %radeon_ring_write.exit238.radeon_ring_write.exit251_crit_edge

radeon_ring_write.exit238.radeon_ring_write.exit251_crit_edge: ; preds = %radeon_ring_write.exit238
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit251

if.then.i241:                                     ; preds = %radeon_ring_write.exit238
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit251

radeon_ring_write.exit251:                        ; preds = %if.then.i241, %radeon_ring_write.exit238.radeon_ring_write.exit251_crit_edge
  %189 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %ring1.i, align 8
  %191 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %wptr.i, align 4
  %inc.i244 = add i32 %192, 1
  store i32 %inc.i244, ptr %wptr.i, align 4
  %arrayidx.i245 = getelementptr i32, ptr %190, i32 %192
  %193 = ptrtoint ptr %arrayidx.i245 to i32
  call void @__asan_store4_noabort(i32 %193)
  store volatile i32 -268435442, ptr %arrayidx.i245, align 4
  %194 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %ptr_mask.i, align 4
  %196 = load i32, ptr %wptr.i, align 4
  %and.i247 = and i32 %196, %195
  store i32 %and.i247, ptr %wptr.i, align 4
  %197 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %count_dw.i, align 4
  %dec.i248 = add i32 %198, -1
  store i32 %dec.i248, ptr %count_dw.i, align 4
  %199 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i250 = add i32 %200, -1
  store i32 %dec4.i250, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i248)
  %cmp.i253 = icmp slt i32 %dec.i248, 1
  br i1 %cmp.i253, label %if.then.i254, label %radeon_ring_write.exit251.radeon_ring_write.exit264_crit_edge

radeon_ring_write.exit251.radeon_ring_write.exit264_crit_edge: ; preds = %radeon_ring_write.exit251
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit264

if.then.i254:                                     ; preds = %radeon_ring_write.exit251
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit264

radeon_ring_write.exit264:                        ; preds = %if.then.i254, %radeon_ring_write.exit251.radeon_ring_write.exit264_crit_edge
  %201 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %ring1.i, align 8
  %203 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %wptr.i, align 4
  %inc.i257 = add i32 %204, 1
  store i32 %inc.i257, ptr %wptr.i, align 4
  %arrayidx.i258 = getelementptr i32, ptr %202, i32 %204
  %205 = ptrtoint ptr %arrayidx.i258 to i32
  call void @__asan_store4_noabort(i32 %205)
  store volatile i32 8972, ptr %arrayidx.i258, align 4
  %206 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %ptr_mask.i, align 4
  %208 = load i32, ptr %wptr.i, align 4
  %and.i260 = and i32 %208, %207
  store i32 %and.i260, ptr %wptr.i, align 4
  %209 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %count_dw.i, align 4
  %dec.i261 = add i32 %210, -1
  store i32 %dec.i261, ptr %count_dw.i, align 4
  %211 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i263 = add i32 %212, -1
  store i32 %dec4.i263, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i261)
  %cmp.i266 = icmp slt i32 %dec.i261, 1
  br i1 %cmp.i266, label %if.then.i267, label %radeon_ring_write.exit264.radeon_ring_write.exit277_crit_edge

radeon_ring_write.exit264.radeon_ring_write.exit277_crit_edge: ; preds = %radeon_ring_write.exit264
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit277

if.then.i267:                                     ; preds = %radeon_ring_write.exit264
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit277

radeon_ring_write.exit277:                        ; preds = %if.then.i267, %radeon_ring_write.exit264.radeon_ring_write.exit277_crit_edge
  %213 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %ring1.i, align 8
  %215 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %wptr.i, align 4
  %inc.i270 = add i32 %216, 1
  store i32 %inc.i270, ptr %wptr.i, align 4
  %arrayidx.i271 = getelementptr i32, ptr %214, i32 %216
  %217 = ptrtoint ptr %arrayidx.i271 to i32
  call void @__asan_store4_noabort(i32 %217)
  store volatile i32 0, ptr %arrayidx.i271, align 4
  %218 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %ptr_mask.i, align 4
  %220 = load i32, ptr %wptr.i, align 4
  %and.i273 = and i32 %220, %219
  store i32 %and.i273, ptr %wptr.i, align 4
  %221 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %count_dw.i, align 4
  %dec.i274 = add i32 %222, -1
  store i32 %dec.i274, ptr %count_dw.i, align 4
  %223 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i276 = add i32 %224, -1
  store i32 %dec4.i276, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i274)
  %cmp.i279 = icmp slt i32 %dec.i274, 1
  br i1 %cmp.i279, label %if.then.i280, label %radeon_ring_write.exit277.radeon_ring_write.exit290_crit_edge

radeon_ring_write.exit277.radeon_ring_write.exit290_crit_edge: ; preds = %radeon_ring_write.exit277
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit290

if.then.i280:                                     ; preds = %radeon_ring_write.exit277
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit290

radeon_ring_write.exit290:                        ; preds = %if.then.i280, %radeon_ring_write.exit277.radeon_ring_write.exit290_crit_edge
  %225 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %ring1.i, align 8
  %227 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %wptr.i, align 4
  %inc.i283 = add i32 %228, 1
  store i32 %inc.i283, ptr %wptr.i, align 4
  %arrayidx.i284 = getelementptr i32, ptr %226, i32 %228
  %229 = ptrtoint ptr %arrayidx.i284 to i32
  call void @__asan_store4_noabort(i32 %229)
  store volatile i32 -268435442, ptr %arrayidx.i284, align 4
  %230 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %ptr_mask.i, align 4
  %232 = load i32, ptr %wptr.i, align 4
  %and.i286 = and i32 %232, %231
  store i32 %and.i286, ptr %wptr.i, align 4
  %233 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %count_dw.i, align 4
  %dec.i287 = add i32 %234, -1
  store i32 %dec.i287, ptr %count_dw.i, align 4
  %235 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i289 = add i32 %236, -1
  store i32 %dec4.i289, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i287)
  %cmp.i292 = icmp slt i32 %dec.i287, 1
  br i1 %cmp.i292, label %if.then.i293, label %radeon_ring_write.exit290.radeon_ring_write.exit303_crit_edge

radeon_ring_write.exit290.radeon_ring_write.exit303_crit_edge: ; preds = %radeon_ring_write.exit290
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit303

if.then.i293:                                     ; preds = %radeon_ring_write.exit290
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit303

radeon_ring_write.exit303:                        ; preds = %if.then.i293, %radeon_ring_write.exit290.radeon_ring_write.exit303_crit_edge
  %237 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %ring1.i, align 8
  %239 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %wptr.i, align 4
  %inc.i296 = add i32 %240, 1
  store i32 %inc.i296, ptr %wptr.i, align 4
  %arrayidx.i297 = getelementptr i32, ptr %238, i32 %240
  %241 = ptrtoint ptr %arrayidx.i297 to i32
  call void @__asan_store4_noabort(i32 %241)
  store volatile i32 913, ptr %arrayidx.i297, align 4
  %242 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %ptr_mask.i, align 4
  %244 = load i32, ptr %wptr.i, align 4
  %and.i299 = and i32 %244, %243
  store i32 %and.i299, ptr %wptr.i, align 4
  %245 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %count_dw.i, align 4
  %dec.i300 = add i32 %246, -1
  store i32 %dec.i300, ptr %count_dw.i, align 4
  %247 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i302 = add i32 %248, -1
  store i32 %dec4.i302, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i300)
  %cmp.i305 = icmp slt i32 %dec.i300, 1
  br i1 %cmp.i305, label %if.then.i306, label %radeon_ring_write.exit303.radeon_ring_write.exit316_crit_edge

radeon_ring_write.exit303.radeon_ring_write.exit316_crit_edge: ; preds = %radeon_ring_write.exit303
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit316

if.then.i306:                                     ; preds = %radeon_ring_write.exit303
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit316

radeon_ring_write.exit316:                        ; preds = %if.then.i306, %radeon_ring_write.exit303.radeon_ring_write.exit316_crit_edge
  %249 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %ring1.i, align 8
  %251 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %wptr.i, align 4
  %inc.i309 = add i32 %252, 1
  store i32 %inc.i309, ptr %wptr.i, align 4
  %arrayidx.i310 = getelementptr i32, ptr %250, i32 %252
  %253 = ptrtoint ptr %arrayidx.i310 to i32
  call void @__asan_store4_noabort(i32 %253)
  store volatile i32 0, ptr %arrayidx.i310, align 4
  %254 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %ptr_mask.i, align 4
  %256 = load i32, ptr %wptr.i, align 4
  %and.i312 = and i32 %256, %255
  store i32 %and.i312, ptr %wptr.i, align 4
  %257 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %count_dw.i, align 4
  %dec.i313 = add i32 %258, -1
  store i32 %dec.i313, ptr %count_dw.i, align 4
  %259 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i315 = add i32 %260, -1
  store i32 %dec4.i315, ptr %ring_free_dw.i, align 8
  %idx = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 19
  %261 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %idx, align 8
  tail call fastcc void @cik_sdma_hdp_flush_ring_emit(ptr noundef %rdev, i32 noundef %262)
  %263 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %count_dw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %264)
  %cmp.i318 = icmp slt i32 %264, 1
  br i1 %cmp.i318, label %if.then.i319, label %radeon_ring_write.exit316.radeon_ring_write.exit329_crit_edge

radeon_ring_write.exit316.radeon_ring_write.exit329_crit_edge: ; preds = %radeon_ring_write.exit316
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit329

if.then.i319:                                     ; preds = %radeon_ring_write.exit316
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit329

radeon_ring_write.exit329:                        ; preds = %if.then.i319, %radeon_ring_write.exit316.radeon_ring_write.exit329_crit_edge
  %265 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %ring1.i, align 8
  %267 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %wptr.i, align 4
  %inc.i322 = add i32 %268, 1
  store i32 %inc.i322, ptr %wptr.i, align 4
  %arrayidx.i323 = getelementptr i32, ptr %266, i32 %268
  %269 = ptrtoint ptr %arrayidx.i323 to i32
  call void @__asan_store4_noabort(i32 %269)
  store volatile i32 -268435442, ptr %arrayidx.i323, align 4
  %270 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %ptr_mask.i, align 4
  %272 = load i32, ptr %wptr.i, align 4
  %and.i325 = and i32 %272, %271
  store i32 %and.i325, ptr %wptr.i, align 4
  %273 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %count_dw.i, align 4
  %dec.i326 = add i32 %274, -1
  store i32 %dec.i326, ptr %count_dw.i, align 4
  %275 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i328 = add i32 %276, -1
  store i32 %dec4.i328, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i326)
  %cmp.i331 = icmp slt i32 %dec.i326, 1
  br i1 %cmp.i331, label %if.then.i332, label %radeon_ring_write.exit329.radeon_ring_write.exit342_crit_edge

radeon_ring_write.exit329.radeon_ring_write.exit342_crit_edge: ; preds = %radeon_ring_write.exit329
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit342

if.then.i332:                                     ; preds = %radeon_ring_write.exit329
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit342

radeon_ring_write.exit342:                        ; preds = %if.then.i332, %radeon_ring_write.exit329.radeon_ring_write.exit342_crit_edge
  %277 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %ring1.i, align 8
  %279 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %wptr.i, align 4
  %inc.i335 = add i32 %280, 1
  store i32 %inc.i335, ptr %wptr.i, align 4
  %arrayidx.i336 = getelementptr i32, ptr %278, i32 %280
  %281 = ptrtoint ptr %arrayidx.i336 to i32
  call void @__asan_store4_noabort(i32 %281)
  store volatile i32 1310, ptr %arrayidx.i336, align 4
  %282 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %ptr_mask.i, align 4
  %284 = load i32, ptr %wptr.i, align 4
  %and.i338 = and i32 %284, %283
  store i32 %and.i338, ptr %wptr.i, align 4
  %285 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %count_dw.i, align 4
  %dec.i339 = add i32 %286, -1
  store i32 %dec.i339, ptr %count_dw.i, align 4
  %287 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i341 = add i32 %288, -1
  store i32 %dec4.i341, ptr %ring_free_dw.i, align 8
  %shl6 = shl nuw i32 1, %vm_id
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i339)
  %cmp.i344 = icmp slt i32 %dec.i339, 1
  br i1 %cmp.i344, label %if.then.i345, label %radeon_ring_write.exit342.radeon_ring_write.exit355_crit_edge

radeon_ring_write.exit342.radeon_ring_write.exit355_crit_edge: ; preds = %radeon_ring_write.exit342
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit355

if.then.i345:                                     ; preds = %radeon_ring_write.exit342
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit355

radeon_ring_write.exit355:                        ; preds = %if.then.i345, %radeon_ring_write.exit342.radeon_ring_write.exit355_crit_edge
  %289 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %ring1.i, align 8
  %291 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %wptr.i, align 4
  %inc.i348 = add i32 %292, 1
  store i32 %inc.i348, ptr %wptr.i, align 4
  %arrayidx.i349 = getelementptr i32, ptr %290, i32 %292
  %293 = ptrtoint ptr %arrayidx.i349 to i32
  call void @__asan_store4_noabort(i32 %293)
  store volatile i32 %shl6, ptr %arrayidx.i349, align 4
  %294 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %ptr_mask.i, align 4
  %296 = load i32, ptr %wptr.i, align 4
  %and.i351 = and i32 %296, %295
  store i32 %and.i351, ptr %wptr.i, align 4
  %297 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %count_dw.i, align 4
  %dec.i352 = add i32 %298, -1
  store i32 %dec.i352, ptr %count_dw.i, align 4
  %299 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i354 = add i32 %300, -1
  store i32 %dec4.i354, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i352)
  %cmp.i357 = icmp slt i32 %dec.i352, 1
  br i1 %cmp.i357, label %if.then.i358, label %radeon_ring_write.exit355.radeon_ring_write.exit368_crit_edge

radeon_ring_write.exit355.radeon_ring_write.exit368_crit_edge: ; preds = %radeon_ring_write.exit355
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit368

if.then.i358:                                     ; preds = %radeon_ring_write.exit355
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit368

radeon_ring_write.exit368:                        ; preds = %if.then.i358, %radeon_ring_write.exit355.radeon_ring_write.exit368_crit_edge
  %301 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %ring1.i, align 8
  %303 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %wptr.i, align 4
  %inc.i361 = add i32 %304, 1
  store i32 %inc.i361, ptr %wptr.i, align 4
  %arrayidx.i362 = getelementptr i32, ptr %302, i32 %304
  %305 = ptrtoint ptr %arrayidx.i362 to i32
  call void @__asan_store4_noabort(i32 %305)
  store volatile i32 8, ptr %arrayidx.i362, align 4
  %306 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %ptr_mask.i, align 4
  %308 = load i32, ptr %wptr.i, align 4
  %and.i364 = and i32 %308, %307
  store i32 %and.i364, ptr %wptr.i, align 4
  %309 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %count_dw.i, align 4
  %dec.i365 = add i32 %310, -1
  store i32 %dec.i365, ptr %count_dw.i, align 4
  %311 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i367 = add i32 %312, -1
  store i32 %dec4.i367, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i365)
  %cmp.i370 = icmp slt i32 %dec.i365, 1
  br i1 %cmp.i370, label %if.then.i371, label %radeon_ring_write.exit368.radeon_ring_write.exit381_crit_edge

radeon_ring_write.exit368.radeon_ring_write.exit381_crit_edge: ; preds = %radeon_ring_write.exit368
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit381

if.then.i371:                                     ; preds = %radeon_ring_write.exit368
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit381

radeon_ring_write.exit381:                        ; preds = %if.then.i371, %radeon_ring_write.exit368.radeon_ring_write.exit381_crit_edge
  %313 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %ring1.i, align 8
  %315 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %wptr.i, align 4
  %inc.i374 = add i32 %316, 1
  store i32 %inc.i374, ptr %wptr.i, align 4
  %arrayidx.i375 = getelementptr i32, ptr %314, i32 %316
  %317 = ptrtoint ptr %arrayidx.i375 to i32
  call void @__asan_store4_noabort(i32 %317)
  store volatile i32 1310, ptr %arrayidx.i375, align 4
  %318 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %ptr_mask.i, align 4
  %320 = load i32, ptr %wptr.i, align 4
  %and.i377 = and i32 %320, %319
  store i32 %and.i377, ptr %wptr.i, align 4
  %321 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %count_dw.i, align 4
  %dec.i378 = add i32 %322, -1
  store i32 %dec.i378, ptr %count_dw.i, align 4
  %323 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i380 = add i32 %324, -1
  store i32 %dec4.i380, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i378)
  %cmp.i383 = icmp slt i32 %dec.i378, 1
  br i1 %cmp.i383, label %if.then.i384, label %radeon_ring_write.exit381.radeon_ring_write.exit394_crit_edge

radeon_ring_write.exit381.radeon_ring_write.exit394_crit_edge: ; preds = %radeon_ring_write.exit381
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit394

if.then.i384:                                     ; preds = %radeon_ring_write.exit381
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit394

radeon_ring_write.exit394:                        ; preds = %if.then.i384, %radeon_ring_write.exit381.radeon_ring_write.exit394_crit_edge
  %325 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %ring1.i, align 8
  %327 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %wptr.i, align 4
  %inc.i387 = add i32 %328, 1
  store i32 %inc.i387, ptr %wptr.i, align 4
  %arrayidx.i388 = getelementptr i32, ptr %326, i32 %328
  %329 = ptrtoint ptr %arrayidx.i388 to i32
  call void @__asan_store4_noabort(i32 %329)
  store volatile i32 0, ptr %arrayidx.i388, align 4
  %330 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %ptr_mask.i, align 4
  %332 = load i32, ptr %wptr.i, align 4
  %and.i390 = and i32 %332, %331
  store i32 %and.i390, ptr %wptr.i, align 4
  %333 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %count_dw.i, align 4
  %dec.i391 = add i32 %334, -1
  store i32 %dec.i391, ptr %count_dw.i, align 4
  %335 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i393 = add i32 %336, -1
  store i32 %dec4.i393, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i391)
  %cmp.i396 = icmp slt i32 %dec.i391, 1
  br i1 %cmp.i396, label %if.then.i397, label %radeon_ring_write.exit394.radeon_ring_write.exit407_crit_edge

radeon_ring_write.exit394.radeon_ring_write.exit407_crit_edge: ; preds = %radeon_ring_write.exit394
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit407

if.then.i397:                                     ; preds = %radeon_ring_write.exit394
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit407

radeon_ring_write.exit407:                        ; preds = %if.then.i397, %radeon_ring_write.exit394.radeon_ring_write.exit407_crit_edge
  %337 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %ring1.i, align 8
  %339 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %wptr.i, align 4
  %inc.i400 = add i32 %340, 1
  store i32 %inc.i400, ptr %wptr.i, align 4
  %arrayidx.i401 = getelementptr i32, ptr %338, i32 %340
  %341 = ptrtoint ptr %arrayidx.i401 to i32
  call void @__asan_store4_noabort(i32 %341)
  store volatile i32 0, ptr %arrayidx.i401, align 4
  %342 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %ptr_mask.i, align 4
  %344 = load i32, ptr %wptr.i, align 4
  %and.i403 = and i32 %344, %343
  store i32 %and.i403, ptr %wptr.i, align 4
  %345 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %count_dw.i, align 4
  %dec.i404 = add i32 %346, -1
  store i32 %dec.i404, ptr %count_dw.i, align 4
  %347 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i406 = add i32 %348, -1
  store i32 %dec4.i406, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i404)
  %cmp.i409 = icmp slt i32 %dec.i404, 1
  br i1 %cmp.i409, label %if.then.i410, label %radeon_ring_write.exit407.radeon_ring_write.exit420_crit_edge

radeon_ring_write.exit407.radeon_ring_write.exit420_crit_edge: ; preds = %radeon_ring_write.exit407
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit420

if.then.i410:                                     ; preds = %radeon_ring_write.exit407
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit420

radeon_ring_write.exit420:                        ; preds = %if.then.i410, %radeon_ring_write.exit407.radeon_ring_write.exit420_crit_edge
  %349 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %ring1.i, align 8
  %351 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %wptr.i, align 4
  %inc.i413 = add i32 %352, 1
  store i32 %inc.i413, ptr %wptr.i, align 4
  %arrayidx.i414 = getelementptr i32, ptr %350, i32 %352
  %353 = ptrtoint ptr %arrayidx.i414 to i32
  call void @__asan_store4_noabort(i32 %353)
  store volatile i32 0, ptr %arrayidx.i414, align 4
  %354 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %ptr_mask.i, align 4
  %356 = load i32, ptr %wptr.i, align 4
  %and.i416 = and i32 %356, %355
  store i32 %and.i416, ptr %wptr.i, align 4
  %357 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %count_dw.i, align 4
  %dec.i417 = add i32 %358, -1
  store i32 %dec.i417, ptr %count_dw.i, align 4
  %359 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i419 = add i32 %360, -1
  store i32 %dec4.i419, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i417)
  %cmp.i422 = icmp slt i32 %dec.i417, 1
  br i1 %cmp.i422, label %if.then.i423, label %radeon_ring_write.exit420.radeon_ring_write.exit433_crit_edge

radeon_ring_write.exit420.radeon_ring_write.exit433_crit_edge: ; preds = %radeon_ring_write.exit420
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit433

if.then.i423:                                     ; preds = %radeon_ring_write.exit420
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %radeon_ring_write.exit433

radeon_ring_write.exit433:                        ; preds = %if.then.i423, %radeon_ring_write.exit420.radeon_ring_write.exit433_crit_edge
  %361 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %ring1.i, align 8
  %363 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %wptr.i, align 4
  %inc.i426 = add i32 %364, 1
  store i32 %inc.i426, ptr %wptr.i, align 4
  %arrayidx.i427 = getelementptr i32, ptr %362, i32 %364
  %365 = ptrtoint ptr %arrayidx.i427 to i32
  call void @__asan_store4_noabort(i32 %365)
  store volatile i32 268369930, ptr %arrayidx.i427, align 4
  %366 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %ptr_mask.i, align 4
  %368 = load i32, ptr %wptr.i, align 4
  %and.i429 = and i32 %368, %367
  store i32 %and.i429, ptr %wptr.i, align 4
  %369 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %count_dw.i, align 4
  %dec.i430 = add i32 %370, -1
  store i32 %dec.i430, ptr %count_dw.i, align 4
  %371 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i432 = add i32 %372, -1
  store i32 %dec4.i432, ptr %ring_free_dw.i, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ttm_set_active_vram_size(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ucode_print_sdma_hdr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/cik_sdma.c", i32 597, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/cik_sdma.c", i32 665, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/radeon/cik_sdma.c", i32 683, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @cik_sdma_ring_test._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @cik_sdma_ring_test._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/radeon/cik_sdma.c", i32 685, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/radeon/cik_sdma.c", i32 722, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/radeon/cik_sdma.c", i32 736, i32 3}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/radeon/cik_sdma.c", i32 742, i32 3}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/radeon/cik_sdma.c", i32 745, i32 3}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/radeon/cik_sdma.c", i32 756, i32 3}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @cik_sdma_ib_test._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @cik_sdma_ib_test._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/radeon/cik_sdma.c", i32 758, i32 3}
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
!39 = !{i64 6713304}
!40 = !{i64 2157437550}
!41 = !{i64 2157437957}
!42 = !{i64 6712886}
!43 = !{i32 0, i32 33}
!44 = !{!"auto-init"}
