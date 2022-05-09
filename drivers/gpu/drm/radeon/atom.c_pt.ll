; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/atom.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/atom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon.108 = type { ptr, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.atom_context = type { ptr, %struct.mutex, %struct.mutex, ptr, i32, i32, ptr, i16, i32, [2 x i32], i16, i16, i8, i32, i32, i32, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atom_exec_context = type { ptr, ptr, ptr, i32, i16, i32, i32, i8 }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%struct._ATOM_VRAM_USAGE_BY_FIRMWARE = type { %struct._ATOM_COMMON_TABLE_HEADER, [1 x %struct._ATOM_FIRMWARE_VRAM_RESERVE_INFO] }
%struct._ATOM_COMMON_TABLE_HEADER = type { i16, i8, i8 }
%struct._ATOM_FIRMWARE_VRAM_RESERVE_INFO = type { i32, i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.card_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@atom_debug = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@atom_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016Invalid BIOS magic\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"atom_parse\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/radeon/atom.c\00", [34 x i8] zeroinitializer }, align 32
@atom_parse._entry_ptr = internal global ptr @atom_parse._entry, section ".printk_index", align 4
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" 761295520\00", [21 x i8] zeroinitializer }, align 32
@atom_parse._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 1287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016Invalid ATI magic\0A\00", [43 x i8] zeroinitializer }, align 32
@atom_parse._entry_ptr.6 = internal global ptr @atom_parse._entry.4, section ".printk_index", align 4
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ATOM\00", [27 x i8] zeroinitializer }, align 32
@atom_parse._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 1296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016Invalid ATOM magic\0A\00", [42 x i8] zeroinitializer }, align 32
@atom_parse._entry_ptr.10 = internal global ptr @atom_parse._entry.8, section ".printk_index", align 4
@atom_parse._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 1320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016ATOM BIOS: %s\0A\00", [47 x i8] zeroinitializer }, align 32
@atom_parse._entry_ptr.13 = internal global ptr @atom_parse._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"atom firmware requested %08x %dkb\0A\00", [61 x i8] zeroinitializer }, align 32
@atom_execute_table_locked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 1174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"atom_execute_table_locked\00", [38 x i8] zeroinitializer }, align 32
@atom_execute_table_locked._entry_ptr = internal global ptr @atom_execute_table_locked._entry, section ".printk_index", align 4
@debug_depth = internal global { i32, [28 x i8] } zeroinitializer, align 32
@atom_execute_table_locked._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 1174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c">> execute %04X (len %d, WS %d, PS %d)\0A\00", [56 x i8] zeroinitializer }, align 32
@atom_execute_table_locked._entry_ptr.19 = internal global ptr @atom_execute_table_locked._entry.17, section ".printk_index", align 4
@atom_execute_table_locked._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 1191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_execute_table_locked._entry_ptr.21 = internal global ptr @atom_execute_table_locked._entry.20, section ".printk_index", align 4
@atom_execute_table_locked._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.16, ptr @.str.2, i32 1191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s @ 0x%04X\0A\00", [19 x i8] zeroinitializer }, align 32
@atom_execute_table_locked._entry_ptr.24 = internal global ptr @atom_execute_table_locked._entry.22, section ".printk_index", align 4
@atom_op_names = internal constant { [123 x ptr], [116 x i8] } { [123 x ptr] [ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160], [116 x i8] zeroinitializer }, align 32
@atom_execute_table_locked._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 1193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_execute_table_locked._entry_ptr.26 = internal global ptr @atom_execute_table_locked._entry.25, section ".printk_index", align 4
@atom_execute_table_locked._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.16, ptr @.str.2, i32 1193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"[%d] @ 0x%04X\0A\00", [17 x i8] zeroinitializer }, align 32
@atom_execute_table_locked._entry_ptr.29 = internal global ptr @atom_execute_table_locked._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"atombios stuck executing %04X (len %d, WS %d, PS %d) @ 0x%04X\0A\00", [33 x i8] zeroinitializer }, align 32
@opcode_table = internal constant { [123 x %struct.anon.108], [232 x i8] } { [123 x %struct.anon.108] [%struct.anon.108 zeroinitializer, %struct.anon.108 { ptr @atom_op_move, i32 0 }, %struct.anon.108 { ptr @atom_op_move, i32 1 }, %struct.anon.108 { ptr @atom_op_move, i32 2 }, %struct.anon.108 { ptr @atom_op_move, i32 3 }, %struct.anon.108 { ptr @atom_op_move, i32 6 }, %struct.anon.108 { ptr @atom_op_move, i32 7 }, %struct.anon.108 { ptr @atom_op_and, i32 0 }, %struct.anon.108 { ptr @atom_op_and, i32 1 }, %struct.anon.108 { ptr @atom_op_and, i32 2 }, %struct.anon.108 { ptr @atom_op_and, i32 3 }, %struct.anon.108 { ptr @atom_op_and, i32 6 }, %struct.anon.108 { ptr @atom_op_and, i32 7 }, %struct.anon.108 { ptr @atom_op_or, i32 0 }, %struct.anon.108 { ptr @atom_op_or, i32 1 }, %struct.anon.108 { ptr @atom_op_or, i32 2 }, %struct.anon.108 { ptr @atom_op_or, i32 3 }, %struct.anon.108 { ptr @atom_op_or, i32 6 }, %struct.anon.108 { ptr @atom_op_or, i32 7 }, %struct.anon.108 { ptr @atom_op_shift_left, i32 0 }, %struct.anon.108 { ptr @atom_op_shift_left, i32 1 }, %struct.anon.108 { ptr @atom_op_shift_left, i32 2 }, %struct.anon.108 { ptr @atom_op_shift_left, i32 3 }, %struct.anon.108 { ptr @atom_op_shift_left, i32 6 }, %struct.anon.108 { ptr @atom_op_shift_left, i32 7 }, %struct.anon.108 { ptr @atom_op_shift_right, i32 0 }, %struct.anon.108 { ptr @atom_op_shift_right, i32 1 }, %struct.anon.108 { ptr @atom_op_shift_right, i32 2 }, %struct.anon.108 { ptr @atom_op_shift_right, i32 3 }, %struct.anon.108 { ptr @atom_op_shift_right, i32 6 }, %struct.anon.108 { ptr @atom_op_shift_right, i32 7 }, %struct.anon.108 { ptr @atom_op_mul, i32 0 }, %struct.anon.108 { ptr @atom_op_mul, i32 1 }, %struct.anon.108 { ptr @atom_op_mul, i32 2 }, %struct.anon.108 { ptr @atom_op_mul, i32 3 }, %struct.anon.108 { ptr @atom_op_mul, i32 6 }, %struct.anon.108 { ptr @atom_op_mul, i32 7 }, %struct.anon.108 { ptr @atom_op_div, i32 0 }, %struct.anon.108 { ptr @atom_op_div, i32 1 }, %struct.anon.108 { ptr @atom_op_div, i32 2 }, %struct.anon.108 { ptr @atom_op_div, i32 3 }, %struct.anon.108 { ptr @atom_op_div, i32 6 }, %struct.anon.108 { ptr @atom_op_div, i32 7 }, %struct.anon.108 { ptr @atom_op_add, i32 0 }, %struct.anon.108 { ptr @atom_op_add, i32 1 }, %struct.anon.108 { ptr @atom_op_add, i32 2 }, %struct.anon.108 { ptr @atom_op_add, i32 3 }, %struct.anon.108 { ptr @atom_op_add, i32 6 }, %struct.anon.108 { ptr @atom_op_add, i32 7 }, %struct.anon.108 { ptr @atom_op_sub, i32 0 }, %struct.anon.108 { ptr @atom_op_sub, i32 1 }, %struct.anon.108 { ptr @atom_op_sub, i32 2 }, %struct.anon.108 { ptr @atom_op_sub, i32 3 }, %struct.anon.108 { ptr @atom_op_sub, i32 6 }, %struct.anon.108 { ptr @atom_op_sub, i32 7 }, %struct.anon.108 { ptr @atom_op_setport, i32 0 }, %struct.anon.108 { ptr @atom_op_setport, i32 1 }, %struct.anon.108 { ptr @atom_op_setport, i32 2 }, %struct.anon.108 { ptr @atom_op_setregblock, i32 0 }, %struct.anon.108 { ptr @atom_op_setfbbase, i32 0 }, %struct.anon.108 { ptr @atom_op_compare, i32 0 }, %struct.anon.108 { ptr @atom_op_compare, i32 1 }, %struct.anon.108 { ptr @atom_op_compare, i32 2 }, %struct.anon.108 { ptr @atom_op_compare, i32 3 }, %struct.anon.108 { ptr @atom_op_compare, i32 6 }, %struct.anon.108 { ptr @atom_op_compare, i32 7 }, %struct.anon.108 { ptr @atom_op_switch, i32 0 }, %struct.anon.108 { ptr @atom_op_jump, i32 2 }, %struct.anon.108 { ptr @atom_op_jump, i32 5 }, %struct.anon.108 { ptr @atom_op_jump, i32 3 }, %struct.anon.108 { ptr @atom_op_jump, i32 0 }, %struct.anon.108 { ptr @atom_op_jump, i32 4 }, %struct.anon.108 { ptr @atom_op_jump, i32 1 }, %struct.anon.108 { ptr @atom_op_jump, i32 6 }, %struct.anon.108 { ptr @atom_op_test, i32 0 }, %struct.anon.108 { ptr @atom_op_test, i32 1 }, %struct.anon.108 { ptr @atom_op_test, i32 2 }, %struct.anon.108 { ptr @atom_op_test, i32 3 }, %struct.anon.108 { ptr @atom_op_test, i32 6 }, %struct.anon.108 { ptr @atom_op_test, i32 7 }, %struct.anon.108 { ptr @atom_op_delay, i32 1 }, %struct.anon.108 { ptr @atom_op_delay, i32 0 }, %struct.anon.108 { ptr @atom_op_calltable, i32 0 }, %struct.anon.108 { ptr @atom_op_repeat, i32 0 }, %struct.anon.108 { ptr @atom_op_clear, i32 0 }, %struct.anon.108 { ptr @atom_op_clear, i32 1 }, %struct.anon.108 { ptr @atom_op_clear, i32 2 }, %struct.anon.108 { ptr @atom_op_clear, i32 3 }, %struct.anon.108 { ptr @atom_op_clear, i32 6 }, %struct.anon.108 { ptr @atom_op_clear, i32 7 }, %struct.anon.108 { ptr @atom_op_nop, i32 0 }, %struct.anon.108 { ptr @atom_op_eot, i32 0 }, %struct.anon.108 { ptr @atom_op_mask, i32 0 }, %struct.anon.108 { ptr @atom_op_mask, i32 1 }, %struct.anon.108 { ptr @atom_op_mask, i32 2 }, %struct.anon.108 { ptr @atom_op_mask, i32 3 }, %struct.anon.108 { ptr @atom_op_mask, i32 6 }, %struct.anon.108 { ptr @atom_op_mask, i32 7 }, %struct.anon.108 { ptr @atom_op_postcard, i32 0 }, %struct.anon.108 { ptr @atom_op_beep, i32 0 }, %struct.anon.108 { ptr @atom_op_savereg, i32 0 }, %struct.anon.108 { ptr @atom_op_restorereg, i32 0 }, %struct.anon.108 { ptr @atom_op_setdatablock, i32 0 }, %struct.anon.108 { ptr @atom_op_xor, i32 0 }, %struct.anon.108 { ptr @atom_op_xor, i32 1 }, %struct.anon.108 { ptr @atom_op_xor, i32 2 }, %struct.anon.108 { ptr @atom_op_xor, i32 3 }, %struct.anon.108 { ptr @atom_op_xor, i32 6 }, %struct.anon.108 { ptr @atom_op_xor, i32 7 }, %struct.anon.108 { ptr @atom_op_shl, i32 0 }, %struct.anon.108 { ptr @atom_op_shl, i32 1 }, %struct.anon.108 { ptr @atom_op_shl, i32 2 }, %struct.anon.108 { ptr @atom_op_shl, i32 3 }, %struct.anon.108 { ptr @atom_op_shl, i32 6 }, %struct.anon.108 { ptr @atom_op_shl, i32 7 }, %struct.anon.108 { ptr @atom_op_shr, i32 0 }, %struct.anon.108 { ptr @atom_op_shr, i32 1 }, %struct.anon.108 { ptr @atom_op_shr, i32 2 }, %struct.anon.108 { ptr @atom_op_shr, i32 3 }, %struct.anon.108 { ptr @atom_op_shr, i32 6 }, %struct.anon.108 { ptr @atom_op_shr, i32 7 }, %struct.anon.108 { ptr @atom_op_debug, i32 0 }, %struct.anon.108 zeroinitializer], [232 x i8] zeroinitializer }, align 32
@atom_execute_table_locked._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 1211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_execute_table_locked._entry_ptr.32 = internal global ptr @atom_execute_table_locked._entry.31, section ".printk_index", align 4
@atom_execute_table_locked._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.16, ptr @.str.2, i32 1211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"<<\0A\00", [28 x i8] zeroinitializer }, align 32
@atom_execute_table_locked._entry_ptr.35 = internal global ptr @atom_execute_table_locked._entry.33, section ".printk_index", align 4
@debug_print_spaces._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"   \00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"debug_print_spaces\00", [45 x i8] zeroinitializer }, align 32
@debug_print_spaces._entry_ptr = internal global ptr @debug_print_spaces._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RESERVED\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MOVE_REG\00", [23 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MOVE_PS\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MOVE_WS\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MOVE_FB\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MOVE_PLL\00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MOVE_MC\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AND_REG\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AND_PS\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AND_WS\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AND_FB\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AND_PLL\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AND_MC\00", [25 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"OR_REG\00", [25 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"OR_PS\00", [26 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"OR_WS\00", [26 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"OR_FB\00", [26 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"OR_PLL\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"OR_MC\00", [26 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SHIFT_LEFT_REG\00", [17 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SHIFT_LEFT_PS\00", [18 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SHIFT_LEFT_WS\00", [18 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SHIFT_LEFT_FB\00", [18 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SHIFT_LEFT_PLL\00", [17 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SHIFT_LEFT_MC\00", [18 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SHIFT_RIGHT_REG\00", [16 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SHIFT_RIGHT_PS\00", [17 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SHIFT_RIGHT_WS\00", [17 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SHIFT_RIGHT_FB\00", [17 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SHIFT_RIGHT_PLL\00", [16 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SHIFT_RIGHT_MC\00", [17 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MUL_REG\00", [24 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MUL_PS\00", [25 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MUL_WS\00", [25 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MUL_FB\00", [25 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MUL_PLL\00", [24 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MUL_MC\00", [25 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DIV_REG\00", [24 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DIV_PS\00", [25 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DIV_WS\00", [25 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DIV_FB\00", [25 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DIV_PLL\00", [24 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DIV_MC\00", [25 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ADD_REG\00", [24 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADD_PS\00", [25 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADD_WS\00", [25 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADD_FB\00", [25 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ADD_PLL\00", [24 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADD_MC\00", [25 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SUB_REG\00", [24 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SUB_PS\00", [25 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SUB_WS\00", [25 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SUB_FB\00", [25 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SUB_PLL\00", [24 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SUB_MC\00", [25 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SET_ATI_PORT\00", [19 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SET_PCI_PORT\00", [19 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SET_SYS_IO_PORT\00", [16 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SET_REG_BLOCK\00", [18 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SET_FB_BASE\00", [20 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"COMPARE_REG\00", [20 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"COMPARE_PS\00", [21 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"COMPARE_WS\00", [21 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"COMPARE_FB\00", [21 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"COMPARE_PLL\00", [20 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"COMPARE_MC\00", [21 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SWITCH\00", [25 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"JUMP\00", [27 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"JUMP_EQUAL\00", [21 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"JUMP_BELOW\00", [21 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"JUMP_ABOVE\00", [21 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"JUMP_BELOW_OR_EQUAL\00", [44 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"JUMP_ABOVE_OR_EQUAL\00", [44 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"JUMP_NOT_EQUAL\00", [17 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TEST_REG\00", [23 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TEST_PS\00", [24 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TEST_WS\00", [24 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TEST_FB\00", [24 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TEST_PLL\00", [23 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TEST_MC\00", [24 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DELAY_MILLISEC\00", [17 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DELAY_MICROSEC\00", [17 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CALL_TABLE\00", [21 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"REPEAT\00", [25 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CLEAR_REG\00", [22 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CLEAR_PS\00", [23 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CLEAR_WS\00", [23 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CLEAR_FB\00", [23 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CLEAR_PLL\00", [22 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CLEAR_MC\00", [23 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"NOP\00", [28 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"EOT\00", [28 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MASK_REG\00", [23 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MASK_PS\00", [24 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MASK_WS\00", [24 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MASK_FB\00", [24 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MASK_PLL\00", [23 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MASK_MC\00", [24 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"POST_CARD\00", [22 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BEEP\00", [27 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SAVE_REG\00", [23 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RESTORE_REG\00", [20 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SET_DATA_BLOCK\00", [17 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"XOR_REG\00", [24 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"XOR_PS\00", [25 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"XOR_WS\00", [25 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"XOR_FB\00", [25 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"XOR_PLL\00", [24 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"XOR_MC\00", [25 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SHL_REG\00", [24 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SHL_PS\00", [25 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SHL_WS\00", [25 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SHL_FB\00", [25 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SHL_PLL\00", [24 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SHL_MC\00", [25 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SHR_REG\00", [24 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SHR_PS\00", [25 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SHR_WS\00", [25 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SHR_FB\00", [25 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SHR_PLL\00", [24 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SHR_MC\00", [25 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DEBUG\00", [26 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CTB_DS\00", [25 x i8] zeroinitializer }, align 32
@atom_op_move._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.161, ptr @.str.2, i32 776, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"atom_op_move\00", [19 x i8] zeroinitializer }, align 32
@atom_op_move._entry_ptr = internal global ptr @atom_op_move._entry, section ".printk_index", align 4
@atom_op_move._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.161, ptr @.str.2, i32 776, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"   src: \00", [23 x i8] zeroinitializer }, align 32
@atom_op_move._entry_ptr.164 = internal global ptr @atom_op_move._entry.162, section ".printk_index", align 4
@atom_op_move._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.161, ptr @.str.2, i32 778, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_move._entry_ptr.166 = internal global ptr @atom_op_move._entry.165, section ".printk_index", align 4
@atom_op_move._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.161, ptr @.str.2, i32 778, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"   dst: \00", [23 x i8] zeroinitializer }, align 32
@atom_op_move._entry_ptr.169 = internal global ptr @atom_op_move._entry.167, section ".printk_index", align 4
@atom_dst_to_src = internal constant { [8 x [4 x i32]], [32 x i8] } { [8 x [4 x i32]] [[4 x i32] zeroinitializer, [4 x i32] [i32 1, i32 2, i32 3, i32 0], [4 x i32] [i32 1, i32 2, i32 3, i32 0], [4 x i32] [i32 1, i32 2, i32 3, i32 0], [4 x i32] [i32 4, i32 5, i32 6, i32 7], [4 x i32] [i32 4, i32 5, i32 6, i32 7], [4 x i32] [i32 4, i32 5, i32 6, i32 7], [4 x i32] [i32 4, i32 5, i32 6, i32 7]], [32 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.171, ptr @.str.2, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\017REG[0x%04X]\00", [18 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"atom_get_src_int\00", [47 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry_ptr = internal global ptr @atom_get_src_int._entry, section ".printk_index", align 4
@atom_get_src_int._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.171, ptr @.str.2, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016PCI registers are not implemented\0A\00", [59 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry_ptr.174 = internal global ptr @atom_get_src_int._entry.172, section ".printk_index", align 4
@atom_get_src_int._entry.175 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.171, ptr @.str.2, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016SYSIO registers are not implemented\0A\00", [57 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry_ptr.177 = internal global ptr @atom_get_src_int._entry.175, section ".printk_index", align 4
@atom_get_src_int._entry.178 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.171, ptr @.str.2, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\016Bad IO mode\0A\00", [17 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry_ptr.180 = internal global ptr @atom_get_src_int._entry.178, section ".printk_index", align 4
@atom_get_src_int._entry.181 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.171, ptr @.str.2, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016Undefined indirect IO read method %d\0A\00", [56 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry_ptr.183 = internal global ptr @atom_get_src_int._entry.181, section ".printk_index", align 4
@atom_get_src_int._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.171, ptr @.str.2, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017PS[0x%02X,0x%04X]\00", [44 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry_ptr.186 = internal global ptr @atom_get_src_int._entry.184, section ".printk_index", align 4
@atom_get_src_int._entry.187 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.171, ptr @.str.2, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\017WS[0x%02X]\00", [19 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry_ptr.189 = internal global ptr @atom_get_src_int._entry.187, section ".printk_index", align 4
@atom_get_src_int._entry.190 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.171, ptr @.str.2, i32 273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017ID[0x%04X+%04X]\00", [46 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry_ptr.192 = internal global ptr @atom_get_src_int._entry.190, section ".printk_index", align 4
@atom_get_src_int._entry.193 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.171, ptr @.str.2, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\017ID[0x%04X]\00", [19 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry_ptr.195 = internal global ptr @atom_get_src_int._entry.193, section ".printk_index", align 4
@.str.196 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"ATOM: fb read beyond scratch region: %d vs. %d\0A\00", [48 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.171, ptr @.str.2, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\017FB[0x%02X]\00", [19 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry_ptr.199 = internal global ptr @atom_get_src_int._entry.197, section ".printk_index", align 4
@atom_get_src_int._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.171, ptr @.str.2, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\017IMM 0x%08X\0A\00", [18 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry_ptr.202 = internal global ptr @atom_get_src_int._entry.200, section ".printk_index", align 4
@atom_get_src_int._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.171, ptr @.str.2, i32 305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\017IMM 0x%04X\0A\00", [18 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry_ptr.205 = internal global ptr @atom_get_src_int._entry.203, section ".printk_index", align 4
@atom_get_src_int._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.171, ptr @.str.2, i32 314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\017IMM 0x%02X\0A\00", [18 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry_ptr.208 = internal global ptr @atom_get_src_int._entry.206, section ".printk_index", align 4
@atom_get_src_int._entry.209 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.210, ptr @.str.171, ptr @.str.2, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\017PLL[0x%02X]\00", [18 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry_ptr.211 = internal global ptr @atom_get_src_int._entry.209, section ".printk_index", align 4
@atom_get_src_int._entry.212 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.213, ptr @.str.171, ptr @.str.2, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\017MC[0x%02X]\00", [19 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry_ptr.214 = internal global ptr @atom_get_src_int._entry.212, section ".printk_index", align 4
@atom_arg_mask = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 -1, i32 65535, i32 16776960, i32 -65536, i32 255, i32 65280, i32 16711680, i32 -16777216], [32 x i8] zeroinitializer }, align 32
@atom_arg_shift = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 0, i32 8, i32 16, i32 0, i32 8, i32 16, i32 24], [32 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry.215 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.171, ptr @.str.2, i32 340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017.[31:0] -> 0x%08X\0A\00", [43 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry_ptr.217 = internal global ptr @atom_get_src_int._entry.215, section ".printk_index", align 4
@atom_get_src_int._entry.218 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.171, ptr @.str.2, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017.[15:0] -> 0x%04X\0A\00", [43 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry_ptr.220 = internal global ptr @atom_get_src_int._entry.218, section ".printk_index", align 4
@atom_get_src_int._entry.221 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.171, ptr @.str.2, i32 346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017.[23:8] -> 0x%04X\0A\00", [43 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry_ptr.223 = internal global ptr @atom_get_src_int._entry.221, section ".printk_index", align 4
@atom_get_src_int._entry.224 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.171, ptr @.str.2, i32 349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017.[31:16] -> 0x%04X\0A\00", [42 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry_ptr.226 = internal global ptr @atom_get_src_int._entry.224, section ".printk_index", align 4
@atom_get_src_int._entry.227 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.228, ptr @.str.171, ptr @.str.2, i32 352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017.[7:0] -> 0x%02X\0A\00", [44 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry_ptr.229 = internal global ptr @atom_get_src_int._entry.227, section ".printk_index", align 4
@atom_get_src_int._entry.230 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.231, ptr @.str.171, ptr @.str.2, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017.[15:8] -> 0x%02X\0A\00", [43 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry_ptr.232 = internal global ptr @atom_get_src_int._entry.230, section ".printk_index", align 4
@atom_get_src_int._entry.233 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.234, ptr @.str.171, ptr @.str.2, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017.[23:16] -> 0x%02X\0A\00", [42 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry_ptr.235 = internal global ptr @atom_get_src_int._entry.233, section ".printk_index", align 4
@atom_get_src_int._entry.236 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.237, ptr @.str.171, ptr @.str.2, i32 361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017.[31:24] -> 0x%02X\0A\00", [42 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry_ptr.238 = internal global ptr @atom_get_src_int._entry.236, section ".printk_index", align 4
@atom_iio_execute._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.239, ptr @.str.240, ptr @.str.2, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016Unknown IIO opcode\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"atom_iio_execute\00", [47 x i8] zeroinitializer }, align 32
@atom_iio_execute._entry_ptr = internal global ptr @atom_iio_execute._entry, section ".printk_index", align 4
@atom_put_dst._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.241, ptr @.str.2, i32 466, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"atom_put_dst\00", [19 x i8] zeroinitializer }, align 32
@atom_put_dst._entry_ptr = internal global ptr @atom_put_dst._entry, section ".printk_index", align 4
@atom_put_dst._entry.242 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.241, ptr @.str.2, i32 477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_put_dst._entry_ptr.243 = internal global ptr @atom_put_dst._entry.242, section ".printk_index", align 4
@atom_put_dst._entry.244 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.241, ptr @.str.2, i32 480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_put_dst._entry_ptr.245 = internal global ptr @atom_put_dst._entry.244, section ".printk_index", align 4
@atom_put_dst._entry.246 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.241, ptr @.str.2, i32 484, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_put_dst._entry_ptr.247 = internal global ptr @atom_put_dst._entry.246, section ".printk_index", align 4
@atom_put_dst._entry.248 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.249, ptr @.str.241, ptr @.str.2, i32 489, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016Undefined indirect IO write method %d\0A\00", [55 x i8] zeroinitializer }, align 32
@atom_put_dst._entry_ptr.250 = internal global ptr @atom_put_dst._entry.248, section ".printk_index", align 4
@atom_put_dst._entry.251 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.252, ptr @.str.241, ptr @.str.2, i32 499, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\017PS[0x%02X]\00", [19 x i8] zeroinitializer }, align 32
@atom_put_dst._entry_ptr.253 = internal global ptr @atom_put_dst._entry.251, section ".printk_index", align 4
@atom_put_dst._entry.254 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.241, ptr @.str.2, i32 505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_put_dst._entry_ptr.255 = internal global ptr @atom_put_dst._entry.254, section ".printk_index", align 4
@.str.256 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ATOM: fb write beyond scratch region: %d vs. %d\0A\00", [47 x i8] zeroinitializer }, align 32
@atom_put_dst._entry.257 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.241, ptr @.str.2, i32 543, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_put_dst._entry_ptr.258 = internal global ptr @atom_put_dst._entry.257, section ".printk_index", align 4
@atom_put_dst._entry.259 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.210, ptr @.str.241, ptr @.str.2, i32 548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_put_dst._entry_ptr.260 = internal global ptr @atom_put_dst._entry.259, section ".printk_index", align 4
@atom_put_dst._entry.261 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.213, ptr @.str.241, ptr @.str.2, i32 554, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_put_dst._entry_ptr.262 = internal global ptr @atom_put_dst._entry.261, section ".printk_index", align 4
@atom_put_dst._entry.263 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.264, ptr @.str.241, ptr @.str.2, i32 560, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017.[31:0] <- 0x%08X\0A\00", [43 x i8] zeroinitializer }, align 32
@atom_put_dst._entry_ptr.265 = internal global ptr @atom_put_dst._entry.263, section ".printk_index", align 4
@atom_put_dst._entry.266 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.267, ptr @.str.241, ptr @.str.2, i32 563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017.[15:0] <- 0x%04X\0A\00", [43 x i8] zeroinitializer }, align 32
@atom_put_dst._entry_ptr.268 = internal global ptr @atom_put_dst._entry.266, section ".printk_index", align 4
@atom_put_dst._entry.269 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.270, ptr @.str.241, ptr @.str.2, i32 566, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017.[23:8] <- 0x%04X\0A\00", [43 x i8] zeroinitializer }, align 32
@atom_put_dst._entry_ptr.271 = internal global ptr @atom_put_dst._entry.269, section ".printk_index", align 4
@atom_put_dst._entry.272 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.273, ptr @.str.241, ptr @.str.2, i32 569, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017.[31:16] <- 0x%04X\0A\00", [42 x i8] zeroinitializer }, align 32
@atom_put_dst._entry_ptr.274 = internal global ptr @atom_put_dst._entry.272, section ".printk_index", align 4
@atom_put_dst._entry.275 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.276, ptr @.str.241, ptr @.str.2, i32 572, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017.[7:0] <- 0x%02X\0A\00", [44 x i8] zeroinitializer }, align 32
@atom_put_dst._entry_ptr.277 = internal global ptr @atom_put_dst._entry.275, section ".printk_index", align 4
@atom_put_dst._entry.278 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.279, ptr @.str.241, ptr @.str.2, i32 575, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017.[15:8] <- 0x%02X\0A\00", [43 x i8] zeroinitializer }, align 32
@atom_put_dst._entry_ptr.280 = internal global ptr @atom_put_dst._entry.278, section ".printk_index", align 4
@atom_put_dst._entry.281 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.282, ptr @.str.241, ptr @.str.2, i32 578, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017.[23:16] <- 0x%02X\0A\00", [42 x i8] zeroinitializer }, align 32
@atom_put_dst._entry_ptr.283 = internal global ptr @atom_put_dst._entry.281, section ".printk_index", align 4
@atom_put_dst._entry.284 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.285, ptr @.str.241, ptr @.str.2, i32 581, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017.[31:24] <- 0x%02X\0A\00", [42 x i8] zeroinitializer }, align 32
@atom_put_dst._entry_ptr.286 = internal global ptr @atom_put_dst._entry.284, section ".printk_index", align 4
@atom_op_and._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.287, ptr @.str.2, i32 605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"atom_op_and\00", [20 x i8] zeroinitializer }, align 32
@atom_op_and._entry_ptr = internal global ptr @atom_op_and._entry, section ".printk_index", align 4
@atom_op_and._entry.288 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.287, ptr @.str.2, i32 605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_and._entry_ptr.289 = internal global ptr @atom_op_and._entry.288, section ".printk_index", align 4
@atom_op_and._entry.290 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.287, ptr @.str.2, i32 607, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_and._entry_ptr.291 = internal global ptr @atom_op_and._entry.290, section ".printk_index", align 4
@atom_op_and._entry.292 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.287, ptr @.str.2, i32 607, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_and._entry_ptr.293 = internal global ptr @atom_op_and._entry.292, section ".printk_index", align 4
@atom_op_and._entry.294 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.287, ptr @.str.2, i32 610, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_and._entry_ptr.295 = internal global ptr @atom_op_and._entry.294, section ".printk_index", align 4
@atom_op_and._entry.296 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.287, ptr @.str.2, i32 610, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_and._entry_ptr.297 = internal global ptr @atom_op_and._entry.296, section ".printk_index", align 4
@atom_op_or._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.298, ptr @.str.2, i32 803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"atom_op_or\00", [21 x i8] zeroinitializer }, align 32
@atom_op_or._entry_ptr = internal global ptr @atom_op_or._entry, section ".printk_index", align 4
@atom_op_or._entry.299 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.298, ptr @.str.2, i32 803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_or._entry_ptr.300 = internal global ptr @atom_op_or._entry.299, section ".printk_index", align 4
@atom_op_or._entry.301 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.298, ptr @.str.2, i32 805, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_or._entry_ptr.302 = internal global ptr @atom_op_or._entry.301, section ".printk_index", align 4
@atom_op_or._entry.303 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.298, ptr @.str.2, i32 805, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_or._entry_ptr.304 = internal global ptr @atom_op_or._entry.303, section ".printk_index", align 4
@atom_op_or._entry.305 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.298, ptr @.str.2, i32 808, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_or._entry_ptr.306 = internal global ptr @atom_op_or._entry.305, section ".printk_index", align 4
@atom_op_or._entry.307 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.298, ptr @.str.2, i32 808, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_or._entry_ptr.308 = internal global ptr @atom_op_or._entry.307, section ".printk_index", align 4
@atom_def_dst = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 3], [32 x i8] zeroinitializer }, align 32
@atom_op_shift_left._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.309, ptr @.str.2, i32 895, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"atom_op_shift_left\00", [45 x i8] zeroinitializer }, align 32
@atom_op_shift_left._entry_ptr = internal global ptr @atom_op_shift_left._entry, section ".printk_index", align 4
@atom_op_shift_left._entry.310 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.309, ptr @.str.2, i32 895, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_shift_left._entry_ptr.311 = internal global ptr @atom_op_shift_left._entry.310, section ".printk_index", align 4
@atom_op_shift_left._entry.312 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.309, ptr @.str.2, i32 898, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_shift_left._entry_ptr.313 = internal global ptr @atom_op_shift_left._entry.312, section ".printk_index", align 4
@atom_op_shift_left._entry.314 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.315, ptr @.str.309, ptr @.str.2, i32 898, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"   shift: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@atom_op_shift_left._entry_ptr.316 = internal global ptr @atom_op_shift_left._entry.314, section ".printk_index", align 4
@atom_op_shift_left._entry.317 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.309, ptr @.str.2, i32 900, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_shift_left._entry_ptr.318 = internal global ptr @atom_op_shift_left._entry.317, section ".printk_index", align 4
@atom_op_shift_left._entry.319 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.309, ptr @.str.2, i32 900, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_shift_left._entry_ptr.320 = internal global ptr @atom_op_shift_left._entry.319, section ".printk_index", align 4
@atom_op_shift_right._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.321, ptr @.str.2, i32 911, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atom_op_shift_right\00", [44 x i8] zeroinitializer }, align 32
@atom_op_shift_right._entry_ptr = internal global ptr @atom_op_shift_right._entry, section ".printk_index", align 4
@atom_op_shift_right._entry.322 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.321, ptr @.str.2, i32 911, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_shift_right._entry_ptr.323 = internal global ptr @atom_op_shift_right._entry.322, section ".printk_index", align 4
@atom_op_shift_right._entry.324 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.321, ptr @.str.2, i32 914, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_shift_right._entry_ptr.325 = internal global ptr @atom_op_shift_right._entry.324, section ".printk_index", align 4
@atom_op_shift_right._entry.326 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.315, ptr @.str.321, ptr @.str.2, i32 914, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_shift_right._entry_ptr.327 = internal global ptr @atom_op_shift_right._entry.326, section ".printk_index", align 4
@atom_op_shift_right._entry.328 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.321, ptr @.str.2, i32 916, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_shift_right._entry_ptr.329 = internal global ptr @atom_op_shift_right._entry.328, section ".printk_index", align 4
@atom_op_shift_right._entry.330 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.321, ptr @.str.2, i32 916, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_shift_right._entry_ptr.331 = internal global ptr @atom_op_shift_right._entry.330, section ".printk_index", align 4
@atom_op_mul._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.332, ptr @.str.2, i32 786, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.332 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"atom_op_mul\00", [20 x i8] zeroinitializer }, align 32
@atom_op_mul._entry_ptr = internal global ptr @atom_op_mul._entry, section ".printk_index", align 4
@atom_op_mul._entry.333 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.334, ptr @.str.332, ptr @.str.2, i32 786, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.334 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"   src1: \00", [22 x i8] zeroinitializer }, align 32
@atom_op_mul._entry_ptr.335 = internal global ptr @atom_op_mul._entry.333, section ".printk_index", align 4
@atom_op_mul._entry.336 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.332, ptr @.str.2, i32 788, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_mul._entry_ptr.337 = internal global ptr @atom_op_mul._entry.336, section ".printk_index", align 4
@atom_op_mul._entry.338 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.339, ptr @.str.332, ptr @.str.2, i32 788, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.339 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"   src2: \00", [22 x i8] zeroinitializer }, align 32
@atom_op_mul._entry_ptr.340 = internal global ptr @atom_op_mul._entry.338, section ".printk_index", align 4
@atom_op_div._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.341, ptr @.str.2, i32 677, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.341 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"atom_op_div\00", [20 x i8] zeroinitializer }, align 32
@atom_op_div._entry_ptr = internal global ptr @atom_op_div._entry, section ".printk_index", align 4
@atom_op_div._entry.342 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.334, ptr @.str.341, ptr @.str.2, i32 677, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_div._entry_ptr.343 = internal global ptr @atom_op_div._entry.342, section ".printk_index", align 4
@atom_op_div._entry.344 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.341, ptr @.str.2, i32 679, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_div._entry_ptr.345 = internal global ptr @atom_op_div._entry.344, section ".printk_index", align 4
@atom_op_div._entry.346 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.339, ptr @.str.341, ptr @.str.2, i32 679, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_div._entry_ptr.347 = internal global ptr @atom_op_div._entry.346, section ".printk_index", align 4
@atom_op_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.348, ptr @.str.2, i32 591, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.348 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"atom_op_add\00", [20 x i8] zeroinitializer }, align 32
@atom_op_add._entry_ptr = internal global ptr @atom_op_add._entry, section ".printk_index", align 4
@atom_op_add._entry.349 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.348, ptr @.str.2, i32 591, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_add._entry_ptr.350 = internal global ptr @atom_op_add._entry.349, section ".printk_index", align 4
@atom_op_add._entry.351 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.348, ptr @.str.2, i32 593, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_add._entry_ptr.352 = internal global ptr @atom_op_add._entry.351, section ".printk_index", align 4
@atom_op_add._entry.353 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.348, ptr @.str.2, i32 593, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_add._entry_ptr.354 = internal global ptr @atom_op_add._entry.353, section ".printk_index", align 4
@atom_op_add._entry.355 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.348, ptr @.str.2, i32 596, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_add._entry_ptr.356 = internal global ptr @atom_op_add._entry.355, section ".printk_index", align 4
@atom_op_add._entry.357 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.348, ptr @.str.2, i32 596, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_add._entry_ptr.358 = internal global ptr @atom_op_add._entry.357, section ".printk_index", align 4
@atom_op_sub._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.359, ptr @.str.2, i32 963, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.359 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"atom_op_sub\00", [20 x i8] zeroinitializer }, align 32
@atom_op_sub._entry_ptr = internal global ptr @atom_op_sub._entry, section ".printk_index", align 4
@atom_op_sub._entry.360 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.359, ptr @.str.2, i32 963, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_sub._entry_ptr.361 = internal global ptr @atom_op_sub._entry.360, section ".printk_index", align 4
@atom_op_sub._entry.362 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.359, ptr @.str.2, i32 965, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_sub._entry_ptr.363 = internal global ptr @atom_op_sub._entry.362, section ".printk_index", align 4
@atom_op_sub._entry.364 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.359, ptr @.str.2, i32 965, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_sub._entry_ptr.365 = internal global ptr @atom_op_sub._entry.364, section ".printk_index", align 4
@atom_op_sub._entry.366 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.359, ptr @.str.2, i32 968, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_sub._entry_ptr.367 = internal global ptr @atom_op_sub._entry.366, section ".printk_index", align 4
@atom_op_sub._entry.368 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.359, ptr @.str.2, i32 968, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_sub._entry_ptr.369 = internal global ptr @atom_op_sub._entry.368, section ".printk_index", align 4
@atom_op_setport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.370, ptr @.str.2, i32 861, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.370 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atom_op_setport\00", [16 x i8] zeroinitializer }, align 32
@atom_op_setport._entry_ptr = internal global ptr @atom_op_setport._entry, section ".printk_index", align 4
@atom_op_setport._entry.371 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.372, ptr @.str.370, ptr @.str.2, i32 861, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.372 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"   port: %d (%s)\0A\00", [46 x i8] zeroinitializer }, align 32
@atom_op_setport._entry_ptr.373 = internal global ptr @atom_op_setport._entry.371, section ".printk_index", align 4
@atom_io_names = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.379, ptr @.str.380, ptr @.str.381, ptr @.str.382, ptr @.str.383], [44 x i8] zeroinitializer }, align 32
@atom_op_setport._entry.374 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.370, ptr @.str.2, i32 863, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_setport._entry_ptr.375 = internal global ptr @atom_op_setport._entry.374, section ".printk_index", align 4
@atom_op_setport._entry.376 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.377, ptr @.str.370, ptr @.str.2, i32 863, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.377 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"   port: %d\0A\00", [19 x i8] zeroinitializer }, align 32
@atom_op_setport._entry_ptr.378 = internal global ptr @atom_op_setport._entry.376, section ".printk_index", align 4
@.str.379 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"MM\00", [29 x i8] zeroinitializer }, align 32
@.str.380 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PLL\00", [28 x i8] zeroinitializer }, align 32
@.str.381 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"MC\00", [29 x i8] zeroinitializer }, align 32
@.str.382 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PCIE\00", [27 x i8] zeroinitializer }, align 32
@.str.383 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PCIE PORT\00", [22 x i8] zeroinitializer }, align 32
@atom_op_setregblock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.384, ptr @.str.2, i32 885, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.384 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atom_op_setregblock\00", [44 x i8] zeroinitializer }, align 32
@atom_op_setregblock._entry_ptr = internal global ptr @atom_op_setregblock._entry, section ".printk_index", align 4
@atom_op_setregblock._entry.385 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.386, ptr @.str.384, ptr @.str.2, i32 885, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.386 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"   base: 0x%04X\0A\00", [47 x i8] zeroinitializer }, align 32
@atom_op_setregblock._entry_ptr.387 = internal global ptr @atom_op_setregblock._entry.385, section ".printk_index", align 4
@atom_op_setfbbase._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.388, ptr @.str.2, i32 850, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.388 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atom_op_setfbbase\00", [46 x i8] zeroinitializer }, align 32
@atom_op_setfbbase._entry_ptr = internal global ptr @atom_op_setfbbase._entry, section ".printk_index", align 4
@atom_op_setfbbase._entry.389 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.390, ptr @.str.388, ptr @.str.2, i32 850, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.390 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"   fb_base: \00", [19 x i8] zeroinitializer }, align 32
@atom_op_setfbbase._entry_ptr.391 = internal global ptr @atom_op_setfbbase._entry.389, section ".printk_index", align 4
@atom_op_compare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.392, ptr @.str.2, i32 651, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.392 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atom_op_compare\00", [16 x i8] zeroinitializer }, align 32
@atom_op_compare._entry_ptr = internal global ptr @atom_op_compare._entry, section ".printk_index", align 4
@atom_op_compare._entry.393 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.334, ptr @.str.392, ptr @.str.2, i32 651, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_compare._entry_ptr.394 = internal global ptr @atom_op_compare._entry.393, section ".printk_index", align 4
@atom_op_compare._entry.395 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.392, ptr @.str.2, i32 653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_compare._entry_ptr.396 = internal global ptr @atom_op_compare._entry.395, section ".printk_index", align 4
@atom_op_compare._entry.397 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.339, ptr @.str.392, ptr @.str.2, i32 653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_compare._entry_ptr.398 = internal global ptr @atom_op_compare._entry.397, section ".printk_index", align 4
@atom_op_compare._entry.399 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.392, ptr @.str.2, i32 658, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_compare._entry_ptr.400 = internal global ptr @atom_op_compare._entry.399, section ".printk_index", align 4
@atom_op_compare._entry.401 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.402, ptr @.str.392, ptr @.str.2, i32 658, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.402 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"   result: %s %s\0A\00", [46 x i8] zeroinitializer }, align 32
@atom_op_compare._entry_ptr.403 = internal global ptr @atom_op_compare._entry.401, section ".printk_index", align 4
@.str.404 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"EQ\00", [29 x i8] zeroinitializer }, align 32
@.str.405 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"NE\00", [29 x i8] zeroinitializer }, align 32
@.str.406 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"GT\00", [29 x i8] zeroinitializer }, align 32
@.str.407 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"LE\00", [29 x i8] zeroinitializer }, align 32
@atom_op_switch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.408, ptr @.str.2, i32 976, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.408 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"atom_op_switch\00", [17 x i8] zeroinitializer }, align 32
@atom_op_switch._entry_ptr = internal global ptr @atom_op_switch._entry, section ".printk_index", align 4
@atom_op_switch._entry.409 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.410, ptr @.str.408, ptr @.str.2, i32 976, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.410 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"   switch: \00", [20 x i8] zeroinitializer }, align 32
@atom_op_switch._entry_ptr.411 = internal global ptr @atom_op_switch._entry.409, section ".printk_index", align 4
@atom_op_switch._entry.412 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.408, ptr @.str.2, i32 981, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_switch._entry_ptr.413 = internal global ptr @atom_op_switch._entry.412, section ".printk_index", align 4
@atom_op_switch._entry.414 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.415, ptr @.str.408, ptr @.str.2, i32 981, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.415 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"   case: \00", [22 x i8] zeroinitializer }, align 32
@atom_op_switch._entry_ptr.416 = internal global ptr @atom_op_switch._entry.414, section ".printk_index", align 4
@atom_op_switch._entry.417 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.408, ptr @.str.2, i32 987, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_switch._entry_ptr.418 = internal global ptr @atom_op_switch._entry.417, section ".printk_index", align 4
@atom_op_switch._entry.419 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.420, ptr @.str.408, ptr @.str.2, i32 987, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.420 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"   target: %04X\0A\00", [47 x i8] zeroinitializer }, align 32
@atom_op_switch._entry_ptr.421 = internal global ptr @atom_op_switch._entry.419, section ".printk_index", align 4
@atom_op_switch._entry.422 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.423, ptr @.str.408, ptr @.str.2, i32 993, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.423 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\016Bad case\0A\00", [20 x i8] zeroinitializer }, align 32
@atom_op_switch._entry_ptr.424 = internal global ptr @atom_op_switch._entry.422, section ".printk_index", align 4
@atom_op_jump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.425, ptr @.str.2, i32 725, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.425 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"atom_op_jump\00", [19 x i8] zeroinitializer }, align 32
@atom_op_jump._entry_ptr = internal global ptr @atom_op_jump._entry, section ".printk_index", align 4
@atom_op_jump._entry.426 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.427, ptr @.str.425, ptr @.str.2, i32 725, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.427 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"   taken: %s\0A\00", [18 x i8] zeroinitializer }, align 32
@atom_op_jump._entry_ptr.428 = internal global ptr @atom_op_jump._entry.426, section ".printk_index", align 4
@.str.429 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.430 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@atom_op_jump._entry.431 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.425, ptr @.str.2, i32 726, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_jump._entry_ptr.432 = internal global ptr @atom_op_jump._entry.431, section ".printk_index", align 4
@atom_op_jump._entry.433 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.434, ptr @.str.425, ptr @.str.2, i32 726, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.434 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"   target: 0x%04X\0A\00", [45 x i8] zeroinitializer }, align 32
@atom_op_jump._entry_ptr.435 = internal global ptr @atom_op_jump._entry.433, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.436 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"atombios stuck in loop for more than 5secs aborting\0A\00", [43 x i8] zeroinitializer }, align 32
@atom_op_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.437, ptr @.str.2, i32 1003, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.437 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"atom_op_test\00", [19 x i8] zeroinitializer }, align 32
@atom_op_test._entry_ptr = internal global ptr @atom_op_test._entry, section ".printk_index", align 4
@atom_op_test._entry.438 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.334, ptr @.str.437, ptr @.str.2, i32 1003, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_test._entry_ptr.439 = internal global ptr @atom_op_test._entry.438, section ".printk_index", align 4
@atom_op_test._entry.440 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.437, ptr @.str.2, i32 1005, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_test._entry_ptr.441 = internal global ptr @atom_op_test._entry.440, section ".printk_index", align 4
@atom_op_test._entry.442 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.339, ptr @.str.437, ptr @.str.2, i32 1005, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_test._entry_ptr.443 = internal global ptr @atom_op_test._entry.442, section ".printk_index", align 4
@atom_op_test._entry.444 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.437, ptr @.str.2, i32 1008, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_test._entry_ptr.445 = internal global ptr @atom_op_test._entry.444, section ".printk_index", align 4
@atom_op_test._entry.446 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.447, ptr @.str.437, ptr @.str.2, i32 1008, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.447 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"   result: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@atom_op_test._entry_ptr.448 = internal global ptr @atom_op_test._entry.446, section ".printk_index", align 4
@atom_op_delay._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.449, ptr @.str.2, i32 664, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.449 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atom_op_delay\00", [18 x i8] zeroinitializer }, align 32
@atom_op_delay._entry_ptr = internal global ptr @atom_op_delay._entry, section ".printk_index", align 4
@atom_op_delay._entry.450 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.451, ptr @.str.449, ptr @.str.2, i32 664, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.451 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"   count: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@atom_op_delay._entry_ptr.452 = internal global ptr @atom_op_delay._entry.450, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@kgdb_active = external dso_local global %struct.atomic_t, align 4
@atom_op_calltable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.453, ptr @.str.2, i32 625, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.453 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atom_op_calltable\00", [46 x i8] zeroinitializer }, align 32
@atom_op_calltable._entry_ptr = internal global ptr @atom_op_calltable._entry, section ".printk_index", align 4
@atom_op_calltable._entry.454 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.455, ptr @.str.453, ptr @.str.2, i32 625, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.455 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"   table: %d (%s)\0A\00", [45 x i8] zeroinitializer }, align 32
@atom_op_calltable._entry_ptr.456 = internal global ptr @atom_op_calltable._entry.454, section ".printk_index", align 4
@atom_table_names = internal constant { [74 x ptr], [88 x i8] } { [74 x ptr] [ptr @.str.462, ptr @.str.463, ptr @.str.464, ptr @.str.465, ptr @.str.466, ptr @.str.467, ptr @.str.468, ptr @.str.469, ptr @.str.470, ptr @.str.471, ptr @.str.472, ptr @.str.473, ptr @.str.474, ptr @.str.475, ptr @.str.476, ptr @.str.477, ptr @.str.478, ptr @.str.479, ptr @.str.480, ptr @.str.481, ptr @.str.482, ptr @.str.483, ptr @.str.484, ptr @.str.485, ptr @.str.486, ptr @.str.487, ptr @.str.488, ptr @.str.489, ptr @.str.490, ptr @.str.491, ptr @.str.492, ptr @.str.493, ptr @.str.494, ptr @.str.495, ptr @.str.496, ptr @.str.497, ptr @.str.498, ptr @.str.499, ptr @.str.500, ptr @.str.501, ptr @.str.502, ptr @.str.503, ptr @.str.504, ptr @.str.505, ptr @.str.506, ptr @.str.507, ptr @.str.508, ptr @.str.509, ptr @.str.510, ptr @.str.511, ptr @.str.512, ptr @.str.513, ptr @.str.514, ptr @.str.515, ptr @.str.516, ptr @.str.517, ptr @.str.518, ptr @.str.519, ptr @.str.520, ptr @.str.521, ptr @.str.522, ptr @.str.523, ptr @.str.524, ptr @.str.525, ptr @.str.526, ptr @.str.527, ptr @.str.528, ptr @.str.529, ptr @.str.530, ptr @.str.531, ptr @.str.532, ptr @.str.533, ptr @.str.534, ptr @.str.535], [88 x i8] zeroinitializer }, align 32
@atom_op_calltable._entry.457 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.453, ptr @.str.2, i32 627, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_calltable._entry_ptr.458 = internal global ptr @atom_op_calltable._entry.457, section ".printk_index", align 4
@atom_op_calltable._entry.459 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.460, ptr @.str.453, ptr @.str.2, i32 627, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.460 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"   table: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@atom_op_calltable._entry_ptr.461 = internal global ptr @atom_op_calltable._entry.459, section ".printk_index", align 4
@.str.462 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ASIC_Init\00", [22 x i8] zeroinitializer }, align 32
@.str.463 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"GetDisplaySurfaceSize\00", [42 x i8] zeroinitializer }, align 32
@.str.464 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ASIC_RegistersInit\00", [45 x i8] zeroinitializer }, align 32
@.str.465 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"VRAM_BlockVenderDetection\00", [38 x i8] zeroinitializer }, align 32
@.str.466 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SetClocksRatio\00", [17 x i8] zeroinitializer }, align 32
@.str.467 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MemoryControllerInit\00", [43 x i8] zeroinitializer }, align 32
@.str.468 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GPIO_PinInit\00", [19 x i8] zeroinitializer }, align 32
@.str.469 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MemoryParamAdjust\00", [46 x i8] zeroinitializer }, align 32
@.str.470 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DVOEncoderControl\00", [46 x i8] zeroinitializer }, align 32
@.str.471 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIOPinControl\00", [17 x i8] zeroinitializer }, align 32
@.str.472 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SetEngineClock\00", [17 x i8] zeroinitializer }, align 32
@.str.473 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SetMemoryClock\00", [17 x i8] zeroinitializer }, align 32
@.str.474 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SetPixelClock\00", [18 x i8] zeroinitializer }, align 32
@.str.475 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DynamicClockGating\00", [45 x i8] zeroinitializer }, align 32
@.str.476 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ResetMemoryDLL\00", [17 x i8] zeroinitializer }, align 32
@.str.477 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ResetMemoryDevice\00", [46 x i8] zeroinitializer }, align 32
@.str.478 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MemoryPLLInit\00", [18 x i8] zeroinitializer }, align 32
@.str.479 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"EnableMemorySelfRefresh\00", [40 x i8] zeroinitializer }, align 32
@.str.480 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"AdjustMemoryController\00", [41 x i8] zeroinitializer }, align 32
@.str.481 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"EnableASIC_StaticPwrMgt\00", [40 x i8] zeroinitializer }, align 32
@.str.482 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ASIC_StaticPwrMgtStatusChange\00", [34 x i8] zeroinitializer }, align 32
@.str.483 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DAC_LoadDetection\00", [46 x i8] zeroinitializer }, align 32
@.str.484 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TMDS2EncoderControl\00", [44 x i8] zeroinitializer }, align 32
@.str.485 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LCD1OutputControl\00", [46 x i8] zeroinitializer }, align 32
@.str.486 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DAC1EncoderControl\00", [45 x i8] zeroinitializer }, align 32
@.str.487 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DAC2EncoderControl\00", [45 x i8] zeroinitializer }, align 32
@.str.488 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DVOOutputControl\00", [47 x i8] zeroinitializer }, align 32
@.str.489 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CV1OutputControl\00", [47 x i8] zeroinitializer }, align 32
@.str.490 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SetCRTC_DPM_State\00", [46 x i8] zeroinitializer }, align 32
@.str.491 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TVEncoderControl\00", [47 x i8] zeroinitializer }, align 32
@.str.492 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TMDS1EncoderControl\00", [44 x i8] zeroinitializer }, align 32
@.str.493 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"LVDSEncoderControl\00", [45 x i8] zeroinitializer }, align 32
@.str.494 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TV1OutputControl\00", [47 x i8] zeroinitializer }, align 32
@.str.495 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"EnableScaler\00", [19 x i8] zeroinitializer }, align 32
@.str.496 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BlankCRTC\00", [22 x i8] zeroinitializer }, align 32
@.str.497 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EnableCRTC\00", [21 x i8] zeroinitializer }, align 32
@.str.498 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GetPixelClock\00", [18 x i8] zeroinitializer }, align 32
@.str.499 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EnableVGA_Render\00", [47 x i8] zeroinitializer }, align 32
@.str.500 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EnableVGA_Access\00", [47 x i8] zeroinitializer }, align 32
@.str.501 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SetCRTC_Timing\00", [17 x i8] zeroinitializer }, align 32
@.str.502 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SetCRTC_OverScan\00", [47 x i8] zeroinitializer }, align 32
@.str.503 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SetCRTC_Replication\00", [44 x i8] zeroinitializer }, align 32
@.str.504 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SelectCRTC_Source\00", [46 x i8] zeroinitializer }, align 32
@.str.505 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"EnableGraphSurfaces\00", [44 x i8] zeroinitializer }, align 32
@.str.506 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"UpdateCRTC_DoubleBufferRegisters\00", [63 x i8] zeroinitializer }, align 32
@.str.507 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LUT_AutoFill\00", [19 x i8] zeroinitializer }, align 32
@.str.508 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"EnableHW_IconCursor\00", [44 x i8] zeroinitializer }, align 32
@.str.509 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GetMemoryClock\00", [17 x i8] zeroinitializer }, align 32
@.str.510 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GetEngineClock\00", [17 x i8] zeroinitializer }, align 32
@.str.511 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SetCRTC_UsingDTDTiming\00", [41 x i8] zeroinitializer }, align 32
@.str.512 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"TVBootUpStdPinDetection\00", [40 x i8] zeroinitializer }, align 32
@.str.513 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DFP2OutputControl\00", [46 x i8] zeroinitializer }, align 32
@.str.514 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"VRAM_BlockDetectionByStrap\00", [37 x i8] zeroinitializer }, align 32
@.str.515 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MemoryCleanUp\00", [18 x i8] zeroinitializer }, align 32
@.str.516 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ReadEDIDFromHWAssistedI2C\00", [38 x i8] zeroinitializer }, align 32
@.str.517 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"WriteOneByteToHWAssistedI2C\00", [36 x i8] zeroinitializer }, align 32
@.str.518 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ReadHWAssistedI2CStatus\00", [40 x i8] zeroinitializer }, align 32
@.str.519 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SpeedFanControl\00", [16 x i8] zeroinitializer }, align 32
@.str.520 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PowerConnectorDetection\00", [40 x i8] zeroinitializer }, align 32
@.str.521 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MC_Synchronization\00", [45 x i8] zeroinitializer }, align 32
@.str.522 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ComputeMemoryEnginePLL\00", [41 x i8] zeroinitializer }, align 32
@.str.523 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"MemoryRefreshConversion\00", [40 x i8] zeroinitializer }, align 32
@.str.524 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"VRAM_GetCurrentInfoBlock\00", [39 x i8] zeroinitializer }, align 32
@.str.525 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DynamicMemorySettings\00", [42 x i8] zeroinitializer }, align 32
@.str.526 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MemoryTraining\00", [17 x i8] zeroinitializer }, align 32
@.str.527 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"EnableLVDS_SS\00", [18 x i8] zeroinitializer }, align 32
@.str.528 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DFP1OutputControl\00", [46 x i8] zeroinitializer }, align 32
@.str.529 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SetVoltage\00", [21 x i8] zeroinitializer }, align 32
@.str.530 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CRT1OutputControl\00", [46 x i8] zeroinitializer }, align 32
@.str.531 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CRT2OutputControl\00", [46 x i8] zeroinitializer }, align 32
@.str.532 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SetupHWAssistedI2CStatus\00", [39 x i8] zeroinitializer }, align 32
@.str.533 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ClockSource\00", [20 x i8] zeroinitializer }, align 32
@.str.534 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MemoryDeviceInit\00", [47 x i8] zeroinitializer }, align 32
@.str.535 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"EnableYUV\00", [22 x i8] zeroinitializer }, align 32
@atom_op_repeat._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.536, ptr @.str.537, ptr @.str.2, i32 820, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.536 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016unimplemented!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.537 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"atom_op_repeat\00", [17 x i8] zeroinitializer }, align 32
@atom_op_repeat._entry_ptr = internal global ptr @atom_op_repeat._entry, section ".printk_index", align 4
@atom_op_clear._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.538, ptr @.str.2, i32 643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.538 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atom_op_clear\00", [18 x i8] zeroinitializer }, align 32
@atom_op_clear._entry_ptr = internal global ptr @atom_op_clear._entry, section ".printk_index", align 4
@atom_op_clear._entry.539 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.538, ptr @.str.2, i32 643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_clear._entry_ptr.540 = internal global ptr @atom_op_clear._entry.539, section ".printk_index", align 4
@atom_op_mask._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.541, ptr @.str.2, i32 753, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.541 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"atom_op_mask\00", [19 x i8] zeroinitializer }, align 32
@atom_op_mask._entry_ptr = internal global ptr @atom_op_mask._entry, section ".printk_index", align 4
@atom_op_mask._entry.542 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.541, ptr @.str.2, i32 753, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_mask._entry_ptr.543 = internal global ptr @atom_op_mask._entry.542, section ".printk_index", align 4
@atom_op_mask._entry.544 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.541, ptr @.str.2, i32 756, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_mask._entry_ptr.545 = internal global ptr @atom_op_mask._entry.544, section ".printk_index", align 4
@atom_op_mask._entry.546 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.547, ptr @.str.541, ptr @.str.2, i32 756, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.547 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"   mask: 0x%08x\00", [16 x i8] zeroinitializer }, align 32
@atom_op_mask._entry_ptr.548 = internal global ptr @atom_op_mask._entry.546, section ".printk_index", align 4
@atom_op_mask._entry.549 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.541, ptr @.str.2, i32 757, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_mask._entry_ptr.550 = internal global ptr @atom_op_mask._entry.549, section ".printk_index", align 4
@atom_op_mask._entry.551 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.541, ptr @.str.2, i32 757, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_mask._entry_ptr.552 = internal global ptr @atom_op_mask._entry.551, section ".printk_index", align 4
@atom_op_mask._entry.553 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.541, ptr @.str.2, i32 761, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_mask._entry_ptr.554 = internal global ptr @atom_op_mask._entry.553, section ".printk_index", align 4
@atom_op_mask._entry.555 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.541, ptr @.str.2, i32 761, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_mask._entry_ptr.556 = internal global ptr @atom_op_mask._entry.555, section ".printk_index", align 4
@atom_op_postcard._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.557, ptr @.str.2, i32 815, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.557 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"atom_op_postcard\00", [47 x i8] zeroinitializer }, align 32
@atom_op_postcard._entry_ptr = internal global ptr @atom_op_postcard._entry, section ".printk_index", align 4
@atom_op_postcard._entry.558 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.559, ptr @.str.557, ptr @.str.2, i32 815, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.559 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"POST card output: 0x%02X\0A\00", [38 x i8] zeroinitializer }, align 32
@atom_op_postcard._entry_ptr.560 = internal global ptr @atom_op_postcard._entry.558, section ".printk_index", align 4
@atom_op_beep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.561, ptr @.str.562, ptr @.str.2, i32 616, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.561 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ATOM BIOS beeped!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.562 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"atom_op_beep\00", [19 x i8] zeroinitializer }, align 32
@atom_op_beep._entry_ptr = internal global ptr @atom_op_beep._entry, section ".printk_index", align 4
@atom_op_savereg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.536, ptr @.str.563, ptr @.str.2, i32 830, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.563 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atom_op_savereg\00", [16 x i8] zeroinitializer }, align 32
@atom_op_savereg._entry_ptr = internal global ptr @atom_op_savereg._entry, section ".printk_index", align 4
@atom_op_restorereg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.536, ptr @.str.564, ptr @.str.2, i32 825, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.564 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"atom_op_restorereg\00", [45 x i8] zeroinitializer }, align 32
@atom_op_restorereg._entry_ptr = internal global ptr @atom_op_restorereg._entry, section ".printk_index", align 4
@atom_op_setdatablock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.565, ptr @.str.2, i32 837, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.565 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"atom_op_setdatablock\00", [43 x i8] zeroinitializer }, align 32
@atom_op_setdatablock._entry_ptr = internal global ptr @atom_op_setdatablock._entry, section ".printk_index", align 4
@atom_op_setdatablock._entry.566 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.567, ptr @.str.565, ptr @.str.2, i32 837, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.567 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"   block: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@atom_op_setdatablock._entry_ptr.568 = internal global ptr @atom_op_setdatablock._entry.566, section ".printk_index", align 4
@atom_op_setdatablock._entry.569 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.565, ptr @.str.2, i32 844, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_setdatablock._entry_ptr.570 = internal global ptr @atom_op_setdatablock._entry.569, section ".printk_index", align 4
@atom_op_setdatablock._entry.571 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.386, ptr @.str.565, ptr @.str.2, i32 844, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_setdatablock._entry_ptr.572 = internal global ptr @atom_op_setdatablock._entry.571, section ".printk_index", align 4
@atom_op_xor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.573, ptr @.str.2, i32 1016, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.573 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"atom_op_xor\00", [20 x i8] zeroinitializer }, align 32
@atom_op_xor._entry_ptr = internal global ptr @atom_op_xor._entry, section ".printk_index", align 4
@atom_op_xor._entry.574 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.573, ptr @.str.2, i32 1016, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_xor._entry_ptr.575 = internal global ptr @atom_op_xor._entry.574, section ".printk_index", align 4
@atom_op_xor._entry.576 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.573, ptr @.str.2, i32 1018, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_xor._entry_ptr.577 = internal global ptr @atom_op_xor._entry.576, section ".printk_index", align 4
@atom_op_xor._entry.578 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.573, ptr @.str.2, i32 1018, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_xor._entry_ptr.579 = internal global ptr @atom_op_xor._entry.578, section ".printk_index", align 4
@atom_op_xor._entry.580 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.573, ptr @.str.2, i32 1021, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_xor._entry_ptr.581 = internal global ptr @atom_op_xor._entry.580, section ".printk_index", align 4
@atom_op_xor._entry.582 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.573, ptr @.str.2, i32 1021, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_xor._entry_ptr.583 = internal global ptr @atom_op_xor._entry.582, section ".printk_index", align 4
@atom_op_shl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.584, ptr @.str.2, i32 926, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.584 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"atom_op_shl\00", [20 x i8] zeroinitializer }, align 32
@atom_op_shl._entry_ptr = internal global ptr @atom_op_shl._entry, section ".printk_index", align 4
@atom_op_shl._entry.585 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.584, ptr @.str.2, i32 926, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_shl._entry_ptr.586 = internal global ptr @atom_op_shl._entry.585, section ".printk_index", align 4
@atom_op_shl._entry.587 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.584, ptr @.str.2, i32 931, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_shl._entry_ptr.588 = internal global ptr @atom_op_shl._entry.587, section ".printk_index", align 4
@atom_op_shl._entry.589 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.315, ptr @.str.584, ptr @.str.2, i32 931, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_shl._entry_ptr.590 = internal global ptr @atom_op_shl._entry.589, section ".printk_index", align 4
@atom_op_shl._entry.591 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.584, ptr @.str.2, i32 935, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_shl._entry_ptr.592 = internal global ptr @atom_op_shl._entry.591, section ".printk_index", align 4
@atom_op_shl._entry.593 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.584, ptr @.str.2, i32 935, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_shl._entry_ptr.594 = internal global ptr @atom_op_shl._entry.593, section ".printk_index", align 4
@atom_op_shr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.595, ptr @.str.2, i32 945, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.595 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"atom_op_shr\00", [20 x i8] zeroinitializer }, align 32
@atom_op_shr._entry_ptr = internal global ptr @atom_op_shr._entry, section ".printk_index", align 4
@atom_op_shr._entry.596 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.595, ptr @.str.2, i32 945, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_shr._entry_ptr.597 = internal global ptr @atom_op_shr._entry.596, section ".printk_index", align 4
@atom_op_shr._entry.598 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.595, ptr @.str.2, i32 950, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_shr._entry_ptr.599 = internal global ptr @atom_op_shr._entry.598, section ".printk_index", align 4
@atom_op_shr._entry.600 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.315, ptr @.str.595, ptr @.str.2, i32 950, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_shr._entry_ptr.601 = internal global ptr @atom_op_shr._entry.600, section ".printk_index", align 4
@atom_op_shr._entry.602 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.595, ptr @.str.2, i32 954, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_shr._entry_ptr.603 = internal global ptr @atom_op_shr._entry.602, section ".printk_index", align 4
@atom_op_shr._entry.604 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.595, ptr @.str.2, i32 954, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_shr._entry_ptr.605 = internal global ptr @atom_op_shr._entry.604, section ".printk_index", align 4
@atom_op_debug._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.536, ptr @.str.606, ptr @.str.2, i32 1027, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.606 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atom_op_debug\00", [18 x i8] zeroinitializer }, align 32
@atom_op_debug._entry_ptr = internal global ptr @atom_op_debug._entry, section ".printk_index", align 4
@atom_iio_len = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 1, i32 2, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 3], [56 x i8] zeroinitializer }, align 32
@switch.table.atom_op_move = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 4, i32 2, i32 2, i32 2, i32 1, i32 1, i32 1, i32 1], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 10, i64 13]
@__sancov_gen_cov_switch_values.607 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.608 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.609 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.610 = internal global [10 x i64] [i64 8, i64 3, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.611 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.612 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 6, i64 7]
@__sancov_gen_cov_switch_values.613 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.614 = internal global [11 x i64] [i64 9, i64 8, i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71, i64 72]
@__sancov_gen_cov_switch_values.615 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.616 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.617 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.618 = internal global [11 x i64] [i64 9, i64 8, i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71, i64 72]
@__sancov_gen_cov_switch_values.619 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.620 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.621 = internal global [11 x i64] [i64 9, i64 8, i64 0, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@___asan_gen_.622 = private unnamed_addr constant [11 x i8] c"atom_debug\00", align 1
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 69, i32 5 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 1280, i32 3 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 1285, i32 33 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 1287, i32 3 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 1294, i32 40 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 1296, i32 3 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 1320, i32 2 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 1408, i32 3 }
@___asan_gen_.673 = private unnamed_addr constant [12 x i8] c"debug_depth\00", align 1
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 92, i32 12 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 1174, i32 2 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 1191, i32 4 }
@___asan_gen_.691 = private unnamed_addr constant [14 x i8] c"atom_op_names\00", align 1
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 33, i32 14 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 1193, i32 4 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 1195, i32 4 }
@___asan_gen_.706 = private unnamed_addr constant [13 x i8] c"opcode_table\00", align 1
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 1033, i32 3 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 1211, i32 2 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 97, i32 3 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 34, i32 1 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 34, i32 13 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 34, i32 25 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 34, i32 36 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 34, i32 47 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 34, i32 58 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 35, i32 1 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 35, i32 12 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 35, i32 23 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 35, i32 33 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 35, i32 43 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 35, i32 53 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 35, i32 64 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 36, i32 1 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 36, i32 11 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 36, i32 20 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 36, i32 29 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 36, i32 38 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 36, i32 48 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 36, i32 57 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 37, i32 1 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 37, i32 18 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 37, i32 35 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 37, i32 52 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 38, i32 1 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 38, i32 18 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 38, i32 37 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 38, i32 55 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 39, i32 1 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 39, i32 19 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 39, i32 38 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 39, i32 56 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 40, i32 1 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 40, i32 11 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 40, i32 21 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 40, i32 31 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 40, i32 42 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 40, i32 52 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 40, i32 63 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 41, i32 1 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 41, i32 11 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 41, i32 21 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 41, i32 32 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 41, i32 42 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 41, i32 53 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 41, i32 63 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 42, i32 1 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 42, i32 11 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 42, i32 22 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 42, i32 32 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 42, i32 43 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 42, i32 53 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 42, i32 63 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 43, i32 1 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 43, i32 12 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 43, i32 22 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 43, i32 38 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 43, i32 54 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 44, i32 1 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 44, i32 18 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 44, i32 33 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 44, i32 48 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 45, i32 1 }
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 45, i32 15 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 45, i32 29 }
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 45, i32 44 }
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 45, i32 58 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 46, i32 1 }
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 46, i32 9 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 46, i32 23 }
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 46, i32 37 }
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 46, i32 51 }
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 47, i32 1 }
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 47, i32 24 }
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 47, i32 42 }
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 47, i32 54 }
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 47, i32 65 }
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 48, i32 1 }
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 48, i32 12 }
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 48, i32 24 }
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 48, i32 35 }
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 48, i32 53 }
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 49, i32 1 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 49, i32 15 }
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 49, i32 25 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 49, i32 38 }
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 49, i32 50 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 49, i32 62 }
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 50, i32 1 }
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 50, i32 14 }
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 50, i32 26 }
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 50, i32 33 }
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 50, i32 40 }
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 50, i32 52 }
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 50, i32 63 }
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 51, i32 1 }
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 51, i32 12 }
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 51, i32 24 }
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 51, i32 35 }
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 51, i32 48 }
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 51, i32 56 }
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 52, i32 1 }
@___asan_gen_.1035 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 52, i32 16 }
@___asan_gen_.1038 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 52, i32 34 }
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 52, i32 45 }
@___asan_gen_.1044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 52, i32 55 }
@___asan_gen_.1047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 52, i32 65 }
@___asan_gen_.1050 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 53, i32 1 }
@___asan_gen_.1053 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 53, i32 12 }
@___asan_gen_.1056 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 53, i32 22 }
@___asan_gen_.1059 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 53, i32 33 }
@___asan_gen_.1062 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 53, i32 43 }
@___asan_gen_.1065 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 53, i32 53 }
@___asan_gen_.1068 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 53, i32 63 }
@___asan_gen_.1071 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 54, i32 1 }
@___asan_gen_.1074 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 54, i32 11 }
@___asan_gen_.1077 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 54, i32 22 }
@___asan_gen_.1080 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 54, i32 32 }
@___asan_gen_.1083 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 54, i32 42 }
@___asan_gen_.1086 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 54, i32 52 }
@___asan_gen_.1089 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 54, i32 63 }
@___asan_gen_.1092 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 55, i32 1 }
@___asan_gen_.1095 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 55, i32 10 }
@___asan_gen_.1107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 776, i32 2 }
@___asan_gen_.1116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 778, i32 2 }
@___asan_gen_.1117 = private unnamed_addr constant [16 x i8] c"atom_dst_to_src\00", align 1
@___asan_gen_.1119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 79, i32 12 }
@___asan_gen_.1128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 194, i32 4 }
@___asan_gen_.1134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 201, i32 4 }
@___asan_gen_.1140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 204, i32 4 }
@___asan_gen_.1146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 208, i32 5 }
@___asan_gen_.1152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 212, i32 5 }
@___asan_gen_.1158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 229, i32 4 }
@___asan_gen_.1164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 235, i32 4 }
@___asan_gen_.1170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 273, i32 5 }
@___asan_gen_.1176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 275, i32 5 }
@___asan_gen_.1179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 283, i32 4 }
@___asan_gen_.1185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 289, i32 4 }
@___asan_gen_.1191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 297, i32 5 }
@___asan_gen_.1197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 305, i32 5 }
@___asan_gen_.1203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 314, i32 5 }
@___asan_gen_.1209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 322, i32 4 }
@___asan_gen_.1215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 329, i32 4 }
@___asan_gen_.1216 = private unnamed_addr constant [14 x i8] c"atom_arg_mask\00", align 1
@___asan_gen_.1218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 73, i32 17 }
@___asan_gen_.1219 = private unnamed_addr constant [15 x i8] c"atom_arg_shift\00", align 1
@___asan_gen_.1221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 77, i32 12 }
@___asan_gen_.1227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 340, i32 4 }
@___asan_gen_.1233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 343, i32 4 }
@___asan_gen_.1239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 346, i32 4 }
@___asan_gen_.1245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 349, i32 4 }
@___asan_gen_.1251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 352, i32 4 }
@___asan_gen_.1257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 355, i32 4 }
@___asan_gen_.1263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 358, i32 4 }
@___asan_gen_.1269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 361, i32 4 }
@___asan_gen_.1278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 177, i32 4 }
@___asan_gen_.1284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 466, i32 3 }
@___asan_gen_.1287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 477, i32 4 }
@___asan_gen_.1290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 480, i32 4 }
@___asan_gen_.1293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 484, i32 5 }
@___asan_gen_.1299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 488, i32 5 }
@___asan_gen_.1305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 499, i32 3 }
@___asan_gen_.1308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 505, i32 3 }
@___asan_gen_.1311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 539, i32 4 }
@___asan_gen_.1314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 543, i32 3 }
@___asan_gen_.1317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 548, i32 3 }
@___asan_gen_.1320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 554, i32 3 }
@___asan_gen_.1326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 560, i32 3 }
@___asan_gen_.1332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 563, i32 3 }
@___asan_gen_.1338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 566, i32 3 }
@___asan_gen_.1344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 569, i32 3 }
@___asan_gen_.1350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 572, i32 3 }
@___asan_gen_.1356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 575, i32 3 }
@___asan_gen_.1362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 578, i32 3 }
@___asan_gen_.1368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 581, i32 3 }
@___asan_gen_.1377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 605, i32 2 }
@___asan_gen_.1383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 607, i32 2 }
@___asan_gen_.1389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 610, i32 2 }
@___asan_gen_.1398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 803, i32 2 }
@___asan_gen_.1404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 805, i32 2 }
@___asan_gen_.1410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 808, i32 2 }
@___asan_gen_.1411 = private unnamed_addr constant [13 x i8] c"atom_def_dst\00", align 1
@___asan_gen_.1413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 90, i32 12 }
@___asan_gen_.1422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 895, i32 2 }
@___asan_gen_.1431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 898, i32 2 }
@___asan_gen_.1437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 900, i32 2 }
@___asan_gen_.1446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 911, i32 2 }
@___asan_gen_.1452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 914, i32 2 }
@___asan_gen_.1458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 916, i32 2 }
@___asan_gen_.1470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 786, i32 2 }
@___asan_gen_.1479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 788, i32 2 }
@___asan_gen_.1488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 677, i32 2 }
@___asan_gen_.1494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 679, i32 2 }
@___asan_gen_.1503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 591, i32 2 }
@___asan_gen_.1509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 593, i32 2 }
@___asan_gen_.1515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 596, i32 2 }
@___asan_gen_.1524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 963, i32 2 }
@___asan_gen_.1530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 965, i32 2 }
@___asan_gen_.1536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 968, i32 2 }
@___asan_gen_.1548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 861, i32 4 }
@___asan_gen_.1549 = private unnamed_addr constant [14 x i8] c"atom_io_names\00", align 1
@___asan_gen_.1551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 88, i32 14 }
@___asan_gen_.1560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 863, i32 4 }
@___asan_gen_.1563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 89, i32 1 }
@___asan_gen_.1566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 89, i32 7 }
@___asan_gen_.1569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 89, i32 14 }
@___asan_gen_.1572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 89, i32 20 }
@___asan_gen_.1575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 89, i32 28 }
@___asan_gen_.1587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 885, i32 2 }
@___asan_gen_.1599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 850, i32 2 }
@___asan_gen_.1608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 651, i32 2 }
@___asan_gen_.1614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 653, i32 2 }
@___asan_gen_.1635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 657, i32 2 }
@___asan_gen_.1647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 976, i32 2 }
@___asan_gen_.1656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 981, i32 4 }
@___asan_gen_.1665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 987, i32 5 }
@___asan_gen_.1671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 993, i32 4 }
@___asan_gen_.1689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 725, i32 3 }
@___asan_gen_.1698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 726, i32 2 }
@___asan_gen_.1701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 733, i32 6 }
@___asan_gen_.1710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 1003, i32 2 }
@___asan_gen_.1716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 1005, i32 2 }
@___asan_gen_.1725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 1008, i32 2 }
@___asan_gen_.1737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 664, i32 2 }
@___asan_gen_.1749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 625, i32 3 }
@___asan_gen_.1750 = private unnamed_addr constant [17 x i8] c"atom_table_names\00", align 1
@___asan_gen_.1752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 59, i32 14 }
@___asan_gen_.1761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 627, i32 3 }
@___asan_gen_.1764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 60, i32 1 }
@___asan_gen_.1767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 60, i32 14 }
@___asan_gen_.1770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 60, i32 39 }
@___asan_gen_.1773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 61, i32 1 }
@___asan_gen_.1776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 61, i32 30 }
@___asan_gen_.1779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 61, i32 48 }
@___asan_gen_.1782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 62, i32 1 }
@___asan_gen_.1785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 62, i32 17 }
@___asan_gen_.1788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 62, i32 38 }
@___asan_gen_.1791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 63, i32 1 }
@___asan_gen_.1794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 63, i32 19 }
@___asan_gen_.1797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 63, i32 37 }
@___asan_gen_.1800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 63, i32 55 }
@___asan_gen_.1803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 64, i32 1 }
@___asan_gen_.1806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 64, i32 23 }
@___asan_gen_.1809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 64, i32 41 }
@___asan_gen_.1812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 65, i32 1 }
@___asan_gen_.1815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 65, i32 18 }
@___asan_gen_.1818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 65, i32 45 }
@___asan_gen_.1821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 66, i32 1 }
@___asan_gen_.1824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 66, i32 28 }
@___asan_gen_.1827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 67, i32 1 }
@___asan_gen_.1830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 67, i32 22 }
@___asan_gen_.1833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 67, i32 45 }
@___asan_gen_.1836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 68, i32 1 }
@___asan_gen_.1839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 68, i32 23 }
@___asan_gen_.1842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 68, i32 45 }
@___asan_gen_.1845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 69, i32 1 }
@___asan_gen_.1848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 69, i32 21 }
@___asan_gen_.1851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 69, i32 42 }
@___asan_gen_.1854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 70, i32 1 }
@___asan_gen_.1857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 70, i32 24 }
@___asan_gen_.1860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 70, i32 46 }
@___asan_gen_.1863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 71, i32 1 }
@___asan_gen_.1866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 71, i32 17 }
@___asan_gen_.1869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 71, i32 30 }
@___asan_gen_.1872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 71, i32 44 }
@___asan_gen_.1875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 72, i32 1 }
@___asan_gen_.1878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 72, i32 21 }
@___asan_gen_.1881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 72, i32 41 }
@___asan_gen_.1884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 73, i32 1 }
@___asan_gen_.1887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 73, i32 21 }
@___asan_gen_.1890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 73, i32 44 }
@___asan_gen_.1893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 74, i32 1 }
@___asan_gen_.1896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 74, i32 24 }
@___asan_gen_.1899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 75, i32 1 }
@___asan_gen_.1902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 75, i32 17 }
@___asan_gen_.1905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 75, i32 40 }
@___asan_gen_.1908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 76, i32 1 }
@___asan_gen_.1911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 76, i32 19 }
@___asan_gen_.1914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 76, i32 45 }
@___asan_gen_.1917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 77, i32 1 }
@___asan_gen_.1920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 77, i32 22 }
@___asan_gen_.1923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 77, i32 52 }
@___asan_gen_.1926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 78, i32 1 }
@___asan_gen_.1929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 78, i32 30 }
@___asan_gen_.1932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 79, i32 1 }
@___asan_gen_.1935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 79, i32 28 }
@___asan_gen_.1938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 79, i32 47 }
@___asan_gen_.1941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 80, i32 1 }
@___asan_gen_.1944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 80, i32 23 }
@___asan_gen_.1947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 80, i32 49 }
@___asan_gen_.1950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 81, i32 1 }
@___asan_gen_.1953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 81, i32 29 }
@___asan_gen_.1956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 81, i32 54 }
@___asan_gen_.1959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 82, i32 1 }
@___asan_gen_.1962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 82, i32 18 }
@___asan_gen_.1965 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 82, i32 39 }
@___asan_gen_.1968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 82, i32 53 }
@___asan_gen_.1971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 83, i32 1 }
@___asan_gen_.1974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 83, i32 22 }
@___asan_gen_.1977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 83, i32 50 }
@___asan_gen_.1980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 84, i32 1 }
@___asan_gen_.1982 = private unnamed_addr constant [39 x i8] c"../drivers/gpu/drm/radeon/atom-names.h\00", align 1
@___asan_gen_.1983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1982, i32 84, i32 21 }
@___asan_gen_.1992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 820, i32 2 }
@___asan_gen_.2001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 643, i32 2 }
@___asan_gen_.2010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 753, i32 2 }
@___asan_gen_.2019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 756, i32 2 }
@___asan_gen_.2025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 757, i32 2 }
@___asan_gen_.2031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 761, i32 2 }
@___asan_gen_.2043 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 815, i32 2 }
@___asan_gen_.2052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 616, i32 2 }
@___asan_gen_.2058 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 830, i32 2 }
@___asan_gen_.2064 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 825, i32 2 }
@___asan_gen_.2076 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 837, i32 2 }
@___asan_gen_.2082 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 844, i32 2 }
@___asan_gen_.2091 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 1016, i32 2 }
@___asan_gen_.2097 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 1018, i32 2 }
@___asan_gen_.2103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 1021, i32 2 }
@___asan_gen_.2112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 926, i32 2 }
@___asan_gen_.2118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 931, i32 2 }
@___asan_gen_.2124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 935, i32 2 }
@___asan_gen_.2133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 945, i32 2 }
@___asan_gen_.2139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 950, i32 2 }
@___asan_gen_.2145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 954, i32 2 }
@___asan_gen_.2146 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.2149 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 1027, i32 2 }
@___asan_gen_.2152 = private unnamed_addr constant [13 x i8] c"atom_iio_len\00", align 1
@___asan_gen_.2153 = private constant [33 x i8] c"../drivers/gpu/drm/radeon/atom.c\00", align 1
@___asan_gen_.2154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2153, i32 1248, i32 12 }
@___asan_gen_.2155 = private unnamed_addr constant [26 x i8] c"switch.table.atom_op_move\00", align 1
@llvm.compiler.used = appending global [691 x ptr] [ptr @atom_execute_table_locked._entry, ptr @atom_execute_table_locked._entry.17, ptr @atom_execute_table_locked._entry.20, ptr @atom_execute_table_locked._entry.22, ptr @atom_execute_table_locked._entry.25, ptr @atom_execute_table_locked._entry.27, ptr @atom_execute_table_locked._entry.31, ptr @atom_execute_table_locked._entry.33, ptr @atom_execute_table_locked._entry_ptr, ptr @atom_execute_table_locked._entry_ptr.19, ptr @atom_execute_table_locked._entry_ptr.21, ptr @atom_execute_table_locked._entry_ptr.24, ptr @atom_execute_table_locked._entry_ptr.26, ptr @atom_execute_table_locked._entry_ptr.29, ptr @atom_execute_table_locked._entry_ptr.32, ptr @atom_execute_table_locked._entry_ptr.35, ptr @atom_get_src_int._entry, ptr @atom_get_src_int._entry.172, ptr @atom_get_src_int._entry.175, ptr @atom_get_src_int._entry.178, ptr @atom_get_src_int._entry.181, ptr @atom_get_src_int._entry.184, ptr @atom_get_src_int._entry.187, ptr @atom_get_src_int._entry.190, ptr @atom_get_src_int._entry.193, ptr @atom_get_src_int._entry.197, ptr @atom_get_src_int._entry.200, ptr @atom_get_src_int._entry.203, ptr @atom_get_src_int._entry.206, ptr @atom_get_src_int._entry.209, ptr @atom_get_src_int._entry.212, ptr @atom_get_src_int._entry.215, ptr @atom_get_src_int._entry.218, ptr @atom_get_src_int._entry.221, ptr @atom_get_src_int._entry.224, ptr @atom_get_src_int._entry.227, ptr @atom_get_src_int._entry.230, ptr @atom_get_src_int._entry.233, ptr @atom_get_src_int._entry.236, ptr @atom_get_src_int._entry_ptr, ptr @atom_get_src_int._entry_ptr.174, ptr @atom_get_src_int._entry_ptr.177, ptr @atom_get_src_int._entry_ptr.180, ptr @atom_get_src_int._entry_ptr.183, ptr @atom_get_src_int._entry_ptr.186, ptr @atom_get_src_int._entry_ptr.189, ptr @atom_get_src_int._entry_ptr.192, ptr @atom_get_src_int._entry_ptr.195, ptr @atom_get_src_int._entry_ptr.199, ptr @atom_get_src_int._entry_ptr.202, ptr @atom_get_src_int._entry_ptr.205, ptr @atom_get_src_int._entry_ptr.208, ptr @atom_get_src_int._entry_ptr.211, ptr @atom_get_src_int._entry_ptr.214, ptr @atom_get_src_int._entry_ptr.217, ptr @atom_get_src_int._entry_ptr.220, ptr @atom_get_src_int._entry_ptr.223, ptr @atom_get_src_int._entry_ptr.226, ptr @atom_get_src_int._entry_ptr.229, ptr @atom_get_src_int._entry_ptr.232, ptr @atom_get_src_int._entry_ptr.235, ptr @atom_get_src_int._entry_ptr.238, ptr @atom_iio_execute._entry, ptr @atom_iio_execute._entry_ptr, ptr @atom_op_add._entry, ptr @atom_op_add._entry.349, ptr @atom_op_add._entry.351, ptr @atom_op_add._entry.353, ptr @atom_op_add._entry.355, ptr @atom_op_add._entry.357, ptr @atom_op_add._entry_ptr, ptr @atom_op_add._entry_ptr.350, ptr @atom_op_add._entry_ptr.352, ptr @atom_op_add._entry_ptr.354, ptr @atom_op_add._entry_ptr.356, ptr @atom_op_add._entry_ptr.358, ptr @atom_op_and._entry, ptr @atom_op_and._entry.288, ptr @atom_op_and._entry.290, ptr @atom_op_and._entry.292, ptr @atom_op_and._entry.294, ptr @atom_op_and._entry.296, ptr @atom_op_and._entry_ptr, ptr @atom_op_and._entry_ptr.289, ptr @atom_op_and._entry_ptr.291, ptr @atom_op_and._entry_ptr.293, ptr @atom_op_and._entry_ptr.295, ptr @atom_op_and._entry_ptr.297, ptr @atom_op_beep._entry, ptr @atom_op_beep._entry_ptr, ptr @atom_op_calltable._entry, ptr @atom_op_calltable._entry.454, ptr @atom_op_calltable._entry.457, ptr @atom_op_calltable._entry.459, ptr @atom_op_calltable._entry_ptr, ptr @atom_op_calltable._entry_ptr.456, ptr @atom_op_calltable._entry_ptr.458, ptr @atom_op_calltable._entry_ptr.461, ptr @atom_op_clear._entry, ptr @atom_op_clear._entry.539, ptr @atom_op_clear._entry_ptr, ptr @atom_op_clear._entry_ptr.540, ptr @atom_op_compare._entry, ptr @atom_op_compare._entry.393, ptr @atom_op_compare._entry.395, ptr @atom_op_compare._entry.397, ptr @atom_op_compare._entry.399, ptr @atom_op_compare._entry.401, ptr @atom_op_compare._entry_ptr, ptr @atom_op_compare._entry_ptr.394, ptr @atom_op_compare._entry_ptr.396, ptr @atom_op_compare._entry_ptr.398, ptr @atom_op_compare._entry_ptr.400, ptr @atom_op_compare._entry_ptr.403, ptr @atom_op_debug._entry, ptr @atom_op_debug._entry_ptr, ptr @atom_op_delay._entry, ptr @atom_op_delay._entry.450, ptr @atom_op_delay._entry_ptr, ptr @atom_op_delay._entry_ptr.452, ptr @atom_op_div._entry, ptr @atom_op_div._entry.342, ptr @atom_op_div._entry.344, ptr @atom_op_div._entry.346, ptr @atom_op_div._entry_ptr, ptr @atom_op_div._entry_ptr.343, ptr @atom_op_div._entry_ptr.345, ptr @atom_op_div._entry_ptr.347, ptr @atom_op_jump._entry, ptr @atom_op_jump._entry.426, ptr @atom_op_jump._entry.431, ptr @atom_op_jump._entry.433, ptr @atom_op_jump._entry_ptr, ptr @atom_op_jump._entry_ptr.428, ptr @atom_op_jump._entry_ptr.432, ptr @atom_op_jump._entry_ptr.435, ptr @atom_op_mask._entry, ptr @atom_op_mask._entry.542, ptr @atom_op_mask._entry.544, ptr @atom_op_mask._entry.546, ptr @atom_op_mask._entry.549, ptr @atom_op_mask._entry.551, ptr @atom_op_mask._entry.553, ptr @atom_op_mask._entry.555, ptr @atom_op_mask._entry_ptr, ptr @atom_op_mask._entry_ptr.543, ptr @atom_op_mask._entry_ptr.545, ptr @atom_op_mask._entry_ptr.548, ptr @atom_op_mask._entry_ptr.550, ptr @atom_op_mask._entry_ptr.552, ptr @atom_op_mask._entry_ptr.554, ptr @atom_op_mask._entry_ptr.556, ptr @atom_op_move._entry, ptr @atom_op_move._entry.162, ptr @atom_op_move._entry.165, ptr @atom_op_move._entry.167, ptr @atom_op_move._entry_ptr, ptr @atom_op_move._entry_ptr.164, ptr @atom_op_move._entry_ptr.166, ptr @atom_op_move._entry_ptr.169, ptr @atom_op_mul._entry, ptr @atom_op_mul._entry.333, ptr @atom_op_mul._entry.336, ptr @atom_op_mul._entry.338, ptr @atom_op_mul._entry_ptr, ptr @atom_op_mul._entry_ptr.335, ptr @atom_op_mul._entry_ptr.337, ptr @atom_op_mul._entry_ptr.340, ptr @atom_op_or._entry, ptr @atom_op_or._entry.299, ptr @atom_op_or._entry.301, ptr @atom_op_or._entry.303, ptr @atom_op_or._entry.305, ptr @atom_op_or._entry.307, ptr @atom_op_or._entry_ptr, ptr @atom_op_or._entry_ptr.300, ptr @atom_op_or._entry_ptr.302, ptr @atom_op_or._entry_ptr.304, ptr @atom_op_or._entry_ptr.306, ptr @atom_op_or._entry_ptr.308, ptr @atom_op_postcard._entry, ptr @atom_op_postcard._entry.558, ptr @atom_op_postcard._entry_ptr, ptr @atom_op_postcard._entry_ptr.560, ptr @atom_op_repeat._entry, ptr @atom_op_repeat._entry_ptr, ptr @atom_op_restorereg._entry, ptr @atom_op_restorereg._entry_ptr, ptr @atom_op_savereg._entry, ptr @atom_op_savereg._entry_ptr, ptr @atom_op_setdatablock._entry, ptr @atom_op_setdatablock._entry.566, ptr @atom_op_setdatablock._entry.569, ptr @atom_op_setdatablock._entry.571, ptr @atom_op_setdatablock._entry_ptr, ptr @atom_op_setdatablock._entry_ptr.568, ptr @atom_op_setdatablock._entry_ptr.570, ptr @atom_op_setdatablock._entry_ptr.572, ptr @atom_op_setfbbase._entry, ptr @atom_op_setfbbase._entry.389, ptr @atom_op_setfbbase._entry_ptr, ptr @atom_op_setfbbase._entry_ptr.391, ptr @atom_op_setport._entry, ptr @atom_op_setport._entry.371, ptr @atom_op_setport._entry.374, ptr @atom_op_setport._entry.376, ptr @atom_op_setport._entry_ptr, ptr @atom_op_setport._entry_ptr.373, ptr @atom_op_setport._entry_ptr.375, ptr @atom_op_setport._entry_ptr.378, ptr @atom_op_setregblock._entry, ptr @atom_op_setregblock._entry.385, ptr @atom_op_setregblock._entry_ptr, ptr @atom_op_setregblock._entry_ptr.387, ptr @atom_op_shift_left._entry, ptr @atom_op_shift_left._entry.310, ptr @atom_op_shift_left._entry.312, ptr @atom_op_shift_left._entry.314, ptr @atom_op_shift_left._entry.317, ptr @atom_op_shift_left._entry.319, ptr @atom_op_shift_left._entry_ptr, ptr @atom_op_shift_left._entry_ptr.311, ptr @atom_op_shift_left._entry_ptr.313, ptr @atom_op_shift_left._entry_ptr.316, ptr @atom_op_shift_left._entry_ptr.318, ptr @atom_op_shift_left._entry_ptr.320, ptr @atom_op_shift_right._entry, ptr @atom_op_shift_right._entry.322, ptr @atom_op_shift_right._entry.324, ptr @atom_op_shift_right._entry.326, ptr @atom_op_shift_right._entry.328, ptr @atom_op_shift_right._entry.330, ptr @atom_op_shift_right._entry_ptr, ptr @atom_op_shift_right._entry_ptr.323, ptr @atom_op_shift_right._entry_ptr.325, ptr @atom_op_shift_right._entry_ptr.327, ptr @atom_op_shift_right._entry_ptr.329, ptr @atom_op_shift_right._entry_ptr.331, ptr @atom_op_shl._entry, ptr @atom_op_shl._entry.585, ptr @atom_op_shl._entry.587, ptr @atom_op_shl._entry.589, ptr @atom_op_shl._entry.591, ptr @atom_op_shl._entry.593, ptr @atom_op_shl._entry_ptr, ptr @atom_op_shl._entry_ptr.586, ptr @atom_op_shl._entry_ptr.588, ptr @atom_op_shl._entry_ptr.590, ptr @atom_op_shl._entry_ptr.592, ptr @atom_op_shl._entry_ptr.594, ptr @atom_op_shr._entry, ptr @atom_op_shr._entry.596, ptr @atom_op_shr._entry.598, ptr @atom_op_shr._entry.600, ptr @atom_op_shr._entry.602, ptr @atom_op_shr._entry.604, ptr @atom_op_shr._entry_ptr, ptr @atom_op_shr._entry_ptr.597, ptr @atom_op_shr._entry_ptr.599, ptr @atom_op_shr._entry_ptr.601, ptr @atom_op_shr._entry_ptr.603, ptr @atom_op_shr._entry_ptr.605, ptr @atom_op_sub._entry, ptr @atom_op_sub._entry.360, ptr @atom_op_sub._entry.362, ptr @atom_op_sub._entry.364, ptr @atom_op_sub._entry.366, ptr @atom_op_sub._entry.368, ptr @atom_op_sub._entry_ptr, ptr @atom_op_sub._entry_ptr.361, ptr @atom_op_sub._entry_ptr.363, ptr @atom_op_sub._entry_ptr.365, ptr @atom_op_sub._entry_ptr.367, ptr @atom_op_sub._entry_ptr.369, ptr @atom_op_switch._entry, ptr @atom_op_switch._entry.409, ptr @atom_op_switch._entry.412, ptr @atom_op_switch._entry.414, ptr @atom_op_switch._entry.417, ptr @atom_op_switch._entry.419, ptr @atom_op_switch._entry.422, ptr @atom_op_switch._entry_ptr, ptr @atom_op_switch._entry_ptr.411, ptr @atom_op_switch._entry_ptr.413, ptr @atom_op_switch._entry_ptr.416, ptr @atom_op_switch._entry_ptr.418, ptr @atom_op_switch._entry_ptr.421, ptr @atom_op_switch._entry_ptr.424, ptr @atom_op_test._entry, ptr @atom_op_test._entry.438, ptr @atom_op_test._entry.440, ptr @atom_op_test._entry.442, ptr @atom_op_test._entry.444, ptr @atom_op_test._entry.446, ptr @atom_op_test._entry_ptr, ptr @atom_op_test._entry_ptr.439, ptr @atom_op_test._entry_ptr.441, ptr @atom_op_test._entry_ptr.443, ptr @atom_op_test._entry_ptr.445, ptr @atom_op_test._entry_ptr.448, ptr @atom_op_xor._entry, ptr @atom_op_xor._entry.574, ptr @atom_op_xor._entry.576, ptr @atom_op_xor._entry.578, ptr @atom_op_xor._entry.580, ptr @atom_op_xor._entry.582, ptr @atom_op_xor._entry_ptr, ptr @atom_op_xor._entry_ptr.575, ptr @atom_op_xor._entry_ptr.577, ptr @atom_op_xor._entry_ptr.579, ptr @atom_op_xor._entry_ptr.581, ptr @atom_op_xor._entry_ptr.583, ptr @atom_parse._entry, ptr @atom_parse._entry.11, ptr @atom_parse._entry.4, ptr @atom_parse._entry.8, ptr @atom_parse._entry_ptr, ptr @atom_parse._entry_ptr.10, ptr @atom_parse._entry_ptr.13, ptr @atom_parse._entry_ptr.6, ptr @atom_put_dst._entry, ptr @atom_put_dst._entry.242, ptr @atom_put_dst._entry.244, ptr @atom_put_dst._entry.246, ptr @atom_put_dst._entry.248, ptr @atom_put_dst._entry.251, ptr @atom_put_dst._entry.254, ptr @atom_put_dst._entry.257, ptr @atom_put_dst._entry.259, ptr @atom_put_dst._entry.261, ptr @atom_put_dst._entry.263, ptr @atom_put_dst._entry.266, ptr @atom_put_dst._entry.269, ptr @atom_put_dst._entry.272, ptr @atom_put_dst._entry.275, ptr @atom_put_dst._entry.278, ptr @atom_put_dst._entry.281, ptr @atom_put_dst._entry.284, ptr @atom_put_dst._entry_ptr, ptr @atom_put_dst._entry_ptr.243, ptr @atom_put_dst._entry_ptr.245, ptr @atom_put_dst._entry_ptr.247, ptr @atom_put_dst._entry_ptr.250, ptr @atom_put_dst._entry_ptr.253, ptr @atom_put_dst._entry_ptr.255, ptr @atom_put_dst._entry_ptr.258, ptr @atom_put_dst._entry_ptr.260, ptr @atom_put_dst._entry_ptr.262, ptr @atom_put_dst._entry_ptr.265, ptr @atom_put_dst._entry_ptr.268, ptr @atom_put_dst._entry_ptr.271, ptr @atom_put_dst._entry_ptr.274, ptr @atom_put_dst._entry_ptr.277, ptr @atom_put_dst._entry_ptr.280, ptr @atom_put_dst._entry_ptr.283, ptr @atom_put_dst._entry_ptr.286, ptr @debug_print_spaces._entry, ptr @debug_print_spaces._entry_ptr, ptr @atom_debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @debug_depth, ptr @.str.18, ptr @.str.23, ptr @atom_op_names, ptr @.str.28, ptr @.str.30, ptr @opcode_table, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.163, ptr @.str.168, ptr @atom_dst_to_src, ptr @.str.170, ptr @.str.171, ptr @.str.173, ptr @.str.176, ptr @.str.179, ptr @.str.182, ptr @.str.185, ptr @.str.188, ptr @.str.191, ptr @.str.194, ptr @.str.196, ptr @.str.198, ptr @.str.201, ptr @.str.204, ptr @.str.207, ptr @.str.210, ptr @.str.213, ptr @atom_arg_mask, ptr @atom_arg_shift, ptr @.str.216, ptr @.str.219, ptr @.str.222, ptr @.str.225, ptr @.str.228, ptr @.str.231, ptr @.str.234, ptr @.str.237, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.249, ptr @.str.252, ptr @.str.256, ptr @.str.264, ptr @.str.267, ptr @.str.270, ptr @.str.273, ptr @.str.276, ptr @.str.279, ptr @.str.282, ptr @.str.285, ptr @.str.287, ptr @.str.298, ptr @atom_def_dst, ptr @.str.309, ptr @.str.315, ptr @.str.321, ptr @.str.332, ptr @.str.334, ptr @.str.339, ptr @.str.341, ptr @.str.348, ptr @.str.359, ptr @.str.370, ptr @.str.372, ptr @atom_io_names, ptr @.str.377, ptr @.str.379, ptr @.str.380, ptr @.str.381, ptr @.str.382, ptr @.str.383, ptr @.str.384, ptr @.str.386, ptr @.str.388, ptr @.str.390, ptr @.str.392, ptr @.str.402, ptr @.str.404, ptr @.str.405, ptr @.str.406, ptr @.str.407, ptr @.str.408, ptr @.str.410, ptr @.str.415, ptr @.str.420, ptr @.str.423, ptr @.str.425, ptr @.str.427, ptr @.str.429, ptr @.str.430, ptr @.str.434, ptr @.str.436, ptr @.str.437, ptr @.str.447, ptr @.str.449, ptr @.str.451, ptr @.str.453, ptr @.str.455, ptr @atom_table_names, ptr @.str.460, ptr @.str.462, ptr @.str.463, ptr @.str.464, ptr @.str.465, ptr @.str.466, ptr @.str.467, ptr @.str.468, ptr @.str.469, ptr @.str.470, ptr @.str.471, ptr @.str.472, ptr @.str.473, ptr @.str.474, ptr @.str.475, ptr @.str.476, ptr @.str.477, ptr @.str.478, ptr @.str.479, ptr @.str.480, ptr @.str.481, ptr @.str.482, ptr @.str.483, ptr @.str.484, ptr @.str.485, ptr @.str.486, ptr @.str.487, ptr @.str.488, ptr @.str.489, ptr @.str.490, ptr @.str.491, ptr @.str.492, ptr @.str.493, ptr @.str.494, ptr @.str.495, ptr @.str.496, ptr @.str.497, ptr @.str.498, ptr @.str.499, ptr @.str.500, ptr @.str.501, ptr @.str.502, ptr @.str.503, ptr @.str.504, ptr @.str.505, ptr @.str.506, ptr @.str.507, ptr @.str.508, ptr @.str.509, ptr @.str.510, ptr @.str.511, ptr @.str.512, ptr @.str.513, ptr @.str.514, ptr @.str.515, ptr @.str.516, ptr @.str.517, ptr @.str.518, ptr @.str.519, ptr @.str.520, ptr @.str.521, ptr @.str.522, ptr @.str.523, ptr @.str.524, ptr @.str.525, ptr @.str.526, ptr @.str.527, ptr @.str.528, ptr @.str.529, ptr @.str.530, ptr @.str.531, ptr @.str.532, ptr @.str.533, ptr @.str.534, ptr @.str.535, ptr @.str.536, ptr @.str.537, ptr @.str.538, ptr @.str.541, ptr @.str.547, ptr @.str.557, ptr @.str.559, ptr @.str.561, ptr @.str.562, ptr @.str.563, ptr @.str.564, ptr @.str.565, ptr @.str.567, ptr @.str.573, ptr @.str.584, ptr @.str.595, ptr @.str.606, ptr @atom_iio_len, ptr @switch.table.atom_op_move], section "llvm.metadata"
@0 = internal global [512 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_parse._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_parse._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_parse._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_execute_table_locked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_depth to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_execute_table_locked._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_execute_table_locked._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_execute_table_locked._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_names to i32), i32 492, i32 608, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_execute_table_locked._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_execute_table_locked._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opcode_table to i32), i32 984, i32 1216, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_execute_table_locked._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_execute_table_locked._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_print_spaces._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_move._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_move._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_move._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_move._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_dst_to_src to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_get_src_int._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_get_src_int._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_get_src_int._entry.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_get_src_int._entry.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_get_src_int._entry.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_get_src_int._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_get_src_int._entry.187 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_get_src_int._entry.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_get_src_int._entry.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_get_src_int._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_get_src_int._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_get_src_int._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_get_src_int._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_get_src_int._entry.209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_get_src_int._entry.212 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_arg_mask to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_arg_shift to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_get_src_int._entry.215 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_get_src_int._entry.218 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_get_src_int._entry.221 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_get_src_int._entry.224 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_get_src_int._entry.227 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_get_src_int._entry.230 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_get_src_int._entry.233 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_get_src_int._entry.236 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_iio_execute._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_put_dst._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_put_dst._entry.242 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_put_dst._entry.244 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_put_dst._entry.246 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_put_dst._entry.248 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_put_dst._entry.251 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_put_dst._entry.254 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_put_dst._entry.257 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_put_dst._entry.259 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_put_dst._entry.261 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_put_dst._entry.263 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_put_dst._entry.266 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_put_dst._entry.269 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_put_dst._entry.272 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_put_dst._entry.275 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_put_dst._entry.278 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_put_dst._entry.281 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_put_dst._entry.284 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_and._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_and._entry.288 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_and._entry.290 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_and._entry.292 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_and._entry.294 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_and._entry.296 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_or._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_or._entry.299 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_or._entry.301 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_or._entry.303 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_or._entry.305 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_or._entry.307 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_def_dst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1411 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_shift_left._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_shift_left._entry.310 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_shift_left._entry.312 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_shift_left._entry.314 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_shift_left._entry.317 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_shift_left._entry.319 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_shift_right._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_shift_right._entry.322 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_shift_right._entry.324 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_shift_right._entry.326 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_shift_right._entry.328 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_shift_right._entry.330 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_mul._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.332 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_mul._entry.333 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.334 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_mul._entry.336 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_mul._entry.338 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.339 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_div._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.341 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_div._entry.342 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_div._entry.344 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_div._entry.346 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.348 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_add._entry.349 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_add._entry.351 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_add._entry.353 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_add._entry.355 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_add._entry.357 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_sub._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.359 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_sub._entry.360 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_sub._entry.362 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_sub._entry.364 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_sub._entry.366 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_sub._entry.368 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_setport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.370 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_setport._entry.371 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.372 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_io_names to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_setport._entry.374 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_setport._entry.376 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.377 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.379 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.380 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.381 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.382 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.383 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_setregblock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.384 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_setregblock._entry.385 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.386 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_setfbbase._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.388 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_setfbbase._entry.389 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.390 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_compare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.392 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_compare._entry.393 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_compare._entry.395 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_compare._entry.397 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_compare._entry.399 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_compare._entry.401 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.402 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.404 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.405 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.406 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.407 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_switch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.408 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_switch._entry.409 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.410 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_switch._entry.412 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_switch._entry.414 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.415 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_switch._entry.417 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_switch._entry.419 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.420 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_switch._entry.422 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.423 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_jump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.425 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_jump._entry.426 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.427 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.429 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.430 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_jump._entry.431 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_jump._entry.433 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.434 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.436 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.437 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_test._entry.438 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_test._entry.440 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_test._entry.442 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_test._entry.444 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_test._entry.446 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.447 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_delay._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.449 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_delay._entry.450 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.451 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_calltable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.453 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_calltable._entry.454 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.455 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_table_names to i32), i32 296, i32 384, i32 ptrtoint (ptr @___asan_gen_.1750 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_calltable._entry.457 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_calltable._entry.459 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.460 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.462 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.463 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.464 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.465 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.466 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.467 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.468 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.469 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.470 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.471 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.472 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.473 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.474 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.475 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.476 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.477 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.478 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.479 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.480 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.481 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.482 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.483 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.484 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.485 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.486 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.487 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.488 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.489 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.490 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.491 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.492 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.493 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.494 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.495 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.496 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.497 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.498 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.499 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.500 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.501 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.502 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.503 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.504 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.505 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.506 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.507 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.508 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.509 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.510 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.511 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.512 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.513 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.514 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.515 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.516 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.517 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.518 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.519 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.520 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.521 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.522 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.523 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.524 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.525 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.526 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.527 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.528 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.529 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.530 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.531 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.532 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.533 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.534 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.535 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_repeat._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.536 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.537 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_clear._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.538 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_clear._entry.539 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_mask._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.541 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_mask._entry.542 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_mask._entry.544 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_mask._entry.546 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.547 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_mask._entry.549 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_mask._entry.551 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_mask._entry.553 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_mask._entry.555 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_postcard._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.557 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_postcard._entry.558 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.559 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_beep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.561 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.562 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_savereg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.563 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_restorereg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.564 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_setdatablock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.565 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_setdatablock._entry.566 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.567 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_setdatablock._entry.569 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_setdatablock._entry.571 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_xor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.573 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_xor._entry.574 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_xor._entry.576 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_xor._entry.578 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_xor._entry.580 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_xor._entry.582 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_shl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.584 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_shl._entry.585 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_shl._entry.587 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_shl._entry.589 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_shl._entry.591 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_shl._entry.593 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_shr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.595 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_shr._entry.596 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_shr._entry.598 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_shr._entry.600 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_shr._entry.602 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_shr._entry.604 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_debug._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2146 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.606 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_iio_len to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.2152 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.atom_op_move to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2155 to i32), i32 ptrtoint (ptr @___asan_gen_.2153 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atom_execute_table_scratch_unlocked(ptr noundef %ctx, i32 noundef %index, ptr noundef %params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %data_block = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 7
  %0 = ptrtoint ptr %data_block to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %data_block, align 4
  %reg_block = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 11
  %1 = ptrtoint ptr %reg_block to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %reg_block, align 2
  %fb_base = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 8
  %2 = ptrtoint ptr %fb_base to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %fb_base, align 4
  %io_mode = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 15
  %3 = ptrtoint ptr %io_mode to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %io_mode, align 4
  %divmul = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 9
  %4 = ptrtoint ptr %divmul to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %divmul, align 4
  %arrayidx2 = getelementptr %struct.atom_context, ptr %ctx, i32 0, i32 9, i32 1
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %arrayidx2, align 4
  %call = tail call fastcc i32 @atom_execute_table_locked(ptr noundef %ctx, i32 noundef %index, ptr noundef %params)
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atom_execute_table_locked(ptr noundef %ctx, i32 noundef %index, ptr noundef %params) unnamed_addr #0 align 64 {
entry:
  %ptr = alloca i32, align 4
  %ectx = alloca %struct.atom_exec_context, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bios = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bios, align 4
  %cmd_table = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 4
  %2 = ptrtoint ptr %cmd_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cmd_table, align 4
  %mul = shl i32 %index, 1
  %add = add i32 %mul, 4
  %add1 = add i32 %add, %3
  %arrayidx.i.i = getelementptr i8, ptr %1, i32 %add1
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i = zext i8 %5 to i16
  %add.i = add i32 %add1, 1
  %arrayidx.i7.i = getelementptr i8, ptr %1, i32 %add.i
  %6 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i7.i, align 1
  %conv3.i = zext i8 %7 to i16
  %shl.i = shl nuw i16 %conv3.i, 8
  %or.i = or i16 %shl.i, %conv.i
  %conv = zext i16 %or.i to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ptr) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ectx) #11
  %8 = getelementptr inbounds i8, ptr %ectx, i32 8
  %9 = call ptr @memset(ptr %8, i32 255, i32 24)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or.i)
  %tobool.not = icmp eq i16 %or.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx.i.i152 = getelementptr i8, ptr %1, i32 %conv
  %10 = ptrtoint ptr %arrayidx.i.i152 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.i152, align 1
  %conv.i153 = zext i8 %11 to i32
  %add.i154 = add nuw nsw i32 %conv, 1
  %arrayidx.i7.i155 = getelementptr i8, ptr %1, i32 %add.i154
  %12 = ptrtoint ptr %arrayidx.i7.i155 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i7.i155, align 1
  %conv3.i156 = zext i8 %13 to i32
  %shl.i157 = shl nuw nsw i32 %conv3.i156, 8
  %or.i158 = or i32 %shl.i157, %conv.i153
  %add7 = add nuw nsw i32 %conv, 4
  %arrayidx.i = getelementptr i8, ptr %1, i32 %add7
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  %conv9 = zext i8 %15 to i32
  %add11 = add nuw nsw i32 %conv, 5
  %arrayidx.i159 = getelementptr i8, ptr %1, i32 %add11
  %16 = ptrtoint ptr %arrayidx.i159 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i159, align 1
  %18 = and i8 %17, 127
  %and = zext i8 %18 to i32
  %add14 = add nuw nsw i32 %conv, 6
  %19 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add14, ptr %ptr, align 4
  %20 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool15.not = icmp eq i32 %20, 0
  br i1 %tobool15.not, label %if.end.do.end26_crit_edge, label %do.end

if.end.do.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end26

do.end:                                           ; preds = %if.end
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %21 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not1.i = icmp eq i32 %21, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %21, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %conv, i32 noundef %or.i158, i32 noundef %conv9, i32 noundef %and) #14
  br label %do.end26

do.end26:                                         ; preds = %debug_print_spaces.exit, %if.end.do.end26_crit_edge
  %22 = ptrtoint ptr %ectx to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %ctx, ptr %ectx, align 4
  %div151 = lshr i32 %and, 2
  %ps_shift = getelementptr inbounds %struct.atom_exec_context, ptr %ectx, i32 0, i32 3
  %23 = ptrtoint ptr %ps_shift to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div151, ptr %ps_shift, align 4
  %start = getelementptr inbounds %struct.atom_exec_context, ptr %ectx, i32 0, i32 4
  %24 = ptrtoint ptr %start to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %or.i, ptr %start, align 4
  %ps29 = getelementptr inbounds %struct.atom_exec_context, ptr %ectx, i32 0, i32 1
  %25 = ptrtoint ptr %ps29 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %params, ptr %ps29, align 4
  %abort = getelementptr inbounds %struct.atom_exec_context, ptr %ectx, i32 0, i32 7
  %26 = ptrtoint ptr %abort to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %abort, align 4
  %last_jump = getelementptr inbounds %struct.atom_exec_context, ptr %ectx, i32 0, i32 5
  %27 = ptrtoint ptr %last_jump to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %last_jump, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool30.not = icmp eq i8 %15, 0
  br i1 %tobool30.not, label %do.end26.if.end35_crit_edge, label %if.end7.i.i

do.end26.if.end35_crit_edge:                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.end7.i.i:                                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #13
  %28 = shl nuw nsw i32 %conv9, 2
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %28, i32 noundef 3520) #15
  br label %if.end35

if.end35:                                         ; preds = %if.end7.i.i, %do.end26.if.end35_crit_edge
  %.sink = phi ptr [ %call8.i.i, %if.end7.i.i ], [ null, %do.end26.if.end35_crit_edge ]
  %ws34 = getelementptr inbounds %struct.atom_exec_context, ptr %ectx, i32 0, i32 2
  %29 = ptrtoint ptr %ws34 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %.sink, ptr %ws34, align 4
  %30 = load i32, ptr @debug_depth, align 4
  %inc = add i32 %30, 1
  store i32 %inc, ptr @debug_depth, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.then89.while.cond_crit_edge, %if.end35
  %31 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bios, align 4
  %33 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ptr, align 4
  %inc37 = add i32 %34, 1
  store i32 %inc37, ptr %ptr, align 4
  %arrayidx.i160 = getelementptr i8, ptr %32, i32 %34
  %35 = ptrtoint ptr %arrayidx.i160 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i160, align 1
  %conv39 = zext i8 %36 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 123, i8 %36)
  %cmp = icmp ult i8 %36, 123
  %37 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool43.not = icmp eq i32 %37, 0
  br i1 %cmp, label %do.body42, label %do.body59

do.body42:                                        ; preds = %while.cond
  br i1 %tobool43.not, label %do.body42.if.end77_crit_edge, label %do.end47

do.body42.if.end77_crit_edge:                     ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

do.end47:                                         ; preds = %do.body42
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %38 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not1.i161 = icmp eq i32 %38, 0
  br i1 %tobool.not1.i161, label %do.end47.debug_print_spaces.exit167_crit_edge, label %do.end47.do.end.i166_crit_edge

do.end47.do.end.i166_crit_edge:                   ; preds = %do.end47
  br label %do.end.i166

do.end47.debug_print_spaces.exit167_crit_edge:    ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit167

do.end.i166:                                      ; preds = %do.end.i166.do.end.i166_crit_edge, %do.end47.do.end.i166_crit_edge
  %n.addr.02.i162 = phi i32 [ %dec.i163, %do.end.i166.do.end.i166_crit_edge ], [ %38, %do.end47.do.end.i166_crit_edge ]
  %dec.i163 = add i32 %n.addr.02.i162, -1
  %call.i164 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i165 = icmp eq i32 %dec.i163, 0
  br i1 %tobool.not.i165, label %do.end.i166.debug_print_spaces.exit167_crit_edge, label %do.end.i166.do.end.i166_crit_edge

do.end.i166.do.end.i166_crit_edge:                ; preds = %do.end.i166
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i166

do.end.i166.debug_print_spaces.exit167_crit_edge: ; preds = %do.end.i166
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit167

debug_print_spaces.exit167:                       ; preds = %do.end.i166.debug_print_spaces.exit167_crit_edge, %do.end47.debug_print_spaces.exit167_crit_edge
  %arrayidx = getelementptr [123 x ptr], ptr @atom_op_names, i32 0, i32 %conv39
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx, align 4
  %41 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ptr, align 4
  %sub = add i32 %42, -1
  %call54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %40, i32 noundef %sub) #14
  br label %if.end77

do.body59:                                        ; preds = %while.cond
  br i1 %tobool43.not, label %do.body59.if.end77_crit_edge, label %do.end64

do.body59.if.end77_crit_edge:                     ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

do.end64:                                         ; preds = %do.body59
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %43 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not1.i168 = icmp eq i32 %43, 0
  br i1 %tobool.not1.i168, label %do.end64.debug_print_spaces.exit174_crit_edge, label %do.end64.do.end.i173_crit_edge

do.end64.do.end.i173_crit_edge:                   ; preds = %do.end64
  br label %do.end.i173

do.end64.debug_print_spaces.exit174_crit_edge:    ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit174

do.end.i173:                                      ; preds = %do.end.i173.do.end.i173_crit_edge, %do.end64.do.end.i173_crit_edge
  %n.addr.02.i169 = phi i32 [ %dec.i170, %do.end.i173.do.end.i173_crit_edge ], [ %43, %do.end64.do.end.i173_crit_edge ]
  %dec.i170 = add i32 %n.addr.02.i169, -1
  %call.i171 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i172 = icmp eq i32 %dec.i170, 0
  br i1 %tobool.not.i172, label %do.end.i173.debug_print_spaces.exit174_crit_edge, label %do.end.i173.do.end.i173_crit_edge

do.end.i173.do.end.i173_crit_edge:                ; preds = %do.end.i173
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i173

do.end.i173.debug_print_spaces.exit174_crit_edge: ; preds = %do.end.i173
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit174

debug_print_spaces.exit174:                       ; preds = %do.end.i173.debug_print_spaces.exit174_crit_edge, %do.end64.debug_print_spaces.exit174_crit_edge
  %44 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ptr, align 4
  %sub72 = add i32 %45, -1
  %call73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv39, i32 noundef %sub72) #14
  br label %if.end77

if.end77:                                         ; preds = %debug_print_spaces.exit174, %do.body59.if.end77_crit_edge, %debug_print_spaces.exit167, %do.body42.if.end77_crit_edge
  %46 = ptrtoint ptr %abort to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %abort, align 4, !range !1036
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool79.not = icmp eq i8 %47, 0
  br i1 %tobool79.not, label %if.end82, label %if.then80

if.then80:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ptr, align 4
  %sub81 = add i32 %49, -1
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.30, i32 noundef %conv, i32 noundef %or.i158, i32 noundef %conv9, i32 noundef %and, i32 noundef %sub81) #11
  br label %free

if.end82:                                         ; preds = %if.end77
  %50 = add i8 %36, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 122, i8 %50)
  %51 = icmp ult i8 %50, 122
  br i1 %51, label %if.then89, label %if.end82.while.end_crit_edge

if.end82.while.end_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.then89:                                        ; preds = %if.end82
  %arrayidx91 = getelementptr [123 x %struct.anon.108], ptr @opcode_table, i32 0, i32 %conv39
  %52 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx91, align 4
  %arg = getelementptr [123 x %struct.anon.108], ptr @opcode_table, i32 0, i32 %conv39, i32 1
  %54 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arg, align 4
  call void %53(ptr noundef nonnull %ectx, ptr noundef nonnull %ptr, i32 noundef %55) #11
  %cmp97 = icmp eq i8 %36, 91
  br i1 %cmp97, label %if.then89.while.end_crit_edge, label %if.then89.while.cond_crit_edge

if.then89.while.cond_crit_edge:                   ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

if.then89.while.end_crit_edge:                    ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.then89.while.end_crit_edge, %if.end82.while.end_crit_edge
  %56 = load i32, ptr @debug_depth, align 4
  %dec = add i32 %56, -1
  store i32 %dec, ptr @debug_depth, align 4
  %57 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool102.not = icmp eq i32 %57, 0
  br i1 %tobool102.not, label %while.end.free_crit_edge, label %do.end106

while.end.free_crit_edge:                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

do.end106:                                        ; preds = %while.end
  %call108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %58 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not1.i175 = icmp eq i32 %58, 0
  br i1 %tobool.not1.i175, label %do.end106.debug_print_spaces.exit181_crit_edge, label %do.end106.do.end.i180_crit_edge

do.end106.do.end.i180_crit_edge:                  ; preds = %do.end106
  br label %do.end.i180

do.end106.debug_print_spaces.exit181_crit_edge:   ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit181

do.end.i180:                                      ; preds = %do.end.i180.do.end.i180_crit_edge, %do.end106.do.end.i180_crit_edge
  %n.addr.02.i176 = phi i32 [ %dec.i177, %do.end.i180.do.end.i180_crit_edge ], [ %58, %do.end106.do.end.i180_crit_edge ]
  %dec.i177 = add i32 %n.addr.02.i176, -1
  %call.i178 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i179 = icmp eq i32 %dec.i177, 0
  br i1 %tobool.not.i179, label %do.end.i180.debug_print_spaces.exit181_crit_edge, label %do.end.i180.do.end.i180_crit_edge

do.end.i180.do.end.i180_crit_edge:                ; preds = %do.end.i180
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i180

do.end.i180.debug_print_spaces.exit181_crit_edge: ; preds = %do.end.i180
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit181

debug_print_spaces.exit181:                       ; preds = %do.end.i180.debug_print_spaces.exit181_crit_edge, %do.end106.debug_print_spaces.exit181_crit_edge
  %call113 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #14
  br label %free

free:                                             ; preds = %debug_print_spaces.exit181, %while.end.free_crit_edge, %if.then80
  %ret.0 = phi i32 [ -22, %if.then80 ], [ 0, %debug_print_spaces.exit181 ], [ 0, %while.end.free_crit_edge ]
  %ws117 = getelementptr inbounds %struct.atom_exec_context, ptr %ectx, i32 0, i32 2
  %59 = ptrtoint ptr %ws117 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ws117, align 4
  call void @kfree(ptr noundef %60) #11
  br label %cleanup

cleanup:                                          ; preds = %free, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %free ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ectx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ptr) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atom_execute_table(ptr noundef %ctx, i32 noundef %index, ptr noundef %params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %scratch_mutex = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %scratch_mutex, i32 noundef 0) #11
  %mutex.i = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #11
  %data_block.i = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 7
  %0 = ptrtoint ptr %data_block.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %data_block.i, align 4
  %reg_block.i = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 11
  %1 = ptrtoint ptr %reg_block.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %reg_block.i, align 2
  %fb_base.i = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 8
  %2 = ptrtoint ptr %fb_base.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %fb_base.i, align 4
  %io_mode.i = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 15
  %3 = ptrtoint ptr %io_mode.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %io_mode.i, align 4
  %divmul.i = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 9
  %4 = ptrtoint ptr %divmul.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %divmul.i, align 4
  %arrayidx2.i = getelementptr %struct.atom_context, ptr %ctx, i32 0, i32 9, i32 1
  %5 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %arrayidx2.i, align 4
  %call.i = tail call fastcc i32 @atom_execute_table_locked(ptr noundef %ctx, i32 noundef %index, ptr noundef %params) #11
  tail call void @mutex_unlock(ptr noundef %mutex.i) #11
  tail call void @mutex_unlock(ptr noundef %scratch_mutex) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @atom_parse(ptr noundef %card, ptr noundef %bios) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [512 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 248) #16
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %name) #11
  %1 = call ptr @memset(ptr %name, i32 255, i32 512)
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %card, ptr %call7.i.i, align 8
  %bios2 = getelementptr inbounds %struct.atom_context, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %bios2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %bios, ptr %bios2, align 4
  %4 = ptrtoint ptr %bios to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bios, align 1
  %conv.i = zext i8 %5 to i16
  %arrayidx.i7.i = getelementptr i8, ptr %bios, i32 1
  %6 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i7.i, align 1
  %conv3.i = zext i8 %7 to i16
  %shl.i = shl nuw i16 %conv3.i, 8
  %or.i = or i16 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -21931, i16 %or.i)
  %cmp.not = icmp eq i16 %or.i, -21931
  br i1 %cmp.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %bios, i32 48
  %call10 = tail call i32 @strncmp(ptr noundef %add.ptr, ptr noundef nonnull dereferenceable(11) @.str.3, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end18, label %do.end15

do.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end18:                                         ; preds = %if.end8
  %arrayidx.i.i = getelementptr i8, ptr %bios, i32 72
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i121 = zext i8 %9 to i32
  %arrayidx.i7.i122 = getelementptr i8, ptr %bios, i32 73
  %10 = ptrtoint ptr %arrayidx.i7.i122 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i7.i122, align 1
  %conv3.i123 = zext i8 %11 to i32
  %shl.i124 = shl nuw nsw i32 %conv3.i123, 8
  %or.i125 = or i32 %shl.i124, %conv.i121
  %add = add nuw nsw i32 %or.i125, 4
  %add.ptr23 = getelementptr i8, ptr %bios, i32 %add
  %call24 = tail call i32 @strncmp(ptr noundef %add.ptr23, ptr noundef nonnull dereferenceable(5) @.str.7, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end32, label %do.end29

do.end29:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end32:                                         ; preds = %if.end18
  %add34 = add nuw nsw i32 %or.i125, 30
  %arrayidx.i.i126 = getelementptr i8, ptr %bios, i32 %add34
  %12 = ptrtoint ptr %arrayidx.i.i126 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i.i126, align 1
  %conv.i127 = zext i8 %13 to i32
  %add.i = add nuw nsw i32 %or.i125, 31
  %arrayidx.i7.i128 = getelementptr i8, ptr %bios, i32 %add.i
  %14 = ptrtoint ptr %arrayidx.i7.i128 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i7.i128, align 1
  %conv3.i129 = zext i8 %15 to i32
  %shl.i130 = shl nuw nsw i32 %conv3.i129, 8
  %or.i131 = or i32 %shl.i130, %conv.i127
  %cmd_table = getelementptr inbounds %struct.atom_context, ptr %call7.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %cmd_table to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or.i131, ptr %cmd_table, align 8
  %add38 = add nuw nsw i32 %or.i125, 32
  %arrayidx.i.i132 = getelementptr i8, ptr %bios, i32 %add38
  %17 = ptrtoint ptr %arrayidx.i.i132 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i.i132, align 1
  %conv.i133 = zext i8 %18 to i32
  %add.i134 = add nuw nsw i32 %or.i125, 33
  %arrayidx.i7.i135 = getelementptr i8, ptr %bios, i32 %add.i134
  %19 = ptrtoint ptr %arrayidx.i7.i135 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i7.i135, align 1
  %conv3.i136 = zext i8 %20 to i32
  %shl.i137 = shl nuw nsw i32 %conv3.i136, 8
  %or.i138 = or i32 %shl.i137, %conv.i133
  %data_table = getelementptr inbounds %struct.atom_context, ptr %call7.i.i, i32 0, i32 5
  %21 = ptrtoint ptr %data_table to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or.i138, ptr %data_table, align 4
  %add43 = add nuw nsw i32 %or.i138, 50
  %arrayidx.i.i139 = getelementptr i8, ptr %bios, i32 %add43
  %22 = ptrtoint ptr %arrayidx.i.i139 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i.i139, align 1
  %add.i141 = add nuw nsw i32 %or.i138, 51
  %arrayidx.i7.i142 = getelementptr i8, ptr %bios, i32 %add.i141
  %24 = ptrtoint ptr %arrayidx.i7.i142 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i7.i142, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 512) #16
  %iio.i = getelementptr inbounds %struct.atom_context, ptr %call7.i.i, i32 0, i32 6
  %27 = ptrtoint ptr %iio.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i.i, ptr %iio.i, align 8
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end32.if.then48_crit_edge, label %while.cond.preheader.i

if.end32.if.then48_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then48

while.cond.preheader.i:                           ; preds = %if.end32
  %conv3.i143 = zext i8 %25 to i32
  %shl.i144 = shl nuw nsw i32 %conv3.i143, 8
  %conv.i140 = zext i8 %23 to i32
  %or.i145 = or i32 %shl.i144, %conv.i140
  %add46 = add nuw nsw i32 %or.i145, 4
  %28 = ptrtoint ptr %bios2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bios2, align 4
  %arrayidx.i43.i = getelementptr i8, ptr %29, i32 %add46
  %30 = ptrtoint ptr %arrayidx.i43.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i43.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %31)
  %cmp44.i = icmp eq i8 %31, 1
  br i1 %cmp44.i, label %while.cond.preheader.i.while.body.i_crit_edge, label %while.cond.preheader.i.atom_index_iio.exit_crit_edge

while.cond.preheader.i.atom_index_iio.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atom_index_iio.exit

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.end.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %32 = phi ptr [ %39, %while.end.i.while.body.i_crit_edge ], [ %29, %while.cond.preheader.i.while.body.i_crit_edge ]
  %base.addr.045.i = phi i32 [ %add22.i, %while.end.i.while.body.i_crit_edge ], [ %add46, %while.cond.preheader.i.while.body.i_crit_edge ]
  %add.i146 = add i32 %base.addr.045.i, 2
  %conv4.i = trunc i32 %add.i146 to i16
  %33 = ptrtoint ptr %iio.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %iio.i, align 8
  %add7.i = add i32 %base.addr.045.i, 1
  %arrayidx.i37.i = getelementptr i8, ptr %32, i32 %add7.i
  %35 = ptrtoint ptr %arrayidx.i37.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i37.i, align 1
  %idxprom.i = zext i8 %36 to i32
  %arrayidx.i = getelementptr i16, ptr %34, i32 %idxprom.i
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv4.i, ptr %arrayidx.i, align 2
  %38 = ptrtoint ptr %bios2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bios2, align 4
  %arrayidx.i3840.i = getelementptr i8, ptr %39, i32 %add.i146
  %40 = ptrtoint ptr %arrayidx.i3840.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.i3840.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %41)
  %cmp14.not41.i = icmp eq i8 %41, 9
  br i1 %cmp14.not41.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body16.i_crit_edge

while.body.i.while.body16.i_crit_edge:            ; preds = %while.body.i
  br label %while.body16.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.body16.i:                                   ; preds = %while.body16.i.while.body16.i_crit_edge, %while.body.i.while.body16.i_crit_edge
  %42 = phi i8 [ %46, %while.body16.i.while.body16.i_crit_edge ], [ %41, %while.body.i.while.body16.i_crit_edge ]
  %base.addr.142.i = phi i32 [ %add21.i, %while.body16.i.while.body16.i_crit_edge ], [ %add.i146, %while.body.i.while.body16.i_crit_edge ]
  %idxprom19.i = zext i8 %42 to i32
  %arrayidx20.i = getelementptr [10 x i32], ptr @atom_iio_len, i32 0, i32 %idxprom19.i
  %43 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx20.i, align 4
  %add21.i = add i32 %44, %base.addr.142.i
  %arrayidx.i38.i = getelementptr i8, ptr %39, i32 %add21.i
  %45 = ptrtoint ptr %arrayidx.i38.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.i38.i, align 1
  %cmp14.not.i = icmp eq i8 %46, 9
  br i1 %cmp14.not.i, label %while.body16.i.while.end.i_crit_edge, label %while.body16.i.while.body16.i_crit_edge

while.body16.i.while.body16.i_crit_edge:          ; preds = %while.body16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body16.i

while.body16.i.while.end.i_crit_edge:             ; preds = %while.body16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.end.i:                                      ; preds = %while.body16.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge
  %base.addr.1.lcssa.i = phi i32 [ %add.i146, %while.body.i.while.end.i_crit_edge ], [ %add21.i, %while.body16.i.while.end.i_crit_edge ]
  %add22.i = add i32 %base.addr.1.lcssa.i, 3
  %arrayidx.i.i147 = getelementptr i8, ptr %39, i32 %add22.i
  %47 = ptrtoint ptr %arrayidx.i.i147 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.i.i147, align 1
  %cmp.i = icmp eq i8 %48, 1
  br i1 %cmp.i, label %while.end.i.while.body.i_crit_edge, label %while.end.i.atom_index_iio.exit_crit_edge

while.end.i.atom_index_iio.exit_crit_edge:        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atom_index_iio.exit

while.end.i.while.body.i_crit_edge:               ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

atom_index_iio.exit:                              ; preds = %while.end.i.atom_index_iio.exit_crit_edge, %while.cond.preheader.i.atom_index_iio.exit_crit_edge
  %49 = ptrtoint ptr %iio.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pr = load ptr, ptr %iio.i, align 8
  %tobool47.not = icmp eq ptr %.pr, null
  br i1 %tobool47.not, label %atom_index_iio.exit.if.then48_crit_edge, label %if.end49

atom_index_iio.exit.if.then48_crit_edge:          ; preds = %atom_index_iio.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then48

if.then48:                                        ; preds = %atom_index_iio.exit.if.then48_crit_edge, %if.end32.if.then48_crit_edge
  tail call void @kfree(ptr noundef null) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end49:                                         ; preds = %atom_index_iio.exit
  %50 = ptrtoint ptr %bios2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bios2, align 4
  %add52 = add nuw nsw i32 %or.i125, 16
  %arrayidx.i.i149 = getelementptr i8, ptr %51, i32 %add52
  %52 = ptrtoint ptr %arrayidx.i.i149 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.i.i149, align 1
  %conv.i150 = zext i8 %53 to i32
  %add.i151 = add nuw nsw i32 %or.i125, 17
  %arrayidx.i7.i152 = getelementptr i8, ptr %51, i32 %add.i151
  %54 = ptrtoint ptr %arrayidx.i7.i152 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.i7.i152, align 1
  %conv3.i153 = zext i8 %55 to i32
  %shl.i154 = shl nuw nsw i32 %conv3.i153, 8
  %or.i155 = or i32 %shl.i154, %conv.i150
  %add.ptr55 = getelementptr i8, ptr %51, i32 %or.i155
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end49
  %str.0 = phi ptr [ %add.ptr55, %if.end49 ], [ %incdec.ptr, %while.body ]
  %56 = ptrtoint ptr %str.0 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %str.0, align 1
  %58 = zext i8 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values)
  switch i8 %57, label %while.cond.for.body_crit_edge [
    i8 13, label %while.cond.while.body_crit_edge
    i8 10, label %while.cond.while.body_crit_edge163
  ]

while.cond.while.body_crit_edge163:               ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.cond.for.body_crit_edge:                    ; preds = %while.cond
  br label %for.body

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.cond.while.body_crit_edge163
  %incdec.ptr = getelementptr i8, ptr %str.0, i32 1
  br label %while.cond

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %while.cond.for.body_crit_edge
  %i.0157 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %while.cond.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %str.0, i32 %i.0157
  %59 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx, align 1
  %arrayidx66 = getelementptr [512 x i8], ptr %name, i32 0, i32 %i.0157
  %61 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %arrayidx66, align 1
  %62 = add i8 %60, -123
  call void @__sanitizer_cov_trace_const_cmp1(i8 -77, i8 %62)
  %63 = icmp ult i8 %62, -77
  br i1 %63, label %if.then75, label %for.inc

if.then75:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx66.le = getelementptr [512 x i8], ptr %name, i32 0, i32 %i.0157
  %64 = ptrtoint ptr %arrayidx66.le to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %arrayidx66.le, align 1
  br label %do.end80

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0157, 1
  %exitcond.not = icmp eq i32 %inc, 511
  br i1 %exitcond.not, label %for.inc.do.end80_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.do.end80_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end80

do.end80:                                         ; preds = %for.inc.do.end80_crit_edge, %if.then75
  %call82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull %name) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end80, %if.then48, %do.end29, %do.end15, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end ], [ null, %do.end15 ], [ null, %do.end29 ], [ %call7.i.i, %do.end80 ], [ null, %if.then48 ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %name) #11
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @atom_destroy(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %iio = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 6
  %0 = ptrtoint ptr %iio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iio, align 4
  tail call void @kfree(ptr noundef %1) #11
  tail call void @kfree(ptr noundef %ctx) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atom_asic_init(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  %ps = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 3
  %6 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bios, align 4
  %data_table = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 5
  %8 = ptrtoint ptr %data_table to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_table, align 4
  %add = add i32 %9, 12
  %arrayidx.i.i = getelementptr i8, ptr %7, i32 %add
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i = zext i8 %11 to i32
  %add.i = add i32 %9, 13
  %arrayidx.i7.i = getelementptr i8, ptr %7, i32 %add.i
  %12 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i7.i, align 1
  %conv3.i = zext i8 %13 to i32
  %shl.i = shl nuw nsw i32 %conv3.i, 8
  %or.i = or i32 %shl.i, %conv.i
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ps) #11
  %14 = getelementptr inbounds i8, ptr %ps, i32 8
  %15 = call ptr @memset(ptr %14, i32 0, i32 56)
  %add2 = add nuw nsw i32 %or.i, 8
  %arrayidx.i.i.i = getelementptr i8, ptr %7, i32 %add2
  %16 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i = zext i8 %17 to i32
  %add.i.i = add nuw nsw i32 %or.i, 9
  %arrayidx.i7.i.i = getelementptr i8, ptr %7, i32 %add.i.i
  %18 = ptrtoint ptr %arrayidx.i7.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i7.i.i, align 1
  %conv3.i.i = zext i8 %19 to i32
  %shl.i.i = shl nuw nsw i32 %conv3.i.i, 8
  %add.i53 = add nuw nsw i32 %or.i, 10
  %arrayidx.i.i5.i = getelementptr i8, ptr %7, i32 %add.i53
  %20 = ptrtoint ptr %arrayidx.i.i5.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i.i5.i, align 1
  %conv.i6.i = zext i8 %21 to i32
  %add.i7.i = add nuw nsw i32 %or.i, 11
  %arrayidx.i7.i8.i = getelementptr i8, ptr %7, i32 %add.i7.i
  %22 = ptrtoint ptr %arrayidx.i7.i8.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i7.i8.i, align 1
  %conv3.i9.i = zext i8 %23 to i32
  %24 = shl nuw i32 %conv3.i9.i, 24
  %25 = shl nuw nsw i32 %conv.i6.i, 16
  %shl.i54 = or i32 %shl.i.i, %conv.i.i
  %or.i.i = or i32 %shl.i54, %25
  %or.i55 = or i32 %or.i.i, %24
  %26 = tail call i32 @llvm.bswap.i32(i32 %or.i55)
  %27 = ptrtoint ptr %ps to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %ps, align 4
  %add5 = add nuw nsw i32 %or.i, 12
  %arrayidx.i.i.i56 = getelementptr i8, ptr %7, i32 %add5
  %28 = ptrtoint ptr %arrayidx.i.i.i56 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i.i.i56, align 1
  %conv.i.i57 = zext i8 %29 to i32
  %add.i.i58 = add nuw nsw i32 %or.i, 13
  %arrayidx.i7.i.i59 = getelementptr i8, ptr %7, i32 %add.i.i58
  %30 = ptrtoint ptr %arrayidx.i7.i.i59 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i7.i.i59, align 1
  %conv3.i.i60 = zext i8 %31 to i32
  %shl.i.i61 = shl nuw nsw i32 %conv3.i.i60, 8
  %add.i62 = add nuw nsw i32 %or.i, 14
  %arrayidx.i.i5.i63 = getelementptr i8, ptr %7, i32 %add.i62
  %32 = ptrtoint ptr %arrayidx.i.i5.i63 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i.i5.i63, align 1
  %conv.i6.i64 = zext i8 %33 to i32
  %add.i7.i65 = add nuw nsw i32 %or.i, 15
  %arrayidx.i7.i8.i66 = getelementptr i8, ptr %7, i32 %add.i7.i65
  %34 = ptrtoint ptr %arrayidx.i7.i8.i66 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i7.i8.i66, align 1
  %conv3.i9.i67 = zext i8 %35 to i32
  %36 = shl nuw i32 %conv3.i9.i67, 24
  %37 = shl nuw nsw i32 %conv.i6.i64, 16
  %shl.i68 = or i32 %shl.i.i61, %conv.i.i57
  %or.i.i69 = or i32 %shl.i68, %37
  %or.i70 = or i32 %or.i.i69, %36
  %38 = tail call i32 @llvm.bswap.i32(i32 %or.i70)
  %arrayidx7 = getelementptr inbounds [16 x i32], ptr %ps, i32 0, i32 1
  %39 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i55)
  %tobool.not = icmp eq i32 %or.i55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i70)
  %tobool10.not = icmp eq i32 %or.i70, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool10.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmd_table = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 4
  %40 = ptrtoint ptr %cmd_table to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cmd_table, align 4
  %add12 = add i32 %41, 4
  %arrayidx.i.i71 = getelementptr i8, ptr %7, i32 %add12
  %42 = ptrtoint ptr %arrayidx.i.i71 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i.i71, align 1
  %conv.i72 = zext i8 %43 to i16
  %add.i73 = add i32 %41, 5
  %arrayidx.i7.i74 = getelementptr i8, ptr %7, i32 %add.i73
  %44 = ptrtoint ptr %arrayidx.i7.i74 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.i7.i74, align 1
  %conv3.i75 = zext i8 %45 to i16
  %shl.i76 = shl nuw i16 %conv3.i75, 8
  %or.i77 = or i16 %shl.i76, %conv.i72
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or.i77)
  %tobool15.not = icmp eq i16 %or.i77, 0
  br i1 %tobool15.not, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %scratch_mutex.i = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %scratch_mutex.i, i32 noundef 0) #11
  %mutex.i.i = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #11
  %data_block.i.i = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 7
  %46 = ptrtoint ptr %data_block.i.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %data_block.i.i, align 4
  %reg_block.i.i = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 11
  %47 = ptrtoint ptr %reg_block.i.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %reg_block.i.i, align 2
  %fb_base.i.i = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 8
  %48 = ptrtoint ptr %fb_base.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %fb_base.i.i, align 4
  %io_mode.i.i = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 15
  %49 = ptrtoint ptr %io_mode.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %io_mode.i.i, align 4
  %divmul.i.i = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 9
  %50 = ptrtoint ptr %divmul.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %divmul.i.i, align 4
  %arrayidx2.i.i = getelementptr %struct.atom_context, ptr %ctx, i32 0, i32 9, i32 1
  %51 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %arrayidx2.i.i, align 4
  %call.i.i = call fastcc i32 @atom_execute_table_locked(ptr noundef %ctx, i32 noundef 0, ptr noundef nonnull %ps) #11
  call void @mutex_unlock(ptr noundef %mutex.i.i) #11
  call void @mutex_unlock(ptr noundef %scratch_mutex.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool20.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool20.not, label %if.end22, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %52 = call ptr @memset(ptr %ps, i32 0, i32 64)
  %family = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 6
  %53 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %54)
  %cmp = icmp ult i32 %54, 27
  br i1 %cmp, label %if.then25, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then25:                                        ; preds = %if.end22
  %55 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bios, align 4
  %57 = ptrtoint ptr %cmd_table to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cmd_table, align 4
  %add29 = add i32 %58, 118
  %arrayidx.i.i78 = getelementptr i8, ptr %56, i32 %add29
  %59 = ptrtoint ptr %arrayidx.i.i78 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.i.i78, align 1
  %conv.i79 = zext i8 %60 to i16
  %add.i80 = add i32 %58, 119
  %arrayidx.i7.i81 = getelementptr i8, ptr %56, i32 %add.i80
  %61 = ptrtoint ptr %arrayidx.i7.i81 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.i7.i81, align 1
  %conv3.i82 = zext i8 %62 to i16
  %shl.i83 = shl nuw i16 %conv3.i82, 8
  %or.i84 = or i16 %shl.i83, %conv.i79
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or.i84)
  %tobool31.not = icmp eq i16 %or.i84, 0
  br i1 %tobool31.not, label %if.then25.cleanup_crit_edge, label %if.then32

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then32:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  call void @mutex_lock_nested(ptr noundef %scratch_mutex.i, i32 noundef 0) #11
  call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #11
  %63 = ptrtoint ptr %data_block.i.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 0, ptr %data_block.i.i, align 4
  %64 = ptrtoint ptr %reg_block.i.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 0, ptr %reg_block.i.i, align 2
  %65 = ptrtoint ptr %fb_base.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %fb_base.i.i, align 4
  %66 = ptrtoint ptr %io_mode.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %io_mode.i.i, align 4
  %67 = ptrtoint ptr %divmul.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %divmul.i.i, align 4
  %68 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %arrayidx2.i.i, align 4
  %call.i.i93 = call fastcc i32 @atom_execute_table_locked(ptr noundef %ctx, i32 noundef 57, ptr noundef nonnull %ps) #11
  call void @mutex_unlock(ptr noundef %mutex.i.i) #11
  call void @mutex_unlock(ptr noundef %scratch_mutex.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.then25.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ %call.i.i, %if.end17.cleanup_crit_edge ], [ 0, %if.then25.cleanup_crit_edge ], [ 0, %if.then32 ], [ 0, %if.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ps) #11
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @atom_parse_data_header(ptr nocapture noundef readonly %ctx, i32 noundef %index, ptr noundef writeonly %size, ptr noundef writeonly %frev, ptr noundef writeonly %crev, ptr nocapture noundef writeonly %data_start) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %index, 1
  %add = add i32 %mul, 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bios, align 4
  %data_table = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 5
  %2 = ptrtoint ptr %data_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_table, align 4
  %add1 = add i32 %add, %3
  %arrayidx.i.i = getelementptr i8, ptr %1, i32 %add1
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i = zext i8 %5 to i16
  %add.i = add i32 %add1, 1
  %arrayidx.i7.i = getelementptr i8, ptr %1, i32 %add.i
  %6 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i7.i, align 1
  %conv3.i = zext i8 %7 to i16
  %shl.i = shl nuw i16 %conv3.i, 8
  %or.i = or i16 %shl.i, %conv.i
  %conv = zext i16 %or.i to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  %add.ptr4 = getelementptr i8, ptr %add.ptr, i32 4
  %arrayidx = getelementptr i16, ptr %add.ptr4, i32 %index
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool5.not = icmp eq ptr %size, null
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i38 = getelementptr i8, ptr %1, i32 %conv
  %10 = ptrtoint ptr %arrayidx.i.i38 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.i38, align 1
  %conv.i39 = zext i8 %11 to i16
  %add.i40 = add nuw nsw i32 %conv, 1
  %arrayidx.i7.i41 = getelementptr i8, ptr %1, i32 %add.i40
  %12 = ptrtoint ptr %arrayidx.i7.i41 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i7.i41, align 1
  %conv3.i42 = zext i8 %13 to i16
  %shl.i43 = shl nuw i16 %conv3.i42, 8
  %or.i44 = or i16 %shl.i43, %conv.i39
  %14 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %or.i44, ptr %size, align 2
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %tobool10.not = icmp eq ptr %frev, null
  br i1 %tobool10.not, label %if.end9.if.end15_crit_edge, label %if.then11

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bios, align 4
  %add13 = add nuw nsw i32 %conv, 2
  %arrayidx.i = getelementptr i8, ptr %16, i32 %add13
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i, align 1
  %19 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %frev, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end9.if.end15_crit_edge
  %tobool16.not = icmp eq ptr %crev, null
  br i1 %tobool16.not, label %if.end15.if.end21_crit_edge, label %if.then17

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bios, align 4
  %add19 = add nuw nsw i32 %conv, 3
  %arrayidx.i45 = getelementptr i8, ptr %21, i32 %add19
  %22 = ptrtoint ptr %arrayidx.i45 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i45, align 1
  %24 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %crev, align 1
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end15.if.end21_crit_edge
  %25 = ptrtoint ptr %data_start to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %or.i, ptr %data_start, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %entry.cleanup_crit_edge
  %26 = xor i1 %tobool.not, true
  ret i1 %26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @atom_parse_cmd_header(ptr nocapture noundef readonly %ctx, i32 noundef %index, ptr noundef writeonly %frev, ptr noundef writeonly %crev) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %index, 1
  %add = add i32 %mul, 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bios, align 4
  %cmd_table = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 4
  %2 = ptrtoint ptr %cmd_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cmd_table, align 4
  %add1 = add i32 %add, %3
  %arrayidx.i.i = getelementptr i8, ptr %1, i32 %add1
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i = zext i8 %5 to i32
  %add.i = add i32 %add1, 1
  %arrayidx.i7.i = getelementptr i8, ptr %1, i32 %add.i
  %6 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i7.i, align 1
  %conv3.i = zext i8 %7 to i32
  %shl.i = shl nuw nsw i32 %conv3.i, 8
  %or.i = or i32 %shl.i, %conv.i
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  %add.ptr4 = getelementptr i8, ptr %add.ptr, i32 4
  %arrayidx = getelementptr i16, ptr %add.ptr4, i32 %index
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool5.not = icmp eq ptr %frev, null
  br i1 %tobool5.not, label %if.end.if.end10_crit_edge, label %if.then6

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %add8 = add nuw nsw i32 %or.i, 2
  %arrayidx.i = getelementptr i8, ptr %1, i32 %add8
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  %12 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %frev, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.end.if.end10_crit_edge
  %tobool11.not = icmp eq ptr %crev, null
  br i1 %tobool11.not, label %if.end10.cleanup_crit_edge, label %if.then12

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bios, align 4
  %add14 = add nuw nsw i32 %or.i, 3
  %arrayidx.i28 = getelementptr i8, ptr %14, i32 %add14
  %15 = ptrtoint ptr %arrayidx.i28 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i28, align 1
  %17 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %crev, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %18 = xor i1 %tobool.not, true
  ret i1 %18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atom_allocate_fb_scratch(ptr nocapture noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bios.i = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %bios.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bios.i, align 4
  %data_table.i = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 5
  %2 = ptrtoint ptr %data_table.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_table.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %3
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i, i32 4
  %arrayidx.i = getelementptr i16, ptr %add.ptr4.i, i32 11
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i = icmp eq i16 %5, 0
  br i1 %tobool.not.i, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %scratch_size_bytes31 = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 17
  %6 = ptrtoint ptr %scratch_size_bytes31 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %scratch_size_bytes31, align 4
  br label %21

if.end:                                           ; preds = %entry
  %add.i.i = add i32 %3, 27
  %arrayidx.i7.i.i = getelementptr i8, ptr %1, i32 %add.i.i
  %7 = ptrtoint ptr %arrayidx.i7.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i7.i.i, align 1
  %conv3.i.i = zext i8 %8 to i32
  %shl.i.i = shl nuw nsw i32 %conv3.i.i, 8
  %add1.i = add i32 %3, 26
  %arrayidx.i.i.i = getelementptr i8, ptr %1, i32 %add1.i
  %9 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i = zext i8 %10 to i32
  %or.i.i = or i32 %shl.i.i, %conv.i.i
  %add.ptr = getelementptr i8, ptr %1, i32 %or.i.i
  %asFirmwareVramReserveInfo = getelementptr inbounds %struct._ATOM_VRAM_USAGE_BY_FIRMWARE, ptr %add.ptr, i32 0, i32 1
  %11 = ptrtoint ptr %asFirmwareVramReserveInfo to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %asFirmwareVramReserveInfo, align 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %usFirmwareUseInKb = getelementptr inbounds %struct._ATOM_FIRMWARE_VRAM_RESERVE_INFO, ptr %asFirmwareVramReserveInfo, i32 0, i32 1
  %14 = ptrtoint ptr %usFirmwareUseInKb to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %usFirmwareUseInKb, align 1
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %conv3 = zext i16 %16 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.14, i32 noundef %13, i32 noundef %conv3) #11
  %17 = ptrtoint ptr %usFirmwareUseInKb to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %usFirmwareUseInKb, align 1
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  %conv7 = zext i16 %19 to i32
  %mul = shl nuw nsw i32 %conv7, 10
  %scratch_size_bytes = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 17
  %20 = ptrtoint ptr %scratch_size_bytes to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %scratch_size_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp = icmp eq i16 %18, 0
  br i1 %cmp, label %if.end._crit_edge, label %if.end.if.end8.i.i_crit_edge

if.end.if.end8.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i

if.end._crit_edge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %21

21:                                               ; preds = %if.end._crit_edge, %if.end.thread
  %scratch_size_bytes34 = phi ptr [ %scratch_size_bytes31, %if.end.thread ], [ %scratch_size_bytes, %if.end._crit_edge ]
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %21, %if.end.if.end8.i.i_crit_edge
  %scratch_size_bytes33 = phi ptr [ %scratch_size_bytes34, %21 ], [ %scratch_size_bytes, %if.end.if.end8.i.i_crit_edge ]
  %22 = phi i32 [ 20480, %21 ], [ %mul, %if.end.if.end8.i.i_crit_edge ]
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %22, i32 noundef 3520) #15
  %scratch = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 16
  %23 = ptrtoint ptr %scratch to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call9.i.i, ptr %scratch, align 4
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end14

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %scratch_size_bytes33 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %22, ptr %scratch_size_bytes33, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end8.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -12, %if.end8.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_move(ptr nocapture noundef readonly %ctx, ptr noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  %saved = alloca i32, align 4
  %dptr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %saved) #11
  %8 = ptrtoint ptr %saved to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %saved, align 4, !annotation !1037
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dptr) #11
  %9 = ptrtoint ptr %dptr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %inc, ptr %dptr, align 4
  %10 = and i8 %7, 56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp.not = icmp eq i8 %10, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i8 %7 to i32
  %11 = lshr i32 %conv.i, 3
  %and.i = and i32 %11, 7
  %12 = lshr i32 %conv.i, 6
  %arrayidx4.i = getelementptr [8 x [4 x i32]], ptr @atom_dst_to_src, i32 0, i32 %and.i, i32 %12
  %13 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx4.i, align 4
  %shl.i = shl i32 %14, 3
  %or.i = or i32 %shl.i, %arg
  %conv5.i = trunc i32 %or.i to i8
  %call.i = call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %conv5.i, ptr noundef %ptr, ptr noundef nonnull %saved, i32 noundef 0) #11
  br label %do.body

if.else:                                          ; preds = %entry
  %and2.i.i = and i32 %arg, 7
  %15 = zext i32 %and2.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.607)
  switch i32 %and2.i.i, label %entry.unreachabledefault.i.i [
    i32 0, label %if.else.atom_skip_dst.exit_crit_edge
    i32 4, label %if.else.atom_skip_dst.exit_crit_edge60
    i32 6, label %if.else.sw.bb3.i.i_crit_edge
    i32 7, label %if.else.sw.bb3.i.i_crit_edge61
    i32 1, label %if.else.sw.bb3.i.i_crit_edge62
    i32 2, label %if.else.sw.bb3.i.i_crit_edge63
    i32 3, label %if.else.sw.bb3.i.i_crit_edge64
    i32 5, label %sw.bb4.i.i
  ]

if.else.sw.bb3.i.i_crit_edge64:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb3.i.i

if.else.sw.bb3.i.i_crit_edge63:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb3.i.i

if.else.sw.bb3.i.i_crit_edge62:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb3.i.i

if.else.sw.bb3.i.i_crit_edge61:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb3.i.i

if.else.sw.bb3.i.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb3.i.i

if.else.atom_skip_dst.exit_crit_edge60:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %atom_skip_dst.exit

if.else.atom_skip_dst.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %atom_skip_dst.exit

sw.bb3.i.i:                                       ; preds = %if.else.sw.bb3.i.i_crit_edge, %if.else.sw.bb3.i.i_crit_edge61, %if.else.sw.bb3.i.i_crit_edge62, %if.else.sw.bb3.i.i_crit_edge63, %if.else.sw.bb3.i.i_crit_edge64
  br label %atom_skip_dst.exit

sw.bb4.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i46 = zext i8 %7 to i32
  %16 = lshr i32 %conv.i46, 3
  %and.i47 = and i32 %16, 7
  %17 = lshr i32 %conv.i46, 6
  %arrayidx4.i48 = getelementptr [8 x [4 x i32]], ptr @atom_dst_to_src, i32 0, i32 %and.i47, i32 %17
  %18 = ptrtoint ptr %arrayidx4.i48 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx4.i48, align 4
  %shl.i49 = shl i32 %19, 3
  %or.i50 = or i32 %shl.i49, %arg
  %conv.i.i = lshr i32 %or.i50, 3
  %and.i.i = and i32 %conv.i.i, 7
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.atom_op_move, i32 0, i32 %and.i.i
  %20 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %20)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %atom_skip_dst.exit

entry.unreachabledefault.i.i:                     ; preds = %if.else
  unreachable

atom_skip_dst.exit:                               ; preds = %sw.bb4.i.i, %sw.bb3.i.i, %if.else.atom_skip_dst.exit_crit_edge, %if.else.atom_skip_dst.exit_crit_edge60
  %.sink1.i.i = phi i32 [ 1, %sw.bb3.i.i ], [ 2, %if.else.atom_skip_dst.exit_crit_edge ], [ 2, %if.else.atom_skip_dst.exit_crit_edge60 ], [ %switch.load, %sw.bb4.i.i ]
  %add.i.i = add i32 %.sink1.i.i, %inc
  %21 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add.i.i, ptr %ptr, align 4
  %22 = ptrtoint ptr %saved to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -842150451, ptr %saved, align 4
  br label %do.body

do.body:                                          ; preds = %atom_skip_dst.exit, %if.then
  %23 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not = icmp eq i32 %23, 0
  br i1 %tobool.not, label %do.body.do.end14_crit_edge, label %do.end

do.body.do.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end14

do.end:                                           ; preds = %do.body
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %24 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not1.i = icmp eq i32 %24, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %24, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163) #14
  br label %do.end14

do.end14:                                         ; preds = %debug_print_spaces.exit, %do.body.do.end14_crit_edge
  %call.i52 = call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %7, ptr noundef %ptr, ptr noundef null, i32 noundef 1) #11
  %25 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool17.not = icmp eq i32 %25, 0
  br i1 %tobool17.not, label %do.end14.do.end31_crit_edge, label %do.end21

do.end14.do.end31_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end31

do.end21:                                         ; preds = %do.end14
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %26 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not1.i53 = icmp eq i32 %26, 0
  br i1 %tobool.not1.i53, label %do.end21.debug_print_spaces.exit59_crit_edge, label %do.end21.do.end.i58_crit_edge

do.end21.do.end.i58_crit_edge:                    ; preds = %do.end21
  br label %do.end.i58

do.end21.debug_print_spaces.exit59_crit_edge:     ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit59

do.end.i58:                                       ; preds = %do.end.i58.do.end.i58_crit_edge, %do.end21.do.end.i58_crit_edge
  %n.addr.02.i54 = phi i32 [ %dec.i55, %do.end.i58.do.end.i58_crit_edge ], [ %26, %do.end21.do.end.i58_crit_edge ]
  %dec.i55 = add i32 %n.addr.02.i54, -1
  %call.i56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i57 = icmp eq i32 %dec.i55, 0
  br i1 %tobool.not.i57, label %do.end.i58.debug_print_spaces.exit59_crit_edge, label %do.end.i58.do.end.i58_crit_edge

do.end.i58.do.end.i58_crit_edge:                  ; preds = %do.end.i58
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i58

do.end.i58.debug_print_spaces.exit59_crit_edge:   ; preds = %do.end.i58
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit59

debug_print_spaces.exit59:                        ; preds = %do.end.i58.debug_print_spaces.exit59_crit_edge, %do.end21.debug_print_spaces.exit59_crit_edge
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168) #14
  br label %do.end31

do.end31:                                         ; preds = %debug_print_spaces.exit59, %do.end14.do.end31_crit_edge
  %27 = ptrtoint ptr %saved to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %saved, align 4
  call fastcc void @atom_put_dst(ptr noundef %ctx, i32 noundef %arg, i8 noundef zeroext %7, ptr noundef nonnull %dptr, i32 noundef %call.i52, i32 noundef %28)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dptr) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %saved) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_and(ptr nocapture noundef readonly %ctx, ptr noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  %saved = alloca i32, align 4
  %dptr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %saved) #11
  %8 = ptrtoint ptr %saved to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %saved, align 4, !annotation !1037
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dptr) #11
  %9 = ptrtoint ptr %dptr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %inc, ptr %dptr, align 4
  %10 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

do.end:                                           ; preds = %entry
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %11 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not1.i = icmp eq i32 %11, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %11, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168) #14
  br label %do.end10

do.end10:                                         ; preds = %debug_print_spaces.exit, %entry.do.end10_crit_edge
  %conv.i = zext i8 %7 to i32
  %12 = lshr i32 %conv.i, 3
  %and.i = and i32 %12, 7
  %13 = lshr i32 %conv.i, 6
  %arrayidx4.i = getelementptr [8 x [4 x i32]], ptr @atom_dst_to_src, i32 0, i32 %and.i, i32 %13
  %14 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx4.i, align 4
  %shl.i = shl i32 %15, 3
  %or.i = or i32 %shl.i, %arg
  %conv5.i = trunc i32 %or.i to i8
  %call.i55 = call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %conv5.i, ptr noundef %ptr, ptr noundef nonnull %saved, i32 noundef 1) #11
  %16 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool13.not = icmp eq i32 %16, 0
  br i1 %tobool13.not, label %do.end10.do.end27_crit_edge, label %do.end17

do.end10.do.end27_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end27

do.end17:                                         ; preds = %do.end10
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %17 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not1.i56 = icmp eq i32 %17, 0
  br i1 %tobool.not1.i56, label %do.end17.debug_print_spaces.exit62_crit_edge, label %do.end17.do.end.i61_crit_edge

do.end17.do.end.i61_crit_edge:                    ; preds = %do.end17
  br label %do.end.i61

do.end17.debug_print_spaces.exit62_crit_edge:     ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit62

do.end.i61:                                       ; preds = %do.end.i61.do.end.i61_crit_edge, %do.end17.do.end.i61_crit_edge
  %n.addr.02.i57 = phi i32 [ %dec.i58, %do.end.i61.do.end.i61_crit_edge ], [ %17, %do.end17.do.end.i61_crit_edge ]
  %dec.i58 = add i32 %n.addr.02.i57, -1
  %call.i59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i60 = icmp eq i32 %dec.i58, 0
  br i1 %tobool.not.i60, label %do.end.i61.debug_print_spaces.exit62_crit_edge, label %do.end.i61.do.end.i61_crit_edge

do.end.i61.do.end.i61_crit_edge:                  ; preds = %do.end.i61
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i61

do.end.i61.debug_print_spaces.exit62_crit_edge:   ; preds = %do.end.i61
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit62

debug_print_spaces.exit62:                        ; preds = %do.end.i61.debug_print_spaces.exit62_crit_edge, %do.end17.debug_print_spaces.exit62_crit_edge
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163) #14
  br label %do.end27

do.end27:                                         ; preds = %debug_print_spaces.exit62, %do.end10.do.end27_crit_edge
  %call.i63 = call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %7, ptr noundef %ptr, ptr noundef null, i32 noundef 1) #11
  %18 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool30.not = icmp eq i32 %18, 0
  br i1 %tobool30.not, label %do.end27.do.end44_crit_edge, label %do.end34

do.end27.do.end44_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end44

do.end34:                                         ; preds = %do.end27
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %19 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not1.i64 = icmp eq i32 %19, 0
  br i1 %tobool.not1.i64, label %do.end34.debug_print_spaces.exit70_crit_edge, label %do.end34.do.end.i69_crit_edge

do.end34.do.end.i69_crit_edge:                    ; preds = %do.end34
  br label %do.end.i69

do.end34.debug_print_spaces.exit70_crit_edge:     ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit70

do.end.i69:                                       ; preds = %do.end.i69.do.end.i69_crit_edge, %do.end34.do.end.i69_crit_edge
  %n.addr.02.i65 = phi i32 [ %dec.i66, %do.end.i69.do.end.i69_crit_edge ], [ %19, %do.end34.do.end.i69_crit_edge ]
  %dec.i66 = add i32 %n.addr.02.i65, -1
  %call.i67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i68 = icmp eq i32 %dec.i66, 0
  br i1 %tobool.not.i68, label %do.end.i69.debug_print_spaces.exit70_crit_edge, label %do.end.i69.do.end.i69_crit_edge

do.end.i69.do.end.i69_crit_edge:                  ; preds = %do.end.i69
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i69

do.end.i69.debug_print_spaces.exit70_crit_edge:   ; preds = %do.end.i69
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit70

debug_print_spaces.exit70:                        ; preds = %do.end.i69.debug_print_spaces.exit70_crit_edge, %do.end34.debug_print_spaces.exit70_crit_edge
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168) #14
  br label %do.end44

do.end44:                                         ; preds = %debug_print_spaces.exit70, %do.end27.do.end44_crit_edge
  %and = and i32 %call.i63, %call.i55
  %20 = ptrtoint ptr %saved to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %saved, align 4
  call fastcc void @atom_put_dst(ptr noundef %ctx, i32 noundef %arg, i8 noundef zeroext %7, ptr noundef nonnull %dptr, i32 noundef %and, i32 noundef %21)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dptr) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %saved) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_or(ptr nocapture noundef readonly %ctx, ptr noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  %saved = alloca i32, align 4
  %dptr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %saved) #11
  %8 = ptrtoint ptr %saved to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %saved, align 4, !annotation !1037
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dptr) #11
  %9 = ptrtoint ptr %dptr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %inc, ptr %dptr, align 4
  %10 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

do.end:                                           ; preds = %entry
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %11 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not1.i = icmp eq i32 %11, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %11, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168) #14
  br label %do.end10

do.end10:                                         ; preds = %debug_print_spaces.exit, %entry.do.end10_crit_edge
  %conv.i = zext i8 %7 to i32
  %12 = lshr i32 %conv.i, 3
  %and.i = and i32 %12, 7
  %13 = lshr i32 %conv.i, 6
  %arrayidx4.i = getelementptr [8 x [4 x i32]], ptr @atom_dst_to_src, i32 0, i32 %and.i, i32 %13
  %14 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx4.i, align 4
  %shl.i = shl i32 %15, 3
  %or.i = or i32 %shl.i, %arg
  %conv5.i = trunc i32 %or.i to i8
  %call.i55 = call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %conv5.i, ptr noundef %ptr, ptr noundef nonnull %saved, i32 noundef 1) #11
  %16 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool13.not = icmp eq i32 %16, 0
  br i1 %tobool13.not, label %do.end10.do.end27_crit_edge, label %do.end17

do.end10.do.end27_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end27

do.end17:                                         ; preds = %do.end10
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %17 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not1.i56 = icmp eq i32 %17, 0
  br i1 %tobool.not1.i56, label %do.end17.debug_print_spaces.exit62_crit_edge, label %do.end17.do.end.i61_crit_edge

do.end17.do.end.i61_crit_edge:                    ; preds = %do.end17
  br label %do.end.i61

do.end17.debug_print_spaces.exit62_crit_edge:     ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit62

do.end.i61:                                       ; preds = %do.end.i61.do.end.i61_crit_edge, %do.end17.do.end.i61_crit_edge
  %n.addr.02.i57 = phi i32 [ %dec.i58, %do.end.i61.do.end.i61_crit_edge ], [ %17, %do.end17.do.end.i61_crit_edge ]
  %dec.i58 = add i32 %n.addr.02.i57, -1
  %call.i59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i60 = icmp eq i32 %dec.i58, 0
  br i1 %tobool.not.i60, label %do.end.i61.debug_print_spaces.exit62_crit_edge, label %do.end.i61.do.end.i61_crit_edge

do.end.i61.do.end.i61_crit_edge:                  ; preds = %do.end.i61
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i61

do.end.i61.debug_print_spaces.exit62_crit_edge:   ; preds = %do.end.i61
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit62

debug_print_spaces.exit62:                        ; preds = %do.end.i61.debug_print_spaces.exit62_crit_edge, %do.end17.debug_print_spaces.exit62_crit_edge
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163) #14
  br label %do.end27

do.end27:                                         ; preds = %debug_print_spaces.exit62, %do.end10.do.end27_crit_edge
  %call.i63 = call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %7, ptr noundef %ptr, ptr noundef null, i32 noundef 1) #11
  %18 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool30.not = icmp eq i32 %18, 0
  br i1 %tobool30.not, label %do.end27.do.end44_crit_edge, label %do.end34

do.end27.do.end44_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end44

do.end34:                                         ; preds = %do.end27
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %19 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not1.i64 = icmp eq i32 %19, 0
  br i1 %tobool.not1.i64, label %do.end34.debug_print_spaces.exit70_crit_edge, label %do.end34.do.end.i69_crit_edge

do.end34.do.end.i69_crit_edge:                    ; preds = %do.end34
  br label %do.end.i69

do.end34.debug_print_spaces.exit70_crit_edge:     ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit70

do.end.i69:                                       ; preds = %do.end.i69.do.end.i69_crit_edge, %do.end34.do.end.i69_crit_edge
  %n.addr.02.i65 = phi i32 [ %dec.i66, %do.end.i69.do.end.i69_crit_edge ], [ %19, %do.end34.do.end.i69_crit_edge ]
  %dec.i66 = add i32 %n.addr.02.i65, -1
  %call.i67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i68 = icmp eq i32 %dec.i66, 0
  br i1 %tobool.not.i68, label %do.end.i69.debug_print_spaces.exit70_crit_edge, label %do.end.i69.do.end.i69_crit_edge

do.end.i69.do.end.i69_crit_edge:                  ; preds = %do.end.i69
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i69

do.end.i69.debug_print_spaces.exit70_crit_edge:   ; preds = %do.end.i69
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit70

debug_print_spaces.exit70:                        ; preds = %do.end.i69.debug_print_spaces.exit70_crit_edge, %do.end34.debug_print_spaces.exit70_crit_edge
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168) #14
  br label %do.end44

do.end44:                                         ; preds = %debug_print_spaces.exit70, %do.end27.do.end44_crit_edge
  %or = or i32 %call.i63, %call.i55
  %20 = ptrtoint ptr %saved to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %saved, align 4
  call fastcc void @atom_put_dst(ptr noundef %ctx, i32 noundef %arg, i8 noundef zeroext %7, ptr noundef nonnull %dptr, i32 noundef %or, i32 noundef %21)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dptr) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %saved) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_shift_left(ptr nocapture noundef readonly %ctx, ptr noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  %saved = alloca i32, align 4
  %dptr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %saved) #11
  %8 = ptrtoint ptr %saved to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %saved, align 4, !annotation !1037
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dptr) #11
  %9 = ptrtoint ptr %dptr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %inc, ptr %dptr, align 4
  %10 = and i8 %7, 56
  %11 = lshr exact i8 %10, 3
  %12 = zext i8 %11 to i32
  %arrayidx = getelementptr [8 x i32], ptr @atom_def_dst, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %.tr = trunc i32 %14 to i8
  %15 = shl i8 %.tr, 6
  %conv5 = or i8 %15, %10
  %16 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.end

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end14

do.end:                                           ; preds = %entry
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %17 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not1.i = icmp eq i32 %17, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %17, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168) #14
  br label %do.end14

do.end14:                                         ; preds = %debug_print_spaces.exit, %entry.do.end14_crit_edge
  %conv.i = zext i8 %conv5 to i32
  %18 = lshr exact i32 %conv.i, 3
  %and.i = and i32 %18, 7
  %19 = lshr i32 %conv.i, 6
  %arrayidx4.i = getelementptr [8 x [4 x i32]], ptr @atom_dst_to_src, i32 0, i32 %and.i, i32 %19
  %20 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx4.i, align 4
  %shl.i = shl i32 %21, 3
  %or.i = or i32 %shl.i, %arg
  %conv5.i = trunc i32 %or.i to i8
  %call.i66 = call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %conv5.i, ptr noundef %ptr, ptr noundef nonnull %saved, i32 noundef 1) #11
  %22 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctx, align 4
  %bios10.i = getelementptr inbounds %struct.atom_context, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %bios10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bios10.i, align 4
  %26 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ptr, align 4
  %arrayidx.i.i = getelementptr i8, ptr %25, i32 %27
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i.i, align 1
  %conv12.i = zext i8 %29 to i32
  %inc.i = add i32 %27, 1
  store i32 %inc.i, ptr %ptr, align 4
  %30 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool19.not = icmp eq i32 %30, 0
  br i1 %tobool19.not, label %do.end14.do.end52_crit_edge, label %do.end23

do.end14.do.end52_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end52

do.end23:                                         ; preds = %do.end14
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %31 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not1.i67 = icmp eq i32 %31, 0
  br i1 %tobool.not1.i67, label %do.end23.do.end34_crit_edge, label %do.end23.do.end.i72_crit_edge

do.end23.do.end.i72_crit_edge:                    ; preds = %do.end23
  br label %do.end.i72

do.end23.do.end34_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end34

do.end.i72:                                       ; preds = %do.end.i72.do.end.i72_crit_edge, %do.end23.do.end.i72_crit_edge
  %n.addr.02.i68 = phi i32 [ %dec.i69, %do.end.i72.do.end.i72_crit_edge ], [ %31, %do.end23.do.end.i72_crit_edge ]
  %dec.i69 = add i32 %n.addr.02.i68, -1
  %call.i70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i71 = icmp eq i32 %dec.i69, 0
  br i1 %tobool.not.i71, label %do.end.i72.do.end34_crit_edge, label %do.end.i72.do.end.i72_crit_edge

do.end.i72.do.end.i72_crit_edge:                  ; preds = %do.end.i72
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i72

do.end.i72.do.end34_crit_edge:                    ; preds = %do.end.i72
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end34

do.end34:                                         ; preds = %do.end.i72.do.end34_crit_edge, %do.end23.do.end34_crit_edge
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.315, i32 noundef %conv12.i) #14
  %.pr = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool38.not = icmp eq i32 %.pr, 0
  br i1 %tobool38.not, label %do.end34.do.end52_crit_edge, label %do.end42

do.end34.do.end52_crit_edge:                      ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end52

do.end42:                                         ; preds = %do.end34
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %32 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not1.i74 = icmp eq i32 %32, 0
  br i1 %tobool.not1.i74, label %do.end42.debug_print_spaces.exit80_crit_edge, label %do.end42.do.end.i79_crit_edge

do.end42.do.end.i79_crit_edge:                    ; preds = %do.end42
  br label %do.end.i79

do.end42.debug_print_spaces.exit80_crit_edge:     ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit80

do.end.i79:                                       ; preds = %do.end.i79.do.end.i79_crit_edge, %do.end42.do.end.i79_crit_edge
  %n.addr.02.i75 = phi i32 [ %dec.i76, %do.end.i79.do.end.i79_crit_edge ], [ %32, %do.end42.do.end.i79_crit_edge ]
  %dec.i76 = add i32 %n.addr.02.i75, -1
  %call.i77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i78 = icmp eq i32 %dec.i76, 0
  br i1 %tobool.not.i78, label %do.end.i79.debug_print_spaces.exit80_crit_edge, label %do.end.i79.do.end.i79_crit_edge

do.end.i79.do.end.i79_crit_edge:                  ; preds = %do.end.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i79

do.end.i79.debug_print_spaces.exit80_crit_edge:   ; preds = %do.end.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit80

debug_print_spaces.exit80:                        ; preds = %do.end.i79.debug_print_spaces.exit80_crit_edge, %do.end42.debug_print_spaces.exit80_crit_edge
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168) #14
  br label %do.end52

do.end52:                                         ; preds = %debug_print_spaces.exit80, %do.end34.do.end52_crit_edge, %do.end14.do.end52_crit_edge
  %shl36 = shl i32 %call.i66, %conv12.i
  %33 = ptrtoint ptr %saved to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %saved, align 4
  call fastcc void @atom_put_dst(ptr noundef %ctx, i32 noundef %arg, i8 noundef zeroext %conv5, ptr noundef nonnull %dptr, i32 noundef %shl36, i32 noundef %34)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dptr) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %saved) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_shift_right(ptr nocapture noundef readonly %ctx, ptr noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  %saved = alloca i32, align 4
  %dptr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %saved) #11
  %8 = ptrtoint ptr %saved to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %saved, align 4, !annotation !1037
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dptr) #11
  %9 = ptrtoint ptr %dptr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %inc, ptr %dptr, align 4
  %10 = and i8 %7, 56
  %11 = lshr exact i8 %10, 3
  %12 = zext i8 %11 to i32
  %arrayidx = getelementptr [8 x i32], ptr @atom_def_dst, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %.tr = trunc i32 %14 to i8
  %15 = shl i8 %.tr, 6
  %conv5 = or i8 %15, %10
  %16 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.end

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end14

do.end:                                           ; preds = %entry
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %17 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not1.i = icmp eq i32 %17, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %17, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168) #14
  br label %do.end14

do.end14:                                         ; preds = %debug_print_spaces.exit, %entry.do.end14_crit_edge
  %conv.i = zext i8 %conv5 to i32
  %18 = lshr exact i32 %conv.i, 3
  %and.i = and i32 %18, 7
  %19 = lshr i32 %conv.i, 6
  %arrayidx4.i = getelementptr [8 x [4 x i32]], ptr @atom_dst_to_src, i32 0, i32 %and.i, i32 %19
  %20 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx4.i, align 4
  %shl.i = shl i32 %21, 3
  %or.i = or i32 %shl.i, %arg
  %conv5.i = trunc i32 %or.i to i8
  %call.i66 = call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %conv5.i, ptr noundef %ptr, ptr noundef nonnull %saved, i32 noundef 1) #11
  %22 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctx, align 4
  %bios10.i = getelementptr inbounds %struct.atom_context, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %bios10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bios10.i, align 4
  %26 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ptr, align 4
  %arrayidx.i.i = getelementptr i8, ptr %25, i32 %27
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i.i, align 1
  %conv12.i = zext i8 %29 to i32
  %inc.i = add i32 %27, 1
  store i32 %inc.i, ptr %ptr, align 4
  %30 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool19.not = icmp eq i32 %30, 0
  br i1 %tobool19.not, label %do.end14.do.end52_crit_edge, label %do.end23

do.end14.do.end52_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end52

do.end23:                                         ; preds = %do.end14
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %31 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not1.i67 = icmp eq i32 %31, 0
  br i1 %tobool.not1.i67, label %do.end23.do.end34_crit_edge, label %do.end23.do.end.i72_crit_edge

do.end23.do.end.i72_crit_edge:                    ; preds = %do.end23
  br label %do.end.i72

do.end23.do.end34_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end34

do.end.i72:                                       ; preds = %do.end.i72.do.end.i72_crit_edge, %do.end23.do.end.i72_crit_edge
  %n.addr.02.i68 = phi i32 [ %dec.i69, %do.end.i72.do.end.i72_crit_edge ], [ %31, %do.end23.do.end.i72_crit_edge ]
  %dec.i69 = add i32 %n.addr.02.i68, -1
  %call.i70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i71 = icmp eq i32 %dec.i69, 0
  br i1 %tobool.not.i71, label %do.end.i72.do.end34_crit_edge, label %do.end.i72.do.end.i72_crit_edge

do.end.i72.do.end.i72_crit_edge:                  ; preds = %do.end.i72
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i72

do.end.i72.do.end34_crit_edge:                    ; preds = %do.end.i72
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end34

do.end34:                                         ; preds = %do.end.i72.do.end34_crit_edge, %do.end23.do.end34_crit_edge
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.315, i32 noundef %conv12.i) #14
  %.pr = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool38.not = icmp eq i32 %.pr, 0
  br i1 %tobool38.not, label %do.end34.do.end52_crit_edge, label %do.end42

do.end34.do.end52_crit_edge:                      ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end52

do.end42:                                         ; preds = %do.end34
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %32 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not1.i74 = icmp eq i32 %32, 0
  br i1 %tobool.not1.i74, label %do.end42.debug_print_spaces.exit80_crit_edge, label %do.end42.do.end.i79_crit_edge

do.end42.do.end.i79_crit_edge:                    ; preds = %do.end42
  br label %do.end.i79

do.end42.debug_print_spaces.exit80_crit_edge:     ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit80

do.end.i79:                                       ; preds = %do.end.i79.do.end.i79_crit_edge, %do.end42.do.end.i79_crit_edge
  %n.addr.02.i75 = phi i32 [ %dec.i76, %do.end.i79.do.end.i79_crit_edge ], [ %32, %do.end42.do.end.i79_crit_edge ]
  %dec.i76 = add i32 %n.addr.02.i75, -1
  %call.i77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i78 = icmp eq i32 %dec.i76, 0
  br i1 %tobool.not.i78, label %do.end.i79.debug_print_spaces.exit80_crit_edge, label %do.end.i79.do.end.i79_crit_edge

do.end.i79.do.end.i79_crit_edge:                  ; preds = %do.end.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i79

do.end.i79.debug_print_spaces.exit80_crit_edge:   ; preds = %do.end.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit80

debug_print_spaces.exit80:                        ; preds = %do.end.i79.debug_print_spaces.exit80_crit_edge, %do.end42.debug_print_spaces.exit80_crit_edge
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168) #14
  br label %do.end52

do.end52:                                         ; preds = %debug_print_spaces.exit80, %do.end34.do.end52_crit_edge, %do.end14.do.end52_crit_edge
  %shr36 = lshr i32 %call.i66, %conv12.i
  %33 = ptrtoint ptr %saved to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %saved, align 4
  call fastcc void @atom_put_dst(ptr noundef %ctx, i32 noundef %arg, i8 noundef zeroext %conv5, ptr noundef nonnull %dptr, i32 noundef %shr36, i32 noundef %34)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dptr) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %saved) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_mul(ptr nocapture noundef readonly %ctx, ptr noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %8 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

do.end:                                           ; preds = %entry
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %9 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not1.i = icmp eq i32 %9, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %9, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.334) #14
  br label %do.end10

do.end10:                                         ; preds = %debug_print_spaces.exit, %entry.do.end10_crit_edge
  %conv.i = zext i8 %7 to i32
  %10 = lshr i32 %conv.i, 3
  %and.i = and i32 %10, 7
  %11 = lshr i32 %conv.i, 6
  %arrayidx4.i = getelementptr [8 x [4 x i32]], ptr @atom_dst_to_src, i32 0, i32 %and.i, i32 %11
  %12 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4.i, align 4
  %shl.i = shl i32 %13, 3
  %or.i = or i32 %shl.i, %arg
  %conv5.i = trunc i32 %or.i to i8
  %call.i36 = tail call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %conv5.i, ptr noundef %ptr, ptr noundef null, i32 noundef 1) #11
  %14 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool13.not = icmp eq i32 %14, 0
  br i1 %tobool13.not, label %do.end10.do.end27_crit_edge, label %do.end17

do.end10.do.end27_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end27

do.end17:                                         ; preds = %do.end10
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %15 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not1.i37 = icmp eq i32 %15, 0
  br i1 %tobool.not1.i37, label %do.end17.debug_print_spaces.exit43_crit_edge, label %do.end17.do.end.i42_crit_edge

do.end17.do.end.i42_crit_edge:                    ; preds = %do.end17
  br label %do.end.i42

do.end17.debug_print_spaces.exit43_crit_edge:     ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit43

do.end.i42:                                       ; preds = %do.end.i42.do.end.i42_crit_edge, %do.end17.do.end.i42_crit_edge
  %n.addr.02.i38 = phi i32 [ %dec.i39, %do.end.i42.do.end.i42_crit_edge ], [ %15, %do.end17.do.end.i42_crit_edge ]
  %dec.i39 = add i32 %n.addr.02.i38, -1
  %call.i40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i41 = icmp eq i32 %dec.i39, 0
  br i1 %tobool.not.i41, label %do.end.i42.debug_print_spaces.exit43_crit_edge, label %do.end.i42.do.end.i42_crit_edge

do.end.i42.do.end.i42_crit_edge:                  ; preds = %do.end.i42
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i42

do.end.i42.debug_print_spaces.exit43_crit_edge:   ; preds = %do.end.i42
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit43

debug_print_spaces.exit43:                        ; preds = %do.end.i42.debug_print_spaces.exit43_crit_edge, %do.end17.debug_print_spaces.exit43_crit_edge
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.339) #14
  br label %do.end27

do.end27:                                         ; preds = %debug_print_spaces.exit43, %do.end10.do.end27_crit_edge
  %call.i44 = tail call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %7, ptr noundef %ptr, ptr noundef null, i32 noundef 1) #11
  %mul = mul i32 %call.i44, %call.i36
  %16 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx, align 4
  %divmul = getelementptr inbounds %struct.atom_context, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %divmul to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul, ptr %divmul, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_div(ptr nocapture noundef readonly %ctx, ptr noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %8 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

do.end:                                           ; preds = %entry
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %9 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not1.i = icmp eq i32 %9, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %9, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.334) #14
  br label %do.end10

do.end10:                                         ; preds = %debug_print_spaces.exit, %entry.do.end10_crit_edge
  %conv.i = zext i8 %7 to i32
  %10 = lshr i32 %conv.i, 3
  %and.i = and i32 %10, 7
  %11 = lshr i32 %conv.i, 6
  %arrayidx4.i = getelementptr [8 x [4 x i32]], ptr @atom_dst_to_src, i32 0, i32 %and.i, i32 %11
  %12 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4.i, align 4
  %shl.i = shl i32 %13, 3
  %or.i = or i32 %shl.i, %arg
  %conv5.i = trunc i32 %or.i to i8
  %call.i53 = tail call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %conv5.i, ptr noundef %ptr, ptr noundef null, i32 noundef 1) #11
  %14 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool13.not = icmp eq i32 %14, 0
  br i1 %tobool13.not, label %do.end10.do.end27_crit_edge, label %do.end17

do.end10.do.end27_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end27

do.end17:                                         ; preds = %do.end10
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %15 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not1.i54 = icmp eq i32 %15, 0
  br i1 %tobool.not1.i54, label %do.end17.debug_print_spaces.exit60_crit_edge, label %do.end17.do.end.i59_crit_edge

do.end17.do.end.i59_crit_edge:                    ; preds = %do.end17
  br label %do.end.i59

do.end17.debug_print_spaces.exit60_crit_edge:     ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit60

do.end.i59:                                       ; preds = %do.end.i59.do.end.i59_crit_edge, %do.end17.do.end.i59_crit_edge
  %n.addr.02.i55 = phi i32 [ %dec.i56, %do.end.i59.do.end.i59_crit_edge ], [ %15, %do.end17.do.end.i59_crit_edge ]
  %dec.i56 = add i32 %n.addr.02.i55, -1
  %call.i57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i58 = icmp eq i32 %dec.i56, 0
  br i1 %tobool.not.i58, label %do.end.i59.debug_print_spaces.exit60_crit_edge, label %do.end.i59.do.end.i59_crit_edge

do.end.i59.do.end.i59_crit_edge:                  ; preds = %do.end.i59
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i59

do.end.i59.debug_print_spaces.exit60_crit_edge:   ; preds = %do.end.i59
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit60

debug_print_spaces.exit60:                        ; preds = %do.end.i59.debug_print_spaces.exit60_crit_edge, %do.end17.debug_print_spaces.exit60_crit_edge
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.339) #14
  br label %do.end27

do.end27:                                         ; preds = %debug_print_spaces.exit60, %do.end10.do.end27_crit_edge
  %call.i61 = tail call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %7, ptr noundef %ptr, ptr noundef null, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %cmp.not = icmp eq i32 %call.i61, 0
  br i1 %cmp.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #13
  %call.i53.frozen = freeze i32 %call.i53
  %call.i61.frozen = freeze i32 %call.i61
  %div = udiv i32 %call.i53.frozen, %call.i61.frozen
  %16 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx, align 4
  %divmul = getelementptr inbounds %struct.atom_context, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %divmul to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div, ptr %divmul, align 4
  %19 = mul i32 %div, %call.i61.frozen
  %rem.decomposed = sub i32 %call.i53.frozen, %19
  br label %if.end40

if.else:                                          ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctx, align 4
  %divmul35 = getelementptr inbounds %struct.atom_context, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %divmul35 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %divmul35, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then29
  %.sink = phi i32 [ 0, %if.else ], [ %rem.decomposed, %if.then29 ]
  %23 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctx, align 4
  %arrayidx39 = getelementptr %struct.atom_context, ptr %24, i32 0, i32 9, i32 1
  %25 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink, ptr %arrayidx39, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_add(ptr nocapture noundef readonly %ctx, ptr noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  %saved = alloca i32, align 4
  %dptr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %saved) #11
  %8 = ptrtoint ptr %saved to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %saved, align 4, !annotation !1037
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dptr) #11
  %9 = ptrtoint ptr %dptr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %inc, ptr %dptr, align 4
  %10 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

do.end:                                           ; preds = %entry
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %11 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not1.i = icmp eq i32 %11, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %11, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168) #14
  br label %do.end10

do.end10:                                         ; preds = %debug_print_spaces.exit, %entry.do.end10_crit_edge
  %conv.i = zext i8 %7 to i32
  %12 = lshr i32 %conv.i, 3
  %and.i = and i32 %12, 7
  %13 = lshr i32 %conv.i, 6
  %arrayidx4.i = getelementptr [8 x [4 x i32]], ptr @atom_dst_to_src, i32 0, i32 %and.i, i32 %13
  %14 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx4.i, align 4
  %shl.i = shl i32 %15, 3
  %or.i = or i32 %shl.i, %arg
  %conv5.i = trunc i32 %or.i to i8
  %call.i55 = call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %conv5.i, ptr noundef %ptr, ptr noundef nonnull %saved, i32 noundef 1) #11
  %16 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool13.not = icmp eq i32 %16, 0
  br i1 %tobool13.not, label %do.end10.do.end27_crit_edge, label %do.end17

do.end10.do.end27_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end27

do.end17:                                         ; preds = %do.end10
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %17 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not1.i56 = icmp eq i32 %17, 0
  br i1 %tobool.not1.i56, label %do.end17.debug_print_spaces.exit62_crit_edge, label %do.end17.do.end.i61_crit_edge

do.end17.do.end.i61_crit_edge:                    ; preds = %do.end17
  br label %do.end.i61

do.end17.debug_print_spaces.exit62_crit_edge:     ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit62

do.end.i61:                                       ; preds = %do.end.i61.do.end.i61_crit_edge, %do.end17.do.end.i61_crit_edge
  %n.addr.02.i57 = phi i32 [ %dec.i58, %do.end.i61.do.end.i61_crit_edge ], [ %17, %do.end17.do.end.i61_crit_edge ]
  %dec.i58 = add i32 %n.addr.02.i57, -1
  %call.i59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i60 = icmp eq i32 %dec.i58, 0
  br i1 %tobool.not.i60, label %do.end.i61.debug_print_spaces.exit62_crit_edge, label %do.end.i61.do.end.i61_crit_edge

do.end.i61.do.end.i61_crit_edge:                  ; preds = %do.end.i61
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i61

do.end.i61.debug_print_spaces.exit62_crit_edge:   ; preds = %do.end.i61
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit62

debug_print_spaces.exit62:                        ; preds = %do.end.i61.debug_print_spaces.exit62_crit_edge, %do.end17.debug_print_spaces.exit62_crit_edge
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163) #14
  br label %do.end27

do.end27:                                         ; preds = %debug_print_spaces.exit62, %do.end10.do.end27_crit_edge
  %call.i63 = call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %7, ptr noundef %ptr, ptr noundef null, i32 noundef 1) #11
  %18 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool30.not = icmp eq i32 %18, 0
  br i1 %tobool30.not, label %do.end27.do.end44_crit_edge, label %do.end34

do.end27.do.end44_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end44

do.end34:                                         ; preds = %do.end27
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %19 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not1.i64 = icmp eq i32 %19, 0
  br i1 %tobool.not1.i64, label %do.end34.debug_print_spaces.exit70_crit_edge, label %do.end34.do.end.i69_crit_edge

do.end34.do.end.i69_crit_edge:                    ; preds = %do.end34
  br label %do.end.i69

do.end34.debug_print_spaces.exit70_crit_edge:     ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit70

do.end.i69:                                       ; preds = %do.end.i69.do.end.i69_crit_edge, %do.end34.do.end.i69_crit_edge
  %n.addr.02.i65 = phi i32 [ %dec.i66, %do.end.i69.do.end.i69_crit_edge ], [ %19, %do.end34.do.end.i69_crit_edge ]
  %dec.i66 = add i32 %n.addr.02.i65, -1
  %call.i67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i68 = icmp eq i32 %dec.i66, 0
  br i1 %tobool.not.i68, label %do.end.i69.debug_print_spaces.exit70_crit_edge, label %do.end.i69.do.end.i69_crit_edge

do.end.i69.do.end.i69_crit_edge:                  ; preds = %do.end.i69
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i69

do.end.i69.debug_print_spaces.exit70_crit_edge:   ; preds = %do.end.i69
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit70

debug_print_spaces.exit70:                        ; preds = %do.end.i69.debug_print_spaces.exit70_crit_edge, %do.end34.debug_print_spaces.exit70_crit_edge
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168) #14
  br label %do.end44

do.end44:                                         ; preds = %debug_print_spaces.exit70, %do.end27.do.end44_crit_edge
  %add = add i32 %call.i63, %call.i55
  %20 = ptrtoint ptr %saved to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %saved, align 4
  call fastcc void @atom_put_dst(ptr noundef %ctx, i32 noundef %arg, i8 noundef zeroext %7, ptr noundef nonnull %dptr, i32 noundef %add, i32 noundef %21)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dptr) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %saved) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_sub(ptr nocapture noundef readonly %ctx, ptr noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  %saved = alloca i32, align 4
  %dptr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %saved) #11
  %8 = ptrtoint ptr %saved to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %saved, align 4, !annotation !1037
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dptr) #11
  %9 = ptrtoint ptr %dptr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %inc, ptr %dptr, align 4
  %10 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

do.end:                                           ; preds = %entry
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %11 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not1.i = icmp eq i32 %11, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %11, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168) #14
  br label %do.end10

do.end10:                                         ; preds = %debug_print_spaces.exit, %entry.do.end10_crit_edge
  %conv.i = zext i8 %7 to i32
  %12 = lshr i32 %conv.i, 3
  %and.i = and i32 %12, 7
  %13 = lshr i32 %conv.i, 6
  %arrayidx4.i = getelementptr [8 x [4 x i32]], ptr @atom_dst_to_src, i32 0, i32 %and.i, i32 %13
  %14 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx4.i, align 4
  %shl.i = shl i32 %15, 3
  %or.i = or i32 %shl.i, %arg
  %conv5.i = trunc i32 %or.i to i8
  %call.i55 = call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %conv5.i, ptr noundef %ptr, ptr noundef nonnull %saved, i32 noundef 1) #11
  %16 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool13.not = icmp eq i32 %16, 0
  br i1 %tobool13.not, label %do.end10.do.end27_crit_edge, label %do.end17

do.end10.do.end27_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end27

do.end17:                                         ; preds = %do.end10
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %17 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not1.i56 = icmp eq i32 %17, 0
  br i1 %tobool.not1.i56, label %do.end17.debug_print_spaces.exit62_crit_edge, label %do.end17.do.end.i61_crit_edge

do.end17.do.end.i61_crit_edge:                    ; preds = %do.end17
  br label %do.end.i61

do.end17.debug_print_spaces.exit62_crit_edge:     ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit62

do.end.i61:                                       ; preds = %do.end.i61.do.end.i61_crit_edge, %do.end17.do.end.i61_crit_edge
  %n.addr.02.i57 = phi i32 [ %dec.i58, %do.end.i61.do.end.i61_crit_edge ], [ %17, %do.end17.do.end.i61_crit_edge ]
  %dec.i58 = add i32 %n.addr.02.i57, -1
  %call.i59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i60 = icmp eq i32 %dec.i58, 0
  br i1 %tobool.not.i60, label %do.end.i61.debug_print_spaces.exit62_crit_edge, label %do.end.i61.do.end.i61_crit_edge

do.end.i61.do.end.i61_crit_edge:                  ; preds = %do.end.i61
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i61

do.end.i61.debug_print_spaces.exit62_crit_edge:   ; preds = %do.end.i61
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit62

debug_print_spaces.exit62:                        ; preds = %do.end.i61.debug_print_spaces.exit62_crit_edge, %do.end17.debug_print_spaces.exit62_crit_edge
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163) #14
  br label %do.end27

do.end27:                                         ; preds = %debug_print_spaces.exit62, %do.end10.do.end27_crit_edge
  %call.i63 = call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %7, ptr noundef %ptr, ptr noundef null, i32 noundef 1) #11
  %18 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool30.not = icmp eq i32 %18, 0
  br i1 %tobool30.not, label %do.end27.do.end44_crit_edge, label %do.end34

do.end27.do.end44_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end44

do.end34:                                         ; preds = %do.end27
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %19 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not1.i64 = icmp eq i32 %19, 0
  br i1 %tobool.not1.i64, label %do.end34.debug_print_spaces.exit70_crit_edge, label %do.end34.do.end.i69_crit_edge

do.end34.do.end.i69_crit_edge:                    ; preds = %do.end34
  br label %do.end.i69

do.end34.debug_print_spaces.exit70_crit_edge:     ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit70

do.end.i69:                                       ; preds = %do.end.i69.do.end.i69_crit_edge, %do.end34.do.end.i69_crit_edge
  %n.addr.02.i65 = phi i32 [ %dec.i66, %do.end.i69.do.end.i69_crit_edge ], [ %19, %do.end34.do.end.i69_crit_edge ]
  %dec.i66 = add i32 %n.addr.02.i65, -1
  %call.i67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i68 = icmp eq i32 %dec.i66, 0
  br i1 %tobool.not.i68, label %do.end.i69.debug_print_spaces.exit70_crit_edge, label %do.end.i69.do.end.i69_crit_edge

do.end.i69.do.end.i69_crit_edge:                  ; preds = %do.end.i69
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i69

do.end.i69.debug_print_spaces.exit70_crit_edge:   ; preds = %do.end.i69
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit70

debug_print_spaces.exit70:                        ; preds = %do.end.i69.debug_print_spaces.exit70_crit_edge, %do.end34.debug_print_spaces.exit70_crit_edge
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168) #14
  br label %do.end44

do.end44:                                         ; preds = %debug_print_spaces.exit70, %do.end27.do.end44_crit_edge
  %sub = sub i32 %call.i55, %call.i63
  %20 = ptrtoint ptr %saved to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %saved, align 4
  call fastcc void @atom_put_dst(ptr noundef %ctx, i32 noundef %arg, i8 noundef zeroext %7, ptr noundef nonnull %dptr, i32 noundef %sub, i32 noundef %21)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dptr) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %saved) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_setport(ptr nocapture noundef readonly %ctx, ptr nocapture noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %arg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.608)
  switch i32 %arg, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.epilog.sink.split_crit_edge
    i32 2, label %sw.bb40
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bios, align 4
  %5 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ptr, align 4
  %arrayidx.i.i = getelementptr i8, ptr %4, i32 %6
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i = zext i8 %8 to i16
  %add.i = add i32 %6, 1
  %arrayidx.i7.i = getelementptr i8, ptr %4, i32 %add.i
  %9 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i7.i, align 1
  %conv3.i = zext i8 %10 to i16
  %shl.i = shl nuw i16 %conv3.i, 8
  %or.i = or i16 %shl.i, %conv.i
  %conv = zext i16 %or.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %or.i)
  %cmp = icmp ult i16 %or.i, 5
  %11 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %cmp, label %do.body, label %do.body13

do.body:                                          ; preds = %sw.bb
  br i1 %tobool.not, label %do.body.if.end29_crit_edge, label %do.end

do.body.if.end29_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

do.end:                                           ; preds = %do.body
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %12 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not1.i = icmp eq i32 %12, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %12, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %arrayidx = getelementptr [5 x ptr], ptr @atom_io_names, i32 0, i32 %conv
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.372, i32 noundef %conv, ptr noundef %14) #14
  br label %if.end29

do.body13:                                        ; preds = %sw.bb
  br i1 %tobool.not, label %do.body13.if.else33_crit_edge, label %do.end18

do.body13.if.else33_crit_edge:                    ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else33

do.end18:                                         ; preds = %do.body13
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %15 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not1.i56 = icmp eq i32 %15, 0
  br i1 %tobool.not1.i56, label %do.end18.debug_print_spaces.exit62_crit_edge, label %do.end18.do.end.i61_crit_edge

do.end18.do.end.i61_crit_edge:                    ; preds = %do.end18
  br label %do.end.i61

do.end18.debug_print_spaces.exit62_crit_edge:     ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit62

do.end.i61:                                       ; preds = %do.end.i61.do.end.i61_crit_edge, %do.end18.do.end.i61_crit_edge
  %n.addr.02.i57 = phi i32 [ %dec.i58, %do.end.i61.do.end.i61_crit_edge ], [ %15, %do.end18.do.end.i61_crit_edge ]
  %dec.i58 = add i32 %n.addr.02.i57, -1
  %call.i59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i60 = icmp eq i32 %dec.i58, 0
  br i1 %tobool.not.i60, label %do.end.i61.debug_print_spaces.exit62_crit_edge, label %do.end.i61.do.end.i61_crit_edge

do.end.i61.do.end.i61_crit_edge:                  ; preds = %do.end.i61
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i61

do.end.i61.debug_print_spaces.exit62_crit_edge:   ; preds = %do.end.i61
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit62

debug_print_spaces.exit62:                        ; preds = %do.end.i61.debug_print_spaces.exit62_crit_edge, %do.end18.debug_print_spaces.exit62_crit_edge
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.377, i32 noundef %conv) #14
  br label %if.end29

if.end29:                                         ; preds = %debug_print_spaces.exit62, %debug_print_spaces.exit, %do.body.if.end29_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or.i)
  %tobool30.not = icmp eq i16 %or.i, 0
  br i1 %tobool30.not, label %if.end29.sw.epilog.sink.split_crit_edge, label %if.end29.if.else33_crit_edge

if.end29.if.else33_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else33

if.end29.sw.epilog.sink.split_crit_edge:          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

if.else33:                                        ; preds = %if.end29.if.else33_crit_edge, %do.body13.if.else33_crit_edge
  %or = or i32 %conv, 128
  br label %sw.epilog.sink.split

sw.bb40:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb40, %if.else33, %if.end29.sw.epilog.sink.split_crit_edge, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 2, %sw.bb40 ], [ %or, %if.else33 ], [ 0, %if.end29.sw.epilog.sink.split_crit_edge ], [ %arg, %entry.sw.epilog.sink.split_crit_edge ]
  %.sink64 = phi i32 [ 1, %sw.bb40 ], [ 2, %if.else33 ], [ 2, %if.end29.sw.epilog.sink.split_crit_edge ], [ %arg, %entry.sw.epilog.sink.split_crit_edge ]
  %16 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx, align 4
  %io_mode42 = getelementptr inbounds %struct.atom_context, ptr %17, i32 0, i32 15
  %18 = ptrtoint ptr %io_mode42 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink, ptr %io_mode42, align 4
  %19 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ptr, align 4
  %inc43 = add i32 %20, %.sink64
  store i32 %inc43, ptr %ptr, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_setregblock(ptr nocapture noundef readonly %ctx, ptr nocapture noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %arrayidx.i.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i = zext i8 %7 to i16
  %add.i = add i32 %5, 1
  %arrayidx.i7.i = getelementptr i8, ptr %3, i32 %add.i
  %8 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i7.i, align 1
  %conv3.i = zext i8 %9 to i16
  %shl.i = shl nuw i16 %conv3.i, 8
  %or.i = or i16 %shl.i, %conv.i
  %reg_block = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %reg_block to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %or.i, ptr %reg_block, align 2
  %11 = load i32, ptr %ptr, align 4
  %add = add i32 %11, 2
  store i32 %add, ptr %ptr, align 4
  %12 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %entry.do.end11_crit_edge, label %do.end

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end11

do.end:                                           ; preds = %entry
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %13 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not1.i = icmp eq i32 %13, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %13, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %14 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx, align 4
  %reg_block9 = getelementptr inbounds %struct.atom_context, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %reg_block9 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %reg_block9, align 2
  %conv = zext i16 %17 to i32
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.386, i32 noundef %conv) #14
  br label %do.end11

do.end11:                                         ; preds = %debug_print_spaces.exit, %entry.do.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_setfbbase(ptr nocapture noundef readonly %ctx, ptr noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %8 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

do.end:                                           ; preds = %entry
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %9 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not1.i = icmp eq i32 %9, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %9, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.390) #14
  br label %do.end10

do.end10:                                         ; preds = %debug_print_spaces.exit, %entry.do.end10_crit_edge
  %call.i16 = tail call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %7, ptr noundef %ptr, ptr noundef null, i32 noundef 1) #11
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx, align 4
  %fb_base = getelementptr inbounds %struct.atom_context, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %fb_base to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call.i16, ptr %fb_base, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_compare(ptr nocapture noundef readonly %ctx, ptr noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %8 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

do.end:                                           ; preds = %entry
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %9 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not1.i = icmp eq i32 %9, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %9, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.334) #14
  br label %do.end10

do.end10:                                         ; preds = %debug_print_spaces.exit, %entry.do.end10_crit_edge
  %conv.i = zext i8 %7 to i32
  %10 = lshr i32 %conv.i, 3
  %and.i = and i32 %10, 7
  %11 = lshr i32 %conv.i, 6
  %arrayidx4.i = getelementptr [8 x [4 x i32]], ptr @atom_dst_to_src, i32 0, i32 %and.i, i32 %11
  %12 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4.i, align 4
  %shl.i = shl i32 %13, 3
  %or.i = or i32 %shl.i, %arg
  %conv5.i = trunc i32 %or.i to i8
  %call.i67 = tail call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %conv5.i, ptr noundef %ptr, ptr noundef null, i32 noundef 1) #11
  %14 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool13.not = icmp eq i32 %14, 0
  br i1 %tobool13.not, label %do.end10.do.end27_crit_edge, label %do.end17

do.end10.do.end27_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end27

do.end17:                                         ; preds = %do.end10
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %15 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not1.i68 = icmp eq i32 %15, 0
  br i1 %tobool.not1.i68, label %do.end17.debug_print_spaces.exit74_crit_edge, label %do.end17.do.end.i73_crit_edge

do.end17.do.end.i73_crit_edge:                    ; preds = %do.end17
  br label %do.end.i73

do.end17.debug_print_spaces.exit74_crit_edge:     ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit74

do.end.i73:                                       ; preds = %do.end.i73.do.end.i73_crit_edge, %do.end17.do.end.i73_crit_edge
  %n.addr.02.i69 = phi i32 [ %dec.i70, %do.end.i73.do.end.i73_crit_edge ], [ %15, %do.end17.do.end.i73_crit_edge ]
  %dec.i70 = add i32 %n.addr.02.i69, -1
  %call.i71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i72 = icmp eq i32 %dec.i70, 0
  br i1 %tobool.not.i72, label %do.end.i73.debug_print_spaces.exit74_crit_edge, label %do.end.i73.do.end.i73_crit_edge

do.end.i73.do.end.i73_crit_edge:                  ; preds = %do.end.i73
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i73

do.end.i73.debug_print_spaces.exit74_crit_edge:   ; preds = %do.end.i73
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit74

debug_print_spaces.exit74:                        ; preds = %do.end.i73.debug_print_spaces.exit74_crit_edge, %do.end17.debug_print_spaces.exit74_crit_edge
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.339) #14
  br label %do.end27

do.end27:                                         ; preds = %debug_print_spaces.exit74, %do.end10.do.end27_crit_edge
  %call.i75 = tail call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %7, ptr noundef %ptr, ptr noundef null, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i67, i32 %call.i75)
  %cmp = icmp eq i32 %call.i67, %call.i75
  %conv = zext i1 %cmp to i32
  %16 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx, align 4
  %cs_equal = getelementptr inbounds %struct.atom_context, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %cs_equal to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv, ptr %cs_equal, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i67, i32 %call.i75)
  %cmp30 = icmp ugt i32 %call.i67, %call.i75
  %conv31 = zext i1 %cmp30 to i32
  %19 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctx, align 4
  %cs_above = getelementptr inbounds %struct.atom_context, ptr %20, i32 0, i32 14
  %21 = ptrtoint ptr %cs_above to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv31, ptr %cs_above, align 4
  %22 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool34.not = icmp eq i32 %22, 0
  br i1 %tobool34.not, label %do.end27.do.end55_crit_edge, label %do.end38

do.end27.do.end55_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end55

do.end38:                                         ; preds = %do.end27
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %23 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not1.i76 = icmp eq i32 %23, 0
  br i1 %tobool.not1.i76, label %do.end38.debug_print_spaces.exit82_crit_edge, label %do.end38.do.end.i81_crit_edge

do.end38.do.end.i81_crit_edge:                    ; preds = %do.end38
  br label %do.end.i81

do.end38.debug_print_spaces.exit82_crit_edge:     ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit82

do.end.i81:                                       ; preds = %do.end.i81.do.end.i81_crit_edge, %do.end38.do.end.i81_crit_edge
  %n.addr.02.i77 = phi i32 [ %dec.i78, %do.end.i81.do.end.i81_crit_edge ], [ %23, %do.end38.do.end.i81_crit_edge ]
  %dec.i78 = add i32 %n.addr.02.i77, -1
  %call.i79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i80 = icmp eq i32 %dec.i78, 0
  br i1 %tobool.not.i80, label %do.end.i81.debug_print_spaces.exit82_crit_edge, label %do.end.i81.do.end.i81_crit_edge

do.end.i81.do.end.i81_crit_edge:                  ; preds = %do.end.i81
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i81

do.end.i81.debug_print_spaces.exit82_crit_edge:   ; preds = %do.end.i81
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit82

debug_print_spaces.exit82:                        ; preds = %do.end.i81.debug_print_spaces.exit82_crit_edge, %do.end38.debug_print_spaces.exit82_crit_edge
  %24 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctx, align 4
  %cs_equal46 = getelementptr inbounds %struct.atom_context, ptr %25, i32 0, i32 13
  %26 = ptrtoint ptr %cs_equal46 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cs_equal46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool47.not = icmp eq i32 %27, 0
  %cond = select i1 %tobool47.not, ptr @.str.405, ptr @.str.404
  %cs_above49 = getelementptr inbounds %struct.atom_context, ptr %25, i32 0, i32 14
  %28 = ptrtoint ptr %cs_above49 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cs_above49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool50.not = icmp eq i32 %29, 0
  %cond51 = select i1 %tobool50.not, ptr @.str.407, ptr @.str.406
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.402, ptr noundef nonnull %cond, ptr noundef nonnull %cond51) #14
  br label %do.end55

do.end55:                                         ; preds = %debug_print_spaces.exit82, %do.end27.do.end55_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_switch(ptr nocapture noundef readonly %ctx, ptr noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %8 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

do.end:                                           ; preds = %entry
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %9 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not1.i = icmp eq i32 %9, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %9, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.410) #14
  br label %do.end10

do.end10:                                         ; preds = %debug_print_spaces.exit, %entry.do.end10_crit_edge
  %call.i96 = tail call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %7, ptr noundef %ptr, ptr noundef null, i32 noundef 1) #11
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx, align 4
  %bios13124 = getelementptr inbounds %struct.atom_context, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %bios13124 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bios13124, align 4
  %14 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ptr, align 4
  %arrayidx.i.i125 = getelementptr i8, ptr %13, i32 %15
  %16 = ptrtoint ptr %arrayidx.i.i125 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i.i125, align 1
  %conv.i126 = zext i8 %17 to i16
  %add.i127 = add i32 %15, 1
  %arrayidx.i7.i128 = getelementptr i8, ptr %13, i32 %add.i127
  %18 = ptrtoint ptr %arrayidx.i7.i128 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i7.i128, align 1
  %conv3.i129 = zext i8 %19 to i16
  %shl.i130 = shl nuw i16 %conv3.i129, 8
  %or.i131 = or i16 %shl.i130, %conv.i126
  call void @__sanitizer_cov_trace_const_cmp2(i16 23130, i16 %or.i131)
  %cmp.not132 = icmp eq i16 %or.i131, 23130
  br i1 %cmp.not132, label %do.end10.while.end_crit_edge, label %while.body.lr.ph

do.end10.while.end_crit_edge:                     ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end10
  %20 = and i8 %7, 56
  %21 = or i8 %20, 5
  br label %while.body

while.body:                                       ; preds = %if.end67.while.body_crit_edge, %while.body.lr.ph
  %add.i133 = phi i32 [ %add.i127, %while.body.lr.ph ], [ %add.i, %if.end67.while.body_crit_edge ]
  %22 = phi i8 [ %17, %while.body.lr.ph ], [ %47, %if.end67.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 99, i8 %22)
  %cmp20 = icmp eq i8 %22, 99
  br i1 %cmp20, label %if.then22, label %do.end71

if.then22:                                        ; preds = %while.body
  %23 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add.i133, ptr %ptr, align 4
  %24 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool25.not = icmp eq i32 %24, 0
  br i1 %tobool25.not, label %if.then22.do.end39_crit_edge, label %do.end29

if.then22.do.end39_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end39

do.end29:                                         ; preds = %if.then22
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %25 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not1.i98 = icmp eq i32 %25, 0
  br i1 %tobool.not1.i98, label %do.end29.debug_print_spaces.exit104_crit_edge, label %do.end29.do.end.i103_crit_edge

do.end29.do.end.i103_crit_edge:                   ; preds = %do.end29
  br label %do.end.i103

do.end29.debug_print_spaces.exit104_crit_edge:    ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit104

do.end.i103:                                      ; preds = %do.end.i103.do.end.i103_crit_edge, %do.end29.do.end.i103_crit_edge
  %n.addr.02.i99 = phi i32 [ %dec.i100, %do.end.i103.do.end.i103_crit_edge ], [ %25, %do.end29.do.end.i103_crit_edge ]
  %dec.i100 = add i32 %n.addr.02.i99, -1
  %call.i101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i102 = icmp eq i32 %dec.i100, 0
  br i1 %tobool.not.i102, label %do.end.i103.debug_print_spaces.exit104_crit_edge, label %do.end.i103.do.end.i103_crit_edge

do.end.i103.do.end.i103_crit_edge:                ; preds = %do.end.i103
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i103

do.end.i103.debug_print_spaces.exit104_crit_edge: ; preds = %do.end.i103
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit104

debug_print_spaces.exit104:                       ; preds = %do.end.i103.debug_print_spaces.exit104_crit_edge, %do.end29.debug_print_spaces.exit104_crit_edge
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.415) #14
  br label %do.end39

do.end39:                                         ; preds = %debug_print_spaces.exit104, %if.then22.do.end39_crit_edge
  %call.i105 = tail call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %21, ptr noundef %ptr, ptr noundef null, i32 noundef 1) #11
  %26 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i105, i32 %call.i96)
  %cmp47 = icmp eq i32 %call.i105, %call.i96
  br i1 %cmp47, label %do.body50, label %if.end67

do.body50:                                        ; preds = %do.end39
  %28 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctx, align 4
  %bios44 = getelementptr inbounds %struct.atom_context, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %bios44 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bios44, align 4
  %add.i108 = add i32 %27, 1
  %arrayidx.i7.i109 = getelementptr i8, ptr %31, i32 %add.i108
  %32 = ptrtoint ptr %arrayidx.i7.i109 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i7.i109, align 1
  %arrayidx.i.i106 = getelementptr i8, ptr %31, i32 %27
  %34 = ptrtoint ptr %arrayidx.i.i106 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i.i106, align 1
  %conv.i107.le = zext i8 %35 to i32
  %conv3.i110.le = zext i8 %33 to i32
  %shl.i111.le = shl nuw nsw i32 %conv3.i110.le, 8
  %or.i112.le = or i32 %shl.i111.le, %conv.i107.le
  %36 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool51.not = icmp eq i32 %36, 0
  br i1 %tobool51.not, label %do.body50.do.end65_crit_edge, label %do.end55

do.body50.do.end65_crit_edge:                     ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end65

do.end55:                                         ; preds = %do.body50
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %37 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not1.i113 = icmp eq i32 %37, 0
  br i1 %tobool.not1.i113, label %do.end55.debug_print_spaces.exit119_crit_edge, label %do.end55.do.end.i118_crit_edge

do.end55.do.end.i118_crit_edge:                   ; preds = %do.end55
  br label %do.end.i118

do.end55.debug_print_spaces.exit119_crit_edge:    ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit119

do.end.i118:                                      ; preds = %do.end.i118.do.end.i118_crit_edge, %do.end55.do.end.i118_crit_edge
  %n.addr.02.i114 = phi i32 [ %dec.i115, %do.end.i118.do.end.i118_crit_edge ], [ %37, %do.end55.do.end.i118_crit_edge ]
  %dec.i115 = add i32 %n.addr.02.i114, -1
  %call.i116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i117 = icmp eq i32 %dec.i115, 0
  br i1 %tobool.not.i117, label %do.end.i118.debug_print_spaces.exit119_crit_edge, label %do.end.i118.do.end.i118_crit_edge

do.end.i118.do.end.i118_crit_edge:                ; preds = %do.end.i118
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i118

do.end.i118.debug_print_spaces.exit119_crit_edge: ; preds = %do.end.i118
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit119

debug_print_spaces.exit119:                       ; preds = %do.end.i118.debug_print_spaces.exit119_crit_edge, %do.end55.debug_print_spaces.exit119_crit_edge
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.420, i32 noundef %or.i112.le) #14
  br label %do.end65

do.end65:                                         ; preds = %debug_print_spaces.exit119, %do.body50.do.end65_crit_edge
  %start = getelementptr inbounds %struct.atom_exec_context, ptr %ctx, i32 0, i32 4
  %38 = ptrtoint ptr %start to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %start, align 4
  %conv66 = zext i16 %39 to i32
  %add = add nuw nsw i32 %or.i112.le, %conv66
  %40 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add, ptr %ptr, align 4
  br label %cleanup

if.end67:                                         ; preds = %do.end39
  %add68 = add i32 %27, 2
  %41 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add68, ptr %ptr, align 4
  %42 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ctx, align 4
  %bios13 = getelementptr inbounds %struct.atom_context, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %bios13 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bios13, align 4
  %arrayidx.i.i = getelementptr i8, ptr %45, i32 %add68
  %46 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i = zext i8 %47 to i16
  %add.i = add i32 %27, 3
  %arrayidx.i7.i = getelementptr i8, ptr %45, i32 %add.i
  %48 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.i7.i, align 1
  %conv3.i = zext i8 %49 to i16
  %shl.i = shl nuw i16 %conv3.i, 8
  %or.i = or i16 %shl.i, %conv.i
  %cmp.not = icmp eq i16 %or.i, 23130
  br i1 %cmp.not, label %if.end67.while.end_crit_edge, label %if.end67.while.body_crit_edge

if.end67.while.body_crit_edge:                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end67.while.end_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

do.end71:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.423) #14
  br label %cleanup

while.end:                                        ; preds = %if.end67.while.end_crit_edge, %do.end10.while.end_crit_edge
  %.lcssa = phi i32 [ %15, %do.end10.while.end_crit_edge ], [ %add68, %if.end67.while.end_crit_edge ]
  %add75 = add i32 %.lcssa, 2
  %50 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %add75, ptr %ptr, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end71, %do.end65
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_jump(ptr nocapture noundef %ctx, ptr nocapture noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %arrayidx.i.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i = zext i8 %7 to i32
  %add.i = add i32 %5, 1
  %arrayidx.i7.i = getelementptr i8, ptr %3, i32 %add.i
  %8 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i7.i, align 1
  %conv3.i = zext i8 %9 to i32
  %shl.i = shl nuw nsw i32 %conv3.i, 8
  %or.i = or i32 %shl.i, %conv.i
  %add = add i32 %5, 2
  store i32 %add, ptr %ptr, align 4
  %10 = zext i32 %arg to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.609)
  switch i32 %arg, label %entry.do.body_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %entry.do.body48_crit_edge
    i32 3, label %sw.bb9
    i32 4, label %sw.bb19
    i32 5, label %sw.bb25
    i32 6, label %sw.bb28
  ]

entry.do.body48_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body48

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx, align 4
  %cs_above = getelementptr inbounds %struct.atom_context, ptr %12, i32 0, i32 14
  %13 = ptrtoint ptr %cs_above to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cs_above, align 4
  br label %do.body

sw.bb3:                                           ; preds = %entry
  %15 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctx, align 4
  %cs_above5 = getelementptr inbounds %struct.atom_context, ptr %16, i32 0, i32 14
  %17 = ptrtoint ptr %cs_above5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cs_above5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %lor.rhs, label %sw.bb3.do.body_crit_edge

sw.bb3.do.body_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

lor.rhs:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #13
  %cs_equal = getelementptr inbounds %struct.atom_context, ptr %16, i32 0, i32 13
  %19 = ptrtoint ptr %cs_equal to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cs_equal, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool7 = icmp ne i32 %20, 0
  %phi.cast121 = zext i1 %tobool7 to i32
  br label %do.body

sw.bb9:                                           ; preds = %entry
  %21 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctx, align 4
  %cs_above11 = getelementptr inbounds %struct.atom_context, ptr %22, i32 0, i32 14
  %23 = ptrtoint ptr %cs_above11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cs_above11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool12.not = icmp eq i32 %24, 0
  br i1 %tobool12.not, label %lor.rhs13, label %sw.bb9.do.body_crit_edge

sw.bb9.do.body_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

lor.rhs13:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #13
  %cs_equal15 = getelementptr inbounds %struct.atom_context, ptr %22, i32 0, i32 13
  %25 = ptrtoint ptr %cs_equal15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cs_equal15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool16 = icmp eq i32 %26, 0
  %phi.cast = zext i1 %tobool16 to i32
  br label %do.body

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctx, align 4
  %cs_above21 = getelementptr inbounds %struct.atom_context, ptr %28, i32 0, i32 14
  %29 = ptrtoint ptr %cs_above21 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cs_above21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool22.not = icmp eq i32 %30, 0
  %lnot.ext24 = zext i1 %tobool22.not to i32
  br label %do.body

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ctx, align 4
  %cs_equal27 = getelementptr inbounds %struct.atom_context, ptr %32, i32 0, i32 13
  %33 = ptrtoint ptr %cs_equal27 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cs_equal27, align 4
  br label %do.body

sw.bb28:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ctx, align 4
  %cs_equal30 = getelementptr inbounds %struct.atom_context, ptr %36, i32 0, i32 13
  %37 = ptrtoint ptr %cs_equal30 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cs_equal30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool31.not = icmp eq i32 %38, 0
  %lnot.ext33 = zext i1 %tobool31.not to i32
  br label %do.body

do.body:                                          ; preds = %sw.bb28, %sw.bb25, %sw.bb19, %lor.rhs13, %sw.bb9.do.body_crit_edge, %lor.rhs, %sw.bb3.do.body_crit_edge, %sw.bb, %entry.do.body_crit_edge
  %execute.0.ph = phi i32 [ %phi.cast, %lor.rhs13 ], [ 0, %sw.bb9.do.body_crit_edge ], [ %phi.cast121, %lor.rhs ], [ 1, %sw.bb3.do.body_crit_edge ], [ %14, %sw.bb ], [ %lnot.ext24, %sw.bb19 ], [ %34, %sw.bb25 ], [ %lnot.ext33, %sw.bb28 ], [ 0, %entry.do.body_crit_edge ]
  %39 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool35.not = icmp eq i32 %39, 0
  br i1 %tobool35.not, label %do.body.do.end63_crit_edge, label %do.end

do.body.do.end63_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end63

do.end:                                           ; preds = %do.body
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %40 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not1.i = icmp eq i32 %40, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %40, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %execute.0.ph)
  %tobool43.not = icmp eq i32 %execute.0.ph, 0
  %cond = select i1 %tobool43.not, ptr @.str.430, ptr @.str.429
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.427, ptr noundef nonnull %cond) #14
  br label %do.body48

do.body48:                                        ; preds = %debug_print_spaces.exit, %entry.do.body48_crit_edge
  %execute.0132.ph = phi i32 [ 1, %entry.do.body48_crit_edge ], [ %execute.0.ph, %debug_print_spaces.exit ]
  %.pr = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool49.not = icmp eq i32 %.pr, 0
  br i1 %tobool49.not, label %do.body48.do.end63_crit_edge, label %do.end53

do.body48.do.end63_crit_edge:                     ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end63

do.end53:                                         ; preds = %do.body48
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %41 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not1.i122 = icmp eq i32 %41, 0
  br i1 %tobool.not1.i122, label %do.end53.debug_print_spaces.exit128_crit_edge, label %do.end53.do.end.i127_crit_edge

do.end53.do.end.i127_crit_edge:                   ; preds = %do.end53
  br label %do.end.i127

do.end53.debug_print_spaces.exit128_crit_edge:    ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit128

do.end.i127:                                      ; preds = %do.end.i127.do.end.i127_crit_edge, %do.end53.do.end.i127_crit_edge
  %n.addr.02.i123 = phi i32 [ %dec.i124, %do.end.i127.do.end.i127_crit_edge ], [ %41, %do.end53.do.end.i127_crit_edge ]
  %dec.i124 = add i32 %n.addr.02.i123, -1
  %call.i125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i126 = icmp eq i32 %dec.i124, 0
  br i1 %tobool.not.i126, label %do.end.i127.debug_print_spaces.exit128_crit_edge, label %do.end.i127.do.end.i127_crit_edge

do.end.i127.do.end.i127_crit_edge:                ; preds = %do.end.i127
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i127

do.end.i127.debug_print_spaces.exit128_crit_edge: ; preds = %do.end.i127
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit128

debug_print_spaces.exit128:                       ; preds = %do.end.i127.debug_print_spaces.exit128_crit_edge, %do.end53.debug_print_spaces.exit128_crit_edge
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.434, i32 noundef %or.i) #14
  br label %do.end63

do.end63:                                         ; preds = %debug_print_spaces.exit128, %do.body48.do.end63_crit_edge, %do.body.do.end63_crit_edge
  %execute.0132135 = phi i32 [ %execute.0132.ph, %debug_print_spaces.exit128 ], [ %execute.0132.ph, %do.body48.do.end63_crit_edge ], [ %execute.0.ph, %do.body.do.end63_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %execute.0132135)
  %tobool64.not = icmp eq i32 %execute.0132135, 0
  br i1 %tobool64.not, label %do.end63.if.end93_crit_edge, label %if.then65

do.end63.if.end93_crit_edge:                      ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end93

if.then65:                                        ; preds = %do.end63
  %last_jump = getelementptr inbounds %struct.atom_exec_context, ptr %ctx, i32 0, i32 5
  %42 = ptrtoint ptr %last_jump to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %last_jump, align 4
  %start = getelementptr inbounds %struct.atom_exec_context, ptr %ctx, i32 0, i32 4
  %44 = ptrtoint ptr %start to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %start, align 4
  %conv66 = zext i16 %45 to i32
  %add67 = add nuw nsw i32 %or.i, %conv66
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %add67)
  %cmp68 = icmp eq i32 %43, %add67
  br i1 %cmp68, label %if.then70, label %if.else83

if.then70:                                        ; preds = %if.then65
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %46 = load volatile i32, ptr @jiffies, align 128
  %last_jump_jiffies = getelementptr inbounds %struct.atom_exec_context, ptr %ctx, i32 0, i32 6
  %47 = ptrtoint ptr %last_jump_jiffies to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %last_jump_jiffies, align 4
  %sub = sub i32 %48, %46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp71 = icmp slt i32 %sub, 0
  br i1 %cmp71, label %if.then73, label %if.else

if.then73:                                        ; preds = %if.then70
  %sub75 = sub i32 %46, %48
  %call76 = tail call i32 @jiffies_to_msecs(i32 noundef %sub75) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000, i32 %call76)
  %cmp77 = icmp ugt i32 %call76, 5000
  br i1 %cmp77, label %if.then79, label %if.then73.if.end89_crit_edge

if.then73.if.end89_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89

if.then79:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.436) #11
  %abort = getelementptr inbounds %struct.atom_exec_context, ptr %ctx, i32 0, i32 7
  %49 = ptrtoint ptr %abort to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %abort, align 4
  br label %if.end89

if.else:                                          ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %50 = load volatile i32, ptr @jiffies, align 128
  %51 = ptrtoint ptr %last_jump_jiffies to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %last_jump_jiffies, align 4
  br label %if.end89

if.else83:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %last_jump to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %add67, ptr %last_jump, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %53 = load volatile i32, ptr @jiffies, align 128
  %last_jump_jiffies88 = getelementptr inbounds %struct.atom_exec_context, ptr %ctx, i32 0, i32 6
  %54 = ptrtoint ptr %last_jump_jiffies88 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %last_jump_jiffies88, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.else83, %if.else, %if.then79, %if.then73.if.end89_crit_edge
  %55 = ptrtoint ptr %start to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %start, align 4
  %conv91 = zext i16 %56 to i32
  %add92 = add nuw nsw i32 %or.i, %conv91
  %57 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add92, ptr %ptr, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.end89, %do.end63.if.end93_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_test(ptr nocapture noundef readonly %ctx, ptr noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %8 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

do.end:                                           ; preds = %entry
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %9 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not1.i = icmp eq i32 %9, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %9, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.334) #14
  br label %do.end10

do.end10:                                         ; preds = %debug_print_spaces.exit, %entry.do.end10_crit_edge
  %conv.i = zext i8 %7 to i32
  %10 = lshr i32 %conv.i, 3
  %and.i = and i32 %10, 7
  %11 = lshr i32 %conv.i, 6
  %arrayidx4.i = getelementptr [8 x [4 x i32]], ptr @atom_dst_to_src, i32 0, i32 %and.i, i32 %11
  %12 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4.i, align 4
  %shl.i = shl i32 %13, 3
  %or.i = or i32 %shl.i, %arg
  %conv5.i = trunc i32 %or.i to i8
  %call.i56 = tail call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %conv5.i, ptr noundef %ptr, ptr noundef null, i32 noundef 1) #11
  %14 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool13.not = icmp eq i32 %14, 0
  br i1 %tobool13.not, label %do.end10.do.end27_crit_edge, label %do.end17

do.end10.do.end27_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end27

do.end17:                                         ; preds = %do.end10
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %15 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not1.i57 = icmp eq i32 %15, 0
  br i1 %tobool.not1.i57, label %do.end17.debug_print_spaces.exit63_crit_edge, label %do.end17.do.end.i62_crit_edge

do.end17.do.end.i62_crit_edge:                    ; preds = %do.end17
  br label %do.end.i62

do.end17.debug_print_spaces.exit63_crit_edge:     ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit63

do.end.i62:                                       ; preds = %do.end.i62.do.end.i62_crit_edge, %do.end17.do.end.i62_crit_edge
  %n.addr.02.i58 = phi i32 [ %dec.i59, %do.end.i62.do.end.i62_crit_edge ], [ %15, %do.end17.do.end.i62_crit_edge ]
  %dec.i59 = add i32 %n.addr.02.i58, -1
  %call.i60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i61 = icmp eq i32 %dec.i59, 0
  br i1 %tobool.not.i61, label %do.end.i62.debug_print_spaces.exit63_crit_edge, label %do.end.i62.do.end.i62_crit_edge

do.end.i62.do.end.i62_crit_edge:                  ; preds = %do.end.i62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i62

do.end.i62.debug_print_spaces.exit63_crit_edge:   ; preds = %do.end.i62
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit63

debug_print_spaces.exit63:                        ; preds = %do.end.i62.debug_print_spaces.exit63_crit_edge, %do.end17.debug_print_spaces.exit63_crit_edge
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.339) #14
  br label %do.end27

do.end27:                                         ; preds = %debug_print_spaces.exit63, %do.end10.do.end27_crit_edge
  %call.i64 = tail call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %7, ptr noundef %ptr, ptr noundef null, i32 noundef 1) #11
  %and = and i32 %call.i64, %call.i56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  %conv = zext i1 %cmp to i32
  %16 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx, align 4
  %cs_equal = getelementptr inbounds %struct.atom_context, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %cs_equal to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv, ptr %cs_equal, align 4
  %19 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool31.not = icmp eq i32 %19, 0
  br i1 %tobool31.not, label %do.end27.do.end48_crit_edge, label %do.end35

do.end27.do.end48_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end48

do.end35:                                         ; preds = %do.end27
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %20 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not1.i65 = icmp eq i32 %20, 0
  br i1 %tobool.not1.i65, label %do.end35.debug_print_spaces.exit71_crit_edge, label %do.end35.do.end.i70_crit_edge

do.end35.do.end.i70_crit_edge:                    ; preds = %do.end35
  br label %do.end.i70

do.end35.debug_print_spaces.exit71_crit_edge:     ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit71

do.end.i70:                                       ; preds = %do.end.i70.do.end.i70_crit_edge, %do.end35.do.end.i70_crit_edge
  %n.addr.02.i66 = phi i32 [ %dec.i67, %do.end.i70.do.end.i70_crit_edge ], [ %20, %do.end35.do.end.i70_crit_edge ]
  %dec.i67 = add i32 %n.addr.02.i66, -1
  %call.i68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i69 = icmp eq i32 %dec.i67, 0
  br i1 %tobool.not.i69, label %do.end.i70.debug_print_spaces.exit71_crit_edge, label %do.end.i70.do.end.i70_crit_edge

do.end.i70.do.end.i70_crit_edge:                  ; preds = %do.end.i70
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i70

do.end.i70.debug_print_spaces.exit71_crit_edge:   ; preds = %do.end.i70
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit71

debug_print_spaces.exit71:                        ; preds = %do.end.i70.debug_print_spaces.exit71_crit_edge, %do.end35.debug_print_spaces.exit71_crit_edge
  %21 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctx, align 4
  %cs_equal43 = getelementptr inbounds %struct.atom_context, ptr %22, i32 0, i32 13
  %23 = ptrtoint ptr %cs_equal43 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cs_equal43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool44.not = icmp eq i32 %24, 0
  %cond = select i1 %tobool44.not, ptr @.str.405, ptr @.str.404
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.447, ptr noundef nonnull %cond) #14
  br label %do.end48

do.end48:                                         ; preds = %debug_print_spaces.exit71, %do.end27.do.end48_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_delay(ptr nocapture noundef readonly %ctx, ptr nocapture noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %conv = zext i8 %7 to i32
  %8 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

do.end:                                           ; preds = %entry
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %9 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not1.i = icmp eq i32 %9, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %9, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.451, i32 noundef %conv) #14
  br label %do.end10

do.end10:                                         ; preds = %debug_print_spaces.exit, %entry.do.end10_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %cmp = icmp eq i32 %arg, 0
  br i1 %cmp, label %cond.false16, label %if.else

cond.false16:                                     ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %10(i32 noundef %conv) #11
  br label %if.end41

if.else:                                          ; preds = %do.end10
  %11 = tail call i32 @llvm.read_register.i32(metadata !1026) #11
  %and.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not.i = icmp eq i32 %14, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.else.while.cond.preheader_crit_edge

if.else.while.cond.preheader_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.preheader

lor.lhs.false.i:                                  ; preds = %if.else
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !1038
  %and.i.i = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i54 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i54, label %lor.lhs.false.i.drm_can_sleep.exit_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.drm_can_sleep.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drm_can_sleep.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %16 = tail call i32 @llvm.read_register.i32(metadata !1026) #11
  %and.i35.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i35.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu.i, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @kgdb_active, i32 noundef 4) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kgdb_active to i32))
  %20 = load volatile i32, ptr @kgdb_active, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %20)
  %cmp13.i = icmp eq i32 %19, %20
  br i1 %cmp13.i, label %land.lhs.true.i.while.cond.preheader_crit_edge, label %land.lhs.true.i.drm_can_sleep.exit_crit_edge

land.lhs.true.i.drm_can_sleep.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drm_can_sleep.exit

land.lhs.true.i.while.cond.preheader_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.preheader

drm_can_sleep.exit:                               ; preds = %land.lhs.true.i.drm_can_sleep.exit_crit_edge, %lor.lhs.false.i.drm_can_sleep.exit_crit_edge
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !1038
  %and.i36.i = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36.i)
  %tobool34.not.i = icmp eq i32 %and.i36.i, 0
  br i1 %tobool34.not.i, label %if.else39, label %drm_can_sleep.exit.while.cond.preheader_crit_edge

drm_can_sleep.exit.while.cond.preheader_crit_edge: ; preds = %drm_can_sleep.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %drm_can_sleep.exit.while.cond.preheader_crit_edge, %land.lhs.true.i.while.cond.preheader_crit_edge, %if.else.while.cond.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool37.not56 = icmp eq i8 %7, 0
  br i1 %tobool37.not56, label %while.cond.preheader.if.end41_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.if.end41_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %__ms.057 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %conv, %while.cond.preheader.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.057, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #11
  %tobool37.not = icmp eq i32 %dec, 0
  br i1 %tobool37.not, label %while.body.if.end41_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.if.end41_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.else39:                                        ; preds = %drm_can_sleep.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @msleep(i32 noundef %conv) #11
  br label %if.end41

if.end41:                                         ; preds = %if.else39, %while.body.if.end41_crit_edge, %while.cond.preheader.if.end41_crit_edge, %cond.false16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_calltable(ptr nocapture noundef %ctx, ptr nocapture noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %conv = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 74, i8 %7)
  %cmp = icmp ult i8 %7, 74
  %8 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %cmp, label %do.body, label %do.body13

do.body:                                          ; preds = %entry
  br i1 %tobool.not, label %do.body.if.end29_crit_edge, label %do.end

do.body.if.end29_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

do.end:                                           ; preds = %do.body
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %9 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not1.i = icmp eq i32 %9, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %9, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %arrayidx = getelementptr [74 x ptr], ptr @atom_table_names, i32 0, i32 %conv
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.455, i32 noundef %conv, ptr noundef %11) #14
  br label %if.end29

do.body13:                                        ; preds = %entry
  br i1 %tobool.not, label %do.body13.if.end29_crit_edge, label %do.end18

do.body13.if.end29_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

do.end18:                                         ; preds = %do.body13
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %12 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not1.i54 = icmp eq i32 %12, 0
  br i1 %tobool.not1.i54, label %do.end18.debug_print_spaces.exit60_crit_edge, label %do.end18.do.end.i59_crit_edge

do.end18.do.end.i59_crit_edge:                    ; preds = %do.end18
  br label %do.end.i59

do.end18.debug_print_spaces.exit60_crit_edge:     ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit60

do.end.i59:                                       ; preds = %do.end.i59.do.end.i59_crit_edge, %do.end18.do.end.i59_crit_edge
  %n.addr.02.i55 = phi i32 [ %dec.i56, %do.end.i59.do.end.i59_crit_edge ], [ %12, %do.end18.do.end.i59_crit_edge ]
  %dec.i56 = add i32 %n.addr.02.i55, -1
  %call.i57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i58 = icmp eq i32 %dec.i56, 0
  br i1 %tobool.not.i58, label %do.end.i59.debug_print_spaces.exit60_crit_edge, label %do.end.i59.do.end.i59_crit_edge

do.end.i59.do.end.i59_crit_edge:                  ; preds = %do.end.i59
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i59

do.end.i59.debug_print_spaces.exit60_crit_edge:   ; preds = %do.end.i59
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit60

debug_print_spaces.exit60:                        ; preds = %do.end.i59.debug_print_spaces.exit60_crit_edge, %do.end18.debug_print_spaces.exit60_crit_edge
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.460, i32 noundef %conv) #14
  br label %if.end29

if.end29:                                         ; preds = %debug_print_spaces.exit60, %do.body13.if.end29_crit_edge, %debug_print_spaces.exit, %do.body.if.end29_crit_edge
  %13 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctx, align 4
  %bios31 = getelementptr inbounds %struct.atom_context, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %bios31 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bios31, align 4
  %cmd_table = getelementptr inbounds %struct.atom_context, ptr %14, i32 0, i32 4
  %17 = ptrtoint ptr %cmd_table to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cmd_table, align 4
  %mul = shl nuw nsw i32 %conv, 1
  %add = add nuw nsw i32 %mul, 4
  %add33 = add i32 %add, %18
  %arrayidx.i.i = getelementptr i8, ptr %16, i32 %add33
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i = zext i8 %20 to i16
  %add.i = add i32 %add33, 1
  %arrayidx.i7.i = getelementptr i8, ptr %16, i32 %add.i
  %21 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i7.i, align 1
  %conv3.i = zext i8 %22 to i16
  %shl.i = shl nuw i16 %conv3.i, 8
  %or.i = or i16 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or.i)
  %tobool35.not = icmp eq i16 %or.i, 0
  br i1 %tobool35.not, label %if.end29.if.end42_crit_edge, label %if.then36

if.end29.if.end42_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.then36:                                        ; preds = %if.end29
  %ps = getelementptr inbounds %struct.atom_exec_context, ptr %ctx, i32 0, i32 1
  %23 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ps, align 4
  %ps_shift = getelementptr inbounds %struct.atom_exec_context, ptr %ctx, i32 0, i32 3
  %25 = ptrtoint ptr %ps_shift to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ps_shift, align 4
  %add.ptr = getelementptr i32, ptr %24, i32 %26
  %call38 = tail call fastcc i32 @atom_execute_table_locked(ptr noundef %14, i32 noundef %conv, ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %phi.cmp = icmp eq i32 %call38, 0
  br i1 %phi.cmp, label %if.then36.if.end42_crit_edge, label %if.then41

if.then36.if.end42_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.then41:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #13
  %abort = getelementptr inbounds %struct.atom_exec_context, ptr %ctx, i32 0, i32 7
  %27 = ptrtoint ptr %abort to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %abort, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.then36.if.end42_crit_edge, %if.end29.if.end42_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_repeat(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readnone %ptr, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.536) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_clear(ptr nocapture noundef readonly %ctx, ptr noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  %saved = alloca i32, align 4
  %dptr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %saved) #11
  %8 = ptrtoint ptr %saved to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %saved, align 4, !annotation !1037
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dptr) #11
  %9 = ptrtoint ptr %dptr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %inc, ptr %dptr, align 4
  %10 = and i8 %7, 56
  %11 = lshr exact i8 %10, 3
  %12 = zext i8 %11 to i32
  %arrayidx = getelementptr [8 x i32], ptr @atom_def_dst, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %.tr = trunc i32 %14 to i8
  %15 = shl i8 %.tr, 6
  %conv5 = or i8 %15, %10
  %conv.i = zext i8 %conv5 to i32
  %16 = lshr exact i32 %conv.i, 3
  %and.i = and i32 %16, 7
  %17 = lshr i32 %conv.i, 6
  %arrayidx4.i = getelementptr [8 x [4 x i32]], ptr @atom_dst_to_src, i32 0, i32 %and.i, i32 %17
  %18 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx4.i, align 4
  %shl.i = shl i32 %19, 3
  %or.i = or i32 %shl.i, %arg
  %conv5.i = trunc i32 %or.i to i8
  %call.i = call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %conv5.i, ptr noundef %ptr, ptr noundef nonnull %saved, i32 noundef 0) #11
  %20 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %entry.do.end15_crit_edge, label %do.end

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end15

do.end:                                           ; preds = %entry
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %21 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not1.i = icmp eq i32 %21, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %21, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168) #14
  br label %do.end15

do.end15:                                         ; preds = %debug_print_spaces.exit, %entry.do.end15_crit_edge
  %22 = ptrtoint ptr %saved to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %saved, align 4
  call fastcc void @atom_put_dst(ptr noundef %ctx, i32 noundef %arg, i8 noundef zeroext %conv5, ptr noundef nonnull %dptr, i32 noundef 0, i32 noundef %23)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dptr) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %saved) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @atom_op_nop(ptr nocapture noundef %ctx, ptr nocapture noundef %ptr, i32 noundef %arg) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @atom_op_eot(ptr nocapture noundef %ctx, ptr nocapture noundef %ptr, i32 noundef %arg) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_mask(ptr nocapture noundef readonly %ctx, ptr noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  %saved = alloca i32, align 4
  %dptr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %saved) #11
  %8 = ptrtoint ptr %saved to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %saved, align 4, !annotation !1037
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dptr) #11
  %9 = ptrtoint ptr %dptr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %inc, ptr %dptr, align 4
  %10 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

do.end:                                           ; preds = %entry
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %11 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not1.i = icmp eq i32 %11, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %11, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168) #14
  br label %do.end10

do.end10:                                         ; preds = %debug_print_spaces.exit, %entry.do.end10_crit_edge
  %conv.i = zext i8 %7 to i32
  %12 = lshr i32 %conv.i, 3
  %and.i = and i32 %12, 7
  %13 = lshr i32 %conv.i, 6
  %arrayidx4.i = getelementptr [8 x [4 x i32]], ptr @atom_dst_to_src, i32 0, i32 %and.i, i32 %13
  %14 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx4.i, align 4
  %shl.i = shl i32 %15, 3
  %or.i = or i32 %shl.i, %arg
  %conv5.i = trunc i32 %or.i to i8
  %call.i79 = call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %conv5.i, ptr noundef %ptr, ptr noundef nonnull %saved, i32 noundef 1) #11
  %16 = lshr i8 %7, 3
  %trunc = trunc i8 %16 to i3
  %17 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.610)
  switch i3 %trunc, label %do.end10.unreachabledefault [
    i3 0, label %sw.bb.i
    i3 1, label %do.end10.sw.bb2.i_crit_edge
    i3 2, label %do.end10.sw.bb2.i_crit_edge103
    i3 3, label %do.end10.sw.bb2.i_crit_edge104
    i3 -4, label %do.end10.sw.bb8.i_crit_edge
    i3 -3, label %do.end10.sw.bb8.i_crit_edge105
    i3 -2, label %do.end10.sw.bb8.i_crit_edge106
    i3 -1, label %do.end10.sw.bb8.i_crit_edge107
  ]

do.end10.sw.bb8.i_crit_edge107:                   ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb8.i

do.end10.sw.bb8.i_crit_edge106:                   ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb8.i

do.end10.sw.bb8.i_crit_edge105:                   ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb8.i

do.end10.sw.bb8.i_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb8.i

do.end10.sw.bb2.i_crit_edge104:                   ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2.i

do.end10.sw.bb2.i_crit_edge103:                   ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2.i

do.end10.sw.bb2.i_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2.i

sw.bb.i:                                          ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx, align 4
  %bios.i = getelementptr inbounds %struct.atom_context, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %bios.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bios.i, align 4
  %22 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ptr, align 4
  %arrayidx.i.i.i.i = getelementptr i8, ptr %21, i32 %23
  %24 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %conv.i.i.i = zext i8 %25 to i32
  %add.i.i.i = add i32 %23, 1
  %arrayidx.i7.i.i.i = getelementptr i8, ptr %21, i32 %add.i.i.i
  %26 = ptrtoint ptr %arrayidx.i7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i7.i.i.i, align 1
  %conv3.i.i.i = zext i8 %27 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv3.i.i.i, 8
  %add.i.i = add i32 %23, 2
  %arrayidx.i.i5.i.i = getelementptr i8, ptr %21, i32 %add.i.i
  %28 = ptrtoint ptr %arrayidx.i.i5.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i.i5.i.i, align 1
  %conv.i6.i.i = zext i8 %29 to i32
  %add.i7.i.i = add i32 %23, 3
  %arrayidx.i7.i8.i.i = getelementptr i8, ptr %21, i32 %add.i7.i.i
  %30 = ptrtoint ptr %arrayidx.i7.i8.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i7.i8.i.i, align 1
  %conv3.i9.i.i = zext i8 %31 to i32
  %32 = shl nuw i32 %conv3.i9.i.i, 24
  %33 = shl nuw nsw i32 %conv.i6.i.i, 16
  %shl.i.i = or i32 %shl.i.i.i, %conv.i.i.i
  %or.i.i.i = or i32 %shl.i.i, %33
  %or.i.i = or i32 %or.i.i.i, %32
  %add.i = add i32 %23, 4
  br label %sw.epilog.sink.split.i

sw.bb2.i:                                         ; preds = %do.end10.sw.bb2.i_crit_edge, %do.end10.sw.bb2.i_crit_edge103, %do.end10.sw.bb2.i_crit_edge104
  %34 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ctx, align 4
  %bios4.i = getelementptr inbounds %struct.atom_context, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %bios4.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bios4.i, align 4
  %38 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ptr, align 4
  %arrayidx.i.i.i = getelementptr i8, ptr %37, i32 %39
  %40 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i = zext i8 %41 to i32
  %add.i20.i = add i32 %39, 1
  %arrayidx.i7.i.i = getelementptr i8, ptr %37, i32 %add.i20.i
  %42 = ptrtoint ptr %arrayidx.i7.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i7.i.i, align 1
  %conv3.i.i = zext i8 %43 to i32
  %shl.i21.i = shl nuw nsw i32 %conv3.i.i, 8
  %or.i22.i = or i32 %shl.i21.i, %conv.i.i
  %add7.i = add i32 %39, 2
  br label %sw.epilog.sink.split.i

sw.bb8.i:                                         ; preds = %do.end10.sw.bb8.i_crit_edge, %do.end10.sw.bb8.i_crit_edge105, %do.end10.sw.bb8.i_crit_edge106, %do.end10.sw.bb8.i_crit_edge107
  %44 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ctx, align 4
  %bios10.i = getelementptr inbounds %struct.atom_context, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %bios10.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bios10.i, align 4
  %48 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ptr, align 4
  %arrayidx.i.i = getelementptr i8, ptr %47, i32 %49
  %50 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.i.i, align 1
  %conv12.i = zext i8 %51 to i32
  %inc.i = add i32 %49, 1
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb8.i, %sw.bb2.i, %sw.bb.i
  %inc.sink.i = phi i32 [ %inc.i, %sw.bb8.i ], [ %add7.i, %sw.bb2.i ], [ %add.i, %sw.bb.i ]
  %val.0.ph.i = phi i32 [ %conv12.i, %sw.bb8.i ], [ %or.i22.i, %sw.bb2.i ], [ %or.i.i, %sw.bb.i ]
  %52 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %inc.sink.i, ptr %ptr, align 4
  %53 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool15.not = icmp eq i32 %53, 0
  br i1 %tobool15.not, label %sw.epilog.sink.split.i.do.end45_crit_edge, label %do.end19

sw.epilog.sink.split.i.do.end45_crit_edge:        ; preds = %sw.epilog.sink.split.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end45

do.end10.unreachabledefault:                      ; preds = %do.end10
  unreachable

do.end19:                                         ; preds = %sw.epilog.sink.split.i
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %54 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not1.i80 = icmp eq i32 %54, 0
  br i1 %tobool.not1.i80, label %do.end19.do.body30_crit_edge, label %do.end19.do.end.i85_crit_edge

do.end19.do.end.i85_crit_edge:                    ; preds = %do.end19
  br label %do.end.i85

do.end19.do.body30_crit_edge:                     ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body30

do.end.i85:                                       ; preds = %do.end.i85.do.end.i85_crit_edge, %do.end19.do.end.i85_crit_edge
  %n.addr.02.i81 = phi i32 [ %dec.i82, %do.end.i85.do.end.i85_crit_edge ], [ %54, %do.end19.do.end.i85_crit_edge ]
  %dec.i82 = add i32 %n.addr.02.i81, -1
  %call.i83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i84 = icmp eq i32 %dec.i82, 0
  br i1 %tobool.not.i84, label %do.end.i85.do.body30_crit_edge, label %do.end.i85.do.end.i85_crit_edge

do.end.i85.do.end.i85_crit_edge:                  ; preds = %do.end.i85
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i85

do.end.i85.do.body30_crit_edge:                   ; preds = %do.end.i85
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body30

do.body30:                                        ; preds = %do.end.i85.do.body30_crit_edge, %do.end19.do.body30_crit_edge
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.547, i32 noundef %val.0.ph.i) #14
  %.pr = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool31.not = icmp eq i32 %.pr, 0
  br i1 %tobool31.not, label %do.body30.do.end45_crit_edge, label %do.end35

do.body30.do.end45_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end45

do.end35:                                         ; preds = %do.body30
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %55 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not1.i87 = icmp eq i32 %55, 0
  br i1 %tobool.not1.i87, label %do.end35.debug_print_spaces.exit93_crit_edge, label %do.end35.do.end.i92_crit_edge

do.end35.do.end.i92_crit_edge:                    ; preds = %do.end35
  br label %do.end.i92

do.end35.debug_print_spaces.exit93_crit_edge:     ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit93

do.end.i92:                                       ; preds = %do.end.i92.do.end.i92_crit_edge, %do.end35.do.end.i92_crit_edge
  %n.addr.02.i88 = phi i32 [ %dec.i89, %do.end.i92.do.end.i92_crit_edge ], [ %55, %do.end35.do.end.i92_crit_edge ]
  %dec.i89 = add i32 %n.addr.02.i88, -1
  %call.i90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i91 = icmp eq i32 %dec.i89, 0
  br i1 %tobool.not.i91, label %do.end.i92.debug_print_spaces.exit93_crit_edge, label %do.end.i92.do.end.i92_crit_edge

do.end.i92.do.end.i92_crit_edge:                  ; preds = %do.end.i92
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i92

do.end.i92.debug_print_spaces.exit93_crit_edge:   ; preds = %do.end.i92
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit93

debug_print_spaces.exit93:                        ; preds = %do.end.i92.debug_print_spaces.exit93_crit_edge, %do.end35.debug_print_spaces.exit93_crit_edge
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163) #14
  br label %do.end45

do.end45:                                         ; preds = %debug_print_spaces.exit93, %do.body30.do.end45_crit_edge, %sw.epilog.sink.split.i.do.end45_crit_edge
  %call.i94 = call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %7, ptr noundef %ptr, ptr noundef null, i32 noundef 1) #11
  %56 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool49.not = icmp eq i32 %56, 0
  br i1 %tobool49.not, label %do.end45.do.end63_crit_edge, label %do.end53

do.end45.do.end63_crit_edge:                      ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end63

do.end53:                                         ; preds = %do.end45
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %57 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not1.i95 = icmp eq i32 %57, 0
  br i1 %tobool.not1.i95, label %do.end53.debug_print_spaces.exit101_crit_edge, label %do.end53.do.end.i100_crit_edge

do.end53.do.end.i100_crit_edge:                   ; preds = %do.end53
  br label %do.end.i100

do.end53.debug_print_spaces.exit101_crit_edge:    ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit101

do.end.i100:                                      ; preds = %do.end.i100.do.end.i100_crit_edge, %do.end53.do.end.i100_crit_edge
  %n.addr.02.i96 = phi i32 [ %dec.i97, %do.end.i100.do.end.i100_crit_edge ], [ %57, %do.end53.do.end.i100_crit_edge ]
  %dec.i97 = add i32 %n.addr.02.i96, -1
  %call.i98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i99 = icmp eq i32 %dec.i97, 0
  br i1 %tobool.not.i99, label %do.end.i100.debug_print_spaces.exit101_crit_edge, label %do.end.i100.do.end.i100_crit_edge

do.end.i100.do.end.i100_crit_edge:                ; preds = %do.end.i100
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i100

do.end.i100.debug_print_spaces.exit101_crit_edge: ; preds = %do.end.i100
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit101

debug_print_spaces.exit101:                       ; preds = %do.end.i100.debug_print_spaces.exit101_crit_edge, %do.end53.debug_print_spaces.exit101_crit_edge
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168) #14
  br label %do.end63

do.end63:                                         ; preds = %debug_print_spaces.exit101, %do.end45.do.end63_crit_edge
  %and47 = and i32 %val.0.ph.i, %call.i79
  %or = or i32 %call.i94, %and47
  %58 = ptrtoint ptr %saved to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %saved, align 4
  call fastcc void @atom_put_dst(ptr noundef %ctx, i32 noundef %arg, i8 noundef zeroext %7, ptr noundef nonnull %dptr, i32 noundef %or, i32 noundef %59)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dptr) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %saved) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_postcard(ptr nocapture noundef readonly %ctx, ptr nocapture noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %8 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

do.end:                                           ; preds = %entry
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %9 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not1.i = icmp eq i32 %9, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %9, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %conv = zext i8 %7 to i32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.559, i32 noundef %conv) #14
  br label %do.end10

do.end10:                                         ; preds = %debug_print_spaces.exit, %entry.do.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_beep(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readnone %ptr, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.561) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_savereg(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readnone %ptr, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.536) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_restorereg(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readnone %ptr, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.536) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_setdatablock(ptr nocapture noundef readonly %ctx, ptr nocapture noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %conv = zext i8 %7 to i32
  %inc = add i32 %5, 1
  store i32 %inc, ptr %ptr, align 4
  %8 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

do.end:                                           ; preds = %entry
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %9 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not1.i = icmp eq i32 %9, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %9, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.567, i32 noundef %conv) #14
  br label %do.end10

do.end10:                                         ; preds = %debug_print_spaces.exit, %entry.do.end10_crit_edge
  %10 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.611)
  switch i8 %7, label %if.else18 [
    i8 0, label %if.then12
    i8 -1, label %if.then15
  ]

if.then12:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx, align 4
  br label %do.body28

if.then15:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  %start = getelementptr inbounds %struct.atom_exec_context, ptr %ctx, i32 0, i32 4
  %13 = ptrtoint ptr %start to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %start, align 4
  %15 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctx, align 4
  br label %do.body28

if.else18:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctx, align 4
  %bios20 = getelementptr inbounds %struct.atom_context, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %bios20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bios20, align 4
  %data_table = getelementptr inbounds %struct.atom_context, ptr %18, i32 0, i32 5
  %21 = ptrtoint ptr %data_table to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_table, align 4
  %mul = shl nuw nsw i32 %conv, 1
  %add = add nuw nsw i32 %mul, 4
  %add22 = add i32 %add, %22
  %arrayidx.i.i = getelementptr i8, ptr %20, i32 %add22
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i = zext i8 %24 to i16
  %add.i = add i32 %add22, 1
  %arrayidx.i7.i = getelementptr i8, ptr %20, i32 %add.i
  %25 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i7.i, align 1
  %conv3.i = zext i8 %26 to i16
  %shl.i = shl nuw i16 %conv3.i, 8
  %or.i = or i16 %shl.i, %conv.i
  br label %do.body28

do.body28:                                        ; preds = %if.else18, %if.then15, %if.then12
  %.sink65 = phi ptr [ %12, %if.then12 ], [ %18, %if.else18 ], [ %16, %if.then15 ]
  %.sink = phi i16 [ 0, %if.then12 ], [ %or.i, %if.else18 ], [ %14, %if.then15 ]
  %data_block = getelementptr inbounds %struct.atom_context, ptr %.sink65, i32 0, i32 7
  %27 = ptrtoint ptr %data_block to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %.sink, ptr %data_block, align 4
  %28 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool29.not = icmp eq i32 %28, 0
  br i1 %tobool29.not, label %do.body28.do.end46_crit_edge, label %do.end33

do.body28.do.end46_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end46

do.end33:                                         ; preds = %do.body28
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %29 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not1.i58 = icmp eq i32 %29, 0
  br i1 %tobool.not1.i58, label %do.end33.debug_print_spaces.exit64_crit_edge, label %do.end33.do.end.i63_crit_edge

do.end33.do.end.i63_crit_edge:                    ; preds = %do.end33
  br label %do.end.i63

do.end33.debug_print_spaces.exit64_crit_edge:     ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit64

do.end.i63:                                       ; preds = %do.end.i63.do.end.i63_crit_edge, %do.end33.do.end.i63_crit_edge
  %n.addr.02.i59 = phi i32 [ %dec.i60, %do.end.i63.do.end.i63_crit_edge ], [ %29, %do.end33.do.end.i63_crit_edge ]
  %dec.i60 = add i32 %n.addr.02.i59, -1
  %call.i61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i62 = icmp eq i32 %dec.i60, 0
  br i1 %tobool.not.i62, label %do.end.i63.debug_print_spaces.exit64_crit_edge, label %do.end.i63.do.end.i63_crit_edge

do.end.i63.do.end.i63_crit_edge:                  ; preds = %do.end.i63
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i63

do.end.i63.debug_print_spaces.exit64_crit_edge:   ; preds = %do.end.i63
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit64

debug_print_spaces.exit64:                        ; preds = %do.end.i63.debug_print_spaces.exit64_crit_edge, %do.end33.debug_print_spaces.exit64_crit_edge
  %30 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctx, align 4
  %data_block41 = getelementptr inbounds %struct.atom_context, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %data_block41 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %data_block41, align 4
  %conv42 = zext i16 %33 to i32
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.386, i32 noundef %conv42) #14
  br label %do.end46

do.end46:                                         ; preds = %debug_print_spaces.exit64, %do.body28.do.end46_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_xor(ptr nocapture noundef readonly %ctx, ptr noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  %saved = alloca i32, align 4
  %dptr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %saved) #11
  %8 = ptrtoint ptr %saved to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %saved, align 4, !annotation !1037
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dptr) #11
  %9 = ptrtoint ptr %dptr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %inc, ptr %dptr, align 4
  %10 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

do.end:                                           ; preds = %entry
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %11 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not1.i = icmp eq i32 %11, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %11, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168) #14
  br label %do.end10

do.end10:                                         ; preds = %debug_print_spaces.exit, %entry.do.end10_crit_edge
  %conv.i = zext i8 %7 to i32
  %12 = lshr i32 %conv.i, 3
  %and.i = and i32 %12, 7
  %13 = lshr i32 %conv.i, 6
  %arrayidx4.i = getelementptr [8 x [4 x i32]], ptr @atom_dst_to_src, i32 0, i32 %and.i, i32 %13
  %14 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx4.i, align 4
  %shl.i = shl i32 %15, 3
  %or.i = or i32 %shl.i, %arg
  %conv5.i = trunc i32 %or.i to i8
  %call.i55 = call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %conv5.i, ptr noundef %ptr, ptr noundef nonnull %saved, i32 noundef 1) #11
  %16 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool13.not = icmp eq i32 %16, 0
  br i1 %tobool13.not, label %do.end10.do.end27_crit_edge, label %do.end17

do.end10.do.end27_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end27

do.end17:                                         ; preds = %do.end10
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %17 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not1.i56 = icmp eq i32 %17, 0
  br i1 %tobool.not1.i56, label %do.end17.debug_print_spaces.exit62_crit_edge, label %do.end17.do.end.i61_crit_edge

do.end17.do.end.i61_crit_edge:                    ; preds = %do.end17
  br label %do.end.i61

do.end17.debug_print_spaces.exit62_crit_edge:     ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit62

do.end.i61:                                       ; preds = %do.end.i61.do.end.i61_crit_edge, %do.end17.do.end.i61_crit_edge
  %n.addr.02.i57 = phi i32 [ %dec.i58, %do.end.i61.do.end.i61_crit_edge ], [ %17, %do.end17.do.end.i61_crit_edge ]
  %dec.i58 = add i32 %n.addr.02.i57, -1
  %call.i59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i60 = icmp eq i32 %dec.i58, 0
  br i1 %tobool.not.i60, label %do.end.i61.debug_print_spaces.exit62_crit_edge, label %do.end.i61.do.end.i61_crit_edge

do.end.i61.do.end.i61_crit_edge:                  ; preds = %do.end.i61
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i61

do.end.i61.debug_print_spaces.exit62_crit_edge:   ; preds = %do.end.i61
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit62

debug_print_spaces.exit62:                        ; preds = %do.end.i61.debug_print_spaces.exit62_crit_edge, %do.end17.debug_print_spaces.exit62_crit_edge
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163) #14
  br label %do.end27

do.end27:                                         ; preds = %debug_print_spaces.exit62, %do.end10.do.end27_crit_edge
  %call.i63 = call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %7, ptr noundef %ptr, ptr noundef null, i32 noundef 1) #11
  %18 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool30.not = icmp eq i32 %18, 0
  br i1 %tobool30.not, label %do.end27.do.end44_crit_edge, label %do.end34

do.end27.do.end44_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end44

do.end34:                                         ; preds = %do.end27
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %19 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not1.i64 = icmp eq i32 %19, 0
  br i1 %tobool.not1.i64, label %do.end34.debug_print_spaces.exit70_crit_edge, label %do.end34.do.end.i69_crit_edge

do.end34.do.end.i69_crit_edge:                    ; preds = %do.end34
  br label %do.end.i69

do.end34.debug_print_spaces.exit70_crit_edge:     ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit70

do.end.i69:                                       ; preds = %do.end.i69.do.end.i69_crit_edge, %do.end34.do.end.i69_crit_edge
  %n.addr.02.i65 = phi i32 [ %dec.i66, %do.end.i69.do.end.i69_crit_edge ], [ %19, %do.end34.do.end.i69_crit_edge ]
  %dec.i66 = add i32 %n.addr.02.i65, -1
  %call.i67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i68 = icmp eq i32 %dec.i66, 0
  br i1 %tobool.not.i68, label %do.end.i69.debug_print_spaces.exit70_crit_edge, label %do.end.i69.do.end.i69_crit_edge

do.end.i69.do.end.i69_crit_edge:                  ; preds = %do.end.i69
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i69

do.end.i69.debug_print_spaces.exit70_crit_edge:   ; preds = %do.end.i69
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit70

debug_print_spaces.exit70:                        ; preds = %do.end.i69.debug_print_spaces.exit70_crit_edge, %do.end34.debug_print_spaces.exit70_crit_edge
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168) #14
  br label %do.end44

do.end44:                                         ; preds = %debug_print_spaces.exit70, %do.end27.do.end44_crit_edge
  %xor = xor i32 %call.i63, %call.i55
  %20 = ptrtoint ptr %saved to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %saved, align 4
  call fastcc void @atom_put_dst(ptr noundef %ctx, i32 noundef %arg, i8 noundef zeroext %7, ptr noundef nonnull %dptr, i32 noundef %xor, i32 noundef %21)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dptr) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %saved) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_shl(ptr nocapture noundef readonly %ctx, ptr noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  %saved = alloca i32, align 4
  %dptr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %saved) #11
  %8 = ptrtoint ptr %saved to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %saved, align 4, !annotation !1037
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dptr) #11
  %9 = ptrtoint ptr %dptr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %inc, ptr %dptr, align 4
  %conv = zext i8 %7 to i32
  %10 = lshr i32 %conv, 3
  %and = and i32 %10, 7
  %11 = lshr i32 %conv, 6
  %arrayidx5 = getelementptr [8 x [4 x i32]], ptr @atom_dst_to_src, i32 0, i32 %and, i32 %11
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx5, align 4
  %14 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.end

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end14

do.end:                                           ; preds = %entry
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %15 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not1.i = icmp eq i32 %15, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %15, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168) #14
  br label %do.end14

do.end14:                                         ; preds = %debug_print_spaces.exit, %entry.do.end14_crit_edge
  %shl.i = shl i32 %13, 3
  %or.i = or i32 %shl.i, %arg
  %conv5.i = trunc i32 %or.i to i8
  %call.i72 = call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %conv5.i, ptr noundef %ptr, ptr noundef nonnull %saved, i32 noundef 1) #11
  %16 = ptrtoint ptr %saved to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %saved, align 4
  %call.i73 = call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %7, ptr noundef %ptr, ptr noundef null, i32 noundef 1) #11
  %18 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool19.not = icmp eq i32 %18, 0
  br i1 %tobool19.not, label %do.end34.thread, label %do.end23

do.end34.thread:                                  ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx3688 = getelementptr [8 x i32], ptr @atom_arg_mask, i32 0, i32 %13
  %19 = ptrtoint ptr %arrayidx3688 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx3688, align 4
  %arrayidx3889 = getelementptr [8 x i32], ptr @atom_arg_shift, i32 0, i32 %13
  %21 = ptrtoint ptr %arrayidx3889 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx3889, align 4
  %.pre = and i32 %call.i73, 255
  br label %do.end55

do.end23:                                         ; preds = %do.end14
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %23 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not1.i74 = icmp eq i32 %23, 0
  br i1 %tobool.not1.i74, label %do.end23.do.end34_crit_edge, label %do.end23.do.end.i79_crit_edge

do.end23.do.end.i79_crit_edge:                    ; preds = %do.end23
  br label %do.end.i79

do.end23.do.end34_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end34

do.end.i79:                                       ; preds = %do.end.i79.do.end.i79_crit_edge, %do.end23.do.end.i79_crit_edge
  %n.addr.02.i75 = phi i32 [ %dec.i76, %do.end.i79.do.end.i79_crit_edge ], [ %23, %do.end23.do.end.i79_crit_edge ]
  %dec.i76 = add i32 %n.addr.02.i75, -1
  %call.i77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i78 = icmp eq i32 %dec.i76, 0
  br i1 %tobool.not.i78, label %do.end.i79.do.end34_crit_edge, label %do.end.i79.do.end.i79_crit_edge

do.end.i79.do.end.i79_crit_edge:                  ; preds = %do.end.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i79

do.end.i79.do.end34_crit_edge:                    ; preds = %do.end.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end34

do.end34:                                         ; preds = %do.end.i79.do.end34_crit_edge, %do.end23.do.end34_crit_edge
  %conv30 = and i32 %call.i73, 255
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.315, i32 noundef %conv30) #14
  %.pr = load i32, ptr @atom_debug, align 4
  %arrayidx36 = getelementptr [8 x i32], ptr @atom_arg_mask, i32 0, i32 %13
  %24 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx36, align 4
  %arrayidx38 = getelementptr [8 x i32], ptr @atom_arg_shift, i32 0, i32 %13
  %26 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool41.not = icmp eq i32 %.pr, 0
  br i1 %tobool41.not, label %do.end34.do.end55_crit_edge, label %do.end45

do.end34.do.end55_crit_edge:                      ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end55

do.end45:                                         ; preds = %do.end34
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %28 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not1.i81 = icmp eq i32 %28, 0
  br i1 %tobool.not1.i81, label %do.end45.debug_print_spaces.exit87_crit_edge, label %do.end45.do.end.i86_crit_edge

do.end45.do.end.i86_crit_edge:                    ; preds = %do.end45
  br label %do.end.i86

do.end45.debug_print_spaces.exit87_crit_edge:     ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit87

do.end.i86:                                       ; preds = %do.end.i86.do.end.i86_crit_edge, %do.end45.do.end.i86_crit_edge
  %n.addr.02.i82 = phi i32 [ %dec.i83, %do.end.i86.do.end.i86_crit_edge ], [ %28, %do.end45.do.end.i86_crit_edge ]
  %dec.i83 = add i32 %n.addr.02.i82, -1
  %call.i84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i85 = icmp eq i32 %dec.i83, 0
  br i1 %tobool.not.i85, label %do.end.i86.debug_print_spaces.exit87_crit_edge, label %do.end.i86.do.end.i86_crit_edge

do.end.i86.do.end.i86_crit_edge:                  ; preds = %do.end.i86
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i86

do.end.i86.debug_print_spaces.exit87_crit_edge:   ; preds = %do.end.i86
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit87

debug_print_spaces.exit87:                        ; preds = %do.end.i86.debug_print_spaces.exit87_crit_edge, %do.end45.debug_print_spaces.exit87_crit_edge
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168) #14
  br label %do.end55

do.end55:                                         ; preds = %debug_print_spaces.exit87, %do.end34.do.end55_crit_edge, %do.end34.thread
  %conv35.pre-phi = phi i32 [ %.pre, %do.end34.thread ], [ %conv30, %debug_print_spaces.exit87 ], [ %conv30, %do.end34.do.end55_crit_edge ]
  %29 = phi i32 [ %22, %do.end34.thread ], [ %27, %debug_print_spaces.exit87 ], [ %27, %do.end34.do.end55_crit_edge ]
  %30 = phi i32 [ %20, %do.end34.thread ], [ %25, %debug_print_spaces.exit87 ], [ %25, %do.end34.do.end55_crit_edge ]
  %shl = shl i32 %17, %conv35.pre-phi
  %and37 = and i32 %30, %shl
  %shr39 = lshr i32 %and37, %29
  %31 = ptrtoint ptr %saved to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %saved, align 4
  call fastcc void @atom_put_dst(ptr noundef %ctx, i32 noundef %arg, i8 noundef zeroext %7, ptr noundef nonnull %dptr, i32 noundef %shr39, i32 noundef %32)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dptr) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %saved) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_shr(ptr nocapture noundef readonly %ctx, ptr noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  %saved = alloca i32, align 4
  %dptr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %saved) #11
  %8 = ptrtoint ptr %saved to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %saved, align 4, !annotation !1037
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dptr) #11
  %9 = ptrtoint ptr %dptr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %inc, ptr %dptr, align 4
  %conv = zext i8 %7 to i32
  %10 = lshr i32 %conv, 3
  %and = and i32 %10, 7
  %11 = lshr i32 %conv, 6
  %arrayidx5 = getelementptr [8 x [4 x i32]], ptr @atom_dst_to_src, i32 0, i32 %and, i32 %11
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx5, align 4
  %14 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.end

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end14

do.end:                                           ; preds = %entry
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %15 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not1.i = icmp eq i32 %15, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %15, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168) #14
  br label %do.end14

do.end14:                                         ; preds = %debug_print_spaces.exit, %entry.do.end14_crit_edge
  %shl.i = shl i32 %13, 3
  %or.i = or i32 %shl.i, %arg
  %conv5.i = trunc i32 %or.i to i8
  %call.i73 = call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %conv5.i, ptr noundef %ptr, ptr noundef nonnull %saved, i32 noundef 1) #11
  %16 = ptrtoint ptr %saved to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %saved, align 4
  %call.i74 = call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %7, ptr noundef %ptr, ptr noundef null, i32 noundef 1) #11
  %18 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool19.not = icmp eq i32 %18, 0
  br i1 %tobool19.not, label %do.end34.thread, label %do.end23

do.end34.thread:                                  ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx3789 = getelementptr [8 x i32], ptr @atom_arg_mask, i32 0, i32 %13
  %19 = ptrtoint ptr %arrayidx3789 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx3789, align 4
  %arrayidx3990 = getelementptr [8 x i32], ptr @atom_arg_shift, i32 0, i32 %13
  %21 = ptrtoint ptr %arrayidx3990 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx3990, align 4
  %.pre = and i32 %call.i74, 255
  br label %do.end56

do.end23:                                         ; preds = %do.end14
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %23 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not1.i75 = icmp eq i32 %23, 0
  br i1 %tobool.not1.i75, label %do.end23.do.end34_crit_edge, label %do.end23.do.end.i80_crit_edge

do.end23.do.end.i80_crit_edge:                    ; preds = %do.end23
  br label %do.end.i80

do.end23.do.end34_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end34

do.end.i80:                                       ; preds = %do.end.i80.do.end.i80_crit_edge, %do.end23.do.end.i80_crit_edge
  %n.addr.02.i76 = phi i32 [ %dec.i77, %do.end.i80.do.end.i80_crit_edge ], [ %23, %do.end23.do.end.i80_crit_edge ]
  %dec.i77 = add i32 %n.addr.02.i76, -1
  %call.i78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i79 = icmp eq i32 %dec.i77, 0
  br i1 %tobool.not.i79, label %do.end.i80.do.end34_crit_edge, label %do.end.i80.do.end.i80_crit_edge

do.end.i80.do.end.i80_crit_edge:                  ; preds = %do.end.i80
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i80

do.end.i80.do.end34_crit_edge:                    ; preds = %do.end.i80
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end34

do.end34:                                         ; preds = %do.end.i80.do.end34_crit_edge, %do.end23.do.end34_crit_edge
  %conv30 = and i32 %call.i74, 255
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.315, i32 noundef %conv30) #14
  %.pr = load i32, ptr @atom_debug, align 4
  %arrayidx37 = getelementptr [8 x i32], ptr @atom_arg_mask, i32 0, i32 %13
  %24 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx37, align 4
  %arrayidx39 = getelementptr [8 x i32], ptr @atom_arg_shift, i32 0, i32 %13
  %26 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool42.not = icmp eq i32 %.pr, 0
  br i1 %tobool42.not, label %do.end34.do.end56_crit_edge, label %do.end46

do.end34.do.end56_crit_edge:                      ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end56

do.end46:                                         ; preds = %do.end34
  %call48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  %28 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not1.i82 = icmp eq i32 %28, 0
  br i1 %tobool.not1.i82, label %do.end46.debug_print_spaces.exit88_crit_edge, label %do.end46.do.end.i87_crit_edge

do.end46.do.end.i87_crit_edge:                    ; preds = %do.end46
  br label %do.end.i87

do.end46.debug_print_spaces.exit88_crit_edge:     ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit88

do.end.i87:                                       ; preds = %do.end.i87.do.end.i87_crit_edge, %do.end46.do.end.i87_crit_edge
  %n.addr.02.i83 = phi i32 [ %dec.i84, %do.end.i87.do.end.i87_crit_edge ], [ %28, %do.end46.do.end.i87_crit_edge ]
  %dec.i84 = add i32 %n.addr.02.i83, -1
  %call.i85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  %tobool.not.i86 = icmp eq i32 %dec.i84, 0
  br i1 %tobool.not.i86, label %do.end.i87.debug_print_spaces.exit88_crit_edge, label %do.end.i87.do.end.i87_crit_edge

do.end.i87.do.end.i87_crit_edge:                  ; preds = %do.end.i87
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i87

do.end.i87.debug_print_spaces.exit88_crit_edge:   ; preds = %do.end.i87
  call void @__sanitizer_cov_trace_pc() #13
  br label %debug_print_spaces.exit88

debug_print_spaces.exit88:                        ; preds = %do.end.i87.debug_print_spaces.exit88_crit_edge, %do.end46.debug_print_spaces.exit88_crit_edge
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168) #14
  br label %do.end56

do.end56:                                         ; preds = %debug_print_spaces.exit88, %do.end34.do.end56_crit_edge, %do.end34.thread
  %conv35.pre-phi = phi i32 [ %.pre, %do.end34.thread ], [ %conv30, %debug_print_spaces.exit88 ], [ %conv30, %do.end34.do.end56_crit_edge ]
  %29 = phi i32 [ %22, %do.end34.thread ], [ %27, %debug_print_spaces.exit88 ], [ %27, %do.end34.do.end56_crit_edge ]
  %30 = phi i32 [ %20, %do.end34.thread ], [ %25, %debug_print_spaces.exit88 ], [ %25, %do.end34.do.end56_crit_edge ]
  %shr36 = lshr i32 %17, %conv35.pre-phi
  %and38 = and i32 %30, %shr36
  %shr40 = lshr i32 %and38, %29
  %31 = ptrtoint ptr %saved to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %saved, align 4
  call fastcc void @atom_put_dst(ptr noundef %ctx, i32 noundef %arg, i8 noundef zeroext %7, ptr noundef nonnull %dptr, i32 noundef %shr40, i32 noundef %32)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dptr) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %saved) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_debug(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readnone %ptr, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.536) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atom_put_dst(ptr nocapture noundef readonly %ctx, i32 noundef %arg, i8 noundef zeroext %attr, ptr nocapture noundef %ptr, i32 noundef %val, i32 noundef %saved) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %attr to i32
  %0 = lshr i32 %conv, 3
  %and = and i32 %0, 7
  %1 = lshr i32 %conv, 6
  %arrayidx4 = getelementptr [8 x [4 x i32]], ptr @atom_dst_to_src, i32 0, i32 %and, i32 %1
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx4, align 4
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %arrayidx6 = getelementptr [8 x i32], ptr @atom_arg_mask, i32 0, i32 %3
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx6, align 4
  %arrayidx7 = getelementptr [8 x i32], ptr @atom_arg_shift, i32 0, i32 %3
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx7, align 4
  %shr8 = lshr i32 %7, %9
  %and9 = and i32 %shr8, %val
  %shl = shl i32 %val, %9
  %and12 = and i32 %shl, %7
  %neg = xor i32 %7, -1
  %and14 = and i32 %neg, %saved
  %or = or i32 %and12, %and14
  %10 = zext i32 %arg to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.612)
  switch i32 %arg, label %entry.sw.epilog195_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb73
    i32 2, label %sw.bb90
    i32 3, label %sw.bb126
    i32 6, label %sw.bb157
    i32 7, label %sw.bb176
  ]

entry.sw.epilog195_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog195

sw.bb:                                            ; preds = %entry
  %bios = getelementptr inbounds %struct.atom_context, ptr %5, i32 0, i32 3
  %11 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bios, align 4
  %13 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ptr, align 4
  %arrayidx.i.i = getelementptr i8, ptr %12, i32 %14
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i = zext i8 %16 to i32
  %add.i = add i32 %14, 1
  %arrayidx.i7.i = getelementptr i8, ptr %12, i32 %add.i
  %17 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i7.i, align 1
  %conv3.i = zext i8 %18 to i32
  %shl.i = shl nuw nsw i32 %conv3.i, 8
  %or.i = or i32 %shl.i, %conv.i
  %add = add i32 %14, 2
  store i32 %add, ptr %ptr, align 4
  %19 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %sw.bb.do.end20_crit_edge, label %do.end

sw.bb.do.end20_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end20

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.170, i32 noundef %or.i) #14
  br label %do.end20

do.end20:                                         ; preds = %do.end, %sw.bb.do.end20_crit_edge
  %reg_block = getelementptr inbounds %struct.atom_context, ptr %5, i32 0, i32 11
  %20 = ptrtoint ptr %reg_block to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %reg_block, align 2
  %conv21 = zext i16 %21 to i32
  %add22 = add nuw nsw i32 %or.i, %conv21
  %io_mode = getelementptr inbounds %struct.atom_context, ptr %5, i32 0, i32 15
  %22 = ptrtoint ptr %io_mode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %io_mode, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.613)
  switch i32 %23, label %sw.default [
    i32 0, label %sw.bb23
    i32 1, label %do.end35
    i32 2, label %do.end41
  ]

sw.bb23:                                          ; preds = %do.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add22)
  %cmp = icmp eq i32 %add22, 0
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %5, align 4
  %reg_write = getelementptr inbounds %struct.card_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_write, align 4
  br i1 %cmp, label %if.then25, label %if.else

if.then25:                                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #13
  %shl27 = shl i32 %or, 2
  tail call void %28(ptr noundef %26, i32 noundef 0, i32 noundef %shl27) #11
  br label %sw.epilog195

if.else:                                          ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %28(ptr noundef %26, i32 noundef %add22, i32 noundef %or) #11
  br label %sw.epilog195

do.end35:                                         ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #13
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173) #14
  br label %cleanup

do.end41:                                         ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #13
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.176) #14
  br label %cleanup

sw.default:                                       ; preds = %do.end20
  %and45 = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %do.end50, label %if.end53

do.end50:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.179) #14
  br label %cleanup

if.end53:                                         ; preds = %sw.default
  %iio = getelementptr inbounds %struct.atom_context, ptr %5, i32 0, i32 6
  %29 = ptrtoint ptr %iio to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %iio, align 4
  %and55 = and i32 %23, 255
  %arrayidx56 = getelementptr i16, ptr %30, i32 %and55
  %31 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx56, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool57.not = icmp eq i16 %32, 0
  br i1 %tobool57.not, label %do.end61, label %if.end66

do.end61:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  %and64 = and i32 %23, 127
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.249, i32 noundef %and64) #14
  br label %cleanup

if.end66:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  %conv71 = zext i16 %32 to i32
  %call72 = tail call fastcc i32 @atom_iio_execute(ptr noundef %5, i32 noundef %conv71, i32 noundef %add22, i32 noundef %or)
  br label %sw.epilog195

sw.bb73:                                          ; preds = %entry
  %bios75 = getelementptr inbounds %struct.atom_context, ptr %5, i32 0, i32 3
  %33 = ptrtoint ptr %bios75 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bios75, align 4
  %35 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %34, i32 %36
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i, align 1
  %conv77 = zext i8 %38 to i32
  %inc = add i32 %36, 1
  store i32 %inc, ptr %ptr, align 4
  %39 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool79.not = icmp eq i32 %39, 0
  br i1 %tobool79.not, label %sw.bb73.do.end88_crit_edge, label %do.end83

sw.bb73.do.end88_crit_edge:                       ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end88

do.end83:                                         ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #13
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.252, i32 noundef %conv77) #14
  br label %do.end88

do.end88:                                         ; preds = %do.end83, %sw.bb73.do.end88_crit_edge
  %40 = tail call i32 @llvm.bswap.i32(i32 %or)
  %ps = getelementptr inbounds %struct.atom_exec_context, ptr %ctx, i32 0, i32 1
  %41 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ps, align 4
  %arrayidx89 = getelementptr i32, ptr %42, i32 %conv77
  %43 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %40, ptr %arrayidx89, align 4
  br label %sw.epilog195

sw.bb90:                                          ; preds = %entry
  %bios92 = getelementptr inbounds %struct.atom_context, ptr %5, i32 0, i32 3
  %44 = ptrtoint ptr %bios92 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bios92, align 4
  %46 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ptr, align 4
  %arrayidx.i397 = getelementptr i8, ptr %45, i32 %47
  %48 = ptrtoint ptr %arrayidx.i397 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.i397, align 1
  %conv94 = zext i8 %49 to i32
  %inc95 = add i32 %47, 1
  store i32 %inc95, ptr %ptr, align 4
  %50 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool97.not = icmp eq i32 %50, 0
  br i1 %tobool97.not, label %sw.bb90.do.end106_crit_edge, label %do.end101

sw.bb90.do.end106_crit_edge:                      ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end106

do.end101:                                        ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #13
  %call103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.188, i32 noundef %conv94) #14
  br label %do.end106

do.end106:                                        ; preds = %do.end101, %sw.bb90.do.end106_crit_edge
  %51 = zext i8 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.614)
  switch i8 %49, label %sw.default123 [
    i8 64, label %sw.bb107
    i8 65, label %sw.bb109
    i8 66, label %sw.bb112
    i8 67, label %sw.bb114
    i8 68, label %do.end106.sw.epilog195_crit_edge
    i8 69, label %do.end106.sw.epilog195_crit_edge401
    i8 70, label %sw.bb117
    i8 71, label %sw.bb118
    i8 72, label %sw.bb120
  ]

do.end106.sw.epilog195_crit_edge401:              ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog195

do.end106.sw.epilog195_crit_edge:                 ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog195

sw.bb107:                                         ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #13
  %divmul = getelementptr inbounds %struct.atom_context, ptr %5, i32 0, i32 9
  %52 = ptrtoint ptr %divmul to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or, ptr %divmul, align 4
  br label %sw.epilog195

sw.bb109:                                         ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx111 = getelementptr %struct.atom_context, ptr %5, i32 0, i32 9, i32 1
  %53 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %or, ptr %arrayidx111, align 4
  br label %sw.epilog195

sw.bb112:                                         ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #13
  %conv113 = trunc i32 %or to i16
  %data_block = getelementptr inbounds %struct.atom_context, ptr %5, i32 0, i32 7
  %54 = ptrtoint ptr %data_block to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv113, ptr %data_block, align 4
  br label %sw.epilog195

sw.bb114:                                         ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #13
  %conv115 = trunc i32 %or to i8
  %shift = getelementptr inbounds %struct.atom_context, ptr %5, i32 0, i32 12
  %55 = ptrtoint ptr %shift to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv115, ptr %shift, align 4
  br label %sw.epilog195

sw.bb117:                                         ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #13
  %fb_base = getelementptr inbounds %struct.atom_context, ptr %5, i32 0, i32 8
  %56 = ptrtoint ptr %fb_base to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or, ptr %fb_base, align 4
  br label %sw.epilog195

sw.bb118:                                         ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #13
  %conv119 = trunc i32 %or to i16
  %io_attr = getelementptr inbounds %struct.atom_context, ptr %5, i32 0, i32 10
  %57 = ptrtoint ptr %io_attr to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv119, ptr %io_attr, align 4
  br label %sw.epilog195

sw.bb120:                                         ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #13
  %conv121 = trunc i32 %or to i16
  %reg_block122 = getelementptr inbounds %struct.atom_context, ptr %5, i32 0, i32 11
  %58 = ptrtoint ptr %reg_block122 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv121, ptr %reg_block122, align 2
  br label %sw.epilog195

sw.default123:                                    ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #13
  %ws = getelementptr inbounds %struct.atom_exec_context, ptr %ctx, i32 0, i32 2
  %59 = ptrtoint ptr %ws to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ws, align 4
  %arrayidx124 = getelementptr i32, ptr %60, i32 %conv94
  %61 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %or, ptr %arrayidx124, align 4
  br label %sw.epilog195

sw.bb126:                                         ; preds = %entry
  %bios128 = getelementptr inbounds %struct.atom_context, ptr %5, i32 0, i32 3
  %62 = ptrtoint ptr %bios128 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bios128, align 4
  %64 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ptr, align 4
  %arrayidx.i398 = getelementptr i8, ptr %63, i32 %65
  %66 = ptrtoint ptr %arrayidx.i398 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx.i398, align 1
  %conv130 = zext i8 %67 to i32
  %inc131 = add i32 %65, 1
  store i32 %inc131, ptr %ptr, align 4
  %fb_base132 = getelementptr inbounds %struct.atom_context, ptr %5, i32 0, i32 8
  %68 = ptrtoint ptr %fb_base132 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %fb_base132, align 4
  %mul = shl nuw nsw i32 %conv130, 2
  %add133 = add i32 %69, %mul
  %scratch_size_bytes = getelementptr inbounds %struct.atom_context, ptr %5, i32 0, i32 17
  %70 = ptrtoint ptr %scratch_size_bytes to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %scratch_size_bytes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add133, i32 %71)
  %cmp134 = icmp ugt i32 %add133, %71
  br i1 %cmp134, label %if.then136, label %if.else141

if.then136:                                       ; preds = %sw.bb126
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.256, i32 noundef %add133, i32 noundef %71) #11
  br label %do.body146

if.else141:                                       ; preds = %sw.bb126
  call void @__sanitizer_cov_trace_pc() #13
  %scratch = getelementptr inbounds %struct.atom_context, ptr %5, i32 0, i32 16
  %72 = ptrtoint ptr %scratch to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %scratch, align 4
  %div396 = lshr i32 %69, 2
  %add143 = add nuw nsw i32 %div396, %conv130
  %arrayidx144 = getelementptr i32, ptr %73, i32 %add143
  %74 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %or, ptr %arrayidx144, align 4
  br label %do.body146

do.body146:                                       ; preds = %if.else141, %if.then136
  %75 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool147.not = icmp eq i32 %75, 0
  br i1 %tobool147.not, label %do.body146.sw.epilog195_crit_edge, label %do.end151

do.body146.sw.epilog195_crit_edge:                ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog195

do.end151:                                        ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #13
  %call153 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.198, i32 noundef %conv130) #14
  br label %sw.epilog195

sw.bb157:                                         ; preds = %entry
  %bios159 = getelementptr inbounds %struct.atom_context, ptr %5, i32 0, i32 3
  %76 = ptrtoint ptr %bios159 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bios159, align 4
  %78 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %ptr, align 4
  %arrayidx.i399 = getelementptr i8, ptr %77, i32 %79
  %80 = ptrtoint ptr %arrayidx.i399 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx.i399, align 1
  %conv161 = zext i8 %81 to i32
  %inc162 = add i32 %79, 1
  store i32 %inc162, ptr %ptr, align 4
  %82 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool164.not = icmp eq i32 %82, 0
  br i1 %tobool164.not, label %sw.bb157.do.end173_crit_edge, label %do.end168

sw.bb157.do.end173_crit_edge:                     ; preds = %sw.bb157
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end173

do.end168:                                        ; preds = %sw.bb157
  call void @__sanitizer_cov_trace_pc() #13
  %call170 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.210, i32 noundef %conv161) #14
  br label %do.end173

do.end173:                                        ; preds = %do.end168, %sw.bb157.do.end173_crit_edge
  %83 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %5, align 4
  %pll_write = getelementptr inbounds %struct.card_info, ptr %84, i32 0, i32 7
  %85 = ptrtoint ptr %pll_write to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pll_write, align 4
  tail call void %86(ptr noundef %84, i32 noundef %conv161, i32 noundef %or) #11
  br label %sw.epilog195

sw.bb176:                                         ; preds = %entry
  %bios178 = getelementptr inbounds %struct.atom_context, ptr %5, i32 0, i32 3
  %87 = ptrtoint ptr %bios178 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %bios178, align 4
  %89 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %ptr, align 4
  %arrayidx.i400 = getelementptr i8, ptr %88, i32 %90
  %91 = ptrtoint ptr %arrayidx.i400 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx.i400, align 1
  %conv180 = zext i8 %92 to i32
  %inc181 = add i32 %90, 1
  store i32 %inc181, ptr %ptr, align 4
  %93 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool183.not = icmp eq i32 %93, 0
  br i1 %tobool183.not, label %sw.bb176.do.end192_crit_edge, label %do.end187

sw.bb176.do.end192_crit_edge:                     ; preds = %sw.bb176
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end192

do.end187:                                        ; preds = %sw.bb176
  call void @__sanitizer_cov_trace_pc() #13
  %call189 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.213, i32 noundef %conv180) #14
  br label %do.end192

do.end192:                                        ; preds = %do.end187, %sw.bb176.do.end192_crit_edge
  %94 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %5, align 4
  %mc_write = getelementptr inbounds %struct.card_info, ptr %95, i32 0, i32 5
  %96 = ptrtoint ptr %mc_write to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %mc_write, align 4
  tail call void %97(ptr noundef %95, i32 noundef %conv180, i32 noundef %or) #11
  br label %cleanup

sw.epilog195:                                     ; preds = %do.end173, %do.end151, %do.body146.sw.epilog195_crit_edge, %sw.default123, %sw.bb120, %sw.bb118, %sw.bb117, %sw.bb114, %sw.bb112, %sw.bb109, %sw.bb107, %do.end106.sw.epilog195_crit_edge, %do.end106.sw.epilog195_crit_edge401, %do.end88, %if.end66, %if.else, %if.then25, %entry.sw.epilog195_crit_edge
  %98 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.615)
  switch i32 %3, label %sw.epilog195.cleanup_crit_edge [
    i32 0, label %do.body197
    i32 1, label %do.body209
    i32 2, label %do.body221
    i32 3, label %do.body233
    i32 4, label %do.body245
    i32 5, label %do.body257
    i32 6, label %do.body269
    i32 7, label %do.body281
  ]

sw.epilog195.cleanup_crit_edge:                   ; preds = %sw.epilog195
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body197:                                       ; preds = %sw.epilog195
  %99 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool198.not = icmp eq i32 %99, 0
  br i1 %tobool198.not, label %do.body197.cleanup_crit_edge, label %do.end202

do.body197.cleanup_crit_edge:                     ; preds = %do.body197
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end202:                                        ; preds = %do.body197
  call void @__sanitizer_cov_trace_pc() #13
  %call204 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.264, i32 noundef %and9) #14
  br label %cleanup

do.body209:                                       ; preds = %sw.epilog195
  %100 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool210.not = icmp eq i32 %100, 0
  br i1 %tobool210.not, label %do.body209.cleanup_crit_edge, label %do.end214

do.body209.cleanup_crit_edge:                     ; preds = %do.body209
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end214:                                        ; preds = %do.body209
  call void @__sanitizer_cov_trace_pc() #13
  %call216 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.267, i32 noundef %and9) #14
  br label %cleanup

do.body221:                                       ; preds = %sw.epilog195
  %101 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool222.not = icmp eq i32 %101, 0
  br i1 %tobool222.not, label %do.body221.cleanup_crit_edge, label %do.end226

do.body221.cleanup_crit_edge:                     ; preds = %do.body221
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end226:                                        ; preds = %do.body221
  call void @__sanitizer_cov_trace_pc() #13
  %call228 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.270, i32 noundef %and9) #14
  br label %cleanup

do.body233:                                       ; preds = %sw.epilog195
  %102 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool234.not = icmp eq i32 %102, 0
  br i1 %tobool234.not, label %do.body233.cleanup_crit_edge, label %do.end238

do.body233.cleanup_crit_edge:                     ; preds = %do.body233
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end238:                                        ; preds = %do.body233
  call void @__sanitizer_cov_trace_pc() #13
  %call240 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.273, i32 noundef %and9) #14
  br label %cleanup

do.body245:                                       ; preds = %sw.epilog195
  %103 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool246.not = icmp eq i32 %103, 0
  br i1 %tobool246.not, label %do.body245.cleanup_crit_edge, label %do.end250

do.body245.cleanup_crit_edge:                     ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end250:                                        ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #13
  %call252 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.276, i32 noundef %and9) #14
  br label %cleanup

do.body257:                                       ; preds = %sw.epilog195
  %104 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool258.not = icmp eq i32 %104, 0
  br i1 %tobool258.not, label %do.body257.cleanup_crit_edge, label %do.end262

do.body257.cleanup_crit_edge:                     ; preds = %do.body257
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end262:                                        ; preds = %do.body257
  call void @__sanitizer_cov_trace_pc() #13
  %call264 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.279, i32 noundef %and9) #14
  br label %cleanup

do.body269:                                       ; preds = %sw.epilog195
  %105 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool270.not = icmp eq i32 %105, 0
  br i1 %tobool270.not, label %do.body269.cleanup_crit_edge, label %do.end274

do.body269.cleanup_crit_edge:                     ; preds = %do.body269
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end274:                                        ; preds = %do.body269
  call void @__sanitizer_cov_trace_pc() #13
  %call276 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.282, i32 noundef %and9) #14
  br label %cleanup

do.body281:                                       ; preds = %sw.epilog195
  %106 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool282.not = icmp eq i32 %106, 0
  br i1 %tobool282.not, label %do.body281.cleanup_crit_edge, label %do.end286

do.body281.cleanup_crit_edge:                     ; preds = %do.body281
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end286:                                        ; preds = %do.body281
  call void @__sanitizer_cov_trace_pc() #13
  %call288 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.285, i32 noundef %and9) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end286, %do.body281.cleanup_crit_edge, %do.end274, %do.body269.cleanup_crit_edge, %do.end262, %do.body257.cleanup_crit_edge, %do.end250, %do.body245.cleanup_crit_edge, %do.end238, %do.body233.cleanup_crit_edge, %do.end226, %do.body221.cleanup_crit_edge, %do.end214, %do.body209.cleanup_crit_edge, %do.end202, %do.body197.cleanup_crit_edge, %sw.epilog195.cleanup_crit_edge, %do.end192, %do.end61, %do.end50, %do.end41, %do.end35
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atom_get_src_int(ptr nocapture noundef readonly %ctx, i8 noundef zeroext %attr, ptr noundef %ptr, ptr noundef writeonly %saved, i32 noundef %print) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %conv = zext i8 %attr to i32
  %and = and i32 %conv, 7
  %2 = lshr i32 %conv, 3
  %and3 = and i32 %2, 7
  %3 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.616)
  switch i32 %and, label %entry.unreachabledefault [
    i32 0, label %sw.bb
    i32 1, label %sw.bb58
    i32 2, label %sw.bb79
    i32 4, label %sw.bb124
    i32 3, label %sw.bb167
    i32 5, label %sw.bb200
    i32 6, label %sw.bb261
    i32 7, label %sw.bb284
  ]

sw.bb:                                            ; preds = %entry
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bios, align 4
  %6 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ptr, align 4
  %arrayidx.i.i = getelementptr i8, ptr %5, i32 %7
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i = zext i8 %9 to i32
  %add.i = add i32 %7, 1
  %arrayidx.i7.i = getelementptr i8, ptr %5, i32 %add.i
  %10 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i7.i, align 1
  %conv3.i = zext i8 %11 to i32
  %shl.i = shl nuw nsw i32 %conv3.i, 8
  %or.i = or i32 %shl.i, %conv.i
  %add = add i32 %7, 2
  store i32 %add, ptr %ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %print)
  %tobool.not = icmp eq i32 %print, 0
  br i1 %tobool.not, label %sw.bb.if.end12_crit_edge, label %do.body

sw.bb.if.end12_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

do.body:                                          ; preds = %sw.bb
  %12 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool6.not = icmp eq i32 %12, 0
  br i1 %tobool6.not, label %do.body.if.end12_crit_edge, label %do.end

do.body.if.end12_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.170, i32 noundef %or.i) #14
  br label %if.end12

if.end12:                                         ; preds = %do.end, %do.body.if.end12_crit_edge, %sw.bb.if.end12_crit_edge
  %reg_block = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 11
  %13 = ptrtoint ptr %reg_block to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %reg_block, align 2
  %conv13 = zext i16 %14 to i32
  %add14 = add nuw nsw i32 %or.i, %conv13
  %io_mode = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 15
  %15 = ptrtoint ptr %io_mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %io_mode, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.617)
  switch i32 %16, label %sw.default [
    i32 0, label %sw.bb15
    i32 1, label %do.end21
    i32 2, label %do.end27
  ]

sw.bb15:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %reg_read = getelementptr inbounds %struct.card_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %reg_read to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_read, align 4
  %call17 = tail call i32 %21(ptr noundef %19, i32 noundef %add14) #11
  br label %sw.epilog307

do.end21:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173) #14
  br label %cleanup

do.end27:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.176) #14
  br label %cleanup

sw.default:                                       ; preds = %if.end12
  %and31 = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %do.end36, label %if.end39

do.end36:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.179) #14
  br label %cleanup

if.end39:                                         ; preds = %sw.default
  %iio = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %iio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iio, align 4
  %and41 = and i32 %16, 127
  %arrayidx = getelementptr i16, ptr %23, i32 %and41
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool42.not = icmp eq i16 %25, 0
  br i1 %tobool42.not, label %do.end46, label %if.end51

do.end46:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182, i32 noundef %and41) #14
  br label %cleanup

if.end51:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  %conv56 = zext i16 %25 to i32
  %call57 = tail call fastcc i32 @atom_iio_execute(ptr noundef %1, i32 noundef %conv56, i32 noundef %add14, i32 noundef 0)
  br label %sw.epilog307

sw.bb58:                                          ; preds = %entry
  %bios60 = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %bios60 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bios60, align 4
  %28 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %27, i32 %29
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i, align 1
  %conv62 = zext i8 %31 to i32
  %inc = add i32 %29, 1
  store i32 %inc, ptr %ptr, align 4
  %ps = getelementptr inbounds %struct.atom_exec_context, ptr %ctx, i32 0, i32 1
  %32 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ps, align 4
  %arrayidx63 = getelementptr i32, ptr %33, i32 %conv62
  %34 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %arrayidx63, align 1
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %print)
  %tobool65.not = icmp eq i32 %print, 0
  br i1 %tobool65.not, label %sw.bb58.sw.epilog307_crit_edge, label %do.body67

sw.bb58.sw.epilog307_crit_edge:                   ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog307

do.body67:                                        ; preds = %sw.bb58
  %37 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool68.not = icmp eq i32 %37, 0
  br i1 %tobool68.not, label %do.body67.sw.epilog307_crit_edge, label %do.end72

do.body67.sw.epilog307_crit_edge:                 ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog307

do.end72:                                         ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #13
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.185, i32 noundef %conv62, i32 noundef %36) #14
  br label %sw.epilog307

sw.bb79:                                          ; preds = %entry
  %bios81 = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 3
  %38 = ptrtoint ptr %bios81 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bios81, align 4
  %40 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ptr, align 4
  %arrayidx.i538 = getelementptr i8, ptr %39, i32 %41
  %42 = ptrtoint ptr %arrayidx.i538 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i538, align 1
  %conv83 = zext i8 %43 to i32
  %inc84 = add i32 %41, 1
  store i32 %inc84, ptr %ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %print)
  %tobool85.not = icmp eq i32 %print, 0
  br i1 %tobool85.not, label %sw.bb79.if.end98_crit_edge, label %do.body87

sw.bb79.if.end98_crit_edge:                       ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end98

do.body87:                                        ; preds = %sw.bb79
  %44 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool88.not = icmp eq i32 %44, 0
  br i1 %tobool88.not, label %do.body87.if.end98_crit_edge, label %do.end92

do.body87.if.end98_crit_edge:                     ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end98

do.end92:                                         ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #13
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.188, i32 noundef %conv83) #14
  br label %if.end98

if.end98:                                         ; preds = %do.end92, %do.body87.if.end98_crit_edge, %sw.bb79.if.end98_crit_edge
  %45 = zext i8 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.618)
  switch i8 %43, label %sw.default121 [
    i8 64, label %sw.bb99
    i8 65, label %sw.bb101
    i8 66, label %sw.bb104
    i8 67, label %sw.bb106
    i8 68, label %sw.bb108
    i8 69, label %sw.bb111
    i8 70, label %sw.bb115
    i8 71, label %sw.bb116
    i8 72, label %sw.bb118
  ]

sw.bb99:                                          ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  %divmul = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 9
  %46 = ptrtoint ptr %divmul to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %divmul, align 4
  br label %sw.epilog307

sw.bb101:                                         ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx103 = getelementptr %struct.atom_context, ptr %1, i32 0, i32 9, i32 1
  %48 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx103, align 4
  br label %sw.epilog307

sw.bb104:                                         ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  %data_block = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 7
  %50 = ptrtoint ptr %data_block to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %data_block, align 4
  %conv105 = zext i16 %51 to i32
  br label %sw.epilog307

sw.bb106:                                         ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  %shift = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 12
  %52 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %shift, align 4
  %conv107 = zext i8 %53 to i32
  br label %sw.epilog307

sw.bb108:                                         ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  %shift109 = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 12
  %54 = ptrtoint ptr %shift109 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %shift109, align 4
  %conv110 = zext i8 %55 to i32
  %shl = shl nuw i32 1, %conv110
  br label %sw.epilog307

sw.bb111:                                         ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  %shift112 = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 12
  %56 = ptrtoint ptr %shift112 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %shift112, align 4
  %conv113 = zext i8 %57 to i32
  %shl114 = shl nuw i32 1, %conv113
  %neg = xor i32 %shl114, -1
  br label %sw.epilog307

sw.bb115:                                         ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  %fb_base = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 8
  %58 = ptrtoint ptr %fb_base to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %fb_base, align 4
  br label %sw.epilog307

sw.bb116:                                         ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  %io_attr = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 10
  %60 = ptrtoint ptr %io_attr to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %io_attr, align 4
  %conv117 = zext i16 %61 to i32
  br label %sw.epilog307

sw.bb118:                                         ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  %reg_block119 = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 11
  %62 = ptrtoint ptr %reg_block119 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %reg_block119, align 2
  %conv120 = zext i16 %63 to i32
  br label %sw.epilog307

sw.default121:                                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  %ws = getelementptr inbounds %struct.atom_exec_context, ptr %ctx, i32 0, i32 2
  %64 = ptrtoint ptr %ws to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ws, align 4
  %arrayidx122 = getelementptr i32, ptr %65, i32 %conv83
  %66 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx122, align 4
  br label %sw.epilog307

sw.bb124:                                         ; preds = %entry
  %bios126 = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 3
  %68 = ptrtoint ptr %bios126 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bios126, align 4
  %70 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ptr, align 4
  %arrayidx.i.i539 = getelementptr i8, ptr %69, i32 %71
  %72 = ptrtoint ptr %arrayidx.i.i539 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.i.i539, align 1
  %conv.i540 = zext i8 %73 to i32
  %add.i541 = add i32 %71, 1
  %arrayidx.i7.i542 = getelementptr i8, ptr %69, i32 %add.i541
  %74 = ptrtoint ptr %arrayidx.i7.i542 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx.i7.i542, align 1
  %conv3.i543 = zext i8 %75 to i32
  %shl.i544 = shl nuw nsw i32 %conv3.i543, 8
  %or.i545 = or i32 %shl.i544, %conv.i540
  %add129 = add i32 %71, 2
  store i32 %add129, ptr %ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %print)
  %tobool130.not = icmp eq i32 %print, 0
  br i1 %tobool130.not, label %sw.bb124.if.end160_crit_edge, label %if.then131

sw.bb124.if.end160_crit_edge:                     ; preds = %sw.bb124
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end160

if.then131:                                       ; preds = %sw.bb124
  %data_block132 = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 7
  %76 = ptrtoint ptr %data_block132 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %data_block132, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %tobool133.not = icmp eq i16 %77, 0
  %78 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool149.not = icmp eq i32 %78, 0
  br i1 %tobool133.not, label %do.body148, label %do.body135

do.body135:                                       ; preds = %if.then131
  br i1 %tobool149.not, label %do.body135.if.end160_crit_edge, label %do.end140

do.body135.if.end160_crit_edge:                   ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end160

do.end140:                                        ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #13
  %conv143 = zext i16 %77 to i32
  %call144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.191, i32 noundef %or.i545, i32 noundef %conv143) #14
  br label %if.end160

do.body148:                                       ; preds = %if.then131
  br i1 %tobool149.not, label %do.body148.if.end160_crit_edge, label %do.end153

do.body148.if.end160_crit_edge:                   ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end160

do.end153:                                        ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #13
  %call155 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.194, i32 noundef %or.i545) #14
  br label %if.end160

if.end160:                                        ; preds = %do.end153, %do.body148.if.end160_crit_edge, %do.end140, %do.body135.if.end160_crit_edge, %sw.bb124.if.end160_crit_edge
  %79 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ctx, align 4
  %bios162 = getelementptr inbounds %struct.atom_context, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %bios162 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %bios162, align 4
  %data_block163 = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 7
  %83 = ptrtoint ptr %data_block163 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %data_block163, align 4
  %conv164 = zext i16 %84 to i32
  %add165 = add nuw nsw i32 %or.i545, %conv164
  %arrayidx.i.i.i = getelementptr i8, ptr %82, i32 %add165
  %85 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i = zext i8 %86 to i32
  %add.i.i = add nuw nsw i32 %add165, 1
  %arrayidx.i7.i.i = getelementptr i8, ptr %82, i32 %add.i.i
  %87 = ptrtoint ptr %arrayidx.i7.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx.i7.i.i, align 1
  %conv3.i.i = zext i8 %88 to i32
  %shl.i.i = shl nuw nsw i32 %conv3.i.i, 8
  %add.i546 = add nuw nsw i32 %add165, 2
  %arrayidx.i.i5.i = getelementptr i8, ptr %82, i32 %add.i546
  %89 = ptrtoint ptr %arrayidx.i.i5.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx.i.i5.i, align 1
  %conv.i6.i = zext i8 %90 to i32
  %add.i7.i = add nuw nsw i32 %add165, 3
  %arrayidx.i7.i8.i = getelementptr i8, ptr %82, i32 %add.i7.i
  %91 = ptrtoint ptr %arrayidx.i7.i8.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx.i7.i8.i, align 1
  %conv3.i9.i = zext i8 %92 to i32
  %93 = shl nuw i32 %conv3.i9.i, 24
  %94 = shl nuw nsw i32 %conv.i6.i, 16
  %shl.i547 = or i32 %shl.i.i, %conv.i.i
  %or.i.i = or i32 %shl.i547, %94
  %or.i548 = or i32 %or.i.i, %93
  br label %sw.epilog307

sw.bb167:                                         ; preds = %entry
  %bios169 = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 3
  %95 = ptrtoint ptr %bios169 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %bios169, align 4
  %97 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %ptr, align 4
  %arrayidx.i549 = getelementptr i8, ptr %96, i32 %98
  %99 = ptrtoint ptr %arrayidx.i549 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx.i549, align 1
  %conv171 = zext i8 %100 to i32
  %inc172 = add i32 %98, 1
  store i32 %inc172, ptr %ptr, align 4
  %fb_base173 = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 8
  %101 = ptrtoint ptr %fb_base173 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %fb_base173, align 4
  %mul = shl nuw nsw i32 %conv171, 2
  %add174 = add i32 %102, %mul
  %scratch_size_bytes = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 17
  %103 = ptrtoint ptr %scratch_size_bytes to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %scratch_size_bytes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add174, i32 %104)
  %cmp = icmp ugt i32 %add174, %104
  br i1 %cmp, label %if.then176, label %if.else181

if.then176:                                       ; preds = %sw.bb167
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.196, i32 noundef %add174, i32 noundef %104) #11
  br label %if.end185

if.else181:                                       ; preds = %sw.bb167
  call void @__sanitizer_cov_trace_pc() #13
  %scratch = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 16
  %105 = ptrtoint ptr %scratch to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %scratch, align 4
  %div537 = lshr i32 %102, 2
  %add183 = add nuw nsw i32 %div537, %conv171
  %arrayidx184 = getelementptr i32, ptr %106, i32 %add183
  %107 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx184, align 4
  br label %if.end185

if.end185:                                        ; preds = %if.else181, %if.then176
  %val.0 = phi i32 [ 0, %if.then176 ], [ %108, %if.else181 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %print)
  %tobool186.not = icmp eq i32 %print, 0
  br i1 %tobool186.not, label %if.end185.sw.epilog307_crit_edge, label %do.body188

if.end185.sw.epilog307_crit_edge:                 ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog307

do.body188:                                       ; preds = %if.end185
  %109 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool189.not = icmp eq i32 %109, 0
  br i1 %tobool189.not, label %do.body188.sw.epilog307_crit_edge, label %do.end193

do.body188.sw.epilog307_crit_edge:                ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog307

do.end193:                                        ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #13
  %call195 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.198, i32 noundef %conv171) #14
  br label %sw.epilog307

sw.bb200:                                         ; preds = %entry
  %110 = zext i32 %and3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %110, ptr @__sancov_gen_cov_switch_values.619)
  switch i32 %and3, label %sw.bb200.unreachabledefault [
    i32 0, label %sw.bb201
    i32 1, label %sw.bb200.sw.bb220_crit_edge
    i32 2, label %sw.bb200.sw.bb220_crit_edge575
    i32 3, label %sw.bb200.sw.bb220_crit_edge576
    i32 4, label %sw.bb200.sw.bb240_crit_edge
    i32 5, label %sw.bb200.sw.bb240_crit_edge577
    i32 6, label %sw.bb200.sw.bb240_crit_edge578
    i32 7, label %sw.bb200.sw.bb240_crit_edge579
  ]

sw.bb200.sw.bb240_crit_edge579:                   ; preds = %sw.bb200
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb240

sw.bb200.sw.bb240_crit_edge578:                   ; preds = %sw.bb200
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb240

sw.bb200.sw.bb240_crit_edge577:                   ; preds = %sw.bb200
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb240

sw.bb200.sw.bb240_crit_edge:                      ; preds = %sw.bb200
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb240

sw.bb200.sw.bb220_crit_edge576:                   ; preds = %sw.bb200
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb220

sw.bb200.sw.bb220_crit_edge575:                   ; preds = %sw.bb200
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb220

sw.bb200.sw.bb220_crit_edge:                      ; preds = %sw.bb200
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb220

sw.bb201:                                         ; preds = %sw.bb200
  %bios203 = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 3
  %111 = ptrtoint ptr %bios203 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %bios203, align 4
  %113 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %ptr, align 4
  %arrayidx.i.i.i550 = getelementptr i8, ptr %112, i32 %114
  %115 = ptrtoint ptr %arrayidx.i.i.i550 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx.i.i.i550, align 1
  %conv.i.i551 = zext i8 %116 to i32
  %add.i.i552 = add i32 %114, 1
  %arrayidx.i7.i.i553 = getelementptr i8, ptr %112, i32 %add.i.i552
  %117 = ptrtoint ptr %arrayidx.i7.i.i553 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx.i7.i.i553, align 1
  %conv3.i.i554 = zext i8 %118 to i32
  %shl.i.i555 = shl nuw nsw i32 %conv3.i.i554, 8
  %add.i556 = add i32 %114, 2
  %arrayidx.i.i5.i557 = getelementptr i8, ptr %112, i32 %add.i556
  %119 = ptrtoint ptr %arrayidx.i.i5.i557 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx.i.i5.i557, align 1
  %conv.i6.i558 = zext i8 %120 to i32
  %add.i7.i559 = add i32 %114, 3
  %arrayidx.i7.i8.i560 = getelementptr i8, ptr %112, i32 %add.i7.i559
  %121 = ptrtoint ptr %arrayidx.i7.i8.i560 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx.i7.i8.i560, align 1
  %conv3.i9.i561 = zext i8 %122 to i32
  %123 = shl nuw i32 %conv3.i9.i561, 24
  %124 = shl nuw nsw i32 %conv.i6.i558, 16
  %shl.i562 = or i32 %shl.i.i555, %conv.i.i551
  %or.i.i563 = or i32 %shl.i562, %124
  %or.i564 = or i32 %or.i.i563, %123
  %add205 = add i32 %114, 4
  store i32 %add205, ptr %ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %print)
  %tobool206.not = icmp eq i32 %print, 0
  br i1 %tobool206.not, label %sw.bb201.cleanup_crit_edge, label %do.body208

sw.bb201.cleanup_crit_edge:                       ; preds = %sw.bb201
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body208:                                       ; preds = %sw.bb201
  %125 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool209.not = icmp eq i32 %125, 0
  br i1 %tobool209.not, label %do.body208.cleanup_crit_edge, label %do.end213

do.body208.cleanup_crit_edge:                     ; preds = %do.body208
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end213:                                        ; preds = %do.body208
  call void @__sanitizer_cov_trace_pc() #13
  %call215 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.201, i32 noundef %or.i564) #14
  br label %cleanup

sw.bb220:                                         ; preds = %sw.bb200.sw.bb220_crit_edge, %sw.bb200.sw.bb220_crit_edge575, %sw.bb200.sw.bb220_crit_edge576
  %bios222 = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 3
  %126 = ptrtoint ptr %bios222 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %bios222, align 4
  %128 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %ptr, align 4
  %arrayidx.i.i565 = getelementptr i8, ptr %127, i32 %129
  %130 = ptrtoint ptr %arrayidx.i.i565 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx.i.i565, align 1
  %conv.i566 = zext i8 %131 to i32
  %add.i567 = add i32 %129, 1
  %arrayidx.i7.i568 = getelementptr i8, ptr %127, i32 %add.i567
  %132 = ptrtoint ptr %arrayidx.i7.i568 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx.i7.i568, align 1
  %conv3.i569 = zext i8 %133 to i32
  %shl.i570 = shl nuw nsw i32 %conv3.i569, 8
  %or.i571 = or i32 %shl.i570, %conv.i566
  %add225 = add i32 %129, 2
  store i32 %add225, ptr %ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %print)
  %tobool226.not = icmp eq i32 %print, 0
  br i1 %tobool226.not, label %sw.bb220.cleanup_crit_edge, label %do.body228

sw.bb220.cleanup_crit_edge:                       ; preds = %sw.bb220
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body228:                                       ; preds = %sw.bb220
  %134 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool229.not = icmp eq i32 %134, 0
  br i1 %tobool229.not, label %do.body228.cleanup_crit_edge, label %do.end233

do.body228.cleanup_crit_edge:                     ; preds = %do.body228
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end233:                                        ; preds = %do.body228
  call void @__sanitizer_cov_trace_pc() #13
  %call235 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.204, i32 noundef %or.i571) #14
  br label %cleanup

sw.bb240:                                         ; preds = %sw.bb200.sw.bb240_crit_edge, %sw.bb200.sw.bb240_crit_edge577, %sw.bb200.sw.bb240_crit_edge578, %sw.bb200.sw.bb240_crit_edge579
  %bios242 = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 3
  %135 = ptrtoint ptr %bios242 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %bios242, align 4
  %137 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %ptr, align 4
  %arrayidx.i572 = getelementptr i8, ptr %136, i32 %138
  %139 = ptrtoint ptr %arrayidx.i572 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx.i572, align 1
  %conv244 = zext i8 %140 to i32
  %inc245 = add i32 %138, 1
  store i32 %inc245, ptr %ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %print)
  %tobool246.not = icmp eq i32 %print, 0
  br i1 %tobool246.not, label %sw.bb240.cleanup_crit_edge, label %do.body248

sw.bb240.cleanup_crit_edge:                       ; preds = %sw.bb240
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body248:                                       ; preds = %sw.bb240
  %141 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool249.not = icmp eq i32 %141, 0
  br i1 %tobool249.not, label %do.body248.cleanup_crit_edge, label %do.end253

do.body248.cleanup_crit_edge:                     ; preds = %do.body248
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end253:                                        ; preds = %do.body248
  call void @__sanitizer_cov_trace_pc() #13
  %call255 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, i32 noundef %conv244) #14
  br label %cleanup

sw.bb200.unreachabledefault:                      ; preds = %sw.bb200
  unreachable

sw.bb261:                                         ; preds = %entry
  %bios263 = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 3
  %142 = ptrtoint ptr %bios263 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %bios263, align 4
  %144 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %ptr, align 4
  %arrayidx.i573 = getelementptr i8, ptr %143, i32 %145
  %146 = ptrtoint ptr %arrayidx.i573 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx.i573, align 1
  %conv265 = zext i8 %147 to i32
  %inc266 = add i32 %145, 1
  store i32 %inc266, ptr %ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %print)
  %tobool267.not = icmp eq i32 %print, 0
  br i1 %tobool267.not, label %sw.bb261.if.end280_crit_edge, label %do.body269

sw.bb261.if.end280_crit_edge:                     ; preds = %sw.bb261
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end280

do.body269:                                       ; preds = %sw.bb261
  %148 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool270.not = icmp eq i32 %148, 0
  br i1 %tobool270.not, label %do.body269.if.end280_crit_edge, label %do.end274

do.body269.if.end280_crit_edge:                   ; preds = %do.body269
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end280

do.end274:                                        ; preds = %do.body269
  call void @__sanitizer_cov_trace_pc() #13
  %call276 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.210, i32 noundef %conv265) #14
  br label %if.end280

if.end280:                                        ; preds = %do.end274, %do.body269.if.end280_crit_edge, %sw.bb261.if.end280_crit_edge
  %149 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %1, align 4
  %pll_read = getelementptr inbounds %struct.card_info, ptr %150, i32 0, i32 8
  %151 = ptrtoint ptr %pll_read to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %pll_read, align 4
  %call283 = tail call i32 %152(ptr noundef %150, i32 noundef %conv265) #11
  br label %sw.epilog307

sw.bb284:                                         ; preds = %entry
  %bios286 = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 3
  %153 = ptrtoint ptr %bios286 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %bios286, align 4
  %155 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %ptr, align 4
  %arrayidx.i574 = getelementptr i8, ptr %154, i32 %156
  %157 = ptrtoint ptr %arrayidx.i574 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %arrayidx.i574, align 1
  %conv288 = zext i8 %158 to i32
  %inc289 = add i32 %156, 1
  store i32 %inc289, ptr %ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %print)
  %tobool290.not = icmp eq i32 %print, 0
  br i1 %tobool290.not, label %sw.bb284.if.end303_crit_edge, label %do.body292

sw.bb284.if.end303_crit_edge:                     ; preds = %sw.bb284
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end303

do.body292:                                       ; preds = %sw.bb284
  %159 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %tobool293.not = icmp eq i32 %159, 0
  br i1 %tobool293.not, label %do.body292.if.end303_crit_edge, label %do.end297

do.body292.if.end303_crit_edge:                   ; preds = %do.body292
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end303

do.end297:                                        ; preds = %do.body292
  call void @__sanitizer_cov_trace_pc() #13
  %call299 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.213, i32 noundef %conv288) #14
  br label %if.end303

if.end303:                                        ; preds = %do.end297, %do.body292.if.end303_crit_edge, %sw.bb284.if.end303_crit_edge
  %160 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %1, align 4
  %mc_read = getelementptr inbounds %struct.card_info, ptr %161, i32 0, i32 6
  %162 = ptrtoint ptr %mc_read to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %mc_read, align 4
  %call306 = tail call i32 %163(ptr noundef %161, i32 noundef %conv288) #11
  br label %sw.epilog307

entry.unreachabledefault:                         ; preds = %entry
  unreachable

sw.epilog307:                                     ; preds = %if.end303, %if.end280, %do.end193, %do.body188.sw.epilog307_crit_edge, %if.end185.sw.epilog307_crit_edge, %if.end160, %sw.default121, %sw.bb118, %sw.bb116, %sw.bb115, %sw.bb111, %sw.bb108, %sw.bb106, %sw.bb104, %sw.bb101, %sw.bb99, %do.end72, %do.body67.sw.epilog307_crit_edge, %sw.bb58.sw.epilog307_crit_edge, %if.end51, %sw.bb15
  %val.1 = phi i32 [ %call306, %if.end303 ], [ %call283, %if.end280 ], [ %val.0, %do.end193 ], [ %val.0, %do.body188.sw.epilog307_crit_edge ], [ %val.0, %if.end185.sw.epilog307_crit_edge ], [ %or.i548, %if.end160 ], [ %67, %sw.default121 ], [ %conv120, %sw.bb118 ], [ %conv117, %sw.bb116 ], [ %59, %sw.bb115 ], [ %neg, %sw.bb111 ], [ %shl, %sw.bb108 ], [ %conv107, %sw.bb106 ], [ %conv105, %sw.bb104 ], [ %49, %sw.bb101 ], [ %47, %sw.bb99 ], [ %36, %do.end72 ], [ %36, %do.body67.sw.epilog307_crit_edge ], [ %36, %sw.bb58.sw.epilog307_crit_edge ], [ %call57, %if.end51 ], [ %call17, %sw.bb15 ]
  %tobool308.not = icmp eq ptr %saved, null
  br i1 %tobool308.not, label %sw.epilog307.if.end310_crit_edge, label %if.then309

sw.epilog307.if.end310_crit_edge:                 ; preds = %sw.epilog307
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end310

if.then309:                                       ; preds = %sw.epilog307
  call void @__sanitizer_cov_trace_pc() #13
  %164 = ptrtoint ptr %saved to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %val.1, ptr %saved, align 4
  br label %if.end310

if.end310:                                        ; preds = %if.then309, %sw.epilog307.if.end310_crit_edge
  %arrayidx311 = getelementptr [8 x i32], ptr @atom_arg_mask, i32 0, i32 %and3
  %165 = ptrtoint ptr %arrayidx311 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx311, align 4
  %and312 = and i32 %166, %val.1
  %arrayidx313 = getelementptr [8 x i32], ptr @atom_arg_shift, i32 0, i32 %and3
  %167 = ptrtoint ptr %arrayidx313 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %arrayidx313, align 4
  %shr314 = lshr i32 %and312, %168
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %print)
  %tobool315.not = icmp eq i32 %print, 0
  br i1 %tobool315.not, label %if.end310.cleanup_crit_edge, label %if.then316

if.end310.cleanup_crit_edge:                      ; preds = %if.end310
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then316:                                       ; preds = %if.end310
  %169 = zext i32 %and3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %169, ptr @__sancov_gen_cov_switch_values.620)
  switch i32 %and3, label %if.then316.unreachabledefault [
    i32 0, label %do.body318
    i32 1, label %do.body330
    i32 2, label %do.body342
    i32 3, label %do.body354
    i32 4, label %do.body366
    i32 5, label %do.body378
    i32 6, label %do.body390
    i32 7, label %do.body402
  ]

do.body318:                                       ; preds = %if.then316
  %170 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool319.not = icmp eq i32 %170, 0
  br i1 %tobool319.not, label %do.body318.cleanup_crit_edge, label %do.end323

do.body318.cleanup_crit_edge:                     ; preds = %do.body318
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end323:                                        ; preds = %do.body318
  call void @__sanitizer_cov_trace_pc() #13
  %call325 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.216, i32 noundef %shr314) #14
  br label %cleanup

do.body330:                                       ; preds = %if.then316
  %171 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %tobool331.not = icmp eq i32 %171, 0
  br i1 %tobool331.not, label %do.body330.cleanup_crit_edge, label %do.end335

do.body330.cleanup_crit_edge:                     ; preds = %do.body330
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end335:                                        ; preds = %do.body330
  call void @__sanitizer_cov_trace_pc() #13
  %call337 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.219, i32 noundef %shr314) #14
  br label %cleanup

do.body342:                                       ; preds = %if.then316
  %172 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool343.not = icmp eq i32 %172, 0
  br i1 %tobool343.not, label %do.body342.cleanup_crit_edge, label %do.end347

do.body342.cleanup_crit_edge:                     ; preds = %do.body342
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end347:                                        ; preds = %do.body342
  call void @__sanitizer_cov_trace_pc() #13
  %call349 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.222, i32 noundef %shr314) #14
  br label %cleanup

do.body354:                                       ; preds = %if.then316
  %173 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %tobool355.not = icmp eq i32 %173, 0
  br i1 %tobool355.not, label %do.body354.cleanup_crit_edge, label %do.end359

do.body354.cleanup_crit_edge:                     ; preds = %do.body354
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end359:                                        ; preds = %do.body354
  call void @__sanitizer_cov_trace_pc() #13
  %call361 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, i32 noundef %shr314) #14
  br label %cleanup

do.body366:                                       ; preds = %if.then316
  %174 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %tobool367.not = icmp eq i32 %174, 0
  br i1 %tobool367.not, label %do.body366.cleanup_crit_edge, label %do.end371

do.body366.cleanup_crit_edge:                     ; preds = %do.body366
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end371:                                        ; preds = %do.body366
  call void @__sanitizer_cov_trace_pc() #13
  %call373 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.228, i32 noundef %shr314) #14
  br label %cleanup

do.body378:                                       ; preds = %if.then316
  %175 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %tobool379.not = icmp eq i32 %175, 0
  br i1 %tobool379.not, label %do.body378.cleanup_crit_edge, label %do.end383

do.body378.cleanup_crit_edge:                     ; preds = %do.body378
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end383:                                        ; preds = %do.body378
  call void @__sanitizer_cov_trace_pc() #13
  %call385 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.231, i32 noundef %shr314) #14
  br label %cleanup

do.body390:                                       ; preds = %if.then316
  %176 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %tobool391.not = icmp eq i32 %176, 0
  br i1 %tobool391.not, label %do.body390.cleanup_crit_edge, label %do.end395

do.body390.cleanup_crit_edge:                     ; preds = %do.body390
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end395:                                        ; preds = %do.body390
  call void @__sanitizer_cov_trace_pc() #13
  %call397 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.234, i32 noundef %shr314) #14
  br label %cleanup

do.body402:                                       ; preds = %if.then316
  %177 = load i32, ptr @atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %tobool403.not = icmp eq i32 %177, 0
  br i1 %tobool403.not, label %do.body402.cleanup_crit_edge, label %do.end407

do.body402.cleanup_crit_edge:                     ; preds = %do.body402
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end407:                                        ; preds = %do.body402
  call void @__sanitizer_cov_trace_pc() #13
  %call409 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.237, i32 noundef %shr314) #14
  br label %cleanup

if.then316.unreachabledefault:                    ; preds = %if.then316
  unreachable

cleanup:                                          ; preds = %do.end407, %do.body402.cleanup_crit_edge, %do.end395, %do.body390.cleanup_crit_edge, %do.end383, %do.body378.cleanup_crit_edge, %do.end371, %do.body366.cleanup_crit_edge, %do.end359, %do.body354.cleanup_crit_edge, %do.end347, %do.body342.cleanup_crit_edge, %do.end335, %do.body330.cleanup_crit_edge, %do.end323, %do.body318.cleanup_crit_edge, %if.end310.cleanup_crit_edge, %do.end253, %do.body248.cleanup_crit_edge, %sw.bb240.cleanup_crit_edge, %do.end233, %do.body228.cleanup_crit_edge, %sw.bb220.cleanup_crit_edge, %do.end213, %do.body208.cleanup_crit_edge, %sw.bb201.cleanup_crit_edge, %do.end46, %do.end36, %do.end27, %do.end21
  %retval.0 = phi i32 [ 0, %do.end46 ], [ 0, %do.end36 ], [ 0, %do.end27 ], [ 0, %do.end21 ], [ %or.i564, %do.body208.cleanup_crit_edge ], [ %or.i564, %do.end213 ], [ %or.i564, %sw.bb201.cleanup_crit_edge ], [ %or.i571, %do.body228.cleanup_crit_edge ], [ %or.i571, %do.end233 ], [ %or.i571, %sw.bb220.cleanup_crit_edge ], [ %conv244, %do.body248.cleanup_crit_edge ], [ %conv244, %do.end253 ], [ %conv244, %sw.bb240.cleanup_crit_edge ], [ %shr314, %do.end323 ], [ %shr314, %do.body318.cleanup_crit_edge ], [ %shr314, %do.end335 ], [ %shr314, %do.body330.cleanup_crit_edge ], [ %shr314, %do.end347 ], [ %shr314, %do.body342.cleanup_crit_edge ], [ %shr314, %do.end359 ], [ %shr314, %do.body354.cleanup_crit_edge ], [ %shr314, %do.end371 ], [ %shr314, %do.body366.cleanup_crit_edge ], [ %shr314, %do.end383 ], [ %shr314, %do.body378.cleanup_crit_edge ], [ %shr314, %do.end395 ], [ %shr314, %do.body390.cleanup_crit_edge ], [ %shr314, %do.end407 ], [ %shr314, %do.body402.cleanup_crit_edge ], [ %shr314, %if.end310.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atom_iio_execute(ptr noundef readonly %ctx, i32 noundef %base, i32 noundef %index, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 3
  %io_attr = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 10
  %family = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 6
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %base.addr.0 = phi i32 [ %base, %entry ], [ %add148, %sw.epilog ]
  %temp.0 = phi i32 [ -842150451, %entry ], [ %temp.1, %sw.epilog ]
  %6 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bios, align 4
  %arrayidx.i = getelementptr i8, ptr %7, i32 %base.addr.0
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.621)
  switch i8 %9, label %do.end [
    i8 0, label %while.cond.sw.epilog_crit_edge
    i8 2, label %sw.bb1
    i8 3, label %sw.bb9
    i8 4, label %sw.bb26
    i8 5, label %sw.bb36
    i8 6, label %sw.bb49
    i8 8, label %sw.bb82
    i8 7, label %sw.bb115
    i8 9, label %while.cond.cleanup_crit_edge
  ]

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.sw.epilog_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb1:                                           ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx, align 4
  %ioreg_read = getelementptr inbounds %struct.card_info, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %ioreg_read to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ioreg_read, align 4
  %add = add i32 %base.addr.0, 1
  %arrayidx.i.i = getelementptr i8, ptr %7, i32 %add
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i = zext i8 %16 to i32
  %add.i = add i32 %base.addr.0, 2
  %arrayidx.i7.i = getelementptr i8, ptr %7, i32 %add.i
  %17 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i7.i, align 1
  %conv3.i = zext i8 %18 to i32
  %shl.i = shl nuw nsw i32 %conv3.i, 8
  %or.i = or i32 %shl.i, %conv.i
  %call7 = tail call i32 %14(ptr noundef %12, i32 noundef %or.i) #11
  br label %sw.epilog

sw.bb9:                                           ; preds = %while.cond
  %19 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %20)
  %cmp = icmp eq i32 %20, 21
  br i1 %cmp, label %if.then, label %sw.bb9.if.end_crit_edge

sw.bb9.if.end_crit_edge:                          ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #13
  %.pre = add i32 %base.addr.0, 1
  %.pre256 = add i32 %base.addr.0, 2
  br label %if.end

if.then:                                          ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctx, align 4
  %ioreg_read12 = getelementptr inbounds %struct.card_info, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %ioreg_read12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ioreg_read12, align 4
  %add15 = add i32 %base.addr.0, 1
  %arrayidx.i.i221 = getelementptr i8, ptr %7, i32 %add15
  %25 = ptrtoint ptr %arrayidx.i.i221 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i.i221, align 1
  %conv.i222 = zext i8 %26 to i32
  %add.i223 = add i32 %base.addr.0, 2
  %arrayidx.i7.i224 = getelementptr i8, ptr %7, i32 %add.i223
  %27 = ptrtoint ptr %arrayidx.i7.i224 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i7.i224, align 1
  %conv3.i225 = zext i8 %28 to i32
  %shl.i226 = shl nuw nsw i32 %conv3.i225, 8
  %or.i227 = or i32 %shl.i226, %conv.i222
  %call18 = tail call i32 %24(ptr noundef %22, i32 noundef %or.i227) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb9.if.end_crit_edge
  %add.i230.pre-phi = phi i32 [ %.pre256, %sw.bb9.if.end_crit_edge ], [ %add.i223, %if.then ]
  %add22.pre-phi = phi i32 [ %.pre, %sw.bb9.if.end_crit_edge ], [ %add15, %if.then ]
  %29 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ctx, align 4
  %ioreg_write = getelementptr inbounds %struct.card_info, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %ioreg_write to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ioreg_write, align 4
  %33 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bios, align 4
  %arrayidx.i.i228 = getelementptr i8, ptr %34, i32 %add22.pre-phi
  %35 = ptrtoint ptr %arrayidx.i.i228 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i.i228, align 1
  %conv.i229 = zext i8 %36 to i32
  %arrayidx.i7.i231 = getelementptr i8, ptr %34, i32 %add.i230.pre-phi
  %37 = ptrtoint ptr %arrayidx.i7.i231 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i7.i231, align 1
  %conv3.i232 = zext i8 %38 to i32
  %shl.i233 = shl nuw nsw i32 %conv3.i232, 8
  %or.i234 = or i32 %shl.i233, %conv.i229
  tail call void %32(ptr noundef %30, i32 noundef %or.i234, i32 noundef %temp.0) #11
  br label %sw.epilog

sw.bb26:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  %add28 = add i32 %base.addr.0, 1
  %arrayidx.i235 = getelementptr i8, ptr %7, i32 %add28
  %39 = ptrtoint ptr %arrayidx.i235 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i235, align 1
  %conv30 = zext i8 %40 to i32
  %sub = sub nsw i32 32, %conv30
  %shr = lshr i32 -1, %sub
  %add32 = add i32 %base.addr.0, 2
  %arrayidx.i236 = getelementptr i8, ptr %7, i32 %add32
  %41 = ptrtoint ptr %arrayidx.i236 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i236, align 1
  %conv34 = zext i8 %42 to i32
  %shl = shl i32 %shr, %conv34
  %neg = xor i32 %shl, -1
  %and = and i32 %temp.0, %neg
  br label %sw.epilog

sw.bb36:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  %add38 = add i32 %base.addr.0, 1
  %arrayidx.i237 = getelementptr i8, ptr %7, i32 %add38
  %43 = ptrtoint ptr %arrayidx.i237 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.i237, align 1
  %conv40 = zext i8 %44 to i32
  %sub41 = sub nsw i32 32, %conv40
  %shr42 = lshr i32 -1, %sub41
  %add44 = add i32 %base.addr.0, 2
  %arrayidx.i238 = getelementptr i8, ptr %7, i32 %add44
  %45 = ptrtoint ptr %arrayidx.i238 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.i238, align 1
  %conv46 = zext i8 %46 to i32
  %shl47 = shl i32 %shr42, %conv46
  %or = or i32 %shl47, %temp.0
  br label %sw.epilog

sw.bb49:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  %add51 = add i32 %base.addr.0, 1
  %arrayidx.i239 = getelementptr i8, ptr %7, i32 %add51
  %47 = ptrtoint ptr %arrayidx.i239 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.i239, align 1
  %conv53 = zext i8 %48 to i32
  %sub54 = sub nsw i32 32, %conv53
  %shr55 = lshr i32 -1, %sub54
  %add57 = add i32 %base.addr.0, 3
  %arrayidx.i240 = getelementptr i8, ptr %7, i32 %add57
  %49 = ptrtoint ptr %arrayidx.i240 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.i240, align 1
  %conv59 = zext i8 %50 to i32
  %shl60 = shl i32 %shr55, %conv59
  %neg61 = xor i32 %shl60, -1
  %and62 = and i32 %temp.0, %neg61
  %add64 = add i32 %base.addr.0, 2
  %arrayidx.i241 = getelementptr i8, ptr %7, i32 %add64
  %51 = ptrtoint ptr %arrayidx.i241 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.i241, align 1
  %conv66 = zext i8 %52 to i32
  %shr67 = lshr i32 %index, %conv66
  %and74 = and i32 %shr67, %shr55
  %shl79 = shl i32 %and74, %conv59
  %or80 = or i32 %shl79, %and62
  br label %sw.epilog

sw.bb82:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  %add84 = add i32 %base.addr.0, 1
  %arrayidx.i244 = getelementptr i8, ptr %7, i32 %add84
  %53 = ptrtoint ptr %arrayidx.i244 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.i244, align 1
  %conv86 = zext i8 %54 to i32
  %sub87 = sub nsw i32 32, %conv86
  %shr88 = lshr i32 -1, %sub87
  %add90 = add i32 %base.addr.0, 3
  %arrayidx.i245 = getelementptr i8, ptr %7, i32 %add90
  %55 = ptrtoint ptr %arrayidx.i245 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.i245, align 1
  %conv92 = zext i8 %56 to i32
  %shl93 = shl i32 %shr88, %conv92
  %neg94 = xor i32 %shl93, -1
  %and95 = and i32 %temp.0, %neg94
  %add97 = add i32 %base.addr.0, 2
  %arrayidx.i246 = getelementptr i8, ptr %7, i32 %add97
  %57 = ptrtoint ptr %arrayidx.i246 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.i246, align 1
  %conv99 = zext i8 %58 to i32
  %shr100 = lshr i32 %data, %conv99
  %and107 = and i32 %shr100, %shr88
  %shl112 = shl i32 %and107, %conv92
  %or113 = or i32 %shl112, %and95
  br label %sw.epilog

sw.bb115:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  %add117 = add i32 %base.addr.0, 1
  %arrayidx.i249 = getelementptr i8, ptr %7, i32 %add117
  %59 = ptrtoint ptr %arrayidx.i249 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.i249, align 1
  %conv119 = zext i8 %60 to i32
  %sub120 = sub nsw i32 32, %conv119
  %shr121 = lshr i32 -1, %sub120
  %add123 = add i32 %base.addr.0, 3
  %arrayidx.i250 = getelementptr i8, ptr %7, i32 %add123
  %61 = ptrtoint ptr %arrayidx.i250 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.i250, align 1
  %conv125 = zext i8 %62 to i32
  %shl126 = shl i32 %shr121, %conv125
  %neg127 = xor i32 %shl126, -1
  %and128 = and i32 %temp.0, %neg127
  %63 = ptrtoint ptr %io_attr to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %io_attr, align 4
  %conv129 = zext i16 %64 to i32
  %add131 = add i32 %base.addr.0, 2
  %arrayidx.i251 = getelementptr i8, ptr %7, i32 %add131
  %65 = ptrtoint ptr %arrayidx.i251 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.i251, align 1
  %conv133 = zext i8 %66 to i32
  %shr134 = lshr i32 %conv129, %conv133
  %and141 = and i32 %shr134, %shr121
  %shl146 = shl i32 %and141, %conv125
  %or147 = or i32 %shl146, %and128
  br label %sw.epilog

do.end:                                           ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  %call150 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.239) #14
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb115, %sw.bb82, %sw.bb49, %sw.bb36, %sw.bb26, %if.end, %sw.bb1, %while.cond.sw.epilog_crit_edge
  %.sink = phi i32 [ 4, %sw.bb115 ], [ 4, %sw.bb82 ], [ 4, %sw.bb49 ], [ 3, %sw.bb36 ], [ 3, %sw.bb26 ], [ 3, %if.end ], [ 3, %sw.bb1 ], [ 1, %while.cond.sw.epilog_crit_edge ]
  %temp.1 = phi i32 [ %or147, %sw.bb115 ], [ %or113, %sw.bb82 ], [ %or80, %sw.bb49 ], [ %or, %sw.bb36 ], [ %and, %sw.bb26 ], [ %temp.0, %if.end ], [ %call7, %sw.bb1 ], [ %temp.0, %while.cond.sw.epilog_crit_edge ]
  %add148 = add i32 %base.addr.0, %.sink
  br label %while.cond

cleanup:                                          ; preds = %do.end, %while.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ %temp.0, %while.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 512)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 512)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !13, !14, !16, !18, !19, !20, !22, !23, !24, !26, !28, !29, !30, !31, !32, !33, !34, !36, !37, !38, !39, !40, !42, !43, !44, !45, !46, !48, !50, !51, !52, !53, !54, !56, !57, !58, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !314, !315, !316, !317, !318, !320, !321, !322, !323, !324, !326, !327, !328, !329, !331, !332, !333, !335, !336, !337, !339, !340, !341, !343, !344, !345, !347, !348, !349, !351, !352, !353, !355, !356, !357, !359, !360, !361, !363, !365, !366, !367, !369, !370, !371, !373, !374, !375, !377, !378, !379, !381, !382, !383, !385, !386, !387, !389, !390, !391, !393, !394, !395, !397, !398, !399, !401, !402, !403, !405, !406, !407, !409, !410, !411, !413, !414, !415, !417, !418, !419, !421, !422, !423, !424, !426, !428, !430, !432, !433, !434, !436, !437, !439, !440, !442, !443, !445, !446, !447, !449, !450, !451, !453, !454, !456, !458, !459, !461, !462, !464, !465, !467, !468, !469, !471, !472, !473, !475, !476, !477, !479, !480, !481, !483, !484, !485, !487, !488, !489, !491, !492, !493, !495, !496, !497, !499, !500, !501, !502, !503, !505, !506, !507, !508, !510, !511, !512, !513, !515, !516, !517, !518, !519, !521, !522, !523, !524, !526, !527, !528, !529, !531, !532, !533, !534, !535, !537, !538, !539, !540, !541, !543, !544, !545, !546, !548, !550, !551, !552, !553, !554, !556, !557, !558, !559, !561, !562, !563, !564, !566, !567, !568, !569, !570, !571, !573, !574, !575, !576, !577, !579, !580, !581, !582, !583, !585, !586, !587, !588, !590, !591, !592, !593, !594, !596, !597, !598, !599, !601, !602, !603, !604, !606, !607, !608, !609, !610, !612, !613, !614, !615, !617, !618, !619, !620, !622, !623, !624, !625, !626, !627, !629, !630, !631, !632, !633, !635, !637, !639, !641, !643, !645, !647, !648, !649, !650, !651, !652, !654, !655, !656, !657, !658, !659, !661, !662, !663, !664, !665, !667, !668, !669, !670, !672, !673, !674, !675, !676, !677, !678, !679, !680, !682, !683, !684, !685, !686, !687, !689, !690, !691, !692, !693, !695, !696, !697, !698, !699, !701, !702, !703, !705, !706, !707, !708, !709, !710, !711, !712, !714, !715, !716, !717, !718, !720, !722, !723, !724, !725, !726, !728, !729, !730, !731, !733, !734, !735, !736, !737, !739, !740, !741, !742, !743, !744, !746, !747, !748, !749, !750, !751, !753, !754, !755, !756, !757, !759, !761, !763, !765, !767, !769, !771, !773, !775, !777, !779, !781, !783, !785, !787, !789, !791, !793, !795, !797, !799, !801, !803, !805, !807, !809, !811, !813, !815, !817, !819, !821, !823, !825, !827, !829, !831, !833, !835, !837, !839, !841, !843, !845, !847, !849, !851, !853, !855, !857, !859, !861, !863, !865, !867, !869, !871, !873, !875, !877, !879, !881, !883, !885, !887, !889, !891, !893, !895, !897, !899, !901, !903, !905, !907, !909, !910, !911, !912, !914, !915, !916, !917, !918, !920, !921, !922, !923, !924, !926, !927, !928, !929, !930, !932, !933, !934, !935, !937, !938, !939, !940, !942, !943, !944, !945, !946, !947, !949, !950, !951, !952, !954, !955, !956, !958, !959, !960, !962, !963, !964, !965, !966, !967, !969, !970, !971, !972, !974, !975, !976, !977, !978, !980, !981, !982, !983, !985, !986, !987, !988, !990, !991, !992, !993, !994, !996, !997, !998, !999, !1001, !1002, !1003, !1004, !1006, !1007, !1008, !1009, !1010, !1012, !1013, !1014, !1015, !1017, !1018, !1019, !1020, !1022, !1023, !1024}
!llvm.named.register.sp = !{!1026}
!llvm.module.flags = !{!1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034}
!llvm.ident = !{!1035}

!0 = !{ptr @atom_debug, !1, !"atom_debug", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 69, i32 5}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 1280, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @atom_parse._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @atom_parse._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 1285, i32 33}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 1287, i32 3}
!12 = !{ptr @atom_parse._entry.4, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @atom_parse._entry_ptr.6, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 1294, i32 40}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 1296, i32 3}
!18 = !{ptr @atom_parse._entry.8, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @atom_parse._entry_ptr.10, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 1320, i32 2}
!22 = !{ptr @atom_parse._entry.11, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @atom_parse._entry_ptr.13, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 1408, i32 3}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 1174, i32 2}
!28 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @atom_execute_table_locked._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @atom_execute_table_locked._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.18, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @atom_execute_table_locked._entry.17, !27, !"_entry", i1 false, i1 false}
!33 = !{ptr @atom_execute_table_locked._entry_ptr.19, !27, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @atom_execute_table_locked._entry.20, !35, !"_entry", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 1191, i32 4}
!36 = !{ptr @atom_execute_table_locked._entry_ptr.21, !35, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.23, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @atom_execute_table_locked._entry.22, !35, !"_entry", i1 false, i1 false}
!39 = !{ptr @atom_execute_table_locked._entry_ptr.24, !35, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @atom_execute_table_locked._entry.25, !41, !"_entry", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 1193, i32 4}
!42 = !{ptr @atom_execute_table_locked._entry_ptr.26, !41, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.28, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @atom_execute_table_locked._entry.27, !41, !"_entry", i1 false, i1 false}
!45 = !{ptr @atom_execute_table_locked._entry_ptr.29, !41, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.30, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 1195, i32 4}
!48 = !{ptr @atom_execute_table_locked._entry.31, !49, !"_entry", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 1211, i32 2}
!50 = !{ptr @atom_execute_table_locked._entry_ptr.32, !49, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.34, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @atom_execute_table_locked._entry.33, !49, !"_entry", i1 false, i1 false}
!53 = !{ptr @atom_execute_table_locked._entry_ptr.35, !49, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.36, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 97, i32 3}
!56 = !{ptr @.str.37, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @debug_print_spaces._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @debug_print_spaces._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @debug_depth, !60, !"debug_depth", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 92, i32 12}
!61 = !{ptr @.str.38, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 34, i32 1}
!63 = !{ptr @.str.39, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 34, i32 13}
!65 = !{ptr @.str.40, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 34, i32 25}
!67 = !{ptr @.str.41, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 34, i32 36}
!69 = !{ptr @.str.42, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 34, i32 47}
!71 = !{ptr @.str.43, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 34, i32 58}
!73 = !{ptr @.str.44, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 35, i32 1}
!75 = !{ptr @.str.45, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 35, i32 12}
!77 = !{ptr @.str.46, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 35, i32 23}
!79 = !{ptr @.str.47, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 35, i32 33}
!81 = !{ptr @.str.48, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 35, i32 43}
!83 = !{ptr @.str.49, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 35, i32 53}
!85 = !{ptr @.str.50, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 35, i32 64}
!87 = !{ptr @.str.51, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 36, i32 1}
!89 = !{ptr @.str.52, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 36, i32 11}
!91 = !{ptr @.str.53, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 36, i32 20}
!93 = !{ptr @.str.54, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 36, i32 29}
!95 = !{ptr @.str.55, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 36, i32 38}
!97 = !{ptr @.str.56, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 36, i32 48}
!99 = !{ptr @.str.57, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 36, i32 57}
!101 = !{ptr @.str.58, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 37, i32 1}
!103 = !{ptr @.str.59, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 37, i32 18}
!105 = !{ptr @.str.60, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 37, i32 35}
!107 = !{ptr @.str.61, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 37, i32 52}
!109 = !{ptr @.str.62, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 38, i32 1}
!111 = !{ptr @.str.63, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 38, i32 18}
!113 = !{ptr @.str.64, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 38, i32 37}
!115 = !{ptr @.str.65, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 38, i32 55}
!117 = !{ptr @.str.66, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 39, i32 1}
!119 = !{ptr @.str.67, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 39, i32 19}
!121 = !{ptr @.str.68, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 39, i32 38}
!123 = !{ptr @.str.69, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 39, i32 56}
!125 = !{ptr @.str.70, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 40, i32 1}
!127 = !{ptr @.str.71, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 40, i32 11}
!129 = !{ptr @.str.72, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 40, i32 21}
!131 = !{ptr @.str.73, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 40, i32 31}
!133 = !{ptr @.str.74, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 40, i32 42}
!135 = !{ptr @.str.75, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 40, i32 52}
!137 = !{ptr @.str.76, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 40, i32 63}
!139 = !{ptr @.str.77, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 41, i32 1}
!141 = !{ptr @.str.78, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 41, i32 11}
!143 = !{ptr @.str.79, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 41, i32 21}
!145 = !{ptr @.str.80, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 41, i32 32}
!147 = !{ptr @.str.81, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 41, i32 42}
!149 = !{ptr @.str.82, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 41, i32 53}
!151 = !{ptr @.str.83, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 41, i32 63}
!153 = !{ptr @.str.84, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 42, i32 1}
!155 = !{ptr @.str.85, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 42, i32 11}
!157 = !{ptr @.str.86, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 42, i32 22}
!159 = !{ptr @.str.87, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 42, i32 32}
!161 = !{ptr @.str.88, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 42, i32 43}
!163 = !{ptr @.str.89, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 42, i32 53}
!165 = !{ptr @.str.90, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 42, i32 63}
!167 = !{ptr @.str.91, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 43, i32 1}
!169 = !{ptr @.str.92, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 43, i32 12}
!171 = !{ptr @.str.93, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 43, i32 22}
!173 = !{ptr @.str.94, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 43, i32 38}
!175 = !{ptr @.str.95, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 43, i32 54}
!177 = !{ptr @.str.96, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 44, i32 1}
!179 = !{ptr @.str.97, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 44, i32 18}
!181 = !{ptr @.str.98, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 44, i32 33}
!183 = !{ptr @.str.99, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 44, i32 48}
!185 = !{ptr @.str.100, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 45, i32 1}
!187 = !{ptr @.str.101, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 45, i32 15}
!189 = !{ptr @.str.102, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 45, i32 29}
!191 = !{ptr @.str.103, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 45, i32 44}
!193 = !{ptr @.str.104, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 45, i32 58}
!195 = !{ptr @.str.105, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 46, i32 1}
!197 = !{ptr @.str.106, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 46, i32 9}
!199 = !{ptr @.str.107, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 46, i32 23}
!201 = !{ptr @.str.108, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 46, i32 37}
!203 = !{ptr @.str.109, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 46, i32 51}
!205 = !{ptr @.str.110, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 47, i32 1}
!207 = !{ptr @.str.111, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 47, i32 24}
!209 = !{ptr @.str.112, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 47, i32 42}
!211 = !{ptr @.str.113, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 47, i32 54}
!213 = !{ptr @.str.114, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 47, i32 65}
!215 = !{ptr @.str.115, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 48, i32 1}
!217 = !{ptr @.str.116, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 48, i32 12}
!219 = !{ptr @.str.117, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 48, i32 24}
!221 = !{ptr @.str.118, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 48, i32 35}
!223 = !{ptr @.str.119, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 48, i32 53}
!225 = !{ptr @.str.120, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 49, i32 1}
!227 = !{ptr @.str.121, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 49, i32 15}
!229 = !{ptr @.str.122, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 49, i32 25}
!231 = !{ptr @.str.123, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 49, i32 38}
!233 = !{ptr @.str.124, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 49, i32 50}
!235 = !{ptr @.str.125, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 49, i32 62}
!237 = !{ptr @.str.126, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 50, i32 1}
!239 = !{ptr @.str.127, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 50, i32 14}
!241 = !{ptr @.str.128, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 50, i32 26}
!243 = !{ptr @.str.129, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 50, i32 33}
!245 = !{ptr @.str.130, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 50, i32 40}
!247 = !{ptr @.str.131, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 50, i32 52}
!249 = !{ptr @.str.132, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 50, i32 63}
!251 = !{ptr @.str.133, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 51, i32 1}
!253 = !{ptr @.str.134, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 51, i32 12}
!255 = !{ptr @.str.135, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 51, i32 24}
!257 = !{ptr @.str.136, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 51, i32 35}
!259 = !{ptr @.str.137, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 51, i32 48}
!261 = !{ptr @.str.138, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 51, i32 56}
!263 = !{ptr @.str.139, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 52, i32 1}
!265 = !{ptr @.str.140, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 52, i32 16}
!267 = !{ptr @.str.141, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 52, i32 34}
!269 = !{ptr @.str.142, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 52, i32 45}
!271 = !{ptr @.str.143, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 52, i32 55}
!273 = !{ptr @.str.144, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 52, i32 65}
!275 = !{ptr @.str.145, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 53, i32 1}
!277 = !{ptr @.str.146, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 53, i32 12}
!279 = !{ptr @.str.147, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 53, i32 22}
!281 = !{ptr @.str.148, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 53, i32 33}
!283 = !{ptr @.str.149, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 53, i32 43}
!285 = !{ptr @.str.150, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 53, i32 53}
!287 = !{ptr @.str.151, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 53, i32 63}
!289 = !{ptr @.str.152, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 54, i32 1}
!291 = !{ptr @.str.153, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 54, i32 11}
!293 = !{ptr @.str.154, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 54, i32 22}
!295 = !{ptr @.str.155, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 54, i32 32}
!297 = !{ptr @.str.156, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 54, i32 42}
!299 = !{ptr @.str.157, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 54, i32 52}
!301 = !{ptr @.str.158, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 54, i32 63}
!303 = !{ptr @.str.159, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 55, i32 1}
!305 = !{ptr @.str.160, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 55, i32 10}
!307 = !{ptr @atom_op_names, !308, !"atom_op_names", i1 false, i1 false}
!308 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 33, i32 14}
!309 = !{ptr @opcode_table, !310, !"opcode_table", i1 false, i1 false}
!310 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 1033, i32 3}
!311 = !{ptr @.str.161, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 776, i32 2}
!313 = !{ptr @atom_op_move._entry, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @atom_op_move._entry_ptr, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.163, !312, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @atom_op_move._entry.162, !312, !"_entry", i1 false, i1 false}
!317 = !{ptr @atom_op_move._entry_ptr.164, !312, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @atom_op_move._entry.165, !319, !"_entry", i1 false, i1 false}
!319 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 778, i32 2}
!320 = !{ptr @atom_op_move._entry_ptr.166, !319, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.168, !319, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @atom_op_move._entry.167, !319, !"_entry", i1 false, i1 false}
!323 = !{ptr @atom_op_move._entry_ptr.169, !319, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.170, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 194, i32 4}
!326 = !{ptr @.str.171, !325, !"<string literal>", i1 false, i1 false}
!327 = !{ptr @atom_get_src_int._entry, !325, !"_entry", i1 false, i1 false}
!328 = !{ptr @atom_get_src_int._entry_ptr, !325, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @.str.173, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 201, i32 4}
!331 = !{ptr @atom_get_src_int._entry.172, !330, !"_entry", i1 false, i1 false}
!332 = !{ptr @atom_get_src_int._entry_ptr.174, !330, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @.str.176, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 204, i32 4}
!335 = !{ptr @atom_get_src_int._entry.175, !334, !"_entry", i1 false, i1 false}
!336 = !{ptr @atom_get_src_int._entry_ptr.177, !334, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @.str.179, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 208, i32 5}
!339 = !{ptr @atom_get_src_int._entry.178, !338, !"_entry", i1 false, i1 false}
!340 = !{ptr @atom_get_src_int._entry_ptr.180, !338, !"_entry_ptr", i1 false, i1 false}
!341 = !{ptr @.str.182, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 212, i32 5}
!343 = !{ptr @atom_get_src_int._entry.181, !342, !"_entry", i1 false, i1 false}
!344 = !{ptr @atom_get_src_int._entry_ptr.183, !342, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @.str.185, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 229, i32 4}
!347 = !{ptr @atom_get_src_int._entry.184, !346, !"_entry", i1 false, i1 false}
!348 = !{ptr @atom_get_src_int._entry_ptr.186, !346, !"_entry_ptr", i1 false, i1 false}
!349 = !{ptr @.str.188, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 235, i32 4}
!351 = !{ptr @atom_get_src_int._entry.187, !350, !"_entry", i1 false, i1 false}
!352 = !{ptr @atom_get_src_int._entry_ptr.189, !350, !"_entry_ptr", i1 false, i1 false}
!353 = !{ptr @.str.191, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 273, i32 5}
!355 = !{ptr @atom_get_src_int._entry.190, !354, !"_entry", i1 false, i1 false}
!356 = !{ptr @atom_get_src_int._entry_ptr.192, !354, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @.str.194, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 275, i32 5}
!359 = !{ptr @atom_get_src_int._entry.193, !358, !"_entry", i1 false, i1 false}
!360 = !{ptr @atom_get_src_int._entry_ptr.195, !358, !"_entry_ptr", i1 false, i1 false}
!361 = !{ptr @.str.196, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 283, i32 4}
!363 = !{ptr @.str.198, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 289, i32 4}
!365 = !{ptr @atom_get_src_int._entry.197, !364, !"_entry", i1 false, i1 false}
!366 = !{ptr @atom_get_src_int._entry_ptr.199, !364, !"_entry_ptr", i1 false, i1 false}
!367 = !{ptr @.str.201, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 297, i32 5}
!369 = !{ptr @atom_get_src_int._entry.200, !368, !"_entry", i1 false, i1 false}
!370 = !{ptr @atom_get_src_int._entry_ptr.202, !368, !"_entry_ptr", i1 false, i1 false}
!371 = !{ptr @.str.204, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 305, i32 5}
!373 = !{ptr @atom_get_src_int._entry.203, !372, !"_entry", i1 false, i1 false}
!374 = !{ptr @atom_get_src_int._entry_ptr.205, !372, !"_entry_ptr", i1 false, i1 false}
!375 = !{ptr @.str.207, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 314, i32 5}
!377 = !{ptr @atom_get_src_int._entry.206, !376, !"_entry", i1 false, i1 false}
!378 = !{ptr @atom_get_src_int._entry_ptr.208, !376, !"_entry_ptr", i1 false, i1 false}
!379 = !{ptr @.str.210, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 322, i32 4}
!381 = !{ptr @atom_get_src_int._entry.209, !380, !"_entry", i1 false, i1 false}
!382 = !{ptr @atom_get_src_int._entry_ptr.211, !380, !"_entry_ptr", i1 false, i1 false}
!383 = !{ptr @.str.213, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 329, i32 4}
!385 = !{ptr @atom_get_src_int._entry.212, !384, !"_entry", i1 false, i1 false}
!386 = !{ptr @atom_get_src_int._entry_ptr.214, !384, !"_entry_ptr", i1 false, i1 false}
!387 = !{ptr @.str.216, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 340, i32 4}
!389 = !{ptr @atom_get_src_int._entry.215, !388, !"_entry", i1 false, i1 false}
!390 = !{ptr @atom_get_src_int._entry_ptr.217, !388, !"_entry_ptr", i1 false, i1 false}
!391 = !{ptr @.str.219, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 343, i32 4}
!393 = !{ptr @atom_get_src_int._entry.218, !392, !"_entry", i1 false, i1 false}
!394 = !{ptr @atom_get_src_int._entry_ptr.220, !392, !"_entry_ptr", i1 false, i1 false}
!395 = !{ptr @.str.222, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 346, i32 4}
!397 = !{ptr @atom_get_src_int._entry.221, !396, !"_entry", i1 false, i1 false}
!398 = !{ptr @atom_get_src_int._entry_ptr.223, !396, !"_entry_ptr", i1 false, i1 false}
!399 = !{ptr @.str.225, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 349, i32 4}
!401 = !{ptr @atom_get_src_int._entry.224, !400, !"_entry", i1 false, i1 false}
!402 = !{ptr @atom_get_src_int._entry_ptr.226, !400, !"_entry_ptr", i1 false, i1 false}
!403 = !{ptr @.str.228, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 352, i32 4}
!405 = !{ptr @atom_get_src_int._entry.227, !404, !"_entry", i1 false, i1 false}
!406 = !{ptr @atom_get_src_int._entry_ptr.229, !404, !"_entry_ptr", i1 false, i1 false}
!407 = !{ptr @.str.231, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 355, i32 4}
!409 = !{ptr @atom_get_src_int._entry.230, !408, !"_entry", i1 false, i1 false}
!410 = !{ptr @atom_get_src_int._entry_ptr.232, !408, !"_entry_ptr", i1 false, i1 false}
!411 = !{ptr @.str.234, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 358, i32 4}
!413 = !{ptr @atom_get_src_int._entry.233, !412, !"_entry", i1 false, i1 false}
!414 = !{ptr @atom_get_src_int._entry_ptr.235, !412, !"_entry_ptr", i1 false, i1 false}
!415 = !{ptr @.str.237, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 361, i32 4}
!417 = !{ptr @atom_get_src_int._entry.236, !416, !"_entry", i1 false, i1 false}
!418 = !{ptr @atom_get_src_int._entry_ptr.238, !416, !"_entry_ptr", i1 false, i1 false}
!419 = !{ptr @.str.239, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 177, i32 4}
!421 = !{ptr @.str.240, !420, !"<string literal>", i1 false, i1 false}
!422 = !{ptr @atom_iio_execute._entry, !420, !"_entry", i1 false, i1 false}
!423 = !{ptr @atom_iio_execute._entry_ptr, !420, !"_entry_ptr", i1 false, i1 false}
!424 = !{ptr @atom_arg_mask, !425, !"atom_arg_mask", i1 false, i1 false}
!425 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 73, i32 17}
!426 = !{ptr @atom_arg_shift, !427, !"atom_arg_shift", i1 false, i1 false}
!427 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 77, i32 12}
!428 = !{ptr @atom_dst_to_src, !429, !"atom_dst_to_src", i1 false, i1 false}
!429 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 79, i32 12}
!430 = !{ptr @.str.241, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 466, i32 3}
!432 = !{ptr @atom_put_dst._entry, !431, !"_entry", i1 false, i1 false}
!433 = !{ptr @atom_put_dst._entry_ptr, !431, !"_entry_ptr", i1 false, i1 false}
!434 = !{ptr @atom_put_dst._entry.242, !435, !"_entry", i1 false, i1 false}
!435 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 477, i32 4}
!436 = !{ptr @atom_put_dst._entry_ptr.243, !435, !"_entry_ptr", i1 false, i1 false}
!437 = !{ptr @atom_put_dst._entry.244, !438, !"_entry", i1 false, i1 false}
!438 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 480, i32 4}
!439 = !{ptr @atom_put_dst._entry_ptr.245, !438, !"_entry_ptr", i1 false, i1 false}
!440 = !{ptr @atom_put_dst._entry.246, !441, !"_entry", i1 false, i1 false}
!441 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 484, i32 5}
!442 = !{ptr @atom_put_dst._entry_ptr.247, !441, !"_entry_ptr", i1 false, i1 false}
!443 = !{ptr @.str.249, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 488, i32 5}
!445 = !{ptr @atom_put_dst._entry.248, !444, !"_entry", i1 false, i1 false}
!446 = !{ptr @atom_put_dst._entry_ptr.250, !444, !"_entry_ptr", i1 false, i1 false}
!447 = !{ptr @.str.252, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 499, i32 3}
!449 = !{ptr @atom_put_dst._entry.251, !448, !"_entry", i1 false, i1 false}
!450 = !{ptr @atom_put_dst._entry_ptr.253, !448, !"_entry_ptr", i1 false, i1 false}
!451 = !{ptr @atom_put_dst._entry.254, !452, !"_entry", i1 false, i1 false}
!452 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 505, i32 3}
!453 = !{ptr @atom_put_dst._entry_ptr.255, !452, !"_entry_ptr", i1 false, i1 false}
!454 = !{ptr @.str.256, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 539, i32 4}
!456 = !{ptr @atom_put_dst._entry.257, !457, !"_entry", i1 false, i1 false}
!457 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 543, i32 3}
!458 = !{ptr @atom_put_dst._entry_ptr.258, !457, !"_entry_ptr", i1 false, i1 false}
!459 = !{ptr @atom_put_dst._entry.259, !460, !"_entry", i1 false, i1 false}
!460 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 548, i32 3}
!461 = !{ptr @atom_put_dst._entry_ptr.260, !460, !"_entry_ptr", i1 false, i1 false}
!462 = !{ptr @atom_put_dst._entry.261, !463, !"_entry", i1 false, i1 false}
!463 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 554, i32 3}
!464 = !{ptr @atom_put_dst._entry_ptr.262, !463, !"_entry_ptr", i1 false, i1 false}
!465 = !{ptr @.str.264, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 560, i32 3}
!467 = !{ptr @atom_put_dst._entry.263, !466, !"_entry", i1 false, i1 false}
!468 = !{ptr @atom_put_dst._entry_ptr.265, !466, !"_entry_ptr", i1 false, i1 false}
!469 = !{ptr @.str.267, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 563, i32 3}
!471 = !{ptr @atom_put_dst._entry.266, !470, !"_entry", i1 false, i1 false}
!472 = !{ptr @atom_put_dst._entry_ptr.268, !470, !"_entry_ptr", i1 false, i1 false}
!473 = !{ptr @.str.270, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 566, i32 3}
!475 = !{ptr @atom_put_dst._entry.269, !474, !"_entry", i1 false, i1 false}
!476 = !{ptr @atom_put_dst._entry_ptr.271, !474, !"_entry_ptr", i1 false, i1 false}
!477 = !{ptr @.str.273, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 569, i32 3}
!479 = !{ptr @atom_put_dst._entry.272, !478, !"_entry", i1 false, i1 false}
!480 = !{ptr @atom_put_dst._entry_ptr.274, !478, !"_entry_ptr", i1 false, i1 false}
!481 = !{ptr @.str.276, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 572, i32 3}
!483 = !{ptr @atom_put_dst._entry.275, !482, !"_entry", i1 false, i1 false}
!484 = !{ptr @atom_put_dst._entry_ptr.277, !482, !"_entry_ptr", i1 false, i1 false}
!485 = !{ptr @.str.279, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 575, i32 3}
!487 = !{ptr @atom_put_dst._entry.278, !486, !"_entry", i1 false, i1 false}
!488 = !{ptr @atom_put_dst._entry_ptr.280, !486, !"_entry_ptr", i1 false, i1 false}
!489 = !{ptr @.str.282, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 578, i32 3}
!491 = !{ptr @atom_put_dst._entry.281, !490, !"_entry", i1 false, i1 false}
!492 = !{ptr @atom_put_dst._entry_ptr.283, !490, !"_entry_ptr", i1 false, i1 false}
!493 = !{ptr @.str.285, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 581, i32 3}
!495 = !{ptr @atom_put_dst._entry.284, !494, !"_entry", i1 false, i1 false}
!496 = !{ptr @atom_put_dst._entry_ptr.286, !494, !"_entry_ptr", i1 false, i1 false}
!497 = !{ptr @.str.287, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 605, i32 2}
!499 = !{ptr @atom_op_and._entry, !498, !"_entry", i1 false, i1 false}
!500 = !{ptr @atom_op_and._entry_ptr, !498, !"_entry_ptr", i1 false, i1 false}
!501 = !{ptr @atom_op_and._entry.288, !498, !"_entry", i1 false, i1 false}
!502 = !{ptr @atom_op_and._entry_ptr.289, !498, !"_entry_ptr", i1 false, i1 false}
!503 = !{ptr @atom_op_and._entry.290, !504, !"_entry", i1 false, i1 false}
!504 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 607, i32 2}
!505 = !{ptr @atom_op_and._entry_ptr.291, !504, !"_entry_ptr", i1 false, i1 false}
!506 = !{ptr @atom_op_and._entry.292, !504, !"_entry", i1 false, i1 false}
!507 = !{ptr @atom_op_and._entry_ptr.293, !504, !"_entry_ptr", i1 false, i1 false}
!508 = !{ptr @atom_op_and._entry.294, !509, !"_entry", i1 false, i1 false}
!509 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 610, i32 2}
!510 = !{ptr @atom_op_and._entry_ptr.295, !509, !"_entry_ptr", i1 false, i1 false}
!511 = !{ptr @atom_op_and._entry.296, !509, !"_entry", i1 false, i1 false}
!512 = !{ptr @atom_op_and._entry_ptr.297, !509, !"_entry_ptr", i1 false, i1 false}
!513 = !{ptr @.str.298, !514, !"<string literal>", i1 false, i1 false}
!514 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 803, i32 2}
!515 = !{ptr @atom_op_or._entry, !514, !"_entry", i1 false, i1 false}
!516 = !{ptr @atom_op_or._entry_ptr, !514, !"_entry_ptr", i1 false, i1 false}
!517 = !{ptr @atom_op_or._entry.299, !514, !"_entry", i1 false, i1 false}
!518 = !{ptr @atom_op_or._entry_ptr.300, !514, !"_entry_ptr", i1 false, i1 false}
!519 = !{ptr @atom_op_or._entry.301, !520, !"_entry", i1 false, i1 false}
!520 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 805, i32 2}
!521 = !{ptr @atom_op_or._entry_ptr.302, !520, !"_entry_ptr", i1 false, i1 false}
!522 = !{ptr @atom_op_or._entry.303, !520, !"_entry", i1 false, i1 false}
!523 = !{ptr @atom_op_or._entry_ptr.304, !520, !"_entry_ptr", i1 false, i1 false}
!524 = !{ptr @atom_op_or._entry.305, !525, !"_entry", i1 false, i1 false}
!525 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 808, i32 2}
!526 = !{ptr @atom_op_or._entry_ptr.306, !525, !"_entry_ptr", i1 false, i1 false}
!527 = !{ptr @atom_op_or._entry.307, !525, !"_entry", i1 false, i1 false}
!528 = !{ptr @atom_op_or._entry_ptr.308, !525, !"_entry_ptr", i1 false, i1 false}
!529 = !{ptr @.str.309, !530, !"<string literal>", i1 false, i1 false}
!530 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 895, i32 2}
!531 = !{ptr @atom_op_shift_left._entry, !530, !"_entry", i1 false, i1 false}
!532 = !{ptr @atom_op_shift_left._entry_ptr, !530, !"_entry_ptr", i1 false, i1 false}
!533 = !{ptr @atom_op_shift_left._entry.310, !530, !"_entry", i1 false, i1 false}
!534 = !{ptr @atom_op_shift_left._entry_ptr.311, !530, !"_entry_ptr", i1 false, i1 false}
!535 = !{ptr @atom_op_shift_left._entry.312, !536, !"_entry", i1 false, i1 false}
!536 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 898, i32 2}
!537 = !{ptr @atom_op_shift_left._entry_ptr.313, !536, !"_entry_ptr", i1 false, i1 false}
!538 = !{ptr @.str.315, !536, !"<string literal>", i1 false, i1 false}
!539 = !{ptr @atom_op_shift_left._entry.314, !536, !"_entry", i1 false, i1 false}
!540 = !{ptr @atom_op_shift_left._entry_ptr.316, !536, !"_entry_ptr", i1 false, i1 false}
!541 = !{ptr @atom_op_shift_left._entry.317, !542, !"_entry", i1 false, i1 false}
!542 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 900, i32 2}
!543 = !{ptr @atom_op_shift_left._entry_ptr.318, !542, !"_entry_ptr", i1 false, i1 false}
!544 = !{ptr @atom_op_shift_left._entry.319, !542, !"_entry", i1 false, i1 false}
!545 = !{ptr @atom_op_shift_left._entry_ptr.320, !542, !"_entry_ptr", i1 false, i1 false}
!546 = !{ptr @atom_def_dst, !547, !"atom_def_dst", i1 false, i1 false}
!547 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 90, i32 12}
!548 = !{ptr @.str.321, !549, !"<string literal>", i1 false, i1 false}
!549 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 911, i32 2}
!550 = !{ptr @atom_op_shift_right._entry, !549, !"_entry", i1 false, i1 false}
!551 = !{ptr @atom_op_shift_right._entry_ptr, !549, !"_entry_ptr", i1 false, i1 false}
!552 = !{ptr @atom_op_shift_right._entry.322, !549, !"_entry", i1 false, i1 false}
!553 = !{ptr @atom_op_shift_right._entry_ptr.323, !549, !"_entry_ptr", i1 false, i1 false}
!554 = !{ptr @atom_op_shift_right._entry.324, !555, !"_entry", i1 false, i1 false}
!555 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 914, i32 2}
!556 = !{ptr @atom_op_shift_right._entry_ptr.325, !555, !"_entry_ptr", i1 false, i1 false}
!557 = !{ptr @atom_op_shift_right._entry.326, !555, !"_entry", i1 false, i1 false}
!558 = !{ptr @atom_op_shift_right._entry_ptr.327, !555, !"_entry_ptr", i1 false, i1 false}
!559 = !{ptr @atom_op_shift_right._entry.328, !560, !"_entry", i1 false, i1 false}
!560 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 916, i32 2}
!561 = !{ptr @atom_op_shift_right._entry_ptr.329, !560, !"_entry_ptr", i1 false, i1 false}
!562 = !{ptr @atom_op_shift_right._entry.330, !560, !"_entry", i1 false, i1 false}
!563 = !{ptr @atom_op_shift_right._entry_ptr.331, !560, !"_entry_ptr", i1 false, i1 false}
!564 = !{ptr @.str.332, !565, !"<string literal>", i1 false, i1 false}
!565 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 786, i32 2}
!566 = !{ptr @atom_op_mul._entry, !565, !"_entry", i1 false, i1 false}
!567 = !{ptr @atom_op_mul._entry_ptr, !565, !"_entry_ptr", i1 false, i1 false}
!568 = !{ptr @.str.334, !565, !"<string literal>", i1 false, i1 false}
!569 = !{ptr @atom_op_mul._entry.333, !565, !"_entry", i1 false, i1 false}
!570 = !{ptr @atom_op_mul._entry_ptr.335, !565, !"_entry_ptr", i1 false, i1 false}
!571 = !{ptr @atom_op_mul._entry.336, !572, !"_entry", i1 false, i1 false}
!572 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 788, i32 2}
!573 = !{ptr @atom_op_mul._entry_ptr.337, !572, !"_entry_ptr", i1 false, i1 false}
!574 = !{ptr @.str.339, !572, !"<string literal>", i1 false, i1 false}
!575 = !{ptr @atom_op_mul._entry.338, !572, !"_entry", i1 false, i1 false}
!576 = !{ptr @atom_op_mul._entry_ptr.340, !572, !"_entry_ptr", i1 false, i1 false}
!577 = !{ptr @.str.341, !578, !"<string literal>", i1 false, i1 false}
!578 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 677, i32 2}
!579 = !{ptr @atom_op_div._entry, !578, !"_entry", i1 false, i1 false}
!580 = !{ptr @atom_op_div._entry_ptr, !578, !"_entry_ptr", i1 false, i1 false}
!581 = !{ptr @atom_op_div._entry.342, !578, !"_entry", i1 false, i1 false}
!582 = !{ptr @atom_op_div._entry_ptr.343, !578, !"_entry_ptr", i1 false, i1 false}
!583 = !{ptr @atom_op_div._entry.344, !584, !"_entry", i1 false, i1 false}
!584 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 679, i32 2}
!585 = !{ptr @atom_op_div._entry_ptr.345, !584, !"_entry_ptr", i1 false, i1 false}
!586 = !{ptr @atom_op_div._entry.346, !584, !"_entry", i1 false, i1 false}
!587 = !{ptr @atom_op_div._entry_ptr.347, !584, !"_entry_ptr", i1 false, i1 false}
!588 = !{ptr @.str.348, !589, !"<string literal>", i1 false, i1 false}
!589 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 591, i32 2}
!590 = !{ptr @atom_op_add._entry, !589, !"_entry", i1 false, i1 false}
!591 = !{ptr @atom_op_add._entry_ptr, !589, !"_entry_ptr", i1 false, i1 false}
!592 = !{ptr @atom_op_add._entry.349, !589, !"_entry", i1 false, i1 false}
!593 = !{ptr @atom_op_add._entry_ptr.350, !589, !"_entry_ptr", i1 false, i1 false}
!594 = !{ptr @atom_op_add._entry.351, !595, !"_entry", i1 false, i1 false}
!595 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 593, i32 2}
!596 = !{ptr @atom_op_add._entry_ptr.352, !595, !"_entry_ptr", i1 false, i1 false}
!597 = !{ptr @atom_op_add._entry.353, !595, !"_entry", i1 false, i1 false}
!598 = !{ptr @atom_op_add._entry_ptr.354, !595, !"_entry_ptr", i1 false, i1 false}
!599 = !{ptr @atom_op_add._entry.355, !600, !"_entry", i1 false, i1 false}
!600 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 596, i32 2}
!601 = !{ptr @atom_op_add._entry_ptr.356, !600, !"_entry_ptr", i1 false, i1 false}
!602 = !{ptr @atom_op_add._entry.357, !600, !"_entry", i1 false, i1 false}
!603 = !{ptr @atom_op_add._entry_ptr.358, !600, !"_entry_ptr", i1 false, i1 false}
!604 = !{ptr @.str.359, !605, !"<string literal>", i1 false, i1 false}
!605 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 963, i32 2}
!606 = !{ptr @atom_op_sub._entry, !605, !"_entry", i1 false, i1 false}
!607 = !{ptr @atom_op_sub._entry_ptr, !605, !"_entry_ptr", i1 false, i1 false}
!608 = !{ptr @atom_op_sub._entry.360, !605, !"_entry", i1 false, i1 false}
!609 = !{ptr @atom_op_sub._entry_ptr.361, !605, !"_entry_ptr", i1 false, i1 false}
!610 = !{ptr @atom_op_sub._entry.362, !611, !"_entry", i1 false, i1 false}
!611 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 965, i32 2}
!612 = !{ptr @atom_op_sub._entry_ptr.363, !611, !"_entry_ptr", i1 false, i1 false}
!613 = !{ptr @atom_op_sub._entry.364, !611, !"_entry", i1 false, i1 false}
!614 = !{ptr @atom_op_sub._entry_ptr.365, !611, !"_entry_ptr", i1 false, i1 false}
!615 = !{ptr @atom_op_sub._entry.366, !616, !"_entry", i1 false, i1 false}
!616 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 968, i32 2}
!617 = !{ptr @atom_op_sub._entry_ptr.367, !616, !"_entry_ptr", i1 false, i1 false}
!618 = !{ptr @atom_op_sub._entry.368, !616, !"_entry", i1 false, i1 false}
!619 = !{ptr @atom_op_sub._entry_ptr.369, !616, !"_entry_ptr", i1 false, i1 false}
!620 = !{ptr @.str.370, !621, !"<string literal>", i1 false, i1 false}
!621 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 861, i32 4}
!622 = !{ptr @atom_op_setport._entry, !621, !"_entry", i1 false, i1 false}
!623 = !{ptr @atom_op_setport._entry_ptr, !621, !"_entry_ptr", i1 false, i1 false}
!624 = !{ptr @.str.372, !621, !"<string literal>", i1 false, i1 false}
!625 = !{ptr @atom_op_setport._entry.371, !621, !"_entry", i1 false, i1 false}
!626 = !{ptr @atom_op_setport._entry_ptr.373, !621, !"_entry_ptr", i1 false, i1 false}
!627 = !{ptr @atom_op_setport._entry.374, !628, !"_entry", i1 false, i1 false}
!628 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 863, i32 4}
!629 = !{ptr @atom_op_setport._entry_ptr.375, !628, !"_entry_ptr", i1 false, i1 false}
!630 = !{ptr @.str.377, !628, !"<string literal>", i1 false, i1 false}
!631 = !{ptr @atom_op_setport._entry.376, !628, !"_entry", i1 false, i1 false}
!632 = !{ptr @atom_op_setport._entry_ptr.378, !628, !"_entry_ptr", i1 false, i1 false}
!633 = !{ptr @.str.379, !634, !"<string literal>", i1 false, i1 false}
!634 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 89, i32 1}
!635 = !{ptr @.str.380, !636, !"<string literal>", i1 false, i1 false}
!636 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 89, i32 7}
!637 = !{ptr @.str.381, !638, !"<string literal>", i1 false, i1 false}
!638 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 89, i32 14}
!639 = !{ptr @.str.382, !640, !"<string literal>", i1 false, i1 false}
!640 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 89, i32 20}
!641 = !{ptr @.str.383, !642, !"<string literal>", i1 false, i1 false}
!642 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 89, i32 28}
!643 = !{ptr @atom_io_names, !644, !"atom_io_names", i1 false, i1 false}
!644 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 88, i32 14}
!645 = !{ptr @.str.384, !646, !"<string literal>", i1 false, i1 false}
!646 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 885, i32 2}
!647 = !{ptr @atom_op_setregblock._entry, !646, !"_entry", i1 false, i1 false}
!648 = !{ptr @atom_op_setregblock._entry_ptr, !646, !"_entry_ptr", i1 false, i1 false}
!649 = !{ptr @.str.386, !646, !"<string literal>", i1 false, i1 false}
!650 = !{ptr @atom_op_setregblock._entry.385, !646, !"_entry", i1 false, i1 false}
!651 = !{ptr @atom_op_setregblock._entry_ptr.387, !646, !"_entry_ptr", i1 false, i1 false}
!652 = !{ptr @.str.388, !653, !"<string literal>", i1 false, i1 false}
!653 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 850, i32 2}
!654 = !{ptr @atom_op_setfbbase._entry, !653, !"_entry", i1 false, i1 false}
!655 = !{ptr @atom_op_setfbbase._entry_ptr, !653, !"_entry_ptr", i1 false, i1 false}
!656 = !{ptr @.str.390, !653, !"<string literal>", i1 false, i1 false}
!657 = !{ptr @atom_op_setfbbase._entry.389, !653, !"_entry", i1 false, i1 false}
!658 = !{ptr @atom_op_setfbbase._entry_ptr.391, !653, !"_entry_ptr", i1 false, i1 false}
!659 = !{ptr @.str.392, !660, !"<string literal>", i1 false, i1 false}
!660 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 651, i32 2}
!661 = !{ptr @atom_op_compare._entry, !660, !"_entry", i1 false, i1 false}
!662 = !{ptr @atom_op_compare._entry_ptr, !660, !"_entry_ptr", i1 false, i1 false}
!663 = !{ptr @atom_op_compare._entry.393, !660, !"_entry", i1 false, i1 false}
!664 = !{ptr @atom_op_compare._entry_ptr.394, !660, !"_entry_ptr", i1 false, i1 false}
!665 = !{ptr @atom_op_compare._entry.395, !666, !"_entry", i1 false, i1 false}
!666 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 653, i32 2}
!667 = !{ptr @atom_op_compare._entry_ptr.396, !666, !"_entry_ptr", i1 false, i1 false}
!668 = !{ptr @atom_op_compare._entry.397, !666, !"_entry", i1 false, i1 false}
!669 = !{ptr @atom_op_compare._entry_ptr.398, !666, !"_entry_ptr", i1 false, i1 false}
!670 = !{ptr @atom_op_compare._entry.399, !671, !"_entry", i1 false, i1 false}
!671 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 657, i32 2}
!672 = !{ptr @atom_op_compare._entry_ptr.400, !671, !"_entry_ptr", i1 false, i1 false}
!673 = !{ptr @.str.402, !671, !"<string literal>", i1 false, i1 false}
!674 = !{ptr @atom_op_compare._entry.401, !671, !"_entry", i1 false, i1 false}
!675 = !{ptr @atom_op_compare._entry_ptr.403, !671, !"_entry_ptr", i1 false, i1 false}
!676 = !{ptr @.str.404, !671, !"<string literal>", i1 false, i1 false}
!677 = !{ptr @.str.405, !671, !"<string literal>", i1 false, i1 false}
!678 = !{ptr @.str.406, !671, !"<string literal>", i1 false, i1 false}
!679 = !{ptr @.str.407, !671, !"<string literal>", i1 false, i1 false}
!680 = !{ptr @.str.408, !681, !"<string literal>", i1 false, i1 false}
!681 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 976, i32 2}
!682 = !{ptr @atom_op_switch._entry, !681, !"_entry", i1 false, i1 false}
!683 = !{ptr @atom_op_switch._entry_ptr, !681, !"_entry_ptr", i1 false, i1 false}
!684 = !{ptr @.str.410, !681, !"<string literal>", i1 false, i1 false}
!685 = !{ptr @atom_op_switch._entry.409, !681, !"_entry", i1 false, i1 false}
!686 = !{ptr @atom_op_switch._entry_ptr.411, !681, !"_entry_ptr", i1 false, i1 false}
!687 = !{ptr @atom_op_switch._entry.412, !688, !"_entry", i1 false, i1 false}
!688 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 981, i32 4}
!689 = !{ptr @atom_op_switch._entry_ptr.413, !688, !"_entry_ptr", i1 false, i1 false}
!690 = !{ptr @.str.415, !688, !"<string literal>", i1 false, i1 false}
!691 = !{ptr @atom_op_switch._entry.414, !688, !"_entry", i1 false, i1 false}
!692 = !{ptr @atom_op_switch._entry_ptr.416, !688, !"_entry_ptr", i1 false, i1 false}
!693 = !{ptr @atom_op_switch._entry.417, !694, !"_entry", i1 false, i1 false}
!694 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 987, i32 5}
!695 = !{ptr @atom_op_switch._entry_ptr.418, !694, !"_entry_ptr", i1 false, i1 false}
!696 = !{ptr @.str.420, !694, !"<string literal>", i1 false, i1 false}
!697 = !{ptr @atom_op_switch._entry.419, !694, !"_entry", i1 false, i1 false}
!698 = !{ptr @atom_op_switch._entry_ptr.421, !694, !"_entry_ptr", i1 false, i1 false}
!699 = !{ptr @.str.423, !700, !"<string literal>", i1 false, i1 false}
!700 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 993, i32 4}
!701 = !{ptr @atom_op_switch._entry.422, !700, !"_entry", i1 false, i1 false}
!702 = !{ptr @atom_op_switch._entry_ptr.424, !700, !"_entry_ptr", i1 false, i1 false}
!703 = !{ptr @.str.425, !704, !"<string literal>", i1 false, i1 false}
!704 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 725, i32 3}
!705 = !{ptr @atom_op_jump._entry, !704, !"_entry", i1 false, i1 false}
!706 = !{ptr @atom_op_jump._entry_ptr, !704, !"_entry_ptr", i1 false, i1 false}
!707 = !{ptr @.str.427, !704, !"<string literal>", i1 false, i1 false}
!708 = !{ptr @atom_op_jump._entry.426, !704, !"_entry", i1 false, i1 false}
!709 = !{ptr @atom_op_jump._entry_ptr.428, !704, !"_entry_ptr", i1 false, i1 false}
!710 = !{ptr @.str.429, !704, !"<string literal>", i1 false, i1 false}
!711 = !{ptr @.str.430, !704, !"<string literal>", i1 false, i1 false}
!712 = !{ptr @atom_op_jump._entry.431, !713, !"_entry", i1 false, i1 false}
!713 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 726, i32 2}
!714 = !{ptr @atom_op_jump._entry_ptr.432, !713, !"_entry_ptr", i1 false, i1 false}
!715 = !{ptr @.str.434, !713, !"<string literal>", i1 false, i1 false}
!716 = !{ptr @atom_op_jump._entry.433, !713, !"_entry", i1 false, i1 false}
!717 = !{ptr @atom_op_jump._entry_ptr.435, !713, !"_entry_ptr", i1 false, i1 false}
!718 = !{ptr @.str.436, !719, !"<string literal>", i1 false, i1 false}
!719 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 733, i32 6}
!720 = !{ptr @.str.437, !721, !"<string literal>", i1 false, i1 false}
!721 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 1003, i32 2}
!722 = !{ptr @atom_op_test._entry, !721, !"_entry", i1 false, i1 false}
!723 = !{ptr @atom_op_test._entry_ptr, !721, !"_entry_ptr", i1 false, i1 false}
!724 = !{ptr @atom_op_test._entry.438, !721, !"_entry", i1 false, i1 false}
!725 = !{ptr @atom_op_test._entry_ptr.439, !721, !"_entry_ptr", i1 false, i1 false}
!726 = !{ptr @atom_op_test._entry.440, !727, !"_entry", i1 false, i1 false}
!727 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 1005, i32 2}
!728 = !{ptr @atom_op_test._entry_ptr.441, !727, !"_entry_ptr", i1 false, i1 false}
!729 = !{ptr @atom_op_test._entry.442, !727, !"_entry", i1 false, i1 false}
!730 = !{ptr @atom_op_test._entry_ptr.443, !727, !"_entry_ptr", i1 false, i1 false}
!731 = !{ptr @atom_op_test._entry.444, !732, !"_entry", i1 false, i1 false}
!732 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 1008, i32 2}
!733 = !{ptr @atom_op_test._entry_ptr.445, !732, !"_entry_ptr", i1 false, i1 false}
!734 = !{ptr @.str.447, !732, !"<string literal>", i1 false, i1 false}
!735 = !{ptr @atom_op_test._entry.446, !732, !"_entry", i1 false, i1 false}
!736 = !{ptr @atom_op_test._entry_ptr.448, !732, !"_entry_ptr", i1 false, i1 false}
!737 = !{ptr @.str.449, !738, !"<string literal>", i1 false, i1 false}
!738 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 664, i32 2}
!739 = !{ptr @atom_op_delay._entry, !738, !"_entry", i1 false, i1 false}
!740 = !{ptr @atom_op_delay._entry_ptr, !738, !"_entry_ptr", i1 false, i1 false}
!741 = !{ptr @.str.451, !738, !"<string literal>", i1 false, i1 false}
!742 = !{ptr @atom_op_delay._entry.450, !738, !"_entry", i1 false, i1 false}
!743 = !{ptr @atom_op_delay._entry_ptr.452, !738, !"_entry_ptr", i1 false, i1 false}
!744 = !{ptr @.str.453, !745, !"<string literal>", i1 false, i1 false}
!745 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 625, i32 3}
!746 = !{ptr @atom_op_calltable._entry, !745, !"_entry", i1 false, i1 false}
!747 = !{ptr @atom_op_calltable._entry_ptr, !745, !"_entry_ptr", i1 false, i1 false}
!748 = !{ptr @.str.455, !745, !"<string literal>", i1 false, i1 false}
!749 = !{ptr @atom_op_calltable._entry.454, !745, !"_entry", i1 false, i1 false}
!750 = !{ptr @atom_op_calltable._entry_ptr.456, !745, !"_entry_ptr", i1 false, i1 false}
!751 = !{ptr @atom_op_calltable._entry.457, !752, !"_entry", i1 false, i1 false}
!752 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 627, i32 3}
!753 = !{ptr @atom_op_calltable._entry_ptr.458, !752, !"_entry_ptr", i1 false, i1 false}
!754 = !{ptr @.str.460, !752, !"<string literal>", i1 false, i1 false}
!755 = !{ptr @atom_op_calltable._entry.459, !752, !"_entry", i1 false, i1 false}
!756 = !{ptr @atom_op_calltable._entry_ptr.461, !752, !"_entry_ptr", i1 false, i1 false}
!757 = !{ptr @.str.462, !758, !"<string literal>", i1 false, i1 false}
!758 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 60, i32 1}
!759 = !{ptr @.str.463, !760, !"<string literal>", i1 false, i1 false}
!760 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 60, i32 14}
!761 = !{ptr @.str.464, !762, !"<string literal>", i1 false, i1 false}
!762 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 60, i32 39}
!763 = !{ptr @.str.465, !764, !"<string literal>", i1 false, i1 false}
!764 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 61, i32 1}
!765 = !{ptr @.str.466, !766, !"<string literal>", i1 false, i1 false}
!766 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 61, i32 30}
!767 = !{ptr @.str.467, !768, !"<string literal>", i1 false, i1 false}
!768 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 61, i32 48}
!769 = !{ptr @.str.468, !770, !"<string literal>", i1 false, i1 false}
!770 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 62, i32 1}
!771 = !{ptr @.str.469, !772, !"<string literal>", i1 false, i1 false}
!772 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 62, i32 17}
!773 = !{ptr @.str.470, !774, !"<string literal>", i1 false, i1 false}
!774 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 62, i32 38}
!775 = !{ptr @.str.471, !776, !"<string literal>", i1 false, i1 false}
!776 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 63, i32 1}
!777 = !{ptr @.str.472, !778, !"<string literal>", i1 false, i1 false}
!778 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 63, i32 19}
!779 = !{ptr @.str.473, !780, !"<string literal>", i1 false, i1 false}
!780 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 63, i32 37}
!781 = !{ptr @.str.474, !782, !"<string literal>", i1 false, i1 false}
!782 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 63, i32 55}
!783 = !{ptr @.str.475, !784, !"<string literal>", i1 false, i1 false}
!784 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 64, i32 1}
!785 = !{ptr @.str.476, !786, !"<string literal>", i1 false, i1 false}
!786 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 64, i32 23}
!787 = !{ptr @.str.477, !788, !"<string literal>", i1 false, i1 false}
!788 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 64, i32 41}
!789 = !{ptr @.str.478, !790, !"<string literal>", i1 false, i1 false}
!790 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 65, i32 1}
!791 = !{ptr @.str.479, !792, !"<string literal>", i1 false, i1 false}
!792 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 65, i32 18}
!793 = !{ptr @.str.480, !794, !"<string literal>", i1 false, i1 false}
!794 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 65, i32 45}
!795 = !{ptr @.str.481, !796, !"<string literal>", i1 false, i1 false}
!796 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 66, i32 1}
!797 = !{ptr @.str.482, !798, !"<string literal>", i1 false, i1 false}
!798 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 66, i32 28}
!799 = !{ptr @.str.483, !800, !"<string literal>", i1 false, i1 false}
!800 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 67, i32 1}
!801 = !{ptr @.str.484, !802, !"<string literal>", i1 false, i1 false}
!802 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 67, i32 22}
!803 = !{ptr @.str.485, !804, !"<string literal>", i1 false, i1 false}
!804 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 67, i32 45}
!805 = !{ptr @.str.486, !806, !"<string literal>", i1 false, i1 false}
!806 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 68, i32 1}
!807 = !{ptr @.str.487, !808, !"<string literal>", i1 false, i1 false}
!808 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 68, i32 23}
!809 = !{ptr @.str.488, !810, !"<string literal>", i1 false, i1 false}
!810 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 68, i32 45}
!811 = !{ptr @.str.489, !812, !"<string literal>", i1 false, i1 false}
!812 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 69, i32 1}
!813 = !{ptr @.str.490, !814, !"<string literal>", i1 false, i1 false}
!814 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 69, i32 21}
!815 = !{ptr @.str.491, !816, !"<string literal>", i1 false, i1 false}
!816 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 69, i32 42}
!817 = !{ptr @.str.492, !818, !"<string literal>", i1 false, i1 false}
!818 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 70, i32 1}
!819 = !{ptr @.str.493, !820, !"<string literal>", i1 false, i1 false}
!820 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 70, i32 24}
!821 = !{ptr @.str.494, !822, !"<string literal>", i1 false, i1 false}
!822 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 70, i32 46}
!823 = !{ptr @.str.495, !824, !"<string literal>", i1 false, i1 false}
!824 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 71, i32 1}
!825 = !{ptr @.str.496, !826, !"<string literal>", i1 false, i1 false}
!826 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 71, i32 17}
!827 = !{ptr @.str.497, !828, !"<string literal>", i1 false, i1 false}
!828 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 71, i32 30}
!829 = !{ptr @.str.498, !830, !"<string literal>", i1 false, i1 false}
!830 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 71, i32 44}
!831 = !{ptr @.str.499, !832, !"<string literal>", i1 false, i1 false}
!832 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 72, i32 1}
!833 = !{ptr @.str.500, !834, !"<string literal>", i1 false, i1 false}
!834 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 72, i32 21}
!835 = !{ptr @.str.501, !836, !"<string literal>", i1 false, i1 false}
!836 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 72, i32 41}
!837 = !{ptr @.str.502, !838, !"<string literal>", i1 false, i1 false}
!838 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 73, i32 1}
!839 = !{ptr @.str.503, !840, !"<string literal>", i1 false, i1 false}
!840 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 73, i32 21}
!841 = !{ptr @.str.504, !842, !"<string literal>", i1 false, i1 false}
!842 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 73, i32 44}
!843 = !{ptr @.str.505, !844, !"<string literal>", i1 false, i1 false}
!844 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 74, i32 1}
!845 = !{ptr @.str.506, !846, !"<string literal>", i1 false, i1 false}
!846 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 74, i32 24}
!847 = !{ptr @.str.507, !848, !"<string literal>", i1 false, i1 false}
!848 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 75, i32 1}
!849 = !{ptr @.str.508, !850, !"<string literal>", i1 false, i1 false}
!850 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 75, i32 17}
!851 = !{ptr @.str.509, !852, !"<string literal>", i1 false, i1 false}
!852 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 75, i32 40}
!853 = !{ptr @.str.510, !854, !"<string literal>", i1 false, i1 false}
!854 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 76, i32 1}
!855 = !{ptr @.str.511, !856, !"<string literal>", i1 false, i1 false}
!856 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 76, i32 19}
!857 = !{ptr @.str.512, !858, !"<string literal>", i1 false, i1 false}
!858 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 76, i32 45}
!859 = !{ptr @.str.513, !860, !"<string literal>", i1 false, i1 false}
!860 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 77, i32 1}
!861 = !{ptr @.str.514, !862, !"<string literal>", i1 false, i1 false}
!862 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 77, i32 22}
!863 = !{ptr @.str.515, !864, !"<string literal>", i1 false, i1 false}
!864 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 77, i32 52}
!865 = !{ptr @.str.516, !866, !"<string literal>", i1 false, i1 false}
!866 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 78, i32 1}
!867 = !{ptr @.str.517, !868, !"<string literal>", i1 false, i1 false}
!868 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 78, i32 30}
!869 = !{ptr @.str.518, !870, !"<string literal>", i1 false, i1 false}
!870 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 79, i32 1}
!871 = !{ptr @.str.519, !872, !"<string literal>", i1 false, i1 false}
!872 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 79, i32 28}
!873 = !{ptr @.str.520, !874, !"<string literal>", i1 false, i1 false}
!874 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 79, i32 47}
!875 = !{ptr @.str.521, !876, !"<string literal>", i1 false, i1 false}
!876 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 80, i32 1}
!877 = !{ptr @.str.522, !878, !"<string literal>", i1 false, i1 false}
!878 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 80, i32 23}
!879 = !{ptr @.str.523, !880, !"<string literal>", i1 false, i1 false}
!880 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 80, i32 49}
!881 = !{ptr @.str.524, !882, !"<string literal>", i1 false, i1 false}
!882 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 81, i32 1}
!883 = !{ptr @.str.525, !884, !"<string literal>", i1 false, i1 false}
!884 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 81, i32 29}
!885 = !{ptr @.str.526, !886, !"<string literal>", i1 false, i1 false}
!886 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 81, i32 54}
!887 = !{ptr @.str.527, !888, !"<string literal>", i1 false, i1 false}
!888 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 82, i32 1}
!889 = !{ptr @.str.528, !890, !"<string literal>", i1 false, i1 false}
!890 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 82, i32 18}
!891 = !{ptr @.str.529, !892, !"<string literal>", i1 false, i1 false}
!892 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 82, i32 39}
!893 = !{ptr @.str.530, !894, !"<string literal>", i1 false, i1 false}
!894 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 82, i32 53}
!895 = !{ptr @.str.531, !896, !"<string literal>", i1 false, i1 false}
!896 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 83, i32 1}
!897 = !{ptr @.str.532, !898, !"<string literal>", i1 false, i1 false}
!898 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 83, i32 22}
!899 = !{ptr @.str.533, !900, !"<string literal>", i1 false, i1 false}
!900 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 83, i32 50}
!901 = !{ptr @.str.534, !902, !"<string literal>", i1 false, i1 false}
!902 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 84, i32 1}
!903 = !{ptr @.str.535, !904, !"<string literal>", i1 false, i1 false}
!904 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 84, i32 21}
!905 = !{ptr @atom_table_names, !906, !"atom_table_names", i1 false, i1 false}
!906 = !{!"../drivers/gpu/drm/radeon/atom-names.h", i32 59, i32 14}
!907 = !{ptr @.str.536, !908, !"<string literal>", i1 false, i1 false}
!908 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 820, i32 2}
!909 = !{ptr @.str.537, !908, !"<string literal>", i1 false, i1 false}
!910 = !{ptr @atom_op_repeat._entry, !908, !"_entry", i1 false, i1 false}
!911 = !{ptr @atom_op_repeat._entry_ptr, !908, !"_entry_ptr", i1 false, i1 false}
!912 = !{ptr @.str.538, !913, !"<string literal>", i1 false, i1 false}
!913 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 643, i32 2}
!914 = !{ptr @atom_op_clear._entry, !913, !"_entry", i1 false, i1 false}
!915 = !{ptr @atom_op_clear._entry_ptr, !913, !"_entry_ptr", i1 false, i1 false}
!916 = !{ptr @atom_op_clear._entry.539, !913, !"_entry", i1 false, i1 false}
!917 = !{ptr @atom_op_clear._entry_ptr.540, !913, !"_entry_ptr", i1 false, i1 false}
!918 = !{ptr @.str.541, !919, !"<string literal>", i1 false, i1 false}
!919 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 753, i32 2}
!920 = !{ptr @atom_op_mask._entry, !919, !"_entry", i1 false, i1 false}
!921 = !{ptr @atom_op_mask._entry_ptr, !919, !"_entry_ptr", i1 false, i1 false}
!922 = !{ptr @atom_op_mask._entry.542, !919, !"_entry", i1 false, i1 false}
!923 = !{ptr @atom_op_mask._entry_ptr.543, !919, !"_entry_ptr", i1 false, i1 false}
!924 = !{ptr @atom_op_mask._entry.544, !925, !"_entry", i1 false, i1 false}
!925 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 756, i32 2}
!926 = !{ptr @atom_op_mask._entry_ptr.545, !925, !"_entry_ptr", i1 false, i1 false}
!927 = !{ptr @.str.547, !925, !"<string literal>", i1 false, i1 false}
!928 = !{ptr @atom_op_mask._entry.546, !925, !"_entry", i1 false, i1 false}
!929 = !{ptr @atom_op_mask._entry_ptr.548, !925, !"_entry_ptr", i1 false, i1 false}
!930 = !{ptr @atom_op_mask._entry.549, !931, !"_entry", i1 false, i1 false}
!931 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 757, i32 2}
!932 = !{ptr @atom_op_mask._entry_ptr.550, !931, !"_entry_ptr", i1 false, i1 false}
!933 = !{ptr @atom_op_mask._entry.551, !931, !"_entry", i1 false, i1 false}
!934 = !{ptr @atom_op_mask._entry_ptr.552, !931, !"_entry_ptr", i1 false, i1 false}
!935 = !{ptr @atom_op_mask._entry.553, !936, !"_entry", i1 false, i1 false}
!936 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 761, i32 2}
!937 = !{ptr @atom_op_mask._entry_ptr.554, !936, !"_entry_ptr", i1 false, i1 false}
!938 = !{ptr @atom_op_mask._entry.555, !936, !"_entry", i1 false, i1 false}
!939 = !{ptr @atom_op_mask._entry_ptr.556, !936, !"_entry_ptr", i1 false, i1 false}
!940 = !{ptr @.str.557, !941, !"<string literal>", i1 false, i1 false}
!941 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 815, i32 2}
!942 = !{ptr @atom_op_postcard._entry, !941, !"_entry", i1 false, i1 false}
!943 = !{ptr @atom_op_postcard._entry_ptr, !941, !"_entry_ptr", i1 false, i1 false}
!944 = !{ptr @.str.559, !941, !"<string literal>", i1 false, i1 false}
!945 = !{ptr @atom_op_postcard._entry.558, !941, !"_entry", i1 false, i1 false}
!946 = !{ptr @atom_op_postcard._entry_ptr.560, !941, !"_entry_ptr", i1 false, i1 false}
!947 = !{ptr @.str.561, !948, !"<string literal>", i1 false, i1 false}
!948 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 616, i32 2}
!949 = !{ptr @.str.562, !948, !"<string literal>", i1 false, i1 false}
!950 = !{ptr @atom_op_beep._entry, !948, !"_entry", i1 false, i1 false}
!951 = !{ptr @atom_op_beep._entry_ptr, !948, !"_entry_ptr", i1 false, i1 false}
!952 = !{ptr @.str.563, !953, !"<string literal>", i1 false, i1 false}
!953 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 830, i32 2}
!954 = !{ptr @atom_op_savereg._entry, !953, !"_entry", i1 false, i1 false}
!955 = !{ptr @atom_op_savereg._entry_ptr, !953, !"_entry_ptr", i1 false, i1 false}
!956 = !{ptr @.str.564, !957, !"<string literal>", i1 false, i1 false}
!957 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 825, i32 2}
!958 = !{ptr @atom_op_restorereg._entry, !957, !"_entry", i1 false, i1 false}
!959 = !{ptr @atom_op_restorereg._entry_ptr, !957, !"_entry_ptr", i1 false, i1 false}
!960 = !{ptr @.str.565, !961, !"<string literal>", i1 false, i1 false}
!961 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 837, i32 2}
!962 = !{ptr @atom_op_setdatablock._entry, !961, !"_entry", i1 false, i1 false}
!963 = !{ptr @atom_op_setdatablock._entry_ptr, !961, !"_entry_ptr", i1 false, i1 false}
!964 = !{ptr @.str.567, !961, !"<string literal>", i1 false, i1 false}
!965 = !{ptr @atom_op_setdatablock._entry.566, !961, !"_entry", i1 false, i1 false}
!966 = !{ptr @atom_op_setdatablock._entry_ptr.568, !961, !"_entry_ptr", i1 false, i1 false}
!967 = !{ptr @atom_op_setdatablock._entry.569, !968, !"_entry", i1 false, i1 false}
!968 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 844, i32 2}
!969 = !{ptr @atom_op_setdatablock._entry_ptr.570, !968, !"_entry_ptr", i1 false, i1 false}
!970 = !{ptr @atom_op_setdatablock._entry.571, !968, !"_entry", i1 false, i1 false}
!971 = !{ptr @atom_op_setdatablock._entry_ptr.572, !968, !"_entry_ptr", i1 false, i1 false}
!972 = !{ptr @.str.573, !973, !"<string literal>", i1 false, i1 false}
!973 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 1016, i32 2}
!974 = !{ptr @atom_op_xor._entry, !973, !"_entry", i1 false, i1 false}
!975 = !{ptr @atom_op_xor._entry_ptr, !973, !"_entry_ptr", i1 false, i1 false}
!976 = !{ptr @atom_op_xor._entry.574, !973, !"_entry", i1 false, i1 false}
!977 = !{ptr @atom_op_xor._entry_ptr.575, !973, !"_entry_ptr", i1 false, i1 false}
!978 = !{ptr @atom_op_xor._entry.576, !979, !"_entry", i1 false, i1 false}
!979 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 1018, i32 2}
!980 = !{ptr @atom_op_xor._entry_ptr.577, !979, !"_entry_ptr", i1 false, i1 false}
!981 = !{ptr @atom_op_xor._entry.578, !979, !"_entry", i1 false, i1 false}
!982 = !{ptr @atom_op_xor._entry_ptr.579, !979, !"_entry_ptr", i1 false, i1 false}
!983 = !{ptr @atom_op_xor._entry.580, !984, !"_entry", i1 false, i1 false}
!984 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 1021, i32 2}
!985 = !{ptr @atom_op_xor._entry_ptr.581, !984, !"_entry_ptr", i1 false, i1 false}
!986 = !{ptr @atom_op_xor._entry.582, !984, !"_entry", i1 false, i1 false}
!987 = !{ptr @atom_op_xor._entry_ptr.583, !984, !"_entry_ptr", i1 false, i1 false}
!988 = !{ptr @.str.584, !989, !"<string literal>", i1 false, i1 false}
!989 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 926, i32 2}
!990 = !{ptr @atom_op_shl._entry, !989, !"_entry", i1 false, i1 false}
!991 = !{ptr @atom_op_shl._entry_ptr, !989, !"_entry_ptr", i1 false, i1 false}
!992 = !{ptr @atom_op_shl._entry.585, !989, !"_entry", i1 false, i1 false}
!993 = !{ptr @atom_op_shl._entry_ptr.586, !989, !"_entry_ptr", i1 false, i1 false}
!994 = !{ptr @atom_op_shl._entry.587, !995, !"_entry", i1 false, i1 false}
!995 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 931, i32 2}
!996 = !{ptr @atom_op_shl._entry_ptr.588, !995, !"_entry_ptr", i1 false, i1 false}
!997 = !{ptr @atom_op_shl._entry.589, !995, !"_entry", i1 false, i1 false}
!998 = !{ptr @atom_op_shl._entry_ptr.590, !995, !"_entry_ptr", i1 false, i1 false}
!999 = !{ptr @atom_op_shl._entry.591, !1000, !"_entry", i1 false, i1 false}
!1000 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 935, i32 2}
!1001 = !{ptr @atom_op_shl._entry_ptr.592, !1000, !"_entry_ptr", i1 false, i1 false}
!1002 = !{ptr @atom_op_shl._entry.593, !1000, !"_entry", i1 false, i1 false}
!1003 = !{ptr @atom_op_shl._entry_ptr.594, !1000, !"_entry_ptr", i1 false, i1 false}
!1004 = !{ptr @.str.595, !1005, !"<string literal>", i1 false, i1 false}
!1005 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 945, i32 2}
!1006 = !{ptr @atom_op_shr._entry, !1005, !"_entry", i1 false, i1 false}
!1007 = !{ptr @atom_op_shr._entry_ptr, !1005, !"_entry_ptr", i1 false, i1 false}
!1008 = !{ptr @atom_op_shr._entry.596, !1005, !"_entry", i1 false, i1 false}
!1009 = !{ptr @atom_op_shr._entry_ptr.597, !1005, !"_entry_ptr", i1 false, i1 false}
!1010 = !{ptr @atom_op_shr._entry.598, !1011, !"_entry", i1 false, i1 false}
!1011 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 950, i32 2}
!1012 = !{ptr @atom_op_shr._entry_ptr.599, !1011, !"_entry_ptr", i1 false, i1 false}
!1013 = !{ptr @atom_op_shr._entry.600, !1011, !"_entry", i1 false, i1 false}
!1014 = !{ptr @atom_op_shr._entry_ptr.601, !1011, !"_entry_ptr", i1 false, i1 false}
!1015 = !{ptr @atom_op_shr._entry.602, !1016, !"_entry", i1 false, i1 false}
!1016 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 954, i32 2}
!1017 = !{ptr @atom_op_shr._entry_ptr.603, !1016, !"_entry_ptr", i1 false, i1 false}
!1018 = !{ptr @atom_op_shr._entry.604, !1016, !"_entry", i1 false, i1 false}
!1019 = !{ptr @atom_op_shr._entry_ptr.605, !1016, !"_entry_ptr", i1 false, i1 false}
!1020 = !{ptr @.str.606, !1021, !"<string literal>", i1 false, i1 false}
!1021 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 1027, i32 2}
!1022 = !{ptr @atom_op_debug._entry, !1021, !"_entry", i1 false, i1 false}
!1023 = !{ptr @atom_op_debug._entry_ptr, !1021, !"_entry_ptr", i1 false, i1 false}
!1024 = !{ptr @atom_iio_len, !1025, !"atom_iio_len", i1 false, i1 false}
!1025 = !{!"../drivers/gpu/drm/radeon/atom.c", i32 1248, i32 12}
!1026 = !{!"sp"}
!1027 = !{i32 1, !"wchar_size", i32 2}
!1028 = !{i32 1, !"min_enum_size", i32 4}
!1029 = !{i32 8, !"branch-target-enforcement", i32 0}
!1030 = !{i32 8, !"sign-return-address", i32 0}
!1031 = !{i32 8, !"sign-return-address-all", i32 0}
!1032 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!1033 = !{i32 7, !"uwtable", i32 1}
!1034 = !{i32 7, !"frame-pointer", i32 2}
!1035 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!1036 = !{i8 0, i8 2}
!1037 = !{!"auto-init"}
!1038 = !{i64 779868}
