; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/radeon_cursor.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/radeon_cursor.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.87 = type { i32, ptr }
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
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.90] }
%struct.anon.90 = type { [12 x %struct.ttm_pool_type] }
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
%struct.radeon_crtc = type { %struct.drm_crtc, i32, i8, i8, i8, i32, ptr, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, %union.dfixed, %union.dfixed, %struct.drm_display_mode, i32, ptr, ptr, i32, %struct.radeon_atom_ss, i8, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, %struct.drm_display_mode, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.radeon_atom_ss = type { i16, i16, i8, i16, i8, i8, i8, i16, i16 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }

@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"bad cursor width or height %d x %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Cannot find cursor object %x for crtc %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to pin new cursor BO (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"x %d y %d c->x %d c->y %d\0A\00", [37 x i8] zeroinitializer }, align 32
@radeon_bo_reserve._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 71, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%p reserve failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"radeon_bo_reserve\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/radeon/radeon_object.h\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@radeon_bo_reserve._entry_ptr = internal global ptr @radeon_bo_reserve._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 299, i32 3 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 305, i32 3 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 321, i32 3 }
@___asan_gen_.23 = private constant [42 x i8] c"../drivers/gpu/drm/radeon/radeon_cursor.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 169, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [42 x i8] c"../drivers/gpu/drm/radeon/radeon_object.h\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 71, i32 4 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @radeon_bo_reserve._entry, ptr @radeon_bo_reserve._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_bo_reserve._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_crtc_cursor_move(ptr noundef %crtc, i32 noundef %x, i32 noundef %y) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @radeon_lock_cursor(ptr noundef %crtc, i1 noundef zeroext true)
  tail call fastcc void @radeon_cursor_move_locked(ptr noundef %crtc, i32 noundef %x, i32 noundef %y)
  tail call fastcc void @radeon_lock_cursor(ptr noundef %crtc, i1 noundef zeroext false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_lock_cursor(ptr nocapture noundef readonly %crtc, i1 noundef zeroext %lock) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %5)
  %cmp = icmp ugt i32 %5, 38
  br i1 %cmp, label %if.then, label %if.else4

if.then:                                          ; preds = %entry
  %crtc_offset = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 5
  %6 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %crtc_offset, align 8
  %add = add i32 %7, 27064
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 18
  %8 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %add)
  %cmp.i = icmp ule i32 %9, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add)
  %cmp1.i = icmp ugt i32 %add, 65535
  %or.cond.not.i = and i1 %cmp1.i, %cmp.i
  br i1 %or.cond.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %10 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %add
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !27
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !28
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add) #6
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i ], [ %13, %if.then.i ]
  %and = and i32 %retval.0.i, -65537
  %masksel104 = select i1 %lock, i32 65536, i32 0
  %cur_lock.0 = or i32 %and, %masksel104
  %14 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %crtc_offset, align 8
  %add3 = add i32 %15, 27064
  %16 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %add3)
  %cmp.i57 = icmp ule i32 %17, %add3
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add3)
  %cmp1.i58 = icmp ugt i32 %add3, 65535
  %or.cond.not.i59 = and i1 %cmp1.i58, %cmp.i57
  br i1 %or.cond.not.i59, label %if.else.i62, label %do.body.i

do.body.i:                                        ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  tail call void @arm_heavy_mb() #6
  %18 = tail call i32 @llvm.bswap.i32(i32 %cur_lock.0) #6
  %rmmio.i60 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %19 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rmmio.i60, align 4
  %add.ptr.i61 = getelementptr i8, ptr %20, i32 %add3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 %18) #6, !srcloc !30
  br label %if.end32

if.else.i62:                                      ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add3, i32 noundef %cur_lock.0) #6
  br label %if.end32

if.else4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %5)
  %cmp6 = icmp ugt i32 %5, 17
  %crtc_offset8 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 5
  %21 = ptrtoint ptr %crtc_offset8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %crtc_offset8, align 8
  br i1 %cmp6, label %if.then7, label %if.else19

if.then7:                                         ; preds = %if.else4
  %add9 = add i32 %22, 25636
  %rmmio_size.i63 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 18
  %23 = ptrtoint ptr %rmmio_size.i63 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rmmio_size.i63, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %add9)
  %cmp.i64 = icmp ule i32 %24, %add9
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add9)
  %cmp1.i65 = icmp ugt i32 %add9, 65535
  %or.cond.not.i66 = and i1 %cmp1.i65, %cmp.i64
  br i1 %or.cond.not.i66, label %if.else.i71, label %if.then.i69

if.then.i69:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %rmmio.i67 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %25 = ptrtoint ptr %rmmio.i67 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rmmio.i67, align 4
  %add.ptr.i68 = getelementptr i8, ptr %26, i32 %add9
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i68) #6, !srcloc !27
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !28
  br label %r100_mm_rreg.exit73

if.else.i71:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i70 = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add9) #6
  br label %r100_mm_rreg.exit73

r100_mm_rreg.exit73:                              ; preds = %if.else.i71, %if.then.i69
  %retval.0.i72 = phi i32 [ %call3.i70, %if.else.i71 ], [ %28, %if.then.i69 ]
  %and15 = and i32 %retval.0.i72, -65537
  %masksel103 = select i1 %lock, i32 65536, i32 0
  %cur_lock.1 = or i32 %and15, %masksel103
  %29 = ptrtoint ptr %crtc_offset8 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %crtc_offset8, align 8
  %add18 = add i32 %30, 25636
  %31 = ptrtoint ptr %rmmio_size.i63 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rmmio_size.i63, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %add18)
  %cmp.i75 = icmp ule i32 %32, %add18
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add18)
  %cmp1.i76 = icmp ugt i32 %add18, 65535
  %or.cond.not.i77 = and i1 %cmp1.i76, %cmp.i75
  br i1 %or.cond.not.i77, label %if.else.i81, label %do.body.i80

do.body.i80:                                      ; preds = %r100_mm_rreg.exit73
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  tail call void @arm_heavy_mb() #6
  %33 = tail call i32 @llvm.bswap.i32(i32 %cur_lock.1) #6
  %rmmio.i78 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %34 = ptrtoint ptr %rmmio.i78 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rmmio.i78, align 4
  %add.ptr.i79 = getelementptr i8, ptr %35, i32 %add18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79, i32 %33) #6, !srcloc !30
  br label %if.end32

if.else.i81:                                      ; preds = %r100_mm_rreg.exit73
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add18, i32 noundef %cur_lock.1) #6
  br label %if.end32

if.else19:                                        ; preds = %if.else4
  %add21 = add i32 %22, 608
  %rmmio_size.i83 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 18
  %36 = ptrtoint ptr %rmmio_size.i83 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rmmio_size.i83, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %add21)
  %cmp.i84 = icmp ule i32 %37, %add21
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add21)
  %cmp1.i85 = icmp ugt i32 %add21, 65535
  %or.cond.not.i86 = and i1 %cmp1.i85, %cmp.i84
  br i1 %or.cond.not.i86, label %if.else.i91, label %if.then.i89

if.then.i89:                                      ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #8
  %rmmio.i87 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %38 = ptrtoint ptr %rmmio.i87 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rmmio.i87, align 4
  %add.ptr.i88 = getelementptr i8, ptr %39, i32 %add21
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i88) #6, !srcloc !27
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !28
  br label %r100_mm_rreg.exit93

if.else.i91:                                      ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i90 = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add21) #6
  br label %r100_mm_rreg.exit93

r100_mm_rreg.exit93:                              ; preds = %if.else.i91, %if.then.i89
  %retval.0.i92 = phi i32 [ %call3.i90, %if.else.i91 ], [ %41, %if.then.i89 ]
  %and27 = and i32 %retval.0.i92, 2147483647
  %masksel = select i1 %lock, i32 -2147483648, i32 0
  %cur_lock.2 = or i32 %and27, %masksel
  %42 = ptrtoint ptr %crtc_offset8 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %crtc_offset8, align 8
  %add30 = add i32 %43, 608
  %44 = ptrtoint ptr %rmmio_size.i83 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rmmio_size.i83, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %add30)
  %cmp.i95 = icmp ule i32 %45, %add30
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add30)
  %cmp1.i96 = icmp ugt i32 %add30, 65535
  %or.cond.not.i97 = and i1 %cmp1.i96, %cmp.i95
  br i1 %or.cond.not.i97, label %if.else.i101, label %do.body.i100

do.body.i100:                                     ; preds = %r100_mm_rreg.exit93
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  tail call void @arm_heavy_mb() #6
  %46 = tail call i32 @llvm.bswap.i32(i32 %cur_lock.2) #6
  %rmmio.i98 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %47 = ptrtoint ptr %rmmio.i98 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rmmio.i98, align 4
  %add.ptr.i99 = getelementptr i8, ptr %48, i32 %add30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99, i32 %46) #6, !srcloc !30
  br label %if.end32

if.else.i101:                                     ; preds = %r100_mm_rreg.exit93
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add30, i32 noundef %cur_lock.2) #6
  br label %if.end32

if.end32:                                         ; preds = %if.else.i101, %do.body.i100, %if.else.i81, %do.body.i80, %if.else.i62, %do.body.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_cursor_move_locked(ptr noundef %crtc, i32 noundef %x, i32 noundef %y) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %cursor_width = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 12
  %4 = ptrtoint ptr %cursor_width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cursor_width, align 8
  %cursor_x = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 8
  %6 = ptrtoint ptr %cursor_x to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %x, ptr %cursor_x, align 8
  %cursor_y = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 9
  %7 = ptrtoint ptr %cursor_y to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %y, ptr %cursor_y, align 4
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %9)
  %cmp = icmp ugt i32 %9, 17
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %x1 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 14
  %10 = ptrtoint ptr %x1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %x1, align 4
  %add = add i32 %11, %x
  %y2 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 15
  %12 = ptrtoint ptr %y2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %y2, align 8
  %add3 = add i32 %13, %y
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %y.addr.0 = phi i32 [ %add3, %if.then ], [ %y, %entry.if.end_crit_edge ]
  %x.addr.0 = phi i32 [ %add, %if.then ], [ %x, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %x.addr.0)
  %cmp4 = icmp slt i32 %x.addr.0, 0
  br i1 %cmp4, label %if.then5, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub i32 0, %x.addr.0
  %max_cursor_width = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 14
  %14 = ptrtoint ptr %max_cursor_width to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_cursor_width, align 8
  %sub6 = add i32 %15, -1
  %16 = tail call i32 @llvm.smin.i32(i32 %sub6, i32 %sub)
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end.if.end9_crit_edge
  %xorigin.0 = phi i32 [ %16, %if.then5 ], [ 0, %if.end.if.end9_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %y.addr.0)
  %cmp10 = icmp slt i32 %y.addr.0, 0
  br i1 %cmp10, label %if.then11, label %if.end9.if.end20_crit_edge

if.end9.if.end20_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %sub12 = sub i32 0, %y.addr.0
  %max_cursor_height = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 15
  %17 = ptrtoint ptr %max_cursor_height to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_cursor_height, align 4
  %sub13 = add i32 %18, -1
  %19 = tail call i32 @llvm.smin.i32(i32 %sub13, i32 %sub12)
  br label %if.end20

if.end20:                                         ; preds = %if.then11, %if.end9.if.end20_crit_edge
  %yorigin.0 = phi i32 [ %19, %if.then11 ], [ 0, %if.end9.if.end20_crit_edge ]
  br i1 %cmp, label %if.end20.if.end28_crit_edge, label %if.then23

if.end20.if.end28_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %x24 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 14
  %20 = ptrtoint ptr %x24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %x24, align 4
  %add25 = add i32 %21, %x.addr.0
  %y26 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 15
  %22 = ptrtoint ptr %y26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %y26, align 8
  %add27 = add i32 %23, %y.addr.0
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %if.end20.if.end28_crit_edge
  %y.addr.1 = phi i32 [ %y.addr.0, %if.end20.if.end28_crit_edge ], [ %add27, %if.then23 ]
  %x.addr.1 = phi i32 [ %x.addr.0, %if.end20.if.end28_crit_edge ], [ %add25, %if.then23 ]
  %x29 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 14
  %24 = ptrtoint ptr %x29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %x29, align 4
  %y30 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 15
  %26 = ptrtoint ptr %y30 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %y30, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef %x.addr.1, i32 noundef %y.addr.1, i32 noundef %25, i32 noundef %27) #6
  %28 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %family, align 4
  %30 = add i32 %29, -51
  call void @__sanitizer_cov_trace_const_cmp4(i32 -33, i32 %30)
  %31 = icmp ult i32 %30, -33
  br i1 %31, label %if.end28.if.end85_crit_edge, label %if.then35

if.end28.if.end85_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

if.then35:                                        ; preds = %if.end28
  %32 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %crtc, align 8
  %crtc_list = getelementptr inbounds %struct.drm_device, ptr %33, i32 0, i32 30, i32 20
  %34 = ptrtoint ptr %crtc_list to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn32 = load ptr, ptr %crtc_list, align 4
  %cmp43.not33 = icmp eq ptr %.pn32, %crtc_list
  br i1 %cmp43.not33, label %if.then35.if.end85_crit_edge, label %if.then35.for.body_crit_edge

if.then35.for.body_crit_edge:                     ; preds = %if.then35
  br label %for.body

if.then35.if.end85_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then35.for.body_crit_edge
  %.pn35 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn32, %if.then35.for.body_crit_edge ]
  %i.034 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %if.then35.for.body_crit_edge ]
  %enabled = getelementptr i8, ptr %.pn35, i32 160
  %35 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %enabled, align 8, !range !31
  %37 = zext i8 %36 to i32
  %spec.select = add i32 %i.034, %37
  %38 = ptrtoint ptr %.pn35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn = load ptr, ptr %.pn35, align 4
  %cmp43.not = icmp eq ptr %.pn, %crtc_list
  br i1 %cmp43.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select)
  %phi.cmp = icmp sgt i32 %spec.select, 1
  br i1 %phi.cmp, label %if.then52, label %for.end.if.end85_crit_edge

for.end.if.end85_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

if.then52:                                        ; preds = %for.end
  %add53 = add i32 %x.addr.1, %5
  %39 = ptrtoint ptr %x29 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %x29, align 4
  %crtc_hdisplay = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 12, i32 13
  %41 = ptrtoint ptr %crtc_hdisplay to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %crtc_hdisplay, align 4
  %conv = zext i16 %42 to i32
  %add55 = add i32 %40, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %add55, i32 %add53)
  %cmp56.not = icmp sgt i32 %add55, %add53
  br i1 %cmp56.not, label %if.else, label %if.then58

if.then58:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  %and = and i32 %add55, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool61.not = icmp eq i32 %and, 0
  %dec = sext i1 %tobool61.not to i32
  %sub60 = sub i32 %add55, %x.addr.1
  %spec.select2 = add i32 %sub60, %dec
  br label %cleanup

if.else:                                          ; preds = %if.then52
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add53)
  %cmp64 = icmp slt i32 %add53, 1
  br i1 %cmp64, label %if.else.out_of_bounds_crit_edge, label %if.else67

if.else.out_of_bounds_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_of_bounds

if.else67:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %and68 = and i32 %add53, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  %dec71 = sext i1 %tobool69.not to i32
  %spec.select3 = add i32 %5, %dec71
  br label %cleanup

cleanup:                                          ; preds = %if.else67, %if.then58
  %w.0 = phi i32 [ %spec.select2, %if.then58 ], [ %spec.select3, %if.else67 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %w.0)
  %cmp75 = icmp sgt i32 %w.0, 0
  br i1 %cmp75, label %cleanup.if.end85_crit_edge, label %cleanup.out_of_bounds_crit_edge

cleanup.out_of_bounds_crit_edge:                  ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_of_bounds

cleanup.if.end85_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

if.end85:                                         ; preds = %cleanup.if.end85_crit_edge, %for.end.if.end85_crit_edge, %if.then35.if.end85_crit_edge, %if.end28.if.end85_crit_edge
  %w.4 = phi i32 [ %5, %if.end28.if.end85_crit_edge ], [ %w.0, %cleanup.if.end85_crit_edge ], [ %5, %for.end.if.end85_crit_edge ], [ %5, %if.then35.if.end85_crit_edge ]
  %43 = ptrtoint ptr %x29 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %x29, align 4
  %sub87 = sub i32 %44, %w.4
  call void @__sanitizer_cov_trace_cmp4(i32 %x.addr.1, i32 %sub87)
  %cmp88.not = icmp sgt i32 %x.addr.1, %sub87
  br i1 %cmp88.not, label %lor.lhs.false, label %if.end85.out_of_bounds_crit_edge

if.end85.out_of_bounds_crit_edge:                 ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_of_bounds

lor.lhs.false:                                    ; preds = %if.end85
  %45 = ptrtoint ptr %y30 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %y30, align 8
  %cursor_height = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 13
  %47 = ptrtoint ptr %cursor_height to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cursor_height, align 4
  %sub91 = sub i32 %46, %48
  call void @__sanitizer_cov_trace_cmp4(i32 %y.addr.1, i32 %sub91)
  %cmp92.not = icmp sgt i32 %y.addr.1, %sub91
  br i1 %cmp92.not, label %lor.lhs.false94, label %lor.lhs.false.out_of_bounds_crit_edge

lor.lhs.false.out_of_bounds_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_of_bounds

lor.lhs.false94:                                  ; preds = %lor.lhs.false
  %hdisplay = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 12, i32 1
  %49 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %hdisplay, align 4
  %conv97 = zext i16 %50 to i32
  %add98 = add i32 %44, %conv97
  call void @__sanitizer_cov_trace_cmp4(i32 %x.addr.1, i32 %add98)
  %cmp99.not = icmp slt i32 %x.addr.1, %add98
  br i1 %cmp99.not, label %lor.lhs.false101, label %lor.lhs.false94.out_of_bounds_crit_edge

lor.lhs.false94.out_of_bounds_crit_edge:          ; preds = %lor.lhs.false94
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_of_bounds

lor.lhs.false101:                                 ; preds = %lor.lhs.false94
  %vdisplay = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 12, i32 6
  %51 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %vdisplay, align 2
  %conv104 = zext i16 %52 to i32
  %add105 = add i32 %46, %conv104
  call void @__sanitizer_cov_trace_cmp4(i32 %y.addr.1, i32 %add105)
  %cmp106.not = icmp slt i32 %y.addr.1, %add105
  br i1 %cmp106.not, label %if.end109, label %lor.lhs.false101.out_of_bounds_crit_edge

lor.lhs.false101.out_of_bounds_crit_edge:         ; preds = %lor.lhs.false101
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_of_bounds

if.end109:                                        ; preds = %lor.lhs.false101
  %add110 = add i32 %x.addr.1, %xorigin.0
  %add111 = add i32 %y.addr.1, %yorigin.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %29)
  %cmp113 = icmp ugt i32 %29, 38
  br i1 %cmp113, label %if.then115, label %if.else128

if.then115:                                       ; preds = %if.end109
  %crtc_offset = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 5
  %53 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %crtc_offset, align 8
  %add116 = add i32 %54, 27048
  %shl = shl i32 %add110, 16
  %or = or i32 %shl, %add111
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 18
  %55 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %add116)
  %cmp.i = icmp ule i32 %56, %add116
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add116)
  %cmp1.i = icmp ugt i32 %add116, 65535
  %or.cond.not.i = and i1 %cmp1.i, %cmp.i
  br i1 %or.cond.not.i, label %if.else.i, label %do.body.i

do.body.i:                                        ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  tail call void @arm_heavy_mb() #6
  %57 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %58 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %59, i32 %add116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %57) #6, !srcloc !30
  br label %r100_mm_wreg.exit

if.else.i:                                        ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add116, i32 noundef %or) #6
  br label %r100_mm_wreg.exit

r100_mm_wreg.exit:                                ; preds = %if.else.i, %do.body.i
  %60 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %crtc_offset, align 8
  %add118 = add i32 %61, 27052
  %shl119 = shl i32 %xorigin.0, 16
  %or120 = or i32 %yorigin.0, %shl119
  %62 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %add118)
  %cmp.i7 = icmp ule i32 %63, %add118
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add118)
  %cmp1.i8 = icmp ugt i32 %add118, 65535
  %or.cond.not.i9 = and i1 %cmp1.i8, %cmp.i7
  br i1 %or.cond.not.i9, label %if.else.i13, label %do.body.i12

do.body.i12:                                      ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  tail call void @arm_heavy_mb() #6
  %64 = tail call i32 @llvm.bswap.i32(i32 %or120) #6
  %rmmio.i10 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %65 = ptrtoint ptr %rmmio.i10 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rmmio.i10, align 4
  %add.ptr.i11 = getelementptr i8, ptr %66, i32 %add118
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %64) #6, !srcloc !30
  br label %r100_mm_wreg.exit14

if.else.i13:                                      ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add118, i32 noundef %or120) #6
  br label %r100_mm_wreg.exit14

r100_mm_wreg.exit14:                              ; preds = %if.else.i13, %do.body.i12
  %67 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %crtc_offset, align 8
  %add122 = add i32 %68, 27040
  %sub123 = shl i32 %w.4, 16
  %shl124 = add i32 %sub123, -65536
  %69 = ptrtoint ptr %cursor_height to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cursor_height, align 4
  %sub126 = add i32 %70, -1
  %or127 = or i32 %sub126, %shl124
  %71 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %add122)
  %cmp.i16 = icmp ule i32 %72, %add122
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add122)
  %cmp1.i17 = icmp ugt i32 %add122, 65535
  %or.cond.not.i18 = and i1 %cmp1.i17, %cmp.i16
  br i1 %or.cond.not.i18, label %if.else.i22, label %do.body.i21

do.body.i21:                                      ; preds = %r100_mm_wreg.exit14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  tail call void @arm_heavy_mb() #6
  %73 = tail call i32 @llvm.bswap.i32(i32 %or127) #6
  %rmmio.i19 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %74 = ptrtoint ptr %rmmio.i19 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rmmio.i19, align 4
  %add.ptr.i20 = getelementptr i8, ptr %75, i32 %add122
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 %73) #6, !srcloc !30
  br label %if.end177

if.else.i22:                                      ; preds = %r100_mm_wreg.exit14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add122, i32 noundef %or127) #6
  br label %if.end177

if.else128:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %29)
  %cmp130 = icmp ugt i32 %29, 17
  br i1 %cmp130, label %if.then132, label %if.else148

if.then132:                                       ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #8
  %crtc_offset133 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 5
  %76 = ptrtoint ptr %crtc_offset133 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %crtc_offset133, align 8
  %add134 = add i32 %77, 25620
  %shl135 = shl i32 %add110, 16
  %or136 = or i32 %shl135, %add111
  tail call fastcc void @r100_mm_wreg(ptr noundef %3, i32 noundef %add134, i32 noundef %or136, i1 noundef zeroext false)
  %78 = ptrtoint ptr %crtc_offset133 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %crtc_offset133, align 8
  %add138 = add i32 %79, 25624
  %shl139 = shl i32 %xorigin.0, 16
  %or140 = or i32 %yorigin.0, %shl139
  tail call fastcc void @r100_mm_wreg(ptr noundef %3, i32 noundef %add138, i32 noundef %or140, i1 noundef zeroext false)
  %80 = ptrtoint ptr %crtc_offset133 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %crtc_offset133, align 8
  %add142 = add i32 %81, 25616
  %sub143 = shl i32 %w.4, 16
  %shl144 = add i32 %sub143, -65536
  %82 = ptrtoint ptr %cursor_height to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %cursor_height, align 4
  %sub146 = add i32 %83, -1
  %or147 = or i32 %sub146, %shl144
  tail call fastcc void @r100_mm_wreg(ptr noundef %3, i32 noundef %add142, i32 noundef %or147, i1 noundef zeroext false)
  br label %if.end177

if.else148:                                       ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #8
  %sub150 = sub i32 %add110, %44
  %sub152 = sub i32 %add111, %46
  %flags = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 12, i32 11
  %84 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %flags, align 4
  %and154 = lshr i32 %85, 5
  %and154.lobit = and i32 %and154, 1
  %spec.select5 = shl i32 %sub152, %and154.lobit
  %crtc_offset158 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 5
  %86 = ptrtoint ptr %crtc_offset158 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %crtc_offset158, align 8
  %add159 = add i32 %87, 616
  %shl160 = shl i32 %xorigin.0, 16
  %or161 = or i32 %shl160, %yorigin.0
  %or162 = or i32 %or161, -2147483648
  tail call fastcc void @r100_mm_wreg(ptr noundef %3, i32 noundef %add159, i32 noundef %or162, i1 noundef zeroext false)
  %88 = ptrtoint ptr %crtc_offset158 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %crtc_offset158, align 8
  %add164 = add i32 %89, 612
  %shl165 = shl i32 %sub150, 16
  %or166 = or i32 %shl165, %spec.select5
  %or167 = or i32 %or166, -2147483648
  tail call fastcc void @r100_mm_wreg(ptr noundef %3, i32 noundef %add164, i32 noundef %or167, i1 noundef zeroext false)
  %90 = ptrtoint ptr %crtc_offset158 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %crtc_offset158, align 8
  %add169 = add i32 %91, 608
  %cursor_addr = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 7
  %92 = ptrtoint ptr %cursor_addr to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %cursor_addr, align 8
  %legacy_display_base_addr = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 16
  %94 = ptrtoint ptr %legacy_display_base_addr to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %legacy_display_base_addr, align 8
  %mul172 = shl i32 %yorigin.0, 8
  %96 = trunc i64 %93 to i32
  %97 = sub i32 %mul172, %95
  %conv175 = add i32 %97, %96
  tail call fastcc void @r100_mm_wreg(ptr noundef %3, i32 noundef %add169, i32 noundef %conv175, i1 noundef zeroext false)
  br label %if.end177

if.end177:                                        ; preds = %if.else148, %if.then132, %if.else.i22, %do.body.i21
  %cursor_out_of_bounds = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 4
  %98 = ptrtoint ptr %cursor_out_of_bounds to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %cursor_out_of_bounds, align 2, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool178.not = icmp eq i8 %99, 0
  br i1 %tobool178.not, label %if.end177.cleanup190_crit_edge, label %if.then179

if.end177.cleanup190_crit_edge:                   ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup190

if.then179:                                       ; preds = %if.end177
  %100 = ptrtoint ptr %cursor_out_of_bounds to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %cursor_out_of_bounds, align 2
  %cursor_bo = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 6
  %101 = ptrtoint ptr %cursor_bo to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cursor_bo, align 4
  %tobool181.not = icmp eq ptr %102, null
  br i1 %tobool181.not, label %if.then179.cleanup190_crit_edge, label %if.then182

if.then179.cleanup190_crit_edge:                  ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup190

if.then182:                                       ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @radeon_show_cursor(ptr noundef %crtc)
  br label %cleanup190

out_of_bounds:                                    ; preds = %lor.lhs.false101.out_of_bounds_crit_edge, %lor.lhs.false94.out_of_bounds_crit_edge, %lor.lhs.false.out_of_bounds_crit_edge, %if.end85.out_of_bounds_crit_edge, %cleanup.out_of_bounds_crit_edge, %if.else.out_of_bounds_crit_edge
  %cursor_out_of_bounds185 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 4
  %103 = ptrtoint ptr %cursor_out_of_bounds185 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %cursor_out_of_bounds185, align 2, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool186.not = icmp eq i8 %104, 0
  br i1 %tobool186.not, label %if.then187, label %out_of_bounds.cleanup190_crit_edge

out_of_bounds.cleanup190_crit_edge:               ; preds = %out_of_bounds
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup190

if.then187:                                       ; preds = %out_of_bounds
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @radeon_hide_cursor(ptr noundef %crtc)
  %105 = ptrtoint ptr %cursor_out_of_bounds185 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 1, ptr %cursor_out_of_bounds185, align 2
  br label %cleanup190

cleanup190:                                       ; preds = %if.then187, %out_of_bounds.cleanup190_crit_edge, %if.then182, %if.then179.cleanup190_crit_edge, %if.end177.cleanup190_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_crtc_cursor_set2(ptr noundef %crtc, ptr noundef %file_priv, i32 noundef %handle, i32 noundef %width, i32 noundef %height, i32 noundef %hot_x, i32 noundef %hot_y) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handle)
  %tobool.not = icmp eq i32 %handle, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @radeon_hide_cursor(ptr noundef %crtc)
  br label %unpin

if.end:                                           ; preds = %entry
  %max_cursor_width = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 14
  %4 = ptrtoint ptr %max_cursor_width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_cursor_width, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %width)
  %cmp = icmp ult i32 %5, %width
  br i1 %cmp, label %if.end.if.then2_crit_edge, label %lor.lhs.false

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

lor.lhs.false:                                    ; preds = %if.end
  %max_cursor_height = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 15
  %6 = ptrtoint ptr %max_cursor_height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_cursor_height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %height)
  %cmp1 = icmp ult i32 %7, %height
  br i1 %cmp1, label %lor.lhs.false.if.then2_crit_edge, label %if.end3

lor.lhs.false.if.then2_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

if.then2:                                         ; preds = %lor.lhs.false.if.then2_crit_edge, %if.end.if.then2_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %width, i32 noundef %height) #6
  br label %cleanup

if.end3:                                          ; preds = %lor.lhs.false
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %file_priv, i32 noundef %handle) #6
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %crtc_id = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 1
  %8 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %crtc_id, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, i32 noundef %handle, i32 noundef %9) #6
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %add.ptr9 = getelementptr i8, ptr %call, i32 -96
  %resv32.i.i = getelementptr i8, ptr %call, i32 200
  %10 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %11, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %retval.1.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %12 = zext i32 %retval.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.1.i.i, label %do.end.i [
    i32 0, label %if.end13
    i32 -512, label %if.end6.if.then.i_crit_edge
  ], !prof !32

if.end6.if.then.i_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

do.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %rdev.i = getelementptr i8, ptr %call, i32 464
  %13 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rdev.i, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.4, ptr noundef %add.ptr9) #9
  br label %if.then.i

if.then.i:                                        ; preds = %do.end.i, %if.end6.if.then.i_crit_edge
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !33
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #6
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #6, !srcloc !34
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !35

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #6
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !36
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #6
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %18 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %19)
  %cmp14 = icmp ugt i32 %19, 17
  %cond = select i1 %cmp14, i32 0, i32 134217728
  %20 = zext i32 %cond to i64
  %cursor_addr = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 7
  %call15 = tail call i32 @radeon_bo_pin_restricted(ptr noundef %add.ptr9, i32 noundef 4, i64 noundef %20, ptr noundef %cursor_addr) #6
  %bdev.i.i.i = getelementptr i8, ptr %call, i32 352
  %21 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %22, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #6
  %resource.i.i.i = getelementptr i8, ptr %call, i32 372
  %23 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %resource.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef nonnull %call, ptr noundef %24, ptr noundef null) #6
  %25 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %26, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #6
  %27 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %resv32.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %28) #6
  tail call void @ww_mutex_unlock(ptr noundef %28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.then.i116

if.then.i116:                                     ; preds = %if.end13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, i32 noundef %call15) #6
  %call.i.i.i.i.i.i.i.i113 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !33
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #6
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #6, !srcloc !34
  %asmresult.i.i.i.i.i.i.i.i.i114 = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i114)
  %cmp.i.i.i.i.i.i115 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i114, 1
  br i1 %cmp.i.i.i.i.i.i115, label %if.then.i.i.i120, label %if.end5.i.i.i.i.i.i118

if.end5.i.i.i.i.i.i118:                           ; preds = %if.then.i116
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i114)
  %.not.i.i.i.i.i.i117 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i114, 0
  br i1 %.not.i.i.i.i.i.i117, label %if.end5.i.i.i.i.i.i118.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i119, !prof !35

if.end5.i.i.i.i.i.i118.cleanup_crit_edge:         ; preds = %if.end5.i.i.i.i.i.i118
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10.i.i.i.i.i.i119:                         ; preds = %if.end5.i.i.i.i.i.i118
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #6
  br label %cleanup

if.then.i.i.i120:                                 ; preds = %if.then.i116
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !36
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #6
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  tail call fastcc void @radeon_lock_cursor(ptr noundef %crtc, i1 noundef zeroext true)
  %cursor_width = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 12
  %30 = ptrtoint ptr %cursor_width to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cursor_width, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %width)
  %cmp19.not = icmp eq i32 %31, %width
  br i1 %cmp19.not, label %lor.lhs.false21, label %if.end18.if.then30_crit_edge

if.end18.if.then30_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then30

lor.lhs.false21:                                  ; preds = %if.end18
  %cursor_height = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 13
  %32 = ptrtoint ptr %cursor_height to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cursor_height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %height)
  %cmp22.not = icmp eq i32 %33, %height
  br i1 %cmp22.not, label %lor.lhs.false24, label %lor.lhs.false21.if.then30_crit_edge

lor.lhs.false21.if.then30_crit_edge:              ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then30

lor.lhs.false24:                                  ; preds = %lor.lhs.false21
  %cursor_hot_x = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 10
  %34 = ptrtoint ptr %cursor_hot_x to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cursor_hot_x, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %hot_x)
  %cmp25.not = icmp eq i32 %35, %hot_x
  br i1 %cmp25.not, label %lor.lhs.false27, label %lor.lhs.false24.if.then30_crit_edge

lor.lhs.false24.if.then30_crit_edge:              ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then30

lor.lhs.false27:                                  ; preds = %lor.lhs.false24
  %cursor_hot_y = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 11
  %36 = ptrtoint ptr %cursor_hot_y to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cursor_hot_y, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %hot_y)
  %cmp28.not = icmp eq i32 %37, %hot_y
  br i1 %cmp28.not, label %lor.lhs.false27.if.end40_crit_edge, label %lor.lhs.false27.if.then30_crit_edge

lor.lhs.false27.if.then30_crit_edge:              ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then30

lor.lhs.false27.if.end40_crit_edge:               ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.then30:                                        ; preds = %lor.lhs.false27.if.then30_crit_edge, %lor.lhs.false24.if.then30_crit_edge, %lor.lhs.false21.if.then30_crit_edge, %if.end18.if.then30_crit_edge
  %cursor_x = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 8
  %38 = ptrtoint ptr %cursor_x to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cursor_x, align 8
  %cursor_hot_x31 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 10
  %40 = ptrtoint ptr %cursor_hot_x31 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cursor_hot_x31, align 8
  %add = sub i32 %39, %hot_x
  %sub = add i32 %add, %41
  %cursor_y = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 9
  %42 = ptrtoint ptr %cursor_y to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cursor_y, align 4
  %cursor_hot_y32 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 11
  %44 = ptrtoint ptr %cursor_hot_y32 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cursor_hot_y32, align 4
  %add33 = sub i32 %43, %hot_y
  %sub34 = add i32 %add33, %45
  %46 = ptrtoint ptr %cursor_width to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %width, ptr %cursor_width, align 8
  %cursor_height36 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 13
  %47 = ptrtoint ptr %cursor_height36 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %height, ptr %cursor_height36, align 4
  store i32 %hot_x, ptr %cursor_hot_x31, align 8
  store i32 %hot_y, ptr %cursor_hot_y32, align 4
  tail call fastcc void @radeon_cursor_move_locked(ptr noundef %crtc, i32 noundef %sub, i32 noundef %sub34)
  br label %if.end40

if.end40:                                         ; preds = %if.then30, %lor.lhs.false27.if.end40_crit_edge
  tail call fastcc void @radeon_show_cursor(ptr noundef %crtc)
  tail call fastcc void @radeon_lock_cursor(ptr noundef %crtc, i1 noundef zeroext false)
  br label %unpin

unpin:                                            ; preds = %if.end40, %if.then
  %obj.0 = phi ptr [ %call, %if.end40 ], [ null, %if.then ]
  %cursor_bo = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 6
  %48 = ptrtoint ptr %cursor_bo to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cursor_bo, align 4
  %tobool41.not = icmp eq ptr %49, null
  br i1 %tobool41.not, label %unpin.if.end56_crit_edge, label %if.then42

unpin.if.end56_crit_edge:                         ; preds = %unpin
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.then42:                                        ; preds = %unpin
  %add.ptr47 = getelementptr i8, ptr %49, i32 -96
  %resv32.i.i122 = getelementptr i8, ptr %49, i32 200
  %50 = ptrtoint ptr %resv32.i.i122 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %resv32.i.i122, align 8
  %call.i.i.i123 = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %51, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i123)
  %cmp.i.i124 = icmp eq i32 %call.i.i.i123, -4
  %retval.1.i.i125 = select i1 %cmp.i.i124, i32 -512, i32 %call.i.i.i123
  %52 = zext i32 %retval.1.i.i125 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %retval.1.i.i125, label %do.end.i127 [
    i32 0, label %if.then53
    i32 -512, label %if.then42.if.end54_crit_edge
  ], !prof !32

if.then42.if.end54_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

do.end.i127:                                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  %rdev.i126 = getelementptr i8, ptr %49, i32 464
  %53 = ptrtoint ptr %rdev.i126 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rdev.i126, align 8
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.4, ptr noundef %add.ptr47) #9
  br label %if.end54

if.then53:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @radeon_bo_unpin(ptr noundef %add.ptr47) #6
  %bdev.i.i.i130 = getelementptr i8, ptr %49, i32 352
  %57 = ptrtoint ptr %bdev.i.i.i130 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bdev.i.i.i130, align 8
  %lru_lock.i.i.i131 = getelementptr inbounds %struct.ttm_device, ptr %58, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i131) #6
  %resource.i.i.i132 = getelementptr i8, ptr %49, i32 372
  %59 = ptrtoint ptr %resource.i.i.i132 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %resource.i.i.i132, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef nonnull %49, ptr noundef %60, ptr noundef null) #6
  %61 = ptrtoint ptr %bdev.i.i.i130 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bdev.i.i.i130, align 8
  %lru_lock2.i.i.i133 = getelementptr inbounds %struct.ttm_device, ptr %62, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i133) #6
  %63 = ptrtoint ptr %resv32.i.i122 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %resv32.i.i122, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %64) #6
  tail call void @ww_mutex_unlock(ptr noundef %64) #6
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %do.end.i127, %if.then42.if.end54_crit_edge
  %65 = ptrtoint ptr %cursor_bo to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cursor_bo, align 4
  %tobool.not.i135 = icmp eq ptr %66, null
  br i1 %tobool.not.i135, label %if.end54.if.end56_crit_edge, label %if.then.i139

if.end54.if.end56_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.then.i139:                                     ; preds = %if.end54
  %call.i.i.i.i.i.i.i.i136 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %66, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !33
  tail call void @llvm.prefetch.p0(ptr nonnull %66, i32 1, i32 3, i32 1) #6
  %67 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %66, ptr nonnull %66, i32 1, ptr nonnull elementtype(i32) %66) #6, !srcloc !34
  %asmresult.i.i.i.i.i.i.i.i.i137 = extractvalue { i32, i32, i32 } %67, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i137)
  %cmp.i.i.i.i.i.i138 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i137, 1
  br i1 %cmp.i.i.i.i.i.i138, label %if.then.i.i.i143, label %if.end5.i.i.i.i.i.i141

if.end5.i.i.i.i.i.i141:                           ; preds = %if.then.i139
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i137)
  %.not.i.i.i.i.i.i140 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i137, 0
  br i1 %.not.i.i.i.i.i.i140, label %if.end5.i.i.i.i.i.i141.if.end56_crit_edge, label %if.then10.i.i.i.i.i.i142, !prof !35

if.end5.i.i.i.i.i.i141.if.end56_crit_edge:        ; preds = %if.end5.i.i.i.i.i.i141
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.then10.i.i.i.i.i.i142:                         ; preds = %if.end5.i.i.i.i.i.i141
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef nonnull %66, i32 noundef 3) #6
  br label %if.end56

if.then.i.i.i143:                                 ; preds = %if.then.i139
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !36
  tail call void @drm_gem_object_free(ptr noundef nonnull %66) #6
  br label %if.end56

if.end56:                                         ; preds = %if.then.i.i.i143, %if.then10.i.i.i.i.i.i142, %if.end5.i.i.i.i.i.i141.if.end56_crit_edge, %if.end54.if.end56_crit_edge, %unpin.if.end56_crit_edge
  %68 = ptrtoint ptr %cursor_bo to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %obj.0, ptr %cursor_bo, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %if.then.i.i.i120, %if.then10.i.i.i.i.i.i119, %if.end5.i.i.i.i.i.i118.cleanup_crit_edge, %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %if.then5, %if.then2
  %retval.0 = phi i32 [ -22, %if.then2 ], [ 0, %if.end56 ], [ -2, %if.then5 ], [ %retval.1.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %retval.1.i.i, %if.then10.i.i.i.i.i.i ], [ %retval.1.i.i, %if.then.i.i.i ], [ %call15, %if.end5.i.i.i.i.i.i118.cleanup_crit_edge ], [ %call15, %if.then10.i.i.i.i.i.i119 ], [ %call15, %if.then.i.i.i120 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_hide_cursor(ptr nocapture noundef readonly %crtc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %5)
  %cmp = icmp ugt i32 %5, 38
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %crtc_offset = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 5
  %6 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %crtc_offset, align 8
  %add = add i32 %7, 27032
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add, i32 noundef 67109376) #6
  br label %cleanup9

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %5)
  %cmp2 = icmp ugt i32 %5, 17
  br i1 %cmp2, label %if.then3, label %if.else6

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %crtc_offset4 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 5
  %8 = ptrtoint ptr %crtc_offset4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %crtc_offset4, align 8
  %add5 = add i32 %9, 25600
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add5, i32 noundef 512) #6
  br label %cleanup9

if.else6:                                         ; preds = %if.else
  %crtc_id = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 1
  %10 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %crtc_id, align 8
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %11, label %if.else6.cleanup9_crit_edge [
    i32 0, label %if.else6.sw.epilog_crit_edge
    i32 1, label %sw.bb7
  ]

if.else6.sw.epilog_crit_edge:                     ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.else6.cleanup9_crit_edge:                      ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup9

sw.bb7:                                           ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %if.else6.sw.epilog_crit_edge
  %reg.0 = phi i32 [ 1016, %sw.bb7 ], [ 80, %if.else6.sw.epilog_crit_edge ]
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %reg.0) #6
  %and = and i32 %call3.i, -65537
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %reg.0, i32 noundef %and) #6
  br label %cleanup9

cleanup9:                                         ; preds = %sw.epilog, %if.else6.cleanup9_crit_edge, %if.then3, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_bo_pin_restricted(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_show_cursor(ptr nocapture noundef readonly %crtc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %cursor_out_of_bounds = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 4
  %4 = ptrtoint ptr %cursor_out_of_bounds to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cursor_out_of_bounds, align 2, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %7)
  %cmp = icmp ugt i32 %7, 38
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %crtc_offset = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 5
  %8 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %crtc_offset, align 8
  %add = add i32 %9, 27044
  %cursor_addr = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 7
  %10 = ptrtoint ptr %cursor_addr to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %cursor_addr, align 8
  %shr = lshr i64 %11, 32
  %conv = trunc i64 %shr to i32
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 18
  %12 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %add)
  %cmp.i = icmp ule i32 %13, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add)
  %cmp1.i = icmp ugt i32 %add, 65535
  %or.cond.not.i = and i1 %cmp1.i, %cmp.i
  br i1 %or.cond.not.i, label %if.else.i, label %do.body.i

do.body.i:                                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  tail call void @arm_heavy_mb() #6
  %14 = tail call i32 @llvm.bswap.i32(i32 %conv) #6
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %15 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %14) #6, !srcloc !30
  br label %r100_mm_wreg.exit

if.else.i:                                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add, i32 noundef %conv) #6
  br label %r100_mm_wreg.exit

r100_mm_wreg.exit:                                ; preds = %if.else.i, %do.body.i
  %17 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %crtc_offset, align 8
  %add4 = add i32 %18, 27036
  %19 = ptrtoint ptr %cursor_addr to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %cursor_addr, align 8
  %conv6 = trunc i64 %20 to i32
  %21 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %add4)
  %cmp.i84 = icmp ule i32 %22, %add4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add4)
  %cmp1.i85 = icmp ugt i32 %add4, 65535
  %or.cond.not.i86 = and i1 %cmp1.i85, %cmp.i84
  br i1 %or.cond.not.i86, label %if.else.i90, label %do.body.i89

do.body.i89:                                      ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  tail call void @arm_heavy_mb() #6
  %23 = tail call i32 @llvm.bswap.i32(i32 %conv6) #6
  %rmmio.i87 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %24 = ptrtoint ptr %rmmio.i87 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmmio.i87, align 4
  %add.ptr.i88 = getelementptr i8, ptr %25, i32 %add4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88, i32 %23) #6, !srcloc !30
  br label %r100_mm_wreg.exit91

if.else.i90:                                      ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add4, i32 noundef %conv6) #6
  br label %r100_mm_wreg.exit91

r100_mm_wreg.exit91:                              ; preds = %if.else.i90, %do.body.i89
  %26 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %crtc_offset, align 8
  %add8 = add i32 %27, 27032
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  tail call void @arm_heavy_mb() #6
  %28 = tail call i32 @llvm.bswap.i32(i32 %add8) #6
  %rmmio.i94 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %29 = ptrtoint ptr %rmmio.i94 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rmmio.i94, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #6, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  tail call void @arm_heavy_mb() #6
  %31 = ptrtoint ptr %rmmio.i94 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rmmio.i94, align 4
  %add.ptr.i99 = getelementptr i8, ptr %32, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99, i32 16908292) #6, !srcloc !30
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %7)
  %cmp10 = icmp ugt i32 %7, 17
  br i1 %cmp10, label %if.then12, label %if.else37

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %7)
  %cmp14 = icmp ugt i32 %7, 34
  br i1 %cmp14, label %if.then16, label %if.then12.if.end29_crit_edge

if.then12.if.end29_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then16:                                        ; preds = %if.then12
  %crtc_id = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 1
  %33 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %crtc_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool17.not = icmp eq i32 %34, 0
  %cursor_addr24 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 7
  %35 = ptrtoint ptr %cursor_addr24 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %cursor_addr24, align 8
  %shr25 = lshr i64 %36, 32
  %conv27 = trunc i64 %shr25 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %37 = tail call i32 @llvm.bswap.i32(i32 %conv27) #6
  %rmmio.i108 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %38 = ptrtoint ptr %rmmio.i108 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rmmio.i108, align 4
  br i1 %tobool17.not, label %if.else23, label %if.then18

if.then18:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i104 = getelementptr i8, ptr %39, i32 25612
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i104, i32 %37) #6, !srcloc !30
  br label %if.end29

if.else23:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i109 = getelementptr i8, ptr %39, i32 27660
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109, i32 %37) #6, !srcloc !30
  br label %if.end29

if.end29:                                         ; preds = %if.else23, %if.then18, %if.then12.if.end29_crit_edge
  %crtc_offset30 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 5
  %40 = ptrtoint ptr %crtc_offset30 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %crtc_offset30, align 8
  %add31 = add i32 %41, 25608
  %cursor_addr32 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 7
  %42 = ptrtoint ptr %cursor_addr32 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %cursor_addr32, align 8
  %conv34 = trunc i64 %43 to i32
  %rmmio_size.i111 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 18
  %44 = ptrtoint ptr %rmmio_size.i111 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rmmio_size.i111, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %add31)
  %cmp.i112 = icmp ule i32 %45, %add31
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add31)
  %cmp1.i113 = icmp ugt i32 %add31, 65535
  %or.cond.not.i114 = and i1 %cmp1.i113, %cmp.i112
  br i1 %or.cond.not.i114, label %if.else.i118, label %do.body.i117

do.body.i117:                                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  tail call void @arm_heavy_mb() #6
  %46 = tail call i32 @llvm.bswap.i32(i32 %conv34) #6
  %rmmio.i115 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %47 = ptrtoint ptr %rmmio.i115 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rmmio.i115, align 4
  %add.ptr.i116 = getelementptr i8, ptr %48, i32 %add31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i116, i32 %46) #6, !srcloc !30
  br label %r100_mm_wreg.exit119

if.else.i118:                                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add31, i32 noundef %conv34) #6
  br label %r100_mm_wreg.exit119

r100_mm_wreg.exit119:                             ; preds = %if.else.i118, %do.body.i117
  %49 = ptrtoint ptr %crtc_offset30 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %crtc_offset30, align 8
  %add36 = add i32 %50, 25600
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  tail call void @arm_heavy_mb() #6
  %51 = tail call i32 @llvm.bswap.i32(i32 %add36) #6
  %rmmio.i122 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %52 = ptrtoint ptr %rmmio.i122 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rmmio.i122, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #6, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  tail call void @arm_heavy_mb() #6
  %54 = ptrtoint ptr %rmmio.i122 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rmmio.i122, align 4
  %add.ptr.i127 = getelementptr i8, ptr %55, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i127, i32 16908288) #6, !srcloc !30
  br label %cleanup

if.else37:                                        ; preds = %if.else
  %crtc_offset38 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 5
  %56 = ptrtoint ptr %crtc_offset38 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %crtc_offset38, align 8
  %add39 = add i32 %57, 608
  %cursor_addr40 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 7
  %58 = ptrtoint ptr %cursor_addr40 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %cursor_addr40, align 8
  %legacy_display_base_addr = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 16
  %60 = ptrtoint ptr %legacy_display_base_addr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %legacy_display_base_addr, align 8
  %62 = trunc i64 %59 to i32
  %conv42 = sub i32 %62, %61
  %rmmio_size.i129 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 18
  %63 = ptrtoint ptr %rmmio_size.i129 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rmmio_size.i129, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %add39)
  %cmp.i130 = icmp ule i32 %64, %add39
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add39)
  %cmp1.i131 = icmp ugt i32 %add39, 65535
  %or.cond.not.i132 = and i1 %cmp1.i131, %cmp.i130
  br i1 %or.cond.not.i132, label %if.else.i136, label %do.body.i135

do.body.i135:                                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  tail call void @arm_heavy_mb() #6
  %65 = tail call i32 @llvm.bswap.i32(i32 %conv42) #6
  %rmmio.i133 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %66 = ptrtoint ptr %rmmio.i133 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rmmio.i133, align 4
  %add.ptr.i134 = getelementptr i8, ptr %67, i32 %add39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i134, i32 %65) #6, !srcloc !30
  br label %r100_mm_wreg.exit137

if.else.i136:                                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add39, i32 noundef %conv42) #6
  br label %r100_mm_wreg.exit137

r100_mm_wreg.exit137:                             ; preds = %if.else.i136, %do.body.i135
  %crtc_id43 = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 1
  %68 = ptrtoint ptr %crtc_id43 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %crtc_id43, align 8
  %70 = zext i32 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %69, label %r100_mm_wreg.exit137.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb44
  ]

r100_mm_wreg.exit137.cleanup_crit_edge:           ; preds = %r100_mm_wreg.exit137
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %r100_mm_wreg.exit137
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  tail call void @arm_heavy_mb() #6
  %rmmio.i140 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %71 = ptrtoint ptr %rmmio.i140 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rmmio.i140, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 1342177280) #6, !srcloc !30
  br label %do.body

sw.bb44:                                          ; preds = %r100_mm_wreg.exit137
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  tail call void @arm_heavy_mb() #6
  %rmmio.i144 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %73 = ptrtoint ptr %rmmio.i144 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rmmio.i144, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 -134021120) #6, !srcloc !30
  br label %do.body

do.body:                                          ; preds = %sw.bb44, %sw.bb
  %rmmio.i148 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %75 = ptrtoint ptr %rmmio.i148 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rmmio.i148, align 4
  %add.ptr.i149 = getelementptr i8, ptr %76, i32 4
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i149) #6, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !28
  %78 = and i32 %77, -28929
  %79 = or i32 %78, 8448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  tail call void @arm_heavy_mb() #6
  %80 = ptrtoint ptr %rmmio.i148 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %rmmio.i148, align 4
  %add.ptr.i153 = getelementptr i8, ptr %81, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i153, i32 %79) #6, !srcloc !30
  br label %cleanup

cleanup:                                          ; preds = %do.body, %r100_mm_wreg.exit137.cleanup_crit_edge, %r100_mm_wreg.exit119, %r100_mm_wreg.exit91, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_bo_unpin(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_cursor_reset(ptr noundef %crtc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cursor_bo = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 6
  %0 = ptrtoint ptr %cursor_bo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cursor_bo, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @radeon_lock_cursor(ptr noundef %crtc, i1 noundef zeroext true)
  %cursor_x = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 8
  %2 = ptrtoint ptr %cursor_x to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cursor_x, align 8
  %cursor_y = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 9
  %4 = ptrtoint ptr %cursor_y to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cursor_y, align 4
  tail call fastcc void @radeon_cursor_move_locked(ptr noundef %crtc, i32 noundef %3, i32 noundef %5)
  tail call fastcc void @radeon_show_cursor(ptr noundef %crtc)
  tail call fastcc void @radeon_lock_cursor(ptr noundef %crtc, i1 noundef zeroext false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @r100_mm_wreg(ptr noundef %rdev, i32 noundef %reg, i32 noundef %v, i1 noundef zeroext %always_indirect) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %rmmio_size = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %0 = ptrtoint ptr %rmmio_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rmmio_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %reg)
  %cmp = icmp ule i32 %1, %reg
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %reg)
  %cmp1 = icmp ugt i32 %reg, 65535
  %or.cond.not = and i1 %cmp1, %cmp
  %brmerge = or i1 %or.cond.not, %always_indirect
  br i1 %brmerge, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %v)
  %rmmio = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %3 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rmmio, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #6, !srcloc !30
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %reg, i32 noundef %v) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_mm_rreg_slow(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_mm_wreg_slow(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock_interruptible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_move_to_lru_tail(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_reset_shared_max(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/radeon_cursor.c", i32 299, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/radeon_cursor.c", i32 305, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/radeon/radeon_cursor.c", i32 321, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/radeon/radeon_cursor.c", i32 169, i32 2}
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
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{i64 6805651}
!28 = !{i64 2157455885}
!29 = !{i64 2157456292}
!30 = !{i64 6805233}
!31 = !{i8 0, i8 2}
!32 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!33 = !{i64 2148588143}
!34 = !{i64 2148502583, i64 2148502615, i64 2148502644, i64 2148502678, i64 2148502709, i64 2148502732}
!35 = !{!"branch_weights", i32 2000, i32 1}
!36 = !{i64 2149222867}
