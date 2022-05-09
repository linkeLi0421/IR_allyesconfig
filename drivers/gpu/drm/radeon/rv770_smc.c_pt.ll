; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/rv770_smc.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/rv770_smc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.firmware = type { i32, ptr, ptr }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rv770_smc_int_vectors = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\08\10\08\10\08\10\08\10\08\10\08\10\08\10\08\10\08\10\08\10\08\10\08\10\08\10\08\10\08\10\08\10\08\10\08\10\08\10\08\10\08\10\08\10\08\10\08\10\08\10\0C\D7\08+\08\10\03Q\03Q\03Q\03Q", [32 x i8] zeroinitializer }, align 32
@rv730_smc_int_vectors = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\08\15\08\15\08\15\08\15\08\15\08\15\08\15\08\15\08\15\08\15\08\15\08\15\08\15\08\15\08\15\08\15\08\15\08\15\08\15\08\15\08\15\08\15\08\15\08\15\08\15\0C\BB\080\08\15\03V\03V\03V\03V", [32 x i8] zeroinitializer }, align 32
@rv710_smc_int_vectors = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\08\04\08\04\08\04\08\04\08\04\08\04\08\04\08\04\08\04\08\04\08\04\08\04\08\04\08\04\08\04\08\04\08\04\08\04\08\04\08\04\08\04\08\04\08\04\08\04\08\04\0C\CB\08\1F\08\04\03Q\03Q\03Q\03Q", [32 x i8] zeroinitializer }, align 32
@rv740_smc_int_vectors = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\08\10\08\10\08\10\08\10\08\10\08\10\08\10\08\10\08\10\08\10\08\10\08\10\08\10\08\10\08\10\08\10\08\10\08\10\08\10\08\10\08\10\08\10\08\10\08\10\08\10\0C\D7\08+\08\10\03Q\03Q\03Q\03Q", [32 x i8] zeroinitializer }, align 32
@cedar_smc_int_vectors = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\11\8B\0B \0B\05\04\F6\04\F6\04\F6\04\F6", [32 x i8] zeroinitializer }, align 32
@redwood_smc_int_vectors = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\11\8B\0B \0B\05\04\F6\04\F6\04\F6\04\F6", [32 x i8] zeroinitializer }, align 32
@juniper_smc_int_vectors = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\11\8B\0B \0B\05\04\F6\04\F6\04\F6\04\F6", [32 x i8] zeroinitializer }, align 32
@cypress_smc_int_vectors = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\0B\05\11\8B\0B \0B\05\04\F6\04\F6\04\F6\04\F6", [32 x i8] zeroinitializer }, align 32
@barts_smc_int_vectors = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\12\AA\0C/\15\F6\15\F6\05\0A\05\0A\05\0A", [32 x i8] zeroinitializer }, align 32
@turks_smc_int_vectors = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\12\AA\0C/\15\F6\15\F6\05\0A\05\0A\05\0A", [32 x i8] zeroinitializer }, align 32
@caicos_smc_int_vectors = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\0C\14\12\AA\0C/\15\F6\15\F6\05\0A\05\0A\05\0A", [32 x i8] zeroinitializer }, align 32
@cayman_smc_int_vectors = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\12\05\12\05\12\05\12\05\12\05\12\05\12\05\12\05\12\05\12\05\12\05\12\05\12\05\12\05\12\05\12\05\12\05\12\05\12\05\12\05\12\05\12\05\12\05\12\05\12\05\18\EA\12 \1C4\1C4\08r\08r\08r", [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unknown asic in smc ucode loader\0A\00", [62 x i8] zeroinitializer }, align 32
@switch.table.rv770_load_smc_ucode = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @rv770_smc_int_vectors, ptr @rv730_smc_int_vectors, ptr @rv710_smc_int_vectors, ptr @rv740_smc_int_vectors, ptr @cedar_smc_int_vectors, ptr @redwood_smc_int_vectors, ptr @juniper_smc_int_vectors, ptr @cypress_smc_int_vectors, ptr @cypress_smc_int_vectors, ptr @rv770_smc_int_vectors, ptr @rv770_smc_int_vectors, ptr @rv770_smc_int_vectors, ptr @barts_smc_int_vectors, ptr @turks_smc_int_vectors, ptr @caicos_smc_int_vectors, ptr @cayman_smc_int_vectors], [32 x i8] zeroinitializer }, align 32
@switch.table.rv770_load_smc_ucode.1 = internal constant { [16 x i16], [32 x i8] } { [16 x i16] [i16 16653, i16 16684, i16 16159, i16 16837, i16 23888, i16 24330, i16 24351, i16 25079, i16 25079, i16 16653, i16 16653, i16 16653, i16 24839, i16 24667, i16 24509, i16 31212], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [22 x i8] c"rv770_smc_int_vectors\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 37, i32 17 }
@___asan_gen_.5 = private unnamed_addr constant [22 x i8] c"rv730_smc_int_vectors\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 57, i32 17 }
@___asan_gen_.8 = private unnamed_addr constant [22 x i8] c"rv710_smc_int_vectors\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 77, i32 17 }
@___asan_gen_.11 = private unnamed_addr constant [22 x i8] c"rv740_smc_int_vectors\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 97, i32 17 }
@___asan_gen_.14 = private unnamed_addr constant [22 x i8] c"cedar_smc_int_vectors\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 117, i32 17 }
@___asan_gen_.17 = private unnamed_addr constant [24 x i8] c"redwood_smc_int_vectors\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 137, i32 17 }
@___asan_gen_.20 = private unnamed_addr constant [24 x i8] c"juniper_smc_int_vectors\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 157, i32 17 }
@___asan_gen_.23 = private unnamed_addr constant [24 x i8] c"cypress_smc_int_vectors\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 177, i32 17 }
@___asan_gen_.26 = private unnamed_addr constant [22 x i8] c"barts_smc_int_vectors\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 197, i32 17 }
@___asan_gen_.29 = private unnamed_addr constant [22 x i8] c"turks_smc_int_vectors\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 217, i32 17 }
@___asan_gen_.32 = private unnamed_addr constant [23 x i8] c"caicos_smc_int_vectors\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 237, i32 17 }
@___asan_gen_.35 = private unnamed_addr constant [23 x i8] c"cayman_smc_int_vectors\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 257, i32 17 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private constant [38 x i8] c"../drivers/gpu/drm/radeon/rv770_smc.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 583, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [34 x i8] c"switch.table.rv770_load_smc_ucode\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [36 x i8] c"switch.table.rv770_load_smc_ucode.1\00", align 1
@llvm.compiler.used = appending global [15 x ptr] [ptr @rv770_smc_int_vectors, ptr @rv730_smc_int_vectors, ptr @rv710_smc_int_vectors, ptr @rv740_smc_int_vectors, ptr @cedar_smc_int_vectors, ptr @redwood_smc_int_vectors, ptr @juniper_smc_int_vectors, ptr @cypress_smc_int_vectors, ptr @barts_smc_int_vectors, ptr @turks_smc_int_vectors, ptr @caicos_smc_int_vectors, ptr @cayman_smc_int_vectors, ptr @.str, ptr @switch.table.rv770_load_smc_ucode, ptr @switch.table.rv770_load_smc_ucode.1], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv770_smc_int_vectors to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv730_smc_int_vectors to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv710_smc_int_vectors to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv740_smc_int_vectors to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cedar_smc_int_vectors to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @redwood_smc_int_vectors to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @juniper_smc_int_vectors to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cypress_smc_int_vectors to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @barts_smc_int_vectors to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @turks_smc_int_vectors to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caicos_smc_int_vectors to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_smc_int_vectors to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rv770_load_smc_ucode to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rv770_load_smc_ucode.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv770_copy_bytes_to_smc(ptr noundef %rdev, i16 noundef zeroext %smc_start_address, ptr nocapture noundef readonly %src, i16 noundef zeroext %byte_count, i16 noundef zeroext %limit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %smc_start_address to i32
  %and = and i32 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv2 = zext i16 %byte_count to i32
  %add = add nuw nsw i32 %conv2, %conv
  %conv3 = zext i16 %limit to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv3)
  %cmp = icmp ugt i32 %add, %conv3
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %smc_idx_lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 20
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %smc_idx_lock) #3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %byte_count)
  %cmp14149 = icmp ugt i16 %byte_count, 3
  br i1 %cmp14149, label %while.body.lr.ph, label %if.end6.while.end_crit_edge

if.end6.while.end_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end6
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  br label %while.body

while.body:                                       ; preds = %if.end30.while.body_crit_edge, %while.body.lr.ph
  %addr.0152 = phi i16 [ %smc_start_address, %while.body.lr.ph ], [ %add34, %if.end30.while.body_crit_edge ]
  %src.addr.0151 = phi ptr [ %src, %while.body.lr.ph ], [ %add.ptr, %if.end30.while.body_crit_edge ]
  %byte_count.addr.0150 = phi i16 [ %byte_count, %while.body.lr.ph ], [ %sub, %if.end30.while.body_crit_edge ]
  %conv.i = zext i16 %addr.0152 to i32
  %and.i = and i32 %conv.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  %add.i = add nuw nsw i32 %conv.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv3)
  %cmp.i = icmp ugt i32 %add.i, %conv3
  %or.cond = select i1 %tobool.not.i, i1 true, i1 %cmp.i
  br i1 %or.cond, label %while.body.done_crit_edge, label %if.end30

while.body.done_crit_edge:                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %done

if.end30:                                         ; preds = %while.body
  %arrayidx24 = getelementptr i8, ptr %src.addr.0151, i32 3
  %0 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx24, align 1
  %arrayidx20 = getelementptr i8, ptr %src.addr.0151, i32 2
  %2 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx20, align 1
  %arrayidx17 = getelementptr i8, ptr %src.addr.0151, i32 1
  %4 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx17, align 1
  %6 = ptrtoint ptr %src.addr.0151 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %src.addr.0151, align 1
  %or.i = or i32 %conv.i, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  tail call void @arm_heavy_mb() #3
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i) #3
  %9 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %8) #3, !srcloc !36
  %conv16 = zext i8 %7 to i32
  %shl = shl nuw i32 %conv16, 24
  %conv18 = zext i8 %5 to i32
  %shl19 = shl nuw nsw i32 %conv18, 16
  %conv21 = zext i8 %3 to i32
  %shl22 = shl nuw nsw i32 %conv21, 8
  %conv25 = zext i8 %1 to i32
  %or = or i32 %shl22, %conv25
  %or23 = or i32 %or, %shl19
  %or26 = or i32 %or23, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  tail call void @arm_heavy_mb() #3
  %11 = tail call i32 @llvm.bswap.i32(i32 %or26) #3
  %12 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %11) #3, !srcloc !36
  %add.ptr = getelementptr i8, ptr %src.addr.0151, i32 4
  %sub = add i16 %byte_count.addr.0150, -4
  %add34 = add i16 %addr.0152, 4
  %cmp14 = icmp ugt i16 %sub, 3
  br i1 %cmp14, label %if.end30.while.body_crit_edge, label %while.end.loopexit

if.end30.while.body_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

while.end.loopexit:                               ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #5
  %.pre = zext i16 %sub to i32
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.end6.while.end_crit_edge
  %conv13.le.pre-phi = phi i32 [ %.pre, %while.end.loopexit ], [ %conv2, %if.end6.while.end_crit_edge ]
  %byte_count.addr.0.lcssa148 = phi i16 [ %sub, %while.end.loopexit ], [ %byte_count, %if.end6.while.end_crit_edge ]
  %src.addr.0.lcssa = phi ptr [ %add.ptr, %while.end.loopexit ], [ %src, %if.end6.while.end_crit_edge ]
  %addr.0.lcssa = phi i16 [ %add34, %while.end.loopexit ], [ %smc_start_address, %if.end6.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %byte_count.addr.0.lcssa148)
  %cmp37.not = icmp eq i16 %byte_count.addr.0.lcssa148, 0
  br i1 %cmp37.not, label %while.end.done_crit_edge, label %if.then39

while.end.done_crit_edge:                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %done

if.then39:                                        ; preds = %while.end
  %conv.i105 = zext i16 %addr.0.lcssa to i32
  %and.i106 = and i32 %conv.i105, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106)
  %tobool.not.i107 = icmp ne i32 %and.i106, 0
  %add.i108 = add nuw nsw i32 %conv.i105, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i108, i32 %conv3)
  %cmp.i110 = icmp ugt i32 %add.i108, %conv3
  %or.cond141 = select i1 %tobool.not.i107, i1 true, i1 %cmp.i110
  br i1 %or.cond141, label %if.then39.done_crit_edge, label %while.body51.preheader

if.then39.done_crit_edge:                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #5
  br label %done

while.body51.preheader:                           ; preds = %if.then39
  %or.i112 = or i32 %conv.i105, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  tail call void @arm_heavy_mb() #3
  %14 = tail call i32 @llvm.bswap.i32(i32 %or.i112) #3
  %rmmio.i.i113 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %15 = ptrtoint ptr %rmmio.i.i113 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i.i113, align 4
  %add.ptr.i.i114 = getelementptr i8, ptr %16, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i114, i32 %14) #3, !srcloc !36
  %17 = ptrtoint ptr %rmmio.i.i113 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmmio.i.i113, align 4
  %add.ptr.i119 = getelementptr i8, ptr %18, i32 516
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i119) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !38
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #3
  %.neg = mul nsw i32 %conv13.le.pre-phi, -8
  %mul = add nsw i32 %.neg, 32
  br label %while.body51

while.body51:                                     ; preds = %while.body51.while.body51_crit_edge, %while.body51.preheader
  %data.0159 = phi i32 [ %add54, %while.body51.while.body51_crit_edge ], [ 0, %while.body51.preheader ]
  %src.addr.1158 = phi ptr [ %incdec.ptr, %while.body51.while.body51_crit_edge ], [ %src.addr.0.lcssa, %while.body51.preheader ]
  %byte_count.addr.1157 = phi i16 [ %dec, %while.body51.while.body51_crit_edge ], [ %byte_count.addr.0.lcssa148, %while.body51.preheader ]
  %shl52 = shl i32 %data.0159, 8
  %incdec.ptr = getelementptr i8, ptr %src.addr.1158, i32 1
  %21 = ptrtoint ptr %src.addr.1158 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %src.addr.1158, align 1
  %conv53 = zext i8 %22 to i32
  %add54 = or i32 %shl52, %conv53
  %dec = add i16 %byte_count.addr.1157, -1
  %cmp49.not = icmp eq i16 %dec, 0
  br i1 %cmp49.not, label %if.end63, label %while.body51.while.body51_crit_edge

while.body51.while.body51_crit_edge:              ; preds = %while.body51
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body51

if.end63:                                         ; preds = %while.body51
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  tail call void @arm_heavy_mb() #3
  %23 = ptrtoint ptr %rmmio.i.i113 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rmmio.i.i113, align 4
  %add.ptr.i.i129 = getelementptr i8, ptr %24, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i129, i32 %14) #3, !srcloc !36
  %shl56 = shl i32 %add54, %mul
  %shl57 = shl nsw i32 -1, %mul
  %neg = xor i32 %shl57, -1
  %and58 = and i32 %20, %neg
  %or59 = or i32 %shl56, %and58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  tail call void @arm_heavy_mb() #3
  %25 = tail call i32 @llvm.bswap.i32(i32 %or59) #3
  %26 = ptrtoint ptr %rmmio.i.i113 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmmio.i.i113, align 4
  %add.ptr.i134 = getelementptr i8, ptr %27, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i134, i32 %25) #3, !srcloc !36
  br label %done

done:                                             ; preds = %if.end63, %if.then39.done_crit_edge, %while.end.done_crit_edge, %while.body.done_crit_edge
  %ret.1 = phi i32 [ 0, %if.end63 ], [ 0, %while.end.done_crit_edge ], [ -22, %if.then39.done_crit_edge ], [ -22, %while.body.done_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %smc_idx_lock, i32 noundef %call10) #3
  br label %cleanup

cleanup:                                          ; preds = %done, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %done ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv770_start_smc(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 520
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !38
  %3 = or i32 %2, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  tail call void @arm_heavy_mb() #3
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %5, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %3) #3, !srcloc !36
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv770_reset_smc(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 520
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !38
  %3 = and i32 %2, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  tail call void @arm_heavy_mb() #3
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %5, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %3) #3, !srcloc !36
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv770_stop_smc_clock(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 520
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !38
  %3 = and i32 %2, -524289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  tail call void @arm_heavy_mb() #3
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %5, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %3) #3, !srcloc !36
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv770_start_smc_clock(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 520
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !38
  %3 = or i32 %2, 524288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  tail call void @arm_heavy_mb() #3
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %5, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %3) #3, !srcloc !36
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rv770_is_smc_running(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 520
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !38
  %3 = and i32 %2, 17301504
  call void @__sanitizer_cov_trace_const_cmp4(i32 17301504, i32 %3)
  %.not = icmp eq i32 %3, 17301504
  ret i1 %.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rv770_send_msg_to_smc(ptr nocapture noundef readonly %rdev, i16 noundef zeroext %msg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 520
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !38
  %3 = and i32 %2, 17301504
  call void @__sanitizer_cov_trace_const_cmp4(i32 17301504, i32 %3)
  %.not.i = icmp eq i32 %3, 17301504
  br i1 %.not.i, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body:                                          ; preds = %entry
  %4 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 524
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !38
  %7 = and i32 %6, 16777215
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = and i16 %msg, 255
  %and2 = zext i16 %9 to i32
  %or = or i32 %8, %and2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  tail call void @arm_heavy_mb() #3
  %10 = tail call i32 @llvm.bswap.i32(i32 %or) #3
  %11 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i28 = getelementptr i8, ptr %12, i32 524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 %10) #3, !srcloc !36
  %usec_timeout = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %13 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %usec_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp33 = icmp sgt i32 %14, 0
  br i1 %cmp33, label %do.body.for.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

for.body:                                         ; preds = %if.end9.for.body_crit_edge, %do.body.for.body_crit_edge
  %i.034 = phi i32 [ %inc, %if.end9.for.body_crit_edge ], [ 0, %do.body.for.body_crit_edge ]
  %15 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i30 = getelementptr i8, ptr %16, i32 524
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !38
  %18 = and i32 %17, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp6.not = icmp eq i32 %18, 0
  br i1 %cmp6.not, label %if.end9, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.end9:                                          ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #3
  %inc = add nuw nsw i32 %i.034, 1
  %20 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %usec_timeout, align 4
  %cmp = icmp slt i32 %inc, %21
  br i1 %cmp, label %if.end9.for.body_crit_edge, label %if.end9.for.end_crit_edge

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %if.end9.for.end_crit_edge, %for.body.for.end_crit_edge, %do.body.for.end_crit_edge
  %22 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i32 = getelementptr i8, ptr %23, i32 524
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !38
  %25 = lshr i32 %24, 16
  %conv13 = trunc i32 %25 to i8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %conv13, %for.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rv770_wait_for_smc_inactive(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 520
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !38
  %3 = and i32 %2, 17301504
  call void @__sanitizer_cov_trace_const_cmp4(i32 17301504, i32 %3)
  %.not.i = icmp eq i32 %3, 17301504
  br i1 %.not.i, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %usec_timeout = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %4 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usec_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp9 = icmp sgt i32 %5, 0
  br i1 %cmp9, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %if.end3.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.010 = phi i32 [ %inc, %if.end3.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %6 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 520
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !38
  %9 = and i32 %8, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end3, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3:                                          ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #3
  %inc = add nuw nsw i32 %i.010, 1
  %11 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %usec_timeout, align 4
  %cmp = icmp slt i32 %inc, %12
  br i1 %cmp, label %if.end3.for.body_crit_edge, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3.for.body_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

cleanup:                                          ; preds = %if.end3.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i8 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv770_load_smc_ucode(ptr noundef %rdev, i16 noundef zeroext %limit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %smc_fw = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 79
  %0 = ptrtoint ptr %smc_fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smc_fw, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %smc_idx_lock.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 20
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %smc_idx_lock.i) #3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %limit)
  %cmp719.not.i = icmp eq i16 %limit, 0
  br i1 %cmp719.not.i, label %if.end.rv770_clear_smc_sram.exit_crit_edge, label %for.body.lr.ph.i

if.end.rv770_clear_smc_sram.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %rv770_clear_smc_sram.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %conv2.i.i = zext i16 %limit to i32
  %rmmio.i.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  br label %for.body.i

for.body.i:                                       ; preds = %rv770_set_smc_sram_address.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.020.i = phi i16 [ 0, %for.body.lr.ph.i ], [ %add.i, %rv770_set_smc_sram_address.exit.i.for.body.i_crit_edge ]
  %conv.i.i = zext i16 %i.020.i to i32
  %add.i.i = or i32 %conv.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %conv2.i.i)
  %cmp.i.i = icmp ugt i32 %add.i.i, %conv2.i.i
  br i1 %cmp.i.i, label %for.body.i.rv770_set_smc_sram_address.exit.i_crit_edge, label %if.end5.i.i

for.body.i.rv770_set_smc_sram_address.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %rv770_set_smc_sram_address.exit.i

if.end5.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %or.i.i = or i32 %conv.i.i, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  tail call void @arm_heavy_mb() #3
  %2 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #3
  %3 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %2) #3, !srcloc !36
  br label %rv770_set_smc_sram_address.exit.i

rv770_set_smc_sram_address.exit.i:                ; preds = %if.end5.i.i, %for.body.i.rv770_set_smc_sram_address.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  tail call void @arm_heavy_mb() #3
  %5 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #3, !srcloc !36
  %add.i = add i16 %i.020.i, 4
  %cmp7.i = icmp ult i16 %add.i, %limit
  br i1 %cmp7.i, label %rv770_set_smc_sram_address.exit.i.for.body.i_crit_edge, label %rv770_set_smc_sram_address.exit.i.rv770_clear_smc_sram.exit_crit_edge

rv770_set_smc_sram_address.exit.i.rv770_clear_smc_sram.exit_crit_edge: ; preds = %rv770_set_smc_sram_address.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %rv770_clear_smc_sram.exit

rv770_set_smc_sram_address.exit.i.for.body.i_crit_edge: ; preds = %rv770_set_smc_sram_address.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

rv770_clear_smc_sram.exit:                        ; preds = %rv770_set_smc_sram_address.exit.i.rv770_clear_smc_sram.exit_crit_edge, %if.end.rv770_clear_smc_sram.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %smc_idx_lock.i, i32 noundef %call2.i) #3
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %7 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %family, align 4
  %switch.tableidx = add i32 %8, -35
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %switch.tableidx)
  %9 = icmp ult i32 %switch.tableidx, 16
  br i1 %9, label %switch.hole_check, label %rv770_clear_smc_sram.exit.sw.default_crit_edge

rv770_clear_smc_sram.exit.sw.default_crit_edge:   ; preds = %rv770_clear_smc_sram.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.default

sw.default:                                       ; preds = %switch.hole_check.sw.default_crit_edge, %rv770_clear_smc_sram.exit.sw.default_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #3
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/radeon/rv770_smc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 584, 0\0A.popsection", ""() #3, !srcloc !39
  unreachable

switch.hole_check:                                ; preds = %rv770_clear_smc_sram.exit
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 -3585, %switch.maskindex
  %10 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %switch.lobit.not = icmp eq i16 %10, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.default_crit_edge, label %switch.lookup

switch.hole_check.sw.default_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.default

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [16 x ptr], ptr @switch.table.rv770_load_smc_ucode, i32 0, i32 %switch.tableidx
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %switch.gep43 = getelementptr inbounds [16 x i16], ptr @switch.table.rv770_load_smc_ucode.1, i32 0, i32 %switch.tableidx
  %12 = ptrtoint ptr %switch.gep43 to i32
  call void @__asan_load2_noabort(i32 %12)
  %switch.load44 = load i16, ptr %switch.gep43, align 2
  %13 = ptrtoint ptr %smc_fw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %smc_fw, align 8
  %data = getelementptr inbounds %struct.firmware, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %call = tail call i32 @rv770_copy_bytes_to_smc(ptr noundef %rdev, i16 noundef zeroext 256, ptr noundef %16, i16 noundef zeroext %switch.load44, i16 noundef zeroext %limit)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool16.not = icmp eq i32 %call, 0
  br i1 %tobool16.not, label %if.end18, label %switch.lookup.cleanup_crit_edge

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end18:                                         ; preds = %switch.lookup
  %add.ptr.i = getelementptr i8, ptr %switch.load, i32 24
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  br label %for.body.i42

for.body.i42:                                     ; preds = %for.body.i42.for.body.i42_crit_edge, %if.end18
  %i.01.i = phi i32 [ 0, %if.end18 ], [ %add21.i, %for.body.i42.for.body.i42_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %add.ptr.i, i32 %i.01.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %18 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %add.i39 = or i32 %i.01.i, 1
  %arrayidx8.i = getelementptr i8, ptr %add.ptr.i, i32 %add.i39
  %19 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %20 to i32
  %shl10.i = shl nuw nsw i32 %conv9.i, 16
  %or.i = or i32 %shl10.i, %shl.i
  %add11.i = or i32 %i.01.i, 2
  %arrayidx12.i = getelementptr i8, ptr %add.ptr.i, i32 %add11.i
  %21 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx12.i, align 1
  %conv13.i = zext i8 %22 to i32
  %shl14.i = shl nuw nsw i32 %conv13.i, 8
  %or15.i = or i32 %or.i, %shl14.i
  %add16.i = or i32 %i.01.i, 3
  %arrayidx17.i = getelementptr i8, ptr %add.ptr.i, i32 %add16.i
  %23 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx17.i, align 1
  %conv18.i = zext i8 %24 to i32
  %or19.i = or i32 %or15.i, %conv18.i
  %add20.i = add nuw nsw i32 %i.01.i, 536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  tail call void @arm_heavy_mb() #3
  %25 = tail call i32 @llvm.bswap.i32(i32 %or19.i) #3
  %26 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i40 = getelementptr i8, ptr %27, i32 %add20.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i40, i32 %25) #3, !srcloc !36
  %add21.i = add nuw nsw i32 %i.01.i, 4
  %cmp7.i41 = icmp ult i32 %i.01.i, 36
  br i1 %cmp7.i41, label %for.body.i42.for.body.i42_crit_edge, label %for.body.i42.cleanup_crit_edge

for.body.i42.cleanup_crit_edge:                   ; preds = %for.body.i42
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body.i42.for.body.i42_crit_edge:              ; preds = %for.body.i42
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i42

cleanup:                                          ; preds = %for.body.i42.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call, %switch.lookup.cleanup_crit_edge ], [ 0, %for.body.i42.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv770_read_smc_sram_dword(ptr noundef %rdev, i16 noundef zeroext %smc_address, ptr nocapture noundef writeonly %value, i16 noundef zeroext %limit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %smc_idx_lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 20
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %smc_idx_lock) #3
  %conv.i = zext i16 %smc_address to i32
  %and.i = and i32 %conv.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end.i:                                         ; preds = %entry
  %add.i = add nuw nsw i32 %conv.i, 3
  %conv2.i = zext i16 %limit to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv2.i)
  %cmp.i = icmp ugt i32 %add.i, %conv2.i
  br i1 %cmp.i, label %if.end.i.if.end_crit_edge, label %if.then

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %or.i = or i32 %conv.i, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  tail call void @arm_heavy_mb() #3
  %0 = tail call i32 @llvm.bswap.i32(i32 %or.i) #3
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %1 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %0) #3, !srcloc !36
  %3 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 516
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !38
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #3
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %value, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i16 = phi i32 [ 0, %if.then ], [ -22, %entry.if.end_crit_edge ], [ -22, %if.end.i.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %smc_idx_lock, i32 noundef %call2) #3
  ret i32 %retval.0.i16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv770_write_smc_sram_dword(ptr noundef %rdev, i16 noundef zeroext %smc_address, i32 noundef %value, i16 noundef zeroext %limit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %smc_idx_lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 20
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %smc_idx_lock) #3
  %conv.i = zext i16 %smc_address to i32
  %and.i = and i32 %conv.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end.i:                                         ; preds = %entry
  %add.i = add nuw nsw i32 %conv.i, 3
  %conv2.i = zext i16 %limit to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv2.i)
  %cmp.i = icmp ugt i32 %add.i, %conv2.i
  br i1 %cmp.i, label %if.end.i.if.end_crit_edge, label %if.then

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %or.i = or i32 %conv.i, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  tail call void @arm_heavy_mb() #3
  %0 = tail call i32 @llvm.bswap.i32(i32 %or.i) #3
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %1 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %0) #3, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  tail call void @arm_heavy_mb() #3
  %3 = tail call i32 @llvm.bswap.i32(i32 %value) #3
  %4 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #3, !srcloc !36
  br label %if.end

if.end:                                           ; preds = %if.then, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i15 = phi i32 [ 0, %if.then ], [ -22, %entry.if.end_crit_edge ], [ -22, %if.end.i.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %smc_idx_lock, i32 noundef %call2) #3
  ret i32 %retval.0.i15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/rv770_smc.c", i32 583, i32 3}
!2 = !{ptr @rv770_smc_int_vectors, !3, !"rv770_smc_int_vectors", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/rv770_smc.c", i32 37, i32 17}
!4 = !{ptr @rv730_smc_int_vectors, !5, !"rv730_smc_int_vectors", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/radeon/rv770_smc.c", i32 57, i32 17}
!6 = !{ptr @rv710_smc_int_vectors, !7, !"rv710_smc_int_vectors", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/radeon/rv770_smc.c", i32 77, i32 17}
!8 = !{ptr @rv740_smc_int_vectors, !9, !"rv740_smc_int_vectors", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/radeon/rv770_smc.c", i32 97, i32 17}
!10 = !{ptr @cedar_smc_int_vectors, !11, !"cedar_smc_int_vectors", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/radeon/rv770_smc.c", i32 117, i32 17}
!12 = !{ptr @redwood_smc_int_vectors, !13, !"redwood_smc_int_vectors", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/radeon/rv770_smc.c", i32 137, i32 17}
!14 = !{ptr @juniper_smc_int_vectors, !15, !"juniper_smc_int_vectors", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/radeon/rv770_smc.c", i32 157, i32 17}
!16 = !{ptr @cypress_smc_int_vectors, !17, !"cypress_smc_int_vectors", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/radeon/rv770_smc.c", i32 177, i32 17}
!18 = !{ptr @barts_smc_int_vectors, !19, !"barts_smc_int_vectors", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/radeon/rv770_smc.c", i32 197, i32 17}
!20 = !{ptr @turks_smc_int_vectors, !21, !"turks_smc_int_vectors", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/radeon/rv770_smc.c", i32 217, i32 17}
!22 = !{ptr @caicos_smc_int_vectors, !23, !"caicos_smc_int_vectors", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/radeon/rv770_smc.c", i32 237, i32 17}
!24 = !{ptr @cayman_smc_int_vectors, !25, !"cayman_smc_int_vectors", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/radeon/rv770_smc.c", i32 257, i32 17}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i64 2157425117}
!36 = !{i64 6700046}
!37 = !{i64 6700464}
!38 = !{i64 2157424710}
!39 = !{i64 2158138378, i64 2158138877, i64 2158138415, i64 2158138471, i64 2158138505, i64 2158138529, i64 2158138570, i64 2158138591, i64 2158138619, i64 2158138653}
