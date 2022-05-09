; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/radeon_device.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/radeon_device.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.radeon_px_quirk = type { i32, i32, i32, i32, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.anon.88 = type { i32, ptr }
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
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.91] }
%struct.anon.91 = type { [12 x %struct.ttm_pool_type] }
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
%struct.radeon_asic = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.97, %struct.anon.98, [8 x ptr], %struct.anon.99, %struct.anon.100, %struct.anon.101, %struct.anon.102, %struct.anon.103, %struct.anon.104, %struct.anon.105, %struct.anon.106 }
%struct.anon.97 = type { ptr, ptr, ptr }
%struct.anon.98 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.99 = type { ptr, ptr }
%struct.anon.100 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.101 = type { ptr, i32, ptr, i32, ptr, i32 }
%struct.anon.102 = type { ptr, ptr }
%struct.anon.103 = type { ptr, ptr, ptr, ptr }
%struct.anon.104 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.105 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.106 = type { ptr, ptr }
%struct.radeon_bo = type { %struct.list_head, i32, [4 x %struct.ttm_place], %struct.ttm_placement, %struct.ttm_buffer_object, %struct.ttm_bo_kmap_obj, i32, ptr, i32, i32, i32, i32, %struct.list_head, ptr, i32, %struct.mmu_interval_notifier }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }
%struct.mmu_interval_notifier = type { %struct.interval_tree_node, ptr, ptr, %struct.hlist_node, i32 }
%struct.interval_tree_node = type { %struct.rb_node, i32, i32, i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.87 = type { ptr }
%struct.card_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atom_context = type { ptr, %struct.mutex, %struct.mutex, ptr, i32, i32, ptr, i16, i32, [2 x i32], i16, i16, i8, i32, i32, i32, ptr, i32 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }

@radeon_wb_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 467, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"(%d) create WB bo failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"radeon_wb_init\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/radeon/radeon_device.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@radeon_wb_init._entry_ptr = internal global ptr @radeon_wb_init._entry, section ".printk_index", align 4
@radeon_wb_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 479, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"(%d) pin WB bo failed\0A\00", [41 x i8] zeroinitializer }, align 32
@radeon_wb_init._entry_ptr.7 = internal global ptr @radeon_wb_init._entry.5, section ".printk_index", align 4
@radeon_wb_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 486, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"(%d) map WB bo failed\0A\00", [41 x i8] zeroinitializer }, align 32
@radeon_wb_init._entry_ptr.10 = internal global ptr @radeon_wb_init._entry.8, section ".printk_index", align 4
@radeon_no_wb = external dso_local local_unnamed_addr global i32, align 4
@radeon_wb_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 520, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"WB %sabled\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@radeon_wb_init._entry_ptr.14 = internal global ptr @radeon_wb_init._entry.11, section ".printk_index", align 4
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"en\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dis\00", [28 x i8] zeroinitializer }, align 32
@radeon_vram_limit = external dso_local local_unnamed_addr global i32, align 4
@radeon_vram_location._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 572, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"limiting VRAM to PCI aperture size\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"radeon_vram_location\00", [43 x i8] zeroinitializer }, align 32
@radeon_vram_location._entry_ptr = internal global ptr @radeon_vram_location._entry, section ".printk_index", align 4
@radeon_vram_location._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 578, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@radeon_vram_location._entry_ptr.20 = internal global ptr @radeon_vram_location._entry.19, section ".printk_index", align 4
@radeon_vram_location._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.18, ptr @.str.2, i32 587, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"VRAM: %lluM 0x%016llX - 0x%016llX (%lluM used)\0A\00", [48 x i8] zeroinitializer }, align 32
@radeon_vram_location._entry_ptr.23 = internal global ptr @radeon_vram_location._entry.21, section ".printk_index", align 4
@radeon_gtt_location._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 610, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"limiting GTT\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"radeon_gtt_location\00", [44 x i8] zeroinitializer }, align 32
@radeon_gtt_location._entry_ptr = internal global ptr @radeon_gtt_location._entry, section ".printk_index", align 4
@radeon_gtt_location._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 616, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@radeon_gtt_location._entry_ptr.27 = internal global ptr @radeon_gtt_location._entry.26, section ".printk_index", align 4
@radeon_gtt_location._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.25, ptr @.str.2, i32 623, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"GTT: %lluM 0x%016llX - 0x%016llX\0A\00", [62 x i8] zeroinitializer }, align 32
@radeon_gtt_location._entry_ptr.30 = internal global ptr @radeon_gtt_location._entry.28, section ".printk_index", align 4
@radeon_boot_test_post_card._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 758, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016[drm] GPU not posted. posting now...\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"radeon_boot_test_post_card\00", [37 x i8] zeroinitializer }, align 32
@radeon_boot_test_post_card._entry_ptr = internal global ptr @radeon_boot_test_post_card._entry, section ".printk_index", align 4
@radeon_boot_test_post_card._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.2, i32 765, ptr @.str.35, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Card not posted and no BIOS - ignoring\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@radeon_boot_test_post_card._entry_ptr.36 = internal global ptr @radeon_boot_test_post_card._entry.33, section ".printk_index", align 4
@radeon_dummy_page_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 790, ptr @.str.35, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to DMA MAP the dummy page\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"radeon_dummy_page_init\00", [41 x i8] zeroinitializer }, align 32
@radeon_dummy_page_init._entry_ptr = internal global ptr @radeon_dummy_page_init._entry, section ".printk_index", align 4
@.str.39 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Unable to find PCI I/O BAR; using MMIO for ATOM IIO\0A\00", [43 x i8] zeroinitializer }, align 32
@radeon_atombios_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"&rdev->mode_info.atom_context->mutex\00", [59 x i8] zeroinitializer }, align 32
@radeon_atombios_init.__key.41 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"&rdev->mode_info.atom_context->scratch_mutex\00", [51 x i8] zeroinitializer }, align 32
@radeon_device_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 1316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\016[drm] initializing kernel modesetting (%s 0x%04X:0x%04X 0x%04X:0x%04X 0x%02X).\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"radeon_device_init\00", [45 x i8] zeroinitializer }, align 32
@radeon_device_init._entry_ptr = internal global ptr @radeon_device_init._entry, section ".printk_index", align 4
@radeon_family_name = internal constant { [63 x [16 x i8]], [240 x i8] } { [63 x [16 x i8]] [[16 x i8] c"R100\00\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"RV100\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"RS100\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"RV200\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"RS200\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"R200\00\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"RV250\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"RS300\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"RV280\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"R300\00\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"R350\00\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"RV350\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"RV380\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"R420\00\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"R423\00\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"RV410\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"RS400\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"RS480\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"RS600\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"RS690\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"RS740\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"RV515\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"R520\00\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"RV530\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"RV560\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"RV570\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"R580\00\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"R600\00\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"RV610\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"RV630\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"RV670\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"RV620\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"RV635\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"RS780\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"RS880\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"RV770\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"RV730\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"RV710\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"RV740\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"CEDAR\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"REDWOOD\00\00\00\00\00\00\00\00\00", [16 x i8] c"JUNIPER\00\00\00\00\00\00\00\00\00", [16 x i8] c"CYPRESS\00\00\00\00\00\00\00\00\00", [16 x i8] c"HEMLOCK\00\00\00\00\00\00\00\00\00", [16 x i8] c"PALM\00\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"SUMO\00\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"SUMO2\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"BARTS\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"TURKS\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"CAICOS\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"CAYMAN\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"ARUBA\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"TAHITI\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"PITCAIRN\00\00\00\00\00\00\00\00", [16 x i8] c"VERDE\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"OLAND\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"HAINAN\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"BONAIRE\00\00\00\00\00\00\00\00\00", [16 x i8] c"KAVERI\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"KABINI\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"HAWAII\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"MULLINS\00\00\00\00\00\00\00\00\00", [16 x i8] c"LAST\00\00\00\00\00\00\00\00\00\00\00\00"], [240 x i8] zeroinitializer }, align 32
@radeon_device_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&rdev->ring_lock\00", [47 x i8] zeroinitializer }, align 32
@radeon_device_init.__key.46 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&rdev->dc_hw_i2c_mutex\00", [41 x i8] zeroinitializer }, align 32
@radeon_device_init.__key.48 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&rdev->gem.mutex\00", [47 x i8] zeroinitializer }, align 32
@radeon_device_init.__key.50 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&rdev->pm.mutex\00", [16 x i8] zeroinitializer }, align 32
@radeon_device_init.__key.52 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&rdev->gpu_clock_mutex\00", [41 x i8] zeroinitializer }, align 32
@radeon_device_init.__key.54 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&rdev->srbm_mutex\00", [46 x i8] zeroinitializer }, align 32
@radeon_device_init.__key.56 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&rdev->pm.mclk_lock\00", [44 x i8] zeroinitializer }, align 32
@radeon_device_init.__key.58 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&rdev->exclusive_lock\00", [42 x i8] zeroinitializer }, align 32
@radeon_device_init.__key.60 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&rdev->irq.vblank_queue\00", [40 x i8] zeroinitializer }, align 32
@radeon_vm_size = external dso_local local_unnamed_addr global i32, align 4
@radeon_agpmode = external dso_local local_unnamed_addr global i32, align 4
@radeon_device_init._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.44, ptr @.str.2, i32 1387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014radeon: No suitable DMA available\0A\00", [59 x i8] zeroinitializer }, align 32
@radeon_device_init._entry_ptr.64 = internal global ptr @radeon_device_init._entry.62, section ".printk_index", align 4
@radeon_device_init.__key.65 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&rdev->mmio_idx_lock\00", [43 x i8] zeroinitializer }, align 32
@radeon_device_init.__key.67 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&rdev->smc_idx_lock\00", [44 x i8] zeroinitializer }, align 32
@radeon_device_init.__key.69 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.70 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&rdev->pll_idx_lock\00", [44 x i8] zeroinitializer }, align 32
@radeon_device_init.__key.71 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.72 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&rdev->mc_idx_lock\00", [45 x i8] zeroinitializer }, align 32
@radeon_device_init.__key.73 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.74 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&rdev->pcie_idx_lock\00", [43 x i8] zeroinitializer }, align 32
@radeon_device_init.__key.75 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.76 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&rdev->pciep_idx_lock\00", [42 x i8] zeroinitializer }, align 32
@radeon_device_init.__key.77 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.78 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&rdev->pif_idx_lock\00", [44 x i8] zeroinitializer }, align 32
@radeon_device_init.__key.79 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.80 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&rdev->cg_idx_lock\00", [45 x i8] zeroinitializer }, align 32
@radeon_device_init.__key.81 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.82 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&rdev->uvd_idx_lock\00", [44 x i8] zeroinitializer }, align 32
@radeon_device_init.__key.83 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.84 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&rdev->rcu_idx_lock\00", [44 x i8] zeroinitializer }, align 32
@radeon_device_init.__key.85 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.86 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&rdev->didt_idx_lock\00", [43 x i8] zeroinitializer }, align 32
@radeon_device_init.__key.87 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.88 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&rdev->end_idx_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unable to find PCI I/O BAR\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ib ring test failed (%d).\0A\00", [37 x i8] zeroinitializer }, align 32
@radeon_testing = external dso_local local_unnamed_addr global i32, align 4
@radeon_device_init._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.44, ptr @.str.2, i32 1490, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016[drm] radeon: acceleration disabled, skipping move tests\0A\00", [36 x i8] zeroinitializer }, align 32
@radeon_device_init._entry_ptr.93 = internal global ptr @radeon_device_init._entry.91, section ".printk_index", align 4
@radeon_device_init._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.44, ptr @.str.2, i32 1496, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016[drm] radeon: acceleration disabled, skipping sync tests\0A\00", [36 x i8] zeroinitializer }, align 32
@radeon_device_init._entry_ptr.96 = internal global ptr @radeon_device_init._entry.94, section ".printk_index", align 4
@radeon_benchmarking = external dso_local local_unnamed_addr global i32, align 4
@radeon_device_init._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.44, ptr @.str.2, i32 1502, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016[drm] radeon: acceleration disabled, skipping benchmarks\0A\00", [36 x i8] zeroinitializer }, align 32
@radeon_device_init._entry_ptr.99 = internal global ptr @radeon_device_init._entry.97, section ".printk_index", align 4
@radeon_device_fini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.2, i32 1525, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016[drm] radeon: finishing device.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"radeon_device_fini\00", [45 x i8] zeroinitializer }, align 32
@radeon_device_fini._entry_ptr = internal global ptr @radeon_device_fini._entry, section ".printk_index", align 4
@.str.102 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"radeon_pm_late_init failed, disabling dpm\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to pin cursor BO (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@radeon_gpu_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.2, i32 1804, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Saved %d dwords of commands on ring %d.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"radeon_gpu_reset\00", [47 x i8] zeroinitializer }, align 32
@radeon_gpu_reset._entry_ptr = internal global ptr @radeon_gpu_reset._entry, section ".printk_index", align 4
@radeon_gpu_reset._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.105, ptr @.str.2, i32 1810, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"GPU reset succeeded, trying to resume\0A\00", [57 x i8] zeroinitializer }, align 32
@radeon_gpu_reset._entry_ptr.108 = internal global ptr @radeon_gpu_reset._entry.106, section ".printk_index", align 4
@radeon_gpu_reset._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.105, ptr @.str.2, i32 1872, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GPU reset failed\0A\00", [46 x i8] zeroinitializer }, align 32
@radeon_gpu_reset._entry_ptr.111 = internal global ptr @radeon_gpu_reset._entry.109, section ".printk_index", align 4
@radeon_bo_reserve._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.114, i32 71, ptr @.str.35, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%p reserve failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"radeon_bo_reserve\00", [46 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/radeon/radeon_object.h\00", [57 x i8] zeroinitializer }, align 32
@radeon_bo_reserve._entry_ptr = internal global ptr @radeon_bo_reserve._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@radeon_check_arguments._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.2, i32 1131, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"vram limit (%d) must be a power of 2\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"radeon_check_arguments\00", [41 x i8] zeroinitializer }, align 32
@radeon_check_arguments._entry_ptr = internal global ptr @radeon_check_arguments._entry, section ".printk_index", align 4
@radeon_gart_size = external dso_local local_unnamed_addr global i32, align 4
@radeon_check_arguments._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.118, ptr @.str.2, i32 1141, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"gart size (%d) too small\0A\00", [38 x i8] zeroinitializer }, align 32
@radeon_check_arguments._entry_ptr.121 = internal global ptr @radeon_check_arguments._entry.119, section ".printk_index", align 4
@radeon_check_arguments._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.118, ptr @.str.2, i32 1145, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"gart size (%d) must be a power of 2\0A\00", [59 x i8] zeroinitializer }, align 32
@radeon_check_arguments._entry_ptr.124 = internal global ptr @radeon_check_arguments._entry.122, section ".printk_index", align 4
@radeon_check_arguments._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.118, ptr @.str.2, i32 1161, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"invalid AGP mode %d (valid mode: -1, 0, 1, 2, 4, 8)\0A\00", [43 x i8] zeroinitializer }, align 32
@radeon_check_arguments._entry_ptr.127 = internal global ptr @radeon_check_arguments._entry.125, section ".printk_index", align 4
@radeon_check_arguments._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.118, ptr @.str.2, i32 1168, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM size (%d) must be a power of 2\0A\00", [61 x i8] zeroinitializer }, align 32
@radeon_check_arguments._entry_ptr.130 = internal global ptr @radeon_check_arguments._entry.128, section ".printk_index", align 4
@radeon_check_arguments._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.118, ptr @.str.2, i32 1174, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM size (%d) too small, min is 1GB\0A\00", [60 x i8] zeroinitializer }, align 32
@radeon_check_arguments._entry_ptr.133 = internal global ptr @radeon_check_arguments._entry.131, section ".printk_index", align 4
@radeon_check_arguments._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.118, ptr @.str.2, i32 1183, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM size (%d) too large, max is 1TB\0A\00", [60 x i8] zeroinitializer }, align 32
@radeon_check_arguments._entry_ptr.136 = internal global ptr @radeon_check_arguments._entry.134, section ".printk_index", align 4
@radeon_vm_block_size = external dso_local local_unnamed_addr global i32, align 4
@radeon_check_arguments._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.118, ptr @.str.2, i32 1204, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM page table size (%d) too small\0A\00", [61 x i8] zeroinitializer }, align 32
@radeon_check_arguments._entry_ptr.139 = internal global ptr @radeon_check_arguments._entry.137, section ".printk_index", align 4
@radeon_check_arguments._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.118, ptr @.str.2, i32 1211, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM page table size (%d) too large\0A\00", [61 x i8] zeroinitializer }, align 32
@radeon_check_arguments._entry_ptr.142 = internal global ptr @radeon_check_arguments._entry.140, section ".printk_index", align 4
@radeon_doorbell_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.144, ptr @.str.2, i32 351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016[drm] doorbell mmio base: 0x%08X\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"radeon_doorbell_init\00", [43 x i8] zeroinitializer }, align 32
@radeon_doorbell_init._entry_ptr = internal global ptr @radeon_doorbell_init._entry, section ".printk_index", align 4
@radeon_doorbell_init._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.144, ptr @.str.2, i32 352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016[drm] doorbell mmio size: %u\0A\00", [32 x i8] zeroinitializer }, align 32
@radeon_doorbell_init._entry_ptr.147 = internal global ptr @radeon_doorbell_init._entry.145, section ".printk_index", align 4
@radeon_px_quirk_list = internal constant { [6 x %struct.radeon_px_quirk], [40 x i8] } { [6 x %struct.radeon_px_quirk] [%struct.radeon_px_quirk { i32 4098, i32 26464, i32 4133, i32 1650, i32 1 }, %struct.radeon_px_quirk { i32 4098, i32 26433, i32 4163, i32 4236, i32 1 }, %struct.radeon_px_quirk { i32 4098, i32 26688, i32 4163, i32 8482, i32 1 }, %struct.radeon_px_quirk { i32 4098, i32 26433, i32 4163, i32 8482, i32 1 }, %struct.radeon_px_quirk { i32 4098, i32 26688, i32 4163, i32 8483, i32 1 }, %struct.radeon_px_quirk zeroinitializer], [40 x i8] zeroinitializer }, align 32
@radeon_switcheroo_set_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.149, ptr @.str.2, i32 1233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016radeon: switched on\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"radeon_switcheroo_set_state\00", [36 x i8] zeroinitializer }, align 32
@radeon_switcheroo_set_state._entry_ptr = internal global ptr @radeon_switcheroo_set_state._entry, section ".printk_index", align 4
@radeon_switcheroo_set_state._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.149, ptr @.str.2, i32 1242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016radeon: switched off\0A\00", [40 x i8] zeroinitializer }, align 32
@radeon_switcheroo_set_state._entry_ptr.152 = internal global ptr @radeon_switcheroo_set_state._entry.150, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.153 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.154 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 4, i64 8, i64 4294967295]
@__sancov_gen_cov_switch_values.155 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.156 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.157 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 467, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 479, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 486, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 520, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 572, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 578, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 585, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 610, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 616, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 622, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 758, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 765, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 790, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 990, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1005, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1006, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1314, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant [19 x i8] c"radeon_family_name\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 49, i32 19 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1320, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1321, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1323, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1324, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1325, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1326, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1327, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1328, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1329, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1387, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1394, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1395, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1396, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1397, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1398, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1399, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1400, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1401, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1402, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1403, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1404, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1405, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1430, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1469, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1490, i32 4 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1496, i32 4 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1502, i32 4 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1525, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1696, i32 4 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1720, i32 6 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1803, i32 4 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1810, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1872, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant [42 x i8] c"../drivers/gpu/drm/radeon/radeon_object.h\00", align 1
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 71, i32 4 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1130, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1140, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1144, i32 3 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1160, i32 3 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1167, i32 3 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1173, i32 3 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1182, i32 3 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1203, i32 3 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1210, i32 3 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 351, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 352, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant [21 x i8] c"radeon_px_quirk_list\00", align 1
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 133, i32 31 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1233, i32 3 }
@___asan_gen_.581 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.584 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.585 = private constant [42 x i8] c"../drivers/gpu/drm/radeon/radeon_device.c\00", align 1
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1242, i32 3 }
@llvm.compiler.used = appending global [179 x ptr] [ptr @radeon_bo_reserve._entry, ptr @radeon_bo_reserve._entry_ptr, ptr @radeon_boot_test_post_card._entry, ptr @radeon_boot_test_post_card._entry.33, ptr @radeon_boot_test_post_card._entry_ptr, ptr @radeon_boot_test_post_card._entry_ptr.36, ptr @radeon_check_arguments._entry, ptr @radeon_check_arguments._entry.119, ptr @radeon_check_arguments._entry.122, ptr @radeon_check_arguments._entry.125, ptr @radeon_check_arguments._entry.128, ptr @radeon_check_arguments._entry.131, ptr @radeon_check_arguments._entry.134, ptr @radeon_check_arguments._entry.137, ptr @radeon_check_arguments._entry.140, ptr @radeon_check_arguments._entry_ptr, ptr @radeon_check_arguments._entry_ptr.121, ptr @radeon_check_arguments._entry_ptr.124, ptr @radeon_check_arguments._entry_ptr.127, ptr @radeon_check_arguments._entry_ptr.130, ptr @radeon_check_arguments._entry_ptr.133, ptr @radeon_check_arguments._entry_ptr.136, ptr @radeon_check_arguments._entry_ptr.139, ptr @radeon_check_arguments._entry_ptr.142, ptr @radeon_device_fini._entry, ptr @radeon_device_fini._entry_ptr, ptr @radeon_device_init._entry, ptr @radeon_device_init._entry.62, ptr @radeon_device_init._entry.91, ptr @radeon_device_init._entry.94, ptr @radeon_device_init._entry.97, ptr @radeon_device_init._entry_ptr, ptr @radeon_device_init._entry_ptr.64, ptr @radeon_device_init._entry_ptr.93, ptr @radeon_device_init._entry_ptr.96, ptr @radeon_device_init._entry_ptr.99, ptr @radeon_doorbell_init._entry, ptr @radeon_doorbell_init._entry.145, ptr @radeon_doorbell_init._entry_ptr, ptr @radeon_doorbell_init._entry_ptr.147, ptr @radeon_dummy_page_init._entry, ptr @radeon_dummy_page_init._entry_ptr, ptr @radeon_gpu_reset._entry, ptr @radeon_gpu_reset._entry.106, ptr @radeon_gpu_reset._entry.109, ptr @radeon_gpu_reset._entry_ptr, ptr @radeon_gpu_reset._entry_ptr.108, ptr @radeon_gpu_reset._entry_ptr.111, ptr @radeon_gtt_location._entry, ptr @radeon_gtt_location._entry.26, ptr @radeon_gtt_location._entry.28, ptr @radeon_gtt_location._entry_ptr, ptr @radeon_gtt_location._entry_ptr.27, ptr @radeon_gtt_location._entry_ptr.30, ptr @radeon_switcheroo_set_state._entry, ptr @radeon_switcheroo_set_state._entry.150, ptr @radeon_switcheroo_set_state._entry_ptr, ptr @radeon_switcheroo_set_state._entry_ptr.152, ptr @radeon_vram_location._entry, ptr @radeon_vram_location._entry.19, ptr @radeon_vram_location._entry.21, ptr @radeon_vram_location._entry_ptr, ptr @radeon_vram_location._entry_ptr.20, ptr @radeon_vram_location._entry_ptr.23, ptr @radeon_wb_init._entry, ptr @radeon_wb_init._entry.11, ptr @radeon_wb_init._entry.5, ptr @radeon_wb_init._entry.8, ptr @radeon_wb_init._entry_ptr, ptr @radeon_wb_init._entry_ptr.10, ptr @radeon_wb_init._entry_ptr.14, ptr @radeon_wb_init._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @radeon_atombios_init.__key, ptr @.str.40, ptr @radeon_atombios_init.__key.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @radeon_family_name, ptr @radeon_device_init.__key, ptr @.str.45, ptr @radeon_device_init.__key.46, ptr @.str.47, ptr @radeon_device_init.__key.48, ptr @.str.49, ptr @radeon_device_init.__key.50, ptr @.str.51, ptr @radeon_device_init.__key.52, ptr @.str.53, ptr @radeon_device_init.__key.54, ptr @.str.55, ptr @radeon_device_init.__key.56, ptr @.str.57, ptr @radeon_device_init.__key.58, ptr @.str.59, ptr @radeon_device_init.__key.60, ptr @.str.61, ptr @.str.63, ptr @radeon_device_init.__key.65, ptr @.str.66, ptr @radeon_device_init.__key.67, ptr @.str.68, ptr @radeon_device_init.__key.69, ptr @.str.70, ptr @radeon_device_init.__key.71, ptr @.str.72, ptr @radeon_device_init.__key.73, ptr @.str.74, ptr @radeon_device_init.__key.75, ptr @.str.76, ptr @radeon_device_init.__key.77, ptr @.str.78, ptr @radeon_device_init.__key.79, ptr @.str.80, ptr @radeon_device_init.__key.81, ptr @.str.82, ptr @radeon_device_init.__key.83, ptr @.str.84, ptr @radeon_device_init.__key.85, ptr @.str.86, ptr @radeon_device_init.__key.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.92, ptr @.str.95, ptr @.str.98, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.107, ptr @.str.110, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.117, ptr @.str.118, ptr @.str.120, ptr @.str.123, ptr @.str.126, ptr @.str.129, ptr @.str.132, ptr @.str.135, ptr @.str.138, ptr @.str.141, ptr @.str.143, ptr @.str.144, ptr @.str.146, ptr @radeon_px_quirk_list, ptr @.str.148, ptr @.str.149, ptr @.str.151], section "llvm.metadata"
@0 = internal global [143 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_wb_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_wb_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_wb_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_wb_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_vram_location._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_vram_location._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_vram_location._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_gtt_location._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_gtt_location._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_gtt_location._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_boot_test_post_card._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_boot_test_post_card._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_dummy_page_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_atombios_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_atombios_init.__key.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_device_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_family_name to i32), i32 1008, i32 1248, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_device_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_device_init.__key.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_device_init.__key.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_device_init.__key.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_device_init.__key.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_device_init.__key.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_device_init.__key.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_device_init.__key.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_device_init.__key.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_device_init._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_device_init.__key.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_device_init.__key.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_device_init.__key.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_device_init.__key.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_device_init.__key.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_device_init.__key.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_device_init.__key.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_device_init.__key.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_device_init.__key.81 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_device_init.__key.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_device_init.__key.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_device_init.__key.87 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_device_init._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_device_init._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_device_init._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_device_fini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_gpu_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_gpu_reset._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_gpu_reset._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_bo_reserve._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_check_arguments._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_check_arguments._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_check_arguments._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_check_arguments._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_check_arguments._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_check_arguments._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_check_arguments._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_check_arguments._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_check_arguments._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_doorbell_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_doorbell_init._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_px_quirk_list to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_switcheroo_set_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_switcheroo_set_state._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @radeon_is_px(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %flags = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  ret i1 %tobool.not
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_program_register_sequence(ptr noundef %rdev, ptr nocapture noundef readonly %registers, i32 noundef %array_size) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %rem = urem i32 %array_size, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %array_size)
  %cmp33 = icmp ne i32 %array_size, 0
  %or.cond = and i1 %tobool.not, %cmp33
  br i1 %or.cond, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  br label %for.body

for.body:                                         ; preds = %r100_mm_wreg.exit.for.body_crit_edge, %for.body.lr.ph
  %i.034 = phi i32 [ 0, %for.body.lr.ph ], [ %add8, %r100_mm_wreg.exit.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %registers, i32 %i.034
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add1 = add nuw i32 %i.034, 1
  %arrayidx2 = getelementptr i32, ptr %registers, i32 %add1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %add3 = add i32 %i.034, 2
  %arrayidx4 = getelementptr i32, ptr %registers, i32 %add3
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp5 = icmp eq i32 %3, -1
  br i1 %cmp5, label %for.body.if.end7_crit_edge, label %if.else

for.body.if.end7_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.else:                                          ; preds = %for.body
  %6 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %1)
  %cmp.i = icmp ugt i32 %7, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %1)
  %cmp1.i = icmp ult i32 %1, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %1
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !261
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !262
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %1) #14
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i ], [ %11, %if.then.i ]
  %neg = xor i32 %3, -1
  %and = and i32 %retval.0.i, %neg
  %or = or i32 %and, %5
  br label %if.end7

if.end7:                                          ; preds = %r100_mm_rreg.exit, %for.body.if.end7_crit_edge
  %tmp.0 = phi i32 [ %or, %r100_mm_rreg.exit ], [ %5, %for.body.if.end7_crit_edge ]
  %12 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %1)
  %cmp.i27 = icmp ugt i32 %13, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %1)
  %cmp1.i28 = icmp ult i32 %1, 65536
  %or.cond.i29 = or i1 %cmp1.i28, %cmp.i27
  br i1 %or.cond.i29, label %do.body.i, label %if.else.i32

do.body.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !263
  tail call void @arm_heavy_mb() #14
  %14 = tail call i32 @llvm.bswap.i32(i32 %tmp.0) #14
  %15 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i31 = getelementptr i8, ptr %16, i32 %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %14) #14, !srcloc !264
  br label %r100_mm_wreg.exit

if.else.i32:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %1, i32 noundef %tmp.0) #14
  br label %r100_mm_wreg.exit

r100_mm_wreg.exit:                                ; preds = %if.else.i32, %do.body.i
  %add8 = add i32 %i.034, 3
  %cmp = icmp ult i32 %add8, %array_size
  br i1 %cmp, label %r100_mm_wreg.exit.for.body_crit_edge, label %r100_mm_wreg.exit.cleanup_crit_edge

r100_mm_wreg.exit.cleanup_crit_edge:              ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

r100_mm_wreg.exit.for.body_crit_edge:             ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cleanup:                                          ; preds = %r100_mm_wreg.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_pci_config_reset(ptr nocapture noundef readonly %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %call = tail call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef 124, i32 noundef 970319979) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_surface_init(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %1)
  %cmp = icmp ult i32 %1, 27
  br i1 %cmp, label %for.cond.preheader, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

for.cond.preheader:                               ; preds = %entry
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 70, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 @radeon_bo_get_surface_reg(ptr noundef nonnull %3) #14
  br label %for.inc

if.else:                                          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %asic, align 8
  %clear_reg = getelementptr inbounds %struct.radeon_asic, ptr %5, i32 0, i32 18, i32 1
  %6 = ptrtoint ptr %clear_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clear_reg, align 4
  tail call void %7(ptr noundef %rdev, i32 noundef 0) #14
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then2
  %arrayidx.1 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 70, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %9, null
  br i1 %tobool.not.1, label %if.else.1, label %if.then2.1

if.then2.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  %call.1 = tail call i32 @radeon_bo_get_surface_reg(ptr noundef nonnull %9) #14
  br label %for.inc.1

if.else.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %asic, align 8
  %clear_reg.1 = getelementptr inbounds %struct.radeon_asic, ptr %11, i32 0, i32 18, i32 1
  %12 = ptrtoint ptr %clear_reg.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clear_reg.1, align 4
  tail call void %13(ptr noundef %rdev, i32 noundef 1) #14
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.else.1, %if.then2.1
  %arrayidx.2 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 70, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %15, null
  br i1 %tobool.not.2, label %if.else.2, label %if.then2.2

if.then2.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  %call.2 = tail call i32 @radeon_bo_get_surface_reg(ptr noundef nonnull %15) #14
  br label %for.inc.2

if.else.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %asic, align 8
  %clear_reg.2 = getelementptr inbounds %struct.radeon_asic, ptr %17, i32 0, i32 18, i32 1
  %18 = ptrtoint ptr %clear_reg.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clear_reg.2, align 4
  tail call void %19(ptr noundef %rdev, i32 noundef 2) #14
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.else.2, %if.then2.2
  %arrayidx.3 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 70, i32 3
  %20 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %21, null
  br i1 %tobool.not.3, label %if.else.3, label %if.then2.3

if.then2.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  %call.3 = tail call i32 @radeon_bo_get_surface_reg(ptr noundef nonnull %21) #14
  br label %for.inc.3

if.else.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %asic, align 8
  %clear_reg.3 = getelementptr inbounds %struct.radeon_asic, ptr %23, i32 0, i32 18, i32 1
  %24 = ptrtoint ptr %clear_reg.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clear_reg.3, align 4
  tail call void %25(ptr noundef %rdev, i32 noundef 3) #14
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.else.3, %if.then2.3
  %arrayidx.4 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 70, i32 4
  %26 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %27, null
  br i1 %tobool.not.4, label %if.else.4, label %if.then2.4

if.then2.4:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  %call.4 = tail call i32 @radeon_bo_get_surface_reg(ptr noundef nonnull %27) #14
  br label %for.inc.4

if.else.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %asic, align 8
  %clear_reg.4 = getelementptr inbounds %struct.radeon_asic, ptr %29, i32 0, i32 18, i32 1
  %30 = ptrtoint ptr %clear_reg.4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clear_reg.4, align 4
  tail call void %31(ptr noundef %rdev, i32 noundef 4) #14
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.else.4, %if.then2.4
  %arrayidx.5 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 70, i32 5
  %32 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.5, align 4
  %tobool.not.5 = icmp eq ptr %33, null
  br i1 %tobool.not.5, label %if.else.5, label %if.then2.5

if.then2.5:                                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #16
  %call.5 = tail call i32 @radeon_bo_get_surface_reg(ptr noundef nonnull %33) #14
  br label %for.inc.5

if.else.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #16
  %34 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %asic, align 8
  %clear_reg.5 = getelementptr inbounds %struct.radeon_asic, ptr %35, i32 0, i32 18, i32 1
  %36 = ptrtoint ptr %clear_reg.5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %clear_reg.5, align 4
  tail call void %37(ptr noundef %rdev, i32 noundef 5) #14
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.else.5, %if.then2.5
  %arrayidx.6 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 70, i32 6
  %38 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.6, align 4
  %tobool.not.6 = icmp eq ptr %39, null
  br i1 %tobool.not.6, label %if.else.6, label %if.then2.6

if.then2.6:                                       ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #16
  %call.6 = tail call i32 @radeon_bo_get_surface_reg(ptr noundef nonnull %39) #14
  br label %for.inc.6

if.else.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #16
  %40 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %asic, align 8
  %clear_reg.6 = getelementptr inbounds %struct.radeon_asic, ptr %41, i32 0, i32 18, i32 1
  %42 = ptrtoint ptr %clear_reg.6 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %clear_reg.6, align 4
  tail call void %43(ptr noundef %rdev, i32 noundef 6) #14
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.else.6, %if.then2.6
  %arrayidx.7 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 70, i32 7
  %44 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.7, align 4
  %tobool.not.7 = icmp eq ptr %45, null
  br i1 %tobool.not.7, label %if.else.7, label %if.then2.7

if.then2.7:                                       ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #16
  %call.7 = tail call i32 @radeon_bo_get_surface_reg(ptr noundef nonnull %45) #14
  br label %for.inc.7

if.else.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #16
  %46 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %asic, align 8
  %clear_reg.7 = getelementptr inbounds %struct.radeon_asic, ptr %47, i32 0, i32 18, i32 1
  %48 = ptrtoint ptr %clear_reg.7 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %clear_reg.7, align 4
  tail call void %49(ptr noundef %rdev, i32 noundef 7) #14
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.else.7, %if.then2.7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !263
  tail call void @arm_heavy_mb() #14
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %50 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %51, i32 2816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #14, !srcloc !264
  br label %if.end6

if.end6:                                          ; preds = %for.inc.7, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_bo_get_surface_reg(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_scratch_init(ptr nocapture noundef %rdev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %1)
  %cmp = icmp ult i32 %1, 9
  %spec.select = select i1 %cmp, i32 5, i32 7
  %2 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 45
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %spec.select, ptr %2, align 8
  %reg_base = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 45, i32 1
  %4 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 5600, ptr %reg_base, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.024 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry ]
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 45, i32 2, i32 %i.024
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %arrayidx, align 1
  %6 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg_base, align 4
  %mul = shl i32 %i.024, 2
  %add = add i32 %7, %mul
  %arrayidx11 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 45, i32 3, i32 %i.024
  %8 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %arrayidx11, align 4
  %inc = add nuw i32 %i.024, 1
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %2, align 8
  %cmp6 = icmp ult i32 %inc, %10
  br i1 %cmp6, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_scratch_get(ptr nocapture noundef %rdev, ptr nocapture noundef writeonly %reg) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %scratch = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 45
  %0 = ptrtoint ptr %scratch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %scratch, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp16.not = icmp eq i32 %1, 0
  br i1 %cmp16.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.017 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 45, i32 2, i32 %i.017
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx, align 1
  %arrayidx7 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 45, i32 3, i32 %i.017
  %5 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx7, align 4
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %reg, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_scratch_free(ptr nocapture noundef %rdev, i32 noundef %reg) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %scratch = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 45
  %0 = ptrtoint ptr %scratch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %scratch, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp12.not = icmp eq i32 %1, 0
  br i1 %cmp12.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.013 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 45, i32 3, i32 %i.013
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %reg)
  %cmp3 = icmp eq i32 %3, %reg
  br i1 %cmp3, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx5 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 45, i32 2, i32 %i.013
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %arrayidx5, align 1
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_doorbell_get(ptr noundef %rdev, ptr nocapture noundef writeonly %doorbell) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %used = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 46, i32 4
  %num_doorbells = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 46, i32 3
  %0 = ptrtoint ptr %num_doorbells to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_doorbells, align 4
  %call = tail call i32 @_find_first_zero_bit_be(ptr noundef %used, i32 noundef %1) #14
  %2 = ptrtoint ptr %num_doorbells to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_doorbells, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %3)
  %cmp = icmp ult i32 %call, %3
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %rem.i = and i32 %call, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %call, 5
  %add.ptr.i = getelementptr i32, ptr %used, i32 %div2.i
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %5, %shl.i
  store i32 %or.i, ptr %add.ptr.i, align 4
  %6 = ptrtoint ptr %doorbell to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call, ptr %doorbell, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @radeon_doorbell_free(ptr nocapture noundef %rdev, i32 noundef %doorbell) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %num_doorbells = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 46, i32 3
  %0 = ptrtoint ptr %num_doorbells to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_doorbells, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %doorbell)
  %cmp = icmp ugt i32 %1, %doorbell
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %used = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 46, i32 4
  %rem.i = and i32 %doorbell, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %doorbell, 5
  %add.ptr.i = getelementptr i32, ptr %used, i32 %div2.i
  %neg.i = xor i32 %shl.i, -1
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %3, %neg.i
  store i32 %and.i, ptr %add.ptr.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @radeon_wb_disable(ptr nocapture noundef writeonly %rdev) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 62, i32 3
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %enabled, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_wb_fini(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 62, i32 3
  %0 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %enabled.i, align 8
  %wb = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 62
  %1 = ptrtoint ptr %wb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wb, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end17_crit_edge, label %if.then

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.then:                                          ; preds = %entry
  %resv32.i.i = getelementptr inbounds %struct.radeon_bo, ptr %2, i32 0, i32 4, i32 0, i32 9
  %3 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %4, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %retval.1.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %5 = zext i32 %retval.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.1.i.i, label %do.end.i [
    i32 0, label %if.then4
    i32 -512, label %if.then.if.end_crit_edge
  ], !prof !266

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %rdev.i = getelementptr inbounds %struct.radeon_bo, ptr %2, i32 0, i32 13
  %6 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rdev.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.112, ptr noundef nonnull %2) #17
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %wb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wb, align 8
  tail call void @radeon_bo_kunmap(ptr noundef %11) #14
  %12 = ptrtoint ptr %wb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wb, align 8
  tail call void @radeon_bo_unpin(ptr noundef %13) #14
  %14 = ptrtoint ptr %wb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wb, align 8
  %tbo.i = getelementptr inbounds %struct.radeon_bo, ptr %15, i32 0, i32 4
  %bdev.i.i.i = getelementptr inbounds %struct.radeon_bo, ptr %15, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %17, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #14
  %resource.i.i.i = getelementptr inbounds %struct.radeon_bo, ptr %15, i32 0, i32 4, i32 6
  %18 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %resource.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i, ptr noundef %19, ptr noundef null) #14
  %20 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %21, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #14
  %resv.i.i = getelementptr inbounds %struct.radeon_bo, ptr %15, i32 0, i32 4, i32 0, i32 9
  %22 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %resv.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %23) #14
  tail call void @ww_mutex_unlock(ptr noundef %23) #14
  br label %if.end

if.end:                                           ; preds = %if.then4, %do.end.i, %if.then.if.end_crit_edge
  tail call void @radeon_bo_unref(ptr noundef %wb) #14
  %wb14 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 62, i32 1
  %24 = ptrtoint ptr %wb14 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %wb14, align 4
  %25 = ptrtoint ptr %wb to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %wb, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.end, %entry.if.end17_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_bo_kunmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_bo_unpin(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_bo_unref(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_wb_init(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %wb = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 62
  %0 = ptrtoint ptr %wb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wb, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %entry.if.end39_crit_edge

entry.if.end39_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then:                                          ; preds = %entry
  %call = tail call i32 @radeon_bo_create(ptr noundef %rdev, i32 noundef 4096, i32 noundef 4096, i1 noundef zeroext true, i32 noundef 2, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef %wb) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef %call) #17
  br label %cleanup

if.end:                                           ; preds = %if.then
  %4 = ptrtoint ptr %wb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wb, align 8
  %resv32.i.i = getelementptr inbounds %struct.radeon_bo, ptr %5, i32 0, i32 4, i32 0, i32 9
  %6 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %7, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %retval.1.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %8 = zext i32 %retval.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %retval.1.i.i, label %do.end.i [
    i32 0, label %if.end11
    i32 -512, label %if.end.if.then10_crit_edge
  ], !prof !266

if.end.if.then10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then10

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %rdev.i = getelementptr inbounds %struct.radeon_bo, ptr %5, i32 0, i32 13
  %9 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rdev.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.112, ptr noundef %5) #17
  br label %if.then10

if.then10:                                        ; preds = %do.end.i, %if.end.if.then10_crit_edge
  tail call void @radeon_wb_fini(ptr noundef %rdev)
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %13 = ptrtoint ptr %wb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wb, align 8
  %gpu_addr = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 62, i32 2
  %call15 = tail call i32 @radeon_bo_pin(ptr noundef %14, i32 noundef 2, ptr noundef %gpu_addr) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  %15 = ptrtoint ptr %wb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wb, align 8
  br i1 %tobool16.not, label %if.end24, label %if.then17

if.then17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  %tbo.i = getelementptr inbounds %struct.radeon_bo, ptr %16, i32 0, i32 4
  %bdev.i.i.i = getelementptr inbounds %struct.radeon_bo, ptr %16, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %18, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #14
  %resource.i.i.i = getelementptr inbounds %struct.radeon_bo, ptr %16, i32 0, i32 4, i32 6
  %19 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %resource.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i, ptr noundef %20, ptr noundef null) #14
  %21 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %22, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #14
  %resv.i.i = getelementptr inbounds %struct.radeon_bo, ptr %16, i32 0, i32 4, i32 0, i32 9
  %23 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %resv.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %24) #14
  tail call void @ww_mutex_unlock(ptr noundef %24) #14
  %25 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.6, i32 noundef %call15) #17
  tail call void @radeon_wb_fini(ptr noundef %rdev)
  br label %cleanup

if.end24:                                         ; preds = %if.end11
  %wb28 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 62, i32 1
  %call29 = tail call i32 @radeon_bo_kmap(ptr noundef %16, ptr noundef %wb28) #14
  %27 = ptrtoint ptr %wb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wb, align 8
  %tbo.i122 = getelementptr inbounds %struct.radeon_bo, ptr %28, i32 0, i32 4
  %bdev.i.i.i123 = getelementptr inbounds %struct.radeon_bo, ptr %28, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %bdev.i.i.i123 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bdev.i.i.i123, align 8
  %lru_lock.i.i.i124 = getelementptr inbounds %struct.ttm_device, ptr %30, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i124) #14
  %resource.i.i.i125 = getelementptr inbounds %struct.radeon_bo, ptr %28, i32 0, i32 4, i32 6
  %31 = ptrtoint ptr %resource.i.i.i125 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %resource.i.i.i125, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i122, ptr noundef %32, ptr noundef null) #14
  %33 = ptrtoint ptr %bdev.i.i.i123 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bdev.i.i.i123, align 8
  %lru_lock2.i.i.i126 = getelementptr inbounds %struct.ttm_device, ptr %34, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i126) #14
  %resv.i.i127 = getelementptr inbounds %struct.radeon_bo, ptr %28, i32 0, i32 4, i32 0, i32 9
  %35 = ptrtoint ptr %resv.i.i127 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %resv.i.i127, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %36) #14
  tail call void @ww_mutex_unlock(ptr noundef %36) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool32.not = icmp eq i32 %call29, 0
  br i1 %tobool32.not, label %if.end24.if.end39_crit_edge, label %do.end36

if.end24.if.end39_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

do.end36:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  %37 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %38, ptr noundef nonnull @.str.9, i32 noundef %call29) #17
  tail call void @radeon_wb_fini(ptr noundef %rdev)
  br label %cleanup

if.end39:                                         ; preds = %if.end24.if.end39_crit_edge, %entry.if.end39_crit_edge
  %wb41 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 62, i32 1
  %39 = ptrtoint ptr %wb41 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %wb41, align 4
  %41 = call ptr @memset(ptr %40, i32 0, i32 4096)
  %use_event = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 62, i32 4
  %42 = ptrtoint ptr %use_event to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %use_event, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_no_wb to i32))
  %43 = load i32, ptr @radeon_no_wb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp43 = icmp eq i32 %43, 1
  br i1 %cmp43, label %if.then44, label %if.else

if.then44:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  %enabled = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 62, i32 3
  %44 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %enabled, align 8
  br label %if.end66

if.else:                                          ; preds = %if.end39
  %flags = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %45 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags, align 8
  %and = and i32 %46, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool46.not = icmp eq i32 %and, 0
  br i1 %tobool46.not, label %if.else50, label %if.then47

if.then47:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %enabled49 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 62, i32 3
  %47 = ptrtoint ptr %enabled49 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %enabled49, align 8
  br label %if.end66

if.else50:                                        ; preds = %if.else
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %48 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %49)
  %cmp51 = icmp ult i32 %49, 9
  %enabled54 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 62, i32 3
  br i1 %cmp51, label %if.then52, label %if.else55

if.then52:                                        ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #16
  %50 = ptrtoint ptr %enabled54 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %enabled54, align 8
  br label %if.end66

if.else55:                                        ; preds = %if.else50
  %51 = ptrtoint ptr %enabled54 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %enabled54, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %49)
  %cmp59 = icmp ugt i32 %49, 26
  br i1 %cmp59, label %if.then60, label %if.else55.if.end66_crit_edge

if.else55.if.end66_crit_edge:                     ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

if.then60:                                        ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #16
  %52 = ptrtoint ptr %use_event to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %use_event, align 1
  br label %if.end66

if.end66:                                         ; preds = %if.then60, %if.else55.if.end66_crit_edge, %if.then52, %if.then47, %if.then44
  %family67 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %53 = ptrtoint ptr %family67 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %family67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 43, i32 %54)
  %cmp68 = icmp ugt i32 %54, 43
  br i1 %cmp68, label %if.then69, label %if.end66.do.end77_crit_edge

if.end66.do.end77_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end77

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  %enabled71 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 62, i32 3
  %55 = ptrtoint ptr %enabled71 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %enabled71, align 8
  %56 = ptrtoint ptr %use_event to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %use_event, align 1
  br label %do.end77

do.end77:                                         ; preds = %if.then69, %if.end66.do.end77_crit_edge
  %57 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rdev, align 8
  %enabled80 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 62, i32 3
  %59 = ptrtoint ptr %enabled80 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %enabled80, align 8, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool81.not = icmp eq i8 %60, 0
  %cond = select i1 %tobool81.not, ptr @.str.16, ptr @.str.15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %58, ptr noundef nonnull @.str.12, ptr noundef nonnull %cond) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end77, %do.end36, %if.then17, %if.then10, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %retval.1.i.i, %if.then10 ], [ %call15, %if.then17 ], [ %call29, %do.end36 ], [ 0, %do.end77 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_bo_create(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_bo_pin(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_bo_kmap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_vram_location(ptr nocapture noundef readonly %rdev, ptr nocapture noundef %mc, i64 noundef %base) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_vram_limit to i32))
  %0 = load i32, ptr @radeon_vram_limit, align 4
  %conv = sext i32 %0 to i64
  %shl = shl nsw i64 %conv, 20
  %vram_start = getelementptr inbounds %struct.radeon_mc, ptr %mc, i32 0, i32 8
  %1 = ptrtoint ptr %vram_start to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %base, ptr %vram_start, align 8
  %mc_vram_size = getelementptr inbounds %struct.radeon_mc, ptr %mc, i32 0, i32 3
  %2 = ptrtoint ptr %mc_vram_size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %mc_vram_size, align 8
  %mc_mask = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 16
  %4 = ptrtoint ptr %mc_mask to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %mc_mask, align 8
  %sub = sub i64 1, %base
  %add = add i64 %sub, %5
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %add)
  %cmp = icmp ugt i64 %3, %add
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.17) #17
  %8 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mc, align 8
  %conv3 = zext i32 %9 to i64
  %real_vram_size = getelementptr inbounds %struct.radeon_mc, ptr %mc, i32 0, i32 11
  %10 = ptrtoint ptr %real_vram_size to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv3, ptr %real_vram_size, align 8
  %11 = ptrtoint ptr %mc_vram_size to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv3, ptr %mc_vram_size, align 8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %vram_start to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %vram_start, align 8
  %14 = ptrtoint ptr %mc_vram_size to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %mc_vram_size, align 8
  %add9 = add i64 %13, -1
  %sub10 = add i64 %add9, %15
  %vram_end = getelementptr inbounds %struct.radeon_mc, ptr %mc, i32 0, i32 9
  %16 = ptrtoint ptr %vram_end to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %sub10, ptr %vram_end, align 8
  %flags = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 8
  %and = and i32 %18, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end29_crit_edge, label %land.lhs.true

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

land.lhs.true:                                    ; preds = %if.end
  %gtt_start = getelementptr inbounds %struct.radeon_mc, ptr %mc, i32 0, i32 6
  %19 = ptrtoint ptr %gtt_start to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %gtt_start, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub10, i64 %20)
  %cmp12 = icmp ugt i64 %sub10, %20
  br i1 %cmp12, label %land.lhs.true14, label %land.lhs.true.if.end29_crit_edge

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

land.lhs.true14:                                  ; preds = %land.lhs.true
  %gtt_end = getelementptr inbounds %struct.radeon_mc, ptr %mc, i32 0, i32 7
  %21 = ptrtoint ptr %gtt_end to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %gtt_end, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %22)
  %cmp16.not = icmp ugt i64 %13, %22
  br i1 %cmp16.not, label %land.lhs.true14.if.end29_crit_edge, label %do.end21

land.lhs.true14.if.end29_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

do.end21:                                         ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.17) #17
  %25 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mc, align 8
  %conv24 = zext i32 %26 to i64
  %real_vram_size25 = getelementptr inbounds %struct.radeon_mc, ptr %mc, i32 0, i32 11
  %27 = ptrtoint ptr %real_vram_size25 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv24, ptr %real_vram_size25, align 8
  %28 = ptrtoint ptr %mc_vram_size to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv24, ptr %mc_vram_size, align 8
  br label %if.end29

if.end29:                                         ; preds = %do.end21, %land.lhs.true14.if.end29_crit_edge, %land.lhs.true.if.end29_crit_edge, %if.end.if.end29_crit_edge
  %29 = ptrtoint ptr %vram_start to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %vram_start, align 8
  %31 = ptrtoint ptr %mc_vram_size to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %mc_vram_size, align 8
  %add32 = add i64 %30, -1
  %sub33 = add i64 %add32, %32
  %33 = ptrtoint ptr %vram_end to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %sub33, ptr %vram_end, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool35.not = icmp eq i32 %0, 0
  br i1 %tobool35.not, label %if.end29.do.end45_crit_edge, label %land.lhs.true36

if.end29.do.end45_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end45

land.lhs.true36:                                  ; preds = %if.end29
  %real_vram_size37 = getelementptr inbounds %struct.radeon_mc, ptr %mc, i32 0, i32 11
  %34 = ptrtoint ptr %real_vram_size37 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %real_vram_size37, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %35)
  %cmp38 = icmp ult i64 %shl, %35
  br i1 %cmp38, label %if.then40, label %land.lhs.true36.do.end45_crit_edge

land.lhs.true36.do.end45_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end45

if.then40:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #16
  %36 = ptrtoint ptr %real_vram_size37 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %shl, ptr %real_vram_size37, align 8
  br label %do.end45

do.end45:                                         ; preds = %if.then40, %land.lhs.true36.do.end45_crit_edge, %if.end29.do.end45_crit_edge
  %37 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rdev, align 8
  %shr = lshr i64 %32, 20
  %real_vram_size50 = getelementptr inbounds %struct.radeon_mc, ptr %mc, i32 0, i32 11
  %39 = ptrtoint ptr %real_vram_size50 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %real_vram_size50, align 8
  %shr51 = lshr i64 %40, 20
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %38, ptr noundef nonnull @.str.22, i64 noundef %shr, i64 noundef %30, i64 noundef %sub33, i64 noundef %shr51) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_gtt_location(ptr nocapture noundef readonly %rdev, ptr nocapture noundef %mc) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mc_mask = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 16
  %0 = ptrtoint ptr %mc_mask to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %mc_mask, align 8
  %vram_end = getelementptr inbounds %struct.radeon_mc, ptr %mc, i32 0, i32 9
  %2 = ptrtoint ptr %vram_end to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %vram_end, align 8
  %sub = sub i64 %1, %3
  %gtt_base_align = getelementptr inbounds %struct.radeon_mc, ptr %mc, i32 0, i32 15
  %4 = ptrtoint ptr %gtt_base_align to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %gtt_base_align, align 8
  %add = add i64 %sub, %5
  %neg = xor i64 %5, -1
  %and = and i64 %add, %neg
  %vram_start = getelementptr inbounds %struct.radeon_mc, ptr %mc, i32 0, i32 8
  %6 = ptrtoint ptr %vram_start to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %vram_start, align 8
  %and5 = and i64 %7, %neg
  call void @__sanitizer_cov_trace_cmp8(i64 %and5, i64 %and)
  %cmp = icmp ugt i64 %and5, %and
  %gtt_size = getelementptr inbounds %struct.radeon_mc, ptr %mc, i32 0, i32 5
  %8 = ptrtoint ptr %gtt_size to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %gtt_size, align 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %and5)
  %cmp6 = icmp ugt i64 %9, %and5
  br i1 %cmp6, label %do.end, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.24) #17
  %12 = ptrtoint ptr %gtt_size to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %and5, ptr %gtt_size, align 8
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %13 = ptrtoint ptr %vram_start to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %vram_start, align 8
  %15 = ptrtoint ptr %gtt_base_align to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %gtt_base_align, align 8
  %neg11 = xor i64 %16, -1
  %and12 = and i64 %14, %neg11
  %17 = ptrtoint ptr %gtt_size to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %gtt_size, align 8
  %sub14 = sub i64 %and12, %18
  br label %if.end32

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %and)
  %cmp16 = icmp ugt i64 %9, %and
  br i1 %cmp16, label %do.end20, label %if.else.if.end23_crit_edge

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

do.end20:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.24) #17
  %21 = ptrtoint ptr %gtt_size to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %and, ptr %gtt_size, align 8
  br label %if.end23

if.end23:                                         ; preds = %do.end20, %if.else.if.end23_crit_edge
  %22 = ptrtoint ptr %vram_end to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %vram_end, align 8
  %add25 = add i64 %23, 1
  %24 = ptrtoint ptr %gtt_base_align to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %gtt_base_align, align 8
  %add27 = add i64 %add25, %25
  %neg29 = xor i64 %25, -1
  %and30 = and i64 %add27, %neg29
  br label %if.end32

if.end32:                                         ; preds = %if.end23, %if.end
  %and30.sink = phi i64 [ %and30, %if.end23 ], [ %sub14, %if.end ]
  %gtt_start31 = getelementptr inbounds %struct.radeon_mc, ptr %mc, i32 0, i32 6
  %26 = ptrtoint ptr %gtt_start31 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %and30.sink, ptr %gtt_start31, align 8
  %gtt_size34 = getelementptr inbounds %struct.radeon_mc, ptr %mc, i32 0, i32 5
  %27 = ptrtoint ptr %gtt_size34 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %gtt_size34, align 8
  %add35 = add i64 %and30.sink, -1
  %sub36 = add i64 %add35, %28
  %gtt_end = getelementptr inbounds %struct.radeon_mc, ptr %mc, i32 0, i32 7
  %29 = ptrtoint ptr %gtt_end to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %sub36, ptr %gtt_end, align 8
  %30 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rdev, align 8
  %shr = lshr i64 %28, 20
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.29, i64 noundef %shr, i64 noundef %and30.sink, i64 noundef %sub36) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @radeon_device_is_virtual() local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @radeon_card_posted(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %1)
  %cmp12 = icmp eq i32 %1, 56
  br i1 %cmp12, label %entry.if.then65_crit_edge, label %if.end15

entry.if.then65_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then65

if.end15:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %1)
  %cmp17 = icmp ugt i32 %1, 38
  br i1 %cmp17, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end15
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %2 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 28272
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !262
  %5 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i101 = getelementptr i8, ptr %6, i32 31344
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i101) #14, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !262
  %8 = or i32 %7, %4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %num_crtc = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 91
  %10 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_crtc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp22 = icmp sgt i32 %11, 3
  br i1 %cmp22, label %if.then24, label %if.then19.if.end38_crit_edge

if.then19.if.end38_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

if.then24:                                        ; preds = %if.then19
  %12 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 67184, i32 %13)
  %cmp.i103 = icmp ugt i32 %13, 67184
  br i1 %cmp.i103, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i105 = getelementptr i8, ptr %15, i32 67184
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i105) #14, !srcloc !261
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !262
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef 67184) #14
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i ], [ %17, %if.then.i ]
  %18 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 70256, i32 %19)
  %cmp.i107 = icmp ugt i32 %19, 70256
  br i1 %cmp.i107, label %if.then.i110, label %if.else.i112

if.then.i110:                                     ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i109 = getelementptr i8, ptr %21, i32 70256
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i109) #14, !srcloc !261
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !262
  br label %if.end29

if.else.i112:                                     ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call3.i111 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef 70256) #14
  br label %if.end29

if.end29:                                         ; preds = %if.else.i112, %if.then.i110
  %retval.0.i113 = phi i32 [ %call3.i111, %if.else.i112 ], [ %23, %if.then.i110 ]
  %or27 = or i32 %retval.0.i, %9
  %or28 = or i32 %or27, %retval.0.i113
  %24 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr = load i32, ptr %num_crtc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %.pr)
  %cmp31 = icmp sgt i32 %.pr, 5
  br i1 %cmp31, label %if.then33, label %if.end29.if.end38_crit_edge

if.end29.if.end38_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

if.then33:                                        ; preds = %if.end29
  %25 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 73328, i32 %26)
  %cmp.i116 = icmp ugt i32 %26, 73328
  br i1 %cmp.i116, label %if.then.i119, label %if.else.i121

if.then.i119:                                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i118 = getelementptr i8, ptr %28, i32 73328
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i118) #14, !srcloc !261
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !262
  br label %r100_mm_rreg.exit123

if.else.i121:                                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #16
  %call3.i120 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef 73328) #14
  br label %r100_mm_rreg.exit123

r100_mm_rreg.exit123:                             ; preds = %if.else.i121, %if.then.i119
  %retval.0.i122 = phi i32 [ %call3.i120, %if.else.i121 ], [ %30, %if.then.i119 ]
  %31 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 76400, i32 %32)
  %cmp.i125 = icmp ugt i32 %32, 76400
  br i1 %cmp.i125, label %if.then.i128, label %if.else.i130

if.then.i128:                                     ; preds = %r100_mm_rreg.exit123
  call void @__sanitizer_cov_trace_pc() #16
  %33 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i127 = getelementptr i8, ptr %34, i32 76400
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i127) #14, !srcloc !261
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !262
  br label %r100_mm_rreg.exit132

if.else.i130:                                     ; preds = %r100_mm_rreg.exit123
  call void @__sanitizer_cov_trace_pc() #16
  %call3.i129 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef 76400) #14
  br label %r100_mm_rreg.exit132

r100_mm_rreg.exit132:                             ; preds = %if.else.i130, %if.then.i128
  %retval.0.i131 = phi i32 [ %call3.i129, %if.else.i130 ], [ %36, %if.then.i128 ]
  %or36 = or i32 %retval.0.i122, %or28
  %or37 = or i32 %or36, %retval.0.i131
  br label %if.end38

if.end38:                                         ; preds = %r100_mm_rreg.exit132, %if.end29.if.end38_crit_edge, %if.then19.if.end38_crit_edge
  %reg.1 = phi i32 [ %or37, %r100_mm_rreg.exit132 ], [ %or28, %if.end29.if.end38_crit_edge ], [ %9, %if.then19.if.end38_crit_edge ]
  %and = and i32 %reg.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end38.check_memsize_crit_edge, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end38.check_memsize_crit_edge:                 ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %check_memsize

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %1)
  %cmp42 = icmp ugt i32 %1, 17
  %rmmio.i135 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %37 = ptrtoint ptr %rmmio.i135 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rmmio.i135, align 4
  br i1 %cmp42, label %if.then44, label %if.else52

if.then44:                                        ; preds = %if.else
  %add.ptr.i136 = getelementptr i8, ptr %38, i32 24704
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i136) #14, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !262
  %40 = ptrtoint ptr %rmmio.i135 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rmmio.i135, align 4
  %add.ptr.i142 = getelementptr i8, ptr %41, i32 26752
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i142) #14, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !262
  %43 = or i32 %42, %39
  %44 = and i32 %43, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool49.not = icmp eq i32 %44, 0
  br i1 %tobool49.not, label %if.then44.check_memsize_crit_edge, label %if.then44.cleanup_crit_edge

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then44.check_memsize_crit_edge:                ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #16
  br label %check_memsize

if.else52:                                        ; preds = %if.else
  %add.ptr.i148 = getelementptr i8, ptr %38, i32 80
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i148) #14, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !262
  %46 = ptrtoint ptr %rmmio.i135 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rmmio.i135, align 4
  %add.ptr.i154 = getelementptr i8, ptr %47, i32 1016
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i154) #14, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !262
  %49 = or i32 %48, %45
  %50 = and i32 %49, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool57.not = icmp eq i32 %50, 0
  br i1 %tobool57.not, label %if.else52.check_memsize_crit_edge, label %if.else52.cleanup_crit_edge

if.else52.cleanup_crit_edge:                      ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else52.check_memsize_crit_edge:                ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #16
  br label %check_memsize

check_memsize:                                    ; preds = %if.else52.check_memsize_crit_edge, %if.then44.check_memsize_crit_edge, %if.end38.check_memsize_crit_edge
  %51 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pr171 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %.pr171)
  %cmp63 = icmp ugt i32 %.pr171, 26
  br i1 %cmp63, label %check_memsize.if.then65_crit_edge, label %if.else67

check_memsize.if.then65_crit_edge:                ; preds = %check_memsize
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then65

if.then65:                                        ; preds = %check_memsize.if.then65_crit_edge, %entry.if.then65_crit_edge
  %rmmio.i159 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %52 = ptrtoint ptr %rmmio.i159 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rmmio.i159, align 4
  %add.ptr.i160 = getelementptr i8, ptr %53, i32 21544
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i160) #14, !srcloc !261
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !262
  br label %if.end69

if.else67:                                        ; preds = %check_memsize
  call void @__sanitizer_cov_trace_pc() #16
  %rmmio.i165 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %56 = ptrtoint ptr %rmmio.i165 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rmmio.i165, align 4
  %add.ptr.i166 = getelementptr i8, ptr %57, i32 248
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i166) #14, !srcloc !261
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !262
  br label %if.end69

if.end69:                                         ; preds = %if.else67, %if.then65
  %reg.2 = phi i32 [ %55, %if.then65 ], [ %59, %if.else67 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reg.2)
  %tobool70.not = icmp ne i32 %reg.2, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %if.else52.cleanup_crit_edge, %if.then44.cleanup_crit_edge, %if.end38.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end38.cleanup_crit_edge ], [ true, %if.then44.cleanup_crit_edge ], [ true, %if.else52.cleanup_crit_edge ], [ %tobool70.not, %if.end69 ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_update_bandwidth_info(ptr nocapture noundef %rdev) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %current_sclk = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 25
  %0 = ptrtoint ptr %current_sclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %current_sclk, align 8
  %current_mclk = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 26
  %2 = ptrtoint ptr %current_mclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_mclk, align 4
  %shl = shl i32 %1, 12
  %sclk3 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 15
  %4 = insertvalue [1 x i32] undef, i32 %shl, 0
  %call = tail call fastcc i32 @dfixed_div([1 x i32] %4, [1 x i32] [i32 409600])
  %5 = ptrtoint ptr %sclk3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call, ptr %sclk3, align 8
  %shl9 = shl i32 %3, 12
  %mclk11 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 16
  %6 = insertvalue [1 x i32] undef, i32 %shl9, 0
  %call16 = tail call fastcc i32 @dfixed_div([1 x i32] %6, [1 x i32] [i32 409600])
  %7 = ptrtoint ptr %mclk11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call16, ptr %mclk11, align 4
  %flags = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 8
  %and = and i32 %9, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %10 = lshr i32 %call, 3
  %narrow = add nuw nsw i32 %10, 1
  %11 = lshr i32 %narrow, 1
  %core_bandwidth = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 14
  %12 = ptrtoint ptr %core_bandwidth to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %core_bandwidth, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dfixed_div([1 x i32] %A.coerce, [1 x i32] %B.coerce) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %A.coerce.fca.0.extract = extractvalue [1 x i32] %A.coerce, 0
  %B.coerce.fca.0.extract = extractvalue [1 x i32] %B.coerce, 0
  %conv = zext i32 %A.coerce.fca.0.extract to i64
  %shl = shl nuw nsw i64 %conv, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %A.coerce.fca.0.extract)
  %cmp169 = icmp ult i32 %A.coerce.fca.0.extract, 524288
  br i1 %cmp169, label %if.then173, label %if.else179, !prof !267

if.then173:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %conv174 = trunc i64 %shl to i32
  %div177 = udiv i32 %conv174, %B.coerce.fca.0.extract
  %conv178 = zext i32 %div177 to i64
  br label %if.end183

if.else179:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %B.coerce.fca.0.extract, i64 %shl) #18, !srcloc !268
  %asmresult1.i = extractvalue { i64, i64 } %0, 1
  br label %if.end183

if.end183:                                        ; preds = %if.else179, %if.then173
  %tmp.0 = phi i64 [ %conv178, %if.then173 ], [ %asmresult1.i, %if.else179 ]
  %add185 = add i64 %tmp.0, 1
  %div186268 = lshr i64 %add185, 1
  %conv188 = trunc i64 %div186268 to i32
  ret i32 %conv188
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @radeon_boot_test_post_card(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @radeon_card_posted(ptr noundef %rdev)
  br i1 %call, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  %bios = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 13
  %0 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bios, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end9, label %do.end

do.end:                                           ; preds = %if.end
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #17
  %is_atom_bios = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 14
  %2 = ptrtoint ptr %is_atom_bios to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_atom_bios, align 4, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  %4 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mode_info, align 4
  %call5 = tail call i32 @atom_asic_init(ptr noundef %5) #14
  br label %return

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %ddev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %6 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ddev, align 4
  tail call void @radeon_combios_asic_init(ptr noundef %7) #14
  br label %return

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.34) #17
  br label %return

return:                                           ; preds = %do.end9, %if.else, %if.then4, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %do.end9 ], [ true, %entry.return_crit_edge ], [ true, %if.else ], [ true, %if.then4 ]
  ret i1 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atom_asic_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_combios_asic_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_dummy_page_init(ptr nocapture noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dummy_page = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 63
  %page = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 63, i32 1
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %page, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3524, i32 noundef 0, i32 noundef 0, ptr noundef null) #14
  %2 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call38.i.i.i, ptr %page, align 8
  %cmp = icmp eq ptr %call38.i.i.i, null
  br i1 %cmp, label %if.end.return_crit_edge, label %if.end6

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end6:                                          ; preds = %if.end
  %pdev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 2
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %call9 = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef nonnull %call38.i.i.i, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #14
  %addr = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 63, i32 2
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call9, ptr %addr, align 4
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev12, i32 noundef %call9) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9)
  %cmp.i.not = icmp eq i32 %call9, -1
  br i1 %cmp.i.not, label %do.end, label %if.end24

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.37) #17
  %10 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %page, align 8
  tail call void @__free_pages(ptr noundef %11, i32 noundef 0) #14
  %12 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %page, align 8
  br label %return

if.end24:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %13 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %asic, align 8
  %get_page_entry = getelementptr inbounds %struct.radeon_asic, ptr %14, i32 0, i32 12, i32 1
  %15 = ptrtoint ptr %get_page_entry to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_page_entry, align 4
  %17 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr, align 4
  %conv = zext i32 %18 to i64
  %call27 = tail call i64 %16(i64 noundef %conv, i32 noundef 0) #14
  %19 = ptrtoint ptr %dummy_page to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %call27, ptr %dummy_page, align 8
  br label %return

return:                                           ; preds = %if.end24, %do.end, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %if.end24 ], [ 0, %entry.return_crit_edge ], [ -12, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_dummy_page_fini(ptr nocapture noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %page = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 63, i32 1
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %page, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %pdev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 2
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %addr = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 63, i32 2
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %5, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #14
  %6 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %page, align 8
  tail call void @__free_pages(ptr noundef %7, i32 noundef 0) #14
  %8 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %page, align 8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_atombios_init(ptr nocapture noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 36) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  %atom_card_info1 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 1
  %1 = ptrtoint ptr %atom_card_info1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %atom_card_info1, align 4
  %ddev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %2 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddev, align 4
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %call7.i.i, align 8
  %reg_read = getelementptr inbounds %struct.card_info, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %reg_read to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @cail_reg_read, ptr %reg_read, align 8
  %reg_write = getelementptr inbounds %struct.card_info, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %reg_write to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @cail_reg_write, ptr %reg_write, align 4
  %rio_mem = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 39
  %7 = ptrtoint ptr %rio_mem to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rio_mem, align 4
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %if.else, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.39) #14
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.end.if.end6_crit_edge
  %cail_ioreg_read.sink = phi ptr [ @cail_reg_read, %if.else ], [ @cail_ioreg_read, %if.end.if.end6_crit_edge ]
  %cail_ioreg_write.sink = phi ptr [ @cail_reg_write, %if.else ], [ @cail_ioreg_write, %if.end.if.end6_crit_edge ]
  %9 = getelementptr inbounds %struct.card_info, ptr %call7.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %cail_ioreg_read.sink, ptr %9, align 8
  %11 = getelementptr inbounds %struct.card_info, ptr %call7.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %cail_ioreg_write.sink, ptr %11, align 4
  %mc_read = getelementptr inbounds %struct.card_info, ptr %call7.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %mc_read to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @cail_mc_read, ptr %mc_read, align 8
  %mc_write = getelementptr inbounds %struct.card_info, ptr %call7.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %mc_write to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @cail_mc_write, ptr %mc_write, align 4
  %pll_read = getelementptr inbounds %struct.card_info, ptr %call7.i.i, i32 0, i32 8
  %15 = ptrtoint ptr %pll_read to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @cail_pll_read, ptr %pll_read, align 8
  %pll_write = getelementptr inbounds %struct.card_info, ptr %call7.i.i, i32 0, i32 7
  %16 = ptrtoint ptr %pll_write to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @cail_pll_write, ptr %pll_write, align 4
  %bios = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 13
  %17 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bios, align 8
  %call7 = tail call ptr @atom_parse(ptr noundef nonnull %call7.i.i, ptr noundef %18) #14
  %19 = ptrtoint ptr %mode_info to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7, ptr %mode_info, align 4
  %tobool11.not = icmp eq ptr %call7, null
  br i1 %tobool11.not, label %radeon_atombios_fini.exit, label %do.body

radeon_atombios_fini.exit:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mode_info, align 4
  tail call void @kfree(ptr noundef %21) #14
  %22 = ptrtoint ptr %mode_info to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %mode_info, align 4
  %23 = ptrtoint ptr %atom_card_info1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %atom_card_info1, align 4
  tail call void @kfree(ptr noundef %24) #14
  %25 = ptrtoint ptr %atom_card_info1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %atom_card_info1, align 4
  br label %cleanup

do.body:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %mutex = getelementptr inbounds %struct.atom_context, ptr %call7, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.40, ptr noundef nonnull @radeon_atombios_init.__key) #14
  %26 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mode_info, align 4
  %scratch_mutex = getelementptr inbounds %struct.atom_context, ptr %27, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %scratch_mutex, ptr noundef nonnull @.str.42, ptr noundef nonnull @radeon_atombios_init.__key.41) #14
  %28 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ddev, align 4
  tail call void @radeon_atom_initialize_bios_scratch_regs(ptr noundef %29) #14
  %30 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mode_info, align 4
  %call24 = tail call i32 @atom_allocate_fb_scratch(ptr noundef %31) #14
  br label %cleanup

cleanup:                                          ; preds = %do.body, %radeon_atombios_fini.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -12, %radeon_atombios_fini.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cail_reg_read(ptr nocapture noundef readonly %info, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %mul = shl i32 %reg, 2
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %mul)
  %cmp.i = icmp ugt i32 %5, %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %mul)
  %cmp1.i = icmp ult i32 %mul, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %mul
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !261
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !262
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %mul) #14
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i ], [ %9, %if.then.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cail_reg_write(ptr nocapture noundef readonly %info, i32 noundef %reg, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %mul = shl i32 %reg, 2
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %mul)
  %cmp.i = icmp ugt i32 %5, %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %mul)
  %cmp1.i = icmp ult i32 %mul, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !263
  tail call void @arm_heavy_mb() #14
  %6 = tail call i32 @llvm.bswap.i32(i32 %val) #14
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %7 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #14, !srcloc !264
  br label %r100_mm_wreg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %mul, i32 noundef %val) #14
  br label %r100_mm_wreg.exit

r100_mm_wreg.exit:                                ; preds = %if.else.i, %do.body.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cail_ioreg_read(ptr nocapture noundef readonly %info, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %mul = shl i32 %reg, 2
  %call = tail call i32 @r100_io_rreg(ptr noundef %3, i32 noundef %mul) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cail_ioreg_write(ptr nocapture noundef readonly %info, i32 noundef %reg, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %mul = shl i32 %reg, 2
  tail call void @r100_io_wreg(ptr noundef %3, i32 noundef %mul, i32 noundef %val) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cail_mc_read(ptr nocapture noundef readonly %info, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %mc_rreg = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 32
  %4 = ptrtoint ptr %mc_rreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mc_rreg, align 8
  %call = tail call i32 %5(ptr noundef %3, i32 noundef %reg) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cail_mc_write(ptr nocapture noundef readonly %info, i32 noundef %reg, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %mc_wreg = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %mc_wreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mc_wreg, align 4
  tail call void %5(ptr noundef %3, i32 noundef %reg, i32 noundef %val) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cail_pll_read(ptr nocapture noundef readonly %info, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %pll_rreg = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 34
  %4 = ptrtoint ptr %pll_rreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pll_rreg, align 8
  %call = tail call i32 %5(ptr noundef %3, i32 noundef %reg) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cail_pll_write(ptr nocapture noundef readonly %info, i32 noundef %reg, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %pll_wreg = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 35
  %4 = ptrtoint ptr %pll_wreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pll_wreg, align 4
  tail call void %5(ptr noundef %3, i32 noundef %reg, i32 noundef %val) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @atom_parse(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_atombios_fini(ptr nocapture noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  %0 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mode_info, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %scratch = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %scratch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scratch, align 4
  tail call void @kfree(ptr noundef %3) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mode_info, align 4
  tail call void @kfree(ptr noundef %5) #14
  %6 = ptrtoint ptr %mode_info to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %mode_info, align 4
  %atom_card_info = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 1
  %7 = ptrtoint ptr %atom_card_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %atom_card_info, align 4
  tail call void @kfree(ptr noundef %8) #14
  %9 = ptrtoint ptr %atom_card_info to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %atom_card_info, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_atom_initialize_bios_scratch_regs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atom_allocate_fb_scratch(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_combios_init(ptr nocapture noundef readonly %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ddev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %0 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddev, align 4
  tail call void @radeon_combios_initialize_bios_scratch_regs(ptr noundef %1) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_combios_initialize_bios_scratch_regs(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @radeon_combios_fini(ptr nocapture noundef %rdev) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_device_init(ptr noundef %rdev, ptr noundef %ddev, ptr noundef %pdev, i32 noundef %flags) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %shutdown = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 64
  %0 = ptrtoint ptr %shutdown to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %shutdown, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %1 = ptrtoint ptr %rdev to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %rdev, align 8
  %ddev2 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %2 = ptrtoint ptr %ddev2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ddev, ptr %ddev2, align 4
  %pdev3 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 2
  %3 = ptrtoint ptr %pdev3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pdev, ptr %pdev3, align 8
  %flags4 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %4 = ptrtoint ptr %flags4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %flags, ptr %flags4, align 8
  %and = and i32 %flags, 65535
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %5 = ptrtoint ptr %family to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and, ptr %family, align 4
  %is_atom_bios = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 14
  %6 = ptrtoint ptr %is_atom_bios to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %is_atom_bios, align 4
  %usec_timeout = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %7 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 100000, ptr %usec_timeout, align 4
  %gtt_size = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 5
  %8 = ptrtoint ptr %gtt_size to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 536870912, ptr %gtt_size, align 8
  %accel_working = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 66
  %9 = ptrtoint ptr %accel_working to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %accel_working, align 2
  %idx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 0, i32 19
  %10 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %idx, align 8
  %idx.1 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 1, i32 19
  %11 = ptrtoint ptr %idx.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %idx.1, align 8
  %idx.2 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 2, i32 19
  %12 = ptrtoint ptr %idx.2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %idx.2, align 8
  %idx.3 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 3, i32 19
  %13 = ptrtoint ptr %idx.3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3, ptr %idx.3, align 8
  %idx.4 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 4, i32 19
  %14 = ptrtoint ptr %idx.4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %idx.4, align 8
  %idx.5 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 5, i32 19
  %15 = ptrtoint ptr %idx.5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 5, ptr %idx.5, align 8
  %idx.6 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 6, i32 19
  %16 = ptrtoint ptr %idx.6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 6, ptr %idx.6, align 8
  %idx.7 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 7, i32 19
  %17 = ptrtoint ptr %idx.7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 7, ptr %idx.7, align 8
  %call = tail call i64 @dma_fence_context_alloc(i32 noundef 8) #14
  %fence_context = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 50
  %18 = ptrtoint ptr %fence_context to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %call, ptr %fence_context, align 8
  %19 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %family, align 4
  %arrayidx6 = getelementptr [63 x [16 x i8]], ptr @radeon_family_name, i32 0, i32 %20
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 7
  %21 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vendor, align 8
  %conv = zext i16 %22 to i32
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %23 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %device, align 2
  %conv7 = zext i16 %24 to i32
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 9
  %25 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %subsystem_vendor, align 4
  %conv8 = zext i16 %26 to i32
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 10
  %27 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %subsystem_device, align 2
  %conv9 = zext i16 %28 to i32
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 12
  %29 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %revision, align 4
  %conv10 = zext i8 %30 to i32
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %arrayidx6, i32 noundef %conv, i32 noundef %conv7, i32 noundef %conv8, i32 noundef %conv9, i32 noundef %conv10) #17
  %ring_lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 51
  tail call void @__mutex_init(ptr noundef %ring_lock, ptr noundef nonnull @.str.45, ptr noundef nonnull @radeon_device_init.__key) #14
  %dc_hw_i2c_mutex = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 92
  tail call void @__mutex_init(ptr noundef %dc_hw_i2c_mutex, ptr noundef nonnull @.str.47, ptr noundef nonnull @radeon_device_init.__key.46) #14
  %lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 85, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lock, i32 noundef 4) #14
  %31 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 0, ptr %lock, align 4
  %gem = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 57
  tail call void @__mutex_init(ptr noundef %gem, ptr noundef nonnull @.str.49, ptr noundef nonnull @radeon_device_init.__key.48) #14
  %pm = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58
  tail call void @__mutex_init(ptr noundef %pm, ptr noundef nonnull @.str.51, ptr noundef nonnull @radeon_device_init.__key.50) #14
  %gpu_clock_mutex = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 101
  tail call void @__mutex_init(ptr noundef %gpu_clock_mutex, ptr noundef nonnull @.str.53, ptr noundef nonnull @radeon_device_init.__key.52) #14
  %srbm_mutex = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 108
  tail call void @__mutex_init(ptr noundef %srbm_mutex, ptr noundef nonnull @.str.55, ptr noundef nonnull @radeon_device_init.__key.54) #14
  %mclk_lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 1
  tail call void @__init_rwsem(ptr noundef %mclk_lock, ptr noundef nonnull @.str.57, ptr noundef nonnull @radeon_device_init.__key.56) #14
  %exclusive_lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 4
  tail call void @__init_rwsem(ptr noundef %exclusive_lock, ptr noundef nonnull @.str.59, ptr noundef nonnull @radeon_device_init.__key.58) #14
  %vblank_queue = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 5
  tail call void @__init_waitqueue_head(ptr noundef %vblank_queue, ptr noundef nonnull @.str.61, ptr noundef nonnull @radeon_device_init.__key.60) #14
  %call41 = tail call i32 @radeon_gem_init(ptr noundef %rdev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool.not = icmp eq i32 %call41, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_vram_limit to i32))
  %32 = load i32, ptr @radeon_vram_limit, align 4
  %33 = tail call i32 @llvm.ctpop.i32(i32 %32) #14, !range !269
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp.i.i = icmp ult i32 %33, 2
  br i1 %cmp.i.i, label %if.end.if.end.i_crit_edge, label %do.end.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %34 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %35, ptr noundef nonnull @.str.117, i32 noundef %32) #17
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @radeon_vram_limit to i32))
  store i32 0, ptr @radeon_vram_limit, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_gart_size to i32))
  %36 = load i32, ptr @radeon_gart_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %cmp.i = icmp eq i32 %36, -1
  br i1 %cmp.i, label %if.end3.thread.i, label %if.end3.i

if.end3.thread.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %37 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %38)
  %cmp.i100.i = icmp ugt i32 %38, 51
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %38)
  %cmp1.i.i = icmp ugt i32 %38, 34
  %..i.i = select i1 %cmp1.i.i, i32 1024, i32 512
  %retval.0.i.i = select i1 %cmp.i100.i, i32 2048, i32 %..i.i
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @radeon_gart_size to i32))
  store i32 %retval.0.i.i, ptr @radeon_gart_size, align 4
  br label %if.else.i

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %36)
  %cmp4.i = icmp slt i32 %36, 32
  br i1 %cmp4.i, label %do.end7.i, label %if.end3.i.if.else.i_crit_edge

if.end3.i.if.else.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i

do.end7.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  %39 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %40, ptr noundef nonnull @.str.120, i32 noundef %36) #17
  br label %if.end19.sink.split.i

if.else.i:                                        ; preds = %if.end3.i.if.else.i_crit_edge, %if.end3.thread.i
  %41 = phi i32 [ %retval.0.i.i, %if.end3.thread.i ], [ %36, %if.end3.i.if.else.i_crit_edge ]
  %42 = tail call i32 @llvm.ctpop.i32(i32 %41) #14, !range !269
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %42)
  %cmp.i105.i = icmp ult i32 %42, 2
  br i1 %cmp.i105.i, label %if.else.i.if.end19.i_crit_edge, label %do.end14.i

if.else.i.if.end19.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19.i

do.end14.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %43 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %44, ptr noundef nonnull @.str.123, i32 noundef %41) #17
  br label %if.end19.sink.split.i

if.end19.sink.split.i:                            ; preds = %do.end14.i, %do.end7.i
  %45 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %46)
  %cmp.i106.i = icmp ugt i32 %46, 51
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %46)
  %cmp1.i107.i = icmp ugt i32 %46, 34
  %..i108.i = select i1 %cmp1.i107.i, i32 1024, i32 512
  %retval.0.i109.i = select i1 %cmp.i106.i, i32 2048, i32 %..i108.i
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @radeon_gart_size to i32))
  store i32 %retval.0.i109.i, ptr @radeon_gart_size, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.end19.sink.split.i, %if.else.i.if.end19.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_gart_size to i32))
  %47 = load i32, ptr @radeon_gart_size, align 4
  %conv.i = sext i32 %47 to i64
  %shl.i = shl nsw i64 %conv.i, 20
  %48 = ptrtoint ptr %gtt_size to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %shl.i, ptr %gtt_size, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_agpmode to i32))
  %49 = load i32, ptr @radeon_agpmode, align 4
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %49, label %do.end21.i [
    i32 -1, label %if.end19.i.sw.epilog.i_crit_edge
    i32 0, label %if.end19.i.sw.epilog.i_crit_edge574
    i32 1, label %if.end19.i.sw.epilog.i_crit_edge575
    i32 2, label %if.end19.i.sw.epilog.i_crit_edge576
    i32 4, label %if.end19.i.sw.epilog.i_crit_edge577
    i32 8, label %if.end19.i.sw.epilog.i_crit_edge578
  ]

if.end19.i.sw.epilog.i_crit_edge578:              ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

if.end19.i.sw.epilog.i_crit_edge577:              ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

if.end19.i.sw.epilog.i_crit_edge576:              ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

if.end19.i.sw.epilog.i_crit_edge575:              ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

if.end19.i.sw.epilog.i_crit_edge574:              ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

if.end19.i.sw.epilog.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

do.end21.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  %51 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %52, ptr noundef nonnull @.str.126, i32 noundef %49) #17
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @radeon_agpmode to i32))
  store i32 0, ptr @radeon_agpmode, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end21.i, %if.end19.i.sw.epilog.i_crit_edge, %if.end19.i.sw.epilog.i_crit_edge574, %if.end19.i.sw.epilog.i_crit_edge575, %if.end19.i.sw.epilog.i_crit_edge576, %if.end19.i.sw.epilog.i_crit_edge577, %if.end19.i.sw.epilog.i_crit_edge578
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_vm_size to i32))
  %53 = load i32, ptr @radeon_vm_size, align 4
  %54 = tail call i32 @llvm.ctpop.i32(i32 %53) #14, !range !269
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %54)
  %cmp.i110.i = icmp ult i32 %54, 2
  br i1 %cmp.i110.i, label %if.end28.i, label %sw.epilog.i.if.end42.sink.split.i_crit_edge

sw.epilog.i.if.end42.sink.split.i_crit_edge:      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42.sink.split.i

if.end28.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp29.i = icmp slt i32 %53, 1
  br i1 %cmp29.i, label %if.end28.i.if.end42.sink.split.i_crit_edge, label %if.end35.i

if.end28.i.if.end42.sink.split.i_crit_edge:       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42.sink.split.i

if.end35.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %53)
  %cmp36.i = icmp ugt i32 %53, 1024
  br i1 %cmp36.i, label %if.end35.i.if.end42.sink.split.i_crit_edge, label %if.end35.i.if.end42.i_crit_edge

if.end35.i.if.end42.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42.i

if.end35.i.if.end42.sink.split.i_crit_edge:       ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42.sink.split.i

if.end42.sink.split.i:                            ; preds = %if.end35.i.if.end42.sink.split.i_crit_edge, %if.end28.i.if.end42.sink.split.i_crit_edge, %sw.epilog.i.if.end42.sink.split.i_crit_edge
  %.str.135.sink = phi ptr [ @.str.129, %sw.epilog.i.if.end42.sink.split.i_crit_edge ], [ @.str.132, %if.end28.i.if.end42.sink.split.i_crit_edge ], [ @.str.135, %if.end35.i.if.end42.sink.split.i_crit_edge ]
  %55 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %56, ptr noundef nonnull %.str.135.sink, i32 noundef %53) #17
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @radeon_vm_size to i32))
  store i32 4, ptr @radeon_vm_size, align 4
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.end42.sink.split.i, %if.end35.i.if.end42.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_vm_block_size to i32))
  %57 = load i32, ptr @radeon_vm_block_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %57)
  %cmp43.i = icmp eq i32 %57, -1
  br i1 %cmp43.i, label %if.then45.i, label %if.else61.i

if.then45.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_vm_size to i32))
  %58 = load i32, ptr @radeon_vm_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i.i.i = icmp eq i32 %58, 0
  %59 = tail call i32 @llvm.ctlz.i32(i32 %58, i1 true) #14, !range !269
  %sub.i.op.i.i = xor i32 %59, 31
  %sub.i.i = select i1 %tobool.not.i.i.i, i32 -1, i32 %sub.i.op.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %58)
  %cmp54.i = icmp slt i32 %58, 9
  %add59.i = add nsw i32 %sub.i.i, 21
  %div99.i = lshr i32 %add59.i, 1
  %sub57.i = add nsw i32 %sub.i.i, 9
  %storemerge.i = select i1 %cmp54.i, i32 %sub57.i, i32 %div99.i
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @radeon_vm_block_size to i32))
  store i32 %storemerge.i, ptr @radeon_vm_block_size, align 4
  br label %if.end69.i

if.else61.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %57)
  %cmp62.i = icmp slt i32 %57, 9
  br i1 %cmp62.i, label %if.end69.thread.i, label %if.else61.i.if.end69.i_crit_edge

if.else61.i.if.end69.i_crit_edge:                 ; preds = %if.else61.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69.i

if.end69.thread.i:                                ; preds = %if.else61.i
  call void @__sanitizer_cov_trace_pc() #16
  %60 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %61, ptr noundef nonnull @.str.138, i32 noundef %57) #17
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @radeon_vm_block_size to i32))
  store i32 9, ptr @radeon_vm_block_size, align 4
  br label %lor.lhs.false.i

if.end69.i:                                       ; preds = %if.else61.i.if.end69.i_crit_edge, %if.then45.i
  %62 = phi i32 [ %57, %if.else61.i.if.end69.i_crit_edge ], [ %storemerge.i, %if.then45.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %62)
  %cmp70.i = icmp sgt i32 %62, 24
  br i1 %cmp70.i, label %if.end69.i.do.end78.i_crit_edge, label %if.end69.i.lor.lhs.false.i_crit_edge

if.end69.i.lor.lhs.false.i_crit_edge:             ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false.i

if.end69.i.do.end78.i_crit_edge:                  ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end78.i

lor.lhs.false.i:                                  ; preds = %if.end69.i.lor.lhs.false.i_crit_edge, %if.end69.thread.i
  %63 = phi i32 [ 9, %if.end69.thread.i ], [ %62, %if.end69.i.lor.lhs.false.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_vm_size to i32))
  %64 = load i32, ptr @radeon_vm_size, align 4
  %mul.i = shl i32 %64, 10
  %conv72.i = sext i32 %mul.i to i64
  %sh_prom.i = zext i32 %63 to i64
  %conv72.highbits.i = lshr i64 %conv72.i, %sh_prom.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %conv72.highbits.i)
  %cmp74.i = icmp eq i64 %conv72.highbits.i, 0
  br i1 %cmp74.i, label %lor.lhs.false.i.do.end78.i_crit_edge, label %lor.lhs.false.i.radeon_check_arguments.exit_crit_edge

lor.lhs.false.i.radeon_check_arguments.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %radeon_check_arguments.exit

lor.lhs.false.i.do.end78.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end78.i

do.end78.i:                                       ; preds = %lor.lhs.false.i.do.end78.i_crit_edge, %if.end69.i.do.end78.i_crit_edge
  %65 = phi i32 [ %63, %lor.lhs.false.i.do.end78.i_crit_edge ], [ %62, %if.end69.i.do.end78.i_crit_edge ]
  %66 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %67, ptr noundef nonnull @.str.141, i32 noundef %65) #17
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @radeon_vm_block_size to i32))
  store i32 9, ptr @radeon_vm_block_size, align 4
  br label %radeon_check_arguments.exit

radeon_check_arguments.exit:                      ; preds = %do.end78.i, %lor.lhs.false.i.radeon_check_arguments.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_vm_size to i32))
  %68 = load i32, ptr @radeon_vm_size, align 4
  %shl = shl i32 %68, 18
  %max_pfn = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 100, i32 1
  %69 = ptrtoint ptr %max_pfn to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %shl, ptr %max_pfn, align 8
  %call42 = tail call i32 @radeon_asic_init(ptr noundef %rdev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %radeon_check_arguments.exit.cleanup_crit_edge

radeon_check_arguments.exit.cleanup_crit_edge:    ; preds = %radeon_check_arguments.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end45:                                         ; preds = %radeon_check_arguments.exit
  %70 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %71)
  %cmp47 = icmp ugt i32 %71, 15
  br i1 %cmp47, label %land.lhs.true, label %if.end45.if.end55_crit_edge

if.end45.if.end55_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55

land.lhs.true:                                    ; preds = %if.end45
  %72 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %flags4, align 8
  %and50 = and i32 %73, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %land.lhs.true.if.end55_crit_edge, label %if.then52

land.lhs.true.if.end55_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55

if.then52:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %and54 = and i32 %73, -524289
  %74 = ptrtoint ptr %flags4 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %and54, ptr %flags4, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %land.lhs.true.if.end55_crit_edge, %if.end45.if.end55_crit_edge
  %75 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flags4, align 8
  %and57 = and i32 %76, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end55.if.end63_crit_edge, label %land.lhs.true59

if.end55.if.end63_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63

land.lhs.true59:                                  ; preds = %if.end55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_agpmode to i32))
  %77 = load i32, ptr @radeon_agpmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %77)
  %cmp60 = icmp eq i32 %77, -1
  br i1 %cmp60, label %if.then62, label %land.lhs.true59.if.end63_crit_edge

land.lhs.true59.if.end63_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63

if.then62:                                        ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @radeon_agp_disable(ptr noundef %rdev) #14
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %land.lhs.true59.if.end63_crit_edge, %if.end55.if.end63_crit_edge
  %78 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %79)
  %cmp65 = icmp ugt i32 %79, 49
  br i1 %cmp65, label %if.then67, label %if.else

if.then67:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  %mc_mask = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 16
  %80 = ptrtoint ptr %mc_mask to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 1099511627775, ptr %mc_mask, align 8
  br label %if.end79

if.else:                                          ; preds = %if.end63
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %79)
  %cmp70 = icmp ugt i32 %79, 38
  %mc_mask74 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 16
  br i1 %cmp70, label %if.then72, label %if.else75

if.then72:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %81 = ptrtoint ptr %mc_mask74 to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 68719476735, ptr %mc_mask74, align 8
  br label %if.end79

if.else75:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %82 = ptrtoint ptr %mc_mask74 to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 4294967295, ptr %mc_mask74, align 8
  br label %if.end79

if.end79:                                         ; preds = %if.else75, %if.then72, %if.then67
  %83 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %flags4, align 8
  %and81 = and i32 %84, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  %spec.store.select = select i1 %tobool82.not, i32 40, i32 32
  %and86 = and i32 %84, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %79)
  %cmp90 = icmp ult i32 %79, 21
  %spec.select = select i1 %cmp90, i32 32, i32 %spec.store.select
  %dma_bits.0 = select i1 %tobool87.not, i32 %spec.store.select, i32 %spec.select
  %85 = ptrtoint ptr %pdev3 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pdev3, align 8
  %dev95 = getelementptr inbounds %struct.pci_dev, ptr %86, i32 0, i32 44
  %sh_prom = zext i32 %dma_bits.0 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub = xor i64 %notmask, -1
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev95, i64 noundef %sub) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i549 = icmp eq i32 %call.i, 0
  br i1 %cmp.i549, label %if.end107, label %do.end104

do.end104:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #16
  %call106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #17
  br label %cleanup

if.end107:                                        ; preds = %if.end79
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev95, i64 noundef %sub) #14
  %call108 = tail call zeroext i1 @drm_need_swiotlb(i32 noundef %dma_bits.0) #14
  %need_swiotlb = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 65
  %frombool = zext i1 %call108 to i8
  %87 = ptrtoint ptr %need_swiotlb to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %frombool, ptr %need_swiotlb, align 1
  %mmio_idx_lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 19
  tail call void @__raw_spin_lock_init(ptr noundef %mmio_idx_lock, ptr noundef nonnull @.str.66, ptr noundef nonnull @radeon_device_init.__key.65, i16 noundef signext 3) #14
  %smc_idx_lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 20
  tail call void @__raw_spin_lock_init(ptr noundef %smc_idx_lock, ptr noundef nonnull @.str.68, ptr noundef nonnull @radeon_device_init.__key.67, i16 noundef signext 3) #14
  %pll_idx_lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 21
  tail call void @__raw_spin_lock_init(ptr noundef %pll_idx_lock, ptr noundef nonnull @.str.70, ptr noundef nonnull @radeon_device_init.__key.69, i16 noundef signext 3) #14
  %mc_idx_lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 22
  tail call void @__raw_spin_lock_init(ptr noundef %mc_idx_lock, ptr noundef nonnull @.str.72, ptr noundef nonnull @radeon_device_init.__key.71, i16 noundef signext 3) #14
  %pcie_idx_lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 23
  tail call void @__raw_spin_lock_init(ptr noundef %pcie_idx_lock, ptr noundef nonnull @.str.74, ptr noundef nonnull @radeon_device_init.__key.73, i16 noundef signext 3) #14
  %pciep_idx_lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 24
  tail call void @__raw_spin_lock_init(ptr noundef %pciep_idx_lock, ptr noundef nonnull @.str.76, ptr noundef nonnull @radeon_device_init.__key.75, i16 noundef signext 3) #14
  %pif_idx_lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 25
  tail call void @__raw_spin_lock_init(ptr noundef %pif_idx_lock, ptr noundef nonnull @.str.78, ptr noundef nonnull @radeon_device_init.__key.77, i16 noundef signext 3) #14
  %cg_idx_lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 26
  tail call void @__raw_spin_lock_init(ptr noundef %cg_idx_lock, ptr noundef nonnull @.str.80, ptr noundef nonnull @radeon_device_init.__key.79, i16 noundef signext 3) #14
  %uvd_idx_lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 27
  tail call void @__raw_spin_lock_init(ptr noundef %uvd_idx_lock, ptr noundef nonnull @.str.82, ptr noundef nonnull @radeon_device_init.__key.81, i16 noundef signext 3) #14
  %rcu_idx_lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 28
  tail call void @__raw_spin_lock_init(ptr noundef %rcu_idx_lock, ptr noundef nonnull @.str.84, ptr noundef nonnull @radeon_device_init.__key.83, i16 noundef signext 3) #14
  %didt_idx_lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 29
  tail call void @__raw_spin_lock_init(ptr noundef %didt_idx_lock, ptr noundef nonnull @.str.86, ptr noundef nonnull @radeon_device_init.__key.85, i16 noundef signext 3) #14
  %end_idx_lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 30
  tail call void @__raw_spin_lock_init(ptr noundef %end_idx_lock, ptr noundef nonnull @.str.88, ptr noundef nonnull @radeon_device_init.__key.87, i16 noundef signext 3) #14
  %88 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %89)
  %cmp158 = icmp ugt i32 %89, 56
  %90 = ptrtoint ptr %pdev3 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pdev3, align 8
  br i1 %cmp158, label %if.then160, label %if.else181

if.then160:                                       ; preds = %if.end107
  %arrayidx162 = getelementptr %struct.pci_dev, ptr %91, i32 0, i32 47, i32 5
  %92 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx162, align 8
  %rmmio_base = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 17
  %94 = ptrtoint ptr %rmmio_base to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %rmmio_base, align 4
  %end = getelementptr %struct.pci_dev, ptr %91, i32 0, i32 47, i32 5, i32 1
  %95 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp166 = icmp eq i32 %96, 0
  br i1 %cmp166, label %if.then160.if.end208_crit_edge, label %if.then160.if.end208.sink.split_crit_edge

if.then160.if.end208.sink.split_crit_edge:        ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end208.sink.split

if.then160.if.end208_crit_edge:                   ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end208

if.else181:                                       ; preds = %if.end107
  %arrayidx184 = getelementptr %struct.pci_dev, ptr %91, i32 0, i32 47, i32 2
  %97 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx184, align 8
  %rmmio_base186 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 17
  %99 = ptrtoint ptr %rmmio_base186 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %rmmio_base186, align 4
  %end190 = getelementptr %struct.pci_dev, ptr %91, i32 0, i32 47, i32 2, i32 1
  %100 = ptrtoint ptr %end190 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %end190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp191 = icmp eq i32 %101, 0
  br i1 %cmp191, label %if.else181.if.end208_crit_edge, label %if.else181.if.end208.sink.split_crit_edge

if.else181.if.end208.sink.split_crit_edge:        ; preds = %if.else181
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end208.sink.split

if.else181.if.end208_crit_edge:                   ; preds = %if.else181
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end208

if.end208.sink.split:                             ; preds = %if.else181.if.end208.sink.split_crit_edge, %if.then160.if.end208.sink.split_crit_edge
  %arrayidx184.sink = phi ptr [ %arrayidx162, %if.then160.if.end208.sink.split_crit_edge ], [ %arrayidx184, %if.else181.if.end208.sink.split_crit_edge ]
  %.sink573 = phi i32 [ %96, %if.then160.if.end208.sink.split_crit_edge ], [ %101, %if.else181.if.end208.sink.split_crit_edge ]
  %102 = ptrtoint ptr %arrayidx184.sink to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx184.sink, align 8
  %sub203 = add i32 %.sink573, 1
  %add204 = sub i32 %sub203, %103
  br label %if.end208

if.end208:                                        ; preds = %if.end208.sink.split, %if.else181.if.end208_crit_edge, %if.then160.if.end208_crit_edge
  %cond206.sink = phi i32 [ 0, %if.then160.if.end208_crit_edge ], [ 0, %if.else181.if.end208_crit_edge ], [ %add204, %if.end208.sink.split ]
  %rmmio_size207 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %104 = ptrtoint ptr %rmmio_size207 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %cond206.sink, ptr %rmmio_size207, align 8
  %rmmio_base209 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 17
  %105 = ptrtoint ptr %rmmio_base209 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %rmmio_base209, align 4
  %call211 = tail call ptr @ioremap(i32 noundef %106, i32 noundef %cond206.sink) #14
  %rmmio = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %107 = ptrtoint ptr %rmmio to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call211, ptr %rmmio, align 4
  %cmp213 = icmp eq ptr %call211, null
  br i1 %cmp213, label %if.end208.cleanup_crit_edge, label %if.end216

if.end208.cleanup_crit_edge:                      ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end216:                                        ; preds = %if.end208
  %108 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %109)
  %cmp218 = icmp ugt i32 %109, 56
  br i1 %cmp218, label %if.then220, label %if.end216.if.end222_crit_edge

if.end216.if.end222_crit_edge:                    ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end222

if.then220:                                       ; preds = %if.end216
  %110 = ptrtoint ptr %pdev3 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pdev3, align 8
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %111, i32 0, i32 47, i32 2
  %112 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx.i, align 8
  %doorbell.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 46
  %114 = ptrtoint ptr %doorbell.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %doorbell.i, align 8
  %end.i = getelementptr %struct.pci_dev, ptr %111, i32 0, i32 47, i32 2, i32 1
  %115 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp.i551 = icmp eq i32 %116, 0
  br i1 %cmp.i551, label %.thread13.i, label %cond.end.i

.thread13.i:                                      ; preds = %if.then220
  call void @__sanitizer_cov_trace_pc() #16
  %size3.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 46, i32 1
  %117 = ptrtoint ptr %size3.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %size3.i, align 4
  %num_doorbells16.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 46, i32 3
  %118 = ptrtoint ptr %num_doorbells16.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %num_doorbells16.i, align 4
  br label %if.end222

cond.end.i:                                       ; preds = %if.then220
  %119 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx.i, align 8
  %sub.i552 = sub i32 %116, %120
  %add.i = add i32 %sub.i552, 1
  %size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 46, i32 1
  %121 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %add.i, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i)
  %cmp15.i = icmp ult i32 %add.i, 4096
  br i1 %cmp15.i, label %123, label %.thread.i

.thread.i:                                        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %num_doorbells10.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 46, i32 3
  %122 = ptrtoint ptr %num_doorbells10.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 1024, ptr %num_doorbells10.i, align 4
  br label %if.end.i555

123:                                              ; preds = %cond.end.i
  %div1.i = lshr i32 %add.i, 2
  %num_doorbells.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 46, i32 3
  %124 = ptrtoint ptr %num_doorbells.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %div1.i, ptr %num_doorbells.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add.i)
  %cmp23.i = icmp ult i32 %add.i, 4
  br i1 %cmp23.i, label %.if.end222_crit_edge, label %.if.end.i555_crit_edge

.if.end.i555_crit_edge:                           ; preds = %123
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i555

.if.end222_crit_edge:                             ; preds = %123
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end222

if.end.i555:                                      ; preds = %.if.end.i555_crit_edge, %.thread.i
  %125 = phi i32 [ 1024, %.thread.i ], [ %div1.i, %.if.end.i555_crit_edge ]
  %mul.i553 = shl nuw nsw i32 %125, 2
  %call.i554 = tail call ptr @ioremap(i32 noundef %113, i32 noundef %mul.i553) #14
  %ptr.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 46, i32 2
  %126 = ptrtoint ptr %ptr.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %call.i554, ptr %ptr.i, align 8
  %cmp31.i = icmp eq ptr %call.i554, null
  br i1 %cmp31.i, label %if.end.i555.if.end222_crit_edge, label %do.end.i556

if.end.i555.if.end222_crit_edge:                  ; preds = %if.end.i555
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end222

do.end.i556:                                      ; preds = %if.end.i555
  call void @__sanitizer_cov_trace_pc() #16
  %127 = ptrtoint ptr %doorbell.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %doorbell.i, align 8
  %call37.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143, i32 noundef %128) #17
  %129 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %size.i, align 4
  %call43.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, i32 noundef %130) #17
  %used.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 46, i32 4
  %131 = call ptr @memset(ptr %used.i, i32 0, i32 128)
  br label %if.end222

if.end222:                                        ; preds = %do.end.i556, %if.end.i555.if.end222_crit_edge, %.if.end222_crit_edge, %.thread13.i, %if.end216.if.end222_crit_edge
  %132 = ptrtoint ptr %pdev3 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %pdev3, align 8
  %flags230 = getelementptr %struct.pci_dev, ptr %133, i32 0, i32 47, i32 0, i32 3
  %134 = ptrtoint ptr %flags230 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %flags230, align 4
  %and231 = and i32 %135, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and231)
  %tobool232.not = icmp eq i32 %and231, 0
  br i1 %tobool232.not, label %for.inc258, label %if.end222.if.then233_crit_edge

if.end222.if.then233_crit_edge:                   ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then233

if.then233:                                       ; preds = %for.inc258.15.if.then233_crit_edge, %for.inc258.14.if.then233_crit_edge, %for.inc258.13.if.then233_crit_edge, %for.inc258.12.if.then233_crit_edge, %for.inc258.11.if.then233_crit_edge, %for.inc258.10.if.then233_crit_edge, %for.inc258.9.if.then233_crit_edge, %for.inc258.8.if.then233_crit_edge, %for.inc258.7.if.then233_crit_edge, %for.inc258.6.if.then233_crit_edge, %for.inc258.5.if.then233_crit_edge, %for.inc258.4.if.then233_crit_edge, %for.inc258.3.if.then233_crit_edge, %for.inc258.2.if.then233_crit_edge, %for.inc258.1.if.then233_crit_edge, %for.inc258.if.then233_crit_edge, %if.end222.if.then233_crit_edge
  %i.1569.lcssa = phi i32 [ 0, %if.end222.if.then233_crit_edge ], [ 1, %for.inc258.if.then233_crit_edge ], [ 2, %for.inc258.1.if.then233_crit_edge ], [ 3, %for.inc258.2.if.then233_crit_edge ], [ 4, %for.inc258.3.if.then233_crit_edge ], [ 5, %for.inc258.4.if.then233_crit_edge ], [ 6, %for.inc258.5.if.then233_crit_edge ], [ 7, %for.inc258.6.if.then233_crit_edge ], [ 8, %for.inc258.7.if.then233_crit_edge ], [ 9, %for.inc258.8.if.then233_crit_edge ], [ 10, %for.inc258.9.if.then233_crit_edge ], [ 11, %for.inc258.10.if.then233_crit_edge ], [ 12, %for.inc258.11.if.then233_crit_edge ], [ 13, %for.inc258.12.if.then233_crit_edge ], [ 14, %for.inc258.13.if.then233_crit_edge ], [ 15, %for.inc258.14.if.then233_crit_edge ], [ 16, %for.inc258.15.if.then233_crit_edge ]
  %end237 = getelementptr %struct.pci_dev, ptr %133, i32 0, i32 47, i32 %i.1569.lcssa, i32 1
  %136 = ptrtoint ptr %end237 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %end237, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %cmp238 = icmp eq i32 %137, 0
  br i1 %cmp238, label %if.then233.cond.end252_crit_edge, label %cond.false241

if.then233.cond.end252_crit_edge:                 ; preds = %if.then233
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end252

cond.false241:                                    ; preds = %if.then233
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx229.le = getelementptr %struct.pci_dev, ptr %133, i32 0, i32 47, i32 %i.1569.lcssa
  %138 = ptrtoint ptr %arrayidx229.le to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx229.le, align 8
  %sub250 = add i32 %137, 1
  %add251 = sub i32 %sub250, %139
  br label %cond.end252

cond.end252:                                      ; preds = %cond.false241, %if.then233.cond.end252_crit_edge
  %cond253 = phi i32 [ %add251, %cond.false241 ], [ 0, %if.then233.cond.end252_crit_edge ]
  %rio_mem_size = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 40
  %140 = ptrtoint ptr %rio_mem_size to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %cond253, ptr %rio_mem_size, align 8
  %call256 = tail call ptr @pci_iomap(ptr noundef %133, i32 noundef %i.1569.lcssa, i32 noundef %cond253) #14
  %rio_mem = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 39
  %141 = ptrtoint ptr %rio_mem to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %call256, ptr %rio_mem, align 4
  br label %for.end260

for.inc258:                                       ; preds = %if.end222
  %flags230.1 = getelementptr %struct.pci_dev, ptr %133, i32 0, i32 47, i32 1, i32 3
  %142 = ptrtoint ptr %flags230.1 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %flags230.1, align 4
  %and231.1 = and i32 %143, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and231.1)
  %tobool232.not.1 = icmp eq i32 %and231.1, 0
  br i1 %tobool232.not.1, label %for.inc258.1, label %for.inc258.if.then233_crit_edge

for.inc258.if.then233_crit_edge:                  ; preds = %for.inc258
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then233

for.inc258.1:                                     ; preds = %for.inc258
  %flags230.2 = getelementptr %struct.pci_dev, ptr %133, i32 0, i32 47, i32 2, i32 3
  %144 = ptrtoint ptr %flags230.2 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %flags230.2, align 4
  %and231.2 = and i32 %145, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and231.2)
  %tobool232.not.2 = icmp eq i32 %and231.2, 0
  br i1 %tobool232.not.2, label %for.inc258.2, label %for.inc258.1.if.then233_crit_edge

for.inc258.1.if.then233_crit_edge:                ; preds = %for.inc258.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then233

for.inc258.2:                                     ; preds = %for.inc258.1
  %flags230.3 = getelementptr %struct.pci_dev, ptr %133, i32 0, i32 47, i32 3, i32 3
  %146 = ptrtoint ptr %flags230.3 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %flags230.3, align 4
  %and231.3 = and i32 %147, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and231.3)
  %tobool232.not.3 = icmp eq i32 %and231.3, 0
  br i1 %tobool232.not.3, label %for.inc258.3, label %for.inc258.2.if.then233_crit_edge

for.inc258.2.if.then233_crit_edge:                ; preds = %for.inc258.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then233

for.inc258.3:                                     ; preds = %for.inc258.2
  %flags230.4 = getelementptr %struct.pci_dev, ptr %133, i32 0, i32 47, i32 4, i32 3
  %148 = ptrtoint ptr %flags230.4 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %flags230.4, align 4
  %and231.4 = and i32 %149, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and231.4)
  %tobool232.not.4 = icmp eq i32 %and231.4, 0
  br i1 %tobool232.not.4, label %for.inc258.4, label %for.inc258.3.if.then233_crit_edge

for.inc258.3.if.then233_crit_edge:                ; preds = %for.inc258.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then233

for.inc258.4:                                     ; preds = %for.inc258.3
  %flags230.5 = getelementptr %struct.pci_dev, ptr %133, i32 0, i32 47, i32 5, i32 3
  %150 = ptrtoint ptr %flags230.5 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %flags230.5, align 4
  %and231.5 = and i32 %151, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and231.5)
  %tobool232.not.5 = icmp eq i32 %and231.5, 0
  br i1 %tobool232.not.5, label %for.inc258.5, label %for.inc258.4.if.then233_crit_edge

for.inc258.4.if.then233_crit_edge:                ; preds = %for.inc258.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then233

for.inc258.5:                                     ; preds = %for.inc258.4
  %flags230.6 = getelementptr %struct.pci_dev, ptr %133, i32 0, i32 47, i32 6, i32 3
  %152 = ptrtoint ptr %flags230.6 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %flags230.6, align 4
  %and231.6 = and i32 %153, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and231.6)
  %tobool232.not.6 = icmp eq i32 %and231.6, 0
  br i1 %tobool232.not.6, label %for.inc258.6, label %for.inc258.5.if.then233_crit_edge

for.inc258.5.if.then233_crit_edge:                ; preds = %for.inc258.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then233

for.inc258.6:                                     ; preds = %for.inc258.5
  %flags230.7 = getelementptr %struct.pci_dev, ptr %133, i32 0, i32 47, i32 7, i32 3
  %154 = ptrtoint ptr %flags230.7 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %flags230.7, align 4
  %and231.7 = and i32 %155, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and231.7)
  %tobool232.not.7 = icmp eq i32 %and231.7, 0
  br i1 %tobool232.not.7, label %for.inc258.7, label %for.inc258.6.if.then233_crit_edge

for.inc258.6.if.then233_crit_edge:                ; preds = %for.inc258.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then233

for.inc258.7:                                     ; preds = %for.inc258.6
  %flags230.8 = getelementptr %struct.pci_dev, ptr %133, i32 0, i32 47, i32 8, i32 3
  %156 = ptrtoint ptr %flags230.8 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %flags230.8, align 4
  %and231.8 = and i32 %157, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and231.8)
  %tobool232.not.8 = icmp eq i32 %and231.8, 0
  br i1 %tobool232.not.8, label %for.inc258.8, label %for.inc258.7.if.then233_crit_edge

for.inc258.7.if.then233_crit_edge:                ; preds = %for.inc258.7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then233

for.inc258.8:                                     ; preds = %for.inc258.7
  %flags230.9 = getelementptr %struct.pci_dev, ptr %133, i32 0, i32 47, i32 9, i32 3
  %158 = ptrtoint ptr %flags230.9 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %flags230.9, align 4
  %and231.9 = and i32 %159, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and231.9)
  %tobool232.not.9 = icmp eq i32 %and231.9, 0
  br i1 %tobool232.not.9, label %for.inc258.9, label %for.inc258.8.if.then233_crit_edge

for.inc258.8.if.then233_crit_edge:                ; preds = %for.inc258.8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then233

for.inc258.9:                                     ; preds = %for.inc258.8
  %flags230.10 = getelementptr %struct.pci_dev, ptr %133, i32 0, i32 47, i32 10, i32 3
  %160 = ptrtoint ptr %flags230.10 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %flags230.10, align 4
  %and231.10 = and i32 %161, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and231.10)
  %tobool232.not.10 = icmp eq i32 %and231.10, 0
  br i1 %tobool232.not.10, label %for.inc258.10, label %for.inc258.9.if.then233_crit_edge

for.inc258.9.if.then233_crit_edge:                ; preds = %for.inc258.9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then233

for.inc258.10:                                    ; preds = %for.inc258.9
  %flags230.11 = getelementptr %struct.pci_dev, ptr %133, i32 0, i32 47, i32 11, i32 3
  %162 = ptrtoint ptr %flags230.11 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %flags230.11, align 4
  %and231.11 = and i32 %163, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and231.11)
  %tobool232.not.11 = icmp eq i32 %and231.11, 0
  br i1 %tobool232.not.11, label %for.inc258.11, label %for.inc258.10.if.then233_crit_edge

for.inc258.10.if.then233_crit_edge:               ; preds = %for.inc258.10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then233

for.inc258.11:                                    ; preds = %for.inc258.10
  %flags230.12 = getelementptr %struct.pci_dev, ptr %133, i32 0, i32 47, i32 12, i32 3
  %164 = ptrtoint ptr %flags230.12 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %flags230.12, align 4
  %and231.12 = and i32 %165, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and231.12)
  %tobool232.not.12 = icmp eq i32 %and231.12, 0
  br i1 %tobool232.not.12, label %for.inc258.12, label %for.inc258.11.if.then233_crit_edge

for.inc258.11.if.then233_crit_edge:               ; preds = %for.inc258.11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then233

for.inc258.12:                                    ; preds = %for.inc258.11
  %flags230.13 = getelementptr %struct.pci_dev, ptr %133, i32 0, i32 47, i32 13, i32 3
  %166 = ptrtoint ptr %flags230.13 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %flags230.13, align 4
  %and231.13 = and i32 %167, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and231.13)
  %tobool232.not.13 = icmp eq i32 %and231.13, 0
  br i1 %tobool232.not.13, label %for.inc258.13, label %for.inc258.12.if.then233_crit_edge

for.inc258.12.if.then233_crit_edge:               ; preds = %for.inc258.12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then233

for.inc258.13:                                    ; preds = %for.inc258.12
  %flags230.14 = getelementptr %struct.pci_dev, ptr %133, i32 0, i32 47, i32 14, i32 3
  %168 = ptrtoint ptr %flags230.14 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %flags230.14, align 4
  %and231.14 = and i32 %169, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and231.14)
  %tobool232.not.14 = icmp eq i32 %and231.14, 0
  br i1 %tobool232.not.14, label %for.inc258.14, label %for.inc258.13.if.then233_crit_edge

for.inc258.13.if.then233_crit_edge:               ; preds = %for.inc258.13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then233

for.inc258.14:                                    ; preds = %for.inc258.13
  %flags230.15 = getelementptr %struct.pci_dev, ptr %133, i32 0, i32 47, i32 15, i32 3
  %170 = ptrtoint ptr %flags230.15 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %flags230.15, align 4
  %and231.15 = and i32 %171, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and231.15)
  %tobool232.not.15 = icmp eq i32 %and231.15, 0
  br i1 %tobool232.not.15, label %for.inc258.15, label %for.inc258.14.if.then233_crit_edge

for.inc258.14.if.then233_crit_edge:               ; preds = %for.inc258.14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then233

for.inc258.15:                                    ; preds = %for.inc258.14
  %flags230.16 = getelementptr %struct.pci_dev, ptr %133, i32 0, i32 47, i32 16, i32 3
  %172 = ptrtoint ptr %flags230.16 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %flags230.16, align 4
  %and231.16 = and i32 %173, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and231.16)
  %tobool232.not.16 = icmp eq i32 %and231.16, 0
  br i1 %tobool232.not.16, label %for.inc258.15.for.end260_crit_edge, label %for.inc258.15.if.then233_crit_edge

for.inc258.15.if.then233_crit_edge:               ; preds = %for.inc258.15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then233

for.inc258.15.for.end260_crit_edge:               ; preds = %for.inc258.15
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end260

for.end260:                                       ; preds = %for.inc258.15.for.end260_crit_edge, %cond.end252
  %rio_mem261 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 39
  %174 = ptrtoint ptr %rio_mem261 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %rio_mem261, align 4
  %cmp262 = icmp eq ptr %175, null
  br i1 %cmp262, label %if.then264, label %for.end260.if.end265_crit_edge

for.end260.if.end265_crit_edge:                   ; preds = %for.end260
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end265

if.then264:                                       ; preds = %for.end260
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.89) #14
  br label %if.end265

if.end265:                                        ; preds = %if.then264, %for.end260.if.end265_crit_edge
  %176 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %flags4, align 8
  %and267 = and i32 %177, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and267)
  %tobool268.not = icmp eq i32 %and267, 0
  br i1 %tobool268.not, label %if.end265.if.end270_crit_edge, label %if.then269

if.end265.if.end270_crit_edge:                    ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end270

if.then269:                                       ; preds = %if.end265
  %178 = ptrtoint ptr %pdev3 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %pdev3, align 8
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %179, i32 0, i32 7
  %180 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %vendor.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4098, i16 %181)
  %cmp1.i = icmp eq i16 %181, 4098
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.then269.while.end.i_crit_edge

if.then269.while.end.i_crit_edge:                 ; preds = %if.then269
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

land.lhs.true.i:                                  ; preds = %if.then269
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %179, i32 0, i32 8
  %182 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 26464, i16 %183)
  %cmp6.i = icmp eq i16 %183, 26464
  br i1 %cmp6.i, label %land.lhs.true8.i, label %land.lhs.true.i.land.lhs.true.1.i_crit_edge

land.lhs.true.i.land.lhs.true.1.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.1.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %subsystem_vendor.i = getelementptr inbounds %struct.pci_dev, ptr %179, i32 0, i32 9
  %184 = ptrtoint ptr %subsystem_vendor.i to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %subsystem_vendor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4133, i16 %185)
  %cmp11.i = icmp eq i16 %185, 4133
  br i1 %cmp11.i, label %land.lhs.true13.i, label %land.lhs.true8.i.land.lhs.true.1.ithread-pre-split_crit_edge

land.lhs.true8.i.land.lhs.true.1.ithread-pre-split_crit_edge: ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.1.ithread-pre-split

land.lhs.true13.i:                                ; preds = %land.lhs.true8.i
  %subsystem_device.i = getelementptr inbounds %struct.pci_dev, ptr %179, i32 0, i32 10
  %186 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %subsystem_device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1650, i16 %187)
  %cmp16.i = icmp eq i16 %187, 1650
  br i1 %cmp16.i, label %land.lhs.true13.i.if.then.i558_crit_edge, label %land.lhs.true13.i.land.lhs.true.1.ithread-pre-split_crit_edge

land.lhs.true13.i.land.lhs.true.1.ithread-pre-split_crit_edge: ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.1.ithread-pre-split

land.lhs.true13.i.if.then.i558_crit_edge:         ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i558

if.then.i558:                                     ; preds = %land.lhs.true13.4.i.if.then.i558_crit_edge, %land.lhs.true13.3.i.if.then.i558_crit_edge, %land.lhs.true13.2.i.if.then.i558_crit_edge, %land.lhs.true13.1.i.if.then.i558_crit_edge, %land.lhs.true13.i.if.then.i558_crit_edge
  %p.045.lcssa47.i = phi ptr [ @radeon_px_quirk_list, %land.lhs.true13.i.if.then.i558_crit_edge ], [ getelementptr inbounds ([6 x %struct.radeon_px_quirk], ptr @radeon_px_quirk_list, i32 0, i32 1), %land.lhs.true13.1.i.if.then.i558_crit_edge ], [ getelementptr inbounds ([6 x %struct.radeon_px_quirk], ptr @radeon_px_quirk_list, i32 0, i32 2), %land.lhs.true13.2.i.if.then.i558_crit_edge ], [ getelementptr inbounds ([6 x %struct.radeon_px_quirk], ptr @radeon_px_quirk_list, i32 0, i32 3), %land.lhs.true13.3.i.if.then.i558_crit_edge ], [ getelementptr inbounds ([6 x %struct.radeon_px_quirk], ptr @radeon_px_quirk_list, i32 0, i32 4), %land.lhs.true13.4.i.if.then.i558_crit_edge ]
  %px_quirk_flags.i = getelementptr inbounds %struct.radeon_px_quirk, ptr %p.045.lcssa47.i, i32 0, i32 4
  %188 = ptrtoint ptr %px_quirk_flags.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %px_quirk_flags.i, align 4
  %px_quirk_flags18.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 113
  %190 = ptrtoint ptr %px_quirk_flags18.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %189, ptr %px_quirk_flags18.i, align 8
  br label %while.end.i

land.lhs.true.1.ithread-pre-split:                ; preds = %land.lhs.true13.i.land.lhs.true.1.ithread-pre-split_crit_edge, %land.lhs.true8.i.land.lhs.true.1.ithread-pre-split_crit_edge
  %191 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %191)
  %.pr = load i16, ptr %device.i, align 2
  br label %land.lhs.true.1.i

land.lhs.true.1.i:                                ; preds = %land.lhs.true.1.ithread-pre-split, %land.lhs.true.i.land.lhs.true.1.i_crit_edge
  %192 = phi i16 [ %.pr, %land.lhs.true.1.ithread-pre-split ], [ %183, %land.lhs.true.i.land.lhs.true.1.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 26433, i16 %192)
  %cmp6.1.i = icmp eq i16 %192, 26433
  br i1 %cmp6.1.i, label %land.lhs.true8.1.i, label %land.lhs.true.1.i.land.lhs.true.2.i_crit_edge

land.lhs.true.1.i.land.lhs.true.2.i_crit_edge:    ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.2.i

land.lhs.true8.1.i:                               ; preds = %land.lhs.true.1.i
  %subsystem_vendor.1.i = getelementptr inbounds %struct.pci_dev, ptr %179, i32 0, i32 9
  %193 = ptrtoint ptr %subsystem_vendor.1.i to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %subsystem_vendor.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4163, i16 %194)
  %cmp11.1.i = icmp eq i16 %194, 4163
  br i1 %cmp11.1.i, label %land.lhs.true13.1.i, label %land.lhs.true8.1.i.land.lhs.true.2.i_crit_edge

land.lhs.true8.1.i.land.lhs.true.2.i_crit_edge:   ; preds = %land.lhs.true8.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.2.i

land.lhs.true13.1.i:                              ; preds = %land.lhs.true8.1.i
  %subsystem_device.1.i = getelementptr inbounds %struct.pci_dev, ptr %179, i32 0, i32 10
  %195 = ptrtoint ptr %subsystem_device.1.i to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %subsystem_device.1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4236, i16 %196)
  %cmp16.1.i = icmp eq i16 %196, 4236
  br i1 %cmp16.1.i, label %land.lhs.true13.1.i.if.then.i558_crit_edge, label %land.lhs.true13.1.i.land.lhs.true.2.i_crit_edge

land.lhs.true13.1.i.land.lhs.true.2.i_crit_edge:  ; preds = %land.lhs.true13.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.2.i

land.lhs.true13.1.i.if.then.i558_crit_edge:       ; preds = %land.lhs.true13.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i558

land.lhs.true.2.i:                                ; preds = %land.lhs.true13.1.i.land.lhs.true.2.i_crit_edge, %land.lhs.true8.1.i.land.lhs.true.2.i_crit_edge, %land.lhs.true.1.i.land.lhs.true.2.i_crit_edge
  %197 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 26688, i16 %198)
  %cmp6.2.i = icmp eq i16 %198, 26688
  br i1 %cmp6.2.i, label %land.lhs.true8.2.i, label %land.lhs.true.2.i.land.lhs.true.3.i_crit_edge

land.lhs.true.2.i.land.lhs.true.3.i_crit_edge:    ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.3.i

land.lhs.true8.2.i:                               ; preds = %land.lhs.true.2.i
  %subsystem_vendor.2.i = getelementptr inbounds %struct.pci_dev, ptr %179, i32 0, i32 9
  %199 = ptrtoint ptr %subsystem_vendor.2.i to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %subsystem_vendor.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4163, i16 %200)
  %cmp11.2.i = icmp eq i16 %200, 4163
  br i1 %cmp11.2.i, label %land.lhs.true13.2.i, label %land.lhs.true8.2.i.land.lhs.true.3.ithread-pre-split_crit_edge

land.lhs.true8.2.i.land.lhs.true.3.ithread-pre-split_crit_edge: ; preds = %land.lhs.true8.2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.3.ithread-pre-split

land.lhs.true13.2.i:                              ; preds = %land.lhs.true8.2.i
  %subsystem_device.2.i = getelementptr inbounds %struct.pci_dev, ptr %179, i32 0, i32 10
  %201 = ptrtoint ptr %subsystem_device.2.i to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %subsystem_device.2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8482, i16 %202)
  %cmp16.2.i = icmp eq i16 %202, 8482
  br i1 %cmp16.2.i, label %land.lhs.true13.2.i.if.then.i558_crit_edge, label %land.lhs.true13.2.i.land.lhs.true.3.ithread-pre-split_crit_edge

land.lhs.true13.2.i.land.lhs.true.3.ithread-pre-split_crit_edge: ; preds = %land.lhs.true13.2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.3.ithread-pre-split

land.lhs.true13.2.i.if.then.i558_crit_edge:       ; preds = %land.lhs.true13.2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i558

land.lhs.true.3.ithread-pre-split:                ; preds = %land.lhs.true13.2.i.land.lhs.true.3.ithread-pre-split_crit_edge, %land.lhs.true8.2.i.land.lhs.true.3.ithread-pre-split_crit_edge
  %203 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %203)
  %.pr572 = load i16, ptr %device.i, align 2
  br label %land.lhs.true.3.i

land.lhs.true.3.i:                                ; preds = %land.lhs.true.3.ithread-pre-split, %land.lhs.true.2.i.land.lhs.true.3.i_crit_edge
  %204 = phi i16 [ %.pr572, %land.lhs.true.3.ithread-pre-split ], [ %198, %land.lhs.true.2.i.land.lhs.true.3.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 26433, i16 %204)
  %cmp6.3.i = icmp eq i16 %204, 26433
  br i1 %cmp6.3.i, label %land.lhs.true8.3.i, label %land.lhs.true.3.i.land.lhs.true.4.i_crit_edge

land.lhs.true.3.i.land.lhs.true.4.i_crit_edge:    ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.4.i

land.lhs.true8.3.i:                               ; preds = %land.lhs.true.3.i
  %subsystem_vendor.3.i = getelementptr inbounds %struct.pci_dev, ptr %179, i32 0, i32 9
  %205 = ptrtoint ptr %subsystem_vendor.3.i to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %subsystem_vendor.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4163, i16 %206)
  %cmp11.3.i = icmp eq i16 %206, 4163
  br i1 %cmp11.3.i, label %land.lhs.true13.3.i, label %land.lhs.true8.3.i.land.lhs.true.4.i_crit_edge

land.lhs.true8.3.i.land.lhs.true.4.i_crit_edge:   ; preds = %land.lhs.true8.3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.4.i

land.lhs.true13.3.i:                              ; preds = %land.lhs.true8.3.i
  %subsystem_device.3.i = getelementptr inbounds %struct.pci_dev, ptr %179, i32 0, i32 10
  %207 = ptrtoint ptr %subsystem_device.3.i to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %subsystem_device.3.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8482, i16 %208)
  %cmp16.3.i = icmp eq i16 %208, 8482
  br i1 %cmp16.3.i, label %land.lhs.true13.3.i.if.then.i558_crit_edge, label %land.lhs.true13.3.i.land.lhs.true.4.i_crit_edge

land.lhs.true13.3.i.land.lhs.true.4.i_crit_edge:  ; preds = %land.lhs.true13.3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.4.i

land.lhs.true13.3.i.if.then.i558_crit_edge:       ; preds = %land.lhs.true13.3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i558

land.lhs.true.4.i:                                ; preds = %land.lhs.true13.3.i.land.lhs.true.4.i_crit_edge, %land.lhs.true8.3.i.land.lhs.true.4.i_crit_edge, %land.lhs.true.3.i.land.lhs.true.4.i_crit_edge
  %209 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 26688, i16 %210)
  %cmp6.4.i = icmp eq i16 %210, 26688
  br i1 %cmp6.4.i, label %land.lhs.true8.4.i, label %land.lhs.true.4.i.while.end.i_crit_edge

land.lhs.true.4.i.while.end.i_crit_edge:          ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

land.lhs.true8.4.i:                               ; preds = %land.lhs.true.4.i
  %subsystem_vendor.4.i = getelementptr inbounds %struct.pci_dev, ptr %179, i32 0, i32 9
  %211 = ptrtoint ptr %subsystem_vendor.4.i to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %subsystem_vendor.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4163, i16 %212)
  %cmp11.4.i = icmp eq i16 %212, 4163
  br i1 %cmp11.4.i, label %land.lhs.true13.4.i, label %land.lhs.true8.4.i.while.end.i_crit_edge

land.lhs.true8.4.i.while.end.i_crit_edge:         ; preds = %land.lhs.true8.4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

land.lhs.true13.4.i:                              ; preds = %land.lhs.true8.4.i
  %subsystem_device.4.i = getelementptr inbounds %struct.pci_dev, ptr %179, i32 0, i32 10
  %213 = ptrtoint ptr %subsystem_device.4.i to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %subsystem_device.4.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8483, i16 %214)
  %cmp16.4.i = icmp eq i16 %214, 8483
  br i1 %cmp16.4.i, label %land.lhs.true13.4.i.if.then.i558_crit_edge, label %land.lhs.true13.4.i.while.end.i_crit_edge

land.lhs.true13.4.i.while.end.i_crit_edge:        ; preds = %land.lhs.true13.4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

land.lhs.true13.4.i.if.then.i558_crit_edge:       ; preds = %land.lhs.true13.4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i558

while.end.i:                                      ; preds = %land.lhs.true13.4.i.while.end.i_crit_edge, %land.lhs.true8.4.i.while.end.i_crit_edge, %land.lhs.true.4.i.while.end.i_crit_edge, %if.then.i558, %if.then269.while.end.i_crit_edge
  %px_quirk_flags19.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 113
  %215 = ptrtoint ptr %px_quirk_flags19.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %px_quirk_flags19.i, align 8
  %and.i = and i32 %216, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool20.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool20.not.i, label %while.end.i.radeon_device_handle_px_quirks.exit_crit_edge, label %if.then21.i

while.end.i.radeon_device_handle_px_quirks.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %radeon_device_handle_px_quirks.exit

if.then21.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %and22.i = and i32 %177, -33554433
  %217 = ptrtoint ptr %flags4 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %and22.i, ptr %flags4, align 8
  br label %radeon_device_handle_px_quirks.exit

radeon_device_handle_px_quirks.exit:              ; preds = %if.then21.i, %while.end.i.radeon_device_handle_px_quirks.exit_crit_edge
  %218 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %flags4, align 8
  %and28.i = and i32 %219, -33554433
  store i32 %and28.i, ptr %flags4, align 8
  br label %if.end270

if.end270:                                        ; preds = %radeon_device_handle_px_quirks.exit, %if.end265.if.end270_crit_edge
  %220 = ptrtoint ptr %pdev3 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %pdev3, align 8
  %call272 = tail call i32 @vga_client_register(ptr noundef %221, ptr noundef nonnull @radeon_vga_set_decode) #14
  %222 = ptrtoint ptr %pdev3 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %pdev3, align 8
  %is_thunderbolt.i = getelementptr inbounds %struct.pci_dev, ptr %223, i32 0, i32 49
  %224 = ptrtoint ptr %is_thunderbolt.i to i32
  call void @__asan_loadN_noabort(i32 %224, i32 5)
  %bf.load.i = load i40, ptr %is_thunderbolt.i, align 1
  %225 = and i40 %bf.load.i, 8192
  %tobool.not.i = icmp eq i40 %225, 0
  br i1 %tobool.not.i, label %if.end270.while.cond.i_crit_edge, label %if.end270.if.end289_crit_edge

if.end270.if.end289_crit_edge:                    ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end289

if.end270.while.cond.i_crit_edge:                 ; preds = %if.end270
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end270.while.cond.i_crit_edge
  %parent.0.i = phi ptr [ %236, %while.body.i.while.cond.i_crit_edge ], [ %223, %if.end270.while.cond.i_crit_edge ]
  %is_virtfn.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %parent.0.i, i32 0, i32 49
  %226 = ptrtoint ptr %is_virtfn.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %226, i32 5)
  %bf.load.i.i.i = load i40, ptr %is_virtfn.i.i.i, align 1
  %227 = and i40 %bf.load.i.i.i, 65536
  %tobool.not.i.i.i559 = icmp eq i40 %227, 0
  br i1 %tobool.not.i.i.i559, label %while.cond.i.pci_physfn.exit.i.i_crit_edge, label %if.then.i.i.i

while.cond.i.pci_physfn.exit.i.i_crit_edge:       ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_physfn.exit.i.i

if.then.i.i.i:                                    ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  %228 = getelementptr inbounds %struct.pci_dev, ptr %parent.0.i, i32 0, i32 66
  %229 = ptrtoint ptr %228 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %228, align 8
  br label %pci_physfn.exit.i.i

pci_physfn.exit.i.i:                              ; preds = %if.then.i.i.i, %while.cond.i.pci_physfn.exit.i.i_crit_edge
  %dev.addr.0.i.i.i = phi ptr [ %230, %if.then.i.i.i ], [ %parent.0.i, %while.cond.i.pci_physfn.exit.i.i_crit_edge ]
  %bus.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.0.i.i.i, i32 0, i32 1
  %231 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %bus.i.i, align 8
  %parent.i.i.i = getelementptr inbounds %struct.pci_bus, ptr %232, i32 0, i32 1
  %233 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %parent.i.i.i, align 8
  %tobool.not.i5.i.i = icmp eq ptr %234, null
  br i1 %tobool.not.i5.i.i, label %pci_physfn.exit.i.i.if.end289_crit_edge, label %pci_upstream_bridge.exit.i

pci_physfn.exit.i.i.if.end289_crit_edge:          ; preds = %pci_physfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end289

pci_upstream_bridge.exit.i:                       ; preds = %pci_physfn.exit.i.i
  %self.i.i = getelementptr inbounds %struct.pci_bus, ptr %232, i32 0, i32 4
  %235 = ptrtoint ptr %self.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %self.i.i, align 4
  %tobool1.not.i = icmp eq ptr %236, null
  br i1 %tobool1.not.i, label %pci_upstream_bridge.exit.i.if.end289_crit_edge, label %while.body.i

pci_upstream_bridge.exit.i.if.end289_crit_edge:   ; preds = %pci_upstream_bridge.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end289

while.body.i:                                     ; preds = %pci_upstream_bridge.exit.i
  %is_thunderbolt2.i = getelementptr inbounds %struct.pci_dev, ptr %236, i32 0, i32 49
  %237 = ptrtoint ptr %is_thunderbolt2.i to i32
  call void @__asan_loadN_noabort(i32 %237, i32 5)
  %bf.load3.i = load i40, ptr %is_thunderbolt2.i, align 1
  %238 = and i40 %bf.load3.i, 8192
  %tobool7.not.i = icmp eq i40 %238, 0
  br i1 %tobool7.not.i, label %while.body.i.while.cond.i_crit_edge, label %while.body.i.if.end289_crit_edge

while.body.i.if.end289_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end289

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i

if.end289:                                        ; preds = %while.body.i.if.end289_crit_edge, %pci_upstream_bridge.exit.i.if.end289_crit_edge, %pci_physfn.exit.i.i.if.end289_crit_edge, %if.end270.if.end289_crit_edge
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %239 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %asic, align 8
  %241 = ptrtoint ptr %240 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %240, align 4
  %call290 = tail call i32 %242(ptr noundef %rdev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call290)
  %tobool291.not = icmp eq i32 %call290, 0
  br i1 %tobool291.not, label %if.end293, label %if.end289.failed_crit_edge

if.end289.failed_crit_edge:                       ; preds = %if.end289
  call void @__sanitizer_cov_trace_pc() #16
  br label %failed

if.end293:                                        ; preds = %if.end289
  tail call void @radeon_gem_debugfs_init(ptr noundef %rdev) #14
  tail call void @radeon_mst_debugfs_init(ptr noundef %rdev) #14
  %243 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %flags4, align 8
  %and295 = and i32 %244, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and295)
  %tobool296.not = icmp eq i32 %and295, 0
  br i1 %tobool296.not, label %if.end293.if.end310_crit_edge, label %land.lhs.true297

if.end293.if.end310_crit_edge:                    ; preds = %if.end293
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end310

land.lhs.true297:                                 ; preds = %if.end293
  %245 = ptrtoint ptr %accel_working to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %accel_working, align 2, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %246)
  %tobool299.not = icmp eq i8 %246, 0
  br i1 %tobool299.not, label %if.then300, label %land.lhs.true297.if.end310_crit_edge

land.lhs.true297.if.end310_crit_edge:             ; preds = %land.lhs.true297
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end310

if.then300:                                       ; preds = %land.lhs.true297
  %247 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %asic, align 8
  %asic_reset = getelementptr inbounds %struct.radeon_asic, ptr %248, i32 0, i32 5
  %249 = ptrtoint ptr %asic_reset to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %asic_reset, align 4
  %call302 = tail call i32 %250(ptr noundef %rdev, i1 noundef zeroext false) #14
  %251 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %asic, align 8
  %fini = getelementptr inbounds %struct.radeon_asic, ptr %252, i32 0, i32 1
  %253 = ptrtoint ptr %fini to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %fini, align 4
  tail call void %254(ptr noundef %rdev) #14
  tail call void @radeon_agp_disable(ptr noundef %rdev) #14
  %255 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %asic, align 8
  %257 = ptrtoint ptr %256 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %256, align 4
  %call306 = tail call i32 %258(ptr noundef %rdev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call306)
  %tobool307.not = icmp eq i32 %call306, 0
  br i1 %tobool307.not, label %if.then300.if.end310_crit_edge, label %if.then300.failed_crit_edge

if.then300.failed_crit_edge:                      ; preds = %if.then300
  call void @__sanitizer_cov_trace_pc() #16
  br label %failed

if.then300.if.end310_crit_edge:                   ; preds = %if.then300
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end310

if.end310:                                        ; preds = %if.then300.if.end310_crit_edge, %land.lhs.true297.if.end310_crit_edge, %if.end293.if.end310_crit_edge
  %call311 = tail call i32 @radeon_ib_ring_tests(ptr noundef %rdev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call311)
  %tobool312.not = icmp eq i32 %call311, 0
  br i1 %tobool312.not, label %if.end310.if.end314_crit_edge, label %if.then313

if.end310.if.end314_crit_edge:                    ; preds = %if.end310
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end314

if.then313:                                       ; preds = %if.end310
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.90, i32 noundef %call311) #14
  br label %if.end314

if.end314:                                        ; preds = %if.then313, %if.end310.if.end314_crit_edge
  %dpm_enabled = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 50
  %259 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %dpm_enabled, align 8, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %260)
  %tobool316.not = icmp eq i8 %260, 0
  br i1 %tobool316.not, label %if.end314.if.end339_crit_edge, label %land.lhs.true318

if.end314.if.end339_crit_edge:                    ; preds = %if.end314
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end339

land.lhs.true318:                                 ; preds = %if.end314
  %pm_method = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 34
  %261 = ptrtoint ptr %pm_method to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %pm_method, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %262)
  %cmp320 = icmp eq i32 %262, 2
  br i1 %cmp320, label %land.lhs.true322, label %land.lhs.true318.if.end339_crit_edge

land.lhs.true318.if.end339_crit_edge:             ; preds = %land.lhs.true318
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end339

land.lhs.true322:                                 ; preds = %land.lhs.true318
  %263 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %264)
  %cmp324 = icmp eq i32 %264, 48
  br i1 %cmp324, label %land.lhs.true326, label %land.lhs.true322.if.end339_crit_edge

land.lhs.true322.if.end339_crit_edge:             ; preds = %land.lhs.true322
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end339

land.lhs.true326:                                 ; preds = %land.lhs.true322
  %265 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %flags4, align 8
  %and328 = and i32 %266, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and328)
  %tobool329.not = icmp eq i32 %and328, 0
  br i1 %tobool329.not, label %land.lhs.true326.if.end339_crit_edge, label %if.then330

land.lhs.true326.if.end339_crit_edge:             ; preds = %land.lhs.true326
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end339

if.then330:                                       ; preds = %land.lhs.true326
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_lock_nested(ptr noundef %pm, i32 noundef 0) #14
  %267 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %asic, align 8
  %disable = getelementptr inbounds %struct.radeon_asic, ptr %268, i32 0, i32 21, i32 4
  %269 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %disable, align 4
  tail call void %270(ptr noundef %rdev) #14
  %271 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %asic, align 8
  %enable = getelementptr inbounds %struct.radeon_asic, ptr %272, i32 0, i32 21, i32 2
  %273 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %enable, align 4
  %call336 = tail call i32 %274(ptr noundef %rdev) #14
  tail call void @mutex_unlock(ptr noundef %pm) #14
  br label %if.end339

if.end339:                                        ; preds = %if.then330, %land.lhs.true326.if.end339_crit_edge, %land.lhs.true322.if.end339_crit_edge, %land.lhs.true318.if.end339_crit_edge, %if.end314.if.end339_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_testing to i32))
  %275 = load i32, ptr @radeon_testing, align 4
  %and340 = and i32 %275, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and340)
  %tobool341.not = icmp eq i32 %and340, 0
  br i1 %tobool341.not, label %if.end339.if.end353_crit_edge, label %if.then342

if.end339.if.end353_crit_edge:                    ; preds = %if.end339
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end353

if.then342:                                       ; preds = %if.end339
  %276 = ptrtoint ptr %accel_working to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %accel_working, align 2, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %277)
  %tobool344.not = icmp eq i8 %277, 0
  br i1 %tobool344.not, label %do.end349, label %if.then345

if.then345:                                       ; preds = %if.then342
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @radeon_test_moves(ptr noundef %rdev) #14
  br label %if.end353

do.end349:                                        ; preds = %if.then342
  call void @__sanitizer_cov_trace_pc() #16
  %call351 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92) #17
  br label %if.end353

if.end353:                                        ; preds = %do.end349, %if.then345, %if.end339.if.end353_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_testing to i32))
  %278 = load i32, ptr @radeon_testing, align 4
  %and354 = and i32 %278, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and354)
  %tobool355.not = icmp eq i32 %and354, 0
  br i1 %tobool355.not, label %if.end353.if.end367_crit_edge, label %if.then356

if.end353.if.end367_crit_edge:                    ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end367

if.then356:                                       ; preds = %if.end353
  %279 = ptrtoint ptr %accel_working to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %accel_working, align 2, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %280)
  %tobool358.not = icmp eq i8 %280, 0
  br i1 %tobool358.not, label %do.end363, label %if.then359

if.then359:                                       ; preds = %if.then356
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @radeon_test_syncing(ptr noundef %rdev) #14
  br label %if.end367

do.end363:                                        ; preds = %if.then356
  call void @__sanitizer_cov_trace_pc() #16
  %call365 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95) #17
  br label %if.end367

if.end367:                                        ; preds = %do.end363, %if.then359, %if.end353.if.end367_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_benchmarking to i32))
  %281 = load i32, ptr @radeon_benchmarking, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %281)
  %tobool368.not = icmp eq i32 %281, 0
  br i1 %tobool368.not, label %if.end367.cleanup_crit_edge, label %if.then369

if.end367.cleanup_crit_edge:                      ; preds = %if.end367
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then369:                                       ; preds = %if.end367
  %282 = ptrtoint ptr %accel_working to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %accel_working, align 2, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %283)
  %tobool371.not = icmp eq i8 %283, 0
  br i1 %tobool371.not, label %do.end376, label %if.then372

if.then372:                                       ; preds = %if.then369
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @radeon_benchmark(ptr noundef %rdev, i32 noundef %281) #14
  br label %cleanup

do.end376:                                        ; preds = %if.then369
  call void @__sanitizer_cov_trace_pc() #16
  %call378 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98) #17
  br label %cleanup

failed:                                           ; preds = %if.then300.failed_crit_edge, %if.end289.failed_crit_edge
  %r.0 = phi i32 [ %call290, %if.end289.failed_crit_edge ], [ %call306, %if.then300.failed_crit_edge ]
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %ddev, i32 0, i32 5
  %284 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %dev_private.i, align 4
  %flags.i560 = getelementptr inbounds %struct.radeon_device, ptr %285, i32 0, i32 7
  %286 = ptrtoint ptr %flags.i560 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %flags.i560, align 8
  %and.i561 = and i32 %287, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i561)
  %tobool.not.i562.not = icmp eq i32 %and.i561, 0
  br i1 %tobool.not.i562.not, label %failed.cleanup_crit_edge, label %if.then382

failed.cleanup_crit_edge:                         ; preds = %failed
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then382:                                       ; preds = %failed
  %dev383 = getelementptr inbounds %struct.drm_device, ptr %ddev, i32 0, i32 2
  %288 = ptrtoint ptr %dev383 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %dev383, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %289, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !270
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #14
  %290 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #14, !srcloc !271
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %290, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then382.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then382.cleanup_crit_edge:                     ; preds = %if.then382
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then382
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !272
  br label %cleanup

cleanup:                                          ; preds = %do.end11.i.i.i.i, %if.then382.cleanup_crit_edge, %failed.cleanup_crit_edge, %do.end376, %if.then372, %if.end367.cleanup_crit_edge, %if.end208.cleanup_crit_edge, %do.end104, %radeon_check_arguments.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end104 ], [ %call41, %entry.cleanup_crit_edge ], [ %call42, %radeon_check_arguments.exit.cleanup_crit_edge ], [ -12, %if.end208.cleanup_crit_edge ], [ 0, %if.then372 ], [ 0, %do.end376 ], [ 0, %if.end367.cleanup_crit_edge ], [ %r.0, %do.end11.i.i.i.i ], [ %r.0, %if.then382.cleanup_crit_edge ], [ %r.0, %failed.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dma_fence_context_alloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_gem_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_asic_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_agp_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_need_swiotlb(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vga_client_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_vga_set_decode(ptr nocapture noundef readonly %pdev, i1 noundef zeroext %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %asic = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 56
  %4 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %asic, align 8
  %vga_set_state = getelementptr inbounds %struct.radeon_asic, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %vga_set_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vga_set_state, align 4
  tail call void %7(ptr noundef %3, i1 noundef zeroext %state) #14
  %. = select i1 %state, i32 15, i32 12
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_gem_debugfs_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_mst_debugfs_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_ib_ring_tests(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_test_moves(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_test_syncing(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_benchmark(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_device_fini(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100) #17
  %shutdown = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 64
  %0 = ptrtoint ptr %shutdown to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %shutdown, align 8
  %call1 = tail call i32 @radeon_bo_evict_vram(ptr noundef %rdev) #14
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %1 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %asic, align 8
  %fini = getelementptr inbounds %struct.radeon_asic, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %fini to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fini, align 4
  tail call void %4(ptr noundef %rdev) #14
  %pdev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 2
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %is_thunderbolt.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 49
  %7 = ptrtoint ptr %is_thunderbolt.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 5)
  %bf.load.i = load i40, ptr %is_thunderbolt.i, align 1
  %8 = and i40 %bf.load.i, 8192
  %tobool.not.i = icmp eq i40 %8, 0
  br i1 %tobool.not.i, label %entry.while.cond.i_crit_edge, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

entry.while.cond.i_crit_edge:                     ; preds = %entry
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry.while.cond.i_crit_edge
  %parent.0.i = phi ptr [ %19, %while.body.i.while.cond.i_crit_edge ], [ %6, %entry.while.cond.i_crit_edge ]
  %is_virtfn.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %parent.0.i, i32 0, i32 49
  %9 = ptrtoint ptr %is_virtfn.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 5)
  %bf.load.i.i.i = load i40, ptr %is_virtfn.i.i.i, align 1
  %10 = and i40 %bf.load.i.i.i, 65536
  %tobool.not.i.i.i = icmp eq i40 %10, 0
  br i1 %tobool.not.i.i.i, label %while.cond.i.pci_physfn.exit.i.i_crit_edge, label %if.then.i.i.i

while.cond.i.pci_physfn.exit.i.i_crit_edge:       ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_physfn.exit.i.i

if.then.i.i.i:                                    ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  %11 = getelementptr inbounds %struct.pci_dev, ptr %parent.0.i, i32 0, i32 66
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  br label %pci_physfn.exit.i.i

pci_physfn.exit.i.i:                              ; preds = %if.then.i.i.i, %while.cond.i.pci_physfn.exit.i.i_crit_edge
  %dev.addr.0.i.i.i = phi ptr [ %13, %if.then.i.i.i ], [ %parent.0.i, %while.cond.i.pci_physfn.exit.i.i_crit_edge ]
  %bus.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.0.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus.i.i, align 8
  %parent.i.i.i = getelementptr inbounds %struct.pci_bus, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent.i.i.i, align 8
  %tobool.not.i5.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i5.i.i, label %pci_physfn.exit.i.i.if.end5_crit_edge, label %pci_upstream_bridge.exit.i

pci_physfn.exit.i.i.if.end5_crit_edge:            ; preds = %pci_physfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

pci_upstream_bridge.exit.i:                       ; preds = %pci_physfn.exit.i.i
  %self.i.i = getelementptr inbounds %struct.pci_bus, ptr %15, i32 0, i32 4
  %18 = ptrtoint ptr %self.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %self.i.i, align 4
  %tobool1.not.i = icmp eq ptr %19, null
  br i1 %tobool1.not.i, label %pci_upstream_bridge.exit.i.if.end5_crit_edge, label %while.body.i

pci_upstream_bridge.exit.i.if.end5_crit_edge:     ; preds = %pci_upstream_bridge.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

while.body.i:                                     ; preds = %pci_upstream_bridge.exit.i
  %is_thunderbolt2.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 49
  %20 = ptrtoint ptr %is_thunderbolt2.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 5)
  %bf.load3.i = load i40, ptr %is_thunderbolt2.i, align 1
  %21 = and i40 %bf.load3.i, 8192
  %tobool7.not.i = icmp eq i40 %21, 0
  br i1 %tobool7.not.i, label %while.body.i.while.cond.i_crit_edge, label %while.body.i.if.end5_crit_edge

while.body.i.if.end5_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i

if.end5:                                          ; preds = %while.body.i.if.end5_crit_edge, %pci_upstream_bridge.exit.i.if.end5_crit_edge, %pci_physfn.exit.i.i.if.end5_crit_edge, %entry.if.end5_crit_edge
  %call.i = tail call i32 @vga_client_register(ptr noundef %6, ptr noundef null) #14
  %rio_mem = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 39
  %22 = ptrtoint ptr %rio_mem to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rio_mem, align 4
  %tobool7.not = icmp eq ptr %23, null
  br i1 %tobool7.not, label %if.end5.if.end11_crit_edge, label %if.then8

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  %24 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev, align 8
  tail call void @pci_iounmap(ptr noundef %25, ptr noundef nonnull %23) #14
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end5.if.end11_crit_edge
  %26 = ptrtoint ptr %rio_mem to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %rio_mem, align 4
  %rmmio = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %27 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rmmio, align 4
  tail call void @iounmap(ptr noundef %28) #14
  %29 = ptrtoint ptr %rmmio to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %rmmio, align 4
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %30 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %31)
  %cmp = icmp ugt i32 %31, 56
  br i1 %cmp, label %if.then14, label %if.end11.if.end15_crit_edge

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  %ptr.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 46, i32 2
  %32 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ptr.i, align 8
  tail call void @iounmap(ptr noundef %33) #14
  %34 = ptrtoint ptr %ptr.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %ptr.i, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end11.if.end15_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_bo_evict_vram(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_suspend_kms(ptr noundef %dev, i1 noundef zeroext %suspend, i1 noundef zeroext %fbcon, i1 noundef zeroext %freeze) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %dev, null
  br i1 %cmp, label %entry.cleanup103_crit_edge, label %lor.lhs.false

entry.cleanup103_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup103

lor.lhs.false:                                    ; preds = %entry
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %cmp3 = icmp eq ptr %1, null
  br i1 %cmp3, label %lor.lhs.false.cleanup103_crit_edge, label %if.end

lor.lhs.false.cleanup103_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup103

if.end:                                           ; preds = %lor.lhs.false
  %dev5 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev5, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -136
  %switch_power_state = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 35
  %4 = ptrtoint ptr %switch_power_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %switch_power_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp6 = icmp eq i32 %5, 1
  br i1 %cmp6, label %if.end.cleanup103_crit_edge, label %if.end8

if.end.cleanup103_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup103

if.end8:                                          ; preds = %if.end
  tail call void @drm_kms_helper_poll_disable(ptr noundef nonnull %dev) #14
  tail call void @drm_modeset_lock_all(ptr noundef nonnull %dev) #14
  %connector_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 12
  %6 = ptrtoint ptr %connector_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn173 = load ptr, ptr %connector_list, align 4
  %cmp14.not174 = icmp eq ptr %.pn173, %connector_list
  br i1 %cmp14.not174, label %if.end8.for.end_crit_edge, label %if.end8.for.body_crit_edge

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  br label %for.body

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end8.for.body_crit_edge
  %.pn175 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn173, %if.end8.for.body_crit_edge ]
  %connector.0 = getelementptr i8, ptr %.pn175, i32 -16
  %call = tail call i32 @drm_helper_connector_dpms(ptr noundef %connector.0, i32 noundef 3) #14
  %7 = ptrtoint ptr %.pn175 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load ptr, ptr %.pn175, align 4
  %cmp14.not = icmp eq ptr %.pn, %connector_list
  br i1 %cmp14.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end8.for.end_crit_edge
  tail call void @drm_modeset_unlock_all(ptr noundef nonnull %dev) #14
  %crtc_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 20
  %8 = ptrtoint ptr %crtc_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn159176 = load ptr, ptr %crtc_list, align 4
  %cmp29.not177 = icmp eq ptr %.pn159176, %crtc_list
  br i1 %cmp29.not177, label %for.end.for.end72_crit_edge, label %for.end.for.body31_crit_edge

for.end.for.body31_crit_edge:                     ; preds = %for.end
  br label %for.body31

for.end.for.end72_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end72

for.body31:                                       ; preds = %cleanup.for.body31_crit_edge, %for.end.for.body31_crit_edge
  %.pn159178 = phi ptr [ %.pn159, %cleanup.for.body31_crit_edge ], [ %.pn159176, %for.end.for.body31_crit_edge ]
  %primary = getelementptr i8, ptr %.pn159178, i32 140
  %9 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %primary, align 4
  %fb35 = getelementptr inbounds %struct.drm_plane, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %fb35 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fb35, align 4
  %cursor_bo = getelementptr i8, ptr %.pn159178, i32 996
  %13 = ptrtoint ptr %cursor_bo to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cursor_bo, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %for.body31.if.end46_crit_edge, label %if.then36

for.body31.if.end46_crit_edge:                    ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

if.then36:                                        ; preds = %for.body31
  %add.ptr41 = getelementptr i8, ptr %14, i32 -96
  %resv32.i.i = getelementptr i8, ptr %14, i32 200
  %15 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %16, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %retval.1.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %17 = zext i32 %retval.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %retval.1.i.i, label %do.end.i [
    i32 0, label %if.then44
    i32 -512, label %if.then36.if.end46_crit_edge
  ], !prof !266

if.then36.if.end46_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

do.end.i:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #16
  %rdev.i = getelementptr i8, ptr %14, i32 464
  %18 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rdev.i, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.112, ptr noundef %add.ptr41) #17
  br label %if.end46

if.then44:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @radeon_bo_unpin(ptr noundef %add.ptr41) #14
  %bdev.i.i.i = getelementptr i8, ptr %14, i32 352
  %22 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %23, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #14
  %resource.i.i.i = getelementptr i8, ptr %14, i32 372
  %24 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %resource.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef nonnull %14, ptr noundef %25, ptr noundef null) #14
  %26 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %27, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #14
  %28 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %resv32.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %29) #14
  tail call void @ww_mutex_unlock(ptr noundef %29) #14
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %do.end.i, %if.then36.if.end46_crit_edge, %for.body31.if.end46_crit_edge
  %cmp47 = icmp eq ptr %12, null
  br i1 %cmp47, label %if.end46.cleanup_crit_edge, label %lor.lhs.false48

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false48:                                  ; preds = %if.end46
  %obj = getelementptr inbounds %struct.drm_framebuffer, ptr %12, i32 0, i32 15
  %30 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %obj, align 4
  %cmp49 = icmp eq ptr %31, null
  br i1 %cmp49, label %lor.lhs.false48.cleanup_crit_edge, label %if.end51

lor.lhs.false48.cleanup_crit_edge:                ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end51:                                         ; preds = %lor.lhs.false48
  %add.ptr56 = getelementptr i8, ptr %31, i32 -96
  %call57 = tail call zeroext i1 @radeon_fbdev_robj_is_fb(ptr noundef nonnull %1, ptr noundef %add.ptr56) #14
  br i1 %call57, label %if.end51.cleanup_crit_edge, label %if.then58

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then58:                                        ; preds = %if.end51
  %resv32.i.i160 = getelementptr i8, ptr %31, i32 200
  %32 = ptrtoint ptr %resv32.i.i160 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %resv32.i.i160, align 8
  %call.i.i.i161 = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %33, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i161)
  %cmp.i.i162 = icmp eq i32 %call.i.i.i161, -4
  %retval.1.i.i163 = select i1 %cmp.i.i162, i32 -512, i32 %call.i.i.i161
  %34 = zext i32 %retval.1.i.i163 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.156)
  switch i32 %retval.1.i.i163, label %do.end.i165 [
    i32 0, label %if.then61
    i32 -512, label %if.then58.cleanup_crit_edge
  ], !prof !266

if.then58.cleanup_crit_edge:                      ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end.i165:                                      ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #16
  %rdev.i164 = getelementptr i8, ptr %31, i32 464
  %35 = ptrtoint ptr %rdev.i164 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rdev.i164, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.112, ptr noundef %add.ptr56) #17
  br label %cleanup

if.then61:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @radeon_bo_unpin(ptr noundef %add.ptr56) #14
  %bdev.i.i.i168 = getelementptr i8, ptr %31, i32 352
  %39 = ptrtoint ptr %bdev.i.i.i168 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bdev.i.i.i168, align 8
  %lru_lock.i.i.i169 = getelementptr inbounds %struct.ttm_device, ptr %40, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i169) #14
  %resource.i.i.i170 = getelementptr i8, ptr %31, i32 372
  %41 = ptrtoint ptr %resource.i.i.i170 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %resource.i.i.i170, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef nonnull %31, ptr noundef %42, ptr noundef null) #14
  %43 = ptrtoint ptr %bdev.i.i.i168 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bdev.i.i.i168, align 8
  %lru_lock2.i.i.i171 = getelementptr inbounds %struct.ttm_device, ptr %44, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i171) #14
  %45 = ptrtoint ptr %resv32.i.i160 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %resv32.i.i160, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %46) #14
  tail call void @ww_mutex_unlock(ptr noundef %46) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then61, %do.end.i165, %if.then58.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %lor.lhs.false48.cleanup_crit_edge, %if.end46.cleanup_crit_edge
  %47 = ptrtoint ptr %.pn159178 to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pn159 = load ptr, ptr %.pn159178, align 4
  %cmp29.not = icmp eq ptr %.pn159, %crtc_list
  br i1 %cmp29.not, label %cleanup.for.end72_crit_edge, label %cleanup.for.body31_crit_edge

cleanup.for.body31_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body31

cleanup.for.end72_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end72

for.end72:                                        ; preds = %cleanup.for.end72_crit_edge, %for.end.for.end72_crit_edge
  %call73 = tail call i32 @radeon_bo_evict_vram(ptr noundef nonnull %1) #14
  %call77 = tail call i32 @radeon_fence_wait_empty(ptr noundef nonnull %1, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %for.end72.for.inc81_crit_edge, label %if.then79

for.end72.for.inc81_crit_edge:                    ; preds = %for.end72
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc81

if.then79:                                        ; preds = %for.end72
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @radeon_fence_driver_force_completion(ptr noundef nonnull %1, i32 noundef 0) #14
  br label %for.inc81

for.inc81:                                        ; preds = %if.then79, %for.end72.for.inc81_crit_edge
  %call77.1 = tail call i32 @radeon_fence_wait_empty(ptr noundef nonnull %1, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.1)
  %tobool78.not.1 = icmp eq i32 %call77.1, 0
  br i1 %tobool78.not.1, label %for.inc81.for.inc81.1_crit_edge, label %if.then79.1

for.inc81.for.inc81.1_crit_edge:                  ; preds = %for.inc81
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc81.1

if.then79.1:                                      ; preds = %for.inc81
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @radeon_fence_driver_force_completion(ptr noundef nonnull %1, i32 noundef 1) #14
  br label %for.inc81.1

for.inc81.1:                                      ; preds = %if.then79.1, %for.inc81.for.inc81.1_crit_edge
  %call77.2 = tail call i32 @radeon_fence_wait_empty(ptr noundef nonnull %1, i32 noundef 2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.2)
  %tobool78.not.2 = icmp eq i32 %call77.2, 0
  br i1 %tobool78.not.2, label %for.inc81.1.for.inc81.2_crit_edge, label %if.then79.2

for.inc81.1.for.inc81.2_crit_edge:                ; preds = %for.inc81.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc81.2

if.then79.2:                                      ; preds = %for.inc81.1
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @radeon_fence_driver_force_completion(ptr noundef nonnull %1, i32 noundef 2) #14
  br label %for.inc81.2

for.inc81.2:                                      ; preds = %if.then79.2, %for.inc81.1.for.inc81.2_crit_edge
  %call77.3 = tail call i32 @radeon_fence_wait_empty(ptr noundef nonnull %1, i32 noundef 3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.3)
  %tobool78.not.3 = icmp eq i32 %call77.3, 0
  br i1 %tobool78.not.3, label %for.inc81.2.for.inc81.3_crit_edge, label %if.then79.3

for.inc81.2.for.inc81.3_crit_edge:                ; preds = %for.inc81.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc81.3

if.then79.3:                                      ; preds = %for.inc81.2
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @radeon_fence_driver_force_completion(ptr noundef nonnull %1, i32 noundef 3) #14
  br label %for.inc81.3

for.inc81.3:                                      ; preds = %if.then79.3, %for.inc81.2.for.inc81.3_crit_edge
  %call77.4 = tail call i32 @radeon_fence_wait_empty(ptr noundef nonnull %1, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.4)
  %tobool78.not.4 = icmp eq i32 %call77.4, 0
  br i1 %tobool78.not.4, label %for.inc81.3.for.inc81.4_crit_edge, label %if.then79.4

for.inc81.3.for.inc81.4_crit_edge:                ; preds = %for.inc81.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc81.4

if.then79.4:                                      ; preds = %for.inc81.3
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @radeon_fence_driver_force_completion(ptr noundef nonnull %1, i32 noundef 4) #14
  br label %for.inc81.4

for.inc81.4:                                      ; preds = %if.then79.4, %for.inc81.3.for.inc81.4_crit_edge
  %call77.5 = tail call i32 @radeon_fence_wait_empty(ptr noundef nonnull %1, i32 noundef 5) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.5)
  %tobool78.not.5 = icmp eq i32 %call77.5, 0
  br i1 %tobool78.not.5, label %for.inc81.4.for.inc81.5_crit_edge, label %if.then79.5

for.inc81.4.for.inc81.5_crit_edge:                ; preds = %for.inc81.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc81.5

if.then79.5:                                      ; preds = %for.inc81.4
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @radeon_fence_driver_force_completion(ptr noundef nonnull %1, i32 noundef 5) #14
  br label %for.inc81.5

for.inc81.5:                                      ; preds = %if.then79.5, %for.inc81.4.for.inc81.5_crit_edge
  %call77.6 = tail call i32 @radeon_fence_wait_empty(ptr noundef nonnull %1, i32 noundef 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.6)
  %tobool78.not.6 = icmp eq i32 %call77.6, 0
  br i1 %tobool78.not.6, label %for.inc81.5.for.inc81.6_crit_edge, label %if.then79.6

for.inc81.5.for.inc81.6_crit_edge:                ; preds = %for.inc81.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc81.6

if.then79.6:                                      ; preds = %for.inc81.5
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @radeon_fence_driver_force_completion(ptr noundef nonnull %1, i32 noundef 6) #14
  br label %for.inc81.6

for.inc81.6:                                      ; preds = %if.then79.6, %for.inc81.5.for.inc81.6_crit_edge
  %call77.7 = tail call i32 @radeon_fence_wait_empty(ptr noundef nonnull %1, i32 noundef 7) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.7)
  %tobool78.not.7 = icmp eq i32 %call77.7, 0
  br i1 %tobool78.not.7, label %for.inc81.6.for.inc81.7_crit_edge, label %if.then79.7

for.inc81.6.for.inc81.7_crit_edge:                ; preds = %for.inc81.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc81.7

if.then79.7:                                      ; preds = %for.inc81.6
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @radeon_fence_driver_force_completion(ptr noundef nonnull %1, i32 noundef 7) #14
  br label %for.inc81.7

for.inc81.7:                                      ; preds = %if.then79.7, %for.inc81.6.for.inc81.7_crit_edge
  tail call void @radeon_save_bios_scratch_regs(ptr noundef nonnull %1) #14
  %asic = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 56
  %48 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %asic, align 8
  %suspend83 = getelementptr inbounds %struct.radeon_asic, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %suspend83 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %suspend83, align 4
  %call84 = tail call i32 %51(ptr noundef nonnull %1) #14
  %52 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %asic, align 8
  %fini = getelementptr inbounds %struct.radeon_asic, ptr %53, i32 0, i32 19, i32 1
  %54 = ptrtoint ptr %fini to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %fini, align 4
  tail call void %55(ptr noundef nonnull %1) #14
  %call86 = tail call i32 @radeon_bo_evict_vram(ptr noundef nonnull %1) #14
  tail call void @radeon_agp_suspend(ptr noundef nonnull %1) #14
  %call87 = tail call i32 @pci_save_state(ptr noundef %add.ptr) #14
  br i1 %freeze, label %land.lhs.true, label %for.inc81.7.if.else_crit_edge

for.inc81.7.if.else_crit_edge:                    ; preds = %for.inc81.7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true:                                    ; preds = %for.inc81.7
  %family = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %56 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %57)
  %cmp89 = icmp ugt i32 %57, 38
  br i1 %cmp89, label %land.lhs.true90, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true90:                                  ; preds = %land.lhs.true
  %flags = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 7
  %58 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %flags, align 8
  %and = and i32 %59, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool91.not = icmp eq i32 %and, 0
  br i1 %tobool91.not, label %if.then92, label %land.lhs.true90.if.else_crit_edge

land.lhs.true90.if.else_crit_edge:                ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then92:                                        ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #16
  %60 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %asic, align 8
  %asic_reset = getelementptr inbounds %struct.radeon_asic, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %asic_reset to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %asic_reset, align 4
  %call94 = tail call i32 %63(ptr noundef nonnull %1, i1 noundef zeroext true) #14
  tail call void @pci_restore_state(ptr noundef %add.ptr) #14
  br label %if.end99

if.else:                                          ; preds = %land.lhs.true90.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %for.inc81.7.if.else_crit_edge
  br i1 %suspend, label %if.then96, label %if.else.if.end99_crit_edge

if.else.if.end99_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end99

if.then96:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @pci_disable_device(ptr noundef %add.ptr) #14
  %call97 = tail call i32 @pci_set_power_state(ptr noundef %add.ptr, i32 noundef 3) #14
  br label %if.end99

if.end99:                                         ; preds = %if.then96, %if.else.if.end99_crit_edge, %if.then92
  br i1 %fbcon, label %if.then101, label %if.end99.cleanup103_crit_edge

if.end99.cleanup103_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup103

if.then101:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @console_lock() #14
  tail call void @radeon_fbdev_set_suspend(ptr noundef nonnull %1, i32 noundef 1) #14
  tail call void @console_unlock() #14
  br label %cleanup103

cleanup103:                                       ; preds = %if.then101, %if.end99.cleanup103_crit_edge, %if.end.cleanup103_crit_edge, %lor.lhs.false.cleanup103_crit_edge, %entry.cleanup103_crit_edge
  %retval.0 = phi i32 [ -19, %lor.lhs.false.cleanup103_crit_edge ], [ -19, %entry.cleanup103_crit_edge ], [ 0, %if.end.cleanup103_crit_edge ], [ 0, %if.then101 ], [ 0, %if.end99.cleanup103_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_lock_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_connector_dpms(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_unlock_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_fbdev_robj_is_fb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_fence_wait_empty(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_fence_driver_force_completion(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_save_bios_scratch_regs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_agp_suspend(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_fbdev_set_suspend(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_resume_kms(ptr noundef %dev, i1 noundef zeroext %resume, i1 noundef zeroext %fbcon) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %dev2 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -136
  %switch_power_state = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 35
  %4 = ptrtoint ptr %switch_power_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %switch_power_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %fbcon, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @console_lock() #14
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  br i1 %resume, label %if.then6, label %if.end4.if.end14_crit_edge

if.end4.if.end14_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then6:                                         ; preds = %if.end4
  %call = tail call i32 @pci_set_power_state(ptr noundef %add.ptr, i32 noundef 0) #14
  tail call void @pci_restore_state(ptr noundef %add.ptr) #14
  %call7 = tail call i32 @pci_enable_device(ptr noundef %add.ptr) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then6.if.end14_crit_edge, label %if.then9

if.then6.if.end14_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then9:                                         ; preds = %if.then6
  br i1 %fbcon, label %if.then9.cleanup.sink.split_crit_edge, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then9.cleanup.sink.split_crit_edge:            ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end14:                                         ; preds = %if.then6.if.end14_crit_edge, %if.end4.if.end14_crit_edge
  tail call void @radeon_agp_resume(ptr noundef %1) #14
  %asic = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 56
  %6 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %asic, align 8
  %resume15 = getelementptr inbounds %struct.radeon_asic, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %resume15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resume15, align 4
  %call16 = tail call i32 %9(ptr noundef %1) #14
  %call17 = tail call i32 @radeon_ib_ring_tests(ptr noundef %1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end14.if.end20_crit_edge, label %if.then19

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.90, i32 noundef %call17) #14
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end14.if.end20_crit_edge
  %pm_method = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 58, i32 34
  %10 = ptrtoint ptr %pm_method to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pm_method, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp21 = icmp eq i32 %11, 2
  br i1 %cmp21, label %land.lhs.true, label %if.end20.if.else_crit_edge

if.end20.if.else_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true:                                    ; preds = %if.end20
  %dpm_enabled = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 58, i32 50
  %12 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dpm_enabled, align 8, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool23.not = icmp eq i8 %13, 0
  br i1 %tobool23.not, label %land.lhs.true.if.else_crit_edge, label %if.then24

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then24:                                        ; preds = %land.lhs.true
  %call25 = tail call i32 @radeon_pm_late_init(ptr noundef %1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then24.if.end31_crit_edge, label %if.then27

if.then24.if.end31_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.then27:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %dpm_enabled, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.102) #14
  br label %if.end31

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end20.if.else_crit_edge
  tail call void @radeon_pm_resume(ptr noundef %1) #14
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then27, %if.then24.if.end31_crit_edge
  tail call void @radeon_restore_bios_scratch_regs(ptr noundef %1) #14
  %crtc_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 20
  %15 = ptrtoint ptr %crtc_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn174 = load ptr, ptr %crtc_list, align 4
  %cmp37.not175 = icmp eq ptr %.pn174, %crtc_list
  br i1 %cmp37.not175, label %if.end31.for.end_crit_edge, label %for.body.lr.ph

if.end31.for.end_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end31
  %family = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %if.end57.for.body_crit_edge, %for.body.lr.ph
  %.pn176 = phi ptr [ %.pn174, %for.body.lr.ph ], [ %.pn, %if.end57.for.body_crit_edge ]
  %cursor_bo = getelementptr i8, ptr %.pn176, i32 996
  %16 = ptrtoint ptr %cursor_bo to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cursor_bo, align 4
  %tobool41.not = icmp eq ptr %17, null
  br i1 %tobool41.not, label %for.body.if.end57_crit_edge, label %if.then42

for.body.if.end57_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end57

if.then42:                                        ; preds = %for.body
  %add.ptr46 = getelementptr i8, ptr %17, i32 -96
  %resv32.i.i = getelementptr i8, ptr %17, i32 200
  %18 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %19, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %retval.1.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %20 = zext i32 %retval.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %retval.1.i.i, label %do.end.i [
    i32 0, label %if.then49
    i32 -512, label %if.then42.if.end57_crit_edge
  ], !prof !266

if.then42.if.end57_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end57

do.end.i:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #16
  %rdev.i = getelementptr i8, ptr %17, i32 464
  %21 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rdev.i, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.112, ptr noundef %add.ptr46) #17
  br label %if.end57

if.then49:                                        ; preds = %if.then42
  %25 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %26)
  %cmp50 = icmp ugt i32 %26, 17
  %cond = select i1 %cmp50, i32 0, i32 134217728
  %27 = zext i32 %cond to i64
  %cursor_addr = getelementptr i8, ptr %.pn176, i32 1000
  %call51 = tail call i32 @radeon_bo_pin_restricted(ptr noundef %add.ptr46, i32 noundef 4, i64 noundef %27, ptr noundef %cursor_addr) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52.not = icmp eq i32 %call51, 0
  br i1 %cmp52.not, label %if.then49.if.end55_crit_edge, label %if.then54

if.then49.if.end55_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55

if.then54:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.103, i32 noundef %call51) #14
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.then49.if.end55_crit_edge
  %bdev.i.i.i = getelementptr i8, ptr %17, i32 352
  %28 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %29, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #14
  %resource.i.i.i = getelementptr i8, ptr %17, i32 372
  %30 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %resource.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef nonnull %17, ptr noundef %31, ptr noundef null) #14
  %32 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %33, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #14
  %34 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %resv32.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %35) #14
  tail call void @ww_mutex_unlock(ptr noundef %35) #14
  br label %if.end57

if.end57:                                         ; preds = %if.end55, %do.end.i, %if.then42.if.end57_crit_edge, %for.body.if.end57_crit_edge
  %36 = ptrtoint ptr %.pn176 to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn = load ptr, ptr %.pn176, align 4
  %cmp37.not = icmp eq ptr %.pn, %crtc_list
  br i1 %cmp37.not, label %if.end57.for.end_crit_edge, label %if.end57.for.body_crit_edge

if.end57.for.body_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end57.for.end_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %if.end57.for.end_crit_edge, %if.end31.for.end_crit_edge
  %is_atom_bios = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 14
  %37 = ptrtoint ptr %is_atom_bios to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %is_atom_bios, align 4, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool63.not = icmp eq i8 %38, 0
  br i1 %tobool63.not, label %for.end.if.end76_crit_edge, label %if.then64

for.end.if.end76_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end76

if.then64:                                        ; preds = %for.end
  tail call void @radeon_atom_encoder_init(ptr noundef %1) #14
  tail call void @radeon_atom_disp_eng_pll_init(ptr noundef %1) #14
  %bl_encoder = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 44, i32 20
  %39 = ptrtoint ptr %bl_encoder to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bl_encoder, align 4
  %tobool65.not = icmp eq ptr %40, null
  br i1 %tobool65.not, label %if.then64.if.end76_crit_edge, label %if.then66

if.then64.if.end76_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end76

if.then66:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #16
  %41 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %asic, align 8
  %get_backlight_level = getelementptr inbounds %struct.radeon_asic, ptr %42, i32 0, i32 16, i32 4
  %43 = ptrtoint ptr %get_backlight_level to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %get_backlight_level, align 4
  %call70 = tail call zeroext i8 %44(ptr noundef nonnull %40) #14
  %45 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %asic, align 8
  %set_backlight_level = getelementptr inbounds %struct.radeon_asic, ptr %46, i32 0, i32 16, i32 3
  %47 = ptrtoint ptr %set_backlight_level to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %set_backlight_level, align 4
  %49 = ptrtoint ptr %bl_encoder to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bl_encoder, align 4
  tail call void %48(ptr noundef %50, i8 noundef zeroext %call70) #14
  br label %if.end76

if.end76:                                         ; preds = %if.then66, %if.then64.if.end76_crit_edge, %for.end.if.end76_crit_edge
  %51 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %asic, align 8
  %hpd = getelementptr inbounds %struct.radeon_asic, ptr %52, i32 0, i32 19
  %53 = ptrtoint ptr %hpd to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hpd, align 4
  tail call void %54(ptr noundef %1) #14
  br i1 %fbcon, label %if.then79, label %if.end76.if.end101_crit_edge

if.end76.if.end101_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end101

if.then79:                                        ; preds = %if.end76
  tail call void @drm_helper_resume_force_mode(ptr noundef %dev) #14
  tail call void @drm_modeset_lock_all(ptr noundef %dev) #14
  %connector_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 12
  %55 = ptrtoint ptr %connector_list to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pn173177 = load ptr, ptr %connector_list, align 4
  %cmp89.not178 = icmp eq ptr %.pn173177, %connector_list
  br i1 %cmp89.not178, label %if.then79.for.end100_crit_edge, label %if.then79.for.body92_crit_edge

if.then79.for.body92_crit_edge:                   ; preds = %if.then79
  br label %for.body92

if.then79.for.end100_crit_edge:                   ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end100

for.body92:                                       ; preds = %for.body92.for.body92_crit_edge, %if.then79.for.body92_crit_edge
  %.pn173179 = phi ptr [ %.pn173, %for.body92.for.body92_crit_edge ], [ %.pn173177, %if.then79.for.body92_crit_edge ]
  %connector.0 = getelementptr i8, ptr %.pn173179, i32 -16
  %call93 = tail call i32 @drm_helper_connector_dpms(ptr noundef %connector.0, i32 noundef 0) #14
  %56 = ptrtoint ptr %.pn173179 to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pn173 = load ptr, ptr %.pn173179, align 4
  %cmp89.not = icmp eq ptr %.pn173, %connector_list
  br i1 %cmp89.not, label %for.body92.for.end100_crit_edge, label %for.body92.for.body92_crit_edge

for.body92.for.body92_crit_edge:                  ; preds = %for.body92
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body92

for.body92.for.end100_crit_edge:                  ; preds = %for.body92
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end100

for.end100:                                       ; preds = %for.body92.for.end100_crit_edge, %if.then79.for.end100_crit_edge
  tail call void @drm_modeset_unlock_all(ptr noundef %dev) #14
  br label %if.end101

if.end101:                                        ; preds = %for.end100, %if.end76.if.end101_crit_edge
  tail call void @drm_kms_helper_poll_enable(ptr noundef %dev) #14
  %57 = ptrtoint ptr %pm_method to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pm_method, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %58)
  %cmp104 = icmp eq i32 %58, 2
  br i1 %cmp104, label %land.lhs.true106, label %if.end101.if.end112_crit_edge

if.end101.if.end112_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end112

land.lhs.true106:                                 ; preds = %if.end101
  %dpm_enabled108 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 58, i32 50
  %59 = ptrtoint ptr %dpm_enabled108 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %dpm_enabled108, align 8, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool109.not = icmp eq i8 %60, 0
  br i1 %tobool109.not, label %land.lhs.true106.if.end112_crit_edge, label %if.then111

land.lhs.true106.if.end112_crit_edge:             ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end112

if.then111:                                       ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @radeon_pm_compute_clocks(ptr noundef %1) #14
  br label %if.end112

if.end112:                                        ; preds = %if.then111, %land.lhs.true106.if.end112_crit_edge, %if.end101.if.end112_crit_edge
  br i1 %fbcon, label %if.then114, label %if.end112.cleanup_crit_edge

if.end112.cleanup_crit_edge:                      ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then114:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @radeon_fbdev_set_suspend(ptr noundef %1, i32 noundef 0) #14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then114, %if.then9.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.then114 ], [ -1, %if.then9.cleanup.sink.split_crit_edge ]
  tail call void @console_unlock() #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end112.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -1, %if.then9.cleanup_crit_edge ], [ 0, %if.end112.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_agp_resume(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_pm_late_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_pm_resume(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_restore_bios_scratch_regs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_bo_pin_restricted(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_atom_encoder_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_atom_disp_eng_pll_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_helper_resume_force_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_pm_compute_clocks(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_gpu_reset(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  %ring_sizes = alloca [8 x i32], align 4
  %ring_data = alloca [8 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ring_sizes) #14
  %0 = getelementptr inbounds [8 x i32], ptr %ring_sizes, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i32], ptr %ring_sizes, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i32], ptr %ring_sizes, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i32], ptr %ring_sizes, i32 0, i32 4
  %4 = getelementptr inbounds [8 x i32], ptr %ring_sizes, i32 0, i32 5
  %5 = getelementptr inbounds [8 x i32], ptr %ring_sizes, i32 0, i32 6
  %6 = getelementptr inbounds [8 x i32], ptr %ring_sizes, i32 0, i32 7
  %7 = getelementptr inbounds i8, ptr %ring_sizes, i32 8
  %8 = call ptr @memset(ptr %7, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ring_data) #14
  %9 = getelementptr inbounds [8 x ptr], ptr %ring_data, i32 0, i32 1
  %10 = getelementptr inbounds [8 x ptr], ptr %ring_data, i32 0, i32 2
  %11 = getelementptr inbounds [8 x ptr], ptr %ring_data, i32 0, i32 3
  %12 = getelementptr inbounds [8 x ptr], ptr %ring_data, i32 0, i32 4
  %13 = getelementptr inbounds [8 x ptr], ptr %ring_data, i32 0, i32 5
  %14 = getelementptr inbounds [8 x ptr], ptr %ring_data, i32 0, i32 6
  %15 = getelementptr inbounds [8 x ptr], ptr %ring_data, i32 0, i32 7
  %exclusive_lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 4
  %16 = call ptr @memset(ptr %ring_data, i32 255, i32 32)
  tail call void @down_write(ptr noundef %exclusive_lock) #14
  %needs_reset = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 68
  %17 = ptrtoint ptr %needs_reset to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %needs_reset, align 4, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @up_write(ptr noundef %exclusive_lock) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %gpu_reset_counter = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 105
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %gpu_reset_counter, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %gpu_reset_counter, i32 1, i32 3, i32 1) #14
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %gpu_reset_counter, ptr %gpu_reset_counter, i32 1, ptr elementtype(i32) %gpu_reset_counter) #14, !srcloc !273
  tail call void @radeon_save_bios_scratch_regs(ptr noundef %rdev) #14
  %mman = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 47
  %call = tail call i32 @ttm_bo_lock_delayed_workqueue(ptr noundef %mman) #14
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %20 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %asic, align 8
  %suspend = getelementptr inbounds %struct.radeon_asic, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %suspend, align 4
  %call2 = tail call i32 %23(ptr noundef %rdev) #14
  %24 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %asic, align 8
  %fini = getelementptr inbounds %struct.radeon_asic, ptr %25, i32 0, i32 19, i32 1
  %26 = ptrtoint ptr %fini to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fini, align 4
  tail call void %27(ptr noundef %rdev) #14
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 0
  %call5 = call i32 @radeon_ring_backup(ptr noundef %rdev, ptr noundef %arrayidx, ptr noundef nonnull %ring_data) #14
  %28 = ptrtoint ptr %ring_sizes to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call5, ptr %ring_sizes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool8.not = icmp eq i32 %call5, 0
  br i1 %tobool8.not, label %if.end.for.inc_crit_edge, label %if.then9

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %29 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rdev, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %30, ptr noundef nonnull @.str.104, i32 noundef %call5, i32 noundef 0) #17
  br label %for.inc

for.inc:                                          ; preds = %if.then9, %if.end.for.inc_crit_edge
  %31 = xor i1 %tobool8.not, true
  %arrayidx.1 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 1
  %call5.1 = call i32 @radeon_ring_backup(ptr noundef %rdev, ptr noundef %arrayidx.1, ptr noundef %9) #14
  %32 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call5.1, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.1)
  %tobool8.not.1 = icmp eq i32 %call5.1, 0
  br i1 %tobool8.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then9.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

if.then9.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  %33 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rdev, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %34, ptr noundef nonnull @.str.104, i32 noundef %call5.1, i32 noundef 1) #17
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then9.1, %for.inc.for.inc.1_crit_edge
  %saved.1.off0.1 = phi i1 [ true, %if.then9.1 ], [ %31, %for.inc.for.inc.1_crit_edge ]
  %arrayidx.2 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 2
  %call5.2 = call i32 @radeon_ring_backup(ptr noundef %rdev, ptr noundef %arrayidx.2, ptr noundef %10) #14
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call5.2, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.2)
  %tobool8.not.2 = icmp eq i32 %call5.2, 0
  br i1 %tobool8.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then9.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.2

if.then9.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  %36 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rdev, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %37, ptr noundef nonnull @.str.104, i32 noundef %call5.2, i32 noundef 2) #17
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then9.2, %for.inc.1.for.inc.2_crit_edge
  %saved.1.off0.2 = phi i1 [ true, %if.then9.2 ], [ %saved.1.off0.1, %for.inc.1.for.inc.2_crit_edge ]
  %arrayidx.3 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 3
  %call5.3 = call i32 @radeon_ring_backup(ptr noundef %rdev, ptr noundef %arrayidx.3, ptr noundef %11) #14
  %38 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call5.3, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.3)
  %tobool8.not.3 = icmp eq i32 %call5.3, 0
  br i1 %tobool8.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then9.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.3

if.then9.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  %39 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rdev, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %40, ptr noundef nonnull @.str.104, i32 noundef %call5.3, i32 noundef 3) #17
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then9.3, %for.inc.2.for.inc.3_crit_edge
  %saved.1.off0.3 = phi i1 [ true, %if.then9.3 ], [ %saved.1.off0.2, %for.inc.2.for.inc.3_crit_edge ]
  %arrayidx.4 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 4
  %call5.4 = call i32 @radeon_ring_backup(ptr noundef %rdev, ptr noundef %arrayidx.4, ptr noundef %12) #14
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call5.4, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.4)
  %tobool8.not.4 = icmp eq i32 %call5.4, 0
  br i1 %tobool8.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then9.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.4

if.then9.4:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  %42 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rdev, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %43, ptr noundef nonnull @.str.104, i32 noundef %call5.4, i32 noundef 4) #17
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then9.4, %for.inc.3.for.inc.4_crit_edge
  %saved.1.off0.4 = phi i1 [ true, %if.then9.4 ], [ %saved.1.off0.3, %for.inc.3.for.inc.4_crit_edge ]
  %arrayidx.5 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 5
  %call5.5 = call i32 @radeon_ring_backup(ptr noundef %rdev, ptr noundef %arrayidx.5, ptr noundef %13) #14
  %44 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call5.5, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.5)
  %tobool8.not.5 = icmp eq i32 %call5.5, 0
  br i1 %tobool8.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then9.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.5

if.then9.5:                                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #16
  %45 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rdev, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %46, ptr noundef nonnull @.str.104, i32 noundef %call5.5, i32 noundef 5) #17
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then9.5, %for.inc.4.for.inc.5_crit_edge
  %saved.1.off0.5 = phi i1 [ true, %if.then9.5 ], [ %saved.1.off0.4, %for.inc.4.for.inc.5_crit_edge ]
  %arrayidx.6 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 6
  %call5.6 = call i32 @radeon_ring_backup(ptr noundef %rdev, ptr noundef %arrayidx.6, ptr noundef %14) #14
  %47 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call5.6, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.6)
  %tobool8.not.6 = icmp eq i32 %call5.6, 0
  br i1 %tobool8.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then9.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.6

if.then9.6:                                       ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #16
  %48 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rdev, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %49, ptr noundef nonnull @.str.104, i32 noundef %call5.6, i32 noundef 6) #17
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then9.6, %for.inc.5.for.inc.6_crit_edge
  %saved.1.off0.6 = phi i1 [ true, %if.then9.6 ], [ %saved.1.off0.5, %for.inc.5.for.inc.6_crit_edge ]
  %arrayidx.7 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 7
  %call5.7 = call i32 @radeon_ring_backup(ptr noundef %rdev, ptr noundef %arrayidx.7, ptr noundef %15) #14
  %50 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %call5.7, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.7)
  %tobool8.not.7 = icmp eq i32 %call5.7, 0
  br i1 %tobool8.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then9.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.7

if.then9.7:                                       ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #16
  %51 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rdev, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %52, ptr noundef nonnull @.str.104, i32 noundef %call5.7, i32 noundef 7) #17
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then9.7, %for.inc.6.for.inc.7_crit_edge
  %saved.1.off0.7 = phi i1 [ true, %if.then9.7 ], [ %saved.1.off0.6, %for.inc.6.for.inc.7_crit_edge ]
  %53 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %asic, align 8
  %asic_reset = getelementptr inbounds %struct.radeon_asic, ptr %54, i32 0, i32 5
  %55 = ptrtoint ptr %asic_reset to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %asic_reset, align 4
  %call13 = call i32 %56(ptr noundef %rdev, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %do.end18, label %for.inc.7.if.end22_crit_edge

for.inc.7.if.end22_crit_edge:                     ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

do.end18:                                         ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #16
  %57 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rdev, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %58, ptr noundef nonnull @.str.107) #17
  %59 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %asic, align 8
  %resume = getelementptr inbounds %struct.radeon_asic, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %resume, align 4
  %call21 = call i32 %62(ptr noundef %rdev) #14
  br label %if.end22

if.end22:                                         ; preds = %do.end18, %for.inc.7.if.end22_crit_edge
  call void @radeon_restore_bios_scratch_regs(ptr noundef %rdev) #14
  br label %for.body25

for.body25:                                       ; preds = %for.inc37.for.body25_crit_edge, %if.end22
  %i.1181 = phi i32 [ 0, %if.end22 ], [ %inc38, %for.inc37.for.body25_crit_edge ]
  br i1 %tobool14.not, label %land.lhs.true, label %for.body25.if.else_crit_edge

for.body25.if.else_crit_edge:                     ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true:                                    ; preds = %for.body25
  %arrayidx27 = getelementptr [8 x ptr], ptr %ring_data, i32 0, i32 %i.1181
  %63 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx27, align 4
  %tobool28.not = icmp eq ptr %64, null
  br i1 %tobool28.not, label %land.lhs.true.if.else_crit_edge, label %if.then29

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then29:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx31 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %i.1181
  %arrayidx32 = getelementptr [8 x i32], ptr %ring_sizes, i32 0, i32 %i.1181
  %65 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx32, align 4
  %call34 = call i32 @radeon_ring_restore(ptr noundef %rdev, ptr noundef %arrayidx31, i32 noundef %66, ptr noundef nonnull %64) #14
  br label %for.inc37

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %for.body25.if.else_crit_edge
  call void @radeon_fence_driver_force_completion(ptr noundef %rdev, i32 noundef %i.1181) #14
  %arrayidx35 = getelementptr [8 x ptr], ptr %ring_data, i32 0, i32 %i.1181
  %67 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx35, align 4
  call void @kfree(ptr noundef %68) #14
  br label %for.inc37

for.inc37:                                        ; preds = %if.else, %if.then29
  %inc38 = add nuw nsw i32 %i.1181, 1
  %exitcond.not = icmp eq i32 %inc38, 8
  br i1 %exitcond.not, label %for.end39, label %for.inc37.for.body25_crit_edge

for.inc37.for.body25_crit_edge:                   ; preds = %for.inc37
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body25

for.end39:                                        ; preds = %for.inc37
  %pm_method = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 34
  %69 = ptrtoint ptr %pm_method to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pm_method, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %70)
  %cmp40 = icmp eq i32 %70, 2
  br i1 %cmp40, label %land.lhs.true41, label %for.end39.if.else51_crit_edge

for.end39.if.else51_crit_edge:                    ; preds = %for.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else51

land.lhs.true41:                                  ; preds = %for.end39
  %dpm_enabled = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 50
  %71 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %dpm_enabled, align 8, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool43.not = icmp eq i8 %72, 0
  br i1 %tobool43.not, label %land.lhs.true41.if.else51_crit_edge, label %if.then44

land.lhs.true41.if.else51_crit_edge:              ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else51

if.then44:                                        ; preds = %land.lhs.true41
  %call45 = call i32 @radeon_pm_late_init(ptr noundef %rdev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then44.if.end52_crit_edge, label %if.then47

if.then44.if.end52_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end52

if.then47:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #16
  %73 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %dpm_enabled, align 8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.102) #14
  br label %if.end52

if.else51:                                        ; preds = %land.lhs.true41.if.else51_crit_edge, %for.end39.if.else51_crit_edge
  call void @radeon_pm_resume(ptr noundef %rdev) #14
  br label %if.end52

if.end52:                                         ; preds = %if.else51, %if.then47, %if.then44.if.end52_crit_edge
  %r.0 = phi i32 [ %call45, %if.then47 ], [ 0, %if.then44.if.end52_crit_edge ], [ %call13, %if.else51 ]
  %is_atom_bios = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 14
  %74 = ptrtoint ptr %is_atom_bios to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %is_atom_bios, align 4, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool53.not = icmp eq i8 %75, 0
  br i1 %tobool53.not, label %if.end52.if.end66_crit_edge, label %if.then54

if.end52.if.end66_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

if.then54:                                        ; preds = %if.end52
  call void @radeon_atom_encoder_init(ptr noundef %rdev) #14
  call void @radeon_atom_disp_eng_pll_init(ptr noundef %rdev) #14
  %bl_encoder = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 20
  %76 = ptrtoint ptr %bl_encoder to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bl_encoder, align 4
  %tobool55.not = icmp eq ptr %77, null
  br i1 %tobool55.not, label %if.then54.if.end66_crit_edge, label %if.then56

if.then54.if.end66_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

if.then56:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #16
  %78 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %asic, align 8
  %get_backlight_level = getelementptr inbounds %struct.radeon_asic, ptr %79, i32 0, i32 16, i32 4
  %80 = ptrtoint ptr %get_backlight_level to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %get_backlight_level, align 4
  %call60 = call zeroext i8 %81(ptr noundef nonnull %77) #14
  %82 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %asic, align 8
  %set_backlight_level = getelementptr inbounds %struct.radeon_asic, ptr %83, i32 0, i32 16, i32 3
  %84 = ptrtoint ptr %set_backlight_level to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %set_backlight_level, align 4
  %86 = ptrtoint ptr %bl_encoder to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %bl_encoder, align 4
  call void %85(ptr noundef %87, i8 noundef zeroext %call60) #14
  br label %if.end66

if.end66:                                         ; preds = %if.then56, %if.then54.if.end66_crit_edge, %if.end52.if.end66_crit_edge
  %88 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %asic, align 8
  %hpd68 = getelementptr inbounds %struct.radeon_asic, ptr %89, i32 0, i32 19
  %90 = ptrtoint ptr %hpd68 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hpd68, align 4
  call void %91(ptr noundef %rdev) #14
  call void @ttm_bo_unlock_delayed_workqueue(ptr noundef %mman, i32 noundef %call) #14
  %in_reset = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 69
  %92 = ptrtoint ptr %in_reset to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 1, ptr %in_reset, align 1
  %93 = ptrtoint ptr %needs_reset to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %needs_reset, align 4
  call void @downgrade_write(ptr noundef %exclusive_lock) #14
  %ddev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %94 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ddev, align 4
  call void @drm_helper_resume_force_mode(ptr noundef %95) #14
  %96 = ptrtoint ptr %pm_method to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %pm_method, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %97)
  %cmp75 = icmp eq i32 %97, 2
  br i1 %cmp75, label %land.lhs.true76, label %if.end66.if.end81_crit_edge

if.end66.if.end81_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end81

land.lhs.true76:                                  ; preds = %if.end66
  %dpm_enabled78 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 50
  %98 = ptrtoint ptr %dpm_enabled78 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %dpm_enabled78, align 8, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool79.not = icmp eq i8 %99, 0
  br i1 %tobool79.not, label %land.lhs.true76.if.end81_crit_edge, label %if.then80

land.lhs.true76.if.end81_crit_edge:               ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end81

if.then80:                                        ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #16
  call void @radeon_pm_compute_clocks(ptr noundef %rdev) #14
  br label %if.end81

if.end81:                                         ; preds = %if.then80, %land.lhs.true76.if.end81_crit_edge, %if.end66.if.end81_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0)
  %tobool82.not = icmp eq i32 %r.0, 0
  br i1 %tobool82.not, label %if.then83, label %do.end93

if.then83:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #16
  %call84 = call i32 @radeon_ib_ring_tests(ptr noundef %rdev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  %spec.select = select i1 %saved.1.off0.7, i32 -11, i32 %call84
  %spec.select177 = select i1 %tobool85.not, i32 0, i32 %spec.select
  br label %if.end95

do.end93:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #16
  %100 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %rdev, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %101, ptr noundef nonnull @.str.110) #17
  br label %if.end95

if.end95:                                         ; preds = %do.end93, %if.then83
  %r.1 = phi i32 [ %r.0, %do.end93 ], [ %spec.select177, %if.then83 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %r.1)
  %cmp96 = icmp eq i32 %r.1, -11
  %frombool = zext i1 %cmp96 to i8
  %102 = ptrtoint ptr %needs_reset to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %frombool, ptr %needs_reset, align 4
  %103 = ptrtoint ptr %in_reset to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %in_reset, align 1
  call void @up_read(ptr noundef %exclusive_lock) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end95, %if.then
  %retval.0 = phi i32 [ %r.1, %if.end95 ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ring_data) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ring_sizes) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_lock_delayed_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_ring_backup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_ring_restore(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_unlock_delayed_workqueue(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @downgrade_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_mm_rreg_slow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_mm_wreg_slow(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock_interruptible(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_move_to_lru_tail(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_reset_shared_max(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_io_rreg(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_io_wreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 143)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 143)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inlinehint nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind readnone }
attributes #19 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !22, !23, !25, !26, !27, !28, !30, !31, !33, !34, !35, !37, !38, !39, !40, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !62, !64, !66, !67, !69, !70, !72, !73, !74, !75, !77, !78, !80, !81, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105, !106, !108, !109, !111, !112, !114, !115, !117, !118, !120, !121, !123, !124, !126, !127, !129, !130, !132, !133, !135, !136, !138, !139, !141, !142, !144, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !163, !165, !167, !169, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !185, !186, !188, !190, !192, !194, !195, !196, !197, !199, !200, !201, !203, !204, !205, !207, !208, !209, !211, !212, !213, !215, !216, !217, !219, !220, !221, !223, !224, !225, !227, !228, !229, !231, !232, !233, !234, !236, !237, !238, !240, !242, !244, !245, !246, !247, !249, !250}
!llvm.named.register.sp = !{!251}
!llvm.module.flags = !{!252, !253, !254, !255, !256, !257, !258, !259}
!llvm.ident = !{!260}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 467, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @radeon_wb_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @radeon_wb_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 479, i32 4}
!10 = !{ptr @radeon_wb_init._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @radeon_wb_init._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 486, i32 4}
!14 = !{ptr @radeon_wb_init._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @radeon_wb_init._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 520, i32 2}
!18 = !{ptr @.str.13, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @radeon_wb_init._entry.11, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @radeon_wb_init._entry_ptr.14, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.15, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.16, !17, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.17, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 572, i32 3}
!25 = !{ptr @.str.18, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @radeon_vram_location._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @radeon_vram_location._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @radeon_vram_location._entry.19, !29, !"_entry", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 578, i32 3}
!30 = !{ptr @radeon_vram_location._entry_ptr.20, !29, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.22, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 585, i32 2}
!33 = !{ptr @radeon_vram_location._entry.21, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @radeon_vram_location._entry_ptr.23, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.24, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 610, i32 4}
!37 = !{ptr @.str.25, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @radeon_gtt_location._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @radeon_gtt_location._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @radeon_gtt_location._entry.26, !41, !"_entry", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 616, i32 4}
!42 = !{ptr @radeon_gtt_location._entry_ptr.27, !41, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.29, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 622, i32 2}
!45 = !{ptr @radeon_gtt_location._entry.28, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @radeon_gtt_location._entry_ptr.30, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.31, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 758, i32 3}
!49 = !{ptr @.str.32, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @radeon_boot_test_post_card._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @radeon_boot_test_post_card._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.34, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 765, i32 3}
!54 = !{ptr @.str.35, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @radeon_boot_test_post_card._entry.33, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @radeon_boot_test_post_card._entry_ptr.36, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.37, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 790, i32 3}
!59 = !{ptr @.str.38, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @radeon_dummy_page_init._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @radeon_dummy_page_init._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.39, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 990, i32 3}
!64 = !{ptr @radeon_atombios_init.__key, !65, !"__key", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 1005, i32 2}
!66 = !{ptr @.str.40, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @radeon_atombios_init.__key.41, !68, !"__key", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 1006, i32 2}
!69 = !{ptr @.str.42, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.43, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 1314, i32 2}
!72 = !{ptr @.str.44, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @radeon_device_init._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @radeon_device_init._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @radeon_device_init.__key, !76, !"__key", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 1320, i32 2}
!77 = !{ptr @.str.45, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @radeon_device_init.__key.46, !79, !"__key", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 1321, i32 2}
!80 = !{ptr @.str.47, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @radeon_device_init.__key.48, !82, !"__key", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 1323, i32 2}
!83 = !{ptr @.str.49, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @radeon_device_init.__key.50, !85, !"__key", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 1324, i32 2}
!86 = !{ptr @.str.51, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @radeon_device_init.__key.52, !88, !"__key", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 1325, i32 2}
!89 = !{ptr @.str.53, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @radeon_device_init.__key.54, !91, !"__key", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 1326, i32 2}
!92 = !{ptr @.str.55, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @radeon_device_init.__key.56, !94, !"__key", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 1327, i32 2}
!95 = !{ptr @.str.57, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @radeon_device_init.__key.58, !97, !"__key", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 1328, i32 2}
!98 = !{ptr @.str.59, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @radeon_device_init.__key.60, !100, !"__key", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 1329, i32 2}
!101 = !{ptr @.str.61, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.63, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 1387, i32 3}
!104 = !{ptr @radeon_device_init._entry.62, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @radeon_device_init._entry_ptr.64, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @radeon_device_init.__key.65, !107, !"__key", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 1394, i32 2}
!108 = !{ptr @.str.66, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @radeon_device_init.__key.67, !110, !"__key", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 1395, i32 2}
!111 = !{ptr @.str.68, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @radeon_device_init.__key.69, !113, !"__key", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 1396, i32 2}
!114 = !{ptr @.str.70, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @radeon_device_init.__key.71, !116, !"__key", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 1397, i32 2}
!117 = !{ptr @.str.72, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @radeon_device_init.__key.73, !119, !"__key", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 1398, i32 2}
!120 = !{ptr @.str.74, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @radeon_device_init.__key.75, !122, !"__key", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 1399, i32 2}
!123 = !{ptr @.str.76, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @radeon_device_init.__key.77, !125, !"__key", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 1400, i32 2}
!126 = !{ptr @.str.78, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @radeon_device_init.__key.79, !128, !"__key", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 1401, i32 2}
!129 = !{ptr @.str.80, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @radeon_device_init.__key.81, !131, !"__key", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 1402, i32 2}
!132 = !{ptr @.str.82, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @radeon_device_init.__key.83, !134, !"__key", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 1403, i32 2}
!135 = !{ptr @.str.84, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @radeon_device_init.__key.85, !137, !"__key", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 1404, i32 2}
!138 = !{ptr @.str.86, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @radeon_device_init.__key.87, !140, !"__key", i1 false, i1 false}
!140 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 1405, i32 2}
!141 = !{ptr @.str.88, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.89, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 1430, i32 3}
!144 = !{ptr @.str.90, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 1469, i32 3}
!146 = !{ptr @.str.92, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 1490, i32 4}
!148 = !{ptr @radeon_device_init._entry.91, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @radeon_device_init._entry_ptr.93, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.95, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 1496, i32 4}
!152 = !{ptr @radeon_device_init._entry.94, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @radeon_device_init._entry_ptr.96, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.98, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 1502, i32 4}
!156 = !{ptr @radeon_device_init._entry.97, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @radeon_device_init._entry_ptr.99, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.100, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 1525, i32 2}
!160 = !{ptr @.str.101, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @radeon_device_fini._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @radeon_device_fini._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.102, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 1696, i32 4}
!165 = !{ptr @.str.103, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 1720, i32 6}
!167 = !{ptr @.str.104, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 1803, i32 4}
!169 = !{ptr @.str.105, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @radeon_gpu_reset._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @radeon_gpu_reset._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.107, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 1810, i32 3}
!174 = !{ptr @radeon_gpu_reset._entry.106, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @radeon_gpu_reset._entry_ptr.108, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.110, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 1872, i32 3}
!178 = !{ptr @radeon_gpu_reset._entry.109, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @radeon_gpu_reset._entry_ptr.111, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.112, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/gpu/drm/radeon/radeon_object.h", i32 71, i32 4}
!182 = !{ptr @.str.113, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.114, !181, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @radeon_bo_reserve._entry, !181, !"_entry", i1 false, i1 false}
!185 = !{ptr @radeon_bo_reserve._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!186 = distinct !{null, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../include/drm/ttm/ttm_bo_driver.h", i32 140, i32 7}
!188 = distinct !{null, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!190 = !{ptr @radeon_family_name, !191, !"radeon_family_name", i1 false, i1 false}
!191 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 49, i32 19}
!192 = !{ptr @.str.117, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 1130, i32 3}
!194 = !{ptr @.str.118, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @radeon_check_arguments._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @radeon_check_arguments._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.120, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 1140, i32 3}
!199 = !{ptr @radeon_check_arguments._entry.119, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @radeon_check_arguments._entry_ptr.121, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.123, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 1144, i32 3}
!203 = !{ptr @radeon_check_arguments._entry.122, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @radeon_check_arguments._entry_ptr.124, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.126, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 1160, i32 3}
!207 = !{ptr @radeon_check_arguments._entry.125, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @radeon_check_arguments._entry_ptr.127, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.129, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 1167, i32 3}
!211 = !{ptr @radeon_check_arguments._entry.128, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @radeon_check_arguments._entry_ptr.130, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.132, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 1173, i32 3}
!215 = !{ptr @radeon_check_arguments._entry.131, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @radeon_check_arguments._entry_ptr.133, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.135, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 1182, i32 3}
!219 = !{ptr @radeon_check_arguments._entry.134, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @radeon_check_arguments._entry_ptr.136, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.138, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 1203, i32 3}
!223 = !{ptr @radeon_check_arguments._entry.137, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @radeon_check_arguments._entry_ptr.139, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.141, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 1210, i32 3}
!227 = !{ptr @radeon_check_arguments._entry.140, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @radeon_check_arguments._entry_ptr.142, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.143, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 351, i32 2}
!231 = !{ptr @.str.144, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @radeon_doorbell_init._entry, !230, !"_entry", i1 false, i1 false}
!233 = !{ptr @radeon_doorbell_init._entry_ptr, !230, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.146, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 352, i32 2}
!236 = !{ptr @radeon_doorbell_init._entry.145, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @radeon_doorbell_init._entry_ptr.147, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @radeon_px_quirk_list, !239, !"radeon_px_quirk_list", i1 false, i1 false}
!239 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 133, i32 31}
!240 = distinct !{null, !241, !"radeon_switcheroo_ops", i1 false, i1 false}
!241 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 1271, i32 47}
!242 = !{ptr @.str.148, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 1233, i32 3}
!244 = !{ptr @.str.149, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @radeon_switcheroo_set_state._entry, !243, !"_entry", i1 false, i1 false}
!246 = !{ptr @radeon_switcheroo_set_state._entry_ptr, !243, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.151, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/gpu/drm/radeon/radeon_device.c", i32 1242, i32 3}
!249 = !{ptr @radeon_switcheroo_set_state._entry.150, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @radeon_switcheroo_set_state._entry_ptr.152, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{!"sp"}
!252 = !{i32 1, !"wchar_size", i32 2}
!253 = !{i32 1, !"min_enum_size", i32 4}
!254 = !{i32 8, !"branch-target-enforcement", i32 0}
!255 = !{i32 8, !"sign-return-address", i32 0}
!256 = !{i32 8, !"sign-return-address-all", i32 0}
!257 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!258 = !{i32 7, !"uwtable", i32 1}
!259 = !{i32 7, !"frame-pointer", i32 2}
!260 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!261 = !{i64 5269648}
!262 = !{i64 2158102418}
!263 = !{i64 2158102825}
!264 = !{i64 5269230}
!265 = !{i8 0, i8 2}
!266 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!267 = !{!"branch_weights", i32 2000, i32 1}
!268 = !{i64 2148589072, i64 2148589352, i64 2148589686, i64 2148590020}
!269 = !{i32 0, i32 33}
!270 = !{i64 2148173465}
!271 = !{i64 549386, i64 549411, i64 549433, i64 549449, i64 549461, i64 549481, i64 549505, i64 549521, i64 549533}
!272 = !{i64 2148173653}
!273 = !{i64 2148174046, i64 2148174072, i64 2148174101, i64 2148174135, i64 2148174166, i64 2148174189}
