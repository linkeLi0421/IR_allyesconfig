; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/radeon_clocks.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/radeon_clocks.c"
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
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.88, ptr, i32, ptr, i8, i32 }
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
%struct.anon.88 = type { i32, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.87, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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

@radeon_get_clock_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016[drm] Using generic clock info\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"radeon_get_clock_info\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/radeon/radeon_clocks.c\00", [57 x i8] zeroinitializer }, align 32
@radeon_get_clock_info._entry_ptr = internal global ptr @radeon_get_clock_info._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ATY,RefCLK\00", [21 x i8] zeroinitializer }, align 32
@radeon_read_clocks_OF._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014radeonfb: No ATY,RefCLK property !\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"radeon_read_clocks_OF\00", [42 x i8] zeroinitializer }, align 32
@radeon_read_clocks_OF._entry_ptr = internal global ptr @radeon_read_clocks_OF._entry, section ".printk_index", align 4
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ATY,SCLK\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ATY,MCLK\00", [23 x i8] zeroinitializer }, align 32
@radeon_read_clocks_OF._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.2, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016[drm] Using device-tree clock info\0A\00", [58 x i8] zeroinitializer }, align 32
@radeon_read_clocks_OF._entry_ptr.10 = internal global ptr @radeon_read_clocks_OF._entry.8, section ".printk_index", align 4
@switch.table.radeon_legacy_set_engine_clock = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 2, i32 1, i32 3, i32 1, i32 1, i32 1, i32 4], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.12 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.14 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 6, i64 8]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 6]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 6]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 6, i64 8]
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 225, i32 4 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 116, i32 28 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 118, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 155, i32 28 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 162, i32 28 }
@___asan_gen_.48 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private constant [42 x i8] c"../drivers/gpu/drm/radeon/radeon_clocks.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 169, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [44 x i8] c"switch.table.radeon_legacy_set_engine_clock\00", align 1
@llvm.compiler.used = appending global [16 x ptr] [ptr @radeon_get_clock_info._entry, ptr @radeon_get_clock_info._entry_ptr, ptr @radeon_read_clocks_OF._entry, ptr @radeon_read_clocks_OF._entry.8, ptr @radeon_read_clocks_OF._entry_ptr, ptr @radeon_read_clocks_OF._entry_ptr.10, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @switch.table.radeon_legacy_set_engine_clock], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_get_clock_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_read_clocks_OF._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_read_clocks_OF._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.radeon_legacy_set_engine_clock to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_legacy_get_engine_clock(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %spll1 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 41, i32 3
  %pll_rreg = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 34
  %0 = ptrtoint ptr %pll_rreg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pll_rreg, align 8
  %call = tail call i32 %1(ptr noundef %rdev, i32 noundef 10) #3
  %2 = ptrtoint ptr %spll1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %spll1, align 4
  %4 = ptrtoint ptr %pll_rreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pll_rreg, align 8
  %call3 = tail call i32 %5(ptr noundef %rdev, i32 noundef 10) #3
  %and4 = and i32 %call3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %cmp = icmp eq i32 %and4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = lshr i32 %call, 15
  %shl = and i32 %6, 510
  %mul = mul i32 %shl, %3
  %div = udiv i32 %mul, %and4
  %7 = ptrtoint ptr %pll_rreg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pll_rreg, align 8
  %call6 = tail call i32 %8(ptr noundef %rdev, i32 noundef 13) #3
  %and7 = and i32 %call6, 7
  %9 = zext i32 %and7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and7, label %if.end.cleanup_crit_edge [
    i32 2, label %if.then9
    i32 3, label %if.then12
    i32 4, label %if.then16
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %shr10 = lshr i32 %div, 1
  br label %cleanup

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %shr13 = lshr i32 %div, 2
  br label %cleanup

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %shr17 = lshr i32 %div, 3
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.then12, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %shr10, %if.then9 ], [ %shr13, %if.then12 ], [ %shr17, %if.then16 ], [ %div, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_legacy_get_memory_clock(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mpll1 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 41, i32 4
  %pll_rreg = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 34
  %0 = ptrtoint ptr %pll_rreg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pll_rreg, align 8
  %call = tail call i32 %1(ptr noundef %rdev, i32 noundef 10) #3
  %2 = ptrtoint ptr %mpll1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mpll1, align 4
  %4 = ptrtoint ptr %pll_rreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pll_rreg, align 8
  %call3 = tail call i32 %5(ptr noundef %rdev, i32 noundef 10) #3
  %and4 = and i32 %call3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %cmp = icmp eq i32 %and4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = lshr i32 %call, 7
  %shl = and i32 %6, 510
  %mul = mul i32 %shl, %3
  %div = udiv i32 %mul, %and4
  %7 = ptrtoint ptr %pll_rreg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pll_rreg, align 8
  %call6 = tail call i32 %8(ptr noundef %rdev, i32 noundef 18) #3
  %and7 = and i32 %call6, 7
  %9 = zext i32 %and7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %and7, label %if.end.cleanup_crit_edge [
    i32 2, label %if.then9
    i32 3, label %if.then12
    i32 4, label %if.then16
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %shr10 = lshr i32 %div, 1
  br label %cleanup

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %shr13 = lshr i32 %div, 2
  br label %cleanup

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %shr17 = lshr i32 %div, 3
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.then12, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %shr10, %if.then9 ], [ %shr13, %if.then12 ], [ %shr17, %if.then16 ], [ %div, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_get_clock_info(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %clock = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41
  %p2pll3 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 1
  %spll7 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 3
  %mpll9 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 4
  %is_atom_bios = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %is_atom_bios to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_atom_bios, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call zeroext i1 @radeon_atom_get_clock_info(ptr noundef %dev) #3
  br i1 %call, label %if.then.if.then18_crit_edge, label %if.then.if.then13_crit_edge

if.then.if.then13_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then13

if.then.if.then18_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then18

if.end:                                           ; preds = %entry
  %call10 = tail call zeroext i1 @radeon_combios_get_clock_info(ptr noundef %dev) #3
  br i1 %call10, label %if.end.if.then18_crit_edge, label %if.end.if.then13_crit_edge

if.end.if.then13_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then13

if.end.if.then18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then18

if.then13:                                        ; preds = %if.end.if.then13_crit_edge, %if.then.if.then13_crit_edge
  %4 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private, align 4
  %pdev.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i, align 8
  %of_node.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44, i32 27
  %8 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node.i, align 8
  %clock.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 41
  %p2pll4.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 41, i32 1
  %spll6.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 41, i32 3
  %mpll8.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 41, i32 4
  %cmp.i = icmp eq ptr %9, null
  br i1 %cmp.i, label %if.then13.if.else102_crit_edge, label %if.end.i

if.then13.if.else102_crit_edge:                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else102

if.end.i:                                         ; preds = %if.then13
  %call.i = tail call ptr @of_get_property(ptr noundef nonnull %9, ptr noundef nonnull @.str.3, ptr noundef null) #3
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i.if.end16.thread418_crit_edge, label %lor.lhs.false.i

if.end.i.if.end16.thread418_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end16.thread418

lor.lhs.false.i:                                  ; preds = %if.end.i
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool9.not.i = icmp eq i32 %11, 0
  br i1 %tobool9.not.i, label %lor.lhs.false.i.if.end16.thread418_crit_edge, label %if.end12.i

lor.lhs.false.i.if.end16.thread418_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end16.thread418

if.end12.i:                                       ; preds = %lor.lhs.false.i
  %div.i = udiv i32 %11, 10
  %12 = ptrtoint ptr %p2pll4.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %div.i, ptr %p2pll4.i, align 4
  %13 = ptrtoint ptr %clock.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div.i, ptr %clock.i, align 4
  %pll_rreg.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 34
  %14 = ptrtoint ptr %pll_rreg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pll_rreg.i, align 8
  %call14.i = tail call i32 %15(ptr noundef %5, i32 noundef 3) #3
  %and.i = and i32 %call14.i, 1023
  %reference_div.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 41, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp16.i = icmp ult i32 %and.i, 2
  %spec.select.i = select i1 %cmp16.i, i32 12, i32 %and.i
  %16 = ptrtoint ptr %reference_div.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %spec.select.i, ptr %reference_div.i, align 4
  %reference_div21.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 41, i32 1, i32 1
  %17 = ptrtoint ptr %reference_div21.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %spec.select.i, ptr %reference_div21.i, align 4
  %family.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 6
  %18 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %19)
  %cmp22.i = icmp ugt i32 %19, 12
  br i1 %cmp22.i, label %if.end12.i.if.end36.i_crit_edge, label %if.else.i

if.end12.i.if.end36.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end36.i

if.else.i:                                        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.else.i, %if.end12.i.if.end36.i_crit_edge
  %.sink140.i = phi i32 [ 40, %if.else.i ], [ 100, %if.end12.i.if.end36.i_crit_edge ]
  %.sink139.i = phi i32 [ 500, %if.else.i ], [ 1350, %if.end12.i.if.end36.i_crit_edge ]
  %.sink138.i = phi i32 [ 12500, %if.else.i ], [ 20000, %if.end12.i.if.end36.i_crit_edge ]
  %.sink137.i = phi i32 [ 35000, %if.else.i ], [ 50000, %if.end12.i.if.end36.i_crit_edge ]
  %20 = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 41, i32 0, i32 3
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink140.i, ptr %20, align 4
  %22 = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 41, i32 0, i32 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink139.i, ptr %22, align 4
  %24 = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 41, i32 0, i32 5
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink138.i, ptr %24, align 4
  %26 = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 41, i32 0, i32 6
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %.sink137.i, ptr %26, align 4
  %28 = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 41, i32 1, i32 3
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %.sink140.i, ptr %28, align 4
  %30 = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 41, i32 1, i32 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink139.i, ptr %30, align 4
  %32 = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 41, i32 1, i32 5
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.sink138.i, ptr %32, align 4
  %34 = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 41, i32 1, i32 6
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.sink137.i, ptr %34, align 4
  %max_pixel_clock.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 41, i32 10
  %36 = ptrtoint ptr %max_pixel_clock.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 35000, ptr %max_pixel_clock.i, align 4
  %37 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %clock.i, align 4
  %39 = ptrtoint ptr %mpll8.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %mpll8.i, align 4
  %40 = ptrtoint ptr %spll6.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %38, ptr %spll6.i, align 4
  %41 = ptrtoint ptr %pll_rreg.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pll_rreg.i, align 8
  %call42.i = tail call i32 %42(ptr noundef %5, i32 noundef 10) #3
  %and43.i = and i32 %call42.i, 255
  %reference_div44.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 41, i32 4, i32 1
  %43 = ptrtoint ptr %reference_div44.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %and43.i, ptr %reference_div44.i, align 4
  %reference_div45.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 41, i32 3, i32 1
  %44 = ptrtoint ptr %reference_div45.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %and43.i, ptr %reference_div45.i, align 4
  %call46.i = tail call ptr @of_get_property(ptr noundef nonnull %9, ptr noundef nonnull @.str.6, ptr noundef null) #3
  %tobool47.not.i = icmp eq ptr %call46.i, null
  br i1 %tobool47.not.i, label %if.end36.i.if.else52.i_crit_edge, label %land.lhs.true.i

if.end36.i.if.else52.i_crit_edge:                 ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else52.i

land.lhs.true.i:                                  ; preds = %if.end36.i
  %45 = ptrtoint ptr %call46.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %call46.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool48.not.i = icmp eq i32 %46, 0
  br i1 %tobool48.not.i, label %land.lhs.true.i.if.else52.i_crit_edge, label %if.then49.i

land.lhs.true.i.if.else52.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else52.i

if.then49.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  %div50.i = udiv i32 %46, 10
  br label %if.end56.i

if.else52.i:                                      ; preds = %land.lhs.true.i.if.else52.i_crit_edge, %if.end36.i.if.else52.i_crit_edge
  %call53.i = tail call i32 @radeon_legacy_get_engine_clock(ptr noundef %5) #3
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.else52.i, %if.then49.i
  %call53.sink.i = phi i32 [ %call53.i, %if.else52.i ], [ %div50.i, %if.then49.i ]
  %default_sclk55.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 41, i32 6
  %47 = ptrtoint ptr %default_sclk55.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call53.sink.i, ptr %default_sclk55.i, align 4
  %call57.i = tail call ptr @of_get_property(ptr noundef nonnull %9, ptr noundef nonnull @.str.7, ptr noundef null) #3
  %tobool58.not.i = icmp eq ptr %call57.i, null
  br i1 %tobool58.not.i, label %if.end56.i.if.else64.i_crit_edge, label %land.lhs.true59.i

if.end56.i.if.else64.i_crit_edge:                 ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else64.i

land.lhs.true59.i:                                ; preds = %if.end56.i
  %48 = ptrtoint ptr %call57.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %call57.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool60.not.i = icmp eq i32 %49, 0
  br i1 %tobool60.not.i, label %land.lhs.true59.i.if.else64.i_crit_edge, label %if.then61.i

land.lhs.true59.i.if.else64.i_crit_edge:          ; preds = %land.lhs.true59.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else64.i

if.then61.i:                                      ; preds = %land.lhs.true59.i
  call void @__sanitizer_cov_trace_pc() #5
  %div62.i = udiv i32 %49, 10
  br label %if.end16

if.else64.i:                                      ; preds = %land.lhs.true59.i.if.else64.i_crit_edge, %if.end56.i.if.else64.i_crit_edge
  %call65.i = tail call i32 @radeon_legacy_get_memory_clock(ptr noundef %5) #3
  br label %if.end16

if.end16.thread418:                               ; preds = %lor.lhs.false.i.if.end16.thread418_crit_edge, %if.end.i.if.end16.thread418_crit_edge
  %call73.i421 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #6
  br label %if.else102

if.end16:                                         ; preds = %if.else64.i, %if.then61.i
  %div62.sink.i = phi i32 [ %div62.i, %if.then61.i ], [ %call65.i, %if.else64.i ]
  %default_mclk.i = getelementptr inbounds %struct.radeon_device, ptr %5, i32 0, i32 41, i32 5
  %50 = ptrtoint ptr %default_mclk.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %div62.sink.i, ptr %default_mclk.i, align 4
  %call73.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #6
  br label %if.then18

if.then18:                                        ; preds = %if.end16, %if.end.if.then18_crit_edge, %if.then.if.then18_crit_edge
  %reference_div = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 0, i32 1
  %51 = ptrtoint ptr %reference_div to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %reference_div, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %52)
  %cmp = icmp ult i32 %52, 2
  br i1 %cmp, label %if.then20, label %if.then18.if.end74_crit_edge

if.then18.if.end74_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end74

if.then20:                                        ; preds = %if.then18
  %family = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %53 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %54)
  %cmp21 = icmp ugt i32 %54, 17
  br i1 %cmp21, label %if.then20.if.end74.sink.split_crit_edge, label %if.then23

if.then20.if.end74.sink.split_crit_edge:          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end74.sink.split

if.then23:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #5
  %pll_rreg = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 34
  %55 = ptrtoint ptr %pll_rreg to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pll_rreg, align 8
  %call24 = tail call i32 %56(ptr noundef %1, i32 noundef 3) #3
  %57 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %family, align 4
  %.off = add i32 %58, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %.off)
  %switch = icmp ult i32 %.off, 9
  %and = lshr i32 %call24, 18
  %spec.select386 = select i1 %switch, i32 %and, i32 %call24
  %storemerge384 = and i32 %spec.select386, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %storemerge384)
  %cmp66 = icmp ult i32 %storemerge384, 2
  %spec.select = select i1 %cmp66, i32 12, i32 %storemerge384
  br label %if.end74.sink.split

if.end74.sink.split:                              ; preds = %if.then23, %if.then20.if.end74.sink.split_crit_edge
  %spec.select.sink = phi i32 [ %spec.select, %if.then23 ], [ 12, %if.then20.if.end74.sink.split_crit_edge ]
  %59 = ptrtoint ptr %reference_div to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %spec.select.sink, ptr %reference_div, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.end74.sink.split, %if.then18.if.end74_crit_edge
  %reference_div75 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 1, i32 1
  %60 = ptrtoint ptr %reference_div75 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %reference_div75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %61)
  %cmp76 = icmp ult i32 %61, 2
  br i1 %cmp76, label %if.then78, label %if.end74.if.end80_crit_edge

if.end74.if.end80_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end80

if.then78:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #5
  %62 = ptrtoint ptr %reference_div75 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 12, ptr %reference_div75, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %if.end74.if.end80_crit_edge
  %family81 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %63 = ptrtoint ptr %family81 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %family81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %64)
  %cmp82 = icmp ult i32 %64, 18
  br i1 %cmp82, label %if.then84, label %if.end80.if.end94_crit_edge

if.end80.if.end94_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end94

if.then84:                                        ; preds = %if.end80
  %reference_div85 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 3, i32 1
  %65 = ptrtoint ptr %reference_div85 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %reference_div85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %66)
  %cmp86 = icmp ult i32 %66, 2
  br i1 %cmp86, label %if.then88, label %if.then84.if.end94_crit_edge

if.then84.if.end94_crit_edge:                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end94

if.then88:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #5
  %pll_rreg89 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 34
  %67 = ptrtoint ptr %pll_rreg89 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pll_rreg89, align 8
  %call90 = tail call i32 %68(ptr noundef %1, i32 noundef 10) #3
  %and91 = and i32 %call90, 255
  %69 = ptrtoint ptr %reference_div85 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %and91, ptr %reference_div85, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.then88, %if.then84.if.end94_crit_edge, %if.end80.if.end94_crit_edge
  %reference_div95 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 4, i32 1
  %70 = ptrtoint ptr %reference_div95 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %reference_div95, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %71)
  %cmp96 = icmp ult i32 %71, 2
  br i1 %cmp96, label %if.then98, label %if.end94.if.end164_crit_edge

if.end94.if.end164_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end164

if.then98:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #5
  %reference_div99 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 3, i32 1
  %72 = ptrtoint ptr %reference_div99 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %reference_div99, align 4
  %74 = ptrtoint ptr %reference_div95 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %reference_div95, align 4
  br label %if.end164

if.else102:                                       ; preds = %if.end16.thread418, %if.then13.if.else102_crit_edge
  %family103 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %75 = ptrtoint ptr %family103 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %family103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %76)
  %cmp104 = icmp ugt i32 %76, 17
  br i1 %cmp104, label %if.else102.if.end164_crit_edge, label %do.end

if.else102.if.end164_crit_edge:                   ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end164

do.end:                                           ; preds = %if.else102
  %call109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #6
  %max_pixel_clock = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 10
  %77 = ptrtoint ptr %max_pixel_clock to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 35000, ptr %max_pixel_clock, align 4
  %flags = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 7
  %78 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %flags, align 8
  %and111 = and i32 %79, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  %. = select i1 %tobool112.not, i32 2700, i32 1432
  %80 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %., ptr %clock, align 4
  %81 = ptrtoint ptr %p2pll3 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %., ptr %p2pll3, align 4
  %82 = ptrtoint ptr %spll7 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %., ptr %spll7, align 4
  %83 = ptrtoint ptr %mpll9 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %., ptr %mpll9, align 4
  %pll_rreg123 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 34
  %84 = ptrtoint ptr %pll_rreg123 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pll_rreg123, align 8
  %call124 = tail call i32 %85(ptr noundef %1, i32 noundef 3) #3
  %and125 = and i32 %call124, 1023
  %reference_div126 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and125)
  %cmp128 = icmp ult i32 %and125, 2
  %storemerge383 = select i1 %cmp128, i32 12, i32 %and125
  %86 = ptrtoint ptr %reference_div126 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %storemerge383, ptr %reference_div126, align 4
  %reference_div134 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 1, i32 1
  %87 = ptrtoint ptr %reference_div134 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %storemerge383, ptr %reference_div134, align 4
  %88 = ptrtoint ptr %family103 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %family103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %89)
  %cmp136 = icmp ugt i32 %89, 12
  br i1 %cmp136, label %do.end.if.end152_crit_edge, label %if.else143

do.end.if.end152_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end152

if.else143:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end152

if.end152:                                        ; preds = %if.else143, %do.end.if.end152_crit_edge
  %.sink430 = phi i32 [ 40, %if.else143 ], [ 100, %do.end.if.end152_crit_edge ]
  %.sink429 = phi i32 [ 500, %if.else143 ], [ 1350, %do.end.if.end152_crit_edge ]
  %.sink428 = phi i32 [ 12500, %if.else143 ], [ 20000, %do.end.if.end152_crit_edge ]
  %.sink427 = phi i32 [ 35000, %if.else143 ], [ 50000, %do.end.if.end152_crit_edge ]
  %90 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 0, i32 3
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %.sink430, ptr %90, align 4
  %92 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 0, i32 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %.sink429, ptr %92, align 4
  %94 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 0, i32 5
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %.sink428, ptr %94, align 4
  %96 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 0, i32 6
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %.sink427, ptr %96, align 4
  %98 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 1, i32 3
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %.sink430, ptr %98, align 4
  %100 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 1, i32 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %.sink429, ptr %100, align 4
  %102 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 1, i32 5
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %.sink428, ptr %102, align 4
  %104 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 1, i32 6
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %.sink427, ptr %104, align 4
  %106 = ptrtoint ptr %pll_rreg123 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pll_rreg123, align 8
  %call154 = tail call i32 %107(ptr noundef %1, i32 noundef 10) #3
  %and155 = and i32 %call154, 255
  %reference_div156 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 3, i32 1
  %108 = ptrtoint ptr %reference_div156 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %and155, ptr %reference_div156, align 4
  %reference_div158 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 4, i32 1
  %109 = ptrtoint ptr %reference_div158 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %and155, ptr %reference_div158, align 4
  %110 = ptrtoint ptr %pll_rreg123 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pll_rreg123, align 8
  %call.i388 = tail call i32 %111(ptr noundef %1, i32 noundef 10) #3
  %112 = ptrtoint ptr %spll7 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %spll7, align 4
  %114 = ptrtoint ptr %pll_rreg123 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %pll_rreg123, align 8
  %call3.i = tail call i32 %115(ptr noundef %1, i32 noundef 10) #3
  %and4.i = and i32 %call3.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %cmp.i389 = icmp eq i32 %and4.i, 0
  br i1 %cmp.i389, label %if.end152.radeon_legacy_get_engine_clock.exit_crit_edge, label %if.end.i391

if.end152.radeon_legacy_get_engine_clock.exit_crit_edge: ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #5
  br label %radeon_legacy_get_engine_clock.exit

if.end.i391:                                      ; preds = %if.end152
  %116 = lshr i32 %call.i388, 15
  %shl.i = and i32 %116, 510
  %mul.i = mul i32 %shl.i, %113
  %div.i390 = udiv i32 %mul.i, %and4.i
  %117 = ptrtoint ptr %pll_rreg123 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %pll_rreg123, align 8
  %call6.i = tail call i32 %118(ptr noundef %1, i32 noundef 13) #3
  %and7.i = and i32 %call6.i, 7
  %119 = zext i32 %and7.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %119, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %and7.i, label %if.end.i391.radeon_legacy_get_engine_clock.exit_crit_edge [
    i32 2, label %if.then9.i
    i32 3, label %if.then12.i
    i32 4, label %if.then16.i
  ]

if.end.i391.radeon_legacy_get_engine_clock.exit_crit_edge: ; preds = %if.end.i391
  call void @__sanitizer_cov_trace_pc() #5
  br label %radeon_legacy_get_engine_clock.exit

if.then9.i:                                       ; preds = %if.end.i391
  call void @__sanitizer_cov_trace_pc() #5
  %shr10.i = lshr i32 %div.i390, 1
  br label %radeon_legacy_get_engine_clock.exit

if.then12.i:                                      ; preds = %if.end.i391
  call void @__sanitizer_cov_trace_pc() #5
  %shr13.i = lshr i32 %div.i390, 2
  br label %radeon_legacy_get_engine_clock.exit

if.then16.i:                                      ; preds = %if.end.i391
  call void @__sanitizer_cov_trace_pc() #5
  %shr17.i = lshr i32 %div.i390, 3
  br label %radeon_legacy_get_engine_clock.exit

radeon_legacy_get_engine_clock.exit:              ; preds = %if.then16.i, %if.then12.i, %if.then9.i, %if.end.i391.radeon_legacy_get_engine_clock.exit_crit_edge, %if.end152.radeon_legacy_get_engine_clock.exit_crit_edge
  %retval.0.i392 = phi i32 [ 0, %if.end152.radeon_legacy_get_engine_clock.exit_crit_edge ], [ %shr10.i, %if.then9.i ], [ %shr13.i, %if.then12.i ], [ %shr17.i, %if.then16.i ], [ %div.i390, %if.end.i391.radeon_legacy_get_engine_clock.exit_crit_edge ]
  %default_sclk = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 6
  %120 = ptrtoint ptr %default_sclk to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %retval.0.i392, ptr %default_sclk, align 4
  %121 = ptrtoint ptr %pll_rreg123 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %pll_rreg123, align 8
  %call.i394 = tail call i32 %122(ptr noundef %1, i32 noundef 10) #3
  %123 = ptrtoint ptr %mpll9 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %mpll9, align 4
  %125 = ptrtoint ptr %pll_rreg123 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %pll_rreg123, align 8
  %call3.i395 = tail call i32 %126(ptr noundef %1, i32 noundef 10) #3
  %and4.i396 = and i32 %call3.i395, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i396)
  %cmp.i397 = icmp eq i32 %and4.i396, 0
  br i1 %cmp.i397, label %radeon_legacy_get_engine_clock.exit.radeon_legacy_get_memory_clock.exit_crit_edge, label %if.end.i403

radeon_legacy_get_engine_clock.exit.radeon_legacy_get_memory_clock.exit_crit_edge: ; preds = %radeon_legacy_get_engine_clock.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %radeon_legacy_get_memory_clock.exit

if.end.i403:                                      ; preds = %radeon_legacy_get_engine_clock.exit
  %127 = lshr i32 %call.i394, 7
  %shl.i398 = and i32 %127, 510
  %mul.i399 = mul i32 %shl.i398, %124
  %div.i400 = udiv i32 %mul.i399, %and4.i396
  %128 = ptrtoint ptr %pll_rreg123 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %pll_rreg123, align 8
  %call6.i401 = tail call i32 %129(ptr noundef %1, i32 noundef 18) #3
  %and7.i402 = and i32 %call6.i401, 7
  %130 = zext i32 %and7.i402 to i64
  call void @__sanitizer_cov_trace_switch(i64 %130, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %and7.i402, label %if.end.i403.radeon_legacy_get_memory_clock.exit_crit_edge [
    i32 2, label %if.then9.i405
    i32 3, label %if.then12.i407
    i32 4, label %if.then16.i409
  ]

if.end.i403.radeon_legacy_get_memory_clock.exit_crit_edge: ; preds = %if.end.i403
  call void @__sanitizer_cov_trace_pc() #5
  br label %radeon_legacy_get_memory_clock.exit

if.then9.i405:                                    ; preds = %if.end.i403
  call void @__sanitizer_cov_trace_pc() #5
  %shr10.i404 = lshr i32 %div.i400, 1
  br label %radeon_legacy_get_memory_clock.exit

if.then12.i407:                                   ; preds = %if.end.i403
  call void @__sanitizer_cov_trace_pc() #5
  %shr13.i406 = lshr i32 %div.i400, 2
  br label %radeon_legacy_get_memory_clock.exit

if.then16.i409:                                   ; preds = %if.end.i403
  call void @__sanitizer_cov_trace_pc() #5
  %shr17.i408 = lshr i32 %div.i400, 3
  br label %radeon_legacy_get_memory_clock.exit

radeon_legacy_get_memory_clock.exit:              ; preds = %if.then16.i409, %if.then12.i407, %if.then9.i405, %if.end.i403.radeon_legacy_get_memory_clock.exit_crit_edge, %radeon_legacy_get_engine_clock.exit.radeon_legacy_get_memory_clock.exit_crit_edge
  %retval.0.i410 = phi i32 [ 0, %radeon_legacy_get_engine_clock.exit.radeon_legacy_get_memory_clock.exit_crit_edge ], [ %shr10.i404, %if.then9.i405 ], [ %shr13.i406, %if.then12.i407 ], [ %shr17.i408, %if.then16.i409 ], [ %div.i400, %if.end.i403.radeon_legacy_get_memory_clock.exit_crit_edge ]
  %default_mclk = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 5
  %131 = ptrtoint ptr %default_mclk to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %retval.0.i410, ptr %default_mclk, align 4
  br label %if.end164

if.end164:                                        ; preds = %radeon_legacy_get_memory_clock.exit, %if.else102.if.end164_crit_edge, %if.then98, %if.end94.if.end164_crit_edge
  %family165 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %132 = ptrtoint ptr %family165 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %family165, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %133)
  %cmp166 = icmp ugt i32 %133, 17
  br i1 %cmp166, label %if.end164.if.end182_crit_edge, label %if.else173

if.end164.if.end182_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end182

if.else173:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end182

if.end182:                                        ; preds = %if.else173, %if.end164.if.end182_crit_edge
  %.sink436 = phi i32 [ 1, %if.else173 ], [ 2, %if.end164.if.end182_crit_edge ]
  %.sink435 = phi i32 [ 16, %if.else173 ], [ 127, %if.end164.if.end182_crit_edge ]
  %.sink434 = phi i32 [ 0, %if.else173 ], [ 9, %if.end164.if.end182_crit_edge ]
  %.sink432 = phi i32 [ 12, %if.else173 ], [ 127, %if.end164.if.end182_crit_edge ]
  %134 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 0, i32 12
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %.sink436, ptr %134, align 4
  %136 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 0, i32 13
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %.sink435, ptr %136, align 4
  %138 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 0, i32 16
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 0, ptr %138, align 4
  %140 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 0, i32 17
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %.sink434, ptr %140, align 4
  %142 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 1, i32 12
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %.sink436, ptr %142, align 4
  %144 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 1, i32 13
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %.sink432, ptr %144, align 4
  %146 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 1, i32 16
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 0, ptr %146, align 4
  %148 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 1, i32 17
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %.sink434, ptr %148, align 4
  %min_post_div183 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 2, i32 12
  %150 = ptrtoint ptr %min_post_div183 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 2, ptr %min_post_div183, align 4
  %max_post_div184 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 2, i32 13
  %151 = ptrtoint ptr %max_post_div184 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 127, ptr %max_post_div184, align 4
  %min_frac_feedback_div185 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 2, i32 16
  %152 = ptrtoint ptr %min_frac_feedback_div185 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 0, ptr %min_frac_feedback_div185, align 4
  %max_frac_feedback_div186 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 2, i32 17
  %153 = ptrtoint ptr %max_frac_feedback_div186 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 9, ptr %max_frac_feedback_div186, align 4
  %min_ref_div = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 2, i32 10
  %154 = ptrtoint ptr %min_ref_div to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 2, ptr %min_ref_div, align 4
  %max_ref_div = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 2, i32 11
  %155 = ptrtoint ptr %max_ref_div to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 1023, ptr %max_ref_div, align 4
  %min_feedback_div = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 2, i32 14
  %156 = ptrtoint ptr %min_feedback_div to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 4, ptr %min_feedback_div, align 4
  %max_feedback_div = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 2, i32 15
  %157 = ptrtoint ptr %max_feedback_div to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 4095, ptr %max_feedback_div, align 4
  %best_vco = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 2, i32 9
  %158 = ptrtoint ptr %best_vco to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 0, ptr %best_vco, align 4
  %min_ref_div187 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 0, i32 10
  %159 = ptrtoint ptr %min_ref_div187 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 2, ptr %min_ref_div187, align 4
  %max_ref_div188 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 0, i32 11
  %160 = ptrtoint ptr %max_ref_div188 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 1023, ptr %max_ref_div188, align 4
  %min_feedback_div189 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 0, i32 14
  %161 = ptrtoint ptr %min_feedback_div189 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 4, ptr %min_feedback_div189, align 4
  %max_feedback_div190 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 0, i32 15
  %162 = ptrtoint ptr %max_feedback_div190 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 2047, ptr %max_feedback_div190, align 4
  %best_vco191 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 0, i32 9
  %163 = ptrtoint ptr %best_vco191 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 0, ptr %best_vco191, align 4
  %min_ref_div192 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 1, i32 10
  %164 = ptrtoint ptr %min_ref_div192 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 2, ptr %min_ref_div192, align 4
  %max_ref_div193 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 1, i32 11
  %165 = ptrtoint ptr %max_ref_div193 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 1023, ptr %max_ref_div193, align 4
  %min_feedback_div194 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 1, i32 14
  %166 = ptrtoint ptr %min_feedback_div194 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 4, ptr %min_feedback_div194, align 4
  %max_feedback_div195 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 1, i32 15
  %167 = ptrtoint ptr %max_feedback_div195 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 2047, ptr %max_feedback_div195, align 4
  %best_vco196 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 1, i32 9
  %168 = ptrtoint ptr %best_vco196 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 0, ptr %best_vco196, align 4
  %min_post_div197 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 3, i32 12
  %169 = ptrtoint ptr %min_post_div197 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 1, ptr %min_post_div197, align 4
  %max_post_div198 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 3, i32 13
  %170 = ptrtoint ptr %max_post_div198 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 1, ptr %max_post_div198, align 4
  %min_ref_div199 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 3, i32 10
  %171 = ptrtoint ptr %min_ref_div199 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 2, ptr %min_ref_div199, align 4
  %max_ref_div200 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 3, i32 11
  %172 = ptrtoint ptr %max_ref_div200 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 255, ptr %max_ref_div200, align 4
  %min_feedback_div201 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 3, i32 14
  %173 = ptrtoint ptr %min_feedback_div201 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 4, ptr %min_feedback_div201, align 4
  %max_feedback_div202 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 3, i32 15
  %174 = ptrtoint ptr %max_feedback_div202 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 255, ptr %max_feedback_div202, align 4
  %best_vco203 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 3, i32 9
  %175 = ptrtoint ptr %best_vco203 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 0, ptr %best_vco203, align 4
  %min_post_div204 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 4, i32 12
  %176 = ptrtoint ptr %min_post_div204 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 1, ptr %min_post_div204, align 4
  %max_post_div205 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 4, i32 13
  %177 = ptrtoint ptr %max_post_div205 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 1, ptr %max_post_div205, align 4
  %min_ref_div206 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 4, i32 10
  %178 = ptrtoint ptr %min_ref_div206 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 2, ptr %min_ref_div206, align 4
  %max_ref_div207 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 4, i32 11
  %179 = ptrtoint ptr %max_ref_div207 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 255, ptr %max_ref_div207, align 4
  %min_feedback_div208 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 4, i32 14
  %180 = ptrtoint ptr %min_feedback_div208 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 4, ptr %min_feedback_div208, align 4
  %max_feedback_div209 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 4, i32 15
  %181 = ptrtoint ptr %max_feedback_div209 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 255, ptr %max_feedback_div209, align 4
  %best_vco210 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 4, i32 9
  %182 = ptrtoint ptr %best_vco210 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 0, ptr %best_vco210, align 4
  %default_sclk212 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 6
  %183 = ptrtoint ptr %default_sclk212 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %default_sclk212, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %tobool213.not = icmp eq i32 %184, 0
  br i1 %tobool213.not, label %if.then214, label %if.end182.if.end218_crit_edge

if.end182.if.end218_crit_edge:                    ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end218

if.then214:                                       ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #5
  %asic = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 56
  %185 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %asic, align 8
  %get_engine_clock = getelementptr inbounds %struct.radeon_asic, ptr %186, i32 0, i32 20, i32 5
  %187 = ptrtoint ptr %get_engine_clock to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %get_engine_clock, align 4
  %call215 = tail call i32 %188(ptr noundef %1) #3
  %189 = ptrtoint ptr %default_sclk212 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %call215, ptr %default_sclk212, align 4
  br label %if.end218

if.end218:                                        ; preds = %if.then214, %if.end182.if.end218_crit_edge
  %default_mclk220 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 5
  %190 = ptrtoint ptr %default_mclk220 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %default_mclk220, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %tobool221.not = icmp eq i32 %191, 0
  br i1 %tobool221.not, label %land.lhs.true, label %if.end218.if.end232_crit_edge

if.end218.if.end232_crit_edge:                    ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end232

land.lhs.true:                                    ; preds = %if.end218
  %asic222 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 56
  %192 = ptrtoint ptr %asic222 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %asic222, align 8
  %get_memory_clock = getelementptr inbounds %struct.radeon_asic, ptr %193, i32 0, i32 20, i32 7
  %194 = ptrtoint ptr %get_memory_clock to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %get_memory_clock, align 4
  %tobool224.not = icmp eq ptr %195, null
  br i1 %tobool224.not, label %land.lhs.true.if.end232_crit_edge, label %if.then225

land.lhs.true.if.end232_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end232

if.then225:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %call229 = tail call i32 %195(ptr noundef %1) #3
  %196 = ptrtoint ptr %default_mclk220 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %call229, ptr %default_mclk220, align 4
  br label %if.end232

if.end232:                                        ; preds = %if.then225, %land.lhs.true.if.end232_crit_edge, %if.end218.if.end232_crit_edge
  %197 = ptrtoint ptr %default_sclk212 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %default_sclk212, align 4
  %current_sclk = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 58, i32 25
  %199 = ptrtoint ptr %current_sclk to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %198, ptr %current_sclk, align 8
  %200 = ptrtoint ptr %default_mclk220 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %default_mclk220, align 4
  %current_mclk = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 58, i32 26
  %202 = ptrtoint ptr %current_mclk to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %201, ptr %current_mclk, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_atom_get_clock_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_combios_get_clock_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_legacy_set_engine_clock(ptr noundef %rdev, i32 noundef %eng_clock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %reference_div.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 41, i32 3, i32 1
  %0 = ptrtoint ptr %reference_div.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reference_div.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %pll_rreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 34
  %2 = ptrtoint ptr %pll_rreg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pll_rreg.i, align 8
  %call.i = tail call i32 %3(ptr noundef %rdev, i32 noundef 10) #3
  %and.i = and i32 %call.i, 255
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %ref_div.0.i = phi i32 [ %1, %entry.if.end.i_crit_edge ], [ %and.i, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 15000, i32 %eng_clock)
  %cmp.i = icmp ult i32 %eng_clock, 15000
  br i1 %cmp.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %mul.i = shl nuw nsw i32 %eng_clock, 3
  br label %calc_eng_mem_clock.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %eng_clock)
  %cmp3.i = icmp ult i32 %eng_clock, 30000
  br i1 %cmp3.i, label %if.then4.i, label %if.else6.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  %mul5.i = shl nuw nsw i32 %eng_clock, 2
  br label %calc_eng_mem_clock.exit

if.else6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 60000, i32 %eng_clock)
  %cmp7.i = icmp ult i32 %eng_clock, 60000
  %mul9.i = zext i1 %cmp7.i to i32
  %spec.select117 = shl nuw nsw i32 %eng_clock, %mul9.i
  %spec.select = select i1 %cmp7.i, i32 2, i32 1
  br label %calc_eng_mem_clock.exit

calc_eng_mem_clock.exit:                          ; preds = %if.else6.i, %if.then4.i, %if.then2.i
  %post_div.0 = phi i32 [ 8, %if.then2.i ], [ 4, %if.then4.i ], [ %spec.select, %if.else6.i ]
  %req_clock.addr.0.i = phi i32 [ %mul.i, %if.then2.i ], [ %mul5.i, %if.then4.i ], [ %spec.select117, %if.else6.i ]
  %spll1.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 41, i32 3
  %mul14.i = mul i32 %req_clock.addr.0.i, %ref_div.0.i
  %4 = ptrtoint ptr %spll1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %spll1.i, align 4
  %add.i = add i32 %mul14.i, %5
  %mul16.i = shl i32 %5, 1
  %div.i = udiv i32 %add.i, %mul16.i
  %and18.i = shl i32 %div.i, 1
  %shl.i = and i32 %and18.i, 131070
  %mul20.i = mul i32 %shl.i, %5
  %div21.i = udiv i32 %mul20.i, %ref_div.0.i
  %pll_rreg = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 34
  %6 = ptrtoint ptr %pll_rreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pll_rreg, align 8
  %call1 = tail call i32 %7(ptr noundef %rdev, i32 noundef 1) #3
  %and = and i32 %call1, -17
  %pll_wreg = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 35
  %8 = ptrtoint ptr %pll_wreg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pll_wreg, align 4
  tail call void %9(ptr noundef %rdev, i32 noundef 1, i32 noundef %and) #3
  %10 = ptrtoint ptr %pll_rreg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pll_rreg, align 8
  %call3 = tail call i32 %11(ptr noundef %rdev, i32 noundef 13) #3
  %and4 = and i32 %call3, -8
  %12 = ptrtoint ptr %pll_wreg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pll_wreg, align 4
  tail call void %13(ptr noundef %rdev, i32 noundef 13, i32 noundef %and4) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 2147480) #3
  %15 = ptrtoint ptr %pll_rreg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pll_rreg, align 8
  %call7 = tail call i32 %16(ptr noundef %rdev, i32 noundef 12) #3
  %or = or i32 %call7, 1
  %17 = ptrtoint ptr %pll_wreg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pll_wreg, align 4
  tail call void %18(ptr noundef %rdev, i32 noundef 12, i32 noundef %or) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 429496) #3
  %20 = ptrtoint ptr %pll_rreg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pll_rreg, align 8
  %call10 = tail call i32 %21(ptr noundef %rdev, i32 noundef 12) #3
  %or11 = or i32 %call10, 2
  %22 = ptrtoint ptr %pll_wreg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pll_wreg, align 4
  tail call void %23(ptr noundef %rdev, i32 noundef 12, i32 noundef %or11) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 42949600) #3
  %25 = ptrtoint ptr %pll_rreg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pll_rreg, align 8
  %call14 = tail call i32 %26(ptr noundef %rdev, i32 noundef 10) #3
  %and15 = and i32 %call14, -16711681
  %and17.i = shl i32 %div.i, 16
  %and16 = and i32 %and17.i, 16711680
  %or17 = or i32 %and15, %and16
  %27 = ptrtoint ptr %pll_wreg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pll_wreg, align 4
  tail call void %28(ptr noundef %rdev, i32 noundef 10, i32 noundef %or17) #3
  %29 = ptrtoint ptr %pll_rreg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pll_rreg, align 8
  %call20 = tail call i32 %30(ptr noundef %rdev, i32 noundef 12) #3
  %and21 = and i32 %call20, -8200
  %31 = urem i32 %div21.i, %post_div.0
  %mul = sub i32 %div21.i, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 89999, i32 %mul)
  %cmp = icmp ugt i32 %mul, 89999
  %tmp.0.v = select i1 %cmp, i32 14336, i32 8192
  %tmp.0 = or i32 %tmp.0.v, %and21
  %32 = ptrtoint ptr %pll_wreg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pll_wreg, align 4
  tail call void %33(ptr noundef %rdev, i32 noundef 12, i32 noundef %tmp.0) #3
  %34 = ptrtoint ptr %pll_rreg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pll_rreg, align 8
  %call26 = tail call i32 %35(ptr noundef %rdev, i32 noundef 12) #3
  %and27 = and i32 %call26, -2
  %36 = ptrtoint ptr %pll_wreg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pll_wreg, align 4
  tail call void %37(ptr noundef %rdev, i32 noundef 12, i32 noundef %and27) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 429496) #3
  %39 = ptrtoint ptr %pll_rreg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pll_rreg, align 8
  %call30 = tail call i32 %40(ptr noundef %rdev, i32 noundef 12) #3
  %and31 = and i32 %call30, -3
  %41 = ptrtoint ptr %pll_wreg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pll_wreg, align 4
  tail call void %42(ptr noundef %rdev, i32 noundef 12, i32 noundef %and31) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 42949600) #3
  %44 = ptrtoint ptr %pll_rreg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pll_rreg, align 8
  %call34 = tail call i32 %45(ptr noundef %rdev, i32 noundef 13) #3
  %switch.tableidx = add nsw i32 %post_div.0, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %46 = icmp ult i32 %switch.tableidx, 7
  br i1 %46, label %switch.lookup, label %calc_eng_mem_clock.exit.sw.epilog_crit_edge

calc_eng_mem_clock.exit.sw.epilog_crit_edge:      ; preds = %calc_eng_mem_clock.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

switch.lookup:                                    ; preds = %calc_eng_mem_clock.exit
  call void @__sanitizer_cov_trace_pc() #5
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.radeon_legacy_set_engine_clock, i32 0, i32 %switch.tableidx
  %47 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %47)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %calc_eng_mem_clock.exit.sw.epilog_crit_edge
  %.sink = phi i32 [ 1, %calc_eng_mem_clock.exit.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %and35 = and i32 %call34, -8
  %or42 = or i32 %and35, %.sink
  %48 = ptrtoint ptr %pll_wreg to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pll_wreg, align 4
  tail call void %49(ptr noundef %rdev, i32 noundef 13, i32 noundef %or42) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 4294960) #3
  %51 = ptrtoint ptr %pll_rreg to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pll_rreg, align 8
  %call45 = tail call i32 %52(ptr noundef %rdev, i32 noundef 1) #3
  %or46 = or i32 %call45, 16
  %53 = ptrtoint ptr %pll_wreg to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pll_wreg, align 4
  tail call void %54(ptr noundef %rdev, i32 noundef 1, i32 noundef %or46) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 2147480) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_legacy_set_clock_gating(ptr noundef %rdev, i32 noundef %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %flags246 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %0 = ptrtoint ptr %flags246 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags246, align 8
  %and247 = and i32 %1, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and247)
  %tobool248.not = icmp eq i32 %and247, 0
  br i1 %tobool.not, label %if.else245, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool248.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %pll_rreg = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 34
  %2 = ptrtoint ptr %pll_rreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pll_rreg, align 8
  %call = tail call i32 %3(ptr noundef %rdev, i32 noundef 13) #3
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 224
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !32
  %7 = and i32 %6, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %7)
  %cmp = icmp ugt i32 %7, 512
  %and6 = and i32 %call, -527368193
  %spec.select = select i1 %cmp, i32 %and6, i32 %call
  %and7 = and i32 %spec.select, -258867201
  %pll_wreg = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 35
  %8 = ptrtoint ptr %pll_wreg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pll_wreg, align 4
  tail call void %9(ptr noundef %rdev, i32 noundef 13, i32 noundef %and7) #3
  br label %if.end401

if.else:                                          ; preds = %if.then
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %10 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %family, align 4
  %.off = add i32 %11, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %.off)
  %switch = icmp ult i32 %.off, 9
  br i1 %switch, label %if.then32, label %if.else127

if.then32:                                        ; preds = %if.else
  %12 = and i32 %11, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %12)
  %switch703 = icmp eq i32 %12, 16
  br i1 %switch703, label %if.then38, label %if.else57

if.then38:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #5
  %pll_rreg39 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 34
  %13 = ptrtoint ptr %pll_rreg39 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pll_rreg39, align 8
  %call40 = tail call i32 %14(ptr noundef %rdev, i32 noundef 13) #3
  %and41 = and i32 %call40, 16777223
  %or42 = or i32 %and41, 8945656
  %pll_wreg43 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 35
  %15 = ptrtoint ptr %pll_wreg43 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pll_wreg43, align 4
  tail call void %16(ptr noundef %rdev, i32 noundef 13, i32 noundef %or42) #3
  %17 = ptrtoint ptr %pll_rreg39 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pll_rreg39, align 8
  %call45 = tail call i32 %18(ptr noundef %rdev, i32 noundef 53) #3
  %and46 = and i32 %call45, -1800
  %or47 = or i32 %and46, 7
  %19 = ptrtoint ptr %pll_wreg43 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pll_wreg43, align 4
  tail call void %20(ptr noundef %rdev, i32 noundef 53, i32 noundef %or47) #3
  %21 = ptrtoint ptr %pll_rreg39 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pll_rreg39, align 8
  %call50 = tail call i32 %22(ptr noundef %rdev, i32 noundef 8) #3
  %or51 = or i32 %call50, 192
  %23 = ptrtoint ptr %pll_wreg43 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pll_wreg43, align 4
  tail call void %24(ptr noundef %rdev, i32 noundef 8, i32 noundef %or51) #3
  %25 = ptrtoint ptr %pll_rreg39 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pll_rreg39, align 8
  %call54 = tail call i32 %26(ptr noundef %rdev, i32 noundef 45) #3
  %or55 = or i32 %call54, 1048256
  %27 = ptrtoint ptr %pll_wreg43 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pll_wreg43, align 4
  tail call void %28(ptr noundef %rdev, i32 noundef 45, i32 noundef %or55) #3
  br label %if.end401

if.else57:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %11)
  %cmp59 = icmp ugt i32 %11, 10
  %pll_rreg61 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 34
  %29 = ptrtoint ptr %pll_rreg61 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pll_rreg61, align 8
  br i1 %cmp59, label %if.then60, label %if.else114

if.then60:                                        ; preds = %if.else57
  %call62 = tail call i32 %30(ptr noundef %rdev, i32 noundef 30) #3
  %and63 = and i32 %call62, -64513
  %or64 = or i32 %and63, 7168
  %pll_wreg65 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 35
  %31 = ptrtoint ptr %pll_wreg65 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pll_wreg65, align 4
  tail call void %32(ptr noundef %rdev, i32 noundef 30, i32 noundef %or64) #3
  %33 = ptrtoint ptr %pll_rreg61 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pll_rreg61, align 8
  %call67 = tail call i32 %34(ptr noundef %rdev, i32 noundef 13) #3
  %and68 = and i32 %call67, 16777223
  %or69 = or i32 %and68, 32760
  %35 = ptrtoint ptr %pll_wreg65 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pll_wreg65, align 4
  tail call void %36(ptr noundef %rdev, i32 noundef 13, i32 noundef %or69) #3
  %37 = ptrtoint ptr %pll_rreg61 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pll_rreg61, align 8
  %call72 = tail call i32 %38(ptr noundef %rdev, i32 noundef 53) #3
  %and73 = and i32 %call72, -1800
  %or74 = or i32 %and73, 7
  %39 = ptrtoint ptr %pll_wreg65 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pll_wreg65, align 4
  tail call void %40(ptr noundef %rdev, i32 noundef 53, i32 noundef %or74) #3
  %41 = ptrtoint ptr %pll_rreg61 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pll_rreg61, align 8
  %call77 = tail call i32 %42(ptr noundef %rdev, i32 noundef 8) #3
  %or78 = or i32 %call77, 192
  %43 = ptrtoint ptr %pll_wreg65 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pll_wreg65, align 4
  tail call void %44(ptr noundef %rdev, i32 noundef 8, i32 noundef %or78) #3
  %45 = ptrtoint ptr %pll_rreg61 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pll_rreg61, align 8
  %call81 = tail call i32 %46(ptr noundef %rdev, i32 noundef 45) #3
  %or82 = or i32 %call81, 1048256
  %47 = ptrtoint ptr %pll_wreg65 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pll_wreg65, align 4
  tail call void %48(ptr noundef %rdev, i32 noundef 45, i32 noundef %or82) #3
  %49 = ptrtoint ptr %pll_rreg61 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pll_rreg61, align 8
  %call85 = tail call i32 %50(ptr noundef %rdev, i32 noundef 31) #3
  %or86 = or i32 %call85, 49152
  %51 = ptrtoint ptr %pll_wreg65 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pll_wreg65, align 4
  tail call void %52(ptr noundef %rdev, i32 noundef 31, i32 noundef %or86) #3
  %53 = ptrtoint ptr %pll_rreg61 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pll_rreg61, align 8
  %call89 = tail call i32 %54(ptr noundef %rdev, i32 noundef 18) #3
  %or90 = and i32 %call89, -2031617
  %and91 = or i32 %or90, 196608
  %and92 = and i32 %call89, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %if.then60.if.end112_crit_edge, label %if.then96

if.then60.if.end112_crit_edge:                    ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end112

if.then96:                                        ; preds = %if.then60
  %55 = ptrtoint ptr %pll_rreg61 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pll_rreg61, align 8
  %call98 = tail call i32 %56(ptr noundef %rdev, i32 noundef 18) #3
  %vram_width = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 10
  %57 = ptrtoint ptr %vram_width to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %vram_width, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %58)
  %cmp99 = icmp eq i32 %58, 64
  br i1 %cmp99, label %if.then100, label %if.else109

if.then100:                                       ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #5
  %rmmio.i711 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %59 = ptrtoint ptr %rmmio.i711 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rmmio.i711, align 4
  %add.ptr.i712 = getelementptr i8, ptr %60, i32 320
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i712) #3, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !32
  %and107 = and i32 %call98, -2097153
  br label %if.end112

if.else109:                                       ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #5
  %and110 = and i32 %call98, -2097153
  br label %if.end112

if.end112:                                        ; preds = %if.else109, %if.then100, %if.then60.if.end112_crit_edge
  %tmp.1 = phi i32 [ %and110, %if.else109 ], [ %and91, %if.then60.if.end112_crit_edge ], [ %and107, %if.then100 ]
  %62 = ptrtoint ptr %pll_wreg65 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pll_wreg65, align 4
  tail call void %63(ptr noundef %rdev, i32 noundef 18, i32 noundef %tmp.1) #3
  br label %if.end401

if.else114:                                       ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #5
  %call116 = tail call i32 %30(ptr noundef %rdev, i32 noundef 13) #3
  %and117 = and i32 %call116, -2162689
  %or118 = or i32 %and117, 65536
  %pll_wreg119 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 35
  %64 = ptrtoint ptr %pll_wreg119 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pll_wreg119, align 4
  tail call void %65(ptr noundef %rdev, i32 noundef 13, i32 noundef %or118) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %66(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %68(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %69(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %74(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %76(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %77(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %78(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %79(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %80(i32 noundef 214748000) #3
  %81 = ptrtoint ptr %pll_rreg61 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pll_rreg61, align 8
  %call122 = tail call i32 %82(ptr noundef %rdev, i32 noundef 30) #3
  %and123 = and i32 %call122, -57345
  %83 = ptrtoint ptr %pll_wreg119 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pll_wreg119, align 4
  tail call void %84(ptr noundef %rdev, i32 noundef 30, i32 noundef %and123) #3
  br label %if.end401

if.else127:                                       ; preds = %if.else
  %pll_rreg128 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 34
  %85 = ptrtoint ptr %pll_rreg128 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pll_rreg128, align 8
  %call129 = tail call i32 %86(ptr noundef %rdev, i32 noundef 20) #3
  %and130 = and i32 %call129, -14708737
  %or131 = or i32 %and130, 12288
  %pll_wreg132 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 35
  %87 = ptrtoint ptr %pll_wreg132 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pll_wreg132, align 4
  tail call void %88(ptr noundef %rdev, i32 noundef 20, i32 noundef %or131) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %89(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %90 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %90(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %91(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %92 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %92(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %93 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %93(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %94 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %94(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %95(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %96(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %97 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %97(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %98 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %98(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %99 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %99(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %100 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %100(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %101(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %102 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %102(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %103 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %103(i32 noundef 214748000) #3
  %104 = ptrtoint ptr %pll_rreg128 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pll_rreg128, align 8
  %call140 = tail call i32 %105(ptr noundef %rdev, i32 noundef 1) #3
  %or141 = or i32 %call140, 32768
  %106 = ptrtoint ptr %pll_wreg132 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pll_wreg132, align 4
  tail call void %107(ptr noundef %rdev, i32 noundef 1, i32 noundef %or141) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %108 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %108(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %109 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %109(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %110 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %110(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %111 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %111(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %112 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %112(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %113 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %113(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %114 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %114(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %115 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %115(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %116 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %116(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %117 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %117(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %118 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %118(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %119 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %119(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %120 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %120(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %121 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %121(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %122 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %122(i32 noundef 214748000) #3
  %123 = ptrtoint ptr %pll_rreg128 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %pll_rreg128, align 8
  %call150 = tail call i32 %124(ptr noundef %rdev, i32 noundef 13) #3
  %and151 = and i32 %call150, 32767
  %125 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %126)
  %cmp153 = icmp eq i32 %126, 6
  br i1 %cmp153, label %land.lhs.true154, label %if.else127.lor.lhs.false158_crit_edge

if.else127.lor.lhs.false158_crit_edge:            ; preds = %if.else127
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.lhs.false158

land.lhs.true154:                                 ; preds = %if.else127
  %rmmio.i713 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %127 = ptrtoint ptr %rmmio.i713 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %rmmio.i713, align 4
  %add.ptr.i714 = getelementptr i8, ptr %128, i32 224
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i714) #3, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !32
  %130 = and i32 %129, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %cmp157 = icmp eq i32 %130, 0
  br i1 %cmp157, label %land.lhs.true154.if.then165_crit_edge, label %lor.lhs.false158thread-pre-split

land.lhs.true154.if.then165_crit_edge:            ; preds = %land.lhs.true154
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then165

lor.lhs.false158thread-pre-split:                 ; preds = %land.lhs.true154
  call void @__sanitizer_cov_trace_pc() #5
  %131 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %131)
  %.pr = load i32, ptr %family, align 4
  br label %lor.lhs.false158

lor.lhs.false158:                                 ; preds = %lor.lhs.false158thread-pre-split, %if.else127.lor.lhs.false158_crit_edge
  %132 = phi i32 [ %.pr, %lor.lhs.false158thread-pre-split ], [ %126, %if.else127.lor.lhs.false158_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %132)
  %cmp160 = icmp eq i32 %132, 1
  br i1 %cmp160, label %land.lhs.true161, label %lor.lhs.false158.if.end168_crit_edge

lor.lhs.false158.if.end168_crit_edge:             ; preds = %lor.lhs.false158
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end168

land.lhs.true161:                                 ; preds = %lor.lhs.false158
  %rmmio.i715 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %133 = ptrtoint ptr %rmmio.i715 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %rmmio.i715, align 4
  %add.ptr.i716 = getelementptr i8, ptr %134, i32 224
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i716) #3, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !32
  %136 = shl i32 %135, 8
  %and163 = and i32 %136, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 131073, i32 %and163)
  %cmp164 = icmp ult i32 %and163, 131073
  br i1 %cmp164, label %land.lhs.true161.if.then165_crit_edge, label %land.lhs.true161.if.end168_crit_edge

land.lhs.true161.if.end168_crit_edge:             ; preds = %land.lhs.true161
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end168

land.lhs.true161.if.then165_crit_edge:            ; preds = %land.lhs.true161
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then165

if.then165:                                       ; preds = %land.lhs.true161.if.then165_crit_edge, %land.lhs.true154.if.then165_crit_edge
  %or167 = or i32 %and151, 8454144
  br label %if.end168

if.end168:                                        ; preds = %if.then165, %land.lhs.true161.if.end168_crit_edge, %lor.lhs.false158.if.end168_crit_edge
  %tmp.2 = phi i32 [ %or167, %if.then165 ], [ %and151, %land.lhs.true161.if.end168_crit_edge ], [ %and151, %lor.lhs.false158.if.end168_crit_edge ]
  %137 = ptrtoint ptr %pll_wreg132 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %pll_wreg132, align 4
  tail call void %138(ptr noundef %rdev, i32 noundef 13, i32 noundef %tmp.2) #3
  %139 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %family, align 4
  %141 = zext i32 %140 to i64
  call void @__sanitizer_cov_trace_switch(i64 %141, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %140, label %if.end168.if.end201_crit_edge [
    i32 3, label %if.end168.if.then178_crit_edge
    i32 6, label %if.end168.if.then178_crit_edge734
    i32 8, label %if.end168.if.then178_crit_edge735
  ]

if.end168.if.then178_crit_edge735:                ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then178

if.end168.if.then178_crit_edge734:                ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then178

if.end168.if.then178_crit_edge:                   ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then178

if.end168.if.end201_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end201

if.then178:                                       ; preds = %if.end168.if.then178_crit_edge, %if.end168.if.then178_crit_edge734, %if.end168.if.then178_crit_edge735
  %142 = ptrtoint ptr %pll_rreg128 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %pll_rreg128, align 8
  %call180 = tail call i32 %143(ptr noundef %rdev, i32 noundef 53) #3
  %and181 = and i32 %call180, -1793
  %144 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %family, align 4
  %146 = zext i32 %145 to i64
  call void @__sanitizer_cov_trace_switch(i64 %146, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %145, label %if.then178.if.end193_crit_edge [
    i32 3, label %if.then178.land.lhs.true187_crit_edge
    i32 6, label %if.then178.land.lhs.true187_crit_edge736
  ]

if.then178.land.lhs.true187_crit_edge736:         ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true187

if.then178.land.lhs.true187_crit_edge:            ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true187

if.then178.if.end193_crit_edge:                   ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end193

land.lhs.true187:                                 ; preds = %if.then178.land.lhs.true187_crit_edge, %if.then178.land.lhs.true187_crit_edge736
  %rmmio.i717 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %147 = ptrtoint ptr %rmmio.i717 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %rmmio.i717, align 4
  %add.ptr.i718 = getelementptr i8, ptr %148, i32 224
  %149 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i718) #3, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !32
  %150 = and i32 %149, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %cmp190 = icmp eq i32 %150, 0
  %masksel = select i1 %cmp190, i32 1792, i32 0
  %spec.select701 = or i32 %masksel, %and181
  br label %if.end193

if.end193:                                        ; preds = %land.lhs.true187, %if.then178.if.end193_crit_edge
  %tmp.3 = phi i32 [ %and181, %if.then178.if.end193_crit_edge ], [ %spec.select701, %land.lhs.true187 ]
  %151 = ptrtoint ptr %pll_wreg132 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %pll_wreg132, align 4
  tail call void %152(ptr noundef %rdev, i32 noundef 53, i32 noundef %tmp.3) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %153 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %153(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %154 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %154(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %155 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %155(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %156 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %156(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %157 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %157(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %158 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %158(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %159 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %159(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %160 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %160(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %161 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %161(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %162 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %162(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %163 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %163(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %164 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %164(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %165 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %165(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %166 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %166(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %167 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %167(i32 noundef 214748000) #3
  %168 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %168)
  %.pr721 = load i32, ptr %family, align 4
  br label %if.end201

if.end201:                                        ; preds = %if.end193, %if.end168.if.end201_crit_edge
  %169 = phi i32 [ %.pr721, %if.end193 ], [ %140, %if.end168.if.end201_crit_edge ]
  %170 = zext i32 %169 to i64
  call void @__sanitizer_cov_trace_switch(i64 %170, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %169, label %if.end201.if.end216_crit_edge [
    i32 3, label %if.end201.land.lhs.true207_crit_edge
    i32 6, label %if.end201.land.lhs.true207_crit_edge737
  ]

if.end201.land.lhs.true207_crit_edge737:          ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true207

if.end201.land.lhs.true207_crit_edge:             ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true207

if.end201.if.end216_crit_edge:                    ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end216

land.lhs.true207:                                 ; preds = %if.end201.land.lhs.true207_crit_edge, %if.end201.land.lhs.true207_crit_edge737
  %rmmio.i719 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %171 = ptrtoint ptr %rmmio.i719 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %rmmio.i719, align 4
  %add.ptr.i720 = getelementptr i8, ptr %172, i32 224
  %173 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i720) #3, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !32
  %174 = and i32 %173, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %cmp210 = icmp eq i32 %174, 0
  br i1 %cmp210, label %if.then211, label %land.lhs.true207.if.end216_crit_edge

land.lhs.true207.if.end216_crit_edge:             ; preds = %land.lhs.true207
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end216

if.then211:                                       ; preds = %land.lhs.true207
  call void @__sanitizer_cov_trace_pc() #5
  %175 = ptrtoint ptr %pll_rreg128 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %pll_rreg128, align 8
  %call213 = tail call i32 %176(ptr noundef %rdev, i32 noundef 21) #3
  %or214 = or i32 %call213, 1048576
  %177 = ptrtoint ptr %pll_wreg132 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %pll_wreg132, align 4
  tail call void %178(ptr noundef %rdev, i32 noundef 21, i32 noundef %or214) #3
  br label %if.end216

if.end216:                                        ; preds = %if.then211, %land.lhs.true207.if.end216_crit_edge, %if.end201.if.end216_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %179 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %179(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %180 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %180(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %181 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %181(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %182 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %182(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %183 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %183(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %184 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %184(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %185 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %185(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %186 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %186(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %187 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %187(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %188 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %188(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %189 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %189(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %190 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %190(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %191 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %191(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %192 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %192(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %193 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %193(i32 noundef 214748000) #3
  %194 = ptrtoint ptr %pll_rreg128 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %pll_rreg128, align 8
  %call224 = tail call i32 %195(ptr noundef %rdev, i32 noundef 45) #3
  %or225 = or i32 %call224, 63680
  %196 = ptrtoint ptr %pll_wreg132 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %pll_wreg132, align 4
  tail call void %197(ptr noundef %rdev, i32 noundef 45, i32 noundef %or225) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %198 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %198(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %199 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %199(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %200 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %200(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %201 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %201(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %202 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %202(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %203 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %203(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %204 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %204(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %205 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %205(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %206 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %206(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %207 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %207(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %208 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %208(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %209 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %209(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %210 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %210(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %211 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %211(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %212 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %212(i32 noundef 214748000) #3
  %213 = ptrtoint ptr %pll_rreg128 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %pll_rreg128, align 8
  %call234 = tail call i32 %214(ptr noundef %rdev, i32 noundef 8) #3
  %or235 = or i32 %call234, 192
  %215 = ptrtoint ptr %pll_wreg132 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %pll_wreg132, align 4
  tail call void %216(ptr noundef %rdev, i32 noundef 8, i32 noundef %or235) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %217 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %217(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %218 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %218(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %219 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %219(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %220 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %220(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %221 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %221(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %222 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %222(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %223 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %223(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %224 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %224(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %225 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %225(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %226 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %226(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %227 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %227(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %228 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %228(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %229 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %229(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %230 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %230(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %231 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %231(i32 noundef 214748000) #3
  br label %if.end401

if.else245:                                       ; preds = %entry
  br i1 %tobool248.not, label %if.else254, label %if.then249

if.then249:                                       ; preds = %if.else245
  call void @__sanitizer_cov_trace_pc() #5
  %pll_rreg250 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 34
  %232 = ptrtoint ptr %pll_rreg250 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %pll_rreg250, align 8
  %call251 = tail call i32 %233(ptr noundef %rdev, i32 noundef 13) #3
  %or252 = or i32 %call251, 536805376
  %pll_wreg253 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 35
  %234 = ptrtoint ptr %pll_wreg253 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %pll_wreg253, align 4
  tail call void %235(ptr noundef %rdev, i32 noundef 13, i32 noundef %or252) #3
  br label %if.end401

if.else254:                                       ; preds = %if.else245
  %family255 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %236 = ptrtoint ptr %family255 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %family255, align 4
  %238 = and i32 %237, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %238)
  %switch705 = icmp eq i32 %238, 16
  br i1 %switch705, label %if.then260, label %if.else277

if.then260:                                       ; preds = %if.else254
  call void @__sanitizer_cov_trace_pc() #5
  %pll_rreg261 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 34
  %239 = ptrtoint ptr %pll_rreg261 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %pll_rreg261, align 8
  %call262 = tail call i32 %240(ptr noundef %rdev, i32 noundef 13) #3
  %or263 = or i32 %call262, -16809984
  %pll_wreg264 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 35
  %241 = ptrtoint ptr %pll_wreg264 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %pll_wreg264, align 4
  tail call void %242(ptr noundef %rdev, i32 noundef 13, i32 noundef %or263) #3
  %243 = ptrtoint ptr %pll_rreg261 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %pll_rreg261, align 8
  %call266 = tail call i32 %244(ptr noundef %rdev, i32 noundef 53) #3
  %or267 = or i32 %call266, 1792
  %245 = ptrtoint ptr %pll_wreg264 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %pll_wreg264, align 4
  tail call void %246(ptr noundef %rdev, i32 noundef 53, i32 noundef %or267) #3
  %247 = ptrtoint ptr %pll_rreg261 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %pll_rreg261, align 8
  %call270 = tail call i32 %248(ptr noundef %rdev, i32 noundef 8) #3
  %and271 = and i32 %call270, -8388801
  %249 = ptrtoint ptr %pll_wreg264 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %pll_wreg264, align 4
  tail call void %250(ptr noundef %rdev, i32 noundef 8, i32 noundef %and271) #3
  %251 = ptrtoint ptr %pll_rreg261 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %pll_rreg261, align 8
  %call274 = tail call i32 %252(ptr noundef %rdev, i32 noundef 45) #3
  %and275 = and i32 %call274, -9436865
  %253 = ptrtoint ptr %pll_wreg264 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %pll_wreg264, align 4
  tail call void %254(ptr noundef %rdev, i32 noundef 45, i32 noundef %and275) #3
  br label %if.end401

if.else277:                                       ; preds = %if.else254
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %237)
  %cmp279 = icmp ugt i32 %237, 10
  %pll_rreg281 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 34
  %255 = ptrtoint ptr %pll_rreg281 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %pll_rreg281, align 8
  br i1 %cmp279, label %if.then280, label %if.else305

if.then280:                                       ; preds = %if.else277
  call void @__sanitizer_cov_trace_pc() #5
  %call282 = tail call i32 %256(ptr noundef %rdev, i32 noundef 30) #3
  %or283 = or i32 %call282, 57344
  %pll_wreg284 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 35
  %257 = ptrtoint ptr %pll_wreg284 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %pll_wreg284, align 4
  tail call void %258(ptr noundef %rdev, i32 noundef 30, i32 noundef %or283) #3
  %259 = ptrtoint ptr %pll_rreg281 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %pll_rreg281, align 8
  %call286 = tail call i32 %260(ptr noundef %rdev, i32 noundef 13) #3
  %or287 = or i32 %call286, -16809984
  %261 = ptrtoint ptr %pll_wreg284 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %pll_wreg284, align 4
  tail call void %262(ptr noundef %rdev, i32 noundef 13, i32 noundef %or287) #3
  %263 = ptrtoint ptr %pll_rreg281 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %pll_rreg281, align 8
  %call290 = tail call i32 %264(ptr noundef %rdev, i32 noundef 53) #3
  %or291 = or i32 %call290, 1792
  %265 = ptrtoint ptr %pll_wreg284 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %pll_wreg284, align 4
  tail call void %266(ptr noundef %rdev, i32 noundef 53, i32 noundef %or291) #3
  %267 = ptrtoint ptr %pll_rreg281 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %pll_rreg281, align 8
  %call294 = tail call i32 %268(ptr noundef %rdev, i32 noundef 18) #3
  %or295 = or i32 %call294, 2031616
  %269 = ptrtoint ptr %pll_wreg284 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %pll_wreg284, align 4
  tail call void %270(ptr noundef %rdev, i32 noundef 18, i32 noundef %or295) #3
  %271 = ptrtoint ptr %pll_rreg281 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %pll_rreg281, align 8
  %call298 = tail call i32 %272(ptr noundef %rdev, i32 noundef 8) #3
  %and299 = and i32 %call298, -8388801
  %273 = ptrtoint ptr %pll_wreg284 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %pll_wreg284, align 4
  tail call void %274(ptr noundef %rdev, i32 noundef 8, i32 noundef %and299) #3
  %275 = ptrtoint ptr %pll_rreg281 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %pll_rreg281, align 8
  %call302 = tail call i32 %276(ptr noundef %rdev, i32 noundef 45) #3
  %and303 = and i32 %call302, -9436865
  %277 = ptrtoint ptr %pll_wreg284 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %pll_wreg284, align 4
  tail call void %278(ptr noundef %rdev, i32 noundef 45, i32 noundef %and303) #3
  br label %if.end401

if.else305:                                       ; preds = %if.else277
  %call307 = tail call i32 %256(ptr noundef %rdev, i32 noundef 13) #3
  %279 = ptrtoint ptr %flags246 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %flags246, align 8
  %and311 = and i32 %280, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and311)
  %tobool312.not = icmp eq i32 %and311, 0
  br i1 %tobool312.not, label %if.else315, label %if.then313

if.then313:                                       ; preds = %if.else305
  call void @__sanitizer_cov_trace_pc() #5
  %or314 = or i32 %call307, 536838144
  br label %if.end324

if.else315:                                       ; preds = %if.else305
  call void @__sanitizer_cov_trace_pc() #5
  %281 = ptrtoint ptr %family255 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %family255, align 4
  %.off706 = add i32 %282, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off706)
  %switch707 = icmp ult i32 %.off706, 2
  %spec.select708.v = select i1 %switch707, i32 16744448, i32 3211264
  %spec.select708 = or i32 %spec.select708.v, %call307
  br label %if.end324

if.end324:                                        ; preds = %if.else315, %if.then313
  %tmp.4 = phi i32 [ %or314, %if.then313 ], [ %spec.select708, %if.else315 ]
  %pll_wreg325 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 35
  %283 = ptrtoint ptr %pll_wreg325 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %pll_wreg325, align 4
  tail call void %284(ptr noundef %rdev, i32 noundef 13, i32 noundef %tmp.4) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %285 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %285(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %286 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %286(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %287 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %287(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %288 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %288(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %289 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %289(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %290 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %290(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %291 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %291(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %292 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %292(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %293 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %293(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %294 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %294(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %295 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %295(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %296 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %296(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %297 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %297(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %298 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %298(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %299 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %299(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %300 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %300(i32 noundef 214748000) #3
  %301 = ptrtoint ptr %family255 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %family255, align 4
  %.off709 = add i32 %302, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off709)
  %switch710 = icmp ult i32 %.off709, 2
  br i1 %switch710, label %if.then337, label %if.end324.if.end348_crit_edge

if.end324.if.end348_crit_edge:                    ; preds = %if.end324
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end348

if.then337:                                       ; preds = %if.end324
  call void @__sanitizer_cov_trace_pc() #5
  %303 = ptrtoint ptr %pll_rreg281 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %pll_rreg281, align 8
  %call339 = tail call i32 %304(ptr noundef %rdev, i32 noundef 30) #3
  %or340 = or i32 %call339, 57344
  %305 = ptrtoint ptr %pll_wreg325 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %pll_wreg325, align 4
  tail call void %306(ptr noundef %rdev, i32 noundef 30, i32 noundef %or340) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %307 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %307(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %308 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %308(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %309 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %309(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %310 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %310(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %311 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %311(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %312 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %312(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %313 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %313(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %314 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %314(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %315 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %315(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %316 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %316(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %317 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %317(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %318 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %318(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %319 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %319(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %320 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %320(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %321 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %321(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %322 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %322(i32 noundef 214748000) #3
  br label %if.end348

if.end348:                                        ; preds = %if.then337, %if.end324.if.end348_crit_edge
  %323 = ptrtoint ptr %flags246 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %flags246, align 8
  %and350 = and i32 %324, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and350)
  %tobool351.not = icmp eq i32 %and350, 0
  br i1 %tobool351.not, label %if.end348.if.end363_crit_edge, label %if.then352

if.end348.if.end363_crit_edge:                    ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end363

if.then352:                                       ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #5
  %325 = ptrtoint ptr %pll_rreg281 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %pll_rreg281, align 8
  %call354 = tail call i32 %326(ptr noundef %rdev, i32 noundef 18) #3
  %and355 = and i32 %call354, -327681
  %327 = ptrtoint ptr %pll_wreg325 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %pll_wreg325, align 4
  tail call void %328(ptr noundef %rdev, i32 noundef 18, i32 noundef %and355) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %329 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %329(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %330 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %330(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %331 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %331(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %332 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %332(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %333 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %333(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %334 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %334(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %335 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %335(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %336 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %336(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %337 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %337(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %338 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %338(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %339 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %339(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %340 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %340(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %341 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %341(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %342 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %342(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %343 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %343(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %344 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %344(i32 noundef 214748000) #3
  br label %if.end363

if.end363:                                        ; preds = %if.then352, %if.end348.if.end363_crit_edge
  %345 = ptrtoint ptr %family255 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %family255, align 4
  %347 = zext i32 %346 to i64
  call void @__sanitizer_cov_trace_switch(i64 %347, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %346, label %if.end363.if.end383_crit_edge [
    i32 3, label %if.end363.if.then372_crit_edge
    i32 6, label %if.end363.if.then372_crit_edge738
    i32 8, label %if.end363.if.then372_crit_edge739
  ]

if.end363.if.then372_crit_edge739:                ; preds = %if.end363
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then372

if.end363.if.then372_crit_edge738:                ; preds = %if.end363
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then372

if.end363.if.then372_crit_edge:                   ; preds = %if.end363
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then372

if.end363.if.end383_crit_edge:                    ; preds = %if.end363
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end383

if.then372:                                       ; preds = %if.end363.if.then372_crit_edge, %if.end363.if.then372_crit_edge738, %if.end363.if.then372_crit_edge739
  %348 = ptrtoint ptr %pll_rreg281 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %pll_rreg281, align 8
  %call374 = tail call i32 %349(ptr noundef %rdev, i32 noundef 53) #3
  %or375 = or i32 %call374, 1792
  %350 = ptrtoint ptr %pll_wreg325 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %pll_wreg325, align 4
  tail call void %351(ptr noundef %rdev, i32 noundef 53, i32 noundef %or375) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %352 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %352(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %353 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %353(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %354 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %354(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %355 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %355(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %356 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %356(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %357 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %357(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %358 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %358(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %359 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %359(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %360 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %360(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %361 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %361(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %362 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %362(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %363 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %363(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %364 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %364(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %365 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %365(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %366 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %366(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %367 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %367(i32 noundef 214748000) #3
  br label %if.end383

if.end383:                                        ; preds = %if.then372, %if.end363.if.end383_crit_edge
  %368 = ptrtoint ptr %pll_rreg281 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %pll_rreg281, align 8
  %call385 = tail call i32 %369(ptr noundef %rdev, i32 noundef 45) #3
  %and386 = and i32 %call385, -63681
  %370 = ptrtoint ptr %pll_wreg325 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %pll_wreg325, align 4
  tail call void %371(ptr noundef %rdev, i32 noundef 45, i32 noundef %and386) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %372 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %372(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %373 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %373(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %374 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %374(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %375 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %375(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %376 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %376(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %377 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %377(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %378 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %378(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %379 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %379(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %380 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %380(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %381 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %381(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %382 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %382(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %383 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %383(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %384 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %384(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %385 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %385(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %386 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %386(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %387 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %387(i32 noundef 214748000) #3
  %388 = ptrtoint ptr %pll_rreg281 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %pll_rreg281, align 8
  %call395 = tail call i32 %389(ptr noundef %rdev, i32 noundef 8) #3
  %and396 = and i32 %call395, -193
  %390 = ptrtoint ptr %pll_wreg325 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %pll_wreg325, align 4
  tail call void %391(ptr noundef %rdev, i32 noundef 8, i32 noundef %and396) #3
  br label %if.end401

if.end401:                                        ; preds = %if.end383, %if.then280, %if.then260, %if.then249, %if.end216, %if.else114, %if.end112, %if.then38, %if.then2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !13, !15, !17, !19, !20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/radeon_clocks.c", i32 225, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @radeon_get_clock_info._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @radeon_get_clock_info._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/radeon/radeon_clocks.c", i32 116, i32 28}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/radeon/radeon_clocks.c", i32 118, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @radeon_read_clocks_OF._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @radeon_read_clocks_OF._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/radeon/radeon_clocks.c", i32 155, i32 28}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/radeon/radeon_clocks.c", i32 162, i32 28}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/radeon/radeon_clocks.c", i32 169, i32 2}
!19 = !{ptr @radeon_read_clocks_OF._entry.8, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @radeon_read_clocks_OF._entry_ptr.10, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{i8 0, i8 2}
!31 = !{i64 5005176}
!32 = !{i64 2158321558}
