; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/radeon_irq_kms.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/radeon_irq_kms.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.89, ptr, i32, ptr, i8, i32 }
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
%struct.anon.89 = type { i32, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.88, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.88 = type { ptr }
%struct.radeon_asic = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.96, %struct.anon.97, [8 x ptr], %struct.anon.98, %struct.anon.99, %struct.anon.100, %struct.anon.101, %struct.anon.102, %struct.anon.103, %struct.anon.104, %struct.anon.105 }
%struct.anon.96 = type { ptr, ptr, ptr }
%struct.anon.97 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.98 = type { ptr, ptr }
%struct.anon.99 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.100 = type { ptr, i32, ptr, i32, ptr, i32 }
%struct.anon.101 = type { ptr, ptr }
%struct.anon.102 = type { ptr, ptr, ptr, ptr }
%struct.anon.103 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.104 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.105 = type { ptr, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }

@radeon_irq_kms_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&rdev->irq.lock\00", [16 x i8] zeroinitializer }, align 32
@radeon_irq_kms_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 338, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"radeon: using MSI.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"radeon_irq_kms_init\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/radeon/radeon_irq_kms.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@radeon_irq_kms_init._entry_ptr = internal global ptr @radeon_irq_kms_init._entry, section ".printk_index", align 4
@radeon_irq_kms_init.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&(&rdev->hotplug_work)->work)\00", [48 x i8] zeroinitializer }, align 32
@radeon_irq_kms_init.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&rdev->hotplug_work)->timer\00", [34 x i8] zeroinitializer }, align 32
@radeon_irq_kms_init.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&rdev->dp_work)\00", [62 x i8] zeroinitializer }, align 32
@radeon_irq_kms_init.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&rdev->audio_work)\00", [59 x i8] zeroinitializer }, align 32
@radeon_irq_kms_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016[drm] radeon: irq initialized.\0A\00", [62 x i8] zeroinitializer }, align 32
@radeon_irq_kms_init._entry_ptr.16 = internal global ptr @radeon_irq_kms_init._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s%d interrupts enabled\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s%d interrupts disabled\0A\00", [38 x i8] zeroinitializer }, align 32
@radeon_msi_ok._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 253, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"radeon: MSI limited to 32-bit\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"radeon_msi_ok\00", [18 x i8] zeroinitializer }, align 32
@radeon_msi_ok._entry_ptr = internal global ptr @radeon_msi_ok._entry, section ".printk_index", align 4
@radeon_msi = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 16, i64 4136, i64 4156, i64 4219]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 19, i64 21]
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 321, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 338, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 342, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 343, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 344, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 354, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 608, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 611, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private constant [43 x i8] c"../drivers/gpu/drm/radeon/radeon_irq_kms.c\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 253, i32 3 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @radeon_irq_kms_init._entry, ptr @radeon_irq_kms_init._entry.14, ptr @radeon_irq_kms_init._entry_ptr, ptr @radeon_irq_kms_init._entry_ptr.16, ptr @radeon_msi_ok._entry, ptr @radeon_msi_ok._entry_ptr, ptr @radeon_irq_kms_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @radeon_irq_kms_init.__key.6, ptr @.str.7, ptr @radeon_irq_kms_init.__key.8, ptr @.str.9, ptr @radeon_irq_kms_init.__key.10, ptr @.str.11, ptr @radeon_irq_kms_init.__key.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_irq_kms_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_irq_kms_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_irq_kms_init.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_irq_kms_init.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_irq_kms_init.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_irq_kms_init.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_irq_kms_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_msi_ok._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_irq_kms_init(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55
  %lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @radeon_irq_kms_init.__key, i16 noundef signext 3) #5
  %ddev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %0 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddev, align 4
  %vblank_disable_immediate = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %vblank_disable_immediate to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %vblank_disable_immediate, align 4
  %3 = load ptr, ptr %ddev, align 4
  %num_crtc = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 91
  %4 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_crtc, align 4
  %call2 = tail call i32 @drm_vblank_init(ptr noundef %3, i32 noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %msi_enabled = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 84
  %6 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %msi_enabled, align 8
  %family.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %7 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %8)
  %cmp.i = icmp ult i32 %8, 12
  br i1 %cmp.i, label %if.end.do.body15_crit_edge, label %if.end.i

if.end.do.body15_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body15

if.end.i:                                         ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %10, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end2.i, label %if.end.i.do.body15_crit_edge

if.end.i.do.body15_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body15

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 57, i32 %8)
  %cmp4.i = icmp ult i32 %8, 57
  br i1 %cmp4.i, label %do.end.i, label %if.end2.i.if.end6.i_crit_edge

if.end2.i.if.end6.i_crit_edge:                    ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i

do.end.i:                                         ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.19) #8
  %pdev.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 2
  %13 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev.i, align 8
  %no_64bit_msi.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 49
  %15 = ptrtoint ptr %no_64bit_msi.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 5)
  %bf.load.i = load i40, ptr %no_64bit_msi.i, align 1
  %bf.set.i = or i40 %bf.load.i, 4294967296
  store i40 %bf.set.i, ptr %no_64bit_msi.i, align 1
  br label %if.end6.i

if.end6.i:                                        ; preds = %do.end.i, %if.end2.i.if.end6.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_msi to i32))
  %16 = load i32, ptr @radeon_msi, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %if.end12.i [
    i32 1, label %if.end6.i.if.then4_crit_edge
    i32 0, label %if.end6.i.do.body15_crit_edge
  ]

if.end6.i.do.body15_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body15

if.end6.i.if.then4_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

if.end12.i:                                       ; preds = %if.end6.i
  %pdev13.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 2
  %18 = ptrtoint ptr %pdev13.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev13.i, align 8
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 31007, i16 %21)
  %cmp14.i = icmp eq i16 %21, 31007
  br i1 %cmp14.i, label %land.lhs.true.i, label %if.end12.i.if.end83.i_crit_edge

if.end12.i.if.end83.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end83.i

land.lhs.true.i:                                  ; preds = %if.end12.i
  %subsystem_vendor.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 9
  %22 = ptrtoint ptr %subsystem_vendor.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %subsystem_vendor.i, align 4
  %24 = zext i16 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.21)
  switch i16 %23, label %land.lhs.true.i.if.end83.i_crit_edge [
    i16 4156, label %land.lhs.true20.i
    i16 4136, label %land.lhs.true38.i
    i16 4219, label %land.lhs.true76.i
  ]

land.lhs.true.i.if.end83.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end83.i

land.lhs.true20.i:                                ; preds = %land.lhs.true.i
  %subsystem_device.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 10
  %25 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %subsystem_device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12482, i16 %26)
  %cmp23.i = icmp eq i16 %26, 12482
  br i1 %cmp23.i, label %land.lhs.true20.i.if.then4_crit_edge, label %land.lhs.true20.i.if.end83.i_crit_edge

land.lhs.true20.i.if.end83.i_crit_edge:           ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end83.i

land.lhs.true20.i.if.then4_crit_edge:             ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

land.lhs.true38.i:                                ; preds = %land.lhs.true.i
  %subsystem_device40.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 10
  %27 = ptrtoint ptr %subsystem_device40.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %subsystem_device40.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 508, i16 %28)
  %cmp42.i = icmp eq i16 %28, 508
  br i1 %cmp42.i, label %land.lhs.true38.i.if.then4_crit_edge, label %land.lhs.true57.i

land.lhs.true38.i.if.then4_crit_edge:             ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

land.lhs.true57.i:                                ; preds = %land.lhs.true38.i
  %29 = ptrtoint ptr %subsystem_device40.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %subsystem_device40.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 509, i16 %30)
  %cmp61.i = icmp eq i16 %30, 509
  br i1 %cmp61.i, label %land.lhs.true57.i.if.then4_crit_edge, label %land.lhs.true57.i.if.end83.i_crit_edge

land.lhs.true57.i.if.end83.i_crit_edge:           ; preds = %land.lhs.true57.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end83.i

land.lhs.true57.i.if.then4_crit_edge:             ; preds = %land.lhs.true57.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

land.lhs.true76.i:                                ; preds = %land.lhs.true.i
  %subsystem_device78.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 10
  %31 = ptrtoint ptr %subsystem_device78.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %subsystem_device78.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 389, i16 %32)
  %cmp80.i = icmp eq i16 %32, 389
  br i1 %cmp80.i, label %land.lhs.true76.i.if.then4_crit_edge, label %land.lhs.true76.i.if.end83.i_crit_edge

land.lhs.true76.i.if.end83.i_crit_edge:           ; preds = %land.lhs.true76.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end83.i

land.lhs.true76.i.if.then4_crit_edge:             ; preds = %land.lhs.true76.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

if.end83.i:                                       ; preds = %land.lhs.true76.i.if.end83.i_crit_edge, %land.lhs.true57.i.if.end83.i_crit_edge, %land.lhs.true20.i.if.end83.i_crit_edge, %land.lhs.true.i.if.end83.i_crit_edge, %if.end12.i.if.end83.i_crit_edge
  %33 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %family.i, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %34, label %radeon_msi_ok.exit [
    i32 19, label %if.end83.i.if.then4_crit_edge
    i32 21, label %if.end83.i.do.body15_crit_edge
  ]

if.end83.i.do.body15_crit_edge:                   ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body15

if.end83.i.if.then4_crit_edge:                    ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

radeon_msi_ok.exit:                               ; preds = %if.end83.i
  %36 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags.i, align 8
  %and95.i = and i32 %37, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95.i)
  %tobool96.not.i = icmp eq i32 %and95.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 43, i32 %34)
  %cmp99.i = icmp ugt i32 %34, 43
  %spec.select.i = select i1 %tobool96.not.i, i1 true, i1 %cmp99.i
  br i1 %spec.select.i, label %radeon_msi_ok.exit.if.then4_crit_edge, label %radeon_msi_ok.exit.do.body15_crit_edge

radeon_msi_ok.exit.do.body15_crit_edge:           ; preds = %radeon_msi_ok.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body15

radeon_msi_ok.exit.if.then4_crit_edge:            ; preds = %radeon_msi_ok.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

if.then4:                                         ; preds = %radeon_msi_ok.exit.if.then4_crit_edge, %if.end83.i.if.then4_crit_edge, %land.lhs.true76.i.if.then4_crit_edge, %land.lhs.true57.i.if.then4_crit_edge, %land.lhs.true38.i.if.then4_crit_edge, %land.lhs.true20.i.if.then4_crit_edge, %if.end6.i.if.then4_crit_edge
  %pdev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 2
  %38 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev, align 8
  %call5 = tail call i32 @pci_enable_msi(ptr noundef %39) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.then4.do.body15_crit_edge

if.then4.do.body15_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body15

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %msi_enabled, align 8
  %41 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %42, ptr noundef nonnull @.str.1) #8
  br label %do.body15

do.body15:                                        ; preds = %if.then7, %if.then4.do.body15_crit_edge, %radeon_msi_ok.exit.do.body15_crit_edge, %if.end83.i.do.body15_crit_edge, %if.end6.i.do.body15_crit_edge, %if.end.i.do.body15_crit_edge, %if.end.do.body15_crit_edge
  %hotplug_work = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 88
  tail call void @__init_work(ptr noundef %hotplug_work, i32 noundef 0) #5
  %43 = ptrtoint ptr %hotplug_work to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -64, ptr %hotplug_work, align 8
  %lockdep_map = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 88, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.7, ptr noundef nonnull @radeon_irq_kms_init.__key.6, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry22 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 88, i32 0, i32 1
  %44 = ptrtoint ptr %entry22 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %entry22, ptr %entry22, align 4
  %prev.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 88, i32 0, i32 1, i32 1
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %entry22, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 88, i32 0, i32 2
  %46 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @radeon_hotplug_work_func, ptr %func, align 4
  %timer = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 88, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.9, ptr noundef nonnull @radeon_irq_kms_init.__key.8) #5
  %dp_work = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 89
  tail call void @__init_work(ptr noundef %dp_work, i32 noundef 0) #5
  %47 = ptrtoint ptr %dp_work to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -64, ptr %dp_work, align 4
  %lockdep_map39 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 89, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map39, ptr noundef nonnull @.str.11, ptr noundef nonnull @radeon_irq_kms_init.__key.10, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry41 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 89, i32 1
  %48 = ptrtoint ptr %entry41 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %entry41, ptr %entry41, align 4
  %prev.i106 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 89, i32 1, i32 1
  %49 = ptrtoint ptr %prev.i106 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %entry41, ptr %prev.i106, align 4
  %func43 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 89, i32 2
  %50 = ptrtoint ptr %func43 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @radeon_dp_work_func, ptr %func43, align 4
  %audio_work = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 90
  tail call void @__init_work(ptr noundef %audio_work, i32 noundef 0) #5
  %51 = ptrtoint ptr %audio_work to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -64, ptr %audio_work, align 8
  %lockdep_map52 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 90, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map52, ptr noundef nonnull @.str.13, ptr noundef nonnull @radeon_irq_kms_init.__key.12, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry54 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 90, i32 1
  %52 = ptrtoint ptr %entry54 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %entry54, ptr %entry54, align 4
  %prev.i107 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 90, i32 1, i32 1
  %53 = ptrtoint ptr %prev.i107 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %entry54, ptr %prev.i107, align 4
  %func56 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 90, i32 2
  %54 = ptrtoint ptr %func56 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @r600_audio_update_hdmi, ptr %func56, align 4
  %55 = ptrtoint ptr %irq to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %irq, align 8
  %pdev60 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 2
  %56 = ptrtoint ptr %pdev60 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pdev60, align 8
  %irq61 = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 46
  %58 = ptrtoint ptr %irq61 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %irq61, align 4
  %60 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ddev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %59)
  %cmp.i108 = icmp eq i32 %59, -2147483648
  br i1 %cmp.i108, label %do.body15.if.then64_crit_edge, label %if.end.i110

do.body15.if.then64_crit_edge:                    ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then64

if.end.i110:                                      ; preds = %do.body15
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev_private.i.i, align 4
  %lock.i.i = getelementptr inbounds %struct.radeon_device, ptr %63, i32 0, i32 55, i32 1
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #5
  %arrayidx.i.i = getelementptr %struct.radeon_device, ptr %63, i32 0, i32 55, i32 2, i32 0
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i.i, i32 noundef 4) #5
  %64 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile i32 0, ptr %arrayidx.i.i, align 4
  %arrayidx.1.i.i = getelementptr %struct.radeon_device, ptr %63, i32 0, i32 55, i32 2, i32 1
  %call.i.i.1.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.1.i.i, i32 noundef 4) #5
  %65 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile i32 0, ptr %arrayidx.1.i.i, align 4
  %arrayidx.2.i.i = getelementptr %struct.radeon_device, ptr %63, i32 0, i32 55, i32 2, i32 2
  %call.i.i.2.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.2.i.i, i32 noundef 4) #5
  %66 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile i32 0, ptr %arrayidx.2.i.i, align 4
  %arrayidx.3.i.i = getelementptr %struct.radeon_device, ptr %63, i32 0, i32 55, i32 2, i32 3
  %call.i.i.3.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.3.i.i, i32 noundef 4) #5
  %67 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile i32 0, ptr %arrayidx.3.i.i, align 4
  %arrayidx.4.i.i = getelementptr %struct.radeon_device, ptr %63, i32 0, i32 55, i32 2, i32 4
  %call.i.i.4.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.4.i.i, i32 noundef 4) #5
  %68 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile i32 0, ptr %arrayidx.4.i.i, align 4
  %arrayidx.5.i.i = getelementptr %struct.radeon_device, ptr %63, i32 0, i32 55, i32 2, i32 5
  %call.i.i.5.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.5.i.i, i32 noundef 4) #5
  %69 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile i32 0, ptr %arrayidx.5.i.i, align 4
  %arrayidx.6.i.i = getelementptr %struct.radeon_device, ptr %63, i32 0, i32 55, i32 2, i32 6
  %call.i.i.6.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.6.i.i, i32 noundef 4) #5
  %70 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile i32 0, ptr %arrayidx.6.i.i, align 4
  %arrayidx.7.i.i = getelementptr %struct.radeon_device, ptr %63, i32 0, i32 55, i32 2, i32 7
  %call.i.i.7.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.7.i.i, i32 noundef 4) #5
  %71 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile i32 0, ptr %arrayidx.7.i.i, align 4
  %dpm_thermal.i.i = getelementptr inbounds %struct.radeon_device, ptr %63, i32 0, i32 55, i32 9
  %72 = ptrtoint ptr %dpm_thermal.i.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %dpm_thermal.i.i, align 4
  %uglygep.i.i = getelementptr i8, ptr %63, i32 8212
  %73 = call ptr @memset(ptr %uglygep.i.i, i32 0, i32 7)
  %arrayidx23.i.i = getelementptr %struct.radeon_device, ptr %63, i32 0, i32 55, i32 3, i32 0
  %74 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %arrayidx23.i.i, align 1
  %arrayidx25.i.i = getelementptr %struct.radeon_device, ptr %63, i32 0, i32 55, i32 4, i32 0
  %call.i.i59.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx25.i.i, i32 noundef 4) #5
  %75 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile i32 0, ptr %arrayidx25.i.i, align 4
  %arrayidx27.i.i = getelementptr %struct.radeon_device, ptr %63, i32 0, i32 55, i32 7, i32 0
  %76 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %arrayidx27.i.i, align 1
  %arrayidx23.1.i.i = getelementptr %struct.radeon_device, ptr %63, i32 0, i32 55, i32 3, i32 1
  %77 = ptrtoint ptr %arrayidx23.1.i.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %arrayidx23.1.i.i, align 1
  %arrayidx25.1.i.i = getelementptr %struct.radeon_device, ptr %63, i32 0, i32 55, i32 4, i32 1
  %call.i.i59.1.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx25.1.i.i, i32 noundef 4) #5
  %78 = ptrtoint ptr %arrayidx25.1.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile i32 0, ptr %arrayidx25.1.i.i, align 4
  %arrayidx27.1.i.i = getelementptr %struct.radeon_device, ptr %63, i32 0, i32 55, i32 7, i32 1
  %79 = ptrtoint ptr %arrayidx27.1.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %arrayidx27.1.i.i, align 1
  %arrayidx23.2.i.i = getelementptr %struct.radeon_device, ptr %63, i32 0, i32 55, i32 3, i32 2
  %80 = ptrtoint ptr %arrayidx23.2.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %arrayidx23.2.i.i, align 1
  %arrayidx25.2.i.i = getelementptr %struct.radeon_device, ptr %63, i32 0, i32 55, i32 4, i32 2
  %call.i.i59.2.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx25.2.i.i, i32 noundef 4) #5
  %81 = ptrtoint ptr %arrayidx25.2.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile i32 0, ptr %arrayidx25.2.i.i, align 4
  %arrayidx27.2.i.i = getelementptr %struct.radeon_device, ptr %63, i32 0, i32 55, i32 7, i32 2
  %82 = ptrtoint ptr %arrayidx27.2.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %arrayidx27.2.i.i, align 1
  %arrayidx23.3.i.i = getelementptr %struct.radeon_device, ptr %63, i32 0, i32 55, i32 3, i32 3
  %83 = ptrtoint ptr %arrayidx23.3.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %arrayidx23.3.i.i, align 1
  %arrayidx25.3.i.i = getelementptr %struct.radeon_device, ptr %63, i32 0, i32 55, i32 4, i32 3
  %call.i.i59.3.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx25.3.i.i, i32 noundef 4) #5
  %84 = ptrtoint ptr %arrayidx25.3.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile i32 0, ptr %arrayidx25.3.i.i, align 4
  %arrayidx27.3.i.i = getelementptr %struct.radeon_device, ptr %63, i32 0, i32 55, i32 7, i32 3
  %85 = ptrtoint ptr %arrayidx27.3.i.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %arrayidx27.3.i.i, align 1
  %arrayidx23.4.i.i = getelementptr %struct.radeon_device, ptr %63, i32 0, i32 55, i32 3, i32 4
  %86 = ptrtoint ptr %arrayidx23.4.i.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %arrayidx23.4.i.i, align 1
  %arrayidx25.4.i.i = getelementptr %struct.radeon_device, ptr %63, i32 0, i32 55, i32 4, i32 4
  %call.i.i59.4.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx25.4.i.i, i32 noundef 4) #5
  %87 = ptrtoint ptr %arrayidx25.4.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile i32 0, ptr %arrayidx25.4.i.i, align 4
  %arrayidx27.4.i.i = getelementptr %struct.radeon_device, ptr %63, i32 0, i32 55, i32 7, i32 4
  %88 = ptrtoint ptr %arrayidx27.4.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %arrayidx27.4.i.i, align 1
  %arrayidx23.5.i.i = getelementptr %struct.radeon_device, ptr %63, i32 0, i32 55, i32 3, i32 5
  %89 = ptrtoint ptr %arrayidx23.5.i.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %arrayidx23.5.i.i, align 1
  %arrayidx25.5.i.i = getelementptr %struct.radeon_device, ptr %63, i32 0, i32 55, i32 4, i32 5
  %call.i.i59.5.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx25.5.i.i, i32 noundef 4) #5
  %90 = ptrtoint ptr %arrayidx25.5.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile i32 0, ptr %arrayidx25.5.i.i, align 4
  %arrayidx27.5.i.i = getelementptr %struct.radeon_device, ptr %63, i32 0, i32 55, i32 7, i32 5
  %91 = ptrtoint ptr %arrayidx27.5.i.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %arrayidx27.5.i.i, align 1
  %asic.i.i = getelementptr inbounds %struct.radeon_device, ptr %63, i32 0, i32 56
  %92 = ptrtoint ptr %asic.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %asic.i.i, align 8
  %irq31.i.i = getelementptr inbounds %struct.radeon_asic, ptr %93, i32 0, i32 15
  %94 = ptrtoint ptr %irq31.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %irq31.i.i, align 4
  %call32.i.i = tail call i32 %95(ptr noundef %63) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #5
  %96 = ptrtoint ptr %asic.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %asic.i.i, align 8
  %process.i.i = getelementptr inbounds %struct.radeon_asic, ptr %97, i32 0, i32 15, i32 1
  %98 = ptrtoint ptr %process.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %process.i.i, align 4
  %call37.i.i = tail call i32 %99(ptr noundef %63) #5
  %driver.i = getelementptr inbounds %struct.drm_device, ptr %61, i32 0, i32 4
  %100 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %driver.i, align 4
  %name.i = getelementptr inbounds %struct.drm_driver, ptr %101, i32 0, i32 21
  %102 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %name.i, align 4
  %call.i.i = tail call i32 @request_threaded_irq(i32 noundef %59, ptr noundef nonnull @radeon_driver_irq_handler_kms, ptr noundef null, i32 noundef 128, ptr noundef %103, ptr noundef %61) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i109 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i109, label %do.end72, label %if.end.i110.if.then64_crit_edge

if.end.i110.if.then64_crit_edge:                  ; preds = %if.end.i110
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then64

if.then64:                                        ; preds = %if.end.i110.if.then64_crit_edge, %do.body15.if.then64_crit_edge
  %retval.0.i112.ph = phi i32 [ %call.i.i, %if.end.i110.if.then64_crit_edge ], [ -107, %do.body15.if.then64_crit_edge ]
  %104 = ptrtoint ptr %irq to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %irq, align 8
  %call68 = tail call zeroext i1 @flush_delayed_work(ptr noundef %hotplug_work) #5
  br label %cleanup

do.end72:                                         ; preds = %if.end.i110
  call void @__sanitizer_cov_trace_pc() #7
  %105 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev_private.i.i, align 4
  %family.i.i = getelementptr inbounds %struct.radeon_device, ptr %106, i32 0, i32 6
  %107 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %family.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %108)
  %cmp.i.i = icmp ugt i32 %108, 17
  %spec.select.i.i = select i1 %cmp.i.i, i32 16777215, i32 2097151
  %109 = getelementptr inbounds %struct.drm_device, ptr %61, i32 0, i32 26
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %spec.select.i.i, ptr %109, align 4
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end72, %if.then64, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i112.ph, %if.then64 ], [ 0, %do.end72 ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_vblank_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_hotplug_work_func(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ddev = getelementptr i8, ptr %work, i32 -10588
  %0 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddev, align 4
  %mode_config1 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30
  %mode_config_initialized = getelementptr i8, ptr %work, i32 -8984
  %2 = ptrtoint ptr %mode_config_initialized to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mode_config_initialized, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef %mode_config1, i32 noundef 0) #5
  %connector_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 12
  %4 = ptrtoint ptr %connector_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn22 = load ptr, ptr %connector_list, align 4
  %cmp.not23 = icmp eq ptr %.pn22, %connector_list
  br i1 %cmp.not23, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn24 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn22, %if.end.for.body_crit_edge ]
  %connector.0 = getelementptr i8, ptr %.pn24, i32 -16
  tail call void @radeon_connector_hotplug(ptr noundef %connector.0) #5
  %5 = ptrtoint ptr %.pn24 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn24, align 4
  %cmp.not = icmp eq ptr %.pn, %connector_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mode_config1) #5
  %call = tail call zeroext i1 @drm_helper_hpd_irq_event(ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_dp_work_func(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ddev = getelementptr i8, ptr %work, i32 -10688
  %0 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddev, align 4
  %connector_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 12
  %2 = ptrtoint ptr %connector_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn14 = load ptr, ptr %connector_list, align 4
  %cmp.not15 = icmp eq ptr %.pn14, %connector_list
  br i1 %cmp.not15, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn16 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn14, %entry.for.body_crit_edge ]
  %connector.0 = getelementptr i8, ptr %.pn16, i32 -16
  tail call void @radeon_connector_hotplug(ptr noundef %connector.0) #5
  %3 = ptrtoint ptr %.pn16 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn16, align 4
  %cmp.not = icmp eq ptr %.pn, %connector_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_audio_update_hdmi(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_irq_kms_fini(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %irq, align 8, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then:                                          ; preds = %entry
  %ddev.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %2 = ptrtoint ptr %ddev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddev.i, align 4
  %dev1.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1.i, align 4
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_private.i.i, align 4
  %cmp.i.i = icmp eq ptr %7, null
  br i1 %cmp.i.i, label %if.then.radeon_irq_uninstall.exit_crit_edge, label %do.body1.i.i

if.then.radeon_irq_uninstall.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_irq_uninstall.exit

do.body1.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %lock.i.i = getelementptr inbounds %struct.radeon_device, ptr %7, i32 0, i32 55, i32 1
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #5
  %arrayidx.i.i = getelementptr %struct.radeon_device, ptr %7, i32 0, i32 55, i32 2, i32 0
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i.i, i32 noundef 4) #5
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 0, ptr %arrayidx.i.i, align 4
  %arrayidx.1.i.i = getelementptr %struct.radeon_device, ptr %7, i32 0, i32 55, i32 2, i32 1
  %call.i.i.1.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.1.i.i, i32 noundef 4) #5
  %9 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 0, ptr %arrayidx.1.i.i, align 4
  %arrayidx.2.i.i = getelementptr %struct.radeon_device, ptr %7, i32 0, i32 55, i32 2, i32 2
  %call.i.i.2.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.2.i.i, i32 noundef 4) #5
  %10 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 0, ptr %arrayidx.2.i.i, align 4
  %arrayidx.3.i.i = getelementptr %struct.radeon_device, ptr %7, i32 0, i32 55, i32 2, i32 3
  %call.i.i.3.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.3.i.i, i32 noundef 4) #5
  %11 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 0, ptr %arrayidx.3.i.i, align 4
  %arrayidx.4.i.i = getelementptr %struct.radeon_device, ptr %7, i32 0, i32 55, i32 2, i32 4
  %call.i.i.4.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.4.i.i, i32 noundef 4) #5
  %12 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 0, ptr %arrayidx.4.i.i, align 4
  %arrayidx.5.i.i = getelementptr %struct.radeon_device, ptr %7, i32 0, i32 55, i32 2, i32 5
  %call.i.i.5.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.5.i.i, i32 noundef 4) #5
  %13 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 0, ptr %arrayidx.5.i.i, align 4
  %arrayidx.6.i.i = getelementptr %struct.radeon_device, ptr %7, i32 0, i32 55, i32 2, i32 6
  %call.i.i.6.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.6.i.i, i32 noundef 4) #5
  %14 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 0, ptr %arrayidx.6.i.i, align 4
  %arrayidx.7.i.i = getelementptr %struct.radeon_device, ptr %7, i32 0, i32 55, i32 2, i32 7
  %call.i.i.7.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.7.i.i, i32 noundef 4) #5
  %15 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 0, ptr %arrayidx.7.i.i, align 4
  %dpm_thermal.i.i = getelementptr inbounds %struct.radeon_device, ptr %7, i32 0, i32 55, i32 9
  %16 = ptrtoint ptr %dpm_thermal.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %dpm_thermal.i.i, align 4
  %uglygep.i.i = getelementptr i8, ptr %7, i32 8212
  %17 = call ptr @memset(ptr %uglygep.i.i, i32 0, i32 7)
  %arrayidx24.i.i = getelementptr %struct.radeon_device, ptr %7, i32 0, i32 55, i32 3, i32 0
  %18 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx24.i.i, align 1
  %arrayidx26.i.i = getelementptr %struct.radeon_device, ptr %7, i32 0, i32 55, i32 4, i32 0
  %call.i.i58.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx26.i.i, i32 noundef 4) #5
  %19 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 0, ptr %arrayidx26.i.i, align 4
  %arrayidx28.i.i = getelementptr %struct.radeon_device, ptr %7, i32 0, i32 55, i32 7, i32 0
  %20 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %arrayidx28.i.i, align 1
  %arrayidx24.1.i.i = getelementptr %struct.radeon_device, ptr %7, i32 0, i32 55, i32 3, i32 1
  %21 = ptrtoint ptr %arrayidx24.1.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx24.1.i.i, align 1
  %arrayidx26.1.i.i = getelementptr %struct.radeon_device, ptr %7, i32 0, i32 55, i32 4, i32 1
  %call.i.i58.1.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx26.1.i.i, i32 noundef 4) #5
  %22 = ptrtoint ptr %arrayidx26.1.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 0, ptr %arrayidx26.1.i.i, align 4
  %arrayidx28.1.i.i = getelementptr %struct.radeon_device, ptr %7, i32 0, i32 55, i32 7, i32 1
  %23 = ptrtoint ptr %arrayidx28.1.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx28.1.i.i, align 1
  %arrayidx24.2.i.i = getelementptr %struct.radeon_device, ptr %7, i32 0, i32 55, i32 3, i32 2
  %24 = ptrtoint ptr %arrayidx24.2.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %arrayidx24.2.i.i, align 1
  %arrayidx26.2.i.i = getelementptr %struct.radeon_device, ptr %7, i32 0, i32 55, i32 4, i32 2
  %call.i.i58.2.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx26.2.i.i, i32 noundef 4) #5
  %25 = ptrtoint ptr %arrayidx26.2.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 0, ptr %arrayidx26.2.i.i, align 4
  %arrayidx28.2.i.i = getelementptr %struct.radeon_device, ptr %7, i32 0, i32 55, i32 7, i32 2
  %26 = ptrtoint ptr %arrayidx28.2.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %arrayidx28.2.i.i, align 1
  %arrayidx24.3.i.i = getelementptr %struct.radeon_device, ptr %7, i32 0, i32 55, i32 3, i32 3
  %27 = ptrtoint ptr %arrayidx24.3.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %arrayidx24.3.i.i, align 1
  %arrayidx26.3.i.i = getelementptr %struct.radeon_device, ptr %7, i32 0, i32 55, i32 4, i32 3
  %call.i.i58.3.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx26.3.i.i, i32 noundef 4) #5
  %28 = ptrtoint ptr %arrayidx26.3.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 0, ptr %arrayidx26.3.i.i, align 4
  %arrayidx28.3.i.i = getelementptr %struct.radeon_device, ptr %7, i32 0, i32 55, i32 7, i32 3
  %29 = ptrtoint ptr %arrayidx28.3.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %arrayidx28.3.i.i, align 1
  %arrayidx24.4.i.i = getelementptr %struct.radeon_device, ptr %7, i32 0, i32 55, i32 3, i32 4
  %30 = ptrtoint ptr %arrayidx24.4.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %arrayidx24.4.i.i, align 1
  %arrayidx26.4.i.i = getelementptr %struct.radeon_device, ptr %7, i32 0, i32 55, i32 4, i32 4
  %call.i.i58.4.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx26.4.i.i, i32 noundef 4) #5
  %31 = ptrtoint ptr %arrayidx26.4.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 0, ptr %arrayidx26.4.i.i, align 4
  %arrayidx28.4.i.i = getelementptr %struct.radeon_device, ptr %7, i32 0, i32 55, i32 7, i32 4
  %32 = ptrtoint ptr %arrayidx28.4.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %arrayidx28.4.i.i, align 1
  %arrayidx24.5.i.i = getelementptr %struct.radeon_device, ptr %7, i32 0, i32 55, i32 3, i32 5
  %33 = ptrtoint ptr %arrayidx24.5.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %arrayidx24.5.i.i, align 1
  %arrayidx26.5.i.i = getelementptr %struct.radeon_device, ptr %7, i32 0, i32 55, i32 4, i32 5
  %call.i.i58.5.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx26.5.i.i, i32 noundef 4) #5
  %34 = ptrtoint ptr %arrayidx26.5.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 0, ptr %arrayidx26.5.i.i, align 4
  %arrayidx28.5.i.i = getelementptr %struct.radeon_device, ptr %7, i32 0, i32 55, i32 7, i32 5
  %35 = ptrtoint ptr %arrayidx28.5.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %arrayidx28.5.i.i, align 1
  %asic.i.i = getelementptr inbounds %struct.radeon_device, ptr %7, i32 0, i32 56
  %36 = ptrtoint ptr %asic.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %asic.i.i, align 8
  %irq32.i.i = getelementptr inbounds %struct.radeon_asic, ptr %37, i32 0, i32 15
  %38 = ptrtoint ptr %irq32.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %irq32.i.i, align 4
  %call33.i.i = tail call i32 %39(ptr noundef nonnull %7) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call3.i.i) #5
  br label %radeon_irq_uninstall.exit

radeon_irq_uninstall.exit:                        ; preds = %do.body1.i.i, %if.then.radeon_irq_uninstall.exit_crit_edge
  %irq.i = getelementptr i8, ptr %5, i32 932
  %40 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %irq.i, align 4
  %call.i = tail call ptr @free_irq(i32 noundef %41, ptr noundef %3) #5
  %42 = ptrtoint ptr %irq to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %irq, align 8
  %msi_enabled = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 84
  %43 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %msi_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool3.not = icmp eq i32 %44, 0
  br i1 %tobool3.not, label %radeon_irq_uninstall.exit.if.end_crit_edge, label %if.then4

radeon_irq_uninstall.exit.if.end_crit_edge:       ; preds = %radeon_irq_uninstall.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then4:                                         ; preds = %radeon_irq_uninstall.exit
  call void @__sanitizer_cov_trace_pc() #7
  %pdev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 2
  %45 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pdev, align 8
  tail call void @pci_disable_msi(ptr noundef %46) #5
  br label %if.end

if.end:                                           ; preds = %if.then4, %radeon_irq_uninstall.exit.if.end_crit_edge
  %hotplug_work = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 88
  %call = tail call zeroext i1 @flush_delayed_work(ptr noundef %hotplug_work) #5
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msi(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_irq_kms_sw_irq_get(ptr noundef %rdev, i32 noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %irq, align 8, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 2, i32 %ring
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !45
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #5
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 1, ptr elementtype(i32) %arrayidx) #5, !srcloc !46
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !47
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp, label %do.body3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 1
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %3 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %asic, align 8
  %irq10 = getelementptr inbounds %struct.radeon_asic, ptr %4, i32 0, i32 15
  %5 = ptrtoint ptr %irq10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %irq10, align 4
  %call11 = tail call i32 %6(ptr noundef %rdev) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @radeon_irq_kms_sw_irq_get_delayed(ptr noundef %rdev, i32 noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 2, i32 %ring
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !45
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #5
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 1, ptr elementtype(i32) %arrayidx) #5, !srcloc !46
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !47
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp = icmp eq i32 %asmresult.i.i.i.i, 1
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_irq_kms_sw_irq_put(ptr noundef %rdev, i32 noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %irq, align 8, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 2, i32 %ring
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !48
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #5
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 1, ptr elementtype(i32) %arrayidx) #5, !srcloc !49
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %do.body3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 1
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %3 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %asic, align 8
  %irq9 = getelementptr inbounds %struct.radeon_asic, ptr %4, i32 0, i32 15
  %5 = ptrtoint ptr %irq9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %irq9, align 4
  %call10 = tail call i32 %6(ptr noundef %rdev) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_irq_kms_pflip_irq_get(ptr noundef %rdev, i32 noundef %crtc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %crtc)
  %cmp = icmp slt i32 %crtc, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %num_crtc = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 91
  %0 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_crtc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %crtc)
  %cmp1.not = icmp sgt i32 %1, %crtc
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %irq = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %irq, align 8, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 4, i32 %crtc
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !45
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #5
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 1, ptr elementtype(i32) %arrayidx) #5, !srcloc !46
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !47
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp5 = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp5, label %do.body7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 1
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %5 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %asic, align 8
  %irq14 = getelementptr inbounds %struct.radeon_asic, ptr %6, i32 0, i32 15
  %7 = ptrtoint ptr %irq14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %irq14, align 4
  %call15 = tail call i32 %8(ptr noundef %rdev) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call11) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body7, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_irq_kms_pflip_irq_put(ptr noundef %rdev, i32 noundef %crtc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %crtc)
  %cmp = icmp slt i32 %crtc, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %num_crtc = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 91
  %0 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_crtc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %crtc)
  %cmp1.not = icmp sgt i32 %1, %crtc
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %irq = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %irq, align 8, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 4, i32 %crtc
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !48
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #5
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 1, ptr elementtype(i32) %arrayidx) #5, !srcloc !49
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %do.body6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 1
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %5 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %asic, align 8
  %irq13 = getelementptr inbounds %struct.radeon_asic, ptr %6, i32 0, i32 15
  %7 = ptrtoint ptr %irq13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %irq13, align 4
  %call14 = tail call i32 %8(ptr noundef %rdev) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body6, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_irq_kms_enable_afmt(ptr noundef %rdev, i32 noundef %block) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %irq, align 8, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 7, i32 %block
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %arrayidx, align 1
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %3 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %asic, align 8
  %irq7 = getelementptr inbounds %struct.radeon_asic, ptr %4, i32 0, i32 15
  %5 = ptrtoint ptr %irq7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %irq7, align 4
  %call8 = tail call i32 %6(ptr noundef %rdev) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body1, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_irq_kms_disable_afmt(ptr noundef %rdev, i32 noundef %block) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %irq, align 8, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 7, i32 %block
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %arrayidx, align 1
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %3 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %asic, align 8
  %irq7 = getelementptr inbounds %struct.radeon_asic, ptr %4, i32 0, i32 15
  %5 = ptrtoint ptr %irq7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %irq7, align 4
  %call8 = tail call i32 %6(ptr noundef %rdev) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body1, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_irq_kms_enable_hpd(ptr noundef %rdev, i32 noundef %hpd_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %irq, align 8, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 6, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1, !range !44
  %4 = trunc i32 %hpd_mask to i8
  %5 = and i8 %4, 1
  %6 = or i8 %3, %5
  store i8 %6, ptr %arrayidx, align 1
  %arrayidx.1 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 6, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.1, align 1, !range !44
  %9 = trunc i32 %hpd_mask to i8
  %10 = lshr i8 %9, 1
  %11 = and i8 %10, 1
  %12 = or i8 %8, %11
  store i8 %12, ptr %arrayidx.1, align 1
  %arrayidx.2 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 6, i32 2
  %13 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.2, align 1, !range !44
  %15 = trunc i32 %hpd_mask to i8
  %16 = lshr i8 %15, 2
  %17 = and i8 %16, 1
  %18 = or i8 %14, %17
  store i8 %18, ptr %arrayidx.2, align 1
  %arrayidx.3 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 6, i32 3
  %19 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.3, align 1, !range !44
  %21 = trunc i32 %hpd_mask to i8
  %22 = lshr i8 %21, 3
  %23 = and i8 %22, 1
  %24 = or i8 %20, %23
  store i8 %24, ptr %arrayidx.3, align 1
  %arrayidx.4 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 6, i32 4
  %25 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.4, align 1, !range !44
  %27 = trunc i32 %hpd_mask to i8
  %28 = lshr i8 %27, 4
  %29 = and i8 %28, 1
  %30 = or i8 %26, %29
  store i8 %30, ptr %arrayidx.4, align 1
  %arrayidx.5 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 6, i32 5
  %31 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.5, align 1, !range !44
  %33 = trunc i32 %hpd_mask to i8
  %34 = lshr i8 %33, 5
  %35 = and i8 %34, 1
  %36 = or i8 %32, %35
  store i8 %36, ptr %arrayidx.5, align 1
  %arrayidx.6 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 6, i32 6
  %37 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.6, align 1, !range !44
  %39 = trunc i32 %hpd_mask to i8
  %40 = lshr i8 %39, 6
  %41 = and i8 %40, 1
  %42 = or i8 %38, %41
  store i8 %42, ptr %arrayidx.6, align 1
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %43 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %asic, align 8
  %irq14 = getelementptr inbounds %struct.radeon_asic, ptr %44, i32 0, i32 15
  %45 = ptrtoint ptr %irq14 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %irq14, align 4
  %call15 = tail call i32 %46(ptr noundef %rdev) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body1, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_irq_kms_disable_hpd(ptr noundef %rdev, i32 noundef %hpd_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %irq, align 8, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %2 = xor i32 %hpd_mask, -1
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 6, i32 0
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1, !range !44
  %5 = trunc i32 %2 to i8
  %6 = and i8 %4, %5
  store i8 %6, ptr %arrayidx, align 1
  %7 = lshr i32 %2, 1
  %arrayidx.1 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 6, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.1, align 1, !range !44
  %10 = trunc i32 %7 to i8
  %11 = and i8 %9, %10
  store i8 %11, ptr %arrayidx.1, align 1
  %12 = lshr i32 %2, 2
  %arrayidx.2 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 6, i32 2
  %13 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.2, align 1, !range !44
  %15 = trunc i32 %12 to i8
  %16 = and i8 %14, %15
  store i8 %16, ptr %arrayidx.2, align 1
  %17 = lshr i32 %2, 3
  %arrayidx.3 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 6, i32 3
  %18 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.3, align 1, !range !44
  %20 = trunc i32 %17 to i8
  %21 = and i8 %19, %20
  store i8 %21, ptr %arrayidx.3, align 1
  %22 = lshr i32 %2, 4
  %arrayidx.4 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 6, i32 4
  %23 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.4, align 1, !range !44
  %25 = trunc i32 %22 to i8
  %26 = and i8 %24, %25
  store i8 %26, ptr %arrayidx.4, align 1
  %27 = lshr i32 %2, 5
  %arrayidx.5 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 6, i32 5
  %28 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.5, align 1, !range !44
  %30 = trunc i32 %27 to i8
  %31 = and i8 %29, %30
  store i8 %31, ptr %arrayidx.5, align 1
  %32 = lshr i32 %2, 6
  %arrayidx.6 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 6, i32 6
  %33 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.6, align 1, !range !44
  %35 = trunc i32 %32 to i8
  %36 = and i8 %34, %35
  store i8 %36, ptr %arrayidx.6, align 1
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %37 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %asic, align 8
  %irq14 = getelementptr inbounds %struct.radeon_asic, ptr %38, i32 0, i32 15
  %39 = ptrtoint ptr %irq14 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %irq14, align 4
  %call15 = tail call i32 %40(ptr noundef %rdev) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body1, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_irq_kms_set_irq_n_enabled(ptr noundef %rdev, i32 noundef %reg, i32 noundef %mask, i1 noundef zeroext %enable, ptr noundef %name, i32 noundef %n) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %0 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %reg)
  %cmp.i = icmp ugt i32 %1, %reg
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %reg)
  %cmp1.i = icmp ult i32 %reg, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %2 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %reg
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !51
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !52
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %reg) #5
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i ], [ %5, %if.then.i ]
  %and = and i32 %retval.0.i, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp eq i32 %and, 0
  %cmp = xor i1 %tobool, %enable
  br i1 %cmp, label %r100_mm_rreg.exit.cleanup_crit_edge, label %if.end

r100_mm_rreg.exit.cleanup_crit_edge:              ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %r100_mm_rreg.exit
  br i1 %enable, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.17, ptr noundef %name, i32 noundef %n) #5
  %or = or i32 %retval.0.i, %mask
  %6 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %reg)
  %cmp.i20 = icmp ugt i32 %7, %reg
  %or.cond.i22 = or i1 %cmp1.i, %cmp.i20
  br i1 %or.cond.i22, label %do.body.i, label %if.else.i25

do.body.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  tail call void @arm_heavy_mb() #5
  %8 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %rmmio.i23 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %9 = ptrtoint ptr %rmmio.i23 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmmio.i23, align 4
  %add.ptr.i24 = getelementptr i8, ptr %10, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 %8) #5, !srcloc !54
  br label %cleanup

if.else.i25:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %reg, i32 noundef %or) #5
  br label %cleanup

if.else:                                          ; preds = %if.end
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.18, ptr noundef %name, i32 noundef %n) #5
  %neg = xor i32 %mask, -1
  %and6 = and i32 %retval.0.i, %neg
  %11 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %reg)
  %cmp.i27 = icmp ugt i32 %12, %reg
  %or.cond.i29 = or i1 %cmp1.i, %cmp.i27
  br i1 %or.cond.i29, label %do.body.i32, label %if.else.i33

do.body.i32:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  tail call void @arm_heavy_mb() #5
  %13 = tail call i32 @llvm.bswap.i32(i32 %and6) #5
  %rmmio.i30 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %14 = ptrtoint ptr %rmmio.i30 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmmio.i30, align 4
  %add.ptr.i31 = getelementptr i8, ptr %15, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %13) #5, !srcloc !54
  br label %cleanup

if.else.i33:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %reg, i32 noundef %and6) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else.i33, %do.body.i32, %if.else.i25, %do.body.i, %r100_mm_rreg.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_connector_hotplug(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_helper_hpd_irq_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_driver_irq_handler_kms(i32 noundef %irq, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %arg, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %asic = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 56
  %2 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asic, align 8
  %process = getelementptr inbounds %struct.radeon_asic, ptr %3, i32 0, i32 15, i32 1
  %4 = ptrtoint ptr %process to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %process, align 4
  %call = tail call i32 %5(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev2 = getelementptr inbounds %struct.drm_device, ptr %arg, i32 0, i32 2
  %6 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev2, align 4
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #5
  %last_busy.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 22
  %8 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_mm_rreg_slow(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_mm_wreg_slow(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !11, !13, !14, !15, !16, !18, !19, !21, !22, !24, !25, !26, !28, !30, !32, !33, !34}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @radeon_irq_kms_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/radeon_irq_kms.c", i32 321, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/radeon/radeon_irq_kms.c", i32 338, i32 4}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !4, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @radeon_irq_kms_init._entry, !4, !"_entry", i1 false, i1 false}
!10 = !{ptr @radeon_irq_kms_init._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @radeon_irq_kms_init.__key.6, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/radeon/radeon_irq_kms.c", i32 342, i32 2}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @radeon_irq_kms_init.__key.8, !12, !"__key", i1 false, i1 false}
!15 = !{ptr @.str.9, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @radeon_irq_kms_init.__key.10, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/radeon/radeon_irq_kms.c", i32 343, i32 2}
!18 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @radeon_irq_kms_init.__key.12, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/radeon/radeon_irq_kms.c", i32 344, i32 2}
!21 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/radeon/radeon_irq_kms.c", i32 354, i32 2}
!24 = !{ptr @radeon_irq_kms_init._entry.14, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @radeon_irq_kms_init._entry_ptr.16, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/radeon/radeon_irq_kms.c", i32 608, i32 3}
!28 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/radeon/radeon_irq_kms.c", i32 611, i32 3}
!30 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/radeon/radeon_irq_kms.c", i32 253, i32 3}
!32 = !{ptr @.str.20, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @radeon_msi_ok._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @radeon_msi_ok._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{i8 0, i8 2}
!45 = !{i64 2148761854}
!46 = !{i64 2148677139, i64 2148677171, i64 2148677200, i64 2148677234, i64 2148677265, i64 2148677288}
!47 = !{i64 2148762083}
!48 = !{i64 2148764895}
!49 = !{i64 2148679604, i64 2148679636, i64 2148679665, i64 2148679699, i64 2148679730, i64 2148679753}
!50 = !{i64 2148765124}
!51 = !{i64 4995249}
!52 = !{i64 2158405972}
!53 = !{i64 2158406379}
!54 = !{i64 4994831}
