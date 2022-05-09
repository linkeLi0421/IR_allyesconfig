; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/rv6xx_dpm.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/rv6xx_dpm.c"
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
%struct.rv6xx_power_info = type { i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, %struct.rv6xx_pm_hw_state }
%struct.rv6xx_pm_hw_state = type { [3 x i32], [4 x i32], [4 x i16], [4 x i8], [3 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8], [3 x i8] }
%struct.radeon_ps = type { i32, i32, i32, i32, i32, i32, i32, i8, i32, ptr }
%struct.rv6xx_ps = type { %struct.rv6xx_pl, %struct.rv6xx_pl, %struct.rv6xx_pl }
%struct.rv6xx_pl = type { i32, i32, i16, i32 }
%struct.atom_clock_dividers = type { i32, %union.anon.108, i32, i8, i8, i32, i32, i32, i32 }
%union.anon.108 = type { %struct.anon.109 }
%struct.anon.109 = type { i32 }
%struct.radeon_atom_ss = type { i16, i16, i8, i16, i8, i8, i8, i16, i16 }
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
%struct.rv6xx_sclk_stepping = type { i32, i32 }
%struct.atom_context = type { ptr, %struct.mutex, %struct.mutex, ptr, i32, i32, ptr, i16, i32, [2 x i32], i16, i16, i8, i32, i32, i32, ptr, i32 }
%struct._ATOM_PPLIB_POWERPLAYTABLE = type <{ %struct._ATOM_COMMON_TABLE_HEADER, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i32, %struct._ATOM_PPLIB_THERMALCONTROLLER, i16, i16 }>
%struct._ATOM_COMMON_TABLE_HEADER = type { i16, i8, i8 }
%struct._ATOM_PPLIB_THERMALCONTROLLER = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct._ATOM_PPLIB_NONCLOCK_INFO = type <{ i16, i8, i8, i32, i8, i16, i32, i32, [5 x i8] }>
%struct._ATOM_PPLIB_STATE = type { i8, [1 x i8] }
%struct._ATOM_PPLIB_R600_CLOCK_INFO = type <{ i16, i8, i16, i8, i16, i16, i16, i32 }>

@radeon_aspm = external dso_local local_unnamed_addr global i32, align 4
@rv6xx_dpm_print_power_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 2015, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\09uvd    vclk: %d dclk: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rv6xx_dpm_print_power_state\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/gpu/drm/radeon/rv6xx_dpm.c\00", [61 x i8] zeroinitializer }, align 32
@rv6xx_dpm_print_power_state._entry_ptr = internal global ptr @rv6xx_dpm_print_power_state._entry, section ".printk_index", align 4
@rv6xx_dpm_print_power_state._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 2018, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\09\09power level 0    sclk: %u mclk: %u vddc: %u\0A\00", [49 x i8] zeroinitializer }, align 32
@rv6xx_dpm_print_power_state._entry_ptr.5 = internal global ptr @rv6xx_dpm_print_power_state._entry.3, section ".printk_index", align 4
@rv6xx_dpm_print_power_state._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 2021, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\09\09power level 1    sclk: %u mclk: %u vddc: %u\0A\00", [49 x i8] zeroinitializer }, align 32
@rv6xx_dpm_print_power_state._entry_ptr.8 = internal global ptr @rv6xx_dpm_print_power_state._entry.6, section ".printk_index", align 4
@rv6xx_dpm_print_power_state._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 2024, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\09\09power level 2    sclk: %u mclk: %u vddc: %u\0A\00", [49 x i8] zeroinitializer }, align 32
@rv6xx_dpm_print_power_state._entry_ptr.11 = internal global ptr @rv6xx_dpm_print_power_state._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid dpm profile %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"uvd    vclk: %d dclk: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"power level %d    sclk: %u mclk: %u vddc: %u\0A\00", [50 x i8] zeroinitializer }, align 32
@r600_utc = external dso_local local_unnamed_addr constant [15 x i32], align 4
@r600_dtc = external dso_local local_unnamed_addr constant [15 x i32], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 2015, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 2017, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 2020, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 2023, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 2039, i32 17 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 2047, i32 17 }
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private constant [38 x i8] c"../drivers/gpu/drm/radeon/rv6xx_dpm.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 2048, i32 17 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @rv6xx_dpm_print_power_state._entry, ptr @rv6xx_dpm_print_power_state._entry.3, ptr @rv6xx_dpm_print_power_state._entry.6, ptr @rv6xx_dpm_print_power_state._entry.9, ptr @rv6xx_dpm_print_power_state._entry_ptr, ptr @rv6xx_dpm_print_power_state._entry_ptr.11, ptr @rv6xx_dpm_print_power_state._entry_ptr.5, ptr @rv6xx_dpm_print_power_state._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv6xx_dpm_print_power_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv6xx_dpm_print_power_state._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv6xx_dpm_print_power_state._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv6xx_dpm_print_power_state._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv6xx_dpm_enable(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %boot_ps1 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 4
  %2 = ptrtoint ptr %boot_ps1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %boot_ps1, align 4
  %call2 = tail call zeroext i1 @r600_dynamicpm_enabled(ptr noundef %rdev) #9
  br i1 %call2, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %platform_caps = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 10
  %4 = ptrtoint ptr %platform_caps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %platform_caps, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %6 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 1560
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  %9 = or i32 %8, 1280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  tail call void @arm_heavy_mb() #9
  %10 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %11, i32 1560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i, i32 %9) #9, !srcloc !34
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %dynamic_ss = getelementptr inbounds %struct.rv6xx_power_info, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %dynamic_ss to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dynamic_ss, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool7.not = icmp eq i8 %13, 0
  br i1 %tobool7.not, label %if.end6.if.end9_crit_edge, label %if.then8

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %14 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 1560
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  %17 = or i32 %16, 8192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  tail call void @arm_heavy_mb() #9
  %18 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i17.i.i = getelementptr i8, ptr %19, i32 1560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i.i, i32 %17) #9, !srcloc !34
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6.if.end9_crit_edge
  %20 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv.i, align 4
  %mpll_ref_div.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %mpll_ref_div.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mpll_ref_div.i, align 4
  %mul.i = mul i32 %23, 100
  tail call void @r600_set_mpll_lock_time(ptr noundef %rdev, i32 noundef %mul.i) #9
  tail call void @r600_set_mpll_reset_time(ptr noundef %rdev, i32 noundef 150) #9
  %24 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv.i, align 4
  %spll.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 41, i32 3
  %26 = ptrtoint ptr %spll.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %spll.i, align 4
  %bsp.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %25, i32 0, i32 12
  %bsu.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %25, i32 0, i32 11
  tail call void @r600_calculate_u_and_p(i32 noundef 10000, i32 noundef %27, i32 noundef 16, ptr noundef %bsp.i, ptr noundef %bsu.i) #9
  %28 = ptrtoint ptr %bsu.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bsu.i, align 4
  %30 = ptrtoint ptr %bsp.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bsp.i, align 4
  tail call void @r600_set_bsp(ptr noundef %rdev, i32 noundef %29, i32 noundef %31) #9
  tail call void @r600_set_git(ptr noundef %rdev, i32 noundef 512) #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end9
  %i.07.i = phi i32 [ 0, %if.end9 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [15 x i32], ptr @r600_utc, i32 0, i32 %i.07.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr [15 x i32], ptr @r600_dtc, i32 0, i32 %i.07.i
  %34 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx1.i, align 4
  tail call void @r600_set_tc(ptr noundef %rdev, i32 noundef %i.07.i, i32 noundef %33, i32 noundef %35) #9
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 15
  br i1 %exitcond.not.i, label %rv6xx_program_tp.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

rv6xx_program_tp.exit:                            ; preds = %for.body.i
  tail call void @r600_select_td(ptr noundef %rdev, i32 noundef 0) #9
  tail call void @r600_set_tpu(ptr noundef %rdev, i32 noundef 0) #9
  tail call void @r600_set_tpc(ptr noundef %rdev, i32 noundef 512) #9
  tail call void @r600_set_sstu(ptr noundef %rdev, i32 noundef 0) #9
  tail call void @r600_set_sst(ptr noundef %rdev, i32 noundef 200) #9
  tail call void @r600_set_fctu(ptr noundef %rdev, i32 noundef 0) #9
  tail call void @r600_set_fct(ptr noundef %rdev, i32 noundef 1024) #9
  tail call void @r600_set_vddc3d_oorsu(ptr noundef %rdev, i32 noundef 0) #9
  tail call void @r600_set_vddc3d_oorphc(ptr noundef %rdev, i32 noundef 256) #9
  tail call void @r600_set_vddc3d_oorsdc(ptr noundef %rdev, i32 noundef 7) #9
  tail call void @r600_set_ctxcgtt3d_rphc(ptr noundef %rdev, i32 noundef 32) #9
  tail call void @r600_set_ctxcgtt3d_rsdc(ptr noundef %rdev, i32 noundef 64) #9
  tail call void @r600_vid_rt_set_vru(ptr noundef %rdev, i32 noundef 3) #9
  %voltage_response_time.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 11
  %36 = ptrtoint ptr %voltage_response_time.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %voltage_response_time.i, align 4
  %38 = ptrtoint ptr %spll.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %spll.i, align 4
  %div.i.i = udiv i32 %39, 100
  %mul.i.i = mul i32 %div.i.i, %37
  %sub.i.i.i = add i32 %mul.i.i, 63
  %div1.i.i.i = lshr i32 %sub.i.i.i, 6
  tail call void @r600_vid_rt_set_vrt(ptr noundef %rdev, i32 noundef %div1.i.i.i) #9
  %backbias_response_time.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 12
  %40 = ptrtoint ptr %backbias_response_time.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %backbias_response_time.i, align 4
  %42 = ptrtoint ptr %spll.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %spll.i, align 4
  %div.i11.i = udiv i32 %43, 100
  %rmmio.i.i.i73 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %44 = ptrtoint ptr %rmmio.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rmmio.i.i.i73, align 4
  %add.ptr.i.i.i74 = getelementptr i8, ptr %45, i32 1784
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i74) #9, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  %47 = and i32 %46, -256
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #9
  %mul.i12.i = shl i32 %41, 13
  %sub.i.i13.i = mul i32 %mul.i12.i, %div.i11.i
  %49 = add i32 %sub.i.i13.i, 16769024
  %shl.i.i = and i32 %49, -16777216
  %or.i.i = or i32 %48, %shl.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  tail call void @arm_heavy_mb() #9
  %50 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #9
  %51 = ptrtoint ptr %rmmio.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rmmio.i.i.i73, align 4
  %add.ptr.i8.i.i = getelementptr i8, ptr %52, i32 1784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i, i32 %50) #9, !srcloc !34
  tail call void @r600_vid_rt_set_ssu(ptr noundef %rdev, i32 noundef 3) #9
  %53 = ptrtoint ptr %rmmio.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rmmio.i.i.i73, align 4
  %add.ptr.i.i.i76 = getelementptr i8, ptr %54, i32 1548
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i76) #9, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  %56 = or i32 %55, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  tail call void @arm_heavy_mb() #9
  %57 = ptrtoint ptr %rmmio.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rmmio.i.i.i73, align 4
  %add.ptr.i7.i.i = getelementptr i8, ptr %58, i32 1548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i, i32 %56) #9, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  tail call void @arm_heavy_mb() #9
  %59 = ptrtoint ptr %rmmio.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rmmio.i.i.i73, align 4
  %add.ptr.i.i78 = getelementptr i8, ptr %60, i32 2012
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i78, i32 -251694321) #9, !srcloc !34
  %61 = ptrtoint ptr %rmmio.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rmmio.i.i.i73, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %62, i32 1572
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19.i) #9, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  %64 = or i32 %63, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  tail call void @arm_heavy_mb() #9
  %65 = ptrtoint ptr %rmmio.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rmmio.i.i.i73, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %66, i32 1572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i, i32 %64) #9, !srcloc !34
  %display_gap = getelementptr inbounds %struct.rv6xx_power_info, ptr %1, i32 0, i32 6
  %67 = ptrtoint ptr %display_gap to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %display_gap, align 2, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %cmp = icmp eq i8 %68, 0
  br i1 %cmp, label %if.then12, label %rv6xx_program_tp.exit.if.end13_crit_edge

rv6xx_program_tp.exit.if.end13_crit_edge:         ; preds = %rv6xx_program_tp.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then12:                                        ; preds = %rv6xx_program_tp.exit
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %rmmio.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rmmio.i.i.i73, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %70, i32 1572
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27.i) #9, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  %72 = and i32 %71, -3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  tail call void @arm_heavy_mb() #9
  %73 = ptrtoint ptr %rmmio.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rmmio.i.i.i73, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %74, i32 1572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31.i, i32 %72) #9, !srcloc !34
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %rv6xx_program_tp.exit.if.end13_crit_edge
  tail call void @r600_power_level_set_enter_index(ptr noundef %rdev, i32 noundef 1) #9
  tail call fastcc void @rv6xx_calculate_stepping_parameters(ptr noundef %rdev, ptr noundef %3)
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %1, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool14.not = icmp eq i8 %76, 0
  br i1 %tobool14.not, label %if.end13.if.end16_crit_edge, label %if.then15

if.end13.if.end16_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call fastcc i64 @rv6xx_get_master_voltage_mask(ptr noundef %rdev) #9
  tail call void @r600_voltage_control_enable_pins(ptr noundef %rdev, i64 noundef %call.i) #9
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end13.if.end16_crit_edge
  %ps_priv.i.i = getelementptr inbounds %struct.radeon_ps, ptr %3, i32 0, i32 9
  %77 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ps_priv.i.i, align 4
  %79 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %priv.i, align 4
  %low_sclk_index.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %80, i32 0, i32 15, i32 7
  %81 = ptrtoint ptr %low_sclk_index.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %low_sclk_index.i, align 1
  %low.i = getelementptr inbounds %struct.rv6xx_ps, ptr %78, i32 0, i32 2
  %82 = ptrtoint ptr %low.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %low.i, align 4
  %medium.i = getelementptr inbounds %struct.rv6xx_ps, ptr %78, i32 0, i32 1
  %84 = ptrtoint ptr %medium.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %medium.i, align 4
  %medium_sclk_index.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %80, i32 0, i32 15, i32 6
  tail call fastcc void @rv6xx_generate_steps(ptr noundef %rdev, i32 noundef %83, i32 noundef %85, i32 noundef 0, ptr noundef %medium_sclk_index.i) #9
  %86 = ptrtoint ptr %medium.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %medium.i, align 4
  %88 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %78, align 4
  %90 = ptrtoint ptr %medium_sclk_index.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %medium_sclk_index.i, align 4
  %conv.i = zext i8 %91 to i32
  %high_sclk_index.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %80, i32 0, i32 15, i32 5
  tail call fastcc void @rv6xx_generate_steps(ptr noundef %rdev, i32 noundef %87, i32 noundef %89, i32 noundef %conv.i, ptr noundef %high_sclk_index.i) #9
  tail call fastcc void @rv6xx_program_stepping_parameters_except_lowest_entry(ptr noundef %rdev)
  tail call fastcc void @rv6xx_program_stepping_parameters_lowest_entry(ptr noundef %rdev)
  %92 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %priv.i, align 4
  %low_vddc_index.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %93, i32 0, i32 15, i32 13
  %94 = ptrtoint ptr %low_vddc_index.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %low_vddc_index.i, align 1
  %conv.i81 = zext i8 %95 to i32
  tail call void @r600_power_level_set_voltage_index(ptr noundef %rdev, i32 noundef 0, i32 noundef %conv.i81) #9
  %low_mclk_index.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %93, i32 0, i32 15, i32 10
  %96 = ptrtoint ptr %low_mclk_index.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %low_mclk_index.i, align 4
  %conv2.i = zext i8 %97 to i32
  tail call void @r600_power_level_set_mem_clock_index(ptr noundef %rdev, i32 noundef 0, i32 noundef %conv2.i) #9
  %low_sclk_index.i82 = getelementptr inbounds %struct.rv6xx_power_info, ptr %93, i32 0, i32 15, i32 7
  %98 = ptrtoint ptr %low_sclk_index.i82 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %low_sclk_index.i82, align 1
  %conv4.i = zext i8 %99 to i32
  tail call void @r600_power_level_set_eng_clock_index(ptr noundef %rdev, i32 noundef 0, i32 noundef %conv4.i) #9
  tail call void @r600_power_level_set_watermark_id(ptr noundef %rdev, i32 noundef 0, i32 noundef 0) #9
  %pcie_gen2.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %93, i32 0, i32 15, i32 4
  %100 = ptrtoint ptr %pcie_gen2.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %pcie_gen2.i, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool.i = icmp ne i8 %101, 0
  tail call void @r600_power_level_set_pcie_gen2(ptr noundef %rdev, i32 noundef 0, i1 noundef zeroext %tobool.i) #9
  %102 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %priv.i, align 4
  %medium_vddc_index.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %103, i32 0, i32 15, i32 12
  %104 = ptrtoint ptr %medium_vddc_index.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %medium_vddc_index.i, align 2
  %conv.i84 = zext i8 %105 to i32
  tail call void @r600_power_level_set_voltage_index(ptr noundef %rdev, i32 noundef 1, i32 noundef %conv.i84) #9
  %medium_mclk_index.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %103, i32 0, i32 15, i32 9
  %106 = ptrtoint ptr %medium_mclk_index.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %medium_mclk_index.i, align 1
  %conv2.i85 = zext i8 %107 to i32
  tail call void @r600_power_level_set_mem_clock_index(ptr noundef %rdev, i32 noundef 1, i32 noundef %conv2.i85) #9
  %medium_sclk_index.i86 = getelementptr inbounds %struct.rv6xx_power_info, ptr %103, i32 0, i32 15, i32 6
  %108 = ptrtoint ptr %medium_sclk_index.i86 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %medium_sclk_index.i86, align 4
  %conv4.i87 = zext i8 %109 to i32
  tail call void @r600_power_level_set_eng_clock_index(ptr noundef %rdev, i32 noundef 1, i32 noundef %conv4.i87) #9
  tail call void @r600_power_level_set_watermark_id(ptr noundef %rdev, i32 noundef 1, i32 noundef 0) #9
  %arrayidx.i88 = getelementptr %struct.rv6xx_power_info, ptr %103, i32 0, i32 15, i32 4, i32 1
  %110 = ptrtoint ptr %arrayidx.i88 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx.i88, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool.i89 = icmp ne i8 %111, 0
  tail call void @r600_power_level_set_pcie_gen2(ptr noundef %rdev, i32 noundef 1, i1 noundef zeroext %tobool.i89) #9
  %112 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %priv.i, align 4
  %high_vddc_index.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %113, i32 0, i32 15, i32 11
  %114 = ptrtoint ptr %high_vddc_index.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %high_vddc_index.i, align 1
  %conv.i91 = zext i8 %115 to i32
  tail call void @r600_power_level_set_voltage_index(ptr noundef %rdev, i32 noundef 2, i32 noundef %conv.i91) #9
  %high_mclk_index.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %113, i32 0, i32 15, i32 8
  %116 = ptrtoint ptr %high_mclk_index.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %high_mclk_index.i, align 2
  %conv2.i92 = zext i8 %117 to i32
  tail call void @r600_power_level_set_mem_clock_index(ptr noundef %rdev, i32 noundef 2, i32 noundef %conv2.i92) #9
  %high_sclk_index.i93 = getelementptr inbounds %struct.rv6xx_power_info, ptr %113, i32 0, i32 15, i32 5
  %118 = ptrtoint ptr %high_sclk_index.i93 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %high_sclk_index.i93, align 1
  %conv4.i94 = zext i8 %119 to i32
  tail call void @r600_power_level_set_eng_clock_index(ptr noundef %rdev, i32 noundef 2, i32 noundef %conv4.i94) #9
  tail call void @r600_power_level_set_watermark_id(ptr noundef %rdev, i32 noundef 2, i32 noundef 1) #9
  %arrayidx.i95 = getelementptr %struct.rv6xx_power_info, ptr %113, i32 0, i32 15, i32 4, i32 2
  %120 = ptrtoint ptr %arrayidx.i95 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx.i95, align 2, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool.i96 = icmp ne i8 %121, 0
  tail call void @r600_power_level_set_pcie_gen2(ptr noundef %rdev, i32 noundef 2, i1 noundef zeroext %tobool.i96) #9
  tail call void @r600_set_vrc(ptr noundef %rdev, i32 noundef 49155) #9
  %122 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %priv.i, align 4
  %rp.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %123, i32 0, i32 15, i32 14
  %124 = ptrtoint ptr %rp.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %rp.i, align 4
  %conv.i98 = zext i8 %125 to i32
  %bsp.i99 = getelementptr inbounds %struct.rv6xx_power_info, ptr %123, i32 0, i32 12
  %126 = ptrtoint ptr %bsp.i99 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %bsp.i99, align 4
  %mul.i100 = mul i32 %127, %conv.i98
  %div.i = udiv i32 %mul.i100, 200
  %arrayidx3.i = getelementptr %struct.rv6xx_power_info, ptr %123, i32 0, i32 15, i32 14, i32 1
  %128 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i101 = zext i8 %129 to i32
  %mul6.i = mul i32 %127, %conv4.i101
  %div7.i = udiv i32 %mul6.i, 200
  %arrayidx9.i = getelementptr %struct.rv6xx_power_info, ptr %123, i32 0, i32 15, i32 15, i32 2
  %130 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx9.i, align 1
  %conv10.i = zext i8 %131 to i32
  %mul12.i = mul i32 %127, %conv10.i
  %div13.i = udiv i32 %mul12.i, 200
  %arrayidx16.i = getelementptr %struct.rv6xx_power_info, ptr %123, i32 0, i32 15, i32 15, i32 1
  %132 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %133 to i32
  %mul19.i = mul i32 %127, %conv17.i
  %div20.i = udiv i32 %mul19.i, 200
  tail call void @r600_set_at(ptr noundef %rdev, i32 noundef %div.i, i32 noundef %div7.i, i32 noundef %div13.i, i32 noundef %div20.i) #9
  tail call void @r600_power_level_enable(ptr noundef %rdev, i32 noundef 0, i1 noundef zeroext true) #9
  tail call void @r600_power_level_enable(ptr noundef %rdev, i32 noundef 1, i1 noundef zeroext true) #9
  tail call void @r600_power_level_enable(ptr noundef %rdev, i32 noundef 2, i1 noundef zeroext true) #9
  %134 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %priv.i, align 4
  %active_auto_throttle_sources.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %135, i32 0, i32 13
  %136 = ptrtoint ptr %active_auto_throttle_sources.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %active_auto_throttle_sources.i, align 4
  %and.i = and i32 %137, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end16.rv6xx_enable_auto_throttle_source.exit_crit_edge

if.end16.rv6xx_enable_auto_throttle_source.exit_crit_edge: ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv6xx_enable_auto_throttle_source.exit

if.then2.i:                                       ; preds = %if.end16
  %or.i = or i32 %137, 1
  %138 = ptrtoint ptr %active_auto_throttle_sources.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %or.i, ptr %active_auto_throttle_sources.i, align 4
  %139 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %priv.i, align 4
  %141 = zext i32 %or.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %141, ptr @__sancov_gen_cov_switch_values)
  switch i32 %or.i, label %do.body15.i.i [
    i32 3, label %sw.bb3.i.i
    i32 1, label %if.then2.i.do.body.i.i_crit_edge
  ]

if.then2.i.do.body.i.i_crit_edge:                 ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

sw.bb3.i.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %sw.bb3.i.i, %if.then2.i.do.body.i.i_crit_edge
  %dpm_event_src.0.ph.i.i = phi i32 [ 4, %sw.bb3.i.i ], [ 2, %if.then2.i.do.body.i.i_crit_edge ]
  %142 = ptrtoint ptr %rmmio.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %rmmio.i.i.i73, align 4
  %add.ptr.i.i.i104 = getelementptr i8, ptr %143, i32 2032
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i104) #9, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  %145 = and i32 %144, -117440513
  %146 = tail call i32 @llvm.bswap.i32(i32 %145) #9
  %or.i.i105 = or i32 %146, %dpm_event_src.0.ph.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  tail call void @arm_heavy_mb() #9
  %147 = tail call i32 @llvm.bswap.i32(i32 %or.i.i105) #9
  %148 = ptrtoint ptr %rmmio.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %rmmio.i.i.i73, align 4
  %add.ptr.i38.i.i = getelementptr i8, ptr %149, i32 2032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38.i.i, i32 %147) #9, !srcloc !34
  %thermal_protection.i.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %140, i32 0, i32 5
  %150 = ptrtoint ptr %thermal_protection.i.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %thermal_protection.i.i, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool6.not.i.i = icmp eq i8 %151, 0
  br i1 %tobool6.not.i.i, label %do.body.i.i.rv6xx_enable_auto_throttle_source.exit_crit_edge, label %do.body8.i.i

do.body.i.i.rv6xx_enable_auto_throttle_source.exit_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv6xx_enable_auto_throttle_source.exit

do.body8.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %152 = ptrtoint ptr %rmmio.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %rmmio.i.i.i73, align 4
  %add.ptr.i42.i.i = getelementptr i8, ptr %153, i32 1560
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42.i.i) #9, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  %155 = and i32 %154, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  tail call void @arm_heavy_mb() #9
  %156 = ptrtoint ptr %rmmio.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %rmmio.i.i.i73, align 4
  %add.ptr.i46.i.i = getelementptr i8, ptr %157, i32 1560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46.i.i, i32 %155) #9, !srcloc !34
  br label %rv6xx_enable_auto_throttle_source.exit

do.body15.i.i:                                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  %158 = ptrtoint ptr %rmmio.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %rmmio.i.i.i73, align 4
  %add.ptr.i50.i.i = getelementptr i8, ptr %159, i32 1560
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i50.i.i) #9, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  %161 = or i32 %160, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  tail call void @arm_heavy_mb() #9
  %162 = ptrtoint ptr %rmmio.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %rmmio.i.i.i73, align 4
  %add.ptr.i54.i.i = getelementptr i8, ptr %163, i32 1560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54.i.i, i32 %161) #9, !srcloc !34
  br label %rv6xx_enable_auto_throttle_source.exit

rv6xx_enable_auto_throttle_source.exit:           ; preds = %do.body15.i.i, %do.body8.i.i, %do.body.i.i.rv6xx_enable_auto_throttle_source.exit_crit_edge, %if.end16.rv6xx_enable_auto_throttle_source.exit_crit_edge
  tail call void @r600_start_dpm(ptr noundef %rdev) #9
  %164 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %1, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %165)
  %tobool18.not = icmp eq i8 %165, 0
  br i1 %tobool18.not, label %rv6xx_enable_auto_throttle_source.exit.if.end20_crit_edge, label %if.then19

rv6xx_enable_auto_throttle_source.exit.if.end20_crit_edge: ; preds = %rv6xx_enable_auto_throttle_source.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then19:                                        ; preds = %rv6xx_enable_auto_throttle_source.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = tail call fastcc i64 @rv6xx_get_master_voltage_mask(ptr noundef %rdev) #9
  tail call void @r600_voltage_control_deactivate_static_control(ptr noundef %rdev, i64 noundef %call1.i) #9
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %rv6xx_enable_auto_throttle_source.exit.if.end20_crit_edge
  %dynamic_pcie_gen2 = getelementptr inbounds %struct.rv6xx_power_info, ptr %1, i32 0, i32 4
  %166 = ptrtoint ptr %dynamic_pcie_gen2 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %dynamic_pcie_gen2, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %167)
  %tobool21.not = icmp eq i8 %167, 0
  br i1 %tobool21.not, label %if.end20.if.end23_crit_edge, label %if.then22

if.end20.if.end23_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then22:                                        ; preds = %if.end20
  %pciep_rreg.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 37
  %168 = ptrtoint ptr %pciep_rreg.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %pciep_rreg.i.i, align 4
  %call.i.i = tail call i32 %169(ptr noundef %rdev, i32 noundef 164) #9
  %and.i.i = and i32 %call.i.i, -12289
  %or.i.i106 = or i32 %and.i.i, 4096
  %pciep_wreg.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 38
  %170 = ptrtoint ptr %pciep_wreg.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %pciep_wreg.i.i, align 8
  tail call void %171(ptr noundef %rdev, i32 noundef 164, i32 noundef %or.i.i106) #9
  %172 = ptrtoint ptr %pciep_rreg.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %pciep_rreg.i.i, align 4
  %call.i10.i = tail call i32 %173(ptr noundef %rdev, i32 noundef 164) #9
  %174 = and i32 %call.i10.i, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 25165824, i32 %174)
  %.not.i.i = icmp eq i32 %174, 25165824
  br i1 %.not.i.i, label %if.then.i.i, label %if.then22.rv6xx_enable_dynamic_pcie_gen2.exit_crit_edge

if.then22.rv6xx_enable_dynamic_pcie_gen2.exit_crit_edge: ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv6xx_enable_dynamic_pcie_gen2.exit

if.then.i.i:                                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  %or.i11.i = or i32 %call.i10.i, 1
  %175 = ptrtoint ptr %pciep_wreg.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %pciep_wreg.i.i, align 8
  tail call void %176(ptr noundef %rdev, i32 noundef 164, i32 noundef %or.i11.i) #9
  br label %rv6xx_enable_dynamic_pcie_gen2.exit

rv6xx_enable_dynamic_pcie_gen2.exit:              ; preds = %if.then.i.i, %if.then22.rv6xx_enable_dynamic_pcie_gen2.exit_crit_edge
  tail call void @r600_enable_dynamic_pcie_gen2(ptr noundef %rdev, i1 noundef zeroext true) #9
  br label %if.end23

if.end23:                                         ; preds = %rv6xx_enable_dynamic_pcie_gen2.exit, %if.end20.if.end23_crit_edge
  %gfx_clock_gating = getelementptr inbounds %struct.rv6xx_power_info, ptr %1, i32 0, i32 7
  %177 = ptrtoint ptr %gfx_clock_gating to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %gfx_clock_gating, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %178)
  %tobool24.not = icmp eq i8 %178, 0
  br i1 %tobool24.not, label %if.end23.cleanup_crit_edge, label %if.then25

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @r600_gfx_clockgating_enable(ptr noundef %rdev, i1 noundef zeroext true) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end23.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then25 ], [ 0, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @r600_dynamicpm_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @rv6xx_calculate_stepping_parameters(ptr nocapture noundef readonly %rdev, ptr nocapture noundef readonly %new_ps) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ps_priv.i = getelementptr inbounds %struct.radeon_ps, ptr %new_ps, i32 0, i32 9
  %0 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps_priv.i, align 4
  %priv.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 4
  %low.i = getelementptr inbounds %struct.rv6xx_ps, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %low.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %low.i, align 4
  %hw.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %3, i32 0, i32 15
  %6 = ptrtoint ptr %hw.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %hw.i, align 4
  %medium.i = getelementptr inbounds %struct.rv6xx_ps, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %medium.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %medium.i, align 4
  %arrayidx4.i = getelementptr %struct.rv6xx_power_info, ptr %3, i32 0, i32 15, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx4.i, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  %arrayidx8.i = getelementptr %struct.rv6xx_power_info, ptr %3, i32 0, i32 15, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx8.i, align 4
  %low_sclk_index.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %3, i32 0, i32 15, i32 7
  %13 = ptrtoint ptr %low_sclk_index.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %low_sclk_index.i, align 1
  %medium_sclk_index.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %3, i32 0, i32 15, i32 6
  %14 = ptrtoint ptr %medium_sclk_index.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %medium_sclk_index.i, align 4
  %high_sclk_index.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %3, i32 0, i32 15, i32 5
  %15 = ptrtoint ptr %high_sclk_index.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %high_sclk_index.i, align 1
  %16 = load ptr, ptr %priv.i.i, align 4
  %mclk.i = getelementptr inbounds %struct.rv6xx_pl, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %mclk.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mclk.i, align 4
  %mclks.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %16, i32 0, i32 15, i32 1
  %arrayidx.i = getelementptr %struct.rv6xx_power_info, ptr %16, i32 0, i32 15, i32 1, i32 3
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx.i, align 4
  %20 = load i32, ptr %mclk.i, align 4
  %arrayidx5.i = getelementptr %struct.rv6xx_power_info, ptr %16, i32 0, i32 15, i32 1, i32 2
  %21 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %arrayidx5.i, align 4
  %mclk6.i = getelementptr inbounds %struct.rv6xx_ps, ptr %1, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %mclk6.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mclk6.i, align 4
  %arrayidx9.i = getelementptr %struct.rv6xx_power_info, ptr %16, i32 0, i32 15, i32 1, i32 1
  %24 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx9.i, align 4
  %mclk10.i = getelementptr inbounds %struct.rv6xx_ps, ptr %1, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %mclk10.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mclk10.i, align 4
  %27 = ptrtoint ptr %mclks.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %mclks.i, align 4
  %high_mclk_index.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %16, i32 0, i32 15, i32 8
  %28 = ptrtoint ptr %high_mclk_index.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 2, ptr %high_mclk_index.i, align 2
  %29 = load i32, ptr %mclk.i, align 4
  %30 = load i32, ptr %mclk6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %30)
  %cmp.i = icmp eq i32 %29, %30
  %spec.select.i = select i1 %cmp.i, i8 2, i8 1
  %31 = getelementptr inbounds %struct.rv6xx_power_info, ptr %16, i32 0, i32 15, i32 9
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %spec.select.i, ptr %31, align 1
  %33 = ptrtoint ptr %mclk6.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mclk6.i, align 4
  %35 = ptrtoint ptr %mclk10.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mclk10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp28.i = icmp eq i32 %34, %36
  %spec.select = select i1 %cmp28.i, i8 %spec.select.i, i8 0
  %37 = getelementptr inbounds %struct.rv6xx_power_info, ptr %16, i32 0, i32 15, i32 10
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %spec.select, ptr %37, align 4
  %39 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %priv.i.i, align 4
  %vddc.i = getelementptr inbounds %struct.rv6xx_pl, ptr %1, i32 0, i32 2
  %41 = ptrtoint ptr %vddc.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %vddc.i, align 4
  %vddc1.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %40, i32 0, i32 15, i32 2
  %arrayidx.i9 = getelementptr %struct.rv6xx_power_info, ptr %40, i32 0, i32 15, i32 2, i32 3
  %43 = ptrtoint ptr %arrayidx.i9 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %arrayidx.i9, align 2
  %44 = load i16, ptr %vddc.i, align 4
  %arrayidx6.i = getelementptr %struct.rv6xx_power_info, ptr %40, i32 0, i32 15, i32 2, i32 2
  %45 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %arrayidx6.i, align 4
  %vddc7.i = getelementptr inbounds %struct.rv6xx_ps, ptr %1, i32 0, i32 1, i32 2
  %46 = ptrtoint ptr %vddc7.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %vddc7.i, align 4
  %arrayidx10.i = getelementptr %struct.rv6xx_power_info, ptr %40, i32 0, i32 15, i32 2, i32 1
  %48 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %arrayidx10.i, align 2
  %vddc11.i = getelementptr inbounds %struct.rv6xx_ps, ptr %1, i32 0, i32 2, i32 2
  %49 = ptrtoint ptr %vddc11.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %vddc11.i, align 4
  %51 = ptrtoint ptr %vddc1.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %vddc1.i, align 4
  %flags.i = getelementptr inbounds %struct.rv6xx_pl, ptr %1, i32 0, i32 3
  %52 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags.i, align 4
  %backbias.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %40, i32 0, i32 15, i32 3
  %arrayidx18.i = getelementptr %struct.rv6xx_power_info, ptr %40, i32 0, i32 15, i32 3, i32 3
  %54 = trunc i32 %53 to i8
  %55 = lshr i8 %54, 2
  %56 = and i8 %55, 1
  %57 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %arrayidx18.i, align 1
  %58 = load i32, ptr %flags.i, align 4
  %arrayidx27.i = getelementptr %struct.rv6xx_power_info, ptr %40, i32 0, i32 15, i32 3, i32 2
  %59 = trunc i32 %58 to i8
  %60 = lshr i8 %59, 2
  %61 = and i8 %60, 1
  %62 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %arrayidx27.i, align 2
  %flags30.i = getelementptr inbounds %struct.rv6xx_ps, ptr %1, i32 0, i32 1, i32 3
  %63 = ptrtoint ptr %flags30.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags30.i, align 4
  %arrayidx37.i = getelementptr %struct.rv6xx_power_info, ptr %40, i32 0, i32 15, i32 3, i32 1
  %65 = trunc i32 %64 to i8
  %66 = lshr i8 %65, 2
  %67 = and i8 %66, 1
  %68 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %arrayidx37.i, align 1
  %flags40.i = getelementptr inbounds %struct.rv6xx_ps, ptr %1, i32 0, i32 2, i32 3
  %69 = ptrtoint ptr %flags40.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %flags40.i, align 4
  %71 = trunc i32 %70 to i8
  %72 = lshr i8 %71, 2
  %73 = and i8 %72, 1
  %74 = ptrtoint ptr %backbias.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %backbias.i, align 4
  %75 = load i32, ptr %flags.i, align 4
  %pcie_gen2.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %40, i32 0, i32 15, i32 4
  %arrayidx56.i = getelementptr %struct.rv6xx_power_info, ptr %40, i32 0, i32 15, i32 4, i32 2
  %76 = trunc i32 %75 to i8
  %77 = and i8 %76, 1
  %78 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %arrayidx56.i, align 2
  %79 = load i32, ptr %flags30.i, align 4
  %arrayidx66.i = getelementptr %struct.rv6xx_power_info, ptr %40, i32 0, i32 15, i32 4, i32 1
  %80 = trunc i32 %79 to i8
  %81 = and i8 %80, 1
  %82 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %arrayidx66.i, align 1
  %83 = load i32, ptr %flags40.i, align 4
  %84 = trunc i32 %83 to i8
  %85 = and i8 %84, 1
  %86 = ptrtoint ptr %pcie_gen2.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %pcie_gen2.i, align 4
  %high_vddc_index.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %40, i32 0, i32 15, i32 11
  %87 = ptrtoint ptr %high_vddc_index.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 2, ptr %high_vddc_index.i, align 1
  %88 = load i16, ptr %vddc.i, align 4
  %89 = load i16, ptr %vddc7.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %88, i16 %89)
  %cmp.i10 = icmp eq i16 %88, %89
  br i1 %cmp.i10, label %land.lhs.true.i, label %entry.if.else.i_crit_edge

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %entry
  %90 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %flags.i, align 4
  %92 = ptrtoint ptr %flags30.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %flags30.i, align 4
  %94 = xor i32 %93, %91
  %95 = and i32 %94, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp91.i = icmp eq i32 %95, 0
  br i1 %cmp91.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %land.lhs.true.i.if.end.i_crit_edge
  %.sink.i = phi i8 [ 1, %if.else.i ], [ 2, %land.lhs.true.i.if.end.i_crit_edge ]
  %medium_vddc_index97.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %40, i32 0, i32 15, i32 12
  %96 = ptrtoint ptr %medium_vddc_index97.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %.sink.i, ptr %medium_vddc_index97.i, align 2
  %97 = ptrtoint ptr %vddc7.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %vddc7.i, align 4
  %99 = ptrtoint ptr %vddc11.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %vddc11.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %98, i16 %100)
  %cmp104.i = icmp eq i16 %98, %100
  br i1 %cmp104.i, label %land.lhs.true106.i, label %if.end.i.if.else119.i_crit_edge

if.end.i.if.else119.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else119.i

land.lhs.true106.i:                               ; preds = %if.end.i
  %101 = ptrtoint ptr %flags30.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %flags30.i, align 4
  %103 = ptrtoint ptr %flags40.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %flags40.i, align 4
  %105 = xor i32 %104, %102
  %106 = and i32 %105, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp113.i = icmp eq i32 %106, 0
  br i1 %cmp113.i, label %if.then115.i, label %land.lhs.true106.i.if.else119.i_crit_edge

land.lhs.true106.i.if.else119.i_crit_edge:        ; preds = %land.lhs.true106.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else119.i

if.then115.i:                                     ; preds = %land.lhs.true106.i
  call void @__sanitizer_cov_trace_pc() #11
  %low_vddc_index.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %40, i32 0, i32 15, i32 13
  %107 = ptrtoint ptr %low_vddc_index.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %.sink.i, ptr %low_vddc_index.i, align 1
  br label %rv6xx_calculate_voltage_stepping_parameters.exit

if.else119.i:                                     ; preds = %land.lhs.true106.i.if.else119.i_crit_edge, %if.end.i.if.else119.i_crit_edge
  %108 = ptrtoint ptr %medium_vddc_index97.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %medium_vddc_index97.i, align 2
  br label %rv6xx_calculate_voltage_stepping_parameters.exit

rv6xx_calculate_voltage_stepping_parameters.exit: ; preds = %if.else119.i, %if.then115.i
  %109 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %priv.i.i, align 4
  %lp.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %110, i32 0, i32 15, i32 15
  %111 = ptrtoint ptr %lp.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %lp.i, align 1
  %arrayidx2.i = getelementptr %struct.rv6xx_power_info, ptr %110, i32 0, i32 15, i32 14, i32 2
  %112 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 100, ptr %arrayidx2.i, align 2
  %113 = ptrtoint ptr %low.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %low.i, align 4
  %115 = ptrtoint ptr %medium.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %medium.i, align 4
  %mul.i.i = mul i32 %116, 15
  %mul3.i.i = mul i32 %114, 75
  %add5.i.i = add i32 %mul.i.i, %mul3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add5.i.i)
  %cmp.not.i.i = icmp eq i32 %add5.i.i, 0
  br i1 %cmp.not.i.i, label %rv6xx_calculate_voltage_stepping_parameters.exit.rv6xx_calculate_t.exit.i_crit_edge, label %if.then.i.i

rv6xx_calculate_voltage_stepping_parameters.exit.rv6xx_calculate_t.exit.i_crit_edge: ; preds = %rv6xx_calculate_voltage_stepping_parameters.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv6xx_calculate_t.exit.i

if.then.i.i:                                      ; preds = %rv6xx_calculate_voltage_stepping_parameters.exit
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx6.i14 = getelementptr %struct.rv6xx_power_info, ptr %110, i32 0, i32 15, i32 15, i32 1
  %rp.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %110, i32 0, i32 15, i32 14
  %mul2.i.i = mul i32 %114, -20
  %add.i.i = add i32 %mul.i.i, %mul2.i.i
  %mul6.i.i = mul i32 %add.i.i, 15
  %div.i.i = sdiv i32 %mul6.i.i, %add5.i.i
  %117 = trunc i32 %div.i.i to i8
  %conv.i.i = sub i8 15, %117
  %118 = ptrtoint ptr %arrayidx6.i14 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv.i.i, ptr %arrayidx6.i14, align 1
  %mul8.i.i = mul i32 %add.i.i, 75
  %div9.i.i = sdiv i32 %mul8.i.i, %add5.i.i
  %119 = trunc i32 %div9.i.i to i8
  %conv11.i.i = add i8 %119, 25
  %120 = ptrtoint ptr %rp.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %conv11.i.i, ptr %rp.i, align 1
  br label %rv6xx_calculate_t.exit.i

rv6xx_calculate_t.exit.i:                         ; preds = %if.then.i.i, %rv6xx_calculate_voltage_stepping_parameters.exit.rv6xx_calculate_t.exit.i_crit_edge
  %121 = ptrtoint ptr %medium.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %medium.i, align 4
  %123 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %1, align 4
  %mul.i27.i = mul i32 %124, 40
  %mul3.i28.i = mul i32 %122, 35
  %add5.i29.i = add i32 %mul.i27.i, %mul3.i28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add5.i29.i)
  %cmp.not.i30.i = icmp eq i32 %add5.i29.i, 0
  br i1 %cmp.not.i30.i, label %rv6xx_calculate_t.exit.i.rv6xx_calculate_ap.exit_crit_edge, label %if.then.i41.i

rv6xx_calculate_t.exit.i.rv6xx_calculate_ap.exit_crit_edge: ; preds = %rv6xx_calculate_t.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv6xx_calculate_ap.exit

if.then.i41.i:                                    ; preds = %rv6xx_calculate_t.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx18.i15 = getelementptr %struct.rv6xx_power_info, ptr %110, i32 0, i32 15, i32 14, i32 1
  %arrayidx15.i = getelementptr %struct.rv6xx_power_info, ptr %110, i32 0, i32 15, i32 15, i32 2
  %mul2.i31.i = mul i32 %122, -60
  %add.i32.i = add i32 %mul.i27.i, %mul2.i31.i
  %mul6.i33.i = mul i32 %add.i32.i, 40
  %div.i34.i = sdiv i32 %mul6.i33.i, %add5.i29.i
  %125 = trunc i32 %div.i34.i to i8
  %conv.i36.i = sub i8 40, %125
  %126 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %conv.i36.i, ptr %arrayidx15.i, align 1
  %mul8.i37.i = mul i32 %add.i32.i, 35
  %div9.i38.i = sdiv i32 %mul8.i37.i, %add5.i29.i
  %127 = trunc i32 %div9.i38.i to i8
  %conv11.i40.i = add i8 %127, 65
  %128 = ptrtoint ptr %arrayidx18.i15 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %conv11.i40.i, ptr %arrayidx18.i15, align 1
  br label %rv6xx_calculate_ap.exit

rv6xx_calculate_ap.exit:                          ; preds = %if.then.i41.i, %rv6xx_calculate_t.exit.i.rv6xx_calculate_ap.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rv6xx_program_stepping_parameters_except_lowest_entry(ptr noundef %rdev) unnamed_addr #0 align 64 {
entry:
  %req_dividers.i61.i = alloca %struct.atom_clock_dividers, align 4
  %req_dividers.i46.i = alloca %struct.atom_clock_dividers, align 4
  %req_dividers.i.i = alloca %struct.atom_clock_dividers, align 4
  %ss.i = alloca %struct.radeon_atom_ss, align 2
  %mask.i.i = alloca i32, align 4
  %set_pins.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %arrayidx.i = getelementptr %struct.rv6xx_power_info, ptr %1, i32 0, i32 15, i32 1, i32 1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.for.inc.i_crit_edge, label %if.then.i

entry.for.inc.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @rv6xx_program_mclk_stepping_entry(ptr noundef %rdev, i32 noundef 1, i32 noundef %3) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %entry.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.rv6xx_power_info, ptr %1, i32 0, i32 15, i32 1, i32 2
  %4 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.1.i = icmp eq i32 %5, 0
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @rv6xx_program_mclk_stepping_entry(ptr noundef %rdev, i32 noundef 2, i32 noundef %5) #9
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.rv6xx_power_info, ptr %1, i32 0, i32 15, i32 1, i32 3
  %6 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.2.i = icmp eq i32 %7, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.rv6xx_program_mclk_stepping_parameters_except_lowest_entry.exit_crit_edge, label %if.then.2.i

for.inc.1.i.rv6xx_program_mclk_stepping_parameters_except_lowest_entry.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv6xx_program_mclk_stepping_parameters_except_lowest_entry.exit

if.then.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @rv6xx_program_mclk_stepping_entry(ptr noundef %rdev, i32 noundef 3, i32 noundef %7) #9
  br label %rv6xx_program_mclk_stepping_parameters_except_lowest_entry.exit

rv6xx_program_mclk_stepping_parameters_except_lowest_entry.exit: ; preds = %if.then.2.i, %for.inc.1.i.rv6xx_program_mclk_stepping_parameters_except_lowest_entry.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %1, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %rv6xx_program_mclk_stepping_parameters_except_lowest_entry.exit.if.end_crit_edge, label %if.then

rv6xx_program_mclk_stepping_parameters_except_lowest_entry.exit.if.end_crit_edge: ; preds = %rv6xx_program_mclk_stepping_parameters_except_lowest_entry.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %rv6xx_program_mclk_stepping_parameters_except_lowest_entry.exit
  %10 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv.i, align 4
  %arrayidx.i8 = getelementptr %struct.rv6xx_power_info, ptr %11, i32 0, i32 15, i32 2, i32 1
  %12 = ptrtoint ptr %arrayidx.i8 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.i8, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i.i) #9
  %14 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %mask.i.i, align 4, !annotation !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %set_pins.i.i) #9
  %15 = ptrtoint ptr %set_pins.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %set_pins.i.i, align 4, !annotation !38
  %call.i.i = call i32 @radeon_atom_get_voltage_gpio_settings(ptr noundef %rdev, i16 noundef zeroext %13, i8 noundef zeroext 1, ptr noundef nonnull %set_pins.i.i, ptr noundef nonnull %mask.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.rv6xx_program_voltage_stepping_entry.exit.i_crit_edge

if.then.rv6xx_program_voltage_stepping_entry.exit.i_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv6xx_program_voltage_stepping_entry.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %set_pins.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %set_pins.i.i, align 4
  %conv.i.i = zext i32 %17 to i64
  call void @r600_voltage_control_program_voltages(ptr noundef %rdev, i32 noundef 1, i64 noundef %conv.i.i) #9
  br label %rv6xx_program_voltage_stepping_entry.exit.i

rv6xx_program_voltage_stepping_entry.exit.i:      ; preds = %if.end.i.i, %if.then.rv6xx_program_voltage_stepping_entry.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %set_pins.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i.i) #9
  %arrayidx.1.i9 = getelementptr %struct.rv6xx_power_info, ptr %11, i32 0, i32 15, i32 2, i32 2
  %18 = ptrtoint ptr %arrayidx.1.i9 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.1.i9, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i.i) #9
  %20 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %mask.i.i, align 4, !annotation !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %set_pins.i.i) #9
  %21 = ptrtoint ptr %set_pins.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %set_pins.i.i, align 4, !annotation !38
  %call.i.1.i = call i32 @radeon_atom_get_voltage_gpio_settings(ptr noundef %rdev, i16 noundef zeroext %19, i8 noundef zeroext 1, ptr noundef nonnull %set_pins.i.i, ptr noundef nonnull %mask.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i)
  %tobool.not.i.1.i = icmp eq i32 %call.i.1.i, 0
  br i1 %tobool.not.i.1.i, label %if.end.i.1.i, label %rv6xx_program_voltage_stepping_entry.exit.i.rv6xx_program_voltage_stepping_entry.exit.1.i_crit_edge

rv6xx_program_voltage_stepping_entry.exit.i.rv6xx_program_voltage_stepping_entry.exit.1.i_crit_edge: ; preds = %rv6xx_program_voltage_stepping_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv6xx_program_voltage_stepping_entry.exit.1.i

if.end.i.1.i:                                     ; preds = %rv6xx_program_voltage_stepping_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %set_pins.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %set_pins.i.i, align 4
  %conv.i.1.i = zext i32 %23 to i64
  call void @r600_voltage_control_program_voltages(ptr noundef %rdev, i32 noundef 2, i64 noundef %conv.i.1.i) #9
  br label %rv6xx_program_voltage_stepping_entry.exit.1.i

rv6xx_program_voltage_stepping_entry.exit.1.i:    ; preds = %if.end.i.1.i, %rv6xx_program_voltage_stepping_entry.exit.i.rv6xx_program_voltage_stepping_entry.exit.1.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %set_pins.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i.i) #9
  %arrayidx.2.i10 = getelementptr %struct.rv6xx_power_info, ptr %11, i32 0, i32 15, i32 2, i32 3
  %24 = ptrtoint ptr %arrayidx.2.i10 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx.2.i10, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i.i) #9
  %26 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %mask.i.i, align 4, !annotation !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %set_pins.i.i) #9
  %27 = ptrtoint ptr %set_pins.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %set_pins.i.i, align 4, !annotation !38
  %call.i.2.i = call i32 @radeon_atom_get_voltage_gpio_settings(ptr noundef %rdev, i16 noundef zeroext %25, i8 noundef zeroext 1, ptr noundef nonnull %set_pins.i.i, ptr noundef nonnull %mask.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2.i)
  %tobool.not.i.2.i = icmp eq i32 %call.i.2.i, 0
  br i1 %tobool.not.i.2.i, label %if.end.i.2.i, label %rv6xx_program_voltage_stepping_entry.exit.1.i.rv6xx_program_voltage_stepping_parameters_except_lowest_entry.exit_crit_edge

rv6xx_program_voltage_stepping_entry.exit.1.i.rv6xx_program_voltage_stepping_parameters_except_lowest_entry.exit_crit_edge: ; preds = %rv6xx_program_voltage_stepping_entry.exit.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv6xx_program_voltage_stepping_parameters_except_lowest_entry.exit

if.end.i.2.i:                                     ; preds = %rv6xx_program_voltage_stepping_entry.exit.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %set_pins.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %set_pins.i.i, align 4
  %conv.i.2.i = zext i32 %29 to i64
  call void @r600_voltage_control_program_voltages(ptr noundef %rdev, i32 noundef 3, i64 noundef %conv.i.2.i) #9
  br label %rv6xx_program_voltage_stepping_parameters_except_lowest_entry.exit

rv6xx_program_voltage_stepping_parameters_except_lowest_entry.exit: ; preds = %if.end.i.2.i, %rv6xx_program_voltage_stepping_entry.exit.1.i.rv6xx_program_voltage_stepping_parameters_except_lowest_entry.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %set_pins.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i.i) #9
  br label %if.end

if.end:                                           ; preds = %rv6xx_program_voltage_stepping_parameters_except_lowest_entry.exit, %rv6xx_program_mclk_stepping_parameters_except_lowest_entry.exit.if.end_crit_edge
  %30 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv.i, align 4
  %arrayidx.i12 = getelementptr %struct.rv6xx_power_info, ptr %31, i32 0, i32 15, i32 3, i32 1
  %32 = ptrtoint ptr %arrayidx.i12 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i12, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i13 = icmp eq i8 %33, 0
  %rmmio.i53.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %34 = ptrtoint ptr %rmmio.i53.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rmmio.i53.i, align 4
  %add.ptr.i54.i = getelementptr i8, ptr %35, i32 1856
  %36 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i54.i) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  br i1 %tobool.not.i13, label %do.body2.i, label %do.body.i

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %37 = or i32 %36, 4194304
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  call void @arm_heavy_mb() #9
  %38 = ptrtoint ptr %rmmio.i53.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rmmio.i53.i, align 4
  %add.ptr.i50.i = getelementptr i8, ptr %39, i32 1856
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50.i, i32 %37) #9, !srcloc !34
  br label %if.end.i

do.body2.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %40 = and i32 %36, -4194305
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  call void @arm_heavy_mb() #9
  %41 = ptrtoint ptr %rmmio.i53.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rmmio.i53.i, align 4
  %add.ptr.i58.i = getelementptr i8, ptr %42, i32 1856
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58.i, i32 %40) #9, !srcloc !34
  br label %if.end.i

if.end.i:                                         ; preds = %do.body2.i, %do.body.i
  %arrayidx11.i = getelementptr %struct.rv6xx_power_info, ptr %31, i32 0, i32 15, i32 3, i32 2
  %43 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx11.i, align 2, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool12.not.i = icmp eq i8 %44, 0
  %45 = ptrtoint ptr %rmmio.i53.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rmmio.i53.i, align 4
  %add.ptr.i70.i = getelementptr i8, ptr %46, i32 1856
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i70.i) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  br i1 %tobool12.not.i, label %do.body22.i, label %do.body14.i

do.body14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %48 = or i32 %47, 2097152
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  call void @arm_heavy_mb() #9
  %49 = ptrtoint ptr %rmmio.i53.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rmmio.i53.i, align 4
  %add.ptr.i66.i = getelementptr i8, ptr %50, i32 1856
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66.i, i32 %48) #9, !srcloc !34
  br label %rv6xx_program_backbias_stepping_parameters_except_lowest_entry.exit

do.body22.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %51 = and i32 %47, -2097153
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  call void @arm_heavy_mb() #9
  %52 = ptrtoint ptr %rmmio.i53.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rmmio.i53.i, align 4
  %add.ptr.i74.i = getelementptr i8, ptr %53, i32 1856
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74.i, i32 %51) #9, !srcloc !34
  br label %rv6xx_program_backbias_stepping_parameters_except_lowest_entry.exit

rv6xx_program_backbias_stepping_parameters_except_lowest_entry.exit: ; preds = %do.body22.i, %do.body14.i
  %54 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %priv.i, align 4
  %arrayidx.i15 = getelementptr %struct.rv6xx_power_info, ptr %55, i32 0, i32 15, i32 0, i32 2
  %56 = ptrtoint ptr %arrayidx.i15 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i15, align 4
  call fastcc void @rv6xx_program_engine_spread_spectrum(ptr noundef %rdev, i32 noundef %57, i32 noundef 2) #9
  %arrayidx3.i = getelementptr %struct.rv6xx_power_info, ptr %55, i32 0, i32 15, i32 0, i32 1
  %58 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx3.i, align 4
  call fastcc void @rv6xx_program_engine_spread_spectrum(ptr noundef %rdev, i32 noundef %59, i32 noundef 1) #9
  %60 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %priv.i, align 4
  %mpll.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 41, i32 4
  %62 = ptrtoint ptr %mpll.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mpll.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ss.i) #9
  %64 = call ptr @memset(ptr %ss.i, i32 255, i32 16)
  %65 = ptrtoint ptr %rmmio.i53.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rmmio.i53.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %66, i32 2096
  %67 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  %68 = and i32 %67, -16777217
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  call void @arm_heavy_mb() #9
  %69 = ptrtoint ptr %rmmio.i53.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rmmio.i53.i, align 4
  %add.ptr.i25.i.i = getelementptr i8, ptr %70, i32 2096
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i, i32 %68) #9, !srcloc !34
  %mclk_ss.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %61, i32 0, i32 2
  %71 = ptrtoint ptr %mclk_ss.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %mclk_ss.i, align 2, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool.not.i17 = icmp eq i8 %72, 0
  br i1 %tobool.not.i17, label %rv6xx_program_backbias_stepping_parameters_except_lowest_entry.exit.rv6xx_program_mclk_spread_spectrum_parameters.exit_crit_edge, label %if.then.i19

rv6xx_program_backbias_stepping_parameters_except_lowest_entry.exit.rv6xx_program_mclk_spread_spectrum_parameters.exit_crit_edge: ; preds = %rv6xx_program_backbias_stepping_parameters_except_lowest_entry.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv6xx_program_mclk_spread_spectrum_parameters.exit

if.then.i19:                                      ; preds = %rv6xx_program_backbias_stepping_parameters_except_lowest_entry.exit
  %high_mclk_index.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %61, i32 0, i32 15, i32 8
  %73 = ptrtoint ptr %high_mclk_index.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %high_mclk_index.i, align 2
  %idxprom.i = zext i8 %74 to i32
  %arrayidx.i18 = getelementptr %struct.rv6xx_power_info, ptr %61, i32 0, i32 15, i32 1, i32 %idxprom.i
  %75 = ptrtoint ptr %arrayidx.i18 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx.i18, align 4
  %77 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %req_dividers.i.i) #9
  %79 = call ptr @memset(ptr %req_dividers.i.i, i32 255, i32 32)
  %call1.i.i = call i32 @radeon_atom_get_clock_dividers(ptr noundef %rdev, i8 noundef zeroext 1, i32 noundef %76, i1 noundef zeroext false, ptr noundef nonnull %req_dividers.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then.i19.rv6xx_find_memory_clock_with_highest_vco.exit.i_crit_edge

if.then.i19.rv6xx_find_memory_clock_with_highest_vco.exit.i_crit_edge: ; preds = %if.then.i19
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv6xx_find_memory_clock_with_highest_vco.exit.i

if.then.i.i:                                      ; preds = %if.then.i19
  %fb_div_scale.i.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %78, i32 0, i32 8
  %80 = ptrtoint ptr %fb_div_scale.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %fb_div_scale.i.i, align 4
  %82 = getelementptr inbounds %struct.atom_clock_dividers, ptr %req_dividers.i.i, i32 0, i32 1
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %82, align 4
  %and.i.i.i = and i32 %84, -2
  %shl.i.i.i = shl i32 %and.i.i.i, %81
  %mul.i.i.i = mul i32 %shl.i.i.i, %63
  %ref_div.i.i.i = getelementptr inbounds %struct.atom_clock_dividers, ptr %req_dividers.i.i, i32 0, i32 2
  %85 = ptrtoint ptr %ref_div.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %ref_div.i.i.i, align 4
  %add.i.i.i = add i32 %86, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %mul.i.i.i)
  %cmp3.i.not.i = icmp ugt i32 %add.i.i.i, %mul.i.i.i
  br i1 %cmp3.i.not.i, label %if.then.i.i.rv6xx_find_memory_clock_with_highest_vco.exit.i_crit_edge, label %if.then4.i.i

if.then.i.i.rv6xx_find_memory_clock_with_highest_vco.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv6xx_find_memory_clock_with_highest_vco.exit.i

if.then4.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %div.i.i.i = udiv i32 %mul.i.i.i, %add.i.i.i
  br label %rv6xx_find_memory_clock_with_highest_vco.exit.i

rv6xx_find_memory_clock_with_highest_vco.exit.i:  ; preds = %if.then4.i.i, %if.then.i.i.rv6xx_find_memory_clock_with_highest_vco.exit.i_crit_edge, %if.then.i19.rv6xx_find_memory_clock_with_highest_vco.exit.i_crit_edge
  %dividers.sroa.6.0.i = phi i32 [ %86, %if.then4.i.i ], [ -1, %if.then.i.i.rv6xx_find_memory_clock_with_highest_vco.exit.i_crit_edge ], [ -1, %if.then.i19.rv6xx_find_memory_clock_with_highest_vco.exit.i_crit_edge ]
  %vco_freq.0.i = phi i32 [ %div.i.i.i, %if.then4.i.i ], [ 0, %if.then.i.i.rv6xx_find_memory_clock_with_highest_vco.exit.i_crit_edge ], [ 0, %if.then.i19.rv6xx_find_memory_clock_with_highest_vco.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %req_dividers.i.i) #9
  %medium_mclk_index.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %61, i32 0, i32 15, i32 9
  %87 = ptrtoint ptr %medium_mclk_index.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %medium_mclk_index.i, align 1
  %idxprom5.i = zext i8 %88 to i32
  %arrayidx6.i = getelementptr %struct.rv6xx_power_info, ptr %61, i32 0, i32 15, i32 1, i32 %idxprom5.i
  %89 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx6.i, align 4
  %91 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %req_dividers.i46.i) #9
  %93 = call ptr @memset(ptr %req_dividers.i46.i, i32 255, i32 32)
  %call1.i48.i = call i32 @radeon_atom_get_clock_dividers(ptr noundef %rdev, i8 noundef zeroext 1, i32 noundef %90, i1 noundef zeroext false, ptr noundef nonnull %req_dividers.i46.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i48.i)
  %cmp.i49.i = icmp eq i32 %call1.i48.i, 0
  br i1 %cmp.i49.i, label %if.then.i58.i, label %rv6xx_find_memory_clock_with_highest_vco.exit.i.rv6xx_find_memory_clock_with_highest_vco.exit60.i_crit_edge

rv6xx_find_memory_clock_with_highest_vco.exit.i.rv6xx_find_memory_clock_with_highest_vco.exit60.i_crit_edge: ; preds = %rv6xx_find_memory_clock_with_highest_vco.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv6xx_find_memory_clock_with_highest_vco.exit60.i

if.then.i58.i:                                    ; preds = %rv6xx_find_memory_clock_with_highest_vco.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %fb_div_scale.i50.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %92, i32 0, i32 8
  %94 = ptrtoint ptr %fb_div_scale.i50.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %fb_div_scale.i50.i, align 4
  %96 = getelementptr inbounds %struct.atom_clock_dividers, ptr %req_dividers.i46.i, i32 0, i32 1
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %96, align 4
  %and.i.i51.i = and i32 %98, -2
  %shl.i.i52.i = shl i32 %and.i.i51.i, %95
  %mul.i.i53.i = mul i32 %shl.i.i52.i, %63
  %ref_div.i.i54.i = getelementptr inbounds %struct.atom_clock_dividers, ptr %req_dividers.i46.i, i32 0, i32 2
  %99 = ptrtoint ptr %ref_div.i.i54.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %ref_div.i.i54.i, align 4
  %add.i.i55.i = add i32 %100, 1
  %div.i.i56.i = udiv i32 %mul.i.i53.i, %add.i.i55.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i56.i, i32 %vco_freq.0.i)
  %cmp3.i57.i = icmp ugt i32 %div.i.i56.i, %vco_freq.0.i
  %spec.select = select i1 %cmp3.i57.i, i32 %100, i32 %dividers.sroa.6.0.i
  %101 = call i32 @llvm.umax.i32(i32 %div.i.i56.i, i32 %vco_freq.0.i)
  br label %rv6xx_find_memory_clock_with_highest_vco.exit60.i

rv6xx_find_memory_clock_with_highest_vco.exit60.i: ; preds = %if.then.i58.i, %rv6xx_find_memory_clock_with_highest_vco.exit.i.rv6xx_find_memory_clock_with_highest_vco.exit60.i_crit_edge
  %dividers.sroa.6.1.i = phi i32 [ %dividers.sroa.6.0.i, %rv6xx_find_memory_clock_with_highest_vco.exit.i.rv6xx_find_memory_clock_with_highest_vco.exit60.i_crit_edge ], [ %spec.select, %if.then.i58.i ]
  %vco_freq.1.i = phi i32 [ %vco_freq.0.i, %rv6xx_find_memory_clock_with_highest_vco.exit.i.rv6xx_find_memory_clock_with_highest_vco.exit60.i_crit_edge ], [ %101, %if.then.i58.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %req_dividers.i46.i) #9
  %low_mclk_index.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %61, i32 0, i32 15, i32 10
  %102 = ptrtoint ptr %low_mclk_index.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %low_mclk_index.i, align 4
  %idxprom10.i = zext i8 %103 to i32
  %arrayidx11.i20 = getelementptr %struct.rv6xx_power_info, ptr %61, i32 0, i32 15, i32 1, i32 %idxprom10.i
  %104 = ptrtoint ptr %arrayidx11.i20 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx11.i20, align 4
  %106 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %req_dividers.i61.i) #9
  %108 = call ptr @memset(ptr %req_dividers.i61.i, i32 255, i32 32)
  %call1.i63.i = call i32 @radeon_atom_get_clock_dividers(ptr noundef %rdev, i8 noundef zeroext 1, i32 noundef %105, i1 noundef zeroext false, ptr noundef nonnull %req_dividers.i61.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i63.i)
  %cmp.i64.i = icmp eq i32 %call1.i63.i, 0
  br i1 %cmp.i64.i, label %if.then.i73.i, label %rv6xx_find_memory_clock_with_highest_vco.exit60.i.rv6xx_find_memory_clock_with_highest_vco.exit75.i_crit_edge

rv6xx_find_memory_clock_with_highest_vco.exit60.i.rv6xx_find_memory_clock_with_highest_vco.exit75.i_crit_edge: ; preds = %rv6xx_find_memory_clock_with_highest_vco.exit60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv6xx_find_memory_clock_with_highest_vco.exit75.i

if.then.i73.i:                                    ; preds = %rv6xx_find_memory_clock_with_highest_vco.exit60.i
  %fb_div_scale.i65.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %107, i32 0, i32 8
  %109 = ptrtoint ptr %fb_div_scale.i65.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %fb_div_scale.i65.i, align 4
  %111 = getelementptr inbounds %struct.atom_clock_dividers, ptr %req_dividers.i61.i, i32 0, i32 1
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %111, align 4
  %and.i.i66.i = and i32 %113, -2
  %shl.i.i67.i = shl i32 %and.i.i66.i, %110
  %mul.i.i68.i = mul i32 %shl.i.i67.i, %63
  %ref_div.i.i69.i = getelementptr inbounds %struct.atom_clock_dividers, ptr %req_dividers.i61.i, i32 0, i32 2
  %114 = ptrtoint ptr %ref_div.i.i69.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %ref_div.i.i69.i, align 4
  %add.i.i70.i = add i32 %115, 1
  %div.i.i71.i = udiv i32 %mul.i.i68.i, %add.i.i70.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i71.i, i32 %vco_freq.1.i)
  %cmp3.i72.i = icmp ugt i32 %div.i.i71.i, %vco_freq.1.i
  br i1 %cmp3.i72.i, label %rv6xx_find_memory_clock_with_highest_vco.exit75.thread.i, label %if.then.i73.i.rv6xx_find_memory_clock_with_highest_vco.exit75.i_crit_edge

if.then.i73.i.rv6xx_find_memory_clock_with_highest_vco.exit75.i_crit_edge: ; preds = %if.then.i73.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv6xx_find_memory_clock_with_highest_vco.exit75.i

rv6xx_find_memory_clock_with_highest_vco.exit75.thread.i: ; preds = %if.then.i73.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %req_dividers.i61.i) #9
  br label %if.then13.i

rv6xx_find_memory_clock_with_highest_vco.exit75.i: ; preds = %if.then.i73.i.rv6xx_find_memory_clock_with_highest_vco.exit75.i_crit_edge, %rv6xx_find_memory_clock_with_highest_vco.exit60.i.rv6xx_find_memory_clock_with_highest_vco.exit75.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %req_dividers.i61.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vco_freq.1.i)
  %tobool12.not.i21 = icmp eq i32 %vco_freq.1.i, 0
  br i1 %tobool12.not.i21, label %rv6xx_find_memory_clock_with_highest_vco.exit75.i.rv6xx_program_mclk_spread_spectrum_parameters.exit_crit_edge, label %rv6xx_find_memory_clock_with_highest_vco.exit75.i.if.then13.i_crit_edge

rv6xx_find_memory_clock_with_highest_vco.exit75.i.if.then13.i_crit_edge: ; preds = %rv6xx_find_memory_clock_with_highest_vco.exit75.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13.i

rv6xx_find_memory_clock_with_highest_vco.exit75.i.rv6xx_program_mclk_spread_spectrum_parameters.exit_crit_edge: ; preds = %rv6xx_find_memory_clock_with_highest_vco.exit75.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv6xx_program_mclk_spread_spectrum_parameters.exit

if.then13.i:                                      ; preds = %rv6xx_find_memory_clock_with_highest_vco.exit75.i.if.then13.i_crit_edge, %rv6xx_find_memory_clock_with_highest_vco.exit75.thread.i
  %vco_freq.2101.i = phi i32 [ %div.i.i71.i, %rv6xx_find_memory_clock_with_highest_vco.exit75.thread.i ], [ %vco_freq.1.i, %rv6xx_find_memory_clock_with_highest_vco.exit75.i.if.then13.i_crit_edge ]
  %dividers.sroa.6.2100.i = phi i32 [ %115, %rv6xx_find_memory_clock_with_highest_vco.exit75.thread.i ], [ %dividers.sroa.6.1.i, %rv6xx_find_memory_clock_with_highest_vco.exit75.i.if.then13.i_crit_edge ]
  %call14.i = call zeroext i1 @radeon_atombios_get_asic_ss_info(ptr noundef %rdev, ptr noundef nonnull %ss.i, i32 noundef 1, i32 noundef %vco_freq.2101.i) #9
  br i1 %call14.i, label %if.then15.i, label %if.then13.i.rv6xx_program_mclk_spread_spectrum_parameters.exit_crit_edge

if.then13.i.rv6xx_program_mclk_spread_spectrum_parameters.exit_crit_edge: ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv6xx_program_mclk_spread_spectrum_parameters.exit

if.then15.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = add i32 %dividers.sroa.6.2100.i, 1
  %div.i = udiv i32 %63, %add.i
  %rate.i = getelementptr inbounds %struct.radeon_atom_ss, ptr %ss.i, i32 0, i32 7
  %116 = ptrtoint ptr %rate.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %rate.i, align 2
  %conv.i = zext i16 %117 to i32
  %118 = ptrtoint ptr %ss.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %ss.i, align 2
  %conv16.i = zext i16 %119 to i32
  %fb_div_scale.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %61, i32 0, i32 8
  %120 = ptrtoint ptr %fb_div_scale.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %fb_div_scale.i, align 4
  %div.i.i = udiv i32 %vco_freq.2101.i, %div.i
  %mul2.i.i = shl nuw nsw i32 %conv.i, 2
  %mul.i.i = mul i32 %mul2.i.i, %conv16.i
  %mul1.i.i = mul i32 %mul.i.i, %div.i.i
  %mul3.i.i = mul i32 %mul1.i.i, %div.i.i
  %mul4.i.i = mul i32 %vco_freq.2101.i, 10
  %shr.i.i = lshr exact i32 4096, %121
  %div5.i.i = udiv i32 %mul4.i.i, %shr.i.i
  %mul6.i.i = mul i32 %div5.i.i, 5375
  %div7.i.i = udiv i32 %mul3.i.i, %mul6.i.i
  %mul.i76.i = mul i32 %div.i, 10
  %mul1.i77.i = shl nuw nsw i32 %conv.i, 1
  %div.i78.i = udiv i32 %mul.i76.i, %mul1.i77.i
  %122 = ptrtoint ptr %rmmio.i53.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %rmmio.i53.i, align 4
  %add.ptr.i.i80.i = getelementptr i8, ptr %123, i32 2096
  %124 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i80.i) #9, !srcloc !36
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  %125 = and i32 %124, -16269057
  %126 = call i32 @llvm.bswap.i32(i32 %125) #9
  %shl.i.i = shl i32 %div7.i.i, 11
  %and1.i.i = and i32 %shl.i.i, 4192256
  %or.i.i = or i32 %126, %and1.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  call void @arm_heavy_mb() #9
  %127 = call i32 @llvm.bswap.i32(i32 %or.i.i) #9
  %128 = ptrtoint ptr %rmmio.i53.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %rmmio.i53.i, align 4
  %add.ptr.i8.i.i = getelementptr i8, ptr %129, i32 2096
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i, i32 %127) #9, !srcloc !34
  %130 = ptrtoint ptr %rmmio.i53.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %rmmio.i53.i, align 4
  %add.ptr.i.i82.i = getelementptr i8, ptr %131, i32 2096
  %132 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i82.i) #9, !srcloc !36
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  %133 = and i32 %132, 133758975
  %134 = call i32 @llvm.bswap.i32(i32 %133) #9
  %sub.i.i = shl i32 %div.i78.i, 1
  %135 = add i32 %sub.i.i, 2046
  %and1.i84.i = and i32 %135, 2040
  %or.i85.i = or i32 %134, %and1.i84.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  call void @arm_heavy_mb() #9
  %136 = call i32 @llvm.bswap.i32(i32 %or.i85.i) #9
  %137 = ptrtoint ptr %rmmio.i53.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %rmmio.i53.i, align 4
  %add.ptr.i8.i86.i = getelementptr i8, ptr %138, i32 2096
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i86.i, i32 %136) #9, !srcloc !34
  %139 = ptrtoint ptr %rmmio.i53.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %rmmio.i53.i, align 4
  %add.ptr.i.i88.i = getelementptr i8, ptr %140, i32 2096
  %141 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i88.i) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  %142 = or i32 %141, 16777216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  call void @arm_heavy_mb() #9
  %143 = ptrtoint ptr %rmmio.i53.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %rmmio.i53.i, align 4
  %add.ptr.i17.i.i = getelementptr i8, ptr %144, i32 2096
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i.i, i32 %142) #9, !srcloc !34
  br label %rv6xx_program_mclk_spread_spectrum_parameters.exit

rv6xx_program_mclk_spread_spectrum_parameters.exit: ; preds = %if.then15.i, %if.then13.i.rv6xx_program_mclk_spread_spectrum_parameters.exit_crit_edge, %rv6xx_find_memory_clock_with_highest_vco.exit75.i.rv6xx_program_mclk_spread_spectrum_parameters.exit_crit_edge, %rv6xx_program_backbias_stepping_parameters_except_lowest_entry.exit.rv6xx_program_mclk_spread_spectrum_parameters.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ss.i) #9
  %145 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %priv.i, align 4
  %hw.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %146, i32 0, i32 15
  %arrayidx.i23 = getelementptr %struct.rv6xx_power_info, ptr %146, i32 0, i32 15, i32 0, i32 2
  %147 = ptrtoint ptr %arrayidx.i23 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx.i23, align 4
  %149 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %hw.i, align 4
  %mul.i = mul i32 %150, 255
  %div82.i = lshr i32 %mul.i, 6
  %151 = call i32 @llvm.umin.i32(i32 %148, i32 %div82.i) #9
  call void @radeon_atom_set_engine_dram_timings(ptr noundef %rdev, i32 noundef %151, i32 noundef 0) #9
  %mul12.i = shl nuw i32 %151, 6
  %152 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %hw.i, align 4
  %div16.i = udiv i32 %mul12.i, %153
  %arrayidx20.i = getelementptr %struct.rv6xx_power_info, ptr %146, i32 0, i32 15, i32 0, i32 1
  %154 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx20.i, align 4
  %div21.i = udiv i32 %mul12.i, %155
  %shl22.i = shl i32 %div21.i, 8
  %or.i = or i32 %shl22.i, %div16.i
  %156 = ptrtoint ptr %arrayidx.i23 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx.i23, align 4
  %div27.i = udiv i32 %mul12.i, %157
  %shl28.i = shl i32 %div27.i, 16
  %or29.i = or i32 %or.i, %shl28.i
  %shl35.i = shl i32 %div27.i, 24
  %or36.i = or i32 %or29.i, %shl35.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  call void @arm_heavy_mb() #9
  %158 = call i32 @llvm.bswap.i32(i32 %or36.i) #9
  %159 = ptrtoint ptr %rmmio.i53.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %rmmio.i53.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %160, i32 9252
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %158) #9, !srcloc !34
  %161 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %hw.i, align 4
  %163 = ptrtoint ptr %rmmio.i53.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %rmmio.i53.i, align 4
  %add.ptr.i.i.i24 = getelementptr i8, ptr %164, i32 9224
  %165 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i24) #9, !srcloc !36
  %166 = lshr i32 %165, 26
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  %shr.i.i25 = and i32 %166, 7
  %167 = ptrtoint ptr %rmmio.i53.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %rmmio.i53.i, align 4
  %add.ptr.i13.i.i = getelementptr i8, ptr %168, i32 10388
  %169 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13.i.i) #9, !srcloc !36
  %170 = lshr i32 %169, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  %and2.i.i = and i32 %170, 3
  %shl4.i.i = shl nuw nsw i32 8, %and2.i.i
  %mul.i.i26 = mul i32 %162, 10
  %mul5.i.i = mul i32 %mul.i.i26, %shl4.i.i
  %171 = add nuw nsw i32 %shr.i.i25, 10
  %div8.i.i = lshr i32 %mul5.i.i, %171
  %sub.i.i27 = add nsw i32 %div8.i.i, -32
  %div69.i.i = lshr i32 %sub.i.i27, 6
  %172 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx20.i, align 4
  %174 = ptrtoint ptr %rmmio.i53.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %rmmio.i53.i, align 4
  %add.ptr.i.i84.i = getelementptr i8, ptr %175, i32 9224
  %176 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i84.i) #9, !srcloc !36
  %177 = lshr i32 %176, 26
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  %shr.i85.i = and i32 %177, 7
  %178 = ptrtoint ptr %rmmio.i53.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %rmmio.i53.i, align 4
  %add.ptr.i13.i86.i = getelementptr i8, ptr %179, i32 10388
  %180 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13.i86.i) #9, !srcloc !36
  %181 = lshr i32 %180, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  %and2.i87.i = and i32 %181, 3
  %shl4.i88.i = shl nuw nsw i32 8, %and2.i87.i
  %mul.i89.i = mul i32 %173, 10
  %mul5.i90.i = mul i32 %mul.i89.i, %shl4.i88.i
  %182 = add nuw nsw i32 %shr.i85.i, 10
  %div8.i91.i = lshr i32 %mul5.i90.i, %182
  %sub.i92.i = shl nuw nsw i32 %div8.i91.i, 2
  %183 = add nsw i32 %sub.i92.i, -128
  %shl46.i = and i32 %183, -256
  %or47.i = or i32 %shl46.i, %div69.i.i
  %184 = ptrtoint ptr %arrayidx.i23 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %arrayidx.i23, align 4
  %186 = ptrtoint ptr %rmmio.i53.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %rmmio.i53.i, align 4
  %add.ptr.i.i95.i = getelementptr i8, ptr %187, i32 9224
  %188 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i95.i) #9, !srcloc !36
  %189 = lshr i32 %188, 26
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  %shr.i96.i = and i32 %189, 7
  %190 = ptrtoint ptr %rmmio.i53.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %rmmio.i53.i, align 4
  %add.ptr.i13.i97.i = getelementptr i8, ptr %191, i32 10388
  %192 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13.i97.i) #9, !srcloc !36
  %193 = lshr i32 %192, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  %and2.i98.i = and i32 %193, 3
  %shl4.i99.i = shl nuw nsw i32 8, %and2.i98.i
  %mul.i100.i = mul i32 %185, 10
  %mul5.i101.i = mul i32 %mul.i100.i, %shl4.i99.i
  %194 = add nuw nsw i32 %shr.i96.i, 10
  %div8.i102.i = lshr i32 %mul5.i101.i, %194
  %sub.i103.i = shl nuw i32 %div8.i102.i, 10
  %195 = add i32 %sub.i103.i, -32768
  %shl52.i = and i32 %195, -65536
  %or53.i = or i32 %or47.i, %shl52.i
  %196 = ptrtoint ptr %arrayidx.i23 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %arrayidx.i23, align 4
  %198 = ptrtoint ptr %rmmio.i53.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %rmmio.i53.i, align 4
  %add.ptr.i.i106.i = getelementptr i8, ptr %199, i32 9224
  %200 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i106.i) #9, !srcloc !36
  %201 = lshr i32 %200, 26
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  %shr.i107.i = and i32 %201, 7
  %202 = ptrtoint ptr %rmmio.i53.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %rmmio.i53.i, align 4
  %add.ptr.i13.i108.i = getelementptr i8, ptr %203, i32 10388
  %204 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13.i108.i) #9, !srcloc !36
  %205 = lshr i32 %204, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  %and2.i109.i = and i32 %205, 3
  %shl4.i110.i = shl nuw nsw i32 8, %and2.i109.i
  %mul.i111.i = mul i32 %197, 10
  %mul5.i112.i = mul i32 %mul.i111.i, %shl4.i110.i
  %206 = add nuw nsw i32 %shr.i107.i, 10
  %div8.i113.i = lshr i32 %mul5.i112.i, %206
  %sub.i114.i = shl i32 %div8.i113.i, 18
  %207 = add i32 %sub.i114.i, -8388608
  %shl58.i = and i32 %207, -16777216
  %or59.i = or i32 %or53.i, %shl58.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  call void @arm_heavy_mb() #9
  %208 = call i32 @llvm.bswap.i32(i32 %or59.i) #9
  %209 = ptrtoint ptr %rmmio.i53.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %rmmio.i53.i, align 4
  %add.ptr.i119.i = getelementptr i8, ptr %210, i32 9316
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119.i, i32 %208) #9, !srcloc !34
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rv6xx_program_stepping_parameters_lowest_entry(ptr noundef %rdev) unnamed_addr #0 align 64 {
entry:
  %mask.i.i = alloca i32, align 4
  %set_pins.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %mclks.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %1, i32 0, i32 15, i32 1
  %2 = ptrtoint ptr %mclks.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mclks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.rv6xx_program_mclk_stepping_parameters_lowest_entry.exit_crit_edge, label %if.then.i

entry.rv6xx_program_mclk_stepping_parameters_lowest_entry.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv6xx_program_mclk_stepping_parameters_lowest_entry.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @rv6xx_program_mclk_stepping_entry(ptr noundef %rdev, i32 noundef 0, i32 noundef %3) #9
  br label %rv6xx_program_mclk_stepping_parameters_lowest_entry.exit

rv6xx_program_mclk_stepping_parameters_lowest_entry.exit: ; preds = %if.then.i, %entry.rv6xx_program_mclk_stepping_parameters_lowest_entry.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %rv6xx_program_mclk_stepping_parameters_lowest_entry.exit.if.end_crit_edge, label %if.then

rv6xx_program_mclk_stepping_parameters_lowest_entry.exit.if.end_crit_edge: ; preds = %rv6xx_program_mclk_stepping_parameters_lowest_entry.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %rv6xx_program_mclk_stepping_parameters_lowest_entry.exit
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 4
  %vddc.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %7, i32 0, i32 15, i32 2
  %8 = ptrtoint ptr %vddc.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vddc.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i.i) #9
  %10 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %mask.i.i, align 4, !annotation !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %set_pins.i.i) #9
  %11 = ptrtoint ptr %set_pins.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %set_pins.i.i, align 4, !annotation !38
  %call.i.i = call i32 @radeon_atom_get_voltage_gpio_settings(ptr noundef %rdev, i16 noundef zeroext %9, i8 noundef zeroext 1, ptr noundef nonnull %set_pins.i.i, ptr noundef nonnull %mask.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.rv6xx_program_voltage_stepping_parameters_lowest_entry.exit_crit_edge

if.then.rv6xx_program_voltage_stepping_parameters_lowest_entry.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv6xx_program_voltage_stepping_parameters_lowest_entry.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %set_pins.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %set_pins.i.i, align 4
  %conv.i.i = zext i32 %13 to i64
  call void @r600_voltage_control_program_voltages(ptr noundef %rdev, i32 noundef 0, i64 noundef %conv.i.i) #9
  br label %rv6xx_program_voltage_stepping_parameters_lowest_entry.exit

rv6xx_program_voltage_stepping_parameters_lowest_entry.exit: ; preds = %if.end.i.i, %if.then.rv6xx_program_voltage_stepping_parameters_lowest_entry.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %set_pins.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i.i) #9
  br label %if.end

if.end:                                           ; preds = %rv6xx_program_voltage_stepping_parameters_lowest_entry.exit, %rv6xx_program_mclk_stepping_parameters_lowest_entry.exit.if.end_crit_edge
  %14 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv.i, align 4
  %backbias.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %15, i32 0, i32 15, i32 3
  %16 = ptrtoint ptr %backbias.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %backbias.i, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i7 = icmp eq i8 %17, 0
  %rmmio.i23.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %18 = ptrtoint ptr %rmmio.i23.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmmio.i23.i, align 4
  %add.ptr.i24.i = getelementptr i8, ptr %19, i32 1856
  %20 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24.i) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  br i1 %tobool.not.i7, label %do.body2.i, label %do.body.i

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %21 = or i32 %20, 8388608
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  call void @arm_heavy_mb() #9
  %22 = ptrtoint ptr %rmmio.i23.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmmio.i23.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %23, i32 1856
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 %21) #9, !srcloc !34
  br label %rv6xx_program_backbias_stepping_parameters_lowest_entry.exit

do.body2.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %24 = and i32 %20, -8388609
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  call void @arm_heavy_mb() #9
  %25 = ptrtoint ptr %rmmio.i23.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rmmio.i23.i, align 4
  %add.ptr.i28.i = getelementptr i8, ptr %26, i32 1856
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28.i, i32 %24) #9, !srcloc !34
  br label %rv6xx_program_backbias_stepping_parameters_lowest_entry.exit

rv6xx_program_backbias_stepping_parameters_lowest_entry.exit: ; preds = %do.body2.i, %do.body.i
  %27 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv.i, align 4
  %hw.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %28, i32 0, i32 15
  %29 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hw.i, align 4
  call fastcc void @rv6xx_program_engine_spread_spectrum(ptr noundef %rdev, i32 noundef %30, i32 noundef 0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_power_level_enable(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_start_dpm(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rv6xx_enable_dynamic_pcie_gen2(ptr noundef %rdev, ptr nocapture noundef readonly %new_ps, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %pciep_rreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 37
  %0 = ptrtoint ptr %pciep_rreg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pciep_rreg.i, align 4
  %call.i = tail call i32 %1(ptr noundef %rdev, i32 noundef 164) #9
  %and.i = and i32 %call.i, -12289
  %or.i = or i32 %and.i, 4096
  %pciep_wreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 38
  %2 = ptrtoint ptr %pciep_wreg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pciep_wreg.i, align 8
  tail call void %3(ptr noundef %rdev, i32 noundef 164, i32 noundef %or.i) #9
  %4 = ptrtoint ptr %pciep_rreg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pciep_rreg.i, align 4
  %call.i10 = tail call i32 %5(ptr noundef %rdev, i32 noundef 164) #9
  %6 = and i32 %call.i10, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 25165824, i32 %6)
  %.not.i = icmp eq i32 %6, 25165824
  br i1 %.not.i, label %if.then.i, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %or.i11 = or i32 %call.i10, 1
  br label %if.end3.sink.split

if.else:                                          ; preds = %entry
  %ps_priv.i = getelementptr inbounds %struct.radeon_ps, ptr %new_ps, i32 0, i32 9
  %7 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ps_priv.i, align 4
  %flags = getelementptr inbounds %struct.rv6xx_ps, ptr %8, i32 0, i32 2, i32 3
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.then2, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then2:                                         ; preds = %if.else
  %pciep_rreg.i13 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 37
  %11 = ptrtoint ptr %pciep_rreg.i13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pciep_rreg.i13, align 4
  %call.i14 = tail call i32 %12(ptr noundef %rdev, i32 noundef 164) #9
  %and.i15 = and i32 %call.i14, 1
  %pciep_wreg.i16 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 38
  %13 = ptrtoint ptr %pciep_wreg.i16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pciep_wreg.i16, align 8
  tail call void %14(ptr noundef %rdev, i32 noundef 164, i32 noundef %and.i15) #9
  %15 = ptrtoint ptr %pciep_rreg.i13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pciep_rreg.i13, align 4
  %call2.i = tail call i32 %16(ptr noundef %rdev, i32 noundef 164) #9
  %or.i17 = or i32 %call2.i, 128
  %17 = ptrtoint ptr %pciep_wreg.i16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pciep_wreg.i16, align 8
  tail call void %18(ptr noundef %rdev, i32 noundef 164, i32 noundef %or.i17) #9
  %usec_timeout.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %19 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %usec_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp31.i = icmp sgt i32 %20, 0
  br i1 %cmp31.i, label %if.then2.for.body.i_crit_edge, label %if.then2.rv6xx_force_pcie_gen1.exit_crit_edge

if.then2.rv6xx_force_pcie_gen1.exit_crit_edge:    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv6xx_force_pcie_gen1.exit

if.then2.for.body.i_crit_edge:                    ; preds = %if.then2
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.then2.for.body.i_crit_edge
  %i.032.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %if.then2.for.body.i_crit_edge ]
  %21 = ptrtoint ptr %pciep_rreg.i13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pciep_rreg.i13, align 4
  %call5.i = tail call i32 %22(ptr noundef %rdev, i32 noundef 164) #9
  %and6.i = and i32 %call5.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool.not.i, label %for.body.i.rv6xx_force_pcie_gen1.exit_crit_edge, label %if.end.i

for.body.i.rv6xx_force_pcie_gen1.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv6xx_force_pcie_gen1.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #9
  %inc.i = add nuw nsw i32 %i.032.i, 1
  %24 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %usec_timeout.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %25
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.rv6xx_force_pcie_gen1.exit_crit_edge

if.end.i.rv6xx_force_pcie_gen1.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv6xx_force_pcie_gen1.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

rv6xx_force_pcie_gen1.exit:                       ; preds = %if.end.i.rv6xx_force_pcie_gen1.exit_crit_edge, %for.body.i.rv6xx_force_pcie_gen1.exit_crit_edge, %if.then2.rv6xx_force_pcie_gen1.exit_crit_edge
  %26 = ptrtoint ptr %pciep_rreg.i13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pciep_rreg.i13, align 4
  %call8.i = tail call i32 %27(ptr noundef %rdev, i32 noundef 164) #9
  %and9.i = and i32 %call8.i, -129
  %28 = ptrtoint ptr %pciep_wreg.i16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pciep_wreg.i16, align 8
  tail call void %29(ptr noundef %rdev, i32 noundef 164, i32 noundef %and9.i) #9
  br label %if.end

if.end:                                           ; preds = %rv6xx_force_pcie_gen1.exit, %if.else.if.end_crit_edge
  %pciep_rreg.i18 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 37
  %30 = ptrtoint ptr %pciep_rreg.i18 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pciep_rreg.i18, align 4
  %call.i19 = tail call i32 %31(ptr noundef %rdev, i32 noundef 164) #9
  %and.i20 = and i32 %call.i19, -12289
  %pciep_wreg.i22 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 38
  br label %if.end3.sink.split

if.end3.sink.split:                               ; preds = %if.end, %if.then.i
  %pciep_wreg.i.sink = phi ptr [ %pciep_wreg.i, %if.then.i ], [ %pciep_wreg.i22, %if.end ]
  %or.i11.sink = phi i32 [ %or.i11, %if.then.i ], [ %and.i20, %if.end ]
  %32 = ptrtoint ptr %pciep_wreg.i.sink to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pciep_wreg.i.sink, align 8
  tail call void %33(ptr noundef %rdev, i32 noundef 164, i32 noundef %or.i11.sink) #9
  br label %if.end3

if.end3:                                          ; preds = %if.end3.sink.split, %if.then.if.end3_crit_edge
  %.sink = phi i1 [ true, %if.then.if.end3_crit_edge ], [ %enable, %if.end3.sink.split ]
  tail call void @r600_enable_dynamic_pcie_gen2(ptr noundef %rdev, i1 noundef zeroext %.sink) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_gfx_clockgating_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv6xx_dpm_disable(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %boot_ps1 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 4
  %2 = ptrtoint ptr %boot_ps1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %boot_ps1, align 4
  %call2 = tail call zeroext i1 @r600_dynamicpm_enabled(ptr noundef %rdev) #9
  br i1 %call2, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @r600_power_level_enable(ptr noundef %rdev, i32 noundef 0, i1 noundef zeroext true) #9
  tail call void @r600_power_level_enable(ptr noundef %rdev, i32 noundef 1, i1 noundef zeroext true) #9
  %rmmio.i26.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %4 = ptrtoint ptr %rmmio.i26.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i26.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %5, i32 1572
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27.i) #9, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  %7 = and i32 %6, -3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %rmmio.i26.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i26.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %9, i32 1572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31.i, i32 %7) #9, !srcloc !34
  tail call void @r600_set_vrc(ptr noundef %rdev, i32 noundef 0) #9
  tail call void @r600_set_at(ptr noundef %rdev, i32 noundef 65535, i32 noundef 65535, i32 noundef 65535, i32 noundef 65535) #9
  %thermal_protection = getelementptr inbounds %struct.rv6xx_power_info, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %thermal_protection to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %thermal_protection, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @r600_enable_thermal_protection(ptr noundef %rdev, i1 noundef zeroext false) #9
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  tail call void @r600_wait_for_power_level(ptr noundef %rdev, i32 noundef 0) #9
  tail call void @r600_power_level_enable(ptr noundef %rdev, i32 noundef 2, i1 noundef zeroext false) #9
  tail call void @r600_power_level_enable(ptr noundef %rdev, i32 noundef 1, i1 noundef zeroext false) #9
  %platform_caps = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 10
  %12 = ptrtoint ptr %platform_caps to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %platform_caps, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end4.if.end9_crit_edge, label %if.then8

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %rmmio.i26.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmmio.i26.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 1560
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  %17 = and i32 %16, -1793
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  tail call void @arm_heavy_mb() #9
  %18 = ptrtoint ptr %rmmio.i26.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmmio.i26.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %19, i32 1560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %17) #9, !srcloc !34
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end4.if.end9_crit_edge
  %20 = ptrtoint ptr %rmmio.i26.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio.i26.i, align 4
  %add.ptr.i35.i.i = getelementptr i8, ptr %21, i32 2080
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35.i.i) #9, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  %23 = and i32 %22, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  tail call void @arm_heavy_mb() #9
  %24 = ptrtoint ptr %rmmio.i26.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmmio.i26.i, align 4
  %add.ptr.i46.i.i = getelementptr i8, ptr %25, i32 2080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46.i.i, i32 %23) #9, !srcloc !34
  %26 = ptrtoint ptr %rmmio.i26.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmmio.i26.i, align 4
  %add.ptr.i35.i9.i = getelementptr i8, ptr %27, i32 2084
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35.i9.i) #9, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  %29 = and i32 %28, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  tail call void @arm_heavy_mb() #9
  %30 = ptrtoint ptr %rmmio.i26.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmmio.i26.i, align 4
  %add.ptr.i46.i13.i = getelementptr i8, ptr %31, i32 2084
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46.i13.i, i32 %29) #9, !srcloc !34
  %32 = ptrtoint ptr %rmmio.i26.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmmio.i26.i, align 4
  %add.ptr.i35.i17.i = getelementptr i8, ptr %33, i32 2088
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35.i17.i) #9, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  %35 = and i32 %34, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  tail call void @arm_heavy_mb() #9
  %36 = ptrtoint ptr %rmmio.i26.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rmmio.i26.i, align 4
  %add.ptr.i46.i21.i = getelementptr i8, ptr %37, i32 2088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46.i21.i, i32 %35) #9, !srcloc !34
  %38 = ptrtoint ptr %rmmio.i26.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rmmio.i26.i, align 4
  %add.ptr.i.i23.i = getelementptr i8, ptr %39, i32 1560
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i23.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  %41 = and i32 %40, -8193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  tail call void @arm_heavy_mb() #9
  %42 = ptrtoint ptr %rmmio.i26.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rmmio.i26.i, align 4
  %add.ptr.i25.i.i = getelementptr i8, ptr %43, i32 1560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i, i32 %41) #9, !srcloc !34
  %44 = ptrtoint ptr %rmmio.i26.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rmmio.i26.i, align 4
  %add.ptr.i.i25.i = getelementptr i8, ptr %45, i32 2096
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i25.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  %47 = and i32 %46, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  tail call void @arm_heavy_mb() #9
  %48 = ptrtoint ptr %rmmio.i26.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rmmio.i26.i, align 4
  %add.ptr.i25.i26.i = getelementptr i8, ptr %49, i32 2096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i26.i, i32 %47) #9, !srcloc !34
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %1, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool10.not = icmp eq i8 %51, 0
  br i1 %tobool10.not, label %if.end9.if.end12_crit_edge, label %if.then11

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %ps_priv.i.i = getelementptr inbounds %struct.radeon_ps, ptr %3, i32 0, i32 9
  %52 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ps_priv.i.i, align 4
  %vddc.i = getelementptr inbounds %struct.rv6xx_ps, ptr %53, i32 0, i32 2, i32 2
  %54 = ptrtoint ptr %vddc.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %vddc.i, align 4
  tail call void @radeon_atom_set_voltage(ptr noundef %rdev, i16 noundef zeroext %55, i8 noundef zeroext 1) #9
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9.if.end12_crit_edge
  %dynamic_pcie_gen2 = getelementptr inbounds %struct.rv6xx_power_info, ptr %1, i32 0, i32 4
  %56 = ptrtoint ptr %dynamic_pcie_gen2 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %dynamic_pcie_gen2, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool13.not = icmp eq i8 %57, 0
  br i1 %tobool13.not, label %if.end12.if.end15_crit_edge, label %if.then14

if.end12.if.end15_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @rv6xx_enable_dynamic_pcie_gen2(ptr noundef %rdev, ptr noundef %3, i1 noundef zeroext false)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end12.if.end15_crit_edge
  %irq = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55
  %58 = ptrtoint ptr %irq to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %irq, align 8, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool16.not = icmp eq i8 %59, 0
  br i1 %tobool16.not, label %if.end15.if.end23_crit_edge, label %land.lhs.true

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end15
  %int_thermal_type = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 44
  %60 = ptrtoint ptr %int_thermal_type to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %int_thermal_type, align 4
  %call18 = tail call zeroext i1 @r600_is_internal_thermal_sensor(i32 noundef %61) #9
  br i1 %call18, label %if.then19, label %land.lhs.true.if.end23_crit_edge

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %dpm_thermal = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 9
  %62 = ptrtoint ptr %dpm_thermal to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %dpm_thermal, align 4
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %63 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %asic, align 8
  %irq21 = getelementptr inbounds %struct.radeon_asic, ptr %64, i32 0, i32 15
  %65 = ptrtoint ptr %irq21 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %irq21, align 4
  %call22 = tail call i32 %66(ptr noundef %rdev) #9
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %land.lhs.true.if.end23_crit_edge, %if.end15.if.end23_crit_edge
  %gfx_clock_gating = getelementptr inbounds %struct.rv6xx_power_info, ptr %1, i32 0, i32 7
  %67 = ptrtoint ptr %gfx_clock_gating to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %gfx_clock_gating, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool24.not = icmp eq i8 %68, 0
  br i1 %tobool24.not, label %if.end23.if.end26_crit_edge, label %if.then25

if.end23.if.end26_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @r600_gfx_clockgating_enable(ptr noundef %rdev, i1 noundef zeroext false) #9
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end23.if.end26_crit_edge
  tail call void @r600_stop_dpm(ptr noundef %rdev) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_set_at(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_enable_thermal_protection(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_wait_for_power_level(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @r600_is_internal_thermal_sensor(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_stop_dpm(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv6xx_dpm_set_power_state(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  %dividers.i.i.i = alloca %struct.atom_clock_dividers, align 4
  %step.i.i = alloca %struct.rv6xx_sclk_stepping, align 4
  %mask.i.i165 = alloca i32, align 4
  %set_pins.i.i166 = alloca i32, align 4
  %mask.i.i = alloca i32, align 4
  %set_pins.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %requested_ps = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 3
  %2 = ptrtoint ptr %requested_ps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %requested_ps, align 4
  %current_ps = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 2
  %4 = ptrtoint ptr %current_ps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %current_ps, align 4
  %restricted_levels = getelementptr inbounds %struct.rv6xx_power_info, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %restricted_levels to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %restricted_levels, align 4
  %ps_priv.i.i = getelementptr inbounds %struct.radeon_ps, ptr %3, i32 0, i32 9
  %7 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ps_priv.i.i, align 4
  %ps_priv.i21.i = getelementptr inbounds %struct.radeon_ps, ptr %5, i32 0, i32 9
  %9 = ptrtoint ptr %ps_priv.i21.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ps_priv.i21.i, align 4
  %vclk.i = getelementptr inbounds %struct.radeon_ps, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %vclk.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vclk.i, align 4
  %vclk2.i = getelementptr inbounds %struct.radeon_ps, ptr %5, i32 0, i32 3
  %13 = ptrtoint ptr %vclk2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vclk2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp.i = icmp eq i32 %12, %14
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %dclk.i = getelementptr inbounds %struct.radeon_ps, ptr %3, i32 0, i32 4
  %15 = ptrtoint ptr %dclk.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dclk.i, align 4
  %dclk3.i = getelementptr inbounds %struct.radeon_ps, ptr %5, i32 0, i32 4
  %17 = ptrtoint ptr %dclk3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dclk3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp4.i = icmp eq i32 %16, %18
  br i1 %cmp4.i, label %land.lhs.true.i.rv6xx_set_uvd_clock_before_set_eng_clock.exit_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i.rv6xx_set_uvd_clock_before_set_eng_clock.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv6xx_set_uvd_clock_before_set_eng_clock.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %8, align 4
  %21 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp7.not.i = icmp ult i32 %20, %22
  br i1 %cmp7.not.i, label %if.end9.i, label %if.end.i.rv6xx_set_uvd_clock_before_set_eng_clock.exit_crit_edge

if.end.i.rv6xx_set_uvd_clock_before_set_eng_clock.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv6xx_set_uvd_clock_before_set_eng_clock.exit

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %asic.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %23 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %asic.i, align 8
  %set_uvd_clocks.i = getelementptr inbounds %struct.radeon_asic, ptr %24, i32 0, i32 20, i32 12
  %25 = ptrtoint ptr %set_uvd_clocks.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %set_uvd_clocks.i, align 4
  %dclk11.i = getelementptr inbounds %struct.radeon_ps, ptr %3, i32 0, i32 4
  %27 = ptrtoint ptr %dclk11.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dclk11.i, align 4
  %call12.i = tail call i32 %26(ptr noundef %rdev, i32 noundef %12, i32 noundef %28) #9
  br label %rv6xx_set_uvd_clock_before_set_eng_clock.exit

rv6xx_set_uvd_clock_before_set_eng_clock.exit:    ; preds = %if.end9.i, %if.end.i.rv6xx_set_uvd_clock_before_set_eng_clock.exit_crit_edge, %land.lhs.true.i.rv6xx_set_uvd_clock_before_set_eng_clock.exit_crit_edge
  tail call void @r600_set_vrc(ptr noundef %rdev, i32 noundef 0) #9
  tail call void @r600_power_level_enable(ptr noundef %rdev, i32 noundef 0, i1 noundef zeroext true) #9
  tail call void @r600_set_at(ptr noundef %rdev, i32 noundef 65535, i32 noundef 65535, i32 noundef 65535, i32 noundef 65535) #9
  %thermal_protection = getelementptr inbounds %struct.rv6xx_power_info, ptr %1, i32 0, i32 5
  %29 = ptrtoint ptr %thermal_protection to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %thermal_protection, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not = icmp eq i8 %30, 0
  br i1 %tobool.not, label %rv6xx_set_uvd_clock_before_set_eng_clock.exit.if.end_crit_edge, label %if.then

rv6xx_set_uvd_clock_before_set_eng_clock.exit.if.end_crit_edge: ; preds = %rv6xx_set_uvd_clock_before_set_eng_clock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %rv6xx_set_uvd_clock_before_set_eng_clock.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @r600_enable_thermal_protection(ptr noundef %rdev, i1 noundef zeroext false) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %rv6xx_set_uvd_clock_before_set_eng_clock.exit.if.end_crit_edge
  tail call void @r600_wait_for_power_level(ptr noundef %rdev, i32 noundef 0) #9
  tail call void @r600_power_level_enable(ptr noundef %rdev, i32 noundef 2, i1 noundef zeroext false) #9
  tail call void @r600_power_level_enable(ptr noundef %rdev, i32 noundef 1, i1 noundef zeroext false) #9
  %31 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ps_priv.i.i, align 4
  %33 = ptrtoint ptr %ps_priv.i21.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ps_priv.i21.i, align 4
  %35 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %priv.i, align 4
  %low.i = getelementptr inbounds %struct.rv6xx_ps, ptr %34, i32 0, i32 2
  %37 = ptrtoint ptr %low.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %low.i, align 4
  %low3.i = getelementptr inbounds %struct.rv6xx_ps, ptr %32, i32 0, i32 2
  %39 = ptrtoint ptr %low3.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %low3.i, align 4
  %medium_sclk_index.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %36, i32 0, i32 15, i32 6
  tail call fastcc void @rv6xx_generate_steps(ptr noundef %rdev, i32 noundef %38, i32 noundef %40, i32 noundef 0, ptr noundef %medium_sclk_index.i) #9
  %41 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %priv.i, align 4
  %low_mclk_index.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %42, i32 0, i32 15, i32 10
  %43 = ptrtoint ptr %low_mclk_index.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %low_mclk_index.i, align 4
  %idxprom.i = zext i8 %44 to i32
  %arrayidx.i = getelementptr %struct.rv6xx_power_info, ptr %42, i32 0, i32 15, i32 1, i32 %idxprom.i
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i, align 4
  tail call fastcc void @rv6xx_program_mclk_stepping_entry(ptr noundef %rdev, i32 noundef 3, i32 noundef %46) #9
  tail call void @r600_power_level_set_voltage_index(ptr noundef %rdev, i32 noundef 1, i32 noundef 1) #9
  tail call void @r600_power_level_set_mem_clock_index(ptr noundef %rdev, i32 noundef 1, i32 noundef 3) #9
  %medium_sclk_index.i162 = getelementptr inbounds %struct.rv6xx_power_info, ptr %42, i32 0, i32 15, i32 6
  %47 = ptrtoint ptr %medium_sclk_index.i162 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %medium_sclk_index.i162, align 4
  %conv.i = zext i8 %48 to i32
  tail call void @r600_power_level_set_eng_clock_index(ptr noundef %rdev, i32 noundef 1, i32 noundef %conv.i) #9
  tail call void @r600_power_level_set_watermark_id(ptr noundef %rdev, i32 noundef 1, i32 noundef 0) #9
  %rmmio.i34.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %49 = ptrtoint ptr %rmmio.i34.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rmmio.i34.i.i, align 4
  %add.ptr.i35.i.i = getelementptr i8, ptr %50, i32 2084
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35.i.i) #9, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  %52 = and i32 %51, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  tail call void @arm_heavy_mb() #9
  %53 = ptrtoint ptr %rmmio.i34.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rmmio.i34.i.i, align 4
  %add.ptr.i46.i.i = getelementptr i8, ptr %54, i32 2084
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46.i.i, i32 %52) #9, !srcloc !34
  %pcie_gen2.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %42, i32 0, i32 15, i32 4
  %55 = ptrtoint ptr %pcie_gen2.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %pcie_gen2.i, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.i = icmp ne i8 %56, 0
  tail call void @r600_power_level_set_pcie_gen2(ptr noundef %rdev, i32 noundef 1, i1 noundef zeroext %tobool.i) #9
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %1, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool3.not = icmp eq i8 %58, 0
  br i1 %tobool3.not, label %if.end.if.end10_crit_edge, label %if.then4

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then4:                                         ; preds = %if.end
  %59 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ps_priv.i.i, align 4
  %61 = ptrtoint ptr %ps_priv.i21.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ps_priv.i21.i, align 4
  %vddc.i = getelementptr inbounds %struct.rv6xx_ps, ptr %60, i32 0, i32 2, i32 2
  %63 = ptrtoint ptr %vddc.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %vddc.i, align 4
  %vddc3.i = getelementptr inbounds %struct.rv6xx_ps, ptr %62, i32 0, i32 2, i32 2
  %65 = ptrtoint ptr %vddc3.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %vddc3.i, align 4
  %67 = tail call i16 @llvm.umax.i16(i16 %64, i16 %66) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i.i) #9
  %68 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -1, ptr %mask.i.i, align 4, !annotation !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %set_pins.i.i) #9
  %69 = ptrtoint ptr %set_pins.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -1, ptr %set_pins.i.i, align 4, !annotation !38
  %call.i.i = call i32 @radeon_atom_get_voltage_gpio_settings(ptr noundef %rdev, i16 noundef zeroext %67, i8 noundef zeroext 1, ptr noundef nonnull %set_pins.i.i, ptr noundef nonnull %mask.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then4.rv6xx_set_sw_voltage_to_safe.exit_crit_edge

if.then4.rv6xx_set_sw_voltage_to_safe.exit_crit_edge: ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv6xx_set_sw_voltage_to_safe.exit

if.end.i.i:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %set_pins.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %set_pins.i.i, align 4
  %conv.i.i = zext i32 %71 to i64
  call void @r600_voltage_control_program_voltages(ptr noundef %rdev, i32 noundef 3, i64 noundef %conv.i.i) #9
  br label %rv6xx_set_sw_voltage_to_safe.exit

rv6xx_set_sw_voltage_to_safe.exit:                ; preds = %if.end.i.i, %if.then4.rv6xx_set_sw_voltage_to_safe.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %set_pins.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i.i) #9
  %72 = ptrtoint ptr %rmmio.i34.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rmmio.i34.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %73, i32 1560
  %74 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !36
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  %75 = or i32 %74, -1073741824
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  call void @arm_heavy_mb() #9
  %76 = ptrtoint ptr %rmmio.i34.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rmmio.i34.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %77, i32 1560
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %75) #9, !srcloc !34
  %platform_caps = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 10
  %78 = ptrtoint ptr %platform_caps to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %platform_caps, align 4
  %and = and i32 %79, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %rv6xx_set_sw_voltage_to_safe.exit.if.end10_crit_edge, label %if.then8

rv6xx_set_sw_voltage_to_safe.exit.if.end10_crit_edge: ; preds = %rv6xx_set_sw_voltage_to_safe.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then8:                                         ; preds = %rv6xx_set_sw_voltage_to_safe.exit
  %80 = ptrtoint ptr %ps_priv.i21.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ps_priv.i21.i, align 4
  %vddc.i168 = getelementptr inbounds %struct.rv6xx_ps, ptr %81, i32 0, i32 2, i32 2
  %82 = ptrtoint ptr %vddc.i168 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %vddc.i168, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i.i165) #9
  %84 = ptrtoint ptr %mask.i.i165 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 -1, ptr %mask.i.i165, align 4, !annotation !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %set_pins.i.i166) #9
  %85 = ptrtoint ptr %set_pins.i.i166 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 -1, ptr %set_pins.i.i166, align 4, !annotation !38
  %call.i.i169 = call i32 @radeon_atom_get_voltage_gpio_settings(ptr noundef %rdev, i16 noundef zeroext %83, i8 noundef zeroext 1, ptr noundef nonnull %set_pins.i.i166, ptr noundef nonnull %mask.i.i165) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i169)
  %tobool.not.i.i170 = icmp eq i32 %call.i.i169, 0
  br i1 %tobool.not.i.i170, label %if.end.i.i172, label %if.then8.rv6xx_set_sw_voltage_to_low.exit_crit_edge

if.then8.rv6xx_set_sw_voltage_to_low.exit_crit_edge: ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv6xx_set_sw_voltage_to_low.exit

if.end.i.i172:                                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %86 = ptrtoint ptr %set_pins.i.i166 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %set_pins.i.i166, align 4
  %conv.i.i171 = zext i32 %87 to i64
  call void @r600_voltage_control_program_voltages(ptr noundef %rdev, i32 noundef 3, i64 noundef %conv.i.i171) #9
  br label %rv6xx_set_sw_voltage_to_low.exit

rv6xx_set_sw_voltage_to_low.exit:                 ; preds = %if.end.i.i172, %if.then8.rv6xx_set_sw_voltage_to_low.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %set_pins.i.i166) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i.i165) #9
  %88 = ptrtoint ptr %rmmio.i34.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %rmmio.i34.i.i, align 4
  %add.ptr.i.i174 = getelementptr i8, ptr %89, i32 1560
  %90 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i174) #9, !srcloc !36
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  %91 = or i32 %90, -1073741824
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  call void @arm_heavy_mb() #9
  %92 = ptrtoint ptr %rmmio.i34.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %rmmio.i34.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %93, i32 1560
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 %91) #9, !srcloc !34
  br label %if.end10

if.end10:                                         ; preds = %rv6xx_set_sw_voltage_to_low.exit, %rv6xx_set_sw_voltage_to_safe.exit.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %platform_caps13 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 10
  %94 = ptrtoint ptr %platform_caps13 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %platform_caps13, align 4
  %and14 = and i32 %95, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end10.if.end17_crit_edge, label %if.then16

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then16:                                        ; preds = %if.end10
  %96 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ps_priv.i.i, align 4
  %flags.i = getelementptr inbounds %struct.rv6xx_ps, ptr %97, i32 0, i32 2, i32 3
  %98 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %99, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then16.do.body8.i_crit_edge, label %land.lhs.true.i176

if.then16.do.body8.i_crit_edge:                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body8.i

land.lhs.true.i176:                               ; preds = %if.then16
  %100 = ptrtoint ptr %ps_priv.i21.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ps_priv.i21.i, align 4
  %flags3.i = getelementptr inbounds %struct.rv6xx_ps, ptr %101, i32 0, i32 2, i32 3
  %102 = ptrtoint ptr %flags3.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %flags3.i, align 4
  %and4.i = and i32 %103, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i176.do.body8.i_crit_edge, label %do.body.i

land.lhs.true.i176.do.body8.i_crit_edge:          ; preds = %land.lhs.true.i176
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body8.i

do.body.i:                                        ; preds = %land.lhs.true.i176
  call void @__sanitizer_cov_trace_pc() #11
  %104 = ptrtoint ptr %rmmio.i34.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %rmmio.i34.i.i, align 4
  %add.ptr.i.i178 = getelementptr i8, ptr %105, i32 1560
  %106 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i178) #9, !srcloc !36
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  %107 = or i32 %106, 512
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  call void @arm_heavy_mb() #9
  %108 = ptrtoint ptr %rmmio.i34.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %rmmio.i34.i.i, align 4
  %add.ptr.i26.i = getelementptr i8, ptr %109, i32 1560
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i, i32 %107) #9, !srcloc !34
  br label %if.end17

do.body8.i:                                       ; preds = %land.lhs.true.i176.do.body8.i_crit_edge, %if.then16.do.body8.i_crit_edge
  %110 = ptrtoint ptr %rmmio.i34.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %rmmio.i34.i.i, align 4
  %add.ptr.i30.i = getelementptr i8, ptr %111, i32 1560
  %112 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30.i) #9, !srcloc !36
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  %113 = and i32 %112, -513
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  call void @arm_heavy_mb() #9
  %114 = ptrtoint ptr %rmmio.i34.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %rmmio.i34.i.i, align 4
  %add.ptr.i34.i = getelementptr i8, ptr %115, i32 1560
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i, i32 %113) #9, !srcloc !34
  br label %if.end17

if.end17:                                         ; preds = %do.body8.i, %do.body.i, %if.end10.if.end17_crit_edge
  %dynamic_pcie_gen2 = getelementptr inbounds %struct.rv6xx_power_info, ptr %1, i32 0, i32 4
  %116 = ptrtoint ptr %dynamic_pcie_gen2 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %dynamic_pcie_gen2, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool18.not = icmp eq i8 %117, 0
  br i1 %tobool18.not, label %if.end17.if.end20_crit_edge, label %if.then19

if.end17.if.end20_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then19:                                        ; preds = %if.end17
  %118 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ps_priv.i.i, align 4
  %120 = ptrtoint ptr %ps_priv.i21.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ps_priv.i21.i, align 4
  %flags.i181 = getelementptr inbounds %struct.rv6xx_ps, ptr %119, i32 0, i32 2, i32 3
  %122 = ptrtoint ptr %flags.i181 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %flags.i181, align 4
  %flags3.i182 = getelementptr inbounds %struct.rv6xx_ps, ptr %121, i32 0, i32 2, i32 3
  %124 = ptrtoint ptr %flags3.i182 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %flags3.i182, align 4
  %126 = xor i32 %125, %123
  %127 = and i32 %126, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %cmp.not.i = icmp eq i32 %127, 0
  br i1 %cmp.not.i, label %if.then19.if.end20_crit_edge, label %if.then.i

if.then19.if.end20_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then.i:                                        ; preds = %if.then19
  %pciep_rreg.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 37
  %128 = ptrtoint ptr %pciep_rreg.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %pciep_rreg.i.i, align 4
  %call.i.i183 = call i32 %129(ptr noundef %rdev, i32 noundef 164) #9
  %and.i.i = and i32 %call.i.i183, 1
  %pciep_wreg.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 38
  %130 = ptrtoint ptr %pciep_wreg.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %pciep_wreg.i.i, align 8
  call void %131(ptr noundef %rdev, i32 noundef 164, i32 noundef %and.i.i) #9
  %132 = ptrtoint ptr %pciep_rreg.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %pciep_rreg.i.i, align 4
  %call2.i.i = call i32 %133(ptr noundef %rdev, i32 noundef 164) #9
  %or.i.i = or i32 %call2.i.i, 128
  %134 = ptrtoint ptr %pciep_wreg.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %pciep_wreg.i.i, align 8
  call void %135(ptr noundef %rdev, i32 noundef 164, i32 noundef %or.i.i) #9
  %usec_timeout.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %136 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %usec_timeout.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %cmp31.i.i = icmp sgt i32 %137, 0
  br i1 %cmp31.i.i, label %if.then.i.for.body.i.i_crit_edge, label %if.then.i.rv6xx_force_pcie_gen1.exit.i_crit_edge

if.then.i.rv6xx_force_pcie_gen1.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv6xx_force_pcie_gen1.exit.i

if.then.i.for.body.i.i_crit_edge:                 ; preds = %if.then.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i185.for.body.i.i_crit_edge, %if.then.i.for.body.i.i_crit_edge
  %i.032.i.i = phi i32 [ %inc.i.i, %if.end.i.i185.for.body.i.i_crit_edge ], [ 0, %if.then.i.for.body.i.i_crit_edge ]
  %138 = ptrtoint ptr %pciep_rreg.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %pciep_rreg.i.i, align 4
  %call5.i.i = call i32 %139(ptr noundef %rdev, i32 noundef 164) #9
  %and6.i.i = and i32 %call5.i.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool.not.i.i184 = icmp eq i32 %and6.i.i, 0
  br i1 %tobool.not.i.i184, label %for.body.i.i.rv6xx_force_pcie_gen1.exit.i_crit_edge, label %if.end.i.i185

for.body.i.i.rv6xx_force_pcie_gen1.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv6xx_force_pcie_gen1.exit.i

if.end.i.i185:                                    ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %140 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %140(i32 noundef 214748) #9
  %inc.i.i = add nuw nsw i32 %i.032.i.i, 1
  %141 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %usec_timeout.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %142
  br i1 %cmp.i.i, label %if.end.i.i185.for.body.i.i_crit_edge, label %if.end.i.i185.rv6xx_force_pcie_gen1.exit.i_crit_edge

if.end.i.i185.rv6xx_force_pcie_gen1.exit.i_crit_edge: ; preds = %if.end.i.i185
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv6xx_force_pcie_gen1.exit.i

if.end.i.i185.for.body.i.i_crit_edge:             ; preds = %if.end.i.i185
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

rv6xx_force_pcie_gen1.exit.i:                     ; preds = %if.end.i.i185.rv6xx_force_pcie_gen1.exit.i_crit_edge, %for.body.i.i.rv6xx_force_pcie_gen1.exit.i_crit_edge, %if.then.i.rv6xx_force_pcie_gen1.exit.i_crit_edge
  %143 = ptrtoint ptr %pciep_rreg.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %pciep_rreg.i.i, align 4
  %call8.i.i = call i32 %144(ptr noundef %rdev, i32 noundef 164) #9
  %and9.i.i = and i32 %call8.i.i, -129
  %145 = ptrtoint ptr %pciep_wreg.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %pciep_wreg.i.i, align 8
  call void %146(ptr noundef %rdev, i32 noundef 164, i32 noundef %and9.i.i) #9
  br label %if.end20

if.end20:                                         ; preds = %rv6xx_force_pcie_gen1.exit.i, %if.then19.if.end20_crit_edge, %if.end17.if.end20_crit_edge
  %147 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %1, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool22.not = icmp eq i8 %148, 0
  br i1 %tobool22.not, label %if.end20.if.end24_crit_edge, label %if.then23

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %149 = ptrtoint ptr %rmmio.i34.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %rmmio.i34.i.i, align 4
  %add.ptr.i.i188 = getelementptr i8, ptr %150, i32 1560
  %151 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i188) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  %152 = and i32 %151, -262145
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  call void @arm_heavy_mb() #9
  %153 = ptrtoint ptr %rmmio.i34.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %rmmio.i34.i.i, align 4
  %add.ptr.i25.i189 = getelementptr i8, ptr %154, i32 1560
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i189, i32 %152) #9, !srcloc !34
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end20.if.end24_crit_edge
  %155 = ptrtoint ptr %platform_caps13 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %platform_caps13, align 4
  %and28 = and i32 %156, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end24.if.end31_crit_edge, label %if.then30

if.end24.if.end31_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then30:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %157 = ptrtoint ptr %rmmio.i34.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %rmmio.i34.i.i, align 4
  %add.ptr.i.i192 = getelementptr i8, ptr %158, i32 1560
  %159 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i192) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  %160 = and i32 %159, -1025
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  call void @arm_heavy_mb() #9
  %161 = ptrtoint ptr %rmmio.i34.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %rmmio.i34.i.i, align 4
  %add.ptr.i25.i193 = getelementptr i8, ptr %162, i32 1560
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i193, i32 %160) #9, !srcloc !34
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end24.if.end31_crit_edge
  %163 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %1, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool33.not = icmp eq i8 %164, 0
  br i1 %tobool33.not, label %if.end31.if.end45_crit_edge, label %if.then34

if.end31.if.end45_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then34:                                        ; preds = %if.end31
  %165 = ptrtoint ptr %platform_caps13 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %platform_caps13, align 4
  %and38 = and i32 %166, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.then34.if.end42_crit_edge, label %if.then40

if.then34.if.end42_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then40:                                        ; preds = %if.then34
  %167 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %ps_priv.i.i, align 4
  %169 = ptrtoint ptr %ps_priv.i21.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %ps_priv.i21.i, align 4
  %vddc.i196 = getelementptr inbounds %struct.rv6xx_ps, ptr %168, i32 0, i32 2, i32 2
  %171 = ptrtoint ptr %vddc.i196 to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %vddc.i196, align 4
  %vddc3.i197 = getelementptr inbounds %struct.rv6xx_ps, ptr %170, i32 0, i32 2, i32 2
  %173 = ptrtoint ptr %vddc3.i197 to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %vddc3.i197, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %172, i16 %174)
  %cmp.i198 = icmp ugt i16 %172, %174
  br i1 %cmp.i198, label %if.then.i199, label %if.then40.if.end42_crit_edge

if.then40.if.end42_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then.i199:                                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  %call10.i = call fastcc i32 @rv6xx_step_sw_voltage(ptr noundef %rdev, i16 noundef zeroext %174, i16 noundef zeroext %172) #9
  br label %if.end42

if.end42:                                         ; preds = %if.then.i199, %if.then40.if.end42_crit_edge, %if.then34.if.end42_crit_edge
  %voltage_response_time = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 11
  %175 = ptrtoint ptr %voltage_response_time to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %voltage_response_time, align 4
  %add = add i32 %176, 999
  %div = udiv i32 %add, 1000
  call void @msleep(i32 noundef %div) #9
  br label %if.end45

if.end45:                                         ; preds = %if.end42, %if.end31.if.end45_crit_edge
  call void @r600_power_level_enable(ptr noundef %rdev, i32 noundef 1, i1 noundef zeroext true) #9
  call void @r600_power_level_enable(ptr noundef %rdev, i32 noundef 0, i1 noundef zeroext false) #9
  call void @r600_wait_for_power_level_unequal(ptr noundef %rdev, i32 noundef 0) #9
  %177 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %ps_priv.i.i, align 4
  %179 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %priv.i, align 4
  %low_sclk_index.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %180, i32 0, i32 15, i32 7
  %181 = ptrtoint ptr %low_sclk_index.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 0, ptr %low_sclk_index.i, align 1
  %low.i202 = getelementptr inbounds %struct.rv6xx_ps, ptr %178, i32 0, i32 2
  %182 = ptrtoint ptr %low.i202 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %low.i202, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %step.i.i) #9
  %184 = ptrtoint ptr %step.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 -1, ptr %step.i.i, align 4, !annotation !38
  %185 = getelementptr inbounds %struct.rv6xx_sclk_stepping, ptr %step.i.i, i32 0, i32 1
  %186 = ptrtoint ptr %185 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 -1, ptr %185, align 4, !annotation !38
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dividers.i.i.i) #9
  %187 = call ptr @memset(ptr %dividers.i.i.i, i32 255, i32 32)
  %call.i.i.i = call i32 @radeon_atom_get_clock_dividers(ptr noundef %rdev, i8 noundef zeroext 2, i32 noundef %183, i1 noundef zeroext false, ptr noundef nonnull %dividers.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end45.rv6xx_generate_low_step.exit_crit_edge

if.end45.rv6xx_generate_low_step.exit_crit_edge:  ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv6xx_generate_low_step.exit

if.end.i.i.i:                                     ; preds = %if.end45
  %enable_post_div.i.i.i = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers.i.i.i, i32 0, i32 3
  %188 = ptrtoint ptr %enable_post_div.i.i.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %enable_post_div.i.i.i, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %189)
  %tobool1.not.i.i.i = icmp eq i8 %189, 0
  br i1 %tobool1.not.i.i.i, label %if.end.i.i.i.if.end6.i.i.i_crit_edge, label %if.then2.i.i.i

if.end.i.i.i.if.end6.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i.i.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %190 = ptrtoint ptr %dividers.i.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %dividers.i.i.i, align 4
  %and.i.i.i = and i32 %191, 15
  %add.i.i.i = add nuw nsw i32 %and.i.i.i, 2
  %shr.i.i.i = lshr i32 %191, 4
  %add4.i.i.i = add nuw nsw i32 %add.i.i.i, %shr.i.i.i
  br label %if.end6.i.i.i

if.end6.i.i.i:                                    ; preds = %if.then2.i.i.i, %if.end.i.i.i.if.end6.i.i.i_crit_edge
  %add4.sink.i.i.i = phi i32 [ %add4.i.i.i, %if.then2.i.i.i ], [ 1, %if.end.i.i.i.if.end6.i.i.i_crit_edge ]
  %192 = ptrtoint ptr %185 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %add4.sink.i.i.i, ptr %185, align 4
  %mul.i.i.i = mul i32 %add4.sink.i.i.i, %183
  %193 = ptrtoint ptr %step.i.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %mul.i.i.i, ptr %step.i.i, align 4
  br label %rv6xx_generate_low_step.exit

rv6xx_generate_low_step.exit:                     ; preds = %if.end6.i.i.i, %if.end45.rv6xx_generate_low_step.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dividers.i.i.i) #9
  call fastcc void @rv6xx_output_stepping(ptr noundef %rdev, i32 noundef 0, ptr noundef nonnull %step.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %step.i.i) #9
  %194 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %priv.i, align 4
  %medium_sclk_index.i204 = getelementptr inbounds %struct.rv6xx_power_info, ptr %195, i32 0, i32 15, i32 6
  %196 = ptrtoint ptr %medium_sclk_index.i204 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %medium_sclk_index.i204, align 4
  %conv.i205 = zext i8 %197 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %197)
  %cmp1.i.i = icmp ugt i8 %197, 1
  br i1 %cmp1.i.i, label %rv6xx_generate_low_step.exit.for.body.i.i207_crit_edge, label %rv6xx_generate_low_step.exit.rv6xx_invalidate_intermediate_steps.exit_crit_edge

rv6xx_generate_low_step.exit.rv6xx_invalidate_intermediate_steps.exit_crit_edge: ; preds = %rv6xx_generate_low_step.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv6xx_invalidate_intermediate_steps.exit

rv6xx_generate_low_step.exit.for.body.i.i207_crit_edge: ; preds = %rv6xx_generate_low_step.exit
  br label %for.body.i.i207

for.body.i.i207:                                  ; preds = %for.body.i.i207.for.body.i.i207_crit_edge, %rv6xx_generate_low_step.exit.for.body.i.i207_crit_edge
  %step_index.02.i.i = phi i32 [ %inc.i.i206, %for.body.i.i207.for.body.i.i207_crit_edge ], [ 1, %rv6xx_generate_low_step.exit.for.body.i.i207_crit_edge ]
  call void @r600_engine_clock_entry_enable(ptr noundef %rdev, i32 noundef %step_index.02.i.i, i1 noundef zeroext false) #9
  %inc.i.i206 = add nuw nsw i32 %step_index.02.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i206, %conv.i205
  br i1 %exitcond.not.i.i, label %for.body.i.i207.rv6xx_invalidate_intermediate_steps.exit_crit_edge, label %for.body.i.i207.for.body.i.i207_crit_edge

for.body.i.i207.for.body.i.i207_crit_edge:        ; preds = %for.body.i.i207
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i207

for.body.i.i207.rv6xx_invalidate_intermediate_steps.exit_crit_edge: ; preds = %for.body.i.i207
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv6xx_invalidate_intermediate_steps.exit

rv6xx_invalidate_intermediate_steps.exit:         ; preds = %for.body.i.i207.rv6xx_invalidate_intermediate_steps.exit_crit_edge, %rv6xx_generate_low_step.exit.rv6xx_invalidate_intermediate_steps.exit_crit_edge
  call fastcc void @rv6xx_calculate_stepping_parameters(ptr noundef %rdev, ptr noundef %3)
  call fastcc void @rv6xx_program_stepping_parameters_lowest_entry(ptr noundef %rdev)
  %198 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %priv.i, align 4
  call void @r600_power_level_set_voltage_index(ptr noundef %rdev, i32 noundef 0, i32 noundef 0) #9
  call void @r600_power_level_set_mem_clock_index(ptr noundef %rdev, i32 noundef 0, i32 noundef 0) #9
  call void @r600_power_level_set_eng_clock_index(ptr noundef %rdev, i32 noundef 0, i32 noundef 0) #9
  call void @r600_power_level_set_watermark_id(ptr noundef %rdev, i32 noundef 0, i32 noundef 0) #9
  %pcie_gen2.i209 = getelementptr inbounds %struct.rv6xx_power_info, ptr %199, i32 0, i32 15, i32 4
  %200 = ptrtoint ptr %pcie_gen2.i209 to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %pcie_gen2.i209, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %201)
  %tobool.i210 = icmp ne i8 %201, 0
  call void @r600_power_level_set_pcie_gen2(ptr noundef %rdev, i32 noundef 0, i1 noundef zeroext %tobool.i210) #9
  call void @r600_power_level_enable(ptr noundef %rdev, i32 noundef 0, i1 noundef zeroext true) #9
  call void @r600_wait_for_power_level(ptr noundef %rdev, i32 noundef 0) #9
  call void @r600_power_level_enable(ptr noundef %rdev, i32 noundef 1, i1 noundef zeroext false) #9
  %202 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %1, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %203)
  %tobool47.not = icmp eq i8 %203, 0
  br i1 %tobool47.not, label %rv6xx_invalidate_intermediate_steps.exit.if.end60_crit_edge, label %if.then48

rv6xx_invalidate_intermediate_steps.exit.if.end60_crit_edge: ; preds = %rv6xx_invalidate_intermediate_steps.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.then48:                                        ; preds = %rv6xx_invalidate_intermediate_steps.exit
  %204 = ptrtoint ptr %platform_caps13 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %platform_caps13, align 4
  %and52 = and i32 %205, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.then48.if.end59_crit_edge, label %if.then54

if.then48.if.end59_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then54:                                        ; preds = %if.then48
  %206 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %ps_priv.i.i, align 4
  %208 = ptrtoint ptr %ps_priv.i21.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %ps_priv.i21.i, align 4
  %vddc.i212 = getelementptr inbounds %struct.rv6xx_ps, ptr %207, i32 0, i32 2, i32 2
  %210 = ptrtoint ptr %vddc.i212 to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %vddc.i212, align 4
  %vddc3.i213 = getelementptr inbounds %struct.rv6xx_ps, ptr %209, i32 0, i32 2, i32 2
  %212 = ptrtoint ptr %vddc3.i213 to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %vddc3.i213, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %211, i16 %213)
  %cmp.i214 = icmp ult i16 %211, %213
  br i1 %cmp.i214, label %rv6xx_step_voltage_if_decreasing.exit, label %if.then54.if.end59_crit_edge

if.then54.if.end59_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

rv6xx_step_voltage_if_decreasing.exit:            ; preds = %if.then54
  %call10.i215 = call fastcc i32 @rv6xx_step_sw_voltage(ptr noundef %rdev, i16 noundef zeroext %213, i16 noundef zeroext %211) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i215)
  %tobool56.not = icmp eq i32 %call10.i215, 0
  br i1 %tobool56.not, label %rv6xx_step_voltage_if_decreasing.exit.if.end59_crit_edge, label %rv6xx_step_voltage_if_decreasing.exit.cleanup_crit_edge

rv6xx_step_voltage_if_decreasing.exit.cleanup_crit_edge: ; preds = %rv6xx_step_voltage_if_decreasing.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

rv6xx_step_voltage_if_decreasing.exit.if.end59_crit_edge: ; preds = %rv6xx_step_voltage_if_decreasing.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.end59:                                         ; preds = %rv6xx_step_voltage_if_decreasing.exit.if.end59_crit_edge, %if.then54.if.end59_crit_edge, %if.then48.if.end59_crit_edge
  %214 = ptrtoint ptr %rmmio.i34.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %rmmio.i34.i.i, align 4
  %add.ptr.i.i218 = getelementptr i8, ptr %215, i32 1560
  %216 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i218) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  %217 = or i32 %216, 262144
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  call void @arm_heavy_mb() #9
  %218 = ptrtoint ptr %rmmio.i34.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %rmmio.i34.i.i, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %219, i32 1560
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i, i32 %217) #9, !srcloc !34
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %rv6xx_invalidate_intermediate_steps.exit.if.end60_crit_edge
  %220 = ptrtoint ptr %platform_caps13 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %platform_caps13, align 4
  %and64 = and i32 %221, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.end60.if.end67_crit_edge, label %if.then66

if.end60.if.end67_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.then66:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  %222 = ptrtoint ptr %rmmio.i34.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %rmmio.i34.i.i, align 4
  %add.ptr.i.i222 = getelementptr i8, ptr %223, i32 1560
  %224 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i222) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  %225 = or i32 %224, 1024
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  call void @arm_heavy_mb() #9
  %226 = ptrtoint ptr %rmmio.i34.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %rmmio.i34.i.i, align 4
  %add.ptr.i17.i223 = getelementptr i8, ptr %227, i32 1560
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i223, i32 %225) #9, !srcloc !34
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %if.end60.if.end67_crit_edge
  %228 = ptrtoint ptr %dynamic_pcie_gen2 to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %dynamic_pcie_gen2, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %229)
  %tobool69.not = icmp eq i8 %229, 0
  br i1 %tobool69.not, label %if.end67.if.end71_crit_edge, label %if.then70

if.end67.if.end71_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

if.then70:                                        ; preds = %if.end67
  %pciep_rreg.i.i226 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 37
  %230 = ptrtoint ptr %pciep_rreg.i.i226 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %pciep_rreg.i.i226, align 4
  %call.i.i227 = call i32 %231(ptr noundef %rdev, i32 noundef 164) #9
  %and.i.i228 = and i32 %call.i.i227, -12289
  %or.i.i229 = or i32 %and.i.i228, 4096
  %pciep_wreg.i.i230 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 38
  %232 = ptrtoint ptr %pciep_wreg.i.i230 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %pciep_wreg.i.i230, align 8
  call void %233(ptr noundef %rdev, i32 noundef 164, i32 noundef %or.i.i229) #9
  %234 = ptrtoint ptr %pciep_rreg.i.i226 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %pciep_rreg.i.i226, align 4
  %call.i10.i = call i32 %235(ptr noundef %rdev, i32 noundef 164) #9
  %236 = and i32 %call.i10.i, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 25165824, i32 %236)
  %.not.i.i = icmp eq i32 %236, 25165824
  br i1 %.not.i.i, label %if.then.i.i, label %if.then70.rv6xx_enable_dynamic_pcie_gen2.exit_crit_edge

if.then70.rv6xx_enable_dynamic_pcie_gen2.exit_crit_edge: ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv6xx_enable_dynamic_pcie_gen2.exit

if.then.i.i:                                      ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #11
  %or.i11.i = or i32 %call.i10.i, 1
  %237 = ptrtoint ptr %pciep_wreg.i.i230 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %pciep_wreg.i.i230, align 8
  call void %238(ptr noundef %rdev, i32 noundef 164, i32 noundef %or.i11.i) #9
  br label %rv6xx_enable_dynamic_pcie_gen2.exit

rv6xx_enable_dynamic_pcie_gen2.exit:              ; preds = %if.then.i.i, %if.then70.rv6xx_enable_dynamic_pcie_gen2.exit_crit_edge
  call void @r600_enable_dynamic_pcie_gen2(ptr noundef %rdev, i1 noundef zeroext true) #9
  br label %if.end71

if.end71:                                         ; preds = %rv6xx_enable_dynamic_pcie_gen2.exit, %if.end67.if.end71_crit_edge
  %family.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %239 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %240)
  %cmp.i232 = icmp ugt i32 %240, 30
  %241 = ptrtoint ptr %rmmio.i34.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %rmmio.i34.i.i, align 4
  br i1 %cmp.i232, label %do.body.i235, label %do.body1.i

do.body.i235:                                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i234 = getelementptr i8, ptr %242, i32 32664
  %243 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i234) #9, !srcloc !36
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  %244 = or i32 %243, 65536
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  call void @arm_heavy_mb() #9
  %245 = ptrtoint ptr %rmmio.i34.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %rmmio.i34.i.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %246, i32 32664
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 %244) #9, !srcloc !34
  br label %rv6xx_reset_lvtm_data_sync.exit

do.body1.i:                                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i22.i = getelementptr i8, ptr %242, i32 31452
  %247 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i) #9, !srcloc !36
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  %248 = or i32 %247, 65536
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  call void @arm_heavy_mb() #9
  %249 = ptrtoint ptr %rmmio.i34.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %rmmio.i34.i.i, align 4
  %add.ptr.i26.i236 = getelementptr i8, ptr %250, i32 31452
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i236, i32 %248) #9, !srcloc !34
  br label %rv6xx_reset_lvtm_data_sync.exit

rv6xx_reset_lvtm_data_sync.exit:                  ; preds = %do.body1.i, %do.body.i235
  %251 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %ps_priv.i.i, align 4
  %253 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %priv.i, align 4
  %low_sclk_index.i240 = getelementptr inbounds %struct.rv6xx_power_info, ptr %254, i32 0, i32 15, i32 7
  %255 = ptrtoint ptr %low_sclk_index.i240 to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 0, ptr %low_sclk_index.i240, align 1
  %low.i241 = getelementptr inbounds %struct.rv6xx_ps, ptr %252, i32 0, i32 2
  %256 = ptrtoint ptr %low.i241 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %low.i241, align 4
  %medium.i = getelementptr inbounds %struct.rv6xx_ps, ptr %252, i32 0, i32 1
  %258 = ptrtoint ptr %medium.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %medium.i, align 4
  %medium_sclk_index.i242 = getelementptr inbounds %struct.rv6xx_power_info, ptr %254, i32 0, i32 15, i32 6
  call fastcc void @rv6xx_generate_steps(ptr noundef %rdev, i32 noundef %257, i32 noundef %259, i32 noundef 0, ptr noundef %medium_sclk_index.i242) #9
  %260 = ptrtoint ptr %medium.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %medium.i, align 4
  %262 = ptrtoint ptr %252 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %252, align 4
  %264 = ptrtoint ptr %medium_sclk_index.i242 to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %medium_sclk_index.i242, align 4
  %conv.i243 = zext i8 %265 to i32
  %high_sclk_index.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %254, i32 0, i32 15, i32 5
  call fastcc void @rv6xx_generate_steps(ptr noundef %rdev, i32 noundef %261, i32 noundef %263, i32 noundef %conv.i243, ptr noundef %high_sclk_index.i) #9
  call fastcc void @rv6xx_program_stepping_parameters_except_lowest_entry(ptr noundef %rdev)
  %266 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %priv.i, align 4
  %low_vddc_index.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %267, i32 0, i32 15, i32 13
  %268 = ptrtoint ptr %low_vddc_index.i to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %low_vddc_index.i, align 1
  %conv.i245 = zext i8 %269 to i32
  call void @r600_power_level_set_voltage_index(ptr noundef %rdev, i32 noundef 0, i32 noundef %conv.i245) #9
  %low_mclk_index.i246 = getelementptr inbounds %struct.rv6xx_power_info, ptr %267, i32 0, i32 15, i32 10
  %270 = ptrtoint ptr %low_mclk_index.i246 to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %low_mclk_index.i246, align 4
  %conv2.i = zext i8 %271 to i32
  call void @r600_power_level_set_mem_clock_index(ptr noundef %rdev, i32 noundef 0, i32 noundef %conv2.i) #9
  %low_sclk_index.i247 = getelementptr inbounds %struct.rv6xx_power_info, ptr %267, i32 0, i32 15, i32 7
  %272 = ptrtoint ptr %low_sclk_index.i247 to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %low_sclk_index.i247, align 1
  %conv4.i = zext i8 %273 to i32
  call void @r600_power_level_set_eng_clock_index(ptr noundef %rdev, i32 noundef 0, i32 noundef %conv4.i) #9
  call void @r600_power_level_set_watermark_id(ptr noundef %rdev, i32 noundef 0, i32 noundef 0) #9
  %pcie_gen2.i248 = getelementptr inbounds %struct.rv6xx_power_info, ptr %267, i32 0, i32 15, i32 4
  %274 = ptrtoint ptr %pcie_gen2.i248 to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %pcie_gen2.i248, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %275)
  %tobool.i249 = icmp ne i8 %275, 0
  call void @r600_power_level_set_pcie_gen2(ptr noundef %rdev, i32 noundef 0, i1 noundef zeroext %tobool.i249) #9
  %276 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %priv.i, align 4
  %medium_vddc_index.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %277, i32 0, i32 15, i32 12
  %278 = ptrtoint ptr %medium_vddc_index.i to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %medium_vddc_index.i, align 2
  %conv.i251 = zext i8 %279 to i32
  call void @r600_power_level_set_voltage_index(ptr noundef %rdev, i32 noundef 1, i32 noundef %conv.i251) #9
  %medium_mclk_index.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %277, i32 0, i32 15, i32 9
  %280 = ptrtoint ptr %medium_mclk_index.i to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %medium_mclk_index.i, align 1
  %conv2.i252 = zext i8 %281 to i32
  call void @r600_power_level_set_mem_clock_index(ptr noundef %rdev, i32 noundef 1, i32 noundef %conv2.i252) #9
  %medium_sclk_index.i253 = getelementptr inbounds %struct.rv6xx_power_info, ptr %277, i32 0, i32 15, i32 6
  %282 = ptrtoint ptr %medium_sclk_index.i253 to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %medium_sclk_index.i253, align 4
  %conv4.i254 = zext i8 %283 to i32
  call void @r600_power_level_set_eng_clock_index(ptr noundef %rdev, i32 noundef 1, i32 noundef %conv4.i254) #9
  call void @r600_power_level_set_watermark_id(ptr noundef %rdev, i32 noundef 1, i32 noundef 0) #9
  %arrayidx.i255 = getelementptr %struct.rv6xx_power_info, ptr %277, i32 0, i32 15, i32 4, i32 1
  %284 = ptrtoint ptr %arrayidx.i255 to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %arrayidx.i255, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %285)
  %tobool.i256 = icmp ne i8 %285, 0
  call void @r600_power_level_set_pcie_gen2(ptr noundef %rdev, i32 noundef 1, i1 noundef zeroext %tobool.i256) #9
  %286 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %priv.i, align 4
  %high_vddc_index.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %287, i32 0, i32 15, i32 11
  %288 = ptrtoint ptr %high_vddc_index.i to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %high_vddc_index.i, align 1
  %conv.i258 = zext i8 %289 to i32
  call void @r600_power_level_set_voltage_index(ptr noundef %rdev, i32 noundef 2, i32 noundef %conv.i258) #9
  %high_mclk_index.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %287, i32 0, i32 15, i32 8
  %290 = ptrtoint ptr %high_mclk_index.i to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %high_mclk_index.i, align 2
  %conv2.i259 = zext i8 %291 to i32
  call void @r600_power_level_set_mem_clock_index(ptr noundef %rdev, i32 noundef 2, i32 noundef %conv2.i259) #9
  %high_sclk_index.i260 = getelementptr inbounds %struct.rv6xx_power_info, ptr %287, i32 0, i32 15, i32 5
  %292 = ptrtoint ptr %high_sclk_index.i260 to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %high_sclk_index.i260, align 1
  %conv4.i261 = zext i8 %293 to i32
  call void @r600_power_level_set_eng_clock_index(ptr noundef %rdev, i32 noundef 2, i32 noundef %conv4.i261) #9
  call void @r600_power_level_set_watermark_id(ptr noundef %rdev, i32 noundef 2, i32 noundef 1) #9
  %arrayidx.i262 = getelementptr %struct.rv6xx_power_info, ptr %287, i32 0, i32 15, i32 4, i32 2
  %294 = ptrtoint ptr %arrayidx.i262 to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %arrayidx.i262, align 2, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %295)
  %tobool.i263 = icmp ne i8 %295, 0
  call void @r600_power_level_set_pcie_gen2(ptr noundef %rdev, i32 noundef 2, i1 noundef zeroext %tobool.i263) #9
  %296 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %priv.i, align 4
  %restricted_levels.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %297, i32 0, i32 14
  %298 = ptrtoint ptr %restricted_levels.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %restricted_levels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %299)
  %cmp.i265 = icmp ult i32 %299, 2
  br i1 %cmp.i265, label %if.then.i266, label %rv6xx_reset_lvtm_data_sync.exit.rv6xx_enable_medium.exit_crit_edge

rv6xx_reset_lvtm_data_sync.exit.rv6xx_enable_medium.exit_crit_edge: ; preds = %rv6xx_reset_lvtm_data_sync.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv6xx_enable_medium.exit

if.then.i266:                                     ; preds = %rv6xx_reset_lvtm_data_sync.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @r600_power_level_enable(ptr noundef %rdev, i32 noundef 1, i1 noundef zeroext true) #9
  br label %rv6xx_enable_medium.exit

rv6xx_enable_medium.exit:                         ; preds = %if.then.i266, %rv6xx_reset_lvtm_data_sync.exit.rv6xx_enable_medium.exit_crit_edge
  %300 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %priv.i, align 4
  %restricted_levels.i269 = getelementptr inbounds %struct.rv6xx_power_info, ptr %301, i32 0, i32 14
  %302 = ptrtoint ptr %restricted_levels.i269 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %restricted_levels.i269, align 4
  %304 = zext i32 %303 to i64
  call void @__sanitizer_cov_trace_switch(i64 %304, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %303, label %rv6xx_enable_medium.exit.rv6xx_enable_high.exit_crit_edge [
    i32 0, label %rv6xx_enable_medium.exit.if.then.i270_crit_edge
    i32 3, label %rv6xx_enable_medium.exit.if.then.i270_crit_edge296
  ]

rv6xx_enable_medium.exit.if.then.i270_crit_edge296: ; preds = %rv6xx_enable_medium.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i270

rv6xx_enable_medium.exit.if.then.i270_crit_edge:  ; preds = %rv6xx_enable_medium.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i270

rv6xx_enable_medium.exit.rv6xx_enable_high.exit_crit_edge: ; preds = %rv6xx_enable_medium.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv6xx_enable_high.exit

if.then.i270:                                     ; preds = %rv6xx_enable_medium.exit.if.then.i270_crit_edge, %rv6xx_enable_medium.exit.if.then.i270_crit_edge296
  call void @r600_power_level_enable(ptr noundef %rdev, i32 noundef 2, i1 noundef zeroext true) #9
  br label %rv6xx_enable_high.exit

rv6xx_enable_high.exit:                           ; preds = %if.then.i270, %rv6xx_enable_medium.exit.rv6xx_enable_high.exit_crit_edge
  %305 = ptrtoint ptr %thermal_protection to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %thermal_protection, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %306)
  %tobool73.not = icmp eq i8 %306, 0
  br i1 %tobool73.not, label %rv6xx_enable_high.exit.if.end75_crit_edge, label %if.then74

rv6xx_enable_high.exit.if.end75_crit_edge:        ; preds = %rv6xx_enable_high.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

if.then74:                                        ; preds = %rv6xx_enable_high.exit
  %307 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %priv.i, align 4
  %active_auto_throttle_sources.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %308, i32 0, i32 13
  %309 = ptrtoint ptr %active_auto_throttle_sources.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %active_auto_throttle_sources.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %310)
  %tobool.not.i273 = icmp eq i32 %310, 0
  br i1 %tobool.not.i273, label %if.then74.if.end75_crit_edge, label %if.then.i274

if.then74.if.end75_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

if.then.i274:                                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #11
  call void @r600_enable_thermal_protection(ptr noundef %rdev, i1 noundef zeroext true) #9
  br label %if.end75

if.end75:                                         ; preds = %if.then.i274, %if.then74.if.end75_crit_edge, %rv6xx_enable_high.exit.if.end75_crit_edge
  call void @r600_set_vrc(ptr noundef %rdev, i32 noundef 49155) #9
  %311 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %priv.i, align 4
  %rp.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %312, i32 0, i32 15, i32 14
  %313 = ptrtoint ptr %rp.i to i32
  call void @__asan_load1_noabort(i32 %313)
  %314 = load i8, ptr %rp.i, align 4
  %conv.i277 = zext i8 %314 to i32
  %bsp.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %312, i32 0, i32 12
  %315 = ptrtoint ptr %bsp.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %bsp.i, align 4
  %mul.i = mul i32 %316, %conv.i277
  %div.i = udiv i32 %mul.i, 200
  %arrayidx3.i = getelementptr %struct.rv6xx_power_info, ptr %312, i32 0, i32 15, i32 14, i32 1
  %317 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i278 = zext i8 %318 to i32
  %mul6.i = mul i32 %316, %conv4.i278
  %div7.i = udiv i32 %mul6.i, 200
  %arrayidx9.i = getelementptr %struct.rv6xx_power_info, ptr %312, i32 0, i32 15, i32 15, i32 2
  %319 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %arrayidx9.i, align 1
  %conv10.i = zext i8 %320 to i32
  %mul12.i = mul i32 %316, %conv10.i
  %div13.i = udiv i32 %mul12.i, 200
  %arrayidx16.i = getelementptr %struct.rv6xx_power_info, ptr %312, i32 0, i32 15, i32 15, i32 1
  %321 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %322 to i32
  %mul19.i = mul i32 %316, %conv17.i
  %div20.i = udiv i32 %mul19.i, 200
  call void @r600_set_at(ptr noundef %rdev, i32 noundef %div.i, i32 noundef %div7.i, i32 noundef %div13.i, i32 noundef %div20.i) #9
  %323 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %ps_priv.i.i, align 4
  %325 = ptrtoint ptr %ps_priv.i21.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %ps_priv.i21.i, align 4
  %327 = ptrtoint ptr %vclk.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %vclk.i, align 4
  %329 = ptrtoint ptr %vclk2.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %vclk2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %328, i32 %330)
  %cmp.i283 = icmp eq i32 %328, %330
  br i1 %cmp.i283, label %land.lhs.true.i287, label %if.end75.if.end.i288_crit_edge

if.end75.if.end.i288_crit_edge:                   ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i288

land.lhs.true.i287:                               ; preds = %if.end75
  %dclk.i284 = getelementptr inbounds %struct.radeon_ps, ptr %3, i32 0, i32 4
  %331 = ptrtoint ptr %dclk.i284 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %dclk.i284, align 4
  %dclk3.i285 = getelementptr inbounds %struct.radeon_ps, ptr %5, i32 0, i32 4
  %333 = ptrtoint ptr %dclk3.i285 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %dclk3.i285, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %332, i32 %334)
  %cmp4.i286 = icmp eq i32 %332, %334
  br i1 %cmp4.i286, label %land.lhs.true.i287.cleanup_crit_edge, label %land.lhs.true.i287.if.end.i288_crit_edge

land.lhs.true.i287.if.end.i288_crit_edge:         ; preds = %land.lhs.true.i287
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i288

land.lhs.true.i287.cleanup_crit_edge:             ; preds = %land.lhs.true.i287
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i288:                                      ; preds = %land.lhs.true.i287.if.end.i288_crit_edge, %if.end75.if.end.i288_crit_edge
  %335 = ptrtoint ptr %324 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %324, align 4
  %337 = ptrtoint ptr %326 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %326, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %336, i32 %338)
  %cmp7.i = icmp ult i32 %336, %338
  br i1 %cmp7.i, label %if.end.i288.cleanup_crit_edge, label %if.end9.i293

if.end.i288.cleanup_crit_edge:                    ; preds = %if.end.i288
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9.i293:                                     ; preds = %if.end.i288
  call void @__sanitizer_cov_trace_pc() #11
  %asic.i289 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %339 = ptrtoint ptr %asic.i289 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %asic.i289, align 8
  %set_uvd_clocks.i290 = getelementptr inbounds %struct.radeon_asic, ptr %340, i32 0, i32 20, i32 12
  %341 = ptrtoint ptr %set_uvd_clocks.i290 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %set_uvd_clocks.i290, align 4
  %dclk11.i291 = getelementptr inbounds %struct.radeon_ps, ptr %3, i32 0, i32 4
  %343 = ptrtoint ptr %dclk11.i291 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %dclk11.i291, align 4
  %call12.i292 = call i32 %342(ptr noundef %rdev, i32 noundef %328, i32 noundef %344) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end9.i293, %if.end.i288.cleanup_crit_edge, %land.lhs.true.i287.cleanup_crit_edge, %rv6xx_step_voltage_if_decreasing.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10.i215, %rv6xx_step_voltage_if_decreasing.exit.cleanup_crit_edge ], [ 0, %land.lhs.true.i287.cleanup_crit_edge ], [ 0, %if.end.i288.cleanup_crit_edge ], [ 0, %if.end9.i293 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_wait_for_power_level_unequal(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv6xx_setup_asic(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @r600_enable_acpi_pm(ptr noundef %rdev) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_aspm to i32))
  %0 = load i32, ptr @radeon_aspm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %entry.if.end16_crit_edge, label %if.then

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then:                                          ; preds = %entry
  %platform_caps = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 10
  %1 = ptrtoint ptr %platform_caps to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %platform_caps, align 4
  %and = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then1

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %pciep_rreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 37
  %3 = ptrtoint ptr %pciep_rreg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pciep_rreg.i, align 4
  %call.i = tail call i32 %4(ptr noundef %rdev, i32 noundef 160) #9
  %and.i = and i32 %call.i, -3841
  %or.i = or i32 %and.i, 768
  %pciep_wreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 38
  %5 = ptrtoint ptr %pciep_wreg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pciep_wreg.i, align 8
  tail call void %6(ptr noundef %rdev, i32 noundef 160, i32 noundef %or.i) #9
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then.if.end_crit_edge
  %7 = ptrtoint ptr %platform_caps to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %platform_caps, align 4
  %and5 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.if.end8_crit_edge, label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %pciep_rreg.i23 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 37
  %9 = ptrtoint ptr %pciep_rreg.i23 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pciep_rreg.i23, align 4
  %call.i24 = tail call i32 %10(ptr noundef %rdev, i32 noundef 160) #9
  %and.i25 = and i32 %call.i24, -16904193
  %or.i26 = or i32 %and.i25, 16384
  %pciep_wreg.i27 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 38
  %11 = ptrtoint ptr %pciep_wreg.i27 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pciep_wreg.i27, align 8
  tail call void %12(ptr noundef %rdev, i32 noundef 160, i32 noundef %or.i26) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  %13 = ptrtoint ptr %platform_caps to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %platform_caps, align 4
  %and12 = and i32 %14, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end8.if.end16_crit_edge, label %if.then14

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %pciep_rreg.i28 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 37
  %15 = ptrtoint ptr %pciep_rreg.i28 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pciep_rreg.i28, align 4
  %call.i29 = tail call i32 %16(ptr noundef %rdev, i32 noundef 160) #9
  %and.i30 = and i32 %call.i29, -61441
  %or.i31 = or i32 %and.i30, 32768
  %pciep_wreg.i32 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 38
  %17 = ptrtoint ptr %pciep_wreg.i32 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pciep_wreg.i32, align 8
  tail call void %18(ptr noundef %rdev, i32 noundef 160, i32 noundef %or.i31) #9
  %call1.i = tail call i32 @rv370_pcie_rreg(ptr noundef %rdev, i32 noundef 64) #9
  %or2.i = and i32 %call1.i, -4633
  %or5.i = or i32 %or2.i, 4104
  tail call void @rv370_pcie_wreg(ptr noundef %rdev, i32 noundef 64, i32 noundef %or5.i) #9
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end8.if.end16_crit_edge, %entry.if.end16_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_enable_acpi_pm(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv6xx_dpm_display_configuration_changed(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2012
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !36
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  %and.i = and i32 %3, -251658241
  %new_active_crtcs.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 14
  %4 = ptrtoint ptr %new_active_crtcs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %new_active_crtcs.i, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or2.i = or i32 %and.i, 218103808
  br label %rv6xx_program_display_gap.exit

if.else.i:                                        ; preds = %entry
  %and6.i = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.else11.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %or10.i = or i32 %and.i, 117440512
  br label %rv6xx_program_display_gap.exit

if.else11.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %or13.i = or i32 %3, 251658240
  br label %rv6xx_program_display_gap.exit

rv6xx_program_display_gap.exit:                   ; preds = %if.else11.i, %if.then8.i, %if.then.i
  %tmp.0.i = phi i32 [ %or2.i, %if.then.i ], [ %or10.i, %if.then8.i ], [ %or13.i, %if.else11.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  tail call void @arm_heavy_mb() #9
  %6 = tail call i32 @llvm.bswap.i32(i32 %tmp.0.i) #9
  %7 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i28.i = getelementptr i8, ptr %8, i32 2012
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28.i, i32 %6) #9, !srcloc !34
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv6xx_dpm_init(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  %vddc.i.i = alloca i16, align 2
  %vddc41.i.i = alloca i16, align 2
  %vddci.i.i = alloca i16, align 2
  %mvdd.i.i = alloca i16, align 2
  %data_offset.i = alloca i16, align 2
  %frev.i = alloca i8, align 1
  %crev.i = alloca i8, align 1
  %ss = alloca %struct.radeon_atom_ss, align 2
  %dividers = alloca %struct.atom_clock_dividers, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ss) #9
  %0 = call ptr @memset(ptr %ss, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dividers) #9
  %1 = call ptr @memset(ptr %dividers, i32 255, i32 32)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 96) #12
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %priv, align 4
  %call1 = tail call i32 @r600_get_platform_caps(ptr noundef %rdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %mode_info1.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset.i) #9
  %4 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %data_offset.i, align 2, !annotation !38
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i) #9
  %5 = ptrtoint ptr %frev.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %frev.i, align 1, !annotation !38
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i) #9
  %6 = ptrtoint ptr %crev.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %crev.i, align 1, !annotation !38
  %7 = ptrtoint ptr %mode_info1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mode_info1.i, align 4
  %call.i = call zeroext i1 @atom_parse_data_header(ptr noundef %8, i32 noundef 15, ptr noundef null, ptr noundef nonnull %frev.i, ptr noundef nonnull %crev.i, ptr noundef nonnull %data_offset.i) #9
  br i1 %call.i, label %if.end.i, label %if.end3.rv6xx_parse_power_table.exit.thread_crit_edge

if.end3.rv6xx_parse_power_table.exit.thread_crit_edge: ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv6xx_parse_power_table.exit.thread

if.end.i:                                         ; preds = %if.end3
  %9 = ptrtoint ptr %mode_info1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mode_info1.i, align 4
  %bios.i = getelementptr inbounds %struct.atom_context, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %bios.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bios.i, align 4
  %13 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %data_offset.i, align 2
  %conv.i = zext i16 %14 to i32
  %add.ptr.i = getelementptr i8, ptr %12, i32 %conv.i
  %ucNumStates.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr.i, i32 0, i32 2
  %15 = ptrtoint ptr %ucNumStates.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ucNumStates.i, align 1
  %conv3.i = zext i8 %16 to i32
  %17 = mul nuw nsw i32 %conv3.i, 40
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %17, i32 noundef 3520) #13
  %dpm.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52
  %18 = ptrtoint ptr %dpm.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call8.i.i.i, ptr %dpm.i, align 4
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %if.end.i.rv6xx_parse_power_table.exit.thread_crit_edge, label %for.cond.preheader.i

if.end.i.rv6xx_parse_power_table.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv6xx_parse_power_table.exit.thread

for.cond.preheader.i:                             ; preds = %if.end.i
  %19 = ptrtoint ptr %ucNumStates.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ucNumStates.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp142.not.i = icmp eq i8 %20, 0
  br i1 %cmp142.not.i, label %for.cond.preheader.i.if.end7_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end7_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %usStateArrayOffset.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr.i, i32 0, i32 6
  %ucStateEntrySize.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr.i, i32 0, i32 3
  %usNonClockInfoArrayOffset.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr.i, i32 0, i32 8
  %ucNonClockSize.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr.i, i32 0, i32 5
  %boot_ps.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 4
  %uvd_ps.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 5
  %usClockInfoArrayOffset.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr.i, i32 0, i32 7
  %ucClockInfoSize.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr.i, i32 0, i32 4
  %family.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %default_mclk.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 41, i32 5
  %default_sclk.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 41, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc75.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0143.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc76.i, %for.inc75.i.for.body.i_crit_edge ]
  %21 = ptrtoint ptr %mode_info1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mode_info1.i, align 4
  %bios15.i = getelementptr inbounds %struct.atom_context, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %bios15.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bios15.i, align 4
  %25 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %data_offset.i, align 2
  %conv16.i = zext i16 %26 to i32
  %add.ptr17.i = getelementptr i8, ptr %24, i32 %conv16.i
  %27 = ptrtoint ptr %usStateArrayOffset.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %usStateArrayOffset.i, align 1
  %29 = call i16 @llvm.bswap.i16(i16 %28) #9
  %conv18.i = zext i16 %29 to i32
  %add.ptr19.i = getelementptr i8, ptr %add.ptr17.i, i32 %conv18.i
  %30 = ptrtoint ptr %ucStateEntrySize.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ucStateEntrySize.i, align 1
  %conv20.i = zext i8 %31 to i32
  %mul.i = mul i32 %i.0143.i, %conv20.i
  %add.ptr21.i = getelementptr i8, ptr %add.ptr19.i, i32 %mul.i
  %32 = ptrtoint ptr %usNonClockInfoArrayOffset.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %usNonClockInfoArrayOffset.i, align 1
  %34 = call i16 @llvm.bswap.i16(i16 %33) #9
  %conv26.i = zext i16 %34 to i32
  %add.ptr27.i = getelementptr i8, ptr %add.ptr17.i, i32 %conv26.i
  %35 = ptrtoint ptr %add.ptr21.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %add.ptr21.i, align 1
  %conv28.i = zext i8 %36 to i32
  %37 = ptrtoint ptr %ucNonClockSize.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ucNonClockSize.i, align 1
  %conv29.i = zext i8 %38 to i32
  %mul30.i = mul nuw nsw i32 %conv29.i, %conv28.i
  %add.ptr31.i = getelementptr i8, ptr %add.ptr27.i, i32 %mul30.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %31)
  %tobool34.not.i = icmp eq i8 %31, 1
  br i1 %tobool34.not.i, label %for.body.i.for.inc75.i_crit_edge, label %if.then35.i

for.body.i.for.inc75.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc75.i

if.then35.i:                                      ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %39 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 3520, i32 noundef 48) #12
  %cmp37.i = icmp eq ptr %call7.i.i.i, null
  %40 = ptrtoint ptr %dpm.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dpm.i, align 4
  br i1 %cmp37.i, label %if.then39.i, label %if.end43.i

if.then39.i:                                      ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef %41) #9
  br label %rv6xx_parse_power_table.exit.thread

if.end43.i:                                       ; preds = %if.then35.i
  %ps_priv.i = getelementptr %struct.radeon_ps, ptr %41, i32 %i.0143.i, i32 9
  %42 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call7.i.i.i, ptr %ps_priv.i, align 4
  %43 = ptrtoint ptr %dpm.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dpm.i, align 4
  %arrayidx50.i = getelementptr %struct.radeon_ps, ptr %44, i32 %i.0143.i
  %ulCapsAndSettings.i.i = getelementptr inbounds %struct._ATOM_PPLIB_NONCLOCK_INFO, ptr %add.ptr31.i, i32 0, i32 3
  %45 = ptrtoint ptr %ulCapsAndSettings.i.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %ulCapsAndSettings.i.i, align 1
  %47 = call i32 @llvm.bswap.i32(i32 %46) #9
  %48 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %arrayidx50.i, align 4
  %49 = ptrtoint ptr %add.ptr31.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 2)
  %50 = load i16, ptr %add.ptr31.i, align 1
  %51 = call i16 @llvm.bswap.i16(i16 %50) #9
  %conv.i.i = zext i16 %51 to i32
  %class.i.i = getelementptr %struct.radeon_ps, ptr %44, i32 %i.0143.i, i32 1
  %52 = ptrtoint ptr %class.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv.i.i, ptr %class.i.i, align 4
  %usClassification2.i.i = getelementptr inbounds %struct._ATOM_PPLIB_NONCLOCK_INFO, ptr %add.ptr31.i, i32 0, i32 5
  %53 = ptrtoint ptr %usClassification2.i.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 2)
  %54 = load i16, ptr %usClassification2.i.i, align 1
  %55 = call i16 @llvm.bswap.i16(i16 %54) #9
  %conv1.i.i = zext i16 %55 to i32
  %class2.i.i = getelementptr %struct.radeon_ps, ptr %44, i32 %i.0143.i, i32 2
  %56 = ptrtoint ptr %class2.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %conv1.i.i, ptr %class2.i.i, align 4
  %call.i.i = call zeroext i1 @r600_is_uvd_state(i32 noundef %conv.i.i, i32 noundef %conv1.i.i) #9
  %spec.select.i.i = select i1 %call.i.i, i32 40000, i32 0
  %spec.select33.i.i = select i1 %call.i.i, i32 30000, i32 0
  %57 = getelementptr %struct.radeon_ps, ptr %44, i32 %i.0143.i, i32 3
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %spec.select.i.i, ptr %57, align 4
  %59 = getelementptr %struct.radeon_ps, ptr %44, i32 %i.0143.i, i32 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %spec.select33.i.i, ptr %59, align 4
  %61 = ptrtoint ptr %class.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %class.i.i, align 4
  %and.i.i = and i32 %62, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end43.i.if.end9.i.i_crit_edge, label %if.then8.i.i

if.end43.i.if.end9.i.i_crit_edge:                 ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i.i

if.then8.i.i:                                     ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %boot_ps.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %arrayidx50.i, ptr %boot_ps.i.i, align 4
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.then8.i.i, %if.end43.i.if.end9.i.i_crit_edge
  %64 = ptrtoint ptr %class.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %class.i.i, align 4
  %and11.i.i = and i32 %65, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i)
  %tobool12.not.i.i = icmp eq i32 %and11.i.i, 0
  br i1 %tobool12.not.i.i, label %if.end9.i.i.rv6xx_parse_pplib_non_clock_info.exit.i_crit_edge, label %if.then13.i.i

if.end9.i.i.rv6xx_parse_pplib_non_clock_info.exit.i_crit_edge: ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv6xx_parse_pplib_non_clock_info.exit.i

if.then13.i.i:                                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %uvd_ps.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %arrayidx50.i, ptr %uvd_ps.i.i, align 4
  br label %rv6xx_parse_pplib_non_clock_info.exit.i

rv6xx_parse_pplib_non_clock_info.exit.i:          ; preds = %if.then13.i.i, %if.end9.i.i.rv6xx_parse_pplib_non_clock_info.exit.i_crit_edge
  %ucClockStateIndices.i = getelementptr inbounds %struct._ATOM_PPLIB_STATE, ptr %add.ptr21.i, i32 0, i32 1
  %67 = ptrtoint ptr %ucStateEntrySize.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %ucStateEntrySize.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %68)
  %cmp56139.i = icmp ugt i8 %68, 1
  br i1 %cmp56139.i, label %rv6xx_parse_pplib_non_clock_info.exit.i.for.body58.i_crit_edge, label %rv6xx_parse_pplib_non_clock_info.exit.i.for.inc75.i_crit_edge

rv6xx_parse_pplib_non_clock_info.exit.i.for.inc75.i_crit_edge: ; preds = %rv6xx_parse_pplib_non_clock_info.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc75.i

rv6xx_parse_pplib_non_clock_info.exit.i.for.body58.i_crit_edge: ; preds = %rv6xx_parse_pplib_non_clock_info.exit.i
  br label %for.body58.i

for.body58.i:                                     ; preds = %rv6xx_parse_pplib_clock_info.exit.i.for.body58.i_crit_edge, %rv6xx_parse_pplib_non_clock_info.exit.i.for.body58.i_crit_edge
  %j.0140.i = phi i32 [ %inc.i, %rv6xx_parse_pplib_clock_info.exit.i.for.body58.i_crit_edge ], [ 0, %rv6xx_parse_pplib_non_clock_info.exit.i.for.body58.i_crit_edge ]
  %69 = ptrtoint ptr %mode_info1.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mode_info1.i, align 4
  %bios60.i = getelementptr inbounds %struct.atom_context, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %bios60.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bios60.i, align 4
  %73 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %data_offset.i, align 2
  %conv61.i = zext i16 %74 to i32
  %add.ptr62.i = getelementptr i8, ptr %72, i32 %conv61.i
  %75 = ptrtoint ptr %usClockInfoArrayOffset.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 2)
  %76 = load i16, ptr %usClockInfoArrayOffset.i, align 1
  %77 = call i16 @llvm.bswap.i16(i16 %76) #9
  %conv63.i = zext i16 %77 to i32
  %add.ptr64.i = getelementptr i8, ptr %add.ptr62.i, i32 %conv63.i
  %arrayidx65.i = getelementptr i8, ptr %ucClockStateIndices.i, i32 %j.0140.i
  %78 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx65.i, align 1
  %conv66.i = zext i8 %79 to i32
  %80 = ptrtoint ptr %ucClockInfoSize.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %ucClockInfoSize.i, align 1
  %conv67.i = zext i8 %81 to i32
  %mul68.i = mul nuw nsw i32 %conv67.i, %conv66.i
  %add.ptr69.i = getelementptr i8, ptr %add.ptr64.i, i32 %mul68.i
  %82 = ptrtoint ptr %dpm.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dpm.i, align 4
  %ps_priv.i.i.i = getelementptr %struct.radeon_ps, ptr %83, i32 %i.0143.i, i32 9
  %84 = ptrtoint ptr %ps_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ps_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vddc.i.i) #9
  %86 = ptrtoint ptr %vddc.i.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 -1, ptr %vddc.i.i, align 2, !annotation !38
  %87 = zext i32 %j.0140.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %j.0140.i, label %for.body58.i.sw.epilog.i.i_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i
  ]

for.body58.i.sw.epilog.i.i_crit_edge:             ; preds = %for.body58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %for.body58.i
  call void @__sanitizer_cov_trace_pc() #11
  %low.i.i = getelementptr inbounds %struct.rv6xx_ps, ptr %85, i32 0, i32 2
  br label %sw.epilog.i.i

sw.bb1.i.i:                                       ; preds = %for.body58.i
  call void @__sanitizer_cov_trace_pc() #11
  %medium.i.i = getelementptr inbounds %struct.rv6xx_ps, ptr %85, i32 0, i32 1
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb1.i.i, %sw.bb.i.i, %for.body58.i.sw.epilog.i.i_crit_edge
  %pl.0.i.i = phi ptr [ %medium.i.i, %sw.bb1.i.i ], [ %low.i.i, %sw.bb.i.i ], [ %85, %for.body58.i.sw.epilog.i.i_crit_edge ]
  %88 = ptrtoint ptr %add.ptr69.i to i32
  call void @__asan_loadN_noabort(i32 %88, i32 2)
  %89 = load i16, ptr %add.ptr69.i, align 1
  %90 = call i16 @llvm.bswap.i16(i16 %89) #9
  %conv.i129.i = zext i16 %90 to i32
  %ucEngineClockHigh.i.i = getelementptr inbounds %struct._ATOM_PPLIB_R600_CLOCK_INFO, ptr %add.ptr69.i, i32 0, i32 1
  %91 = ptrtoint ptr %ucEngineClockHigh.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %ucEngineClockHigh.i.i, align 1
  %conv3.i.i = zext i8 %92 to i32
  %shl.i.i = shl nuw nsw i32 %conv3.i.i, 16
  %or.i.i = or i32 %shl.i.i, %conv.i129.i
  %usMemoryClockLow.i.i = getelementptr inbounds %struct._ATOM_PPLIB_R600_CLOCK_INFO, ptr %add.ptr69.i, i32 0, i32 2
  %93 = ptrtoint ptr %usMemoryClockLow.i.i to i32
  call void @__asan_loadN_noabort(i32 %93, i32 2)
  %94 = load i16, ptr %usMemoryClockLow.i.i, align 1
  %95 = call i16 @llvm.bswap.i16(i16 %94) #9
  %conv4.i.i = zext i16 %95 to i32
  %ucMemoryClockHigh.i.i = getelementptr inbounds %struct._ATOM_PPLIB_R600_CLOCK_INFO, ptr %add.ptr69.i, i32 0, i32 3
  %96 = ptrtoint ptr %ucMemoryClockHigh.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %ucMemoryClockHigh.i.i, align 1
  %conv5.i.i = zext i8 %97 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 16
  %or7.i.i = or i32 %shl6.i.i, %conv4.i.i
  %mclk8.i.i = getelementptr inbounds %struct.rv6xx_pl, ptr %pl.0.i.i, i32 0, i32 1
  %98 = ptrtoint ptr %mclk8.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %or7.i.i, ptr %mclk8.i.i, align 4
  %99 = ptrtoint ptr %pl.0.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %or.i.i, ptr %pl.0.i.i, align 4
  %usVDDC.i.i = getelementptr inbounds %struct._ATOM_PPLIB_R600_CLOCK_INFO, ptr %add.ptr69.i, i32 0, i32 4
  %100 = ptrtoint ptr %usVDDC.i.i to i32
  call void @__asan_loadN_noabort(i32 %100, i32 2)
  %101 = load i16, ptr %usVDDC.i.i, align 1
  %102 = call i16 @llvm.bswap.i16(i16 %101) #9
  %vddc10.i.i = getelementptr inbounds %struct.rv6xx_pl, ptr %pl.0.i.i, i32 0, i32 2
  %103 = ptrtoint ptr %vddc10.i.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %102, ptr %vddc10.i.i, align 4
  %ulFlags.i.i = getelementptr inbounds %struct._ATOM_PPLIB_R600_CLOCK_INFO, ptr %add.ptr69.i, i32 0, i32 7
  %104 = ptrtoint ptr %ulFlags.i.i to i32
  call void @__asan_loadN_noabort(i32 %104, i32 4)
  %105 = load i32, ptr %ulFlags.i.i, align 1
  %106 = call i32 @llvm.bswap.i32(i32 %105) #9
  %flags.i.i = getelementptr inbounds %struct.rv6xx_pl, ptr %pl.0.i.i, i32 0, i32 3
  %107 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %flags.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %101)
  %cmp.i.i = icmp eq i16 %101, 511
  br i1 %cmp.i.i, label %if.then.i.i, label %sw.epilog.i.i.if.end19.i.i_crit_edge

sw.epilog.i.i.if.end19.i.i_crit_edge:             ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i.i

if.then.i.i:                                      ; preds = %sw.epilog.i.i
  %call14.i.i = call i32 @radeon_atom_get_max_vddc(ptr noundef %rdev, i8 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %vddc.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %cmp15.i.i = icmp eq i32 %call14.i.i, 0
  br i1 %cmp15.i.i, label %if.then17.i.i, label %if.then.i.i.if.end19.i.i_crit_edge

if.then.i.i.if.end19.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i.i

if.then17.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %108 = ptrtoint ptr %vddc.i.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %vddc.i.i, align 2
  %110 = ptrtoint ptr %vddc10.i.i to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %109, ptr %vddc10.i.i, align 4
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %if.then17.i.i, %if.then.i.i.if.end19.i.i_crit_edge, %sw.epilog.i.i.if.end19.i.i_crit_edge
  %111 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %flags.i.i, align 4
  %and.i130.i = and i32 %112, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i130.i)
  %tobool.not.i131.i = icmp eq i32 %and.i130.i, 0
  br i1 %tobool.not.i131.i, label %if.end19.i.i.if.end37.i.i_crit_edge, label %if.then21.i.i

if.end19.i.i.if.end37.i.i_crit_edge:              ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37.i.i

if.then21.i.i:                                    ; preds = %if.end19.i.i
  %113 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %family.i.i, align 4
  %115 = and i32 %114, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %115)
  %switch.i.i = icmp eq i32 %115, 28
  br i1 %switch.i.i, label %if.then27.i.i, label %if.then21.i.i.if.end37.i.i_crit_edge

if.then21.i.i.if.end37.i.i_crit_edge:             ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37.i.i

if.then27.i.i:                                    ; preds = %if.then21.i.i
  %116 = ptrtoint ptr %vddc10.i.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %vddc10.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1100, i16 %117)
  %cmp30.i.i = icmp ult i16 %117, 1100
  br i1 %cmp30.i.i, label %if.then32.i.i, label %if.then27.i.i.if.end37.i.i_crit_edge

if.then27.i.i.if.end37.i.i_crit_edge:             ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37.i.i

if.then32.i.i:                                    ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and34.i.i = and i32 %112, -2
  %118 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %and34.i.i, ptr %flags.i.i, align 4
  br label %if.end37.i.i

if.end37.i.i:                                     ; preds = %if.then32.i.i, %if.then27.i.i.if.end37.i.i_crit_edge, %if.then21.i.i.if.end37.i.i_crit_edge, %if.end19.i.i.if.end37.i.i_crit_edge
  %class.i132.i = getelementptr %struct.radeon_ps, ptr %83, i32 %i.0143.i, i32 1
  %119 = ptrtoint ptr %class.i132.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %class.i132.i, align 4
  %and38.i.i = and i32 %120, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i.i)
  %tobool39.not.i.i = icmp eq i32 %and38.i.i, 0
  br i1 %tobool39.not.i.i, label %if.end37.i.i.rv6xx_parse_pplib_clock_info.exit.i_crit_edge, label %if.then40.i.i

if.end37.i.i.rv6xx_parse_pplib_clock_info.exit.i_crit_edge: ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv6xx_parse_pplib_clock_info.exit.i

if.then40.i.i:                                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vddc41.i.i) #9
  %121 = ptrtoint ptr %vddc41.i.i to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 -1, ptr %vddc41.i.i, align 2, !annotation !38
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vddci.i.i) #9
  %122 = ptrtoint ptr %vddci.i.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 -1, ptr %vddci.i.i, align 2, !annotation !38
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mvdd.i.i) #9
  %123 = ptrtoint ptr %mvdd.i.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 -1, ptr %mvdd.i.i, align 2, !annotation !38
  call void @radeon_atombios_get_default_voltages(ptr noundef %rdev, ptr noundef nonnull %vddc41.i.i, ptr noundef nonnull %vddci.i.i, ptr noundef nonnull %mvdd.i.i) #9
  %124 = ptrtoint ptr %default_mclk.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %default_mclk.i.i, align 4
  %126 = ptrtoint ptr %mclk8.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %mclk8.i.i, align 4
  %127 = ptrtoint ptr %default_sclk.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %default_sclk.i.i, align 4
  %129 = ptrtoint ptr %pl.0.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %pl.0.i.i, align 4
  %130 = ptrtoint ptr %vddc41.i.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %vddc41.i.i, align 2
  %132 = ptrtoint ptr %vddc10.i.i to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %131, ptr %vddc10.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mvdd.i.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vddci.i.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vddc41.i.i) #9
  br label %rv6xx_parse_pplib_clock_info.exit.i

rv6xx_parse_pplib_clock_info.exit.i:              ; preds = %if.then40.i.i, %if.end37.i.i.rv6xx_parse_pplib_clock_info.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vddc.i.i) #9
  %inc.i = add nuw nsw i32 %j.0140.i, 1
  %133 = ptrtoint ptr %ucStateEntrySize.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %ucStateEntrySize.i, align 1
  %conv54.i = zext i8 %134 to i32
  %sub55.i = add nsw i32 %conv54.i, -1
  %cmp56.i = icmp slt i32 %inc.i, %sub55.i
  br i1 %cmp56.i, label %rv6xx_parse_pplib_clock_info.exit.i.for.body58.i_crit_edge, label %rv6xx_parse_pplib_clock_info.exit.i.for.inc75.i_crit_edge

rv6xx_parse_pplib_clock_info.exit.i.for.inc75.i_crit_edge: ; preds = %rv6xx_parse_pplib_clock_info.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc75.i

rv6xx_parse_pplib_clock_info.exit.i.for.body58.i_crit_edge: ; preds = %rv6xx_parse_pplib_clock_info.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body58.i

for.inc75.i:                                      ; preds = %rv6xx_parse_pplib_clock_info.exit.i.for.inc75.i_crit_edge, %rv6xx_parse_pplib_non_clock_info.exit.i.for.inc75.i_crit_edge, %for.body.i.for.inc75.i_crit_edge
  %inc76.i = add nuw nsw i32 %i.0143.i, 1
  %135 = ptrtoint ptr %ucNumStates.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %ucNumStates.i, align 1
  %conv12.i = zext i8 %136 to i32
  %cmp.i = icmp ult i32 %inc76.i, %conv12.i
  br i1 %cmp.i, label %for.inc75.i.for.body.i_crit_edge, label %if.end7.loopexit

for.inc75.i.for.body.i_crit_edge:                 ; preds = %for.inc75.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

rv6xx_parse_power_table.exit.thread:              ; preds = %if.then39.i, %if.end.i.rv6xx_parse_power_table.exit.thread_crit_edge, %if.end3.rv6xx_parse_power_table.exit.thread_crit_edge
  %retval.3.i.ph = phi i32 [ -12, %if.then39.i ], [ -12, %if.end.i.rv6xx_parse_power_table.exit.thread_crit_edge ], [ -22, %if.end3.rv6xx_parse_power_table.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset.i) #9
  br label %cleanup

if.end7.loopexit:                                 ; preds = %for.inc75.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv12.i.le = zext i8 %136 to i32
  br label %if.end7

if.end7:                                          ; preds = %if.end7.loopexit, %for.cond.preheader.i.if.end7_crit_edge
  %.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.if.end7_crit_edge ], [ %conv12.i.le, %if.end7.loopexit ]
  %num_ps.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 1
  %137 = ptrtoint ptr %num_ps.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %.lcssa.i, ptr %num_ps.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset.i) #9
  %voltage_response_time = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 11
  %138 = ptrtoint ptr %voltage_response_time to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %voltage_response_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %cmp10 = icmp eq i32 %139, 0
  br i1 %cmp10, label %if.then11, label %if.end7.if.end15_crit_edge

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %140 = ptrtoint ptr %voltage_response_time to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 1000, ptr %voltage_response_time, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end7.if.end15_crit_edge
  %backbias_response_time = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 12
  %141 = ptrtoint ptr %backbias_response_time to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %backbias_response_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %cmp18 = icmp eq i32 %142, 0
  br i1 %cmp18, label %if.then19, label %if.end15.if.end23_crit_edge

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %143 = ptrtoint ptr %backbias_response_time to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 1000, ptr %backbias_response_time, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.end15.if.end23_crit_edge
  %call24 = call i32 @radeon_atom_get_clock_dividers(ptr noundef %rdev, i8 noundef zeroext 2, i32 noundef 0, i1 noundef zeroext false, ptr noundef nonnull %dividers) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end23.if.end28_crit_edge, label %if.then26

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %ref_div = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 2
  %144 = ptrtoint ptr %ref_div to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %ref_div, align 4
  %add = add i32 %145, 1
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end23.if.end28_crit_edge
  %add.sink = phi i32 [ %add, %if.then26 ], [ 4, %if.end23.if.end28_crit_edge ]
  %146 = getelementptr inbounds %struct.rv6xx_power_info, ptr %call7.i.i, i32 0, i32 9
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %add.sink, ptr %146, align 4
  %call29 = call i32 @radeon_atom_get_clock_dividers(ptr noundef %rdev, i8 noundef zeroext 1, i32 noundef 0, i1 noundef zeroext false, ptr noundef nonnull %dividers) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end28.if.end36_crit_edge, label %if.then31

if.end28.if.end36_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %ref_div32 = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 2
  %148 = ptrtoint ptr %ref_div32 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %ref_div32, align 4
  %add33 = add i32 %149, 1
  br label %if.end36

if.end36:                                         ; preds = %if.then31, %if.end28.if.end36_crit_edge
  %add33.sink = phi i32 [ %add33, %if.then31 ], [ 4, %if.end28.if.end36_crit_edge ]
  %150 = getelementptr inbounds %struct.rv6xx_power_info, ptr %call7.i.i, i32 0, i32 10
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %add33.sink, ptr %150, align 8
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %152 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %153)
  %cmp37 = icmp ugt i32 %153, 29
  %spec.select = zext i1 %cmp37 to i32
  %154 = getelementptr inbounds %struct.rv6xx_power_info, ptr %call7.i.i, i32 0, i32 8
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %spec.select, ptr %154, align 8
  %call42 = call zeroext i1 @radeon_atom_is_voltage_gpio(ptr noundef %rdev, i8 noundef zeroext 1, i8 noundef zeroext 0) #9
  %frombool = zext i1 %call42 to i8
  %156 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %frombool, ptr %call7.i.i, align 8
  %gfx_clock_gating = getelementptr inbounds %struct.rv6xx_power_info, ptr %call7.i.i, i32 0, i32 7
  %157 = ptrtoint ptr %gfx_clock_gating to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 1, ptr %gfx_clock_gating, align 1
  %call43 = call zeroext i1 @radeon_atombios_get_asic_ss_info(ptr noundef %rdev, ptr noundef nonnull %ss, i32 noundef 2, i32 noundef 0) #9
  %sclk_ss = getelementptr inbounds %struct.rv6xx_power_info, ptr %call7.i.i, i32 0, i32 1
  %frombool44 = zext i1 %call43 to i8
  %158 = ptrtoint ptr %sclk_ss to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %frombool44, ptr %sclk_ss, align 1
  %call45 = call zeroext i1 @radeon_atombios_get_asic_ss_info(ptr noundef %rdev, ptr noundef nonnull %ss, i32 noundef 1, i32 noundef 0) #9
  %mclk_ss = getelementptr inbounds %struct.rv6xx_power_info, ptr %call7.i.i, i32 0, i32 2
  %frombool46 = zext i1 %call45 to i8
  %159 = ptrtoint ptr %mclk_ss to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %frombool46, ptr %mclk_ss, align 2
  %160 = ptrtoint ptr %sclk_ss to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 0, ptr %sclk_ss, align 1
  %.sink110 = zext i1 %call45 to i8
  %161 = getelementptr inbounds %struct.rv6xx_power_info, ptr %call7.i.i, i32 0, i32 3
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %.sink110, ptr %161, align 1
  %dynamic_pcie_gen2 = getelementptr inbounds %struct.rv6xx_power_info, ptr %call7.i.i, i32 0, i32 4
  %163 = ptrtoint ptr %dynamic_pcie_gen2 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 1, ptr %dynamic_pcie_gen2, align 4
  %164 = ptrtoint ptr %gfx_clock_gating to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %gfx_clock_gating, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %165)
  %tobool57.not = icmp eq i8 %165, 0
  br i1 %tobool57.not, label %if.end36.if.else61_crit_edge, label %land.lhs.true

if.end36.if.else61_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else61

land.lhs.true:                                    ; preds = %if.end36
  %int_thermal_type = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 44
  %166 = ptrtoint ptr %int_thermal_type to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %int_thermal_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %cmp59.not = icmp eq i32 %167, 0
  br i1 %cmp59.not, label %land.lhs.true.if.else61_crit_edge, label %land.lhs.true.if.end63_crit_edge

land.lhs.true.if.end63_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

land.lhs.true.if.else61_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else61

if.else61:                                        ; preds = %land.lhs.true.if.else61_crit_edge, %if.end36.if.else61_crit_edge
  br label %if.end63

if.end63:                                         ; preds = %if.else61, %land.lhs.true.if.end63_crit_edge
  %.sink = phi i8 [ 0, %if.else61 ], [ 1, %land.lhs.true.if.end63_crit_edge ]
  %thermal_protection62 = getelementptr inbounds %struct.rv6xx_power_info, ptr %call7.i.i, i32 0, i32 5
  %168 = ptrtoint ptr %thermal_protection62 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %.sink, ptr %thermal_protection62, align 1
  %display_gap = getelementptr inbounds %struct.rv6xx_power_info, ptr %call7.i.i, i32 0, i32 6
  %169 = ptrtoint ptr %display_gap to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 1, ptr %display_gap, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %rv6xx_parse_power_table.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end63 ], [ -12, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %retval.3.i.ph, %rv6xx_parse_power_table.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dividers) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ss) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_get_platform_caps(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_atom_get_clock_dividers(ptr noundef, i8 noundef zeroext, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_atom_is_voltage_gpio(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_atombios_get_asic_ss_info(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv6xx_dpm_print_power_state(ptr noundef %rdev, ptr noundef %rps) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ps_priv.i = getelementptr inbounds %struct.radeon_ps, ptr %rps, i32 0, i32 9
  %0 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps_priv.i, align 4
  %class = getelementptr inbounds %struct.radeon_ps, ptr %rps, i32 0, i32 1
  %2 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %class, align 4
  %class2 = getelementptr inbounds %struct.radeon_ps, ptr %rps, i32 0, i32 2
  %4 = ptrtoint ptr %class2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %class2, align 4
  tail call void @r600_dpm_print_class_info(i32 noundef %3, i32 noundef %5) #9
  %6 = ptrtoint ptr %rps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rps, align 4
  tail call void @r600_dpm_print_cap_info(i32 noundef %7) #9
  %vclk = getelementptr inbounds %struct.radeon_ps, ptr %rps, i32 0, i32 3
  %8 = ptrtoint ptr %vclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vclk, align 4
  %dclk = getelementptr inbounds %struct.radeon_ps, ptr %rps, i32 0, i32 4
  %10 = ptrtoint ptr %dclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dclk, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %9, i32 noundef %11) #14
  %low = getelementptr inbounds %struct.rv6xx_ps, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %low to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %low, align 4
  %mclk = getelementptr inbounds %struct.rv6xx_ps, ptr %1, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mclk, align 4
  %vddc = getelementptr inbounds %struct.rv6xx_ps, ptr %1, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %vddc to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vddc, align 4
  %conv = zext i16 %17 to i32
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %13, i32 noundef %15, i32 noundef %conv) #14
  %medium = getelementptr inbounds %struct.rv6xx_ps, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %medium to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %medium, align 4
  %mclk12 = getelementptr inbounds %struct.rv6xx_ps, ptr %1, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %mclk12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mclk12, align 4
  %vddc13 = getelementptr inbounds %struct.rv6xx_ps, ptr %1, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %vddc13 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vddc13, align 4
  %conv14 = zext i16 %23 to i32
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %19, i32 noundef %21, i32 noundef %conv14) #14
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %1, align 4
  %mclk21 = getelementptr inbounds %struct.rv6xx_pl, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %mclk21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mclk21, align 4
  %vddc22 = getelementptr inbounds %struct.rv6xx_pl, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %vddc22 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vddc22, align 4
  %conv23 = zext i16 %29 to i32
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %25, i32 noundef %27, i32 noundef %conv23) #14
  tail call void @r600_dpm_print_ps_status(ptr noundef %rdev, ptr noundef %rps) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_dpm_print_class_info(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_dpm_print_cap_info(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_dpm_print_ps_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv6xx_dpm_debugfs_print_current_performance_level(ptr nocapture noundef readonly %rdev, ptr noundef %m) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %current_ps = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 2
  %0 = ptrtoint ptr %current_ps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_ps, align 4
  %ps_priv.i = getelementptr inbounds %struct.radeon_ps, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps_priv.i, align 4
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 1804
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !36
  %7 = lshr i32 %6, 26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  %shr = and i32 %7, 3
  %8 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %shr, label %entry.if.end8_crit_edge [
    i32 3, label %if.then
    i32 0, label %if.then3
    i32 1, label %if.then6
  ]

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.12, i32 noundef 3) #9
  br label %if.end9

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %low = getelementptr inbounds %struct.rv6xx_ps, ptr %3, i32 0, i32 2
  br label %if.end8

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %medium = getelementptr inbounds %struct.rv6xx_ps, ptr %3, i32 0, i32 1
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then3, %entry.if.end8_crit_edge
  %pl.0 = phi ptr [ %low, %if.then3 ], [ %medium, %if.then6 ], [ %3, %entry.if.end8_crit_edge ]
  %vclk = getelementptr inbounds %struct.radeon_ps, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %vclk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vclk, align 4
  %dclk = getelementptr inbounds %struct.radeon_ps, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %dclk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dclk, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.13, i32 noundef %10, i32 noundef %12) #9
  %13 = ptrtoint ptr %pl.0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pl.0, align 4
  %mclk = getelementptr inbounds %struct.rv6xx_pl, ptr %pl.0, i32 0, i32 1
  %15 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mclk, align 4
  %vddc = getelementptr inbounds %struct.rv6xx_pl, ptr %pl.0, i32 0, i32 2
  %17 = ptrtoint ptr %vddc to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vddc, align 4
  %conv = zext i16 %18 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.14, i32 noundef %shr, i32 noundef %14, i32 noundef %16, i32 noundef %conv) #9
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv6xx_dpm_get_current_sclk(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %current_ps = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 2
  %0 = ptrtoint ptr %current_ps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_ps, align 4
  %ps_priv.i = getelementptr inbounds %struct.radeon_ps, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps_priv.i, align 4
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 1804
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !36
  %7 = lshr i32 %6, 26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  %shr = and i32 %7, 3
  %8 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %shr, label %entry.if.end8_crit_edge [
    i32 3, label %entry.cleanup_crit_edge
    i32 0, label %if.then3
    i32 1, label %if.then6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %low = getelementptr inbounds %struct.rv6xx_ps, ptr %3, i32 0, i32 2
  br label %if.end8

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %medium = getelementptr inbounds %struct.rv6xx_ps, ptr %3, i32 0, i32 1
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then3, %entry.if.end8_crit_edge
  %pl.0 = phi ptr [ %low, %if.then3 ], [ %medium, %if.then6 ], [ %3, %entry.if.end8_crit_edge ]
  %9 = ptrtoint ptr %pl.0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pl.0, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.end8 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv6xx_dpm_get_current_mclk(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %current_ps = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 2
  %0 = ptrtoint ptr %current_ps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_ps, align 4
  %ps_priv.i = getelementptr inbounds %struct.radeon_ps, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps_priv.i, align 4
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 1804
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !36
  %7 = lshr i32 %6, 26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  %shr = and i32 %7, 3
  %8 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %shr, label %entry.if.end8_crit_edge [
    i32 3, label %entry.cleanup_crit_edge
    i32 0, label %if.then3
    i32 1, label %if.then6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %low = getelementptr inbounds %struct.rv6xx_ps, ptr %3, i32 0, i32 2
  br label %if.end8

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %medium = getelementptr inbounds %struct.rv6xx_ps, ptr %3, i32 0, i32 1
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then3, %entry.if.end8_crit_edge
  %pl.0 = phi ptr [ %low, %if.then3 ], [ %medium, %if.then6 ], [ %3, %entry.if.end8_crit_edge ]
  %mclk = getelementptr inbounds %struct.rv6xx_pl, ptr %pl.0, i32 0, i32 1
  %9 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mclk, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.end8 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv6xx_dpm_fini(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dpm = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52
  %num_ps = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 1
  %0 = ptrtoint ptr %num_ps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_ps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp13 = icmp sgt i32 %1, 0
  br i1 %cmp13, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.014 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %dpm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dpm, align 4
  %ps_priv = getelementptr %struct.radeon_ps, ptr %3, i32 %i.014, i32 9
  %4 = ptrtoint ptr %ps_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ps_priv, align 4
  tail call void @kfree(ptr noundef %5) #9
  %inc = add nuw nsw i32 %i.014, 1
  %6 = ptrtoint ptr %num_ps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_ps, align 4
  %cmp = icmp slt i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %8 = ptrtoint ptr %dpm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dpm, align 4
  tail call void @kfree(ptr noundef %9) #9
  %priv = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 4
  tail call void @kfree(ptr noundef %11) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rv6xx_dpm_get_sclk(ptr nocapture noundef readonly %rdev, i1 noundef zeroext %low) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %requested_ps = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 3
  %0 = ptrtoint ptr %requested_ps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %requested_ps, align 4
  %ps_priv.i = getelementptr inbounds %struct.radeon_ps, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps_priv.i, align 4
  %low1 = getelementptr inbounds %struct.rv6xx_ps, ptr %3, i32 0, i32 2
  %retval.0.in = select i1 %low, ptr %low1, ptr %3
  %4 = ptrtoint ptr %retval.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %retval.0 = load i32, ptr %retval.0.in, align 4
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rv6xx_dpm_get_mclk(ptr nocapture noundef readonly %rdev, i1 noundef zeroext %low) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %requested_ps = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 3
  %0 = ptrtoint ptr %requested_ps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %requested_ps, align 4
  %ps_priv.i = getelementptr inbounds %struct.radeon_ps, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps_priv.i, align 4
  %low1 = getelementptr inbounds %struct.rv6xx_ps, ptr %3, i32 0, i32 2
  %low1.pn = select i1 %low, ptr %low1, ptr %3
  %retval.0.in = getelementptr inbounds %struct.rv6xx_pl, ptr %low1.pn, i32 0, i32 1
  %4 = ptrtoint ptr %retval.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %retval.0 = load i32, ptr %retval.0.in, align 4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv6xx_dpm_force_performance_level(ptr noundef %rdev, i32 noundef %level) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %level)
  %switch.selectcmp = icmp eq i32 %level, 1
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %level)
  %switch.selectcmp32 = icmp eq i32 %level, 2
  %switch.select33 = select i1 %switch.selectcmp32, i32 3, i32 %switch.select
  %restricted_levels3 = getelementptr inbounds %struct.rv6xx_power_info, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %restricted_levels3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %switch.select33, ptr %restricted_levels3, align 4
  tail call void @r600_set_vrc(ptr noundef %rdev, i32 noundef 0) #9
  tail call void @r600_power_level_enable(ptr noundef %rdev, i32 noundef 0, i1 noundef zeroext true) #9
  tail call void @r600_set_at(ptr noundef %rdev, i32 noundef 65535, i32 noundef 65535, i32 noundef 65535, i32 noundef 65535) #9
  tail call void @r600_wait_for_power_level(ptr noundef %rdev, i32 noundef 0) #9
  tail call void @r600_power_level_enable(ptr noundef %rdev, i32 noundef 2, i1 noundef zeroext false) #9
  tail call void @r600_power_level_enable(ptr noundef %rdev, i32 noundef 1, i1 noundef zeroext false) #9
  %3 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i, align 4
  %restricted_levels.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %4, i32 0, i32 14
  %5 = ptrtoint ptr %restricted_levels.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %restricted_levels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.i = icmp ult i32 %6, 2
  br i1 %cmp.i, label %if.then.i, label %entry.rv6xx_enable_medium.exit_crit_edge

entry.rv6xx_enable_medium.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv6xx_enable_medium.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @r600_power_level_enable(ptr noundef %rdev, i32 noundef 1, i1 noundef zeroext true) #9
  br label %rv6xx_enable_medium.exit

rv6xx_enable_medium.exit:                         ; preds = %if.then.i, %entry.rv6xx_enable_medium.exit_crit_edge
  %7 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv.i, align 4
  %restricted_levels.i29 = getelementptr inbounds %struct.rv6xx_power_info, ptr %8, i32 0, i32 14
  %9 = ptrtoint ptr %restricted_levels.i29 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %restricted_levels.i29, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %10, label %rv6xx_enable_medium.exit.rv6xx_enable_high.exit_crit_edge [
    i32 0, label %rv6xx_enable_medium.exit.if.then.i30_crit_edge
    i32 3, label %rv6xx_enable_medium.exit.if.then.i30_crit_edge34
  ]

rv6xx_enable_medium.exit.if.then.i30_crit_edge34: ; preds = %rv6xx_enable_medium.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i30

rv6xx_enable_medium.exit.if.then.i30_crit_edge:   ; preds = %rv6xx_enable_medium.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i30

rv6xx_enable_medium.exit.rv6xx_enable_high.exit_crit_edge: ; preds = %rv6xx_enable_medium.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv6xx_enable_high.exit

if.then.i30:                                      ; preds = %rv6xx_enable_medium.exit.if.then.i30_crit_edge, %rv6xx_enable_medium.exit.if.then.i30_crit_edge34
  tail call void @r600_power_level_enable(ptr noundef %rdev, i32 noundef 2, i1 noundef zeroext true) #9
  br label %rv6xx_enable_high.exit

rv6xx_enable_high.exit:                           ; preds = %if.then.i30, %rv6xx_enable_medium.exit.rv6xx_enable_high.exit_crit_edge
  %restricted_levels7 = getelementptr inbounds %struct.rv6xx_power_info, ptr %1, i32 0, i32 14
  %12 = ptrtoint ptr %restricted_levels7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %restricted_levels7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp8 = icmp eq i32 %13, 3
  br i1 %cmp8, label %if.then9, label %rv6xx_enable_high.exit.if.end10_crit_edge

rv6xx_enable_high.exit.if.end10_crit_edge:        ; preds = %rv6xx_enable_high.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then9:                                         ; preds = %rv6xx_enable_high.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @r600_power_level_enable(ptr noundef %rdev, i32 noundef 0, i1 noundef zeroext false) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %rv6xx_enable_high.exit.if.end10_crit_edge
  tail call void @r600_set_vrc(ptr noundef %rdev, i32 noundef 49155) #9
  %14 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv.i, align 4
  %rp.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %15, i32 0, i32 15, i32 14
  %16 = ptrtoint ptr %rp.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rp.i, align 4
  %conv.i = zext i8 %17 to i32
  %bsp.i = getelementptr inbounds %struct.rv6xx_power_info, ptr %15, i32 0, i32 12
  %18 = ptrtoint ptr %bsp.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bsp.i, align 4
  %mul.i = mul i32 %19, %conv.i
  %div.i = udiv i32 %mul.i, 200
  %arrayidx3.i = getelementptr %struct.rv6xx_power_info, ptr %15, i32 0, i32 15, i32 14, i32 1
  %20 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %21 to i32
  %mul6.i = mul i32 %19, %conv4.i
  %div7.i = udiv i32 %mul6.i, 200
  %arrayidx9.i = getelementptr %struct.rv6xx_power_info, ptr %15, i32 0, i32 15, i32 15, i32 2
  %22 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx9.i, align 1
  %conv10.i = zext i8 %23 to i32
  %mul12.i = mul i32 %19, %conv10.i
  %div13.i = udiv i32 %mul12.i, 200
  %arrayidx16.i = getelementptr %struct.rv6xx_power_info, ptr %15, i32 0, i32 15, i32 15, i32 1
  %24 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %25 to i32
  %mul19.i = mul i32 %19, %conv17.i
  %div20.i = udiv i32 %mul19.i, 200
  tail call void @r600_set_at(ptr noundef %rdev, i32 noundef %div.i, i32 noundef %div7.i, i32 noundef %div13.i, i32 noundef %div20.i) #9
  %forced_level = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 36
  %26 = ptrtoint ptr %forced_level to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %level, ptr %forced_level, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_mm_wreg_slow(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_set_mpll_lock_time(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_set_mpll_reset_time(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_calculate_u_and_p(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_set_bsp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_set_git(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_set_tc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_select_td(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_set_tpu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_set_tpc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_set_sstu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_set_sst(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_set_fctu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_set_fct(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_set_vddc3d_oorsu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_set_vddc3d_oorphc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_set_vddc3d_oorsdc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_set_ctxcgtt3d_rphc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_set_ctxcgtt3d_rsdc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_vid_rt_set_vru(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_vid_rt_set_vrt(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_vid_rt_set_ssu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_power_level_set_enter_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_voltage_control_enable_pins(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @rv6xx_get_master_voltage_mask(ptr noundef %rdev) unnamed_addr #0 align 64 {
entry:
  %tmp_mask = alloca i32, align 4
  %tmp_set_pins = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp_mask) #9
  %2 = ptrtoint ptr %tmp_mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tmp_mask, align 4, !annotation !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp_set_pins) #9
  %3 = ptrtoint ptr %tmp_set_pins to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %tmp_set_pins, align 4, !annotation !38
  %arrayidx = getelementptr %struct.rv6xx_power_info, ptr %1, i32 0, i32 15, i32 2, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %call1 = call i32 @radeon_atom_get_voltage_gpio_settings(ptr noundef %rdev, i16 noundef zeroext %5, i8 noundef zeroext 1, ptr noundef nonnull %tmp_set_pins, ptr noundef nonnull %tmp_mask) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %tmp_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tmp_mask, align 4
  %conv = zext i32 %7 to i64
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %master_mask.1 = phi i64 [ %conv, %if.then ], [ 0, %entry.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_set_pins) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_mask) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp_mask) #9
  %8 = ptrtoint ptr %tmp_mask to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %tmp_mask, align 4, !annotation !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp_set_pins) #9
  %9 = ptrtoint ptr %tmp_set_pins to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %tmp_set_pins, align 4, !annotation !38
  %arrayidx.1 = getelementptr %struct.rv6xx_power_info, ptr %1, i32 0, i32 15, i32 2, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx.1, align 2
  %call1.1 = call i32 @radeon_atom_get_voltage_gpio_settings(ptr noundef %rdev, i16 noundef zeroext %11, i8 noundef zeroext 1, ptr noundef nonnull %tmp_set_pins, ptr noundef nonnull %tmp_mask) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1)
  %cmp2.1 = icmp eq i32 %call1.1, 0
  br i1 %cmp2.1, label %if.then.1, label %if.end.if.end.1_crit_edge

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.1

if.then.1:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %tmp_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tmp_mask, align 4
  %conv.1 = zext i32 %13 to i64
  %or.1 = or i64 %master_mask.1, %conv.1
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %if.end.if.end.1_crit_edge
  %master_mask.1.1 = phi i64 [ %or.1, %if.then.1 ], [ %master_mask.1, %if.end.if.end.1_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_set_pins) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_mask) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp_mask) #9
  %14 = ptrtoint ptr %tmp_mask to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %tmp_mask, align 4, !annotation !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp_set_pins) #9
  %15 = ptrtoint ptr %tmp_set_pins to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %tmp_set_pins, align 4, !annotation !38
  %arrayidx.2 = getelementptr %struct.rv6xx_power_info, ptr %1, i32 0, i32 15, i32 2, i32 2
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.2, align 2
  %call1.2 = call i32 @radeon_atom_get_voltage_gpio_settings(ptr noundef %rdev, i16 noundef zeroext %17, i8 noundef zeroext 1, ptr noundef nonnull %tmp_set_pins, ptr noundef nonnull %tmp_mask) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2)
  %cmp2.2 = icmp eq i32 %call1.2, 0
  br i1 %cmp2.2, label %if.then.2, label %if.end.1.if.end.2_crit_edge

if.end.1.if.end.2_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.2

if.then.2:                                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %tmp_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tmp_mask, align 4
  %conv.2 = zext i32 %19 to i64
  %or.2 = or i64 %master_mask.1.1, %conv.2
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.2, %if.end.1.if.end.2_crit_edge
  %master_mask.1.2 = phi i64 [ %or.2, %if.then.2 ], [ %master_mask.1.1, %if.end.1.if.end.2_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_set_pins) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_mask) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp_mask) #9
  %20 = ptrtoint ptr %tmp_mask to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %tmp_mask, align 4, !annotation !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp_set_pins) #9
  %21 = ptrtoint ptr %tmp_set_pins to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %tmp_set_pins, align 4, !annotation !38
  %arrayidx.3 = getelementptr %struct.rv6xx_power_info, ptr %1, i32 0, i32 15, i32 2, i32 3
  %22 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx.3, align 2
  %call1.3 = call i32 @radeon_atom_get_voltage_gpio_settings(ptr noundef %rdev, i16 noundef zeroext %23, i8 noundef zeroext 1, ptr noundef nonnull %tmp_set_pins, ptr noundef nonnull %tmp_mask) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.3)
  %cmp2.3 = icmp eq i32 %call1.3, 0
  br i1 %cmp2.3, label %if.then.3, label %if.end.2.if.end.3_crit_edge

if.end.2.if.end.3_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.3

if.then.3:                                        ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %tmp_mask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tmp_mask, align 4
  %conv.3 = zext i32 %25 to i64
  %or.3 = or i64 %master_mask.1.2, %conv.3
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.3, %if.end.2.if.end.3_crit_edge
  %master_mask.1.3 = phi i64 [ %or.3, %if.then.3 ], [ %master_mask.1.2, %if.end.2.if.end.3_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_set_pins) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_mask) #9
  ret i64 %master_mask.1.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_atom_get_voltage_gpio_settings(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rv6xx_generate_steps(ptr noundef %rdev, i32 noundef %low, i32 noundef %high, i32 noundef %start_index, ptr nocapture noundef writeonly %end_index) unnamed_addr #0 align 64 {
entry:
  %dividers.i62 = alloca %struct.atom_clock_dividers, align 4
  %dividers.i = alloca %struct.atom_clock_dividers, align 4
  %cur = alloca %struct.rv6xx_sclk_stepping, align 8
  %target = alloca %struct.rv6xx_sclk_stepping, align 4
  %next = alloca %struct.rv6xx_sclk_stepping, align 8
  %tiny = alloca %struct.rv6xx_sclk_stepping, align 4
  %final_vco = alloca %struct.rv6xx_sclk_stepping, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cur) #9
  %0 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cur, align 8, !annotation !38
  %1 = getelementptr inbounds %struct.rv6xx_sclk_stepping, ptr %cur, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %target) #9
  %3 = ptrtoint ptr %target to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %target, align 4, !annotation !38
  %4 = getelementptr inbounds %struct.rv6xx_sclk_stepping, ptr %target, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !38
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dividers.i) #9
  %6 = call ptr @memset(ptr %dividers.i, i32 255, i32 32)
  %call.i = call i32 @radeon_atom_get_clock_dividers(ptr noundef %rdev, i8 noundef zeroext 2, i32 noundef %low, i1 noundef zeroext false, ptr noundef nonnull %dividers.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.rv6xx_convert_clock_to_stepping.exit_crit_edge

entry.rv6xx_convert_clock_to_stepping.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv6xx_convert_clock_to_stepping.exit

if.end.i:                                         ; preds = %entry
  %enable_post_div.i = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers.i, i32 0, i32 3
  %7 = ptrtoint ptr %enable_post_div.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %enable_post_div.i, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not.i = icmp eq i8 %8, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then2.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %dividers.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dividers.i, align 4
  %and.i = and i32 %10, 15
  %add.i = add nuw nsw i32 %and.i, 2
  %shr.i = lshr i32 %10, 4
  %add4.i = add nuw nsw i32 %add.i, %shr.i
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then2.i, %if.end.i.if.end6.i_crit_edge
  %add4.sink.i = phi i32 [ %add4.i, %if.then2.i ], [ 1, %if.end.i.if.end6.i_crit_edge ]
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add4.sink.i, ptr %1, align 4
  %mul.i = mul i32 %add4.sink.i, %low
  %12 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mul.i, ptr %cur, align 8
  br label %rv6xx_convert_clock_to_stepping.exit

rv6xx_convert_clock_to_stepping.exit:             ; preds = %if.end6.i, %entry.rv6xx_convert_clock_to_stepping.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dividers.i) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dividers.i62) #9
  %13 = call ptr @memset(ptr %dividers.i62, i32 255, i32 32)
  %call.i63 = call i32 @radeon_atom_get_clock_dividers(ptr noundef %rdev, i8 noundef zeroext 2, i32 noundef %high, i1 noundef zeroext false, ptr noundef nonnull %dividers.i62) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %tobool.not.i64 = icmp eq i32 %call.i63, 0
  br i1 %tobool.not.i64, label %if.end.i67, label %rv6xx_convert_clock_to_stepping.exit.rv6xx_convert_clock_to_stepping.exit76_crit_edge

rv6xx_convert_clock_to_stepping.exit.rv6xx_convert_clock_to_stepping.exit76_crit_edge: ; preds = %rv6xx_convert_clock_to_stepping.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv6xx_convert_clock_to_stepping.exit76

if.end.i67:                                       ; preds = %rv6xx_convert_clock_to_stepping.exit
  %enable_post_div.i65 = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers.i62, i32 0, i32 3
  %14 = ptrtoint ptr %enable_post_div.i65 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %enable_post_div.i65, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool1.not.i66 = icmp eq i8 %15, 0
  br i1 %tobool1.not.i66, label %if.end.i67.if.end6.i75_crit_edge, label %if.then2.i72

if.end.i67.if.end6.i75_crit_edge:                 ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i75

if.then2.i72:                                     ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %dividers.i62 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dividers.i62, align 4
  %and.i68 = and i32 %17, 15
  %add.i69 = add nuw nsw i32 %and.i68, 2
  %shr.i70 = lshr i32 %17, 4
  %add4.i71 = add nuw nsw i32 %add.i69, %shr.i70
  br label %if.end6.i75

if.end6.i75:                                      ; preds = %if.then2.i72, %if.end.i67.if.end6.i75_crit_edge
  %add4.sink.i73 = phi i32 [ %add4.i71, %if.then2.i72 ], [ 1, %if.end.i67.if.end6.i75_crit_edge ]
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add4.sink.i73, ptr %4, align 4
  %mul.i74 = mul i32 %add4.sink.i73, %high
  %19 = ptrtoint ptr %target to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul.i74, ptr %target, align 4
  br label %rv6xx_convert_clock_to_stepping.exit76

rv6xx_convert_clock_to_stepping.exit76:           ; preds = %if.end6.i75, %rv6xx_convert_clock_to_stepping.exit.rv6xx_convert_clock_to_stepping.exit76_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dividers.i62) #9
  call fastcc void @rv6xx_output_stepping(ptr noundef %rdev, i32 noundef %start_index, ptr noundef nonnull %cur)
  %20 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %target, align 4
  %22 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cur, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp.not = icmp ult i32 %21, %23
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %4, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %1, align 4
  %28 = call i32 @llvm.umax.i32(i32 %25, i32 %27)
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %1, align 4
  %30 = getelementptr inbounds %struct.rv6xx_sclk_stepping, ptr %next, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %cleanup, %rv6xx_convert_clock_to_stepping.exit76
  %step_index.0.in = phi i32 [ %start_index, %rv6xx_convert_clock_to_stepping.exit76 ], [ %step_index.0, %cleanup ]
  %step_index.0 = add i32 %step_index.0.in, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %next) #9
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %25)
  %cmp.i = icmp ugt i32 %32, %25
  br i1 %cmp.i, label %rv6xx_can_step_post_div.exit, label %while.cond.if.else_crit_edge

while.cond.if.else_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

rv6xx_can_step_post_div.exit:                     ; preds = %while.cond
  %33 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cur, align 8
  %mul.i77 = mul i32 %34, %25
  %sub.i = add i32 %32, -1
  %mul5.i = mul i32 %sub.i, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i77, i32 %mul5.i)
  %cmp6.i.not = icmp ugt i32 %mul.i77, %mul5.i
  br i1 %cmp6.i.not, label %rv6xx_can_step_post_div.exit.if.else_crit_edge, label %if.then8

rv6xx_can_step_post_div.exit.if.else_crit_edge:   ; preds = %rv6xx_can_step_post_div.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then8:                                         ; preds = %rv6xx_can_step_post_div.exit
  %35 = ptrtoint ptr %cur to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %cur, align 8, !noalias !39
  %tmp.sroa.5.0.extract.trunc = trunc i64 %36 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %tmp.sroa.5.0.extract.trunc)
  %cmp.i1.i = icmp ult i32 %25, %tmp.sroa.5.0.extract.trunc
  br i1 %cmp.i1.i, label %rv6xx_can_step_post_div.exit.lr.ph.i, label %if.then8.rv6xx_next_post_div_step.exit_crit_edge

if.then8.rv6xx_next_post_div_step.exit_crit_edge: ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv6xx_next_post_div_step.exit

rv6xx_can_step_post_div.exit.lr.ph.i:             ; preds = %if.then8
  %tmp.sroa.0.0.extract.shift = lshr i64 %36, 32
  %tmp.sroa.0.0.extract.trunc = trunc i64 %tmp.sroa.0.0.extract.shift to i32
  %mul.i.i = mul i32 %25, %tmp.sroa.0.0.extract.trunc
  br label %rv6xx_can_step_post_div.exit.i

rv6xx_can_step_post_div.exit.i:                   ; preds = %while.body.i.rv6xx_can_step_post_div.exit.i_crit_edge, %rv6xx_can_step_post_div.exit.lr.ph.i
  %tmp.sroa.5.0 = phi i32 [ %tmp.sroa.5.0.extract.trunc, %rv6xx_can_step_post_div.exit.lr.ph.i ], [ %sub.i.i, %while.body.i.rv6xx_can_step_post_div.exit.i_crit_edge ]
  %sub.i.i = add i32 %tmp.sroa.5.0, -1
  %mul5.i.i = mul i32 %sub.i.i, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i, i32 %mul5.i.i)
  %cmp6.i.not.i = icmp ugt i32 %mul.i.i, %mul5.i.i
  br i1 %cmp6.i.not.i, label %rv6xx_can_step_post_div.exit.i.rv6xx_next_post_div_step.exit_crit_edge, label %while.body.i

rv6xx_can_step_post_div.exit.i.rv6xx_next_post_div_step.exit_crit_edge: ; preds = %rv6xx_can_step_post_div.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv6xx_next_post_div_step.exit

while.body.i:                                     ; preds = %rv6xx_can_step_post_div.exit.i
  %cmp.i.i = icmp ugt i32 %sub.i.i, %25
  br i1 %cmp.i.i, label %while.body.i.rv6xx_can_step_post_div.exit.i_crit_edge, label %while.body.i.rv6xx_next_post_div_step.exit_crit_edge

while.body.i.rv6xx_next_post_div_step.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv6xx_next_post_div_step.exit

while.body.i.rv6xx_can_step_post_div.exit.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv6xx_can_step_post_div.exit.i

rv6xx_next_post_div_step.exit:                    ; preds = %while.body.i.rv6xx_next_post_div_step.exit_crit_edge, %rv6xx_can_step_post_div.exit.i.rv6xx_next_post_div_step.exit_crit_edge, %if.then8.rv6xx_next_post_div_step.exit_crit_edge
  %tmp.sroa.5.1 = phi i32 [ %tmp.sroa.5.0.extract.trunc, %if.then8.rv6xx_next_post_div_step.exit_crit_edge ], [ %25, %while.body.i.rv6xx_next_post_div_step.exit_crit_edge ], [ %tmp.sroa.5.0, %rv6xx_can_step_post_div.exit.i.rv6xx_next_post_div_step.exit_crit_edge ]
  %tmp.sroa.5.0.insert.ext = zext i32 %tmp.sroa.5.1 to i64
  %tmp.sroa.0.0.insert.shift = and i64 %36, -4294967296
  %tmp.sroa.0.0.insert.insert = or i64 %tmp.sroa.0.0.insert.shift, %tmp.sroa.5.0.insert.ext
  br label %if.end10

if.else:                                          ; preds = %rv6xx_can_step_post_div.exit.if.else_crit_edge, %while.cond.if.else_crit_edge
  %37 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cur, align 8, !noalias !42
  br i1 %cmp.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i79 = mul i32 %38, 120
  %div.i = udiv i32 %mul.i79, 100
  br label %rv6xx_next_vco_step.exit

if.else.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %mul4.i = mul i32 %38, 100
  %add6.i = add i32 %mul4.i, 119
  %div8.i = udiv i32 %add6.i, 120
  br label %rv6xx_next_vco_step.exit

rv6xx_next_vco_step.exit:                         ; preds = %if.else.i, %if.then.i
  %storemerge.i = phi i32 [ %div8.i, %if.else.i ], [ %div.i, %if.then.i ]
  %tmp9.sroa.4.0.insert.ext = zext i32 %32 to i64
  %tmp9.sroa.0.0.insert.ext = zext i32 %storemerge.i to i64
  %tmp9.sroa.0.0.insert.shift = shl nuw nsw i64 %tmp9.sroa.0.0.insert.ext, 32
  %tmp9.sroa.0.0.insert.insert = or i64 %tmp9.sroa.0.0.insert.shift, %tmp9.sroa.4.0.insert.ext
  br label %if.end10

if.end10:                                         ; preds = %rv6xx_next_vco_step.exit, %rv6xx_next_post_div_step.exit
  %storemerge = phi i64 [ %tmp9.sroa.0.0.insert.insert, %rv6xx_next_vco_step.exit ], [ %tmp.sroa.0.0.insert.insert, %rv6xx_next_post_div_step.exit ]
  %39 = ptrtoint ptr %next to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %storemerge, ptr %next, align 8
  %40 = lshr i64 %storemerge, 32
  %41 = trunc i64 %40 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %41)
  %cmp5.i = icmp uge i32 %21, %41
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %41)
  %cmp.not.i = icmp ule i32 %21, %41
  %42 = select i1 %cmp.not, i1 %cmp5.i, i1 %cmp.not.i
  br i1 %42, label %if.then13, label %cleanup

if.then13:                                        ; preds = %if.end10
  %43 = trunc i64 %40 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tiny) #9
  %44 = getelementptr inbounds %struct.rv6xx_sclk_stepping, ptr %tiny, i32 0, i32 1
  br i1 %cmp.not, label %if.then.i84, label %if.else.i88

if.then.i84:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i82 = mul i32 %21, 105
  %div.i83 = udiv i32 %mul.i82, 100
  br label %rv6xx_next_vco_step.exit91

if.else.i88:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %mul4.i85 = mul i32 %21, 100
  %add6.i86 = add i32 %mul4.i85, 104
  %div8.i87 = udiv i32 %add6.i86, 105
  br label %rv6xx_next_vco_step.exit91

rv6xx_next_vco_step.exit91:                       ; preds = %if.else.i88, %if.then.i84
  %storemerge.i89 = phi i32 [ %div8.i87, %if.else.i88 ], [ %div.i83, %if.then.i84 ]
  %45 = ptrtoint ptr %tiny to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %storemerge.i89, ptr %tiny, align 4, !alias.scope !45
  %46 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %30, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %44, align 4
  %49 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cur, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %storemerge.i89, i32 %50)
  %cmp5.i92 = icmp ule i32 %storemerge.i89, %50
  call void @__sanitizer_cov_trace_cmp4(i32 %storemerge.i89, i32 %50)
  %cmp.not.i93 = icmp uge i32 %storemerge.i89, %50
  %51 = select i1 %cmp.not, i1 %cmp.not.i93, i1 %cmp5.i92
  br i1 %51, label %rv6xx_next_vco_step.exit91.if.end22_crit_edge, label %if.then20

rv6xx_next_vco_step.exit91.if.end22_crit_edge:    ; preds = %rv6xx_next_vco_step.exit91
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then20:                                        ; preds = %rv6xx_next_vco_step.exit91
  call void @__sanitizer_cov_trace_pc() #11
  %inc21 = add i32 %step_index.0.in, 2
  call fastcc void @rv6xx_output_stepping(ptr noundef %rdev, i32 noundef %step_index.0, ptr noundef nonnull %tiny)
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %rv6xx_next_vco_step.exit91.if.end22_crit_edge
  %step_index.1 = phi i32 [ %step_index.0, %rv6xx_next_vco_step.exit91.if.end22_crit_edge ], [ %inc21, %if.then20 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %25)
  %cmp25.not = icmp eq i32 %47, %25
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %43)
  %cmp28.not = icmp eq i32 %21, %43
  %or.cond = select i1 %cmp25.not, i1 true, i1 %cmp28.not
  br i1 %or.cond, label %if.end22.while.end_crit_edge, label %if.then29

if.end22.while.end_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.then29:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %final_vco) #9
  %52 = getelementptr inbounds %struct.rv6xx_sclk_stepping, ptr %final_vco, i32 0, i32 1
  %53 = ptrtoint ptr %final_vco to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %21, ptr %final_vco, align 4
  %54 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %47, ptr %52, align 4
  %inc34 = add i32 %step_index.1, 1
  call fastcc void @rv6xx_output_stepping(ptr noundef %rdev, i32 noundef %step_index.1, ptr noundef nonnull %final_vco)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %final_vco) #9
  br label %while.end

cleanup:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @rv6xx_output_stepping(ptr noundef %rdev, i32 noundef %step_index.0, ptr noundef nonnull %next)
  %55 = ptrtoint ptr %next to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %next, align 8
  %57 = ptrtoint ptr %cur to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %cur, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %next) #9
  br label %while.cond

while.end:                                        ; preds = %if.then29, %if.end22.while.end_crit_edge
  %step_index.2 = phi i32 [ %inc34, %if.then29 ], [ %step_index.1, %if.end22.while.end_crit_edge ]
  call fastcc void @rv6xx_output_stepping(ptr noundef %rdev, i32 noundef %step_index.2, ptr noundef nonnull %target)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tiny) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %next) #9
  %conv41 = trunc i32 %step_index.2 to i8
  %58 = ptrtoint ptr %end_index to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv41, ptr %end_index, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %target) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cur) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rv6xx_output_stepping(ptr noundef %rdev, i32 noundef %step_index, ptr nocapture noundef readonly %step) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %spll = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 41, i32 3
  %2 = ptrtoint ptr %spll to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %spll, align 4
  %spll_ref_div = getelementptr inbounds %struct.rv6xx_power_info, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %spll_ref_div to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %spll_ref_div, align 4
  tail call void @r600_engine_clock_entry_enable(ptr noundef %rdev, i32 noundef %step_index, i1 noundef zeroext true) #9
  tail call void @r600_engine_clock_entry_enable_pulse_skipping(ptr noundef %rdev, i32 noundef %step_index, i1 noundef zeroext false) #9
  %post_divider = getelementptr inbounds %struct.rv6xx_sclk_stepping, ptr %step, i32 0, i32 1
  %6 = ptrtoint ptr %post_divider to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %post_divider, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @r600_engine_clock_entry_enable_post_divider(ptr noundef %rdev, i32 noundef %step_index, i1 noundef zeroext false) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add i32 %7, -2
  %div35 = lshr i32 %sub, 1
  %sub5 = sub i32 %sub, %div35
  tail call void @r600_engine_clock_entry_enable_post_divider(ptr noundef %rdev, i32 noundef %step_index, i1 noundef zeroext true) #9
  %shl = shl i32 %sub5, 4
  %or = or i32 %shl, %div35
  tail call void @r600_engine_clock_entry_set_post_divider(ptr noundef %rdev, i32 noundef %step_index, i32 noundef %or) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = shl i32 %5, 6
  %div1.i = and i32 %8, 67108800
  %9 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %step, align 4
  %11 = ptrtoint ptr %spll_ref_div to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %spll_ref_div, align 4
  %mul7 = mul i32 %12, %10
  %div8 = udiv i32 %mul7, %3
  %fb_div_scale = getelementptr inbounds %struct.rv6xx_power_info, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %fb_div_scale to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fb_div_scale, align 4
  %shr = lshr i32 %div8, %14
  %sub10 = add i32 %12, -1
  tail call void @r600_engine_clock_entry_set_reference_divider(ptr noundef %rdev, i32 noundef %step_index, i32 noundef %sub10) #9
  tail call void @r600_engine_clock_entry_set_feedback_divider(ptr noundef %rdev, i32 noundef %step_index, i32 noundef %shr) #9
  tail call void @r600_engine_clock_entry_set_step_time(ptr noundef %rdev, i32 noundef %step_index, i32 noundef %div1.i) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_engine_clock_entry_enable(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_engine_clock_entry_enable_pulse_skipping(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_engine_clock_entry_enable_post_divider(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_engine_clock_entry_set_post_divider(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_engine_clock_entry_set_reference_divider(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_engine_clock_entry_set_feedback_divider(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_engine_clock_entry_set_step_time(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rv6xx_program_mclk_stepping_entry(ptr noundef %rdev, i32 noundef %entry1, i32 noundef %clock) unnamed_addr #0 align 64 {
entry:
  %dividers = alloca %struct.atom_clock_dividers, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dividers) #9
  %0 = call ptr @memset(ptr %dividers, i32 255, i32 32)
  %call = call i32 @radeon_atom_get_clock_dividers(ptr noundef %rdev, i8 noundef zeroext 1, i32 noundef %clock, i1 noundef zeroext false, ptr noundef nonnull %dividers) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %ref_div = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 2
  %1 = ptrtoint ptr %ref_div to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ref_div, align 4
  %mul.i = shl i32 %entry1, 2
  %add.i = add i32 %mul.i, 1768
  %rmmio_size.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %3 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %add.i)
  %cmp.i.i = icmp ugt i32 %4, %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add.i)
  %cmp1.i.i = icmp ult i32 %add.i, 65536
  %or.cond.i.i = or i1 %cmp1.i.i, %cmp.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %5 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %add.i
  %7 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !36
  %8 = call i32 @llvm.bswap.i32(i32 %7) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  br label %r100_mm_rreg.exit.i

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i.i = call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add.i) #9
  br label %r100_mm_rreg.exit.i

r100_mm_rreg.exit.i:                              ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call3.i.i, %if.else.i.i ], [ %8, %if.then.i.i ]
  %and.i = and i32 %retval.0.i.i, -66060289
  %shl.i = shl i32 %2, 20
  %and1.i = and i32 %shl.i, 66060288
  %or.i = or i32 %and.i, %and1.i
  %9 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %add.i)
  %cmp.i9.i = icmp ugt i32 %10, %add.i
  %or.cond.i11.i = or i1 %cmp1.i.i, %cmp.i9.i
  br i1 %or.cond.i11.i, label %do.body.i.i, label %if.else.i14.i

do.body.i.i:                                      ; preds = %r100_mm_rreg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  call void @arm_heavy_mb() #9
  %11 = call i32 @llvm.bswap.i32(i32 %or.i) #9
  %rmmio.i12.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %12 = ptrtoint ptr %rmmio.i12.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i12.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %13, i32 %add.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 %11) #9, !srcloc !34
  br label %rv6xx_memory_clock_entry_set_reference_divider.exit

if.else.i14.i:                                    ; preds = %r100_mm_rreg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add.i, i32 noundef %or.i) #9
  br label %rv6xx_memory_clock_entry_set_reference_divider.exit

rv6xx_memory_clock_entry_set_reference_divider.exit: ; preds = %if.else.i14.i, %do.body.i.i
  %14 = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %17 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %add.i)
  %cmp.i.i4 = icmp ugt i32 %18, %add.i
  %or.cond.i.i6 = or i1 %cmp1.i.i, %cmp.i.i4
  br i1 %or.cond.i.i6, label %if.then.i.i9, label %if.else.i.i11

if.then.i.i9:                                     ; preds = %rv6xx_memory_clock_entry_set_reference_divider.exit
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i.i7 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %19 = ptrtoint ptr %rmmio.i.i7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rmmio.i.i7, align 4
  %add.ptr.i.i8 = getelementptr i8, ptr %20, i32 %add.i
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i8) #9, !srcloc !36
  %22 = call i32 @llvm.bswap.i32(i32 %21) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  br label %r100_mm_rreg.exit.i19

if.else.i.i11:                                    ; preds = %rv6xx_memory_clock_entry_set_reference_divider.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i.i10 = call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add.i) #9
  br label %r100_mm_rreg.exit.i19

r100_mm_rreg.exit.i19:                            ; preds = %if.else.i.i11, %if.then.i.i9
  %retval.0.i.i12 = phi i32 [ %call3.i.i10, %if.else.i.i11 ], [ %22, %if.then.i.i9 ]
  %and.i13 = and i32 %retval.0.i.i12, -1048321
  %shl.i14 = shl i32 %16, 8
  %and1.i15 = and i32 %shl.i14, 1048320
  %or.i16 = or i32 %and.i13, %and1.i15
  %23 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %add.i)
  %cmp.i9.i17 = icmp ugt i32 %24, %add.i
  %or.cond.i11.i18 = or i1 %cmp1.i.i, %cmp.i9.i17
  br i1 %or.cond.i11.i18, label %do.body.i.i22, label %if.else.i14.i23

do.body.i.i22:                                    ; preds = %r100_mm_rreg.exit.i19
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  call void @arm_heavy_mb() #9
  %25 = call i32 @llvm.bswap.i32(i32 %or.i16) #9
  %rmmio.i12.i20 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %26 = ptrtoint ptr %rmmio.i12.i20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmmio.i12.i20, align 4
  %add.ptr.i13.i21 = getelementptr i8, ptr %27, i32 %add.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i21, i32 %25) #9, !srcloc !34
  br label %rv6xx_memory_clock_entry_set_feedback_divider.exit

if.else.i14.i23:                                  ; preds = %r100_mm_rreg.exit.i19
  call void @__sanitizer_cov_trace_pc() #11
  call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add.i, i32 noundef %or.i16) #9
  br label %rv6xx_memory_clock_entry_set_feedback_divider.exit

rv6xx_memory_clock_entry_set_feedback_divider.exit: ; preds = %if.else.i14.i23, %do.body.i.i22
  %28 = ptrtoint ptr %dividers to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dividers, align 4
  %30 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %add.i)
  %cmp.i.i27 = icmp ugt i32 %31, %add.i
  %or.cond.i.i29 = or i1 %cmp1.i.i, %cmp.i.i27
  br i1 %or.cond.i.i29, label %if.then.i.i32, label %if.else.i.i34

if.then.i.i32:                                    ; preds = %rv6xx_memory_clock_entry_set_feedback_divider.exit
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i.i30 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %32 = ptrtoint ptr %rmmio.i.i30 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmmio.i.i30, align 4
  %add.ptr.i.i31 = getelementptr i8, ptr %33, i32 %add.i
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i31) #9, !srcloc !36
  %35 = call i32 @llvm.bswap.i32(i32 %34) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  br label %r100_mm_rreg.exit.i41

if.else.i.i34:                                    ; preds = %rv6xx_memory_clock_entry_set_feedback_divider.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i.i33 = call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add.i) #9
  br label %r100_mm_rreg.exit.i41

r100_mm_rreg.exit.i41:                            ; preds = %if.else.i.i34, %if.then.i.i32
  %retval.0.i.i35 = phi i32 [ %call3.i.i33, %if.else.i.i34 ], [ %35, %if.then.i.i32 ]
  %and.i36 = and i32 %retval.0.i.i35, -256
  %and1.i37 = and i32 %29, 255
  %or.i38 = or i32 %and.i36, %and1.i37
  %36 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %add.i)
  %cmp.i9.i39 = icmp ugt i32 %37, %add.i
  %or.cond.i11.i40 = or i1 %cmp1.i.i, %cmp.i9.i39
  br i1 %or.cond.i11.i40, label %do.body.i.i44, label %if.else.i14.i45

do.body.i.i44:                                    ; preds = %r100_mm_rreg.exit.i41
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  call void @arm_heavy_mb() #9
  %38 = call i32 @llvm.bswap.i32(i32 %or.i38) #9
  %rmmio.i12.i42 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %39 = ptrtoint ptr %rmmio.i12.i42 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rmmio.i12.i42, align 4
  %add.ptr.i13.i43 = getelementptr i8, ptr %40, i32 %add.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i43, i32 %38) #9, !srcloc !34
  br label %rv6xx_memory_clock_entry_set_post_divider.exit

if.else.i14.i45:                                  ; preds = %r100_mm_rreg.exit.i41
  call void @__sanitizer_cov_trace_pc() #11
  call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add.i, i32 noundef %or.i38) #9
  br label %rv6xx_memory_clock_entry_set_post_divider.exit

rv6xx_memory_clock_entry_set_post_divider.exit:   ; preds = %if.else.i14.i45, %do.body.i.i44
  %enable_post_div = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 3
  %41 = ptrtoint ptr %enable_post_div to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %enable_post_div, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool2.not = icmp eq i8 %42, 0
  %43 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %add.i)
  %cmp.i.i64 = icmp ugt i32 %44, %add.i
  %or.cond.i.i66 = or i1 %cmp1.i.i, %cmp.i.i64
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %rv6xx_memory_clock_entry_set_post_divider.exit
  br i1 %or.cond.i.i66, label %if.then.i.i54, label %if.else.i.i56

if.then.i.i54:                                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i.i52 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %45 = ptrtoint ptr %rmmio.i.i52 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rmmio.i.i52, align 4
  %add.ptr.i.i53 = getelementptr i8, ptr %46, i32 %add.i
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i53) #9, !srcloc !36
  %48 = call i32 @llvm.bswap.i32(i32 %47) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  br label %r100_mm_rreg.exit.i59

if.else.i.i56:                                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i.i55 = call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add.i) #9
  br label %r100_mm_rreg.exit.i59

r100_mm_rreg.exit.i59:                            ; preds = %if.else.i.i56, %if.then.i.i54
  %retval.0.i.i57 = phi i32 [ %call3.i.i55, %if.else.i.i56 ], [ %48, %if.then.i.i54 ]
  %or.i58 = or i32 %retval.0.i.i57, 268435456
  %49 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %add.i)
  %cmp.i24.i = icmp ugt i32 %50, %add.i
  %or.cond.i26.i = or i1 %cmp1.i.i, %cmp.i24.i
  br i1 %or.cond.i26.i, label %do.body.i.i60, label %if.else.i29.i

do.body.i.i60:                                    ; preds = %r100_mm_rreg.exit.i59
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  call void @arm_heavy_mb() #9
  %51 = call i32 @llvm.bswap.i32(i32 %or.i58) #9
  %rmmio.i27.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %52 = ptrtoint ptr %rmmio.i27.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rmmio.i27.i, align 4
  %add.ptr.i28.i = getelementptr i8, ptr %53, i32 %add.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28.i, i32 %51) #9, !srcloc !34
  br label %cleanup

if.else.i29.i:                                    ; preds = %r100_mm_rreg.exit.i59
  call void @__sanitizer_cov_trace_pc() #11
  call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add.i, i32 noundef %or.i58) #9
  br label %cleanup

if.else:                                          ; preds = %rv6xx_memory_clock_entry_set_post_divider.exit
  br i1 %or.cond.i.i66, label %if.then.i36.i, label %if.else.i38.i

if.then.i36.i:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i34.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %54 = ptrtoint ptr %rmmio.i34.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rmmio.i34.i, align 4
  %add.ptr.i35.i = getelementptr i8, ptr %55, i32 %add.i
  %56 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35.i) #9, !srcloc !36
  %57 = call i32 @llvm.bswap.i32(i32 %56) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  br label %r100_mm_rreg.exit40.i

if.else.i38.i:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i37.i = call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add.i) #9
  br label %r100_mm_rreg.exit40.i

r100_mm_rreg.exit40.i:                            ; preds = %if.else.i38.i, %if.then.i36.i
  %retval.0.i39.i = phi i32 [ %call3.i37.i, %if.else.i38.i ], [ %57, %if.then.i36.i ]
  %and8.i = and i32 %retval.0.i39.i, -268435457
  %58 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %add.i)
  %cmp.i42.i = icmp ugt i32 %59, %add.i
  %or.cond.i44.i = or i1 %cmp1.i.i, %cmp.i42.i
  br i1 %or.cond.i44.i, label %do.body.i47.i, label %if.else.i48.i

do.body.i47.i:                                    ; preds = %r100_mm_rreg.exit40.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  call void @arm_heavy_mb() #9
  %60 = call i32 @llvm.bswap.i32(i32 %and8.i) #9
  %rmmio.i45.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %61 = ptrtoint ptr %rmmio.i45.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rmmio.i45.i, align 4
  %add.ptr.i46.i = getelementptr i8, ptr %62, i32 %add.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46.i, i32 %60) #9, !srcloc !34
  br label %cleanup

if.else.i48.i:                                    ; preds = %r100_mm_rreg.exit40.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add.i, i32 noundef %and8.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else.i48.i, %do.body.i47.i, %if.else.i29.i, %do.body.i.i60, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dividers) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_voltage_control_program_voltages(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rv6xx_program_engine_spread_spectrum(ptr noundef %rdev, i32 noundef %clock, i32 noundef %level) unnamed_addr #0 align 64 {
entry:
  %dividers = alloca %struct.atom_clock_dividers, align 4
  %ss = alloca %struct.radeon_atom_ss, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %spll = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 41, i32 3
  %0 = ptrtoint ptr %spll to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %spll, align 4
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dividers) #9
  %4 = call ptr @memset(ptr %dividers, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ss) #9
  %5 = call ptr @memset(ptr %ss, i32 255, i32 16)
  %mul.i = shl i32 %level, 2
  %add.i = add i32 %mul.i, 2080
  %rmmio_size.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %6 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add.i)
  %cmp.i.i = icmp ugt i32 %7, %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add.i)
  %cmp1.i.i = icmp ult i32 %add.i, 65536
  %or.cond.i.i = or i1 %cmp1.i.i, %cmp.i.i
  br i1 %or.cond.i.i, label %if.then.i36.i, label %if.else.i38.i

if.then.i36.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i34.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %8 = ptrtoint ptr %rmmio.i34.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i34.i, align 4
  %add.ptr.i35.i = getelementptr i8, ptr %9, i32 %add.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35.i) #9, !srcloc !36
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  br label %r100_mm_rreg.exit40.i

if.else.i38.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i37.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add.i) #9
  br label %r100_mm_rreg.exit40.i

r100_mm_rreg.exit40.i:                            ; preds = %if.else.i38.i, %if.then.i36.i
  %retval.0.i39.i = phi i32 [ %call3.i37.i, %if.else.i38.i ], [ %11, %if.then.i36.i ]
  %and8.i = and i32 %retval.0.i39.i, -2
  %12 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %add.i)
  %cmp.i42.i = icmp ugt i32 %13, %add.i
  %or.cond.i44.i = or i1 %cmp1.i.i, %cmp.i42.i
  br i1 %or.cond.i44.i, label %do.body.i47.i, label %if.else.i48.i

do.body.i47.i:                                    ; preds = %r100_mm_rreg.exit40.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  tail call void @arm_heavy_mb() #9
  %14 = tail call i32 @llvm.bswap.i32(i32 %and8.i) #9
  %rmmio.i45.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %15 = ptrtoint ptr %rmmio.i45.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i45.i, align 4
  %add.ptr.i46.i = getelementptr i8, ptr %16, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46.i, i32 %14) #9, !srcloc !34
  br label %rv6xx_enable_engine_spread_spectrum.exit

if.else.i48.i:                                    ; preds = %r100_mm_rreg.exit40.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add.i, i32 noundef %and8.i) #9
  br label %rv6xx_enable_engine_spread_spectrum.exit

rv6xx_enable_engine_spread_spectrum.exit:         ; preds = %if.else.i48.i, %do.body.i47.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clock)
  %tobool.not = icmp eq i32 %clock, 0
  br i1 %tobool.not, label %rv6xx_enable_engine_spread_spectrum.exit.if.end18_crit_edge, label %land.lhs.true

rv6xx_enable_engine_spread_spectrum.exit.if.end18_crit_edge: ; preds = %rv6xx_enable_engine_spread_spectrum.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

land.lhs.true:                                    ; preds = %rv6xx_enable_engine_spread_spectrum.exit
  %sclk_ss = getelementptr inbounds %struct.rv6xx_power_info, ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %sclk_ss to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sclk_ss, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool2.not = icmp eq i8 %18, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end18_crit_edge, label %if.then

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then:                                          ; preds = %land.lhs.true
  %call3 = call i32 @radeon_atom_get_clock_dividers(ptr noundef %rdev, i8 noundef zeroext 2, i32 noundef %clock, i1 noundef zeroext false, ptr noundef nonnull %dividers) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %if.then4, label %if.then.if.end18_crit_edge

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then4:                                         ; preds = %if.then
  %fb_div_scale = getelementptr inbounds %struct.rv6xx_power_info, ptr %3, i32 0, i32 8
  %19 = ptrtoint ptr %fb_div_scale to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fb_div_scale, align 4
  %21 = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %and.i = and i32 %23, -2
  %shl.i = shl i32 %and.i, %20
  %mul.i35 = mul i32 %shl.i, %1
  %ref_div.i = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 2
  %24 = ptrtoint ptr %ref_div.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ref_div.i, align 4
  %add.i36 = add i32 %25, 1
  %div.i = udiv i32 %mul.i35, %add.i36
  %call6 = call zeroext i1 @radeon_atombios_get_asic_ss_info(ptr noundef %rdev, ptr noundef nonnull %ss, i32 noundef 2, i32 noundef %div.i) #9
  br i1 %call6, label %if.then7, label %if.then4.if.end18_crit_edge

if.then4.if.end18_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then7:                                         ; preds = %if.then4
  %26 = ptrtoint ptr %ref_div.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ref_div.i, align 4
  %add = add i32 %27, 1
  %div = udiv i32 %1, %add
  %rate = getelementptr inbounds %struct.radeon_atom_ss, ptr %ss, i32 0, i32 7
  %28 = ptrtoint ptr %rate to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %rate, align 2
  %conv = zext i16 %29 to i32
  %30 = ptrtoint ptr %ss to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %ss, align 2
  %conv8 = zext i16 %31 to i32
  %32 = ptrtoint ptr %fb_div_scale to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fb_div_scale, align 4
  %div.i37 = udiv i32 %div.i, %div
  %mul2.i = shl nuw nsw i32 %conv, 2
  %mul.i38 = mul i32 %mul2.i, %conv8
  %mul1.i = mul i32 %mul.i38, %div.i37
  %mul3.i = mul i32 %mul1.i, %div.i37
  %mul4.i = mul i32 %div.i, 10
  %shr.i = lshr exact i32 4096, %33
  %div5.i = udiv i32 %mul4.i, %shr.i
  %mul6.i = mul i32 %div5.i, 5375
  %div7.i = udiv i32 %mul3.i, %mul6.i
  %mul.i39 = mul i32 %div, 10
  %mul1.i40 = shl nuw nsw i32 %conv, 1
  %div.i41 = udiv i32 %mul.i39, %mul1.i40
  %34 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %add.i)
  %cmp.i.i45 = icmp ugt i32 %35, %add.i
  %or.cond.i.i47 = or i1 %cmp1.i.i, %cmp.i.i45
  br i1 %or.cond.i.i47, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %36 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %37, i32 %add.i
  %38 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !36
  %39 = call i32 @llvm.bswap.i32(i32 %38) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  br label %r100_mm_rreg.exit.i

if.else.i.i:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i.i = call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add.i) #9
  br label %r100_mm_rreg.exit.i

r100_mm_rreg.exit.i:                              ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call3.i.i, %if.else.i.i ], [ %39, %if.then.i.i ]
  %and.i48 = and i32 %retval.0.i.i, -4192257
  %shl.i49 = shl i32 %div7.i, 11
  %and1.i = and i32 %shl.i49, 4192256
  %or.i = or i32 %and.i48, %and1.i
  %40 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %add.i)
  %cmp.i9.i = icmp ugt i32 %41, %add.i
  %or.cond.i11.i = or i1 %cmp1.i.i, %cmp.i9.i
  br i1 %or.cond.i11.i, label %do.body.i.i, label %if.else.i14.i

do.body.i.i:                                      ; preds = %r100_mm_rreg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  call void @arm_heavy_mb() #9
  %42 = call i32 @llvm.bswap.i32(i32 %or.i) #9
  %rmmio.i12.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %43 = ptrtoint ptr %rmmio.i12.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rmmio.i12.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %44, i32 %add.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 %42) #9, !srcloc !34
  br label %rv6xx_set_engine_spread_spectrum_clk_v.exit

if.else.i14.i:                                    ; preds = %r100_mm_rreg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add.i, i32 noundef %or.i) #9
  br label %rv6xx_set_engine_spread_spectrum_clk_v.exit

rv6xx_set_engine_spread_spectrum_clk_v.exit:      ; preds = %if.else.i14.i, %do.body.i.i
  %45 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %add.i)
  %cmp.i.i53 = icmp ugt i32 %46, %add.i
  %or.cond.i.i55 = or i1 %cmp1.i.i, %cmp.i.i53
  br i1 %or.cond.i.i55, label %if.then.i.i58, label %if.else.i.i60

if.then.i.i58:                                    ; preds = %rv6xx_set_engine_spread_spectrum_clk_v.exit
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i.i56 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %47 = ptrtoint ptr %rmmio.i.i56 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rmmio.i.i56, align 4
  %add.ptr.i.i57 = getelementptr i8, ptr %48, i32 %add.i
  %49 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i57) #9, !srcloc !36
  %50 = call i32 @llvm.bswap.i32(i32 %49) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  br label %r100_mm_rreg.exit.i68

if.else.i.i60:                                    ; preds = %rv6xx_set_engine_spread_spectrum_clk_v.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i.i59 = call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add.i) #9
  br label %r100_mm_rreg.exit.i68

r100_mm_rreg.exit.i68:                            ; preds = %if.else.i.i60, %if.then.i.i58
  %retval.0.i.i61 = phi i32 [ %call3.i.i59, %if.else.i.i60 ], [ %50, %if.then.i.i58 ]
  %and.i62 = and i32 %retval.0.i.i61, -2041
  %sub.i = shl i32 %div.i41, 1
  %51 = add i32 %sub.i, 2046
  %and1.i64 = and i32 %51, 2040
  %or.i65 = or i32 %and.i62, %and1.i64
  %52 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %add.i)
  %cmp.i9.i66 = icmp ugt i32 %53, %add.i
  %or.cond.i11.i67 = or i1 %cmp1.i.i, %cmp.i9.i66
  br i1 %or.cond.i11.i67, label %do.body.i.i71, label %if.else.i14.i72

do.body.i.i71:                                    ; preds = %r100_mm_rreg.exit.i68
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  call void @arm_heavy_mb() #9
  %54 = call i32 @llvm.bswap.i32(i32 %or.i65) #9
  %rmmio.i12.i69 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %55 = ptrtoint ptr %rmmio.i12.i69 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rmmio.i12.i69, align 4
  %add.ptr.i13.i70 = getelementptr i8, ptr %56, i32 %add.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i70, i32 %54) #9, !srcloc !34
  br label %rv6xx_set_engine_spread_spectrum_clk_s.exit

if.else.i14.i72:                                  ; preds = %r100_mm_rreg.exit.i68
  call void @__sanitizer_cov_trace_pc() #11
  call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add.i, i32 noundef %or.i65) #9
  br label %rv6xx_set_engine_spread_spectrum_clk_s.exit

rv6xx_set_engine_spread_spectrum_clk_s.exit:      ; preds = %if.else.i14.i72, %do.body.i.i71
  %57 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %add.i)
  %cmp.i.i76 = icmp ugt i32 %58, %add.i
  %or.cond.i.i78 = or i1 %cmp1.i.i, %cmp.i.i76
  br i1 %or.cond.i.i78, label %if.then.i.i81, label %if.else.i.i83

if.then.i.i81:                                    ; preds = %rv6xx_set_engine_spread_spectrum_clk_s.exit
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i.i79 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %59 = ptrtoint ptr %rmmio.i.i79 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rmmio.i.i79, align 4
  %add.ptr.i.i80 = getelementptr i8, ptr %60, i32 %add.i
  %61 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i80) #9, !srcloc !36
  %62 = call i32 @llvm.bswap.i32(i32 %61) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !37
  br label %r100_mm_rreg.exit.i86

if.else.i.i83:                                    ; preds = %rv6xx_set_engine_spread_spectrum_clk_s.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i.i82 = call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add.i) #9
  br label %r100_mm_rreg.exit.i86

r100_mm_rreg.exit.i86:                            ; preds = %if.else.i.i83, %if.then.i.i81
  %retval.0.i.i84 = phi i32 [ %call3.i.i82, %if.else.i.i83 ], [ %62, %if.then.i.i81 ]
  %or.i85 = or i32 %retval.0.i.i84, 1
  %63 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %add.i)
  %cmp.i24.i = icmp ugt i32 %64, %add.i
  %or.cond.i26.i = or i1 %cmp1.i.i, %cmp.i24.i
  br i1 %or.cond.i26.i, label %do.body.i.i87, label %if.else.i29.i

do.body.i.i87:                                    ; preds = %r100_mm_rreg.exit.i86
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  call void @arm_heavy_mb() #9
  %65 = call i32 @llvm.bswap.i32(i32 %or.i85) #9
  %rmmio.i27.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %66 = ptrtoint ptr %rmmio.i27.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rmmio.i27.i, align 4
  %add.ptr.i28.i = getelementptr i8, ptr %67, i32 %add.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28.i, i32 %65) #9, !srcloc !34
  br label %if.end18

if.else.i29.i:                                    ; preds = %r100_mm_rreg.exit.i86
  call void @__sanitizer_cov_trace_pc() #11
  call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add.i, i32 noundef %or.i85) #9
  br label %if.end18

if.end18:                                         ; preds = %if.else.i29.i, %do.body.i.i87, %if.then4.if.end18_crit_edge, %if.then.if.end18_crit_edge, %land.lhs.true.if.end18_crit_edge, %rv6xx_enable_engine_spread_spectrum.exit.if.end18_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ss) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dividers) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_atom_set_engine_dram_timings(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_power_level_set_voltage_index(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_power_level_set_mem_clock_index(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_power_level_set_eng_clock_index(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_power_level_set_watermark_id(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_power_level_set_pcie_gen2(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_set_vrc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_atom_set_voltage(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_voltage_control_deactivate_static_control(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_enable_dynamic_pcie_gen2(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rv6xx_step_sw_voltage(ptr noundef %rdev, i16 noundef zeroext %initial_voltage, i16 noundef zeroext %target_voltage) unnamed_addr #0 align 64 {
entry:
  %mask.i = alloca i32, align 4
  %set_pins.i = alloca i32, align 4
  %current_voltage = alloca i16, align 2
  %true_target_voltage = alloca i16, align 2
  %voltage_step = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %current_voltage) #9
  %0 = ptrtoint ptr %current_voltage to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %current_voltage, align 2, !annotation !38
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %true_target_voltage) #9
  %1 = ptrtoint ptr %true_target_voltage to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %true_target_voltage, align 2, !annotation !38
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %voltage_step) #9
  %2 = ptrtoint ptr %voltage_step to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %voltage_step, align 2, !annotation !38
  %call = call i32 @radeon_atom_get_voltage_step(ptr noundef %rdev, i8 noundef zeroext 1, ptr noundef nonnull %voltage_step) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call1 = call i32 @radeon_atom_round_to_true_voltage(ptr noundef %rdev, i8 noundef zeroext 1, i16 noundef zeroext %initial_voltage, ptr noundef nonnull %current_voltage) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %lor.lhs.false3, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = call i32 @radeon_atom_round_to_true_voltage(ptr noundef %rdev, i8 noundef zeroext 1, i16 noundef zeroext %target_voltage, ptr noundef nonnull %true_target_voltage) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end, label %lor.lhs.false3.cleanup_crit_edge

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %3 = ptrtoint ptr %true_target_voltage to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %true_target_voltage, align 2
  %5 = ptrtoint ptr %current_voltage to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %current_voltage, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %6)
  %cmp = icmp ult i16 %4, %6
  %7 = ptrtoint ptr %voltage_step to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %voltage_step, align 2
  %sub = sub i16 0, %8
  %signed_voltage_step.0 = select i1 %cmp, i16 %sub, i16 %8
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %4)
  %cmp14.not27 = icmp eq i16 %6, %4
  br i1 %cmp14.not27, label %if.end.cleanup_crit_edge, label %while.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end
  %voltage_response_time = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 11
  br label %while.body

while.body:                                       ; preds = %rv6xx_program_voltage_stepping_entry.exit.while.body_crit_edge, %while.body.lr.ph
  %9 = phi i16 [ %6, %while.body.lr.ph ], [ %18, %rv6xx_program_voltage_stepping_entry.exit.while.body_crit_edge ]
  %add = add i16 %9, %signed_voltage_step.0
  %10 = ptrtoint ptr %current_voltage to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %add, ptr %current_voltage, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i) #9
  %11 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %mask.i, align 4, !annotation !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %set_pins.i) #9
  %12 = ptrtoint ptr %set_pins.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %set_pins.i, align 4, !annotation !38
  %call.i = call i32 @radeon_atom_get_voltage_gpio_settings(ptr noundef %rdev, i16 noundef zeroext %add, i8 noundef zeroext 1, ptr noundef nonnull %set_pins.i, ptr noundef nonnull %mask.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %while.body.rv6xx_program_voltage_stepping_entry.exit_crit_edge

while.body.rv6xx_program_voltage_stepping_entry.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv6xx_program_voltage_stepping_entry.exit

if.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %set_pins.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %set_pins.i, align 4
  %conv.i = zext i32 %14 to i64
  call void @r600_voltage_control_program_voltages(ptr noundef %rdev, i32 noundef 3, i64 noundef %conv.i) #9
  br label %rv6xx_program_voltage_stepping_entry.exit

rv6xx_program_voltage_stepping_entry.exit:        ; preds = %if.end.i, %while.body.rv6xx_program_voltage_stepping_entry.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %set_pins.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #9
  %15 = ptrtoint ptr %voltage_response_time to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %voltage_response_time, align 4
  %add19 = add i32 %16, 999
  %div = udiv i32 %add19, 1000
  call void @msleep(i32 noundef %div) #9
  %17 = ptrtoint ptr %current_voltage to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %current_voltage, align 2
  %19 = ptrtoint ptr %true_target_voltage to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %true_target_voltage, align 2
  %cmp14.not = icmp eq i16 %18, %20
  br i1 %cmp14.not, label %rv6xx_program_voltage_stepping_entry.exit.cleanup_crit_edge, label %rv6xx_program_voltage_stepping_entry.exit.while.body_crit_edge

rv6xx_program_voltage_stepping_entry.exit.while.body_crit_edge: ; preds = %rv6xx_program_voltage_stepping_entry.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

rv6xx_program_voltage_stepping_entry.exit.cleanup_crit_edge: ; preds = %rv6xx_program_voltage_stepping_entry.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %rv6xx_program_voltage_stepping_entry.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %rv6xx_program_voltage_stepping_entry.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %voltage_step) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %true_target_voltage) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %current_voltage) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_atom_get_voltage_step(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_atom_round_to_true_voltage(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv370_pcie_rreg(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv370_pcie_wreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @atom_parse_data_header(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @r600_is_uvd_state(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_atom_get_max_vddc(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_atombios_get_default_voltages(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_mm_rreg_slow(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/rv6xx_dpm.c", i32 2015, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @rv6xx_dpm_print_power_state._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @rv6xx_dpm_print_power_state._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/radeon/rv6xx_dpm.c", i32 2017, i32 2}
!8 = !{ptr @rv6xx_dpm_print_power_state._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @rv6xx_dpm_print_power_state._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/radeon/rv6xx_dpm.c", i32 2020, i32 2}
!12 = !{ptr @rv6xx_dpm_print_power_state._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @rv6xx_dpm_print_power_state._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/radeon/rv6xx_dpm.c", i32 2023, i32 2}
!16 = !{ptr @rv6xx_dpm_print_power_state._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @rv6xx_dpm_print_power_state._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/radeon/rv6xx_dpm.c", i32 2039, i32 17}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/radeon/rv6xx_dpm.c", i32 2047, i32 17}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/radeon/rv6xx_dpm.c", i32 2048, i32 17}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 2157470577}
!34 = !{i64 6749567}
!35 = !{i8 0, i8 2}
!36 = !{i64 6749985}
!37 = !{i64 2157470170}
!38 = !{!"auto-init"}
!39 = !{!40}
!40 = distinct !{!40, !41, !"rv6xx_next_post_div_step: %agg.result"}
!41 = distinct !{!41, !"rv6xx_next_post_div_step"}
!42 = !{!43}
!43 = distinct !{!43, !44, !"rv6xx_next_vco_step: %agg.result"}
!44 = distinct !{!44, !"rv6xx_next_vco_step"}
!45 = !{!46}
!46 = distinct !{!46, !47, !"rv6xx_next_vco_step: %agg.result"}
!47 = distinct !{!47, !"rv6xx_next_vco_step"}
