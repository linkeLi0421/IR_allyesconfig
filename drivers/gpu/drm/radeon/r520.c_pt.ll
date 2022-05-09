; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/r520.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/r520.c"
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
%struct.rv515_mc_save = type { i32, i32, [2 x i8] }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@r520_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 233, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"GPU reset failed ! (0xE40=0x%08X, 0x7C0=0x%08X)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"r520_resume\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/radeon/r520.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@r520_resume._entry_ptr = internal global ptr @r520_resume._entry, section ".printk_index", align 4
@r520_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 271, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Expecting atombios for RV515 GPU\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"r520_init\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@r520_init._entry_ptr = internal global ptr @r520_init._entry, section ".printk_index", align 4
@r520_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.6, ptr @.str.2, i32 279, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@r520_init._entry_ptr.9 = internal global ptr @r520_init._entry.8, section ".printk_index", align 4
@r520_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016[drm] GPU not posted. posting now...\0A\00", [56 x i8] zeroinitializer }, align 32
@r520_init._entry_ptr.12 = internal global ptr @r520_init._entry.10, section ".printk_index", align 4
@r520_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.2, i32 319, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Disabling GPU acceleration\0A\00", [36 x i8] zeroinitializer }, align 32
@r520_init._entry_ptr.15 = internal global ptr @r520_init._entry.13, section ".printk_index", align 4
@r520_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 191, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed initializing CP fences (%d).\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"r520_startup\00", [19 x i8] zeroinitializer }, align 32
@r520_startup._entry_ptr = internal global ptr @r520_startup._entry, section ".printk_index", align 4
@r520_startup._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 207, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed initializing CP (%d).\0A\00", [34 x i8] zeroinitializer }, align 32
@r520_startup._entry_ptr.20 = internal global ptr @r520_startup._entry.18, section ".printk_index", align 4
@r520_startup._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.2, i32 213, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"IB initialization failed (%d).\0A\00", [32 x i8] zeroinitializer }, align 32
@r520_startup._entry_ptr.23 = internal global ptr @r520_startup._entry.21, section ".printk_index", align 4
@r520_mc_program._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 142, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Wait MC idle timeout before updating MC.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"r520_mc_program\00", [16 x i8] zeroinitializer }, align 32
@r520_mc_program._entry_ptr = internal global ptr @r520_mc_program._entry, section ".printk_index", align 4
@r520_gpu_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\014Failed to wait MC idle while programming pipes. Bad things might happen.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"r520_gpu_init\00", [18 x i8] zeroinitializer }, align 32
@r520_gpu_init._entry_ptr = internal global ptr @r520_gpu_init._entry, section ".printk_index", align 4
@switch.table.r520_init = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 32, i32 64, i32 128, i32 256], [16 x i8] zeroinitializer }, align 32
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 231, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 271, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 276, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 286, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 319, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 191, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 207, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 213, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 142, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private constant [33 x i8] c"../drivers/gpu/drm/radeon/r520.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 89, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [23 x i8] c"switch.table.r520_init\00", align 1
@llvm.compiler.used = appending global [39 x ptr] [ptr @r520_gpu_init._entry, ptr @r520_gpu_init._entry_ptr, ptr @r520_init._entry, ptr @r520_init._entry.10, ptr @r520_init._entry.13, ptr @r520_init._entry.8, ptr @r520_init._entry_ptr, ptr @r520_init._entry_ptr.12, ptr @r520_init._entry_ptr.15, ptr @r520_init._entry_ptr.9, ptr @r520_mc_program._entry, ptr @r520_mc_program._entry_ptr, ptr @r520_resume._entry, ptr @r520_resume._entry_ptr, ptr @r520_startup._entry, ptr @r520_startup._entry.18, ptr @r520_startup._entry.21, ptr @r520_startup._entry_ptr, ptr @r520_startup._entry_ptr.20, ptr @r520_startup._entry_ptr.23, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @switch.table.r520_init], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r520_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r520_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r520_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r520_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r520_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r520_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r520_startup._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r520_startup._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r520_mc_program._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r520_gpu_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.r520_init to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r520_mc_wait_for_idle(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mc_rreg = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 32
  %usec_timeout = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %0 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usec_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5.not = icmp eq i32 %1, 0
  br i1 %cmp5.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %mc_rreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mc_rreg, align 8
  %call = tail call i32 %3(ptr noundef %rdev, i32 noundef 0) #5
  %and = and i32 %call, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #5
  %inc = add nuw i32 %i.06, 1
  %5 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %usec_timeout, align 4
  %cmp = icmp ult i32 %inc, %6
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r520_resume(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rv370_pcie_gart_disable(ptr noundef %rdev) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @rv515_clock_startup(ptr noundef %rdev) #5
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %2 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asic, align 8
  %asic_reset = getelementptr inbounds %struct.radeon_asic, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %asic_reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %asic_reset, align 4
  %call = tail call i32 %5(ptr noundef %rdev, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end.if.end5_crit_edge, label %do.end

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rdev, align 8
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %8 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 3648
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  %12 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i27 = getelementptr i8, ptr %13, i32 1984
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str, i32 noundef %11, i32 noundef %15) #8
  br label %if.end5

if.end5:                                          ; preds = %do.end, %if.end.if.end5_crit_edge
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  %16 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mode_info, align 4
  %call6 = tail call i32 @atom_asic_init(ptr noundef %17) #5
  tail call void @rv515_clock_startup(ptr noundef %rdev) #5
  tail call void @radeon_surface_init(ptr noundef %rdev) #5
  %accel_working = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 66
  %18 = ptrtoint ptr %accel_working to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %accel_working, align 2
  %call7 = tail call fastcc i32 @r520_startup(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end5.if.end11_crit_edge, label %if.then9

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %accel_working to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %accel_working, align 2
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end5.if.end11_crit_edge
  ret i32 %call7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv370_pcie_gart_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv515_clock_startup(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atom_asic_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_surface_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @r520_startup(ptr noundef %rdev) unnamed_addr #0 align 64 {
entry:
  %save.i = alloca %struct.rv515_mc_save, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %save.i) #5
  %0 = call ptr @memset(ptr %save.i, i32 255, i32 12)
  call void @rv515_mc_stop(ptr noundef %rdev, ptr noundef nonnull %save.i) #5
  %mc_rreg.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 32
  %usec_timeout.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %1 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %usec_timeout.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp5.not.i.i = icmp eq i32 %2, 0
  br i1 %cmp5.not.i.i, label %entry.do.end.i_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %i.06.i.i = phi i32 [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ], [ 0, %entry.for.body.i.i_crit_edge ]
  %3 = ptrtoint ptr %mc_rreg.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mc_rreg.i.i, align 8
  %call.i.i = call i32 %4(ptr noundef %rdev, i32 noundef 0) #5
  %and.i.i = and i32 %call.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.i.if.end.i_crit_edge

for.body.i.i.if.end.i_crit_edge:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %5(i32 noundef 214748) #5
  %inc.i.i = add nuw i32 %i.06.i.i, 1
  %6 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %usec_timeout.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %7
  br i1 %cmp.i.i, label %if.end.i.i.for.body.i.i_crit_edge, label %if.end.i.i.do.end.i_crit_edge

if.end.i.i.do.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

do.end.i:                                         ; preds = %if.end.i.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %8 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rdev, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.24) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %for.body.i.i.if.end.i_crit_edge
  %real_vram_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 11
  %10 = ptrtoint ptr %real_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %real_vram_size.i, align 8
  %conv.i = trunc i64 %11 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  call void @arm_heavy_mb() #5
  %12 = call i32 @llvm.bswap.i32(i32 %conv.i) #5
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %13 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 248
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %12) #5, !srcloc !60
  %mc_wreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 33
  %15 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mc_wreg.i, align 4
  %vram_start.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 8
  %17 = ptrtoint ptr %vram_start.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %vram_start.i, align 8
  %shr.i = lshr i64 %18, 16
  %and.i = and i64 %shr.i, 65535
  %vram_end.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 9
  %19 = ptrtoint ptr %vram_end.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %vram_end.i, align 8
  %and4.i = and i64 %20, 4294901760
  %or.i = or i64 %and.i, %and4.i
  %conv6.i = trunc i64 %or.i to i32
  call void %16(ptr noundef %rdev, i32 noundef 4, i32 noundef %conv6.i) #5
  %21 = ptrtoint ptr %vram_start.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %vram_start.i, align 8
  %23 = trunc i64 %22 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  call void @arm_heavy_mb() #5
  %24 = call i32 @llvm.bswap.i32(i32 %23) #5
  %25 = shl i32 %24, 16
  %26 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i70.i = getelementptr i8, ptr %27, i32 308
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70.i, i32 %25) #5, !srcloc !60
  %flags.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags.i, align 8
  %and13.i = and i32 %29, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  %30 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mc_wreg.i, align 4
  br i1 %tobool14.not.i, label %if.else.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %gtt_start.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 6
  %32 = ptrtoint ptr %gtt_start.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %gtt_start.i, align 8
  %shr18.i = lshr i64 %33, 16
  %and19.i = and i64 %shr18.i, 65535
  %gtt_end.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 7
  %34 = ptrtoint ptr %gtt_end.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %gtt_end.i, align 8
  %and23.i = and i64 %35, 4294901760
  %or25.i = or i64 %and19.i, %and23.i
  %conv26.i = trunc i64 %or25.i to i32
  call void %31(ptr noundef %rdev, i32 noundef 5, i32 noundef %conv26.i) #5
  %36 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mc_wreg.i, align 4
  %agp_base.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 2
  %38 = ptrtoint ptr %agp_base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %agp_base.i, align 8
  call void %37(ptr noundef %rdev, i32 noundef 6, i32 noundef %39) #5
  br label %r520_mc_program.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void %31(ptr noundef %rdev, i32 noundef 5, i32 noundef -1) #5
  %40 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mc_wreg.i, align 4
  call void %41(ptr noundef %rdev, i32 noundef 6, i32 noundef 0) #5
  br label %r520_mc_program.exit

r520_mc_program.exit:                             ; preds = %if.else.i, %if.then15.i
  %42 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mc_wreg.i, align 4
  call void %43(ptr noundef %rdev, i32 noundef 7, i32 noundef 0) #5
  call void @rv515_mc_resume(ptr noundef %rdev, ptr noundef nonnull %save.i) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %save.i) #5
  call void @rv515_clock_startup(ptr noundef %rdev) #5
  call void @rv515_vga_render_disable(ptr noundef %rdev) #5
  %family.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %44 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %45)
  %cmp.i = icmp eq i32 %45, 23
  br i1 %cmp.i, label %if.then.i, label %r520_mc_program.exit.if.end.i74_crit_edge

r520_mc_program.exit.if.end.i74_crit_edge:        ; preds = %r520_mc_program.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i74

if.then.i:                                        ; preds = %r520_mc_program.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  call void @arm_heavy_mb() #5
  %46 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i68 = getelementptr i8, ptr %47, i32 16680
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i68, i32 -16777216) #5, !srcloc !60
  br label %if.end.i74

if.end.i74:                                       ; preds = %if.then.i, %r520_mc_program.exit.if.end.i74_crit_edge
  call void @r420_pipes_init(ptr noundef %rdev) #5
  %48 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %49, i32 16428
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.i) #5, !srcloc !57
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  %51 = lshr i32 %50, 12
  %52 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %53, i32 5900
  %54 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i) #5, !srcloc !57
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  %55 = lshr i32 %54, 26
  %and.i69 = and i32 %55, 3
  %shl.i = shl nuw nsw i32 1, %and.i69
  %shl4.i = and i32 %51, 240
  %or.i70 = or i32 %shl.i, %shl4.i
  %pll_wreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 35
  %56 = ptrtoint ptr %pll_wreg.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pll_wreg.i, align 4
  call void %57(ptr noundef %rdev, i32 noundef 13, i32 noundef %or.i70) #5
  %58 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %usec_timeout.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp5.not.i.i73 = icmp eq i32 %59, 0
  br i1 %cmp5.not.i.i73, label %if.end.i74.do.end.i83_crit_edge, label %if.end.i74.for.body.i.i79_crit_edge

if.end.i74.for.body.i.i79_crit_edge:              ; preds = %if.end.i74
  br label %for.body.i.i79

if.end.i74.do.end.i83_crit_edge:                  ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i83

for.body.i.i79:                                   ; preds = %if.end.i.i82.for.body.i.i79_crit_edge, %if.end.i74.for.body.i.i79_crit_edge
  %i.06.i.i75 = phi i32 [ %inc.i.i80, %if.end.i.i82.for.body.i.i79_crit_edge ], [ 0, %if.end.i74.for.body.i.i79_crit_edge ]
  %60 = ptrtoint ptr %mc_rreg.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mc_rreg.i.i, align 8
  %call.i.i76 = call i32 %61(ptr noundef %rdev, i32 noundef 0) #5
  %and.i.i77 = and i32 %call.i.i76, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i77)
  %tobool.not.i.i78 = icmp eq i32 %and.i.i77, 0
  br i1 %tobool.not.i.i78, label %if.end.i.i82, label %for.body.i.i79.r520_gpu_init.exit_crit_edge

for.body.i.i79.r520_gpu_init.exit_crit_edge:      ; preds = %for.body.i.i79
  call void @__sanitizer_cov_trace_pc() #7
  br label %r520_gpu_init.exit

if.end.i.i82:                                     ; preds = %for.body.i.i79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %62(i32 noundef 214748) #5
  %inc.i.i80 = add nuw i32 %i.06.i.i75, 1
  %63 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %usec_timeout.i.i, align 4
  %cmp.i.i81 = icmp ult i32 %inc.i.i80, %64
  br i1 %cmp.i.i81, label %if.end.i.i82.for.body.i.i79_crit_edge, label %if.end.i.i82.do.end.i83_crit_edge

if.end.i.i82.do.end.i83_crit_edge:                ; preds = %if.end.i.i82
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i83

if.end.i.i82.for.body.i.i79_crit_edge:            ; preds = %if.end.i.i82
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i79

do.end.i83:                                       ; preds = %if.end.i.i82.do.end.i83_crit_edge, %if.end.i74.do.end.i83_crit_edge
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #8
  br label %r520_gpu_init.exit

r520_gpu_init.exit:                               ; preds = %do.end.i83, %for.body.i.i79.r520_gpu_init.exit_crit_edge
  %65 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flags.i, align 8
  %and = and i32 %66, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %r520_gpu_init.exit.if.end3_crit_edge, label %if.then

r520_gpu_init.exit.if.end3_crit_edge:             ; preds = %r520_gpu_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then:                                          ; preds = %r520_gpu_init.exit
  %call = call i32 @rv370_pcie_gart_enable(ptr noundef %rdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end3_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %r520_gpu_init.exit.if.end3_crit_edge
  %call4 = call i32 @radeon_wb_init(ptr noundef %rdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %call8 = call i32 @radeon_fence_driver_start_ring(ptr noundef %rdev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %do.end

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %67 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rdev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.16, i32 noundef %call8) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %irq = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55
  %69 = ptrtoint ptr %irq to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %irq, align 8, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool12.not = icmp eq i8 %70, 0
  br i1 %tobool12.not, label %if.then13, label %if.end11.if.end18_crit_edge

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then13:                                        ; preds = %if.end11
  %call14 = call i32 @radeon_irq_kms_init(ptr noundef %rdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then13.if.end18_crit_edge, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then13.if.end18_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.end18:                                         ; preds = %if.then13.if.end18_crit_edge, %if.end11.if.end18_crit_edge
  %call19 = call i32 @rs600_irq_set(ptr noundef %rdev) #5
  %71 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %72, i32 304
  %73 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !57
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  %74 = call i32 @llvm.bswap.i32(i32 %73) #5
  %hdp_cntl = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 3
  %75 = ptrtoint ptr %hdp_cntl to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %hdp_cntl, align 4
  %call21 = call i32 @r100_cp_init(ptr noundef %rdev, i32 noundef 1048576) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end28, label %do.end26

do.end26:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %76 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rdev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.19, i32 noundef %call21) #8
  br label %cleanup

if.end28:                                         ; preds = %if.end18
  %call29 = call i32 @radeon_ib_pool_init(ptr noundef %rdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end28.cleanup_crit_edge, label %do.end34

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %78 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rdev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.22, i32 noundef %call29) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end34, %if.end28.cleanup_crit_edge, %do.end26, %if.then13.cleanup_crit_edge, %do.end, %if.end3.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %do.end ], [ %call21, %do.end26 ], [ %call29, %do.end34 ], [ %call, %if.then.cleanup_crit_edge ], [ %call4, %if.end3.cleanup_crit_edge ], [ %call14, %if.then13.cleanup_crit_edge ], [ 0, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r520_init(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @radeon_scratch_init(ptr noundef %rdev) #5
  tail call void @radeon_surface_init(ptr noundef %rdev) #5
  tail call void @r100_restore_sanity(ptr noundef %rdev) #5
  %call = tail call zeroext i1 @radeon_get_bios(ptr noundef %rdev) #5
  br i1 %call, label %entry.if.end2_crit_edge, label %if.then

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2

if.then:                                          ; preds = %entry
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %1)
  %cmp = icmp ugt i32 %1, 17
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end2_crit_edge

if.then.if.end2_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end2:                                          ; preds = %if.then.if.end2_crit_edge, %entry.if.end2_crit_edge
  %is_atom_bios = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 14
  %2 = ptrtoint ptr %is_atom_bios to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_atom_bios, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.end, label %if.then3

if.then3:                                         ; preds = %if.end2
  %call4 = tail call i32 @radeon_atombios_init(ptr noundef %rdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end8, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.5) #8
  br label %cleanup

if.end8:                                          ; preds = %if.then3
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %6 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %asic, align 8
  %asic_reset = getelementptr inbounds %struct.radeon_asic, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %asic_reset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %asic_reset, align 4
  %call9 = tail call i32 %9(ptr noundef %rdev, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.if.end18_crit_edge, label %do.end14

if.end8.if.end18_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rdev, align 8
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %12 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 3648
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #5
  %16 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i103 = getelementptr i8, ptr %17, i32 1984
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i103) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str, i32 noundef %15, i32 noundef %19) #8
  br label %if.end18

if.end18:                                         ; preds = %do.end14, %if.end8.if.end18_crit_edge
  %call19 = tail call zeroext i1 @radeon_boot_test_post_card(ptr noundef %rdev) #5
  br i1 %call19, label %if.end23, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %call24 = tail call zeroext i1 @radeon_card_posted(ptr noundef %rdev) #5
  br i1 %call24, label %if.end23.if.end32_crit_edge, label %land.lhs.true

if.end23.if.end32_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

land.lhs.true:                                    ; preds = %if.end23
  %bios = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 13
  %20 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bios, align 8
  %tobool25.not = icmp eq ptr %21, null
  br i1 %tobool25.not, label %land.lhs.true.if.end32_crit_edge, label %do.end29

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

do.end29:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #8
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  %22 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mode_info, align 4
  %call31 = tail call i32 @atom_asic_init(ptr noundef %23) #5
  br label %if.end32

if.end32:                                         ; preds = %do.end29, %land.lhs.true.if.end32_crit_edge, %if.end23.if.end32_crit_edge
  %ddev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %24 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ddev, align 4
  tail call void @radeon_get_clock_info(ptr noundef %25) #5
  %flags = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 8
  %and = and i32 %27, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool33.not = icmp eq i32 %and, 0
  br i1 %tobool33.not, label %if.end32.if.end39_crit_edge, label %if.then34

if.end32.if.end39_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.then34:                                        ; preds = %if.end32
  %call35 = tail call i32 @radeon_agp_init(ptr noundef %rdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then34.if.end39_crit_edge, label %if.then37

if.then34.if.end39_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.then37:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @radeon_agp_disable(ptr noundef %rdev) #5
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.then34.if.end39_crit_edge, %if.end32.if.end39_crit_edge
  %vram_width.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 10
  %28 = ptrtoint ptr %vram_width.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 128, ptr %vram_width.i.i, align 8
  %vram_is_ddr.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 13
  %29 = ptrtoint ptr %vram_is_ddr.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %vram_is_ddr.i.i, align 4
  %mc_rreg.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 32
  %30 = ptrtoint ptr %mc_rreg.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mc_rreg.i.i, align 8
  %call.i.i = tail call i32 %31(ptr noundef %rdev, i32 noundef 8) #5
  %and.i.i = lshr i32 %call.i.i, 24
  %shr.i.i = and i32 %and.i.i, 3
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.r520_init, i32 0, i32 %shr.i.i
  %32 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %32)
  %switch.load = load i32, ptr %switch.gep, align 4
  %and15.i.i = lshr i32 %call.i.i, 23
  %and15.i.lobit.i = and i32 %and15.i.i, 1
  %spec.select.i = shl nuw nsw i32 %switch.load, %and15.i.lobit.i
  %33 = ptrtoint ptr %vram_width.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %spec.select.i, ptr %vram_width.i.i, align 8
  tail call void @r100_vram_init_sizes(ptr noundef %rdev) #5
  %mc.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42
  tail call void @radeon_vram_location(ptr noundef %rdev, ptr noundef %mc.i, i64 noundef 0) #5
  %gtt_base_align.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 15
  %34 = ptrtoint ptr %gtt_base_align.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 0, ptr %gtt_base_align.i, align 8
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags, align 8
  %and.i = and i32 %36, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end39.r520_mc_init.exit_crit_edge

if.end39.r520_mc_init.exit_crit_edge:             ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %r520_mc_init.exit

if.then.i:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @radeon_gtt_location(ptr noundef %rdev, ptr noundef %mc.i) #5
  br label %r520_mc_init.exit

r520_mc_init.exit:                                ; preds = %if.then.i, %if.end39.r520_mc_init.exit_crit_edge
  tail call void @radeon_update_bandwidth_info(ptr noundef %rdev) #5
  tail call void @rv515_debugfs(ptr noundef %rdev) #5
  tail call void @radeon_fence_driver_init(ptr noundef %rdev) #5
  %call40 = tail call i32 @radeon_bo_init(ptr noundef %rdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %r520_mc_init.exit.cleanup_crit_edge

r520_mc_init.exit.cleanup_crit_edge:              ; preds = %r520_mc_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end43:                                         ; preds = %r520_mc_init.exit
  %call44 = tail call i32 @rv370_pcie_gart_init(ptr noundef %rdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end47:                                         ; preds = %if.end43
  tail call void @rv515_set_safe_registers(ptr noundef %rdev) #5
  %call48 = tail call i32 @radeon_pm_init(ptr noundef %rdev) #5
  %accel_working = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 66
  %37 = ptrtoint ptr %accel_working to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %accel_working, align 2
  %call49 = tail call fastcc i32 @r520_startup(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end47.cleanup_crit_edge, label %do.end54

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end54:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.14) #8
  tail call void @r100_cp_fini(ptr noundef %rdev) #5
  tail call void @radeon_wb_fini(ptr noundef %rdev) #5
  tail call void @radeon_ib_pool_fini(ptr noundef %rdev) #5
  tail call void @radeon_irq_kms_fini(ptr noundef %rdev) #5
  tail call void @rv370_pcie_gart_fini(ptr noundef %rdev) #5
  tail call void @radeon_agp_fini(ptr noundef %rdev) #5
  %40 = ptrtoint ptr %accel_working to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %accel_working, align 2
  br label %cleanup

cleanup:                                          ; preds = %do.end54, %if.end47.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %r520_mc_init.exit.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %do.end, %if.then3.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %if.then.cleanup_crit_edge ], [ %call4, %if.then3.cleanup_crit_edge ], [ -22, %if.end18.cleanup_crit_edge ], [ %call40, %r520_mc_init.exit.cleanup_crit_edge ], [ %call44, %if.end43.cleanup_crit_edge ], [ 0, %do.end54 ], [ 0, %if.end47.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_scratch_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_restore_sanity(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_get_bios(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_atombios_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_boot_test_post_card(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_card_posted(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_get_clock_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_agp_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_agp_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv515_debugfs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_fence_driver_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_bo_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv370_pcie_gart_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv515_set_safe_registers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_pm_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_cp_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_wb_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ib_pool_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_irq_kms_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv370_pcie_gart_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_agp_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv370_pcie_gart_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_wb_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_fence_driver_start_ring(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_irq_kms_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rs600_irq_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_cp_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_ib_pool_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv515_mc_stop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv515_mc_resume(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv515_vga_render_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r420_pipes_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_vram_init_sizes(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_vram_location(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_gtt_location(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_update_bandwidth_info(ptr noundef) local_unnamed_addr #2

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

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/r520.c", i32 231, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @r520_resume._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @r520_resume._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/radeon/r520.c", i32 271, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @r520_init._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @r520_init._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @r520_init._entry.8, !15, !"_entry", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/radeon/r520.c", i32 276, i32 3}
!16 = !{ptr @r520_init._entry_ptr.9, !15, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/radeon/r520.c", i32 286, i32 3}
!19 = !{ptr @r520_init._entry.10, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @r520_init._entry_ptr.12, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/radeon/r520.c", i32 319, i32 3}
!23 = !{ptr @r520_init._entry.13, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @r520_init._entry_ptr.15, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/radeon/r520.c", i32 191, i32 3}
!27 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @r520_startup._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @r520_startup._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/radeon/r520.c", i32 207, i32 3}
!32 = !{ptr @r520_startup._entry.18, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @r520_startup._entry_ptr.20, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.22, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/radeon/r520.c", i32 213, i32 3}
!36 = !{ptr @r520_startup._entry.21, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @r520_startup._entry_ptr.23, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.24, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/radeon/r520.c", i32 142, i32 3}
!40 = !{ptr @.str.25, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @r520_mc_program._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @r520_mc_program._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.26, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/radeon/r520.c", i32 89, i32 3}
!45 = !{ptr @.str.27, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @r520_gpu_init._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @r520_gpu_init._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i64 6694846}
!58 = !{i64 2157415031}
!59 = !{i64 2157415438}
!60 = !{i64 6694428}
!61 = !{i8 0, i8 2}
