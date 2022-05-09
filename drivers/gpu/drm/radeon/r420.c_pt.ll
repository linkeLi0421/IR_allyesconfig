; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/r420.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/r420.c"
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.87, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.88, ptr, i32, ptr, i8, i32 }
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

@r420_pipes_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\014Failed to wait GUI idle while programming pipes. Bad things might happen.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"r420_pipes_init\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/radeon/r420.c\00", [34 x i8] zeroinitializer }, align 32
@r420_pipes_init._entry_ptr = internal global ptr @r420_pipes_init._entry, section ".printk_index", align 4
@r420_pipes_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@r420_pipes_init._entry_ptr.4 = internal global ptr @r420_pipes_init._entry.3, section ".printk_index", align 4
@r420_pipes_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@r420_pipes_init._entry_ptr.6 = internal global ptr @r420_pipes_init._entry.5, section ".printk_index", align 4
@r420_pipes_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016[drm] radeon: %d quad pipes, %d z pipes initialized.\0A\00", [40 x i8] zeroinitializer }, align 32
@r420_pipes_init._entry_ptr.9 = internal global ptr @r420_pipes_init._entry.7, section ".printk_index", align 4
@r420_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 318, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"GPU reset failed ! (0xE40=0x%08X, 0x7C0=0x%08X)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"r420_resume\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@r420_resume._entry_ptr = internal global ptr @r420_resume._entry, section ".printk_index", align 4
@r420_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.14, ptr @.str.2, i32 409, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"r420_init\00", [22 x i8] zeroinitializer }, align 32
@r420_init._entry_ptr = internal global ptr @r420_init._entry, section ".printk_index", align 4
@r420_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 456, ptr @.str.17, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Disabling GPU acceleration\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@r420_init._entry_ptr.18 = internal global ptr @r420_init._entry.15, section ".printk_index", align 4
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"r420_pipes_info\00", [16 x i8] zeroinitializer }, align 32
@r420_debugfs_pipes_info_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @r420_debugfs_pipes_info_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@radeon_dynclks = external dso_local local_unnamed_addr global i32, align 4
@r420_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 273, ptr @.str.17, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed initializing CP fences (%d).\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"r420_startup\00", [19 x i8] zeroinitializer }, align 32
@r420_startup._entry_ptr = internal global ptr @r420_startup._entry, section ".printk_index", align 4
@r420_startup._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 289, ptr @.str.17, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed initializing CP (%d).\0A\00", [34 x i8] zeroinitializer }, align 32
@r420_startup._entry_ptr.24 = internal global ptr @r420_startup._entry.22, section ".printk_index", align 4
@r420_startup._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.2, i32 296, ptr @.str.17, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"IB initialization failed (%d).\0A\00", [32 x i8] zeroinitializer }, align 32
@r420_startup._entry_ptr.27 = internal global ptr @r420_startup._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"radeon: writing more dwords to the ring than expected!\0A\00", [40 x i8] zeroinitializer }, align 32
@r420_reg_safe_bm = internal constant { [159 x i32], [132 x i8] } { [159 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 402595839, i32 -4, i32 -1, i32 -13566017, i32 -8, i32 -1008271361, i32 -2337, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -4033, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -4146, i32 -267468801, i32 8126464, i32 -268435336, i32 -16777207, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -2049, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -952, i32 -1, i32 -2, i32 -1, i32 956272464, i32 -491390, i32 -268435444, i32 -85980161, i32 65535, i32 -1, i32 -1, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -8388608, i32 0, i32 0, i32 0, i32 0, i32 261131, i32 -769, i32 -4195431], [132 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"GB_PIPE_SELECT 0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"GB_TILE_CONFIG 0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DST_PIPE_CONFIG 0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 24140, i64 24143]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 100, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 136, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 148, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 160, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 316, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 406, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 456, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 497, i32 22 }
@___asan_gen_.93 = private unnamed_addr constant [29 x i8] c"r420_debugfs_pipes_info_fops\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 489, i32 1 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 273, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 289, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 296, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [35 x i8] c"../drivers/gpu/drm/radeon/radeon.h\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 2721, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"r420_reg_safe_bm\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [41 x i8] c"./drivers/gpu/drm/radeon/r420_reg_safe.h\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 1, i32 23 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 481, i32 16 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 483, i32 16 }
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private constant [33 x i8] c"../drivers/gpu/drm/radeon/r420.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 485, i32 16 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @r420_init._entry, ptr @r420_init._entry.15, ptr @r420_init._entry_ptr, ptr @r420_init._entry_ptr.18, ptr @r420_pipes_init._entry, ptr @r420_pipes_init._entry.3, ptr @r420_pipes_init._entry.5, ptr @r420_pipes_init._entry.7, ptr @r420_pipes_init._entry_ptr, ptr @r420_pipes_init._entry_ptr.4, ptr @r420_pipes_init._entry_ptr.6, ptr @r420_pipes_init._entry_ptr.9, ptr @r420_resume._entry, ptr @r420_resume._entry_ptr, ptr @r420_startup._entry, ptr @r420_startup._entry.22, ptr @r420_startup._entry.25, ptr @r420_startup._entry_ptr, ptr @r420_startup._entry_ptr.24, ptr @r420_startup._entry_ptr.27, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @r420_debugfs_pipes_info_fops, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @r420_reg_safe_bm, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r420_pipes_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r420_pipes_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r420_pipes_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r420_pipes_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r420_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r420_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r420_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r420_debugfs_pipes_info_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r420_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r420_startup._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r420_startup._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r420_reg_safe_bm to i32), i32 636, i32 768, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @r420_pm_init_profile(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %default_power_state_index = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 24
  %0 = ptrtoint ptr %default_power_state_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %default_power_state_index, align 4
  %profiles = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 43
  %2 = ptrtoint ptr %profiles to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %profiles, align 4
  %dpms_on_ps_idx = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 43, i32 0, i32 1
  %3 = ptrtoint ptr %dpms_on_ps_idx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %1, ptr %dpms_on_ps_idx, align 4
  %dpms_off_cm_idx = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 43, i32 0, i32 2
  %dpms_on_ps_idx36 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 43, i32 2, i32 1
  %4 = call ptr @memset(ptr %dpms_off_cm_idx, i32 0, i32 28)
  %5 = ptrtoint ptr %dpms_on_ps_idx36 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %dpms_on_ps_idx36, align 4
  %dpms_off_cm_idx40 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 43, i32 2, i32 2
  %6 = ptrtoint ptr %dpms_off_cm_idx40 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %dpms_off_cm_idx40, align 4
  %dpms_on_cm_idx44 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 43, i32 2, i32 3
  %7 = ptrtoint ptr %dpms_on_cm_idx44 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %dpms_on_cm_idx44, align 4
  %arrayidx47 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 43, i32 3
  %8 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %arrayidx47, align 4
  %dpms_on_ps_idx54 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 43, i32 3, i32 1
  %9 = ptrtoint ptr %dpms_on_ps_idx54 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %1, ptr %dpms_on_ps_idx54, align 4
  %dpms_off_cm_idx58 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 43, i32 3, i32 2
  %10 = ptrtoint ptr %dpms_off_cm_idx58 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %dpms_off_cm_idx58, align 4
  %dpms_on_cm_idx62 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 43, i32 3, i32 3
  %11 = ptrtoint ptr %dpms_on_cm_idx62 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %dpms_on_cm_idx62, align 4
  %arrayidx65 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 43, i32 4
  %12 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %arrayidx65, align 4
  %dpms_on_ps_idx72 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 43, i32 4, i32 1
  %13 = ptrtoint ptr %dpms_on_ps_idx72 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %1, ptr %dpms_on_ps_idx72, align 4
  %dpms_off_cm_idx76 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 43, i32 4, i32 2
  %14 = ptrtoint ptr %dpms_off_cm_idx76 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %dpms_off_cm_idx76, align 4
  %dpms_on_cm_idx80 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 43, i32 4, i32 3
  %15 = ptrtoint ptr %dpms_on_cm_idx80 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %dpms_on_cm_idx80, align 4
  %arrayidx83 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 43, i32 5
  %16 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %arrayidx83, align 4
  %dpms_on_ps_idx90 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 43, i32 5, i32 1
  %17 = ptrtoint ptr %dpms_on_ps_idx90 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %1, ptr %dpms_on_ps_idx90, align 4
  %dpms_off_cm_idx94 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 43, i32 5, i32 2
  %18 = ptrtoint ptr %dpms_off_cm_idx94 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %dpms_off_cm_idx94, align 4
  %dpms_on_cm_idx98 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 43, i32 5, i32 3
  %19 = ptrtoint ptr %dpms_on_cm_idx98 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %dpms_on_cm_idx98, align 4
  %arrayidx101 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 43, i32 6
  %20 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %arrayidx101, align 4
  %dpms_on_ps_idx108 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 43, i32 6, i32 1
  %21 = ptrtoint ptr %dpms_on_ps_idx108 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %1, ptr %dpms_on_ps_idx108, align 4
  %dpms_off_cm_idx112 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 43, i32 6, i32 2
  %22 = ptrtoint ptr %dpms_off_cm_idx112 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %dpms_off_cm_idx112, align 4
  %dpms_on_cm_idx116 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 43, i32 6, i32 3
  %23 = ptrtoint ptr %dpms_on_cm_idx116 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %dpms_on_cm_idx116, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r420_pipes_init(ptr noundef %rdev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 17012
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 251658240) #5, !srcloc !69
  %call = tail call i32 @r100_gui_wait_for_idle(ptr noundef %rdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i84 = getelementptr i8, ptr %3, i32 16428
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i84) #5, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  %pdev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 2
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %device = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %device, align 2
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i16 %8, label %if.end11 [
    i16 24140, label %if.end.if.end11.thread_crit_edge
    i16 24143, label %if.end.if.end11.thread_crit_edge102
  ]

if.end.if.end11.thread_crit_edge102:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11.thread

if.end.if.end11.thread_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11.thread

if.end11.thread:                                  ; preds = %if.end.if.end11.thread_crit_edge, %if.end.if.end11.thread_crit_edge102
  %num_gb_pipes100 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 10
  %10 = ptrtoint ptr %num_gb_pipes100 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %num_gb_pipes100, align 4
  br label %sw.epilog

if.end11:                                         ; preds = %if.end
  %11 = lshr i32 %4, 20
  %and = and i32 %11, 3
  %add = add nuw nsw i32 %and, 1
  %num_gb_pipes = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 10
  %12 = ptrtoint ptr %num_gb_pipes to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add, ptr %num_gb_pipes, align 4
  %13 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %and, label %if.end11.sw.epilog_crit_edge [
    i32 3, label %sw.bb14
    i32 1, label %sw.bb12
    i32 2, label %sw.bb13
  ]

if.end11.sw.epilog_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb14, %sw.bb13, %sw.bb12, %if.end11.sw.epilog_crit_edge, %if.end11.thread
  %num_gb_pipes101 = phi ptr [ %num_gb_pipes, %sw.bb14 ], [ %num_gb_pipes, %sw.bb13 ], [ %num_gb_pipes, %sw.bb12 ], [ %num_gb_pipes, %if.end11.sw.epilog_crit_edge ], [ %num_gb_pipes100, %if.end11.thread ]
  %num_pipes.2 = phi i32 [ 4, %sw.bb14 ], [ 3, %sw.bb13 ], [ 2, %sw.bb12 ], [ 1, %if.end11.sw.epilog_crit_edge ], [ 1, %if.end11.thread ]
  %tmp.0 = phi i32 [ 520093696, %sw.bb14 ], [ 486539264, %sw.bb13 ], [ 385875968, %sw.bb12 ], [ 285212672, %if.end11.sw.epilog_crit_edge ], [ 285212672, %if.end11.thread ]
  %notmask = shl nsw i32 -1, %num_pipes.2
  %sub = xor i32 %notmask, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %14 = shl nuw nsw i32 %sub, 24
  %15 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i86 = getelementptr i8, ptr %16, i32 17096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86, i32 %14) #5, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %17 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i88 = getelementptr i8, ptr %18, i32 16408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88, i32 %tmp.0) #5, !srcloc !69
  %call15 = tail call i32 @r100_gui_wait_for_idle(ptr noundef %rdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %sw.epilog.if.end23_crit_edge, label %do.end20

sw.epilog.if.end23_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

do.end20:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %if.end23

if.end23:                                         ; preds = %do.end20, %sw.epilog.if.end23_crit_edge
  %19 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i90 = getelementptr i8, ptr %20, i32 5900
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i90) #5, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  %22 = or i32 %21, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %23 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i92 = getelementptr i8, ptr %24, i32 5900
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92, i32 %22) #5, !srcloc !69
  %25 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i94 = getelementptr i8, ptr %26, i32 13352
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i94) #5, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  %28 = or i32 %27, 66048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %29 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i96 = getelementptr i8, ptr %30, i32 13352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i96, i32 %28) #5, !srcloc !69
  %call29 = tail call i32 @r100_gui_wait_for_idle(ptr noundef %rdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end23.if.end37_crit_edge, label %do.end34

if.end23.if.end37_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

do.end34:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %if.end37

if.end37:                                         ; preds = %do.end34, %if.end23.if.end37_crit_edge
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %31 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %32)
  %cmp38 = icmp eq i32 %32, 23
  br i1 %cmp38, label %if.then40, label %if.else48

if.then40:                                        ; preds = %if.end37
  %33 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i98 = getelementptr i8, ptr %34, i32 16676
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i98) #5, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  %36 = and i32 %35, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %36)
  %cmp43 = icmp eq i32 %36, 50331648
  %num_z_pipes = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 11
  br i1 %cmp43, label %if.then45, label %if.else

if.then45:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %num_z_pipes to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2, ptr %num_z_pipes, align 8
  br label %do.end53

if.else:                                          ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %num_z_pipes to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %num_z_pipes, align 8
  br label %do.end53

if.else48:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  %num_z_pipes49 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 11
  %39 = ptrtoint ptr %num_z_pipes49 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %num_z_pipes49, align 8
  br label %do.end53

do.end53:                                         ; preds = %if.else48, %if.else, %if.then45
  %40 = ptrtoint ptr %num_gb_pipes101 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_gb_pipes101, align 4
  %num_z_pipes56 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 11
  %42 = ptrtoint ptr %num_z_pipes56 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_z_pipes56, align 8
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %41, i32 noundef %43) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_gui_wait_for_idle(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r420_mc_rreg(ptr noundef %rdev, i32 noundef %reg) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mc_idx_lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 22
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mc_idx_lock) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %and = shl i32 %reg, 24
  %0 = and i32 %and, 2130706432
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %1 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #5, !srcloc !69
  %3 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %4, i32 508
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11) #5, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mc_idx_lock, i32 noundef %call2) #5
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r420_mc_wreg(ptr noundef %rdev, i32 noundef %reg, i32 noundef %v) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mc_idx_lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 22
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mc_idx_lock) #5
  %and = and i32 %reg, 127
  %or = or i32 %and, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %0 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %1 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #5, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %3 = tail call i32 @llvm.bswap.i32(i32 %v) #5
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %5, i32 508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 %3) #5, !srcloc !69
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mc_idx_lock, i32 noundef %call2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r420_resume(ptr noundef %rdev) local_unnamed_addr #1 align 64 {
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
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and2 = and i32 %3, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_pci_gart_disable(ptr noundef %rdev) #5
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_dynclks to i32))
  %4 = load i32, ptr @radeon_dynclks, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %4, label %if.then.i [
    i32 -1, label %if.end5.r420_clock_resume.exit_crit_edge
    i32 0, label %if.end5.r420_clock_resume.exit_crit_edge49
  ]

if.end5.r420_clock_resume.exit_crit_edge49:       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %r420_clock_resume.exit

if.end5.r420_clock_resume.exit_crit_edge:         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %r420_clock_resume.exit

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @radeon_atom_set_clock_gating(ptr noundef %rdev, i32 noundef 1) #5
  br label %r420_clock_resume.exit

r420_clock_resume.exit:                           ; preds = %if.then.i, %if.end5.r420_clock_resume.exit_crit_edge, %if.end5.r420_clock_resume.exit_crit_edge49
  %pll_rreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 34
  %6 = ptrtoint ptr %pll_rreg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pll_rreg.i, align 8
  %call.i = tail call i32 %7(ptr noundef %rdev, i32 noundef 13) #5
  %family.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %8 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %9)
  %cmp1.i = icmp eq i32 %9, 13
  %spec.select.v.i = select i1 %cmp1.i, i32 209780736, i32 8454144
  %spec.select.i = or i32 %spec.select.v.i, %call.i
  %pll_wreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 35
  %10 = ptrtoint ptr %pll_wreg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pll_wreg.i, align 4
  tail call void %11(ptr noundef %rdev, i32 noundef 13, i32 noundef %spec.select.i) #5
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %12 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %asic, align 8
  %asic_reset = getelementptr inbounds %struct.radeon_asic, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %asic_reset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %asic_reset, align 4
  %call = tail call i32 %15(ptr noundef %rdev, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %r420_clock_resume.exit.if.end10_crit_edge, label %do.end

r420_clock_resume.exit.if.end10_crit_edge:        ; preds = %r420_clock_resume.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

do.end:                                           ; preds = %r420_clock_resume.exit
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rdev, align 8
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %18 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 3648
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #5
  %22 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i39 = getelementptr i8, ptr %23, i32 1984
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39) #5, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.10, i32 noundef %21, i32 noundef %25) #8
  br label %if.end10

if.end10:                                         ; preds = %do.end, %r420_clock_resume.exit.if.end10_crit_edge
  %is_atom_bios = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 14
  %26 = ptrtoint ptr %is_atom_bios to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %is_atom_bios, align 4, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool11.not = icmp eq i8 %27, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  %28 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mode_info, align 4
  %call13 = tail call i32 @atom_asic_init(ptr noundef %29) #5
  br label %if.end14

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %ddev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %30 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ddev, align 4
  tail call void @radeon_combios_asic_init(ptr noundef %31) #5
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_dynclks to i32))
  %32 = load i32, ptr @radeon_dynclks, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %32, label %if.then.i40 [
    i32 -1, label %if.end14.r420_clock_resume.exit48_crit_edge
    i32 0, label %if.end14.r420_clock_resume.exit48_crit_edge50
  ]

if.end14.r420_clock_resume.exit48_crit_edge50:    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %r420_clock_resume.exit48

if.end14.r420_clock_resume.exit48_crit_edge:      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %r420_clock_resume.exit48

if.then.i40:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @radeon_atom_set_clock_gating(ptr noundef %rdev, i32 noundef 1) #5
  br label %r420_clock_resume.exit48

r420_clock_resume.exit48:                         ; preds = %if.then.i40, %if.end14.r420_clock_resume.exit48_crit_edge, %if.end14.r420_clock_resume.exit48_crit_edge50
  %34 = ptrtoint ptr %pll_rreg.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pll_rreg.i, align 8
  %call.i42 = tail call i32 %35(ptr noundef %rdev, i32 noundef 13) #5
  %36 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %37)
  %cmp1.i44 = icmp eq i32 %37, 13
  %spec.select.v.i45 = select i1 %cmp1.i44, i32 209780736, i32 8454144
  %spec.select.i46 = or i32 %spec.select.v.i45, %call.i42
  %38 = ptrtoint ptr %pll_wreg.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pll_wreg.i, align 4
  tail call void %39(ptr noundef %rdev, i32 noundef 13, i32 noundef %spec.select.i46) #5
  tail call void @radeon_surface_init(ptr noundef %rdev) #5
  %accel_working = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 66
  %40 = ptrtoint ptr %accel_working to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %accel_working, align 2
  %call15 = tail call fastcc i32 @r420_startup(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %r420_clock_resume.exit48.if.end19_crit_edge, label %if.then17

r420_clock_resume.exit48.if.end19_crit_edge:      ; preds = %r420_clock_resume.exit48
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then17:                                        ; preds = %r420_clock_resume.exit48
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %accel_working to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %accel_working, align 2
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %r420_clock_resume.exit48.if.end19_crit_edge
  ret i32 %call15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv370_pcie_gart_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_pci_gart_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atom_asic_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_combios_asic_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_surface_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @r420_startup(ptr noundef %rdev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @r100_set_common_regs(ptr noundef %rdev) #5
  tail call void @r300_mc_program(ptr noundef %rdev) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_dynclks to i32))
  %0 = load i32, ptr @radeon_dynclks, align 4
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %0, label %if.then.i [
    i32 -1, label %entry.r420_clock_resume.exit_crit_edge
    i32 0, label %entry.r420_clock_resume.exit_crit_edge83
  ]

entry.r420_clock_resume.exit_crit_edge83:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %r420_clock_resume.exit

entry.r420_clock_resume.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %r420_clock_resume.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @radeon_atom_set_clock_gating(ptr noundef %rdev, i32 noundef 1) #5
  br label %r420_clock_resume.exit

r420_clock_resume.exit:                           ; preds = %if.then.i, %entry.r420_clock_resume.exit_crit_edge, %entry.r420_clock_resume.exit_crit_edge83
  %pll_rreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 34
  %2 = ptrtoint ptr %pll_rreg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pll_rreg.i, align 8
  %call.i = tail call i32 %3(ptr noundef %rdev, i32 noundef 13) #5
  %family.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %4 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %5)
  %cmp1.i = icmp eq i32 %5, 13
  %spec.select.v.i = select i1 %cmp1.i, i32 209780736, i32 8454144
  %spec.select.i = or i32 %spec.select.v.i, %call.i
  %pll_wreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 35
  %6 = ptrtoint ptr %pll_wreg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pll_wreg.i, align 4
  tail call void %7(ptr noundef %rdev, i32 noundef 13, i32 noundef %spec.select.i) #5
  %flags = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 8
  %and = and i32 %9, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %r420_clock_resume.exit.if.end3_crit_edge, label %if.then

r420_clock_resume.exit.if.end3_crit_edge:         ; preds = %r420_clock_resume.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then:                                          ; preds = %r420_clock_resume.exit
  %call = tail call i32 @rv370_pcie_gart_enable(ptr noundef %rdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end3_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %r420_clock_resume.exit.if.end3_crit_edge
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 8
  %and5 = and i32 %11, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end3.if.end12_crit_edge, label %if.then7

if.end3.if.end12_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then7:                                         ; preds = %if.end3
  %call8 = tail call i32 @r100_pci_gart_enable(ptr noundef %rdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then7.if.end12_crit_edge, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.end12:                                         ; preds = %if.then7.if.end12_crit_edge, %if.end3.if.end12_crit_edge
  tail call void @r420_pipes_init(ptr noundef %rdev)
  %call13 = tail call i32 @radeon_wb_init(ptr noundef %rdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %call17 = tail call i32 @radeon_fence_driver_start_ring(ptr noundef %rdev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %do.end

do.end:                                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.20, i32 noundef %call17) #8
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %irq = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %irq, align 8, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool21.not = icmp eq i8 %15, 0
  br i1 %tobool21.not, label %if.then22, label %if.end20.if.end27_crit_edge

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.then22:                                        ; preds = %if.end20
  %call23 = tail call i32 @radeon_irq_kms_init(ptr noundef %rdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then22.if.end27_crit_edge, label %if.then22.cleanup_crit_edge

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then22.if.end27_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.end27:                                         ; preds = %if.then22.if.end27_crit_edge, %if.end20.if.end27_crit_edge
  %call28 = tail call i32 @r100_irq_set(ptr noundef %rdev) #5
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %16 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 304
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #5
  %hdp_cntl = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 3
  %20 = ptrtoint ptr %hdp_cntl to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %hdp_cntl, align 4
  %call30 = tail call i32 @r100_cp_init(ptr noundef %rdev, i32 noundef 1048576) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end37, label %do.end35

do.end35:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.23, i32 noundef %call30) #8
  br label %cleanup

if.end37:                                         ; preds = %if.end27
  %ring1.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 52
  %resync_scratch.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 2
  %call.i82 = tail call i32 @radeon_scratch_get(ptr noundef %rdev, ptr noundef %resync_scratch.i) #5
  %call2.i = tail call i32 @radeon_ring_lock(ptr noundef %rdev, ptr noundef %ring1.i, i32 noundef 8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end37.if.end.i_crit_edge, label %do.end.i, !prof !73

if.end37.if.end.i_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

do.end.i:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 219, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end37.if.end.i_crit_edge
  %count_dw.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 0, i32 11
  %23 = ptrtoint ptr %count_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %count_dw.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp.i.i = icmp slt i32 %24, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.radeon_ring_write.exit.i_crit_edge

if.end.i.radeon_ring_write.exit.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.28) #5
  br label %radeon_ring_write.exit.i

radeon_ring_write.exit.i:                         ; preds = %if.then.i.i, %if.end.i.radeon_ring_write.exit.i_crit_edge
  %ring1.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 0, i32 2
  %25 = ptrtoint ptr %ring1.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ring1.i.i, align 8
  %wptr.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 0, i32 7
  %27 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %wptr.i.i, align 4
  %inc.i.i = add i32 %28, 1
  store i32 %inc.i.i, ptr %wptr.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %26, i32 %28
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile i32 66014, ptr %arrayidx.i.i, align 4
  %ptr_mask.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 0, i32 16
  %30 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ptr_mask.i.i, align 4
  %32 = load i32, ptr %wptr.i.i, align 4
  %and.i.i = and i32 %32, %31
  store i32 %and.i.i, ptr %wptr.i.i, align 4
  %33 = ptrtoint ptr %count_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %count_dw.i.i, align 4
  %dec.i.i = add i32 %34, -1
  store i32 %dec.i.i, ptr %count_dw.i.i, align 4
  %ring_free_dw.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 0, i32 10
  %35 = ptrtoint ptr %ring_free_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ring_free_dw.i.i, align 8
  %dec4.i.i = add i32 %36, -1
  store i32 %dec4.i.i, ptr %ring_free_dw.i.i, align 8
  %37 = ptrtoint ptr %resync_scratch.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %resync_scratch.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i.i)
  %cmp.i35.i = icmp slt i32 %dec.i.i, 1
  br i1 %cmp.i35.i, label %if.then.i36.i, label %radeon_ring_write.exit.i.radeon_ring_write.exit46.i_crit_edge

radeon_ring_write.exit.i.radeon_ring_write.exit46.i_crit_edge: ; preds = %radeon_ring_write.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit46.i

if.then.i36.i:                                    ; preds = %radeon_ring_write.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.28) #5
  br label %radeon_ring_write.exit46.i

radeon_ring_write.exit46.i:                       ; preds = %if.then.i36.i, %radeon_ring_write.exit.i.radeon_ring_write.exit46.i_crit_edge
  %39 = ptrtoint ptr %ring1.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ring1.i.i, align 8
  %41 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %wptr.i.i, align 4
  %inc.i39.i = add i32 %42, 1
  store i32 %inc.i39.i, ptr %wptr.i.i, align 4
  %arrayidx.i40.i = getelementptr i32, ptr %40, i32 %42
  %43 = ptrtoint ptr %arrayidx.i40.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile i32 %38, ptr %arrayidx.i40.i, align 4
  %44 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ptr_mask.i.i, align 4
  %46 = load i32, ptr %wptr.i.i, align 4
  %and.i42.i = and i32 %46, %45
  store i32 %and.i42.i, ptr %wptr.i.i, align 4
  %47 = ptrtoint ptr %count_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %count_dw.i.i, align 4
  %dec.i43.i = add i32 %48, -1
  store i32 %dec.i43.i, ptr %count_dw.i.i, align 4
  %49 = ptrtoint ptr %ring_free_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ring_free_dw.i.i, align 8
  %dec4.i45.i = add i32 %50, -1
  store i32 %dec4.i45.i, ptr %ring_free_dw.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i43.i)
  %cmp.i48.i = icmp slt i32 %dec.i43.i, 1
  br i1 %cmp.i48.i, label %if.then.i49.i, label %radeon_ring_write.exit46.i.r420_cp_errata_init.exit_crit_edge

radeon_ring_write.exit46.i.r420_cp_errata_init.exit_crit_edge: ; preds = %radeon_ring_write.exit46.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %r420_cp_errata_init.exit

if.then.i49.i:                                    ; preds = %radeon_ring_write.exit46.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.28) #5
  br label %r420_cp_errata_init.exit

r420_cp_errata_init.exit:                         ; preds = %if.then.i49.i, %radeon_ring_write.exit46.i.r420_cp_errata_init.exit_crit_edge
  %51 = ptrtoint ptr %ring1.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ring1.i.i, align 8
  %53 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %wptr.i.i, align 4
  %inc.i52.i = add i32 %54, 1
  store i32 %inc.i52.i, ptr %wptr.i.i, align 4
  %arrayidx.i53.i = getelementptr i32, ptr %52, i32 %54
  %55 = ptrtoint ptr %arrayidx.i53.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile i32 -559038737, ptr %arrayidx.i53.i, align 4
  %56 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ptr_mask.i.i, align 4
  %58 = load i32, ptr %wptr.i.i, align 4
  %and.i55.i = and i32 %58, %57
  store i32 %and.i55.i, ptr %wptr.i.i, align 4
  %59 = ptrtoint ptr %count_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %count_dw.i.i, align 4
  %dec.i56.i = add i32 %60, -1
  store i32 %dec.i56.i, ptr %count_dw.i.i, align 4
  %61 = ptrtoint ptr %ring_free_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ring_free_dw.i.i, align 8
  %dec4.i58.i = add i32 %62, -1
  store i32 %dec4.i58.i, ptr %ring_free_dw.i.i, align 8
  tail call void @radeon_ring_unlock_commit(ptr noundef %rdev, ptr noundef %ring1.i, i1 noundef zeroext false) #5
  %call38 = tail call i32 @radeon_ib_pool_init(ptr noundef %rdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %r420_cp_errata_init.exit.cleanup_crit_edge, label %do.end43

r420_cp_errata_init.exit.cleanup_crit_edge:       ; preds = %r420_cp_errata_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end43:                                         ; preds = %r420_cp_errata_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  %63 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.26, i32 noundef %call38) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end43, %r420_cp_errata_init.exit.cleanup_crit_edge, %do.end35, %if.then22.cleanup_crit_edge, %do.end, %if.end12.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %do.end ], [ %call30, %do.end35 ], [ %call38, %do.end43 ], [ %call, %if.then.cleanup_crit_edge ], [ %call8, %if.then7.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ %call23, %if.then22.cleanup_crit_edge ], [ 0, %r420_cp_errata_init.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r420_suspend(ptr noundef %rdev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @radeon_pm_suspend(ptr noundef %rdev) #5
  %ring1.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 52
  %call.i = tail call i32 @radeon_ring_lock(ptr noundef %rdev, ptr noundef %ring1.i, i32 noundef 8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %do.end.i, !prof !73

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 235, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %count_dw.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 0, i32 11
  %0 = ptrtoint ptr %count_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count_dw.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i.i = icmp slt i32 %1, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.radeon_ring_write.exit.i_crit_edge

if.end.i.radeon_ring_write.exit.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.28) #5
  br label %radeon_ring_write.exit.i

radeon_ring_write.exit.i:                         ; preds = %if.then.i.i, %if.end.i.radeon_ring_write.exit.i_crit_edge
  %ring1.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 0, i32 2
  %2 = ptrtoint ptr %ring1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring1.i.i, align 8
  %wptr.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 0, i32 7
  %4 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wptr.i.i, align 4
  %inc.i.i = add i32 %5, 1
  store i32 %inc.i.i, ptr %wptr.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 5011, ptr %arrayidx.i.i, align 4
  %ptr_mask.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 0, i32 16
  %7 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ptr_mask.i.i, align 4
  %9 = load i32, ptr %wptr.i.i, align 4
  %and.i.i = and i32 %9, %8
  store i32 %and.i.i, ptr %wptr.i.i, align 4
  %10 = ptrtoint ptr %count_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count_dw.i.i, align 4
  %dec.i.i = add i32 %11, -1
  store i32 %dec.i.i, ptr %count_dw.i.i, align 4
  %ring_free_dw.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 0, i32 10
  %12 = ptrtoint ptr %ring_free_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ring_free_dw.i.i, align 8
  %dec4.i.i = add i32 %13, -1
  store i32 %dec4.i.i, ptr %ring_free_dw.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i.i)
  %cmp.i30.i = icmp slt i32 %dec.i.i, 1
  br i1 %cmp.i30.i, label %if.then.i31.i, label %radeon_ring_write.exit.i.r420_cp_errata_fini.exit_crit_edge

radeon_ring_write.exit.i.r420_cp_errata_fini.exit_crit_edge: ; preds = %radeon_ring_write.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %r420_cp_errata_fini.exit

if.then.i31.i:                                    ; preds = %radeon_ring_write.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.28) #5
  br label %r420_cp_errata_fini.exit

r420_cp_errata_fini.exit:                         ; preds = %if.then.i31.i, %radeon_ring_write.exit.i.r420_cp_errata_fini.exit_crit_edge
  %14 = ptrtoint ptr %ring1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ring1.i.i, align 8
  %16 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wptr.i.i, align 4
  %inc.i34.i = add i32 %17, 1
  store i32 %inc.i34.i, ptr %wptr.i.i, align 4
  %arrayidx.i35.i = getelementptr i32, ptr %15, i32 %17
  %18 = ptrtoint ptr %arrayidx.i35.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 16, ptr %arrayidx.i35.i, align 4
  %19 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ptr_mask.i.i, align 4
  %21 = load i32, ptr %wptr.i.i, align 4
  %and.i37.i = and i32 %21, %20
  store i32 %and.i37.i, ptr %wptr.i.i, align 4
  %22 = ptrtoint ptr %count_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %count_dw.i.i, align 4
  %dec.i38.i = add i32 %23, -1
  store i32 %dec.i38.i, ptr %count_dw.i.i, align 4
  %24 = ptrtoint ptr %ring_free_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ring_free_dw.i.i, align 8
  %dec4.i40.i = add i32 %25, -1
  store i32 %dec4.i40.i, ptr %ring_free_dw.i.i, align 8
  tail call void @radeon_ring_unlock_commit(ptr noundef %rdev, ptr noundef %ring1.i, i1 noundef zeroext false) #5
  %resync_scratch.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 2
  %26 = ptrtoint ptr %resync_scratch.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %resync_scratch.i, align 8
  tail call void @radeon_scratch_free(ptr noundef %rdev, i32 noundef %27) #5
  tail call void @r100_cp_disable(ptr noundef %rdev) #5
  tail call void @radeon_wb_disable(ptr noundef %rdev) #5
  tail call void @r100_irq_disable(ptr noundef %rdev) #5
  %flags = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags, align 8
  %and = and i32 %29, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %r420_cp_errata_fini.exit.if.end_crit_edge, label %if.then

r420_cp_errata_fini.exit.if.end_crit_edge:        ; preds = %r420_cp_errata_fini.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %r420_cp_errata_fini.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rv370_pcie_gart_disable(ptr noundef %rdev) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %r420_cp_errata_fini.exit.if.end_crit_edge
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags, align 8
  %and2 = and i32 %31, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_pci_gart_disable(ptr noundef %rdev) #5
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_pm_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_cp_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_wb_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_irq_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r420_fini(ptr noundef %rdev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @radeon_pm_fini(ptr noundef %rdev) #5
  tail call void @r100_cp_fini(ptr noundef %rdev) #5
  tail call void @radeon_wb_fini(ptr noundef %rdev) #5
  tail call void @radeon_ib_pool_fini(ptr noundef %rdev) #5
  tail call void @radeon_gem_fini(ptr noundef %rdev) #5
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
  tail call void @rv370_pcie_gart_fini(ptr noundef %rdev) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and2 = and i32 %3, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_pci_gart_fini(ptr noundef %rdev) #5
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  tail call void @radeon_agp_fini(ptr noundef %rdev) #5
  tail call void @radeon_irq_kms_fini(ptr noundef %rdev) #5
  tail call void @radeon_fence_driver_fini(ptr noundef %rdev) #5
  tail call void @radeon_bo_fini(ptr noundef %rdev) #5
  %is_atom_bios = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 14
  %4 = ptrtoint ptr %is_atom_bios to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_atom_bios, align 4, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool6.not = icmp eq i8 %5, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @radeon_atombios_fini(ptr noundef %rdev) #5
  br label %if.end8

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @radeon_combios_fini(ptr noundef %rdev) #5
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then7
  %bios = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 13
  %6 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bios, align 8
  tail call void @kfree(ptr noundef %7) #5
  %8 = ptrtoint ptr %bios to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %bios, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_pm_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_cp_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_wb_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ib_pool_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_gem_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv370_pcie_gart_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_pci_gart_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_agp_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_irq_kms_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_fence_driver_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_bo_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_atombios_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_combios_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r420_init(ptr noundef %rdev) local_unnamed_addr #1 align 64 {
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
  %3 = load i8, ptr %is_atom_bios, align 4, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end2
  %call4 = tail call i32 @radeon_atombios_init(ptr noundef %rdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then3.if.end12_crit_edge, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3.if.end12_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.else:                                          ; preds = %if.end2
  %call8 = tail call i32 @radeon_combios_init(ptr noundef %rdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.else.if.end12_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.end12:                                         ; preds = %if.else.if.end12_crit_edge, %if.then3.if.end12_crit_edge
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %4 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %asic, align 8
  %asic_reset = getelementptr inbounds %struct.radeon_asic, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %asic_reset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %asic_reset, align 4
  %call13 = tail call i32 %7(ptr noundef %rdev, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end12.if.end18_crit_edge, label %do.end

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rdev, align 8
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %10 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 3648
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #5
  %14 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i132 = getelementptr i8, ptr %15, i32 1984
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i132) #5, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.10, i32 noundef %13, i32 noundef %17) #8
  br label %if.end18

if.end18:                                         ; preds = %do.end, %if.end12.if.end18_crit_edge
  %call19 = tail call zeroext i1 @radeon_boot_test_post_card(ptr noundef %rdev) #5
  br i1 %call19, label %if.end23, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %ddev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %18 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ddev, align 4
  tail call void @radeon_get_clock_info(ptr noundef %19) #5
  %flags = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 8
  %and = and i32 %21, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %if.end23.if.end30_crit_edge, label %if.then25

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then25:                                        ; preds = %if.end23
  %call26 = tail call i32 @radeon_agp_init(ptr noundef %rdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then25.if.end30_crit_edge, label %if.then28

if.then25.if.end30_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then28:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @radeon_agp_disable(ptr noundef %rdev) #5
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.then25.if.end30_crit_edge, %if.end23.if.end30_crit_edge
  tail call void @r300_mc_init(ptr noundef %rdev) #5
  tail call void @r100_debugfs_rbbm_init(ptr noundef %rdev) #5
  %22 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ddev, align 4
  %primary.i.i = getelementptr inbounds %struct.drm_device, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %primary.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %primary.i.i, align 4
  %debugfs_root.i.i = getelementptr inbounds %struct.drm_minor, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %debugfs_root.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %debugfs_root.i.i, align 4
  %call.i.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.19, i16 noundef zeroext 292, ptr noundef %27, ptr noundef %rdev, ptr noundef nonnull @r420_debugfs_pipes_info_fops) #5
  tail call void @radeon_fence_driver_init(ptr noundef %rdev) #5
  %call31 = tail call i32 @radeon_bo_init(ptr noundef %rdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  %family35 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %28 = ptrtoint ptr %family35 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %family35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %29)
  %cmp36 = icmp eq i32 %29, 13
  br i1 %cmp36, label %if.then38, label %if.end34.if.end39_crit_edge

if.end34.if.end39_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_enable_bm(ptr noundef %rdev) #5
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end34.if.end39_crit_edge
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags, align 8
  %and41 = and i32 %31, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end39.if.end48_crit_edge, label %if.then43

if.end39.if.end48_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

if.then43:                                        ; preds = %if.end39
  %call44 = tail call i32 @rv370_pcie_gart_init(ptr noundef %rdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then43.if.end48_crit_edge, label %if.then43.cleanup_crit_edge

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then43.if.end48_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

if.end48:                                         ; preds = %if.then43.if.end48_crit_edge, %if.end39.if.end48_crit_edge
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags, align 8
  %and50 = and i32 %33, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end48.if.end57_crit_edge, label %if.then52

if.end48.if.end57_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

if.then52:                                        ; preds = %if.end48
  %call53 = tail call i32 @r100_pci_gart_init(ptr noundef %rdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.then52.if.end57_crit_edge, label %if.then52.cleanup_crit_edge

if.then52.cleanup_crit_edge:                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then52.if.end57_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

if.end57:                                         ; preds = %if.then52.if.end57_crit_edge, %if.end48.if.end57_crit_edge
  %config.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5
  %34 = ptrtoint ptr %config.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @r420_reg_safe_bm, ptr %config.i, align 8
  %reg_safe_bm_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 1
  %35 = ptrtoint ptr %reg_safe_bm_size.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 159, ptr %reg_safe_bm_size.i, align 4
  %call58 = tail call i32 @radeon_pm_init(ptr noundef %rdev) #5
  %accel_working = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 66
  %36 = ptrtoint ptr %accel_working to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %accel_working, align 2
  %call59 = tail call fastcc i32 @r420_startup(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end57.cleanup_crit_edge, label %do.end64

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end64:                                         ; preds = %if.end57
  %37 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.16) #8
  tail call void @r100_cp_fini(ptr noundef %rdev) #5
  tail call void @radeon_wb_fini(ptr noundef %rdev) #5
  tail call void @radeon_ib_pool_fini(ptr noundef %rdev) #5
  tail call void @radeon_irq_kms_fini(ptr noundef %rdev) #5
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags, align 8
  %and67 = and i32 %40, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %do.end64.if.end70_crit_edge, label %if.then69

do.end64.if.end70_crit_edge:                      ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70

if.then69:                                        ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rv370_pcie_gart_fini(ptr noundef %rdev) #5
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %do.end64.if.end70_crit_edge
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags, align 8
  %and72 = and i32 %42, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.end70.if.end75_crit_edge, label %if.then74

if.end70.if.end75_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end75

if.then74:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_pci_gart_fini(ptr noundef %rdev) #5
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %if.end70.if.end75_crit_edge
  tail call void @radeon_agp_fini(ptr noundef %rdev) #5
  %43 = ptrtoint ptr %accel_working to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %accel_working, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %if.end57.cleanup_crit_edge, %if.then52.cleanup_crit_edge, %if.then43.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ %call4, %if.then3.cleanup_crit_edge ], [ %call8, %if.else.cleanup_crit_edge ], [ -22, %if.end18.cleanup_crit_edge ], [ %call31, %if.end30.cleanup_crit_edge ], [ %call44, %if.then43.cleanup_crit_edge ], [ %call53, %if.then52.cleanup_crit_edge ], [ 0, %if.end75 ], [ 0, %if.end57.cleanup_crit_edge ]
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_combios_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_boot_test_post_card(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_get_clock_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_agp_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_agp_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r300_mc_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_fence_driver_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_bo_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_enable_bm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv370_pcie_gart_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_pci_gart_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_pm_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r420_debugfs_pipes_info_init(ptr noundef %rdev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ddev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %0 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddev, align 4
  %primary = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %primary, align 4
  %debugfs_root = getelementptr inbounds %struct.drm_minor, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debugfs_root, align 4
  %call = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.19, i16 noundef zeroext 292, ptr noundef %5, ptr noundef %rdev, ptr noundef nonnull @r420_debugfs_pipes_info_fops) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_atom_set_clock_gating(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_set_common_regs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r300_mc_program(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv370_pcie_gart_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_pci_gart_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_wb_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_fence_driver_start_ring(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_irq_kms_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_irq_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_cp_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_ib_pool_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_scratch_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_ring_lock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ring_unlock_commit(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_scratch_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_debugfs_rbbm_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r420_debugfs_pipes_info_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @r420_debugfs_pipes_info_show, ptr noundef %1) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r420_debugfs_pipes_info_show(ptr noundef %m, ptr nocapture noundef readnone %unused) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 16428
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.29, i32 noundef %5) #5
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %7, i32 16408
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11) #5, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #5
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.30, i32 noundef %9) #5
  %10 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %11, i32 5900
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13) #5, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #5
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.31, i32 noundef %13) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !15, !16, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !32, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !51, !53, !55, !57}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/r420.c", i32 100, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @r420_pipes_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @r420_pipes_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @r420_pipes_init._entry.3, !7, !"_entry", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/radeon/r420.c", i32 136, i32 3}
!8 = !{ptr @r420_pipes_init._entry_ptr.4, !7, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @r420_pipes_init._entry.5, !10, !"_entry", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/radeon/r420.c", i32 148, i32 3}
!11 = !{ptr @r420_pipes_init._entry_ptr.6, !10, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/radeon/r420.c", i32 160, i32 2}
!14 = !{ptr @r420_pipes_init._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @r420_pipes_init._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/radeon/r420.c", i32 316, i32 3}
!18 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.13, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @r420_resume._entry, !17, !"_entry", i1 false, i1 false}
!22 = !{ptr @r420_resume._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/radeon/r420.c", i32 406, i32 3}
!25 = !{ptr @r420_init._entry, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @r420_init._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/radeon/r420.c", i32 456, i32 3}
!29 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @r420_init._entry.15, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @r420_init._entry_ptr.18, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/radeon/r420.c", i32 497, i32 22}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/radeon/r420.c", i32 273, i32 3}
!36 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @r420_startup._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @r420_startup._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/radeon/r420.c", i32 289, i32 3}
!41 = !{ptr @r420_startup._entry.22, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @r420_startup._entry_ptr.24, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.26, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/radeon/r420.c", i32 296, i32 3}
!45 = !{ptr @r420_startup._entry.25, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @r420_startup._entry_ptr.27, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.28, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/radeon/radeon.h", i32 2721, i32 3}
!49 = !{ptr @r420_reg_safe_bm, !50, !"r420_reg_safe_bm", i1 false, i1 false}
!50 = !{!"./drivers/gpu/drm/radeon/r420_reg_safe.h", i32 1, i32 23}
!51 = !{ptr @r420_debugfs_pipes_info_fops, !52, !"r420_debugfs_pipes_info_fops", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/radeon/r420.c", i32 489, i32 1}
!53 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/radeon/r420.c", i32 481, i32 16}
!55 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/radeon/r420.c", i32 483, i32 16}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/radeon/r420.c", i32 485, i32 16}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{i64 2158366312}
!69 = !{i64 4992014}
!70 = !{i64 4992432}
!71 = !{i64 2158365905}
!72 = !{i8 0, i8 2}
!73 = !{!"branch_weights", i32 2000, i32 1}
