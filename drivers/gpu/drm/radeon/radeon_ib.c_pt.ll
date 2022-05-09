; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/radeon_ib.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/radeon_ib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.radeon_sa_bo = type { %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
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
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.87, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.87 = type { i32, ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.79, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.80, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.81, ptr, %struct.address_space, %struct.list_head, %union.anon.82, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.79 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.80 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.81 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.82 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@radeon_ib_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 66, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get a new IB (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"radeon_ib_get\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/gpu/drm/radeon/radeon_ib.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@radeon_ib_get._entry_ptr = internal global ptr @radeon_ib_get._entry, section ".printk_index", align 4
@radeon_ib_schedule._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 133, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"couldn't schedule ib\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"radeon_ib_schedule\00", [45 x i8] zeroinitializer }, align 32
@radeon_ib_schedule._entry_ptr = internal global ptr @radeon_ib_schedule._entry, section ".printk_index", align 4
@radeon_ib_schedule._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 140, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"scheduling IB failed (%d).\0A\00", [36 x i8] zeroinitializer }, align 32
@radeon_ib_schedule._entry_ptr.9 = internal global ptr @radeon_ib_schedule._entry.7, section ".printk_index", align 4
@radeon_ib_schedule._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 154, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to sync rings (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@radeon_ib_schedule._entry_ptr.12 = internal global ptr @radeon_ib_schedule._entry.10, section ".printk_index", align 4
@radeon_ib_schedule._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.2, i32 170, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to emit fence for new IB (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@radeon_ib_schedule._entry_ptr.15 = internal global ptr @radeon_ib_schedule._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"radeon: failed testing IB on GFX ring (%d).\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"radeon: failed testing IB on ring %d (%d).\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"radeon_sa_info\00", [17 x i8] zeroinitializer }, align 32
@radeon_debugfs_sa_info_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @radeon_debugfs_sa_info_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 66, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 133, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 140, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 154, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 170, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 277, i32 5 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 283, i32 5 }
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 314, i32 22 }
@___asan_gen_.73 = private unnamed_addr constant [28 x i8] c"radeon_debugfs_sa_info_fops\00", align 1
@___asan_gen_.74 = private constant [38 x i8] c"../drivers/gpu/drm/radeon/radeon_ib.c\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 305, i32 1 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @radeon_ib_get._entry, ptr @radeon_ib_get._entry_ptr, ptr @radeon_ib_schedule._entry, ptr @radeon_ib_schedule._entry.10, ptr @radeon_ib_schedule._entry.13, ptr @radeon_ib_schedule._entry.7, ptr @radeon_ib_schedule._entry_ptr, ptr @radeon_ib_schedule._entry_ptr.12, ptr @radeon_ib_schedule._entry_ptr.15, ptr @radeon_ib_schedule._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @radeon_debugfs_sa_info_fops], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_ib_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_ib_schedule._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_ib_schedule._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_ib_schedule._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_ib_schedule._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_debugfs_sa_info_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_ib_get(ptr noundef %rdev, i32 noundef %ring, ptr noundef %ib, ptr noundef %vm, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ring_tmp_bo = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 54
  %call = tail call i32 @radeon_sa_bo_new(ptr noundef %rdev, ptr noundef %ring_tmp_bo, ptr noundef %ib, i32 noundef %size, i32 noundef 256) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %call) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %sync = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 8
  tail call void @radeon_sync_create(ptr noundef %sync) #3
  %ring1 = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 4
  %2 = ptrtoint ptr %ring1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %ring, ptr %ring1, align 4
  %fence = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 5
  %3 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %fence, align 8
  %4 = ptrtoint ptr %ib to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ib, align 8
  %manager.i = getelementptr inbounds %struct.radeon_sa_bo, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %manager.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %manager.i, align 4
  %cpu_ptr.i = getelementptr inbounds %struct.radeon_sa_manager, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %cpu_ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cpu_ptr.i, align 8
  %soffset.i = getelementptr inbounds %struct.radeon_sa_bo, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %soffset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %soffset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %11
  %ptr = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 3
  %12 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr.i, ptr %ptr, align 8
  %vm4 = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 6
  %13 = ptrtoint ptr %vm4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %vm, ptr %vm4, align 4
  %tobool5.not = icmp eq ptr %vm, null
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %14 = ptrtoint ptr %soffset.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %soffset.i, align 4
  %add = add i32 %15, 1048576
  %conv = zext i32 %add to i64
  br label %if.end11

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %16 = ptrtoint ptr %manager.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %manager.i, align 4
  %gpu_addr.i = getelementptr inbounds %struct.radeon_sa_manager, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %gpu_addr.i, align 8
  %20 = ptrtoint ptr %soffset.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %soffset.i, align 4
  %conv.i = zext i32 %21 to i64
  %add.i = add i64 %19, %conv.i
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then6
  %conv.sink = phi i64 [ %add.i, %if.else ], [ %conv, %if.then6 ]
  %22 = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv.sink, ptr %22, align 8
  %is_const_ib = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 7
  %24 = ptrtoint ptr %is_const_ib to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %is_const_ib, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_sa_bo_new(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_sync_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_ib_free(ptr noundef %rdev, ptr noundef %ib) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %sync = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 8
  %fence = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 5
  %0 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fence, align 8
  tail call void @radeon_sync_free(ptr noundef %rdev, ptr noundef %sync, ptr noundef %1) #3
  %2 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fence, align 8
  tail call void @radeon_sa_bo_free(ptr noundef %rdev, ptr noundef %ib, ptr noundef %3) #3
  tail call void @radeon_fence_unref(ptr noundef %fence) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_sync_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_sa_bo_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_fence_unref(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_ib_schedule(ptr noundef %rdev, ptr noundef %ib, ptr noundef %const_ib, i1 noundef zeroext %hdp_flush) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ring2 = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 4
  %0 = ptrtoint ptr %ring2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ring2, align 4
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1
  %length_dw = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 1
  %2 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length_dw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %ready = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 17
  %4 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ready, align 8, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %6 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.5) #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i32 @radeon_ring_lock(ptr noundef %rdev, ptr noundef %arrayidx, i32 noundef 96) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end10, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.8, i32 noundef %call) #6
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %vm = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 6
  %10 = ptrtoint ptr %vm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vm, align 4
  %tobool11.not = icmp eq ptr %11, null
  br i1 %tobool11.not, label %if.end10.if.end16_crit_edge, label %if.then12

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end16

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  %12 = ptrtoint ptr %ring2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ring2, align 4
  %call15 = tail call ptr @radeon_vm_grab_id(ptr noundef %rdev, ptr noundef nonnull %11, i32 noundef %13) #3
  %sync = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 8
  tail call void @radeon_sync_fence(ptr noundef %sync, ptr noundef %call15) #3
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end10.if.end16_crit_edge
  %sync17 = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 8
  %14 = ptrtoint ptr %ring2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ring2, align 4
  %call19 = tail call i32 @radeon_sync_rings(ptr noundef %rdev, ptr noundef %sync17, i32 noundef %15) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end26, label %do.end24

do.end24:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  %16 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.11, i32 noundef %call19) #6
  tail call void @radeon_ring_unlock_undo(ptr noundef %rdev, ptr noundef %arrayidx) #3
  br label %cleanup

if.end26:                                         ; preds = %if.end16
  %18 = ptrtoint ptr %vm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vm, align 4
  %tobool28.not = icmp eq ptr %19, null
  br i1 %tobool28.not, label %if.end26.if.end33_crit_edge, label %if.then29

if.end26.if.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end33

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  %20 = ptrtoint ptr %ring2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ring2, align 4
  %last_vm_update = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 8, i32 2
  %22 = ptrtoint ptr %last_vm_update to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %last_vm_update, align 4
  tail call void @radeon_vm_flush(ptr noundef %rdev, ptr noundef nonnull %19, i32 noundef %21, ptr noundef %23) #3
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %if.end26.if.end33_crit_edge
  %tobool34.not = icmp eq ptr %const_ib, null
  br i1 %tobool34.not, label %if.end33.if.end40_crit_edge, label %if.then35

if.end33.if.end40_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end40

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #5
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %24 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %asic, align 8
  %ring37 = getelementptr inbounds %struct.radeon_ib, ptr %const_ib, i32 0, i32 4
  %26 = ptrtoint ptr %ring37 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ring37, align 4
  %arrayidx38 = getelementptr %struct.radeon_asic, ptr %25, i32 0, i32 14, i32 %27
  %28 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx38, align 4
  %ib_execute = getelementptr inbounds %struct.radeon_asic_ring, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %ib_execute to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ib_execute, align 4
  tail call void %31(ptr noundef %rdev, ptr noundef nonnull %const_ib) #3
  %sync39 = getelementptr inbounds %struct.radeon_ib, ptr %const_ib, i32 0, i32 8
  tail call void @radeon_sync_free(ptr noundef %rdev, ptr noundef %sync39, ptr noundef null) #3
  br label %if.end40

if.end40:                                         ; preds = %if.then35, %if.end33.if.end40_crit_edge
  %asic41 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %32 = ptrtoint ptr %asic41 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %asic41, align 8
  %34 = ptrtoint ptr %ring2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ring2, align 4
  %arrayidx44 = getelementptr %struct.radeon_asic, ptr %33, i32 0, i32 14, i32 %35
  %36 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx44, align 4
  %ib_execute45 = getelementptr inbounds %struct.radeon_asic_ring, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %ib_execute45 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ib_execute45, align 4
  tail call void %39(ptr noundef %rdev, ptr noundef %ib) #3
  %fence = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 5
  %40 = ptrtoint ptr %ring2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ring2, align 4
  %call47 = tail call i32 @radeon_fence_emit(ptr noundef %rdev, ptr noundef %fence, i32 noundef %41) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end54, label %do.end52

do.end52:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #5
  %42 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.14, i32 noundef %call47) #6
  tail call void @radeon_ring_unlock_undo(ptr noundef %rdev, ptr noundef %arrayidx) #3
  br label %cleanup

if.end54:                                         ; preds = %if.end40
  br i1 %tobool34.not, label %if.end54.if.end60_crit_edge, label %if.then56

if.end54.if.end60_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end60

if.then56:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #5
  %44 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fence, align 8
  %call58 = tail call ptr @radeon_fence_ref(ptr noundef %45) #3
  %fence59 = getelementptr inbounds %struct.radeon_ib, ptr %const_ib, i32 0, i32 5
  %46 = ptrtoint ptr %fence59 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call58, ptr %fence59, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.then56, %if.end54.if.end60_crit_edge
  %47 = ptrtoint ptr %vm to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vm, align 4
  %tobool62.not = icmp eq ptr %48, null
  br i1 %tobool62.not, label %if.end60.if.end66_crit_edge, label %if.then63

if.end60.if.end66_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end66

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #5
  %49 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fence, align 8
  tail call void @radeon_vm_fence(ptr noundef %rdev, ptr noundef nonnull %48, ptr noundef %50) #3
  br label %if.end66

if.end66:                                         ; preds = %if.then63, %if.end60.if.end66_crit_edge
  tail call void @radeon_ring_unlock_commit(ptr noundef %rdev, ptr noundef %arrayidx, i1 noundef zeroext %hdp_flush) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %do.end52, %do.end24, %do.end8, %do.end
  %retval.0 = phi i32 [ %call, %do.end8 ], [ %call19, %do.end24 ], [ %call47, %do.end52 ], [ 0, %if.end66 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_ring_lock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radeon_vm_grab_id(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_sync_fence(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_sync_rings(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ring_unlock_undo(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_vm_flush(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_fence_emit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radeon_fence_ref(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_vm_fence(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ring_unlock_commit(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_ib_pool_init(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ib_pool_ready = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 53
  %0 = ptrtoint ptr %ib_pool_ready to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ib_pool_ready, align 8, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %2 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %3)
  %cmp = icmp ugt i32 %3, 56
  %ring_tmp_bo = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 54
  %. = select i1 %cmp, i32 4, i32 0
  %call3 = tail call i32 @radeon_sa_bo_manager_init(ptr noundef %rdev, ptr noundef %ring_tmp_bo, i32 noundef 1048576, i32 noundef 4096, i32 noundef 2, i32 noundef %.) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool5.not = icmp eq i32 %call3, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %ring_tmp_bo8 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 54
  %call9 = tail call i32 @radeon_sa_bo_manager_start(ptr noundef %rdev, ptr noundef %ring_tmp_bo8) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  %4 = ptrtoint ptr %ib_pool_ready to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %ib_pool_ready, align 8
  %ddev.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %5 = ptrtoint ptr %ddev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ddev.i, align 4
  %primary.i = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %primary.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %primary.i, align 4
  %debugfs_root.i = getelementptr inbounds %struct.drm_minor, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %debugfs_root.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %debugfs_root.i, align 4
  %call.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.18, i16 noundef zeroext 292, ptr noundef %10, ptr noundef %rdev, ptr noundef nonnull @radeon_debugfs_sa_info_fops) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ 0, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call9, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_sa_bo_manager_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_sa_bo_manager_start(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_ib_pool_fini(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ib_pool_ready = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 53
  %0 = ptrtoint ptr %ib_pool_ready to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ib_pool_ready, align 8, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %ring_tmp_bo = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 54
  %call = tail call i32 @radeon_sa_bo_manager_suspend(ptr noundef %rdev, ptr noundef %ring_tmp_bo) #3
  tail call void @radeon_sa_bo_manager_fini(ptr noundef %rdev, ptr noundef %ring_tmp_bo) #3
  %2 = ptrtoint ptr %ib_pool_ready to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %ib_pool_ready, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_sa_bo_manager_suspend(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_sa_bo_manager_fini(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_ib_ring_tests(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %needs_reset = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 68
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.032 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %ready = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %i.032, i32 17
  %0 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ready, align 8, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %i.032
  %2 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asic, align 8
  %arrayidx3 = getelementptr %struct.radeon_asic, ptr %3, i32 0, i32 14, i32 %i.032
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx3, align 4
  %ib_test = getelementptr inbounds %struct.radeon_asic_ring, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %ib_test to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ib_test, align 4
  %call = tail call i32 %7(ptr noundef %rdev, ptr noundef %arrayidx) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end.for.inc_crit_edge, label %if.then5

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.then5:                                         ; preds = %if.end
  tail call void @radeon_fence_driver_force_completion(ptr noundef %rdev, i32 noundef %i.032) #3
  %8 = ptrtoint ptr %ready to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %ready, align 8
  %9 = ptrtoint ptr %needs_reset to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %needs_reset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.032)
  %cmp7 = icmp eq i32 %i.032, 0
  br i1 %cmp7, label %cleanup, label %if.else

if.else:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %i.032, i32 noundef %call) #3
  br label %for.inc

cleanup:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16, i32 noundef %call) #3
  %accel_working = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 66
  %10 = ptrtoint ptr %accel_working to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %accel_working, align 2
  br label %cleanup11

for.inc:                                          ; preds = %if.else, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.032, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.inc.cleanup11_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.cleanup11_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup11

cleanup11:                                        ; preds = %for.inc.cleanup11_crit_edge, %cleanup
  %retval.2 = phi i32 [ %call, %cleanup ], [ 0, %for.inc.cleanup11_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_fence_driver_force_completion(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_debugfs_sa_info_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @radeon_debugfs_sa_info_show, ptr noundef %1) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_debugfs_sa_info_show(ptr noundef %m, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %ring_tmp_bo = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 54
  tail call void @radeon_sa_bo_dump_debug_info(ptr noundef %ring_tmp_bo, ptr noundef %m) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_sa_bo_dump_debug_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !29, !31}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/radeon_ib.c", i32 66, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @radeon_ib_get._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @radeon_ib_get._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/radeon/radeon_ib.c", i32 133, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @radeon_ib_schedule._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @radeon_ib_schedule._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/radeon/radeon_ib.c", i32 140, i32 3}
!15 = !{ptr @radeon_ib_schedule._entry.7, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @radeon_ib_schedule._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/radeon/radeon_ib.c", i32 154, i32 3}
!19 = !{ptr @radeon_ib_schedule._entry.10, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @radeon_ib_schedule._entry_ptr.12, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/radeon/radeon_ib.c", i32 170, i32 3}
!23 = !{ptr @radeon_ib_schedule._entry.13, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @radeon_ib_schedule._entry_ptr.15, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/radeon/radeon_ib.c", i32 277, i32 5}
!27 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/radeon/radeon_ib.c", i32 283, i32 5}
!29 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/radeon/radeon_ib.c", i32 314, i32 22}
!31 = !{ptr @radeon_debugfs_sa_info_fops, !32, !"radeon_debugfs_sa_info_fops", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/radeon/radeon_ib.c", i32 305, i32 1}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{i8 0, i8 2}
