; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/radeon_uvd.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/radeon_uvd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.common_firmware_header = type { i32, i32, i16, i16, i16, i16, i32, i32, i32, i32 }
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
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }
%struct.mmu_interval_notifier = type { %struct.interval_tree_node, ptr, ptr, %struct.hlist_node, i32 }
%struct.interval_tree_node = type { %struct.rb_node, i32, i32, i32 }
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
%struct.radeon_cs_packet = type { i32, i32, i32, i32, i32, i32 }
%struct.radeon_cs_parser = type { ptr, ptr, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, i32, ptr, ptr, ptr, ptr, %struct.radeon_ib, %struct.radeon_ib, ptr, i32, i32, i32, i32, i32, %struct.ww_acquire_ctx }
%struct.radeon_ib = type { ptr, i32, i64, ptr, i32, ptr, ptr, i8, %struct.radeon_sync }
%struct.radeon_sync = type { [4 x ptr], [8 x ptr], ptr }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16, i32, ptr, ptr, %struct.lockdep_map, i32, i32 }
%struct.radeon_cs_chunk = type { i32, ptr, ptr }
%struct.radeon_bo_list = type { ptr, %struct.ttm_validate_buffer, i64, i32, i32, i32 }
%struct.ttm_validate_buffer = type { %struct.list_head, ptr, i32 }

@__UNIQUE_ID_firmware320 = internal constant [36 x i8] c"radeon.firmware=radeon/R600_uvd.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware321 = internal constant [37 x i8] c"radeon.firmware=radeon/RS780_uvd.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware322 = internal constant [37 x i8] c"radeon.firmware=radeon/RV770_uvd.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware323 = internal constant [37 x i8] c"radeon.firmware=radeon/RV710_uvd.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware324 = internal constant [39 x i8] c"radeon.firmware=radeon/CYPRESS_uvd.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware325 = internal constant [36 x i8] c"radeon.firmware=radeon/SUMO_uvd.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware326 = internal constant [38 x i8] c"radeon.firmware=radeon/TAHITI_uvd.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware327 = internal constant [39 x i8] c"radeon.firmware=radeon/BONAIRE_uvd.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware328 = internal constant [39 x i8] c"radeon.firmware=radeon/bonaire_uvd.bin\00", section ".modinfo", align 1
@radeon_uvd_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&(&rdev->uvd.idle_work)->work)\00", [47 x i8] zeroinitializer }, align 32
@radeon_uvd_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&(&rdev->uvd.idle_work)->timer\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"radeon/R600_uvd.bin\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"radeon/RS780_uvd.bin\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"radeon/RV770_uvd.bin\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"radeon/RV710_uvd.bin\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"radeon/CYPRESS_uvd.bin\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"radeon/SUMO_uvd.bin\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"radeon/TAHITI_uvd.bin\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"radeon/BONAIRE_uvd.bin\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"radeon/bonaire_uvd.bin\00", [41 x i8] zeroinitializer }, align 32
@radeon_uvd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.14, i32 144, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"radeon_uvd: Can't load firmware \22%s\22\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"radeon_uvd_init\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/gpu/drm/radeon/radeon_uvd.c\00", [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@radeon_uvd_init._entry_ptr = internal global ptr @radeon_uvd_init._entry, section ".printk_index", align 4
@radeon_uvd_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.14, i32 161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016[drm] Found UVD firmware Version: %u.%u Family ID: %u\0A\00", [39 x i8] zeroinitializer }, align 32
@radeon_uvd_init._entry_ptr.19 = internal global ptr @radeon_uvd_init._entry.17, section ".printk_index", align 4
@radeon_uvd_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.14, i32 181, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@radeon_uvd_init._entry_ptr.21 = internal global ptr @radeon_uvd_init._entry.20, section ".printk_index", align 4
@radeon_uvd_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.13, ptr @.str.14, i32 193, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(%d) failed to allocate UVD bo\0A\00", [32 x i8] zeroinitializer }, align 32
@radeon_uvd_init._entry_ptr.24 = internal global ptr @radeon_uvd_init._entry.22, section ".printk_index", align 4
@radeon_uvd_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.13, ptr @.str.14, i32 200, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(%d) failed to reserve UVD bo\0A\00", [33 x i8] zeroinitializer }, align 32
@radeon_uvd_init._entry_ptr.27 = internal global ptr @radeon_uvd_init._entry.25, section ".printk_index", align 4
@radeon_uvd_init._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.13, ptr @.str.14, i32 209, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"(%d) UVD bo pin failed\0A\00", [40 x i8] zeroinitializer }, align 32
@radeon_uvd_init._entry_ptr.30 = internal global ptr @radeon_uvd_init._entry.28, section ".printk_index", align 4
@radeon_uvd_init._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.13, ptr @.str.14, i32 215, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(%d) UVD map failed\0A\00", [43 x i8] zeroinitializer }, align 32
@radeon_uvd_init._entry_ptr.33 = internal global ptr @radeon_uvd_init._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Error destroying UVD (%d)!\0A\00", [36 x i8] zeroinitializer }, align 32
@__const.radeon_uvd_cs_parse.buf_sizes = private unnamed_addr constant [4 x i32] [i32 2048, i32 33554432, i32 7077888, i32 2048], align 4
@.str.35 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"UVD IB length (%d) not 16 dwords aligned!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"No relocation chunk !\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unknown packet type %d !\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"UVD-IBs need a msg command!\0A\00", [35 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Timeout setting UVD clocks!\0A\00", [35 x i8] zeroinitializer }, align 32
@radeon_bo_reserve._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.42, i32 71, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%p reserve failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"radeon_bo_reserve\00", [46 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/radeon/radeon_object.h\00", [57 x i8] zeroinitializer }, align 32
@radeon_bo_reserve._entry_ptr = internal global ptr @radeon_bo_reserve._entry, section ".printk_index", align 4
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid reg 0x%X!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Relocs at %d after relocations chunk end %d !\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid reloc offset %X!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"buffer (%d) to small (%d / %d)!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid UVD command %X!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"reloc %LX-%LX crossing 256MB boundary!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"msg/fb buffer %LX-%LX out of 256MB segment!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"More than one message in a UVD-IB!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Message needed before other commands are send!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"UVD messages must be 64 byte aligned!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed waiting for UVD message (%ld)!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed mapping the UVD message (%ld)!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid UVD handle!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Handle 0x%x already in use!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"No more free UVD handles!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"UVD handle collision detected!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid UVD handle 0x%x!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Illegal UVD message type (%d)!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"UVD codec not supported by hardware %d!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"UVD codec not handled %d!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Invalid UVD decoding target pitch!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Invalid dpb_size in UVD message (%d / %d)!\0A\00", [52 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [35 x i64] [i64 33, i64 32, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 57, i64 58, i64 59, i64 60, i64 61]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.70 = internal global [7 x i64] [i64 5, i64 32, i64 61196, i64 61200, i64 61204, i64 61208, i64 61436]
@__sancov_gen_cov_switch_values.71 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.72 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.73 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.74 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@___asan_gen_.82 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 72, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 80, i32 20 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 85, i32 20 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 89, i32 20 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 95, i32 20 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 103, i32 20 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 113, i32 20 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 121, i32 20 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 129, i32 20 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 130, i32 13 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 143, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 160, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 180, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 193, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 200, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 209, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 215, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 268, i32 5 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 700, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 706, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 726, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 732, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1046, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [42 x i8] c"../drivers/gpu/drm/radeon/radeon_object.h\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 71, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 674, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 585, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 602, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 606, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 612, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 617, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 625, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 632, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 640, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 477, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 484, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 490, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 500, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 517, i32 5 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 528, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 544, i32 6 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 551, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 563, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 461, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 424, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 429, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.260 = private constant [39 x i8] c"../drivers/gpu/drm/radeon/radeon_uvd.c\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 434, i32 3 }
@llvm.compiler.used = appending global [79 x ptr] [ptr @__UNIQUE_ID_firmware320, ptr @__UNIQUE_ID_firmware321, ptr @__UNIQUE_ID_firmware322, ptr @__UNIQUE_ID_firmware323, ptr @__UNIQUE_ID_firmware324, ptr @__UNIQUE_ID_firmware325, ptr @__UNIQUE_ID_firmware326, ptr @__UNIQUE_ID_firmware327, ptr @__UNIQUE_ID_firmware328, ptr @radeon_bo_reserve._entry, ptr @radeon_bo_reserve._entry_ptr, ptr @radeon_uvd_init._entry, ptr @radeon_uvd_init._entry.17, ptr @radeon_uvd_init._entry.20, ptr @radeon_uvd_init._entry.22, ptr @radeon_uvd_init._entry.25, ptr @radeon_uvd_init._entry.28, ptr @radeon_uvd_init._entry.31, ptr @radeon_uvd_init._entry_ptr, ptr @radeon_uvd_init._entry_ptr.19, ptr @radeon_uvd_init._entry_ptr.21, ptr @radeon_uvd_init._entry_ptr.24, ptr @radeon_uvd_init._entry_ptr.27, ptr @radeon_uvd_init._entry_ptr.30, ptr @radeon_uvd_init._entry_ptr.33, ptr @radeon_uvd_init.__key, ptr @.str, ptr @radeon_uvd_init.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_uvd_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_uvd_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_uvd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_uvd_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_uvd_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_uvd_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_uvd_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_uvd_init._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_uvd_init._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_bo_reserve._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_uvd_init(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %uvd = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 59
  %idle_work = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 59, i32 8
  tail call void @__init_work(ptr noundef %idle_work, i32 noundef 0) #8
  %0 = ptrtoint ptr %idle_work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %idle_work, align 4
  %lockdep_map = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 59, i32 8, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @radeon_uvd_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry11 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 59, i32 8, i32 0, i32 1
  %1 = ptrtoint ptr %entry11 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry11, ptr %entry11, align 4
  %prev.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 59, i32 8, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry11, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 59, i32 8, i32 0, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @radeon_uvd_idle_work_handler, ptr %func, align 4
  %timer = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 59, i32 8, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.2, ptr noundef nonnull @radeon_uvd_init.__key.1) #8
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %4 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %family, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %entry.cleanup143_crit_edge [
    i32 28, label %entry.sw.epilog.thread_crit_edge
    i32 29, label %entry.sw.epilog.thread_crit_edge243
    i32 30, label %entry.sw.epilog.thread_crit_edge244
    i32 31, label %entry.sw.epilog.thread_crit_edge245
    i32 32, label %entry.sw.epilog.thread_crit_edge246
    i32 33, label %entry.sw.bb22_crit_edge
    i32 34, label %entry.sw.bb22_crit_edge247
    i32 35, label %sw.bb23
    i32 37, label %entry.sw.bb24_crit_edge
    i32 36, label %entry.sw.bb24_crit_edge248
    i32 38, label %entry.sw.bb24_crit_edge249
    i32 42, label %entry.sw.bb25_crit_edge
    i32 43, label %entry.sw.bb25_crit_edge250
    i32 41, label %entry.sw.bb25_crit_edge251
    i32 40, label %entry.sw.bb25_crit_edge252
    i32 39, label %entry.sw.bb25_crit_edge253
    i32 45, label %entry.sw.bb26_crit_edge
    i32 46, label %entry.sw.bb26_crit_edge254
    i32 44, label %entry.sw.bb26_crit_edge255
    i32 50, label %entry.sw.bb26_crit_edge256
    i32 47, label %entry.sw.bb26_crit_edge257
    i32 48, label %entry.sw.bb26_crit_edge258
    i32 49, label %entry.sw.bb26_crit_edge259
    i32 52, label %entry.sw.bb27_crit_edge
    i32 54, label %entry.sw.bb27_crit_edge260
    i32 53, label %entry.sw.bb27_crit_edge261
    i32 51, label %entry.sw.bb27_crit_edge262
    i32 55, label %entry.sw.bb27_crit_edge263
    i32 57, label %entry.if.then_crit_edge
    i32 59, label %entry.if.then_crit_edge264
    i32 58, label %entry.if.then_crit_edge265
    i32 60, label %entry.if.then_crit_edge266
    i32 61, label %entry.if.then_crit_edge267
  ]

entry.if.then_crit_edge267:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.then_crit_edge266:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.then_crit_edge265:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.then_crit_edge264:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.sw.bb27_crit_edge263:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb27

entry.sw.bb27_crit_edge262:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb27

entry.sw.bb27_crit_edge261:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb27

entry.sw.bb27_crit_edge260:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb27

entry.sw.bb27_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb27

entry.sw.bb26_crit_edge259:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb26

entry.sw.bb26_crit_edge258:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb26

entry.sw.bb26_crit_edge257:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb26

entry.sw.bb26_crit_edge256:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb26

entry.sw.bb26_crit_edge255:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb26

entry.sw.bb26_crit_edge254:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb26

entry.sw.bb26_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb26

entry.sw.bb25_crit_edge253:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb25

entry.sw.bb25_crit_edge252:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb25

entry.sw.bb25_crit_edge251:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb25

entry.sw.bb25_crit_edge250:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb25

entry.sw.bb25_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb25

entry.sw.bb24_crit_edge249:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb24

entry.sw.bb24_crit_edge248:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb24

entry.sw.bb24_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb24

entry.sw.bb22_crit_edge247:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb22

entry.sw.bb22_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb22

entry.sw.epilog.thread_crit_edge246:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread

entry.sw.epilog.thread_crit_edge245:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread

entry.sw.epilog.thread_crit_edge244:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread

entry.sw.epilog.thread_crit_edge243:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread

entry.sw.epilog.thread_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread

entry.cleanup143_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup143

sw.bb22:                                          ; preds = %entry.sw.bb22_crit_edge, %entry.sw.bb22_crit_edge247
  br label %sw.epilog.thread

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread

sw.bb24:                                          ; preds = %entry.sw.bb24_crit_edge, %entry.sw.bb24_crit_edge248, %entry.sw.bb24_crit_edge249
  br label %sw.epilog.thread

sw.bb25:                                          ; preds = %entry.sw.bb25_crit_edge, %entry.sw.bb25_crit_edge250, %entry.sw.bb25_crit_edge251, %entry.sw.bb25_crit_edge252, %entry.sw.bb25_crit_edge253
  br label %sw.epilog.thread

sw.bb26:                                          ; preds = %entry.sw.bb26_crit_edge, %entry.sw.bb26_crit_edge254, %entry.sw.bb26_crit_edge255, %entry.sw.bb26_crit_edge256, %entry.sw.bb26_crit_edge257, %entry.sw.bb26_crit_edge258, %entry.sw.bb26_crit_edge259
  br label %sw.epilog.thread

sw.bb27:                                          ; preds = %entry.sw.bb27_crit_edge, %entry.sw.bb27_crit_edge260, %entry.sw.bb27_crit_edge261, %entry.sw.bb27_crit_edge262, %entry.sw.bb27_crit_edge263
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %sw.bb27, %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb23, %sw.bb22, %entry.sw.epilog.thread_crit_edge, %entry.sw.epilog.thread_crit_edge243, %entry.sw.epilog.thread_crit_edge244, %entry.sw.epilog.thread_crit_edge245, %entry.sw.epilog.thread_crit_edge246
  %legacy_fw_name.0.ph = phi ptr [ @.str.3, %entry.sw.epilog.thread_crit_edge ], [ @.str.3, %entry.sw.epilog.thread_crit_edge243 ], [ @.str.3, %entry.sw.epilog.thread_crit_edge244 ], [ @.str.3, %entry.sw.epilog.thread_crit_edge245 ], [ @.str.3, %entry.sw.epilog.thread_crit_edge246 ], [ @.str.4, %sw.bb22 ], [ @.str.5, %sw.bb23 ], [ @.str.6, %sw.bb24 ], [ @.str.7, %sw.bb25 ], [ @.str.8, %sw.bb26 ], [ @.str.9, %sw.bb27 ]
  %7 = ptrtoint ptr %uvd to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %uvd, align 8
  %max_handles227 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 59, i32 4
  %8 = ptrtoint ptr %max_handles227 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 10, ptr %max_handles227, align 8
  br label %if.then66

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge264, %entry.if.then_crit_edge265, %entry.if.then_crit_edge266, %entry.if.then_crit_edge267
  %9 = ptrtoint ptr %uvd to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %uvd, align 8
  %max_handles = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 59, i32 4
  %10 = ptrtoint ptr %max_handles to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 10, ptr %max_handles, align 8
  %uvd_fw = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 80
  %11 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rdev, align 8
  %call = tail call i32 @request_firmware(ptr noundef %uvd_fw, ptr noundef nonnull @.str.11, ptr noundef %12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool31.not = icmp eq i32 %call, 0
  br i1 %tobool31.not, label %if.else, label %do.end35

do.end35:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11) #11
  br label %if.then66

if.else:                                          ; preds = %if.then
  %15 = ptrtoint ptr %uvd_fw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %uvd_fw, align 4
  %data38 = getelementptr inbounds %struct.firmware, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %data38 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data38, align 4
  %call40 = tail call i32 @radeon_ucode_validate(ptr noundef %16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end, label %if.else.cleanup143_crit_edge

if.else.cleanup143_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup143

if.end:                                           ; preds = %if.else
  %19 = ptrtoint ptr %uvd to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %uvd, align 8
  %ucode_version = getelementptr inbounds %struct.common_firmware_header, ptr %18, i32 0, i32 6
  %20 = ptrtoint ptr %ucode_version to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ucode_version, align 4
  %and = and i32 %21, 255
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %shr = lshr i32 %22, 24
  %shr48 = lshr i32 %22, 8
  %and49 = and i32 %shr48, 255
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %shr, i32 noundef %and49, i32 noundef %and) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %22)
  %cmp.not = icmp ugt i32 %22, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 54, i32 %and49)
  %cmp54 = icmp ugt i32 %and49, 54
  %or.cond = and i1 %cmp.not, %cmp54
  br i1 %or.cond, label %if.then55, label %if.end.if.end77_crit_edge

if.end.if.end77_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.then55:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %max_handles to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 30, ptr %max_handles, align 8
  br label %if.end77

if.then66:                                        ; preds = %do.end35, %sw.epilog.thread
  %legacy_fw_name.0229240 = phi ptr [ %legacy_fw_name.0.ph, %sw.epilog.thread ], [ @.str.10, %do.end35 ]
  %max_handles230238 = phi ptr [ %max_handles227, %sw.epilog.thread ], [ %max_handles, %do.end35 ]
  %uvd_fw67 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 80
  %24 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rdev, align 8
  %call69 = tail call i32 @request_firmware(ptr noundef %uvd_fw67, ptr noundef nonnull %legacy_fw_name.0229240, ptr noundef %25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.then66.if.end77_crit_edge, label %do.end74

if.then66.if.end77_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

do.end74:                                         ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.12, ptr noundef nonnull %legacy_fw_name.0229240) #11
  br label %cleanup143

if.end77:                                         ; preds = %if.then66.if.end77_crit_edge, %if.then55, %if.end.if.end77_crit_edge
  %max_handles230239 = phi ptr [ %max_handles230238, %if.then66.if.end77_crit_edge ], [ %max_handles, %if.end.if.end77_crit_edge ], [ %max_handles, %if.then55 ]
  %uvd_fw78 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 80
  %28 = ptrtoint ptr %uvd_fw78 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %uvd_fw78, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %32 = add i32 %31, 471047
  %add82 = and i32 %32, -4096
  %33 = ptrtoint ptr %max_handles230239 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %max_handles230239, align 8
  %mul = mul i32 %34, 51200
  %add85 = add i32 %add82, %mul
  %vcpu_bo = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 59, i32 1
  %call87 = tail call i32 @radeon_bo_create(ptr noundef %rdev, i32 noundef %add85, i32 noundef 4096, i1 noundef zeroext true, i32 noundef 4, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef %vcpu_bo) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end94, label %do.end92

do.end92:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.23, i32 noundef %call87) #11
  br label %cleanup143

if.end94:                                         ; preds = %if.end77
  %37 = ptrtoint ptr %vcpu_bo to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vcpu_bo, align 4
  %resv32.i.i = getelementptr inbounds %struct.radeon_bo, ptr %38, i32 0, i32 4, i32 0, i32 9
  %39 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %40, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %.ret.0.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %41 = zext i32 %.ret.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %.ret.0.i.i, label %do.end.i [
    i32 0, label %if.end106
    i32 -512, label %if.end94.if.then99_crit_edge
  ], !prof !145

if.end94.if.then99_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then99

do.end.i:                                         ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  %rdev.i = getelementptr inbounds %struct.radeon_bo, ptr %38, i32 0, i32 13
  %42 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rdev.i, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.40, ptr noundef %38) #11
  br label %if.then99

if.then99:                                        ; preds = %do.end.i, %if.end94.if.then99_crit_edge
  tail call void @radeon_bo_unref(ptr noundef %vcpu_bo) #8
  %46 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.26, i32 noundef %.ret.0.i.i) #11
  br label %cleanup143

if.end106:                                        ; preds = %if.end94
  %48 = ptrtoint ptr %vcpu_bo to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %vcpu_bo, align 4
  %gpu_addr = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 59, i32 3
  %call110 = tail call i32 @radeon_bo_pin(ptr noundef %49, i32 noundef 4, ptr noundef %gpu_addr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  %50 = ptrtoint ptr %vcpu_bo to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %vcpu_bo, align 4
  br i1 %tobool111.not, label %if.end121, label %if.then112

if.then112:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #10
  %tbo.i = getelementptr inbounds %struct.radeon_bo, ptr %51, i32 0, i32 4
  %bdev.i.i.i = getelementptr inbounds %struct.radeon_bo, ptr %51, i32 0, i32 4, i32 1
  %52 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %53, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #8
  %resource.i.i.i = getelementptr inbounds %struct.radeon_bo, ptr %51, i32 0, i32 4, i32 6
  %54 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %resource.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i, ptr noundef %55, ptr noundef null) #8
  %56 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %57, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #8
  %resv.i.i = getelementptr inbounds %struct.radeon_bo, ptr %51, i32 0, i32 4, i32 0, i32 9
  %58 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %resv.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %59) #8
  tail call void @ww_mutex_unlock(ptr noundef %59) #8
  tail call void @radeon_bo_unref(ptr noundef %vcpu_bo) #8
  %60 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.29, i32 noundef %call110) #11
  br label %cleanup143

if.end121:                                        ; preds = %if.end106
  %cpu_addr = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 59, i32 2
  %call125 = tail call i32 @radeon_bo_kmap(ptr noundef %51, ptr noundef %cpu_addr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %if.end132, label %do.end130

do.end130:                                        ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.32, i32 noundef %call125) #11
  br label %cleanup143

if.end132:                                        ; preds = %if.end121
  %64 = ptrtoint ptr %vcpu_bo to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %vcpu_bo, align 4
  %tbo.i218 = getelementptr inbounds %struct.radeon_bo, ptr %65, i32 0, i32 4
  %bdev.i.i.i219 = getelementptr inbounds %struct.radeon_bo, ptr %65, i32 0, i32 4, i32 1
  %66 = ptrtoint ptr %bdev.i.i.i219 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bdev.i.i.i219, align 8
  %lru_lock.i.i.i220 = getelementptr inbounds %struct.ttm_device, ptr %67, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i220) #8
  %resource.i.i.i221 = getelementptr inbounds %struct.radeon_bo, ptr %65, i32 0, i32 4, i32 6
  %68 = ptrtoint ptr %resource.i.i.i221 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %resource.i.i.i221, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i218, ptr noundef %69, ptr noundef null) #8
  %70 = ptrtoint ptr %bdev.i.i.i219 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bdev.i.i.i219, align 8
  %lru_lock2.i.i.i222 = getelementptr inbounds %struct.ttm_device, ptr %71, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i222) #8
  %resv.i.i223 = getelementptr inbounds %struct.radeon_bo, ptr %65, i32 0, i32 4, i32 0, i32 9
  %72 = ptrtoint ptr %resv.i.i223 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %resv.i.i223, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %73) #8
  tail call void @ww_mutex_unlock(ptr noundef %73) #8
  %74 = ptrtoint ptr %max_handles230239 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %max_handles230239, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp137241.not = icmp eq i32 %75, 0
  br i1 %cmp137241.not, label %if.end132.cleanup143_crit_edge, label %if.end132.for.body_crit_edge

if.end132.for.body_crit_edge:                     ; preds = %if.end132
  br label %for.body

if.end132.cleanup143_crit_edge:                   ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup143

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end132.for.body_crit_edge
  %i.0242 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end132.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 59, i32 5, i32 %i.0242
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #8
  %76 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile i32 0, ptr %arrayidx, align 4
  %arrayidx140 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 59, i32 6, i32 %i.0242
  %77 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %arrayidx140, align 4
  %arrayidx142 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 59, i32 7, i32 %i.0242
  %78 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %arrayidx142, align 4
  %inc = add nuw i32 %i.0242, 1
  %79 = ptrtoint ptr %max_handles230239 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %max_handles230239, align 8
  %cmp137 = icmp ult i32 %inc, %80
  br i1 %cmp137, label %for.body.for.body_crit_edge, label %for.body.cleanup143_crit_edge

for.body.cleanup143_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup143

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup143:                                       ; preds = %for.body.cleanup143_crit_edge, %if.end132.cleanup143_crit_edge, %do.end130, %if.then112, %if.then99, %do.end92, %do.end74, %if.else.cleanup143_crit_edge, %entry.cleanup143_crit_edge
  %retval.1 = phi i32 [ %call69, %do.end74 ], [ %call87, %do.end92 ], [ %.ret.0.i.i, %if.then99 ], [ %call110, %if.then112 ], [ %call125, %do.end130 ], [ -22, %entry.cleanup143_crit_edge ], [ %call40, %if.else.cleanup143_crit_edge ], [ 0, %if.end132.cleanup143_crit_edge ], [ 0, %for.body.cleanup143_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_uvd_idle_work_handler(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -9844
  %call = tail call i32 @radeon_fence_count_emitted(ptr noundef %add.ptr, i32 noundef 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else9

if.then:                                          ; preds = %entry
  %pm_method = getelementptr i8, ptr %work, i32 -1128
  %0 = ptrtoint ptr %pm_method to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pm_method, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp1 = icmp eq i32 %1, 2
  br i1 %cmp1, label %land.lhs.true, label %if.then.if.else_crit_edge

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %if.then
  %dpm_enabled = getelementptr i8, ptr %work, i32 -876
  %2 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dpm_enabled, align 8, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true.if.else_crit_edge, label %if.then3

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then3:                                         ; preds = %land.lhs.true
  %sd = getelementptr i8, ptr %work, i32 -400
  %hd = getelementptr i8, ptr %work, i32 -396
  %4 = ptrtoint ptr %sd to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %sd, align 4
  %5 = ptrtoint ptr %hd to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %hd, align 4
  %max_handles.i = getelementptr i8, ptr %work, i32 -364
  %6 = ptrtoint ptr %max_handles.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_handles.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp16.not.i = icmp eq i32 %7, 0
  br i1 %cmp16.not.i, label %if.then3.radeon_uvd_count_handles.exit_crit_edge, label %if.then3.for.body.i_crit_edge

if.then3.for.body.i_crit_edge:                    ; preds = %if.then3
  br label %for.body.i

if.then3.radeon_uvd_count_handles.exit_crit_edge: ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_uvd_count_handles.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then3.for.body.i_crit_edge
  %i.017.i = phi i32 [ %inc8.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then3.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.radeon_device, ptr %add.ptr, i32 0, i32 59, i32 5, i32 %i.017.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i, i32 noundef 4) #8
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx3.i = getelementptr %struct.radeon_device, ptr %add.ptr, i32 0, i32 59, i32 7, i32 %i.017.i
  %10 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 414719, i32 %11)
  %cmp4.i = icmp ugt i32 %11, 414719
  %hd.sd.i = select i1 %cmp4.i, ptr %hd, ptr %sd
  %12 = ptrtoint ptr %hd.sd.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hd.sd.i, align 4
  %inc.i = add i32 %13, 1
  store i32 %inc.i, ptr %hd.sd.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %inc8.i = add nuw i32 %i.017.i, 1
  %14 = ptrtoint ptr %max_handles.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_handles.i, align 8
  %cmp.i = icmp ult i32 %inc8.i, %15
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.radeon_uvd_count_handles.exit_crit_edge

for.inc.i.radeon_uvd_count_handles.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_uvd_count_handles.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

radeon_uvd_count_handles.exit:                    ; preds = %for.inc.i.radeon_uvd_count_handles.exit_crit_edge, %if.then3.radeon_uvd_count_handles.exit_crit_edge
  tail call void @radeon_dpm_enable_uvd(ptr noundef %add.ptr, i1 noundef zeroext false) #8
  br label %if.end12

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then.if.else_crit_edge
  %asic = getelementptr i8, ptr %work, i32 -1540
  %16 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %asic, align 8
  %set_uvd_clocks = getelementptr inbounds %struct.radeon_asic, ptr %17, i32 0, i32 20, i32 12
  %18 = ptrtoint ptr %set_uvd_clocks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_uvd_clocks, align 4
  %call8 = tail call i32 %19(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 0) #8
  br label %if.end12

if.else9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %20 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %20, ptr noundef %work, i32 noundef 100) #8
  br label %if.end12

if.end12:                                         ; preds = %if.else9, %if.else, %radeon_uvd_count_handles.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_ucode_validate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_bo_create(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_bo_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_bo_pin(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_bo_kmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_uvd_fini(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vcpu_bo = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 59, i32 1
  %0 = ptrtoint ptr %vcpu_bo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vcpu_bo, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %resv32.i.i = getelementptr inbounds %struct.radeon_bo, ptr %1, i32 0, i32 4, i32 0, i32 9
  %2 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %3, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %.ret.0.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %4 = zext i32 %.ret.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %.ret.0.i.i, label %do.end.i [
    i32 0, label %if.then3
    i32 -512, label %if.end.if.end10_crit_edge
  ], !prof !145

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %rdev.i = getelementptr inbounds %struct.radeon_bo, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rdev.i, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.40, ptr noundef nonnull %1) #11
  br label %if.end10

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %vcpu_bo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vcpu_bo, align 4
  tail call void @radeon_bo_kunmap(ptr noundef %10) #8
  %11 = ptrtoint ptr %vcpu_bo to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vcpu_bo, align 4
  tail call void @radeon_bo_unpin(ptr noundef %12) #8
  %13 = ptrtoint ptr %vcpu_bo to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vcpu_bo, align 4
  %tbo.i = getelementptr inbounds %struct.radeon_bo, ptr %14, i32 0, i32 4
  %bdev.i.i.i = getelementptr inbounds %struct.radeon_bo, ptr %14, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %16, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #8
  %resource.i.i.i = getelementptr inbounds %struct.radeon_bo, ptr %14, i32 0, i32 4, i32 6
  %17 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %resource.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i, ptr noundef %18, ptr noundef null) #8
  %19 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %20, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #8
  %resv.i.i = getelementptr inbounds %struct.radeon_bo, ptr %14, i32 0, i32 4, i32 0, i32 9
  %21 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %resv.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %22) #8
  tail call void @ww_mutex_unlock(ptr noundef %22) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then3, %do.end.i, %if.end.if.end10_crit_edge
  tail call void @radeon_bo_unref(ptr noundef %vcpu_bo) #8
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 5
  tail call void @radeon_ring_fini(ptr noundef %rdev, ptr noundef %arrayidx) #8
  %uvd_fw = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 80
  %23 = ptrtoint ptr %uvd_fw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %uvd_fw, align 4
  tail call void @release_firmware(ptr noundef %24) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_bo_kunmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_bo_unpin(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ring_fini(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_uvd_suspend(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  %fence = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vcpu_bo = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 59, i32 1
  %0 = ptrtoint ptr %vcpu_bo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vcpu_bo, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup19_crit_edge, label %for.cond.preheader

entry.cleanup19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup19

for.cond.preheader:                               ; preds = %entry
  %max_handles = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 59, i32 4
  %2 = ptrtoint ptr %max_handles to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_handles, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp234.not = icmp eq i32 %3, 0
  br i1 %cmp234.not, label %for.cond.preheader.cleanup19_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup19_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup19

for.body:                                         ; preds = %cleanup16.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.035 = phi i32 [ %inc, %cleanup16.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 59, i32 5, i32 %i.035
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #8
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp4.not = icmp eq i32 %5, 0
  br i1 %cmp4.not, label %for.body.cleanup16_crit_edge, label %if.then5

for.body.cleanup16_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup16

if.then5:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fence) #8
  %6 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %fence, align 4, !annotation !147
  call void @radeon_uvd_note_usage(ptr noundef %rdev)
  %call6 = call i32 @radeon_uvd_get_destroy_msg(ptr noundef %rdev, i32 noundef 5, i32 noundef %5, ptr noundef nonnull %fence)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34, i32 noundef %call6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence) #8
  br label %cleanup16

if.end8:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fence, align 4
  %call9 = call i32 @radeon_fence_wait(ptr noundef %8, i1 noundef zeroext false) #8
  call void @radeon_fence_unref(ptr noundef nonnull %fence) #8
  %arrayidx11 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 59, i32 6, i32 %i.035
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %arrayidx11, align 4
  %call.i.i33 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #8
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 0, ptr %arrayidx, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence) #8
  br label %cleanup16

cleanup16:                                        ; preds = %if.end8, %if.then7, %for.body.cleanup16_crit_edge
  %inc = add nuw i32 %i.035, 1
  %11 = ptrtoint ptr %max_handles to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_handles, align 8
  %cmp2 = icmp ult i32 %inc, %12
  br i1 %cmp2, label %cleanup16.for.body_crit_edge, label %cleanup16.cleanup19_crit_edge

cleanup16.cleanup19_crit_edge:                    ; preds = %cleanup16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup19

cleanup16.for.body_crit_edge:                     ; preds = %cleanup16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup19:                                        ; preds = %cleanup16.cleanup19_crit_edge, %for.cond.preheader.cleanup19_crit_edge, %entry.cleanup19_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_uvd_note_usage(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  %hd = alloca i32, align 4
  %sd = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %idle_work = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 59, i32 8
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %idle_work) #8
  %lnot = xor i1 %call, true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %idle_work, i32 noundef 100) #8
  %and63 = and i1 %call.i.i, %lnot
  %pm_method = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 34
  %1 = ptrtoint ptr %pm_method to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pm_method, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %land.lhs.true, label %entry.if.end28_crit_edge

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

land.lhs.true:                                    ; preds = %entry
  %dpm_enabled = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 50
  %3 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dpm_enabled, align 8, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool10.not = icmp eq i8 %4, 0
  br i1 %tobool10.not, label %land.lhs.true.if.end28_crit_edge, label %if.then

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hd)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sd)
  %5 = ptrtoint ptr %sd to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %sd, align 4
  %6 = ptrtoint ptr %hd to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %hd, align 4
  %max_handles.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 59, i32 4
  %7 = ptrtoint ptr %max_handles.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_handles.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp16.not.i = icmp eq i32 %8, 0
  br i1 %cmp16.not.i, label %if.then.radeon_uvd_count_handles.exit_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.radeon_uvd_count_handles.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_uvd_count_handles.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.017.i = phi i32 [ %inc8.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 59, i32 5, i32 %i.017.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i, i32 noundef 4) #8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx3.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 59, i32 7, i32 %i.017.i
  %11 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 414719, i32 %12)
  %cmp4.i = icmp ugt i32 %12, 414719
  %hd.sd.i = select i1 %cmp4.i, ptr %hd, ptr %sd
  %13 = ptrtoint ptr %hd.sd.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hd.sd.i, align 4
  %inc.i = add i32 %14, 1
  store i32 %inc.i, ptr %hd.sd.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %inc8.i = add nuw i32 %i.017.i, 1
  %15 = ptrtoint ptr %max_handles.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_handles.i, align 8
  %cmp.i = icmp ult i32 %inc8.i, %16
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.radeon_uvd_count_handles.exit_crit_edge

for.inc.i.radeon_uvd_count_handles.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_uvd_count_handles.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

radeon_uvd_count_handles.exit:                    ; preds = %for.inc.i.radeon_uvd_count_handles.exit_crit_edge, %if.then.radeon_uvd_count_handles.exit_crit_edge
  %sd13 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 37
  %17 = ptrtoint ptr %sd13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sd13, align 4
  %19 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %19)
  %sd.0.sd.0. = load i32, ptr %sd, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %sd.0.sd.0.)
  %cmp14.not = icmp eq i32 %18, %sd.0.sd.0.
  br i1 %cmp14.not, label %lor.lhs.false, label %radeon_uvd_count_handles.exit.if.then21_crit_edge

radeon_uvd_count_handles.exit.if.then21_crit_edge: ; preds = %radeon_uvd_count_handles.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21

lor.lhs.false:                                    ; preds = %radeon_uvd_count_handles.exit
  %hd18 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 38
  %20 = ptrtoint ptr %hd18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hd18, align 4
  %22 = ptrtoint ptr %hd to i32
  call void @__asan_load4_noabort(i32 %22)
  %hd.0.hd.0. = load i32, ptr %hd, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %hd.0.hd.0.)
  %cmp19.not = icmp eq i32 %21, %hd.0.hd.0.
  br i1 %cmp19.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then21_crit_edge

lor.lhs.false.if.then21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then21:                                        ; preds = %lor.lhs.false.if.then21_crit_edge, %radeon_uvd_count_handles.exit.if.then21_crit_edge
  %23 = ptrtoint ptr %sd13 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sd.0.sd.0., ptr %sd13, align 4
  %24 = ptrtoint ptr %hd to i32
  call void @__asan_load4_noabort(i32 %24)
  %hd.0.hd.0.65 = load i32, ptr %hd, align 4
  %hd27 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 38
  %25 = ptrtoint ptr %hd27 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %hd.0.hd.0.65, ptr %hd27, align 4
  br label %if.end

if.end:                                           ; preds = %if.then21, %lor.lhs.false.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sd)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hd)
  br label %if.end28

if.end28:                                         ; preds = %if.end, %land.lhs.true.if.end28_crit_edge, %entry.if.end28_crit_edge
  br i1 %and63, label %if.then34, label %if.end28.if.end48_crit_edge

if.end28.if.end48_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then34:                                        ; preds = %if.end28
  %26 = ptrtoint ptr %pm_method to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pm_method, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp37 = icmp eq i32 %27, 2
  br i1 %cmp37, label %land.lhs.true39, label %if.then34.if.else_crit_edge

if.then34.if.else_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true39:                                  ; preds = %if.then34
  %dpm_enabled41 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 50
  %28 = ptrtoint ptr %dpm_enabled41 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %dpm_enabled41, align 8, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool42.not = icmp eq i8 %29, 0
  br i1 %tobool42.not, label %land.lhs.true39.if.else_crit_edge, label %if.then44

land.lhs.true39.if.else_crit_edge:                ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then44:                                        ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_dpm_enable_uvd(ptr noundef %rdev, i1 noundef zeroext true) #8
  br label %if.end48

if.else:                                          ; preds = %land.lhs.true39.if.else_crit_edge, %if.then34.if.else_crit_edge
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %30 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %asic, align 8
  %set_uvd_clocks = getelementptr inbounds %struct.radeon_asic, ptr %31, i32 0, i32 20, i32 12
  %32 = ptrtoint ptr %set_uvd_clocks to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %set_uvd_clocks, align 4
  %call46 = tail call i32 %33(ptr noundef %rdev, i32 noundef 53300, i32 noundef 40000) #8
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.then44, %if.end28.if.end48_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_uvd_get_destroy_msg(ptr noundef %rdev, i32 noundef %ring, i32 noundef %handle, ptr noundef %fence) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vcpu_bo = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 59, i32 1
  %0 = ptrtoint ptr %vcpu_bo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vcpu_bo, align 4
  %size.i = getelementptr inbounds %struct.radeon_bo, ptr %1, i32 0, i32 4, i32 0, i32 5
  %2 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i, align 8
  %sub = add i32 %3, -4096
  %conv = zext i32 %sub to i64
  %cpu_addr = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 59, i32 2
  %4 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cpu_addr, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 %sub
  %gpu_addr = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 59, i32 3
  %6 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %gpu_addr, align 8
  %add = add i64 %7, %conv
  %resv32.i.i = getelementptr inbounds %struct.radeon_bo, ptr %1, i32 0, i32 4, i32 0, i32 9
  %8 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resv32.i.i, align 8
  %call.i1.i.i = tail call i32 @ww_mutex_lock(ptr noundef %9, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i1.i.i)
  %cmp.i.i = icmp eq i32 %call.i1.i.i, -4
  %.ret.0.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i1.i.i
  %10 = zext i32 %.ret.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %.ret.0.i.i, label %do.end.i [
    i32 0, label %do.body
    i32 -512, label %entry.cleanup_crit_edge
  ], !prof !145

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rdev.i = getelementptr inbounds %struct.radeon_bo, ptr %1, i32 0, i32 13
  %11 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rdev.i, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.40, ptr noundef %1) #11
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 3556) #8, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  tail call void @arm_heavy_mb() #8
  %arrayidx9 = getelementptr i32, ptr %add.ptr, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx9, i32 2) #8, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !151
  tail call void @arm_heavy_mb() #8
  %arrayidx13 = getelementptr i32, ptr %add.ptr, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx13, i32 %handle) #8, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %arrayidx17 = getelementptr i32, ptr %add.ptr, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx17, i32 0) #8, !srcloc !149
  br label %do.body19

do.body19:                                        ; preds = %do.body19.do.body19_crit_edge, %do.body
  %i.044 = phi i32 [ 4, %do.body ], [ %inc, %do.body19.do.body19_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  tail call void @arm_heavy_mb() #8
  %arrayidx22 = getelementptr i32, ptr %add.ptr, i32 %i.044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx22, i32 0) #8, !srcloc !149
  %inc = add nuw nsw i32 %i.044, 1
  %exitcond.not = icmp eq i32 %inc, 1024
  br i1 %exitcond.not, label %for.end, label %do.body19.do.body19_crit_edge

do.body19.do.body19_crit_edge:                    ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body19

for.end:                                          ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #10
  %call23 = tail call fastcc i32 @radeon_uvd_send_msg(ptr noundef %rdev, i32 noundef %ring, i64 noundef %add, ptr noundef %fence)
  %15 = ptrtoint ptr %vcpu_bo to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vcpu_bo, align 4
  %tbo.i = getelementptr inbounds %struct.radeon_bo, ptr %16, i32 0, i32 4
  %bdev.i.i.i = getelementptr inbounds %struct.radeon_bo, ptr %16, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %18, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #8
  %resource.i.i.i = getelementptr inbounds %struct.radeon_bo, ptr %16, i32 0, i32 4, i32 6
  %19 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %resource.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i, ptr noundef %20, ptr noundef null) #8
  %21 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %22, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #8
  %resv.i.i = getelementptr inbounds %struct.radeon_bo, ptr %16, i32 0, i32 4, i32 0, i32 9
  %23 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %resv.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %24) #8
  tail call void @ww_mutex_unlock(ptr noundef %24) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %for.end ], [ %.ret.0.i.i, %do.end.i ], [ %.ret.0.i.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_fence_wait(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_fence_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_uvd_resume(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vcpu_bo = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 59, i32 1
  %0 = ptrtoint ptr %vcpu_bo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vcpu_bo, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cpu_addr = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 59, i32 2
  %2 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpu_addr, align 8
  %uvd_fw = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 80
  %4 = ptrtoint ptr %uvd_fw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %uvd_fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 4
  tail call void @mmiocpy(ptr noundef %3, ptr noundef %7, i32 noundef %9) #8
  %10 = ptrtoint ptr %vcpu_bo to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vcpu_bo, align 4
  %size.i = getelementptr inbounds %struct.radeon_bo, ptr %11, i32 0, i32 4, i32 0, i32 5
  %12 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size.i, align 8
  %14 = ptrtoint ptr %uvd_fw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %uvd_fw, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %sub = sub i32 %13, %17
  %18 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cpu_addr, align 8
  %add.ptr = getelementptr i8, ptr %19, i32 %17
  tail call void @mmioset(ptr noundef %add.ptr, i32 noundef 0, i32 noundef %sub) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_uvd_force_into_uvd_segment(ptr nocapture noundef %rbo, i32 noundef %allowed_domains) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %placement = getelementptr inbounds %struct.radeon_bo, ptr %rbo, i32 0, i32 3
  %0 = ptrtoint ptr %placement to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %placement, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp37.not = icmp eq i32 %1, 0
  br i1 %cmp37.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.038 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.radeon_bo, ptr %rbo, i32 0, i32 2, i32 %i.038
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %arrayidx, align 4
  %lpfn = getelementptr %struct.radeon_bo, ptr %rbo, i32 0, i32 2, i32 %i.038, i32 1
  %3 = ptrtoint ptr %lpfn to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 65536, ptr %lpfn, align 4
  %inc = add nuw i32 %i.038, 1
  %4 = ptrtoint ptr %placement to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %placement, align 4
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %5, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %allowed_domains)
  %cmp3 = icmp eq i32 %allowed_domains, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.lcssa)
  %cmp6 = icmp ugt i32 %.lcssa, 1
  %or.cond = select i1 %cmp3, i1 true, i1 %cmp6
  br i1 %or.cond, label %for.end.cleanup_crit_edge, label %if.end8

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %placements9 = getelementptr inbounds %struct.radeon_bo, ptr %rbo, i32 0, i32 2
  %arrayidx10 = getelementptr %struct.radeon_bo, ptr %rbo, i32 0, i32 2, i32 1
  %6 = call ptr @memcpy(ptr %arrayidx10, ptr %placements9, i32 16)
  %7 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx10, align 4
  %add = add i32 %8, 65536
  store i32 %add, ptr %arrayidx10, align 4
  %lpfn18 = getelementptr %struct.radeon_bo, ptr %rbo, i32 0, i32 2, i32 1, i32 1
  %9 = ptrtoint ptr %lpfn18 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lpfn18, align 4
  %add19 = add i32 %10, 65536
  store i32 %add19, ptr %lpfn18, align 4
  %inc22 = add nuw nsw i32 %.lcssa, 1
  %11 = ptrtoint ptr %placement to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %inc22, ptr %placement, align 4
  %num_busy_placement = getelementptr inbounds %struct.radeon_bo, ptr %rbo, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %num_busy_placement to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_busy_placement, align 4
  %inc24 = add i32 %13, 1
  store i32 %inc24, ptr %num_busy_placement, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %for.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_uvd_free_handles(ptr noundef %rdev, ptr noundef readnone %filp) local_unnamed_addr #0 align 64 {
entry:
  %fence = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %max_handles = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 59, i32 4
  %0 = ptrtoint ptr %max_handles to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_handles, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp34.not = icmp eq i32 %1, 0
  br i1 %cmp34.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %cleanup17.for.body_crit_edge, %entry.for.body_crit_edge
  %i.035 = phi i32 [ %inc, %cleanup17.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 59, i32 5, i32 %i.035
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #8
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2.not = icmp eq i32 %3, 0
  br i1 %cmp2.not, label %for.body.cleanup17_crit_edge, label %land.lhs.true

for.body.cleanup17_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup17

land.lhs.true:                                    ; preds = %for.body
  %arrayidx5 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 59, i32 6, i32 %i.035
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx5, align 4
  %cmp6 = icmp eq ptr %5, %filp
  br i1 %cmp6, label %if.then, label %land.lhs.true.cleanup17_crit_edge

land.lhs.true.cleanup17_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup17

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fence) #8
  %6 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %fence, align 4, !annotation !147
  call void @radeon_uvd_note_usage(ptr noundef %rdev)
  %call7 = call i32 @radeon_uvd_get_destroy_msg(ptr noundef %rdev, i32 noundef 5, i32 noundef %3, ptr noundef nonnull %fence)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end, label %if.then8

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34, i32 noundef %call7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence) #8
  br label %cleanup17

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fence, align 4
  %call9 = call i32 @radeon_fence_wait(ptr noundef %8, i1 noundef zeroext false) #8
  call void @radeon_fence_unref(ptr noundef nonnull %fence) #8
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %arrayidx5, align 4
  %call.i.i33 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #8
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 0, ptr %arrayidx, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence) #8
  br label %cleanup17

cleanup17:                                        ; preds = %if.end, %if.then8, %land.lhs.true.cleanup17_crit_edge, %for.body.cleanup17_crit_edge
  %inc = add nuw i32 %i.035, 1
  %11 = ptrtoint ptr %max_handles to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_handles, align 8
  %cmp = icmp ult i32 %inc, %12
  br i1 %cmp, label %cleanup17.for.body_crit_edge, label %cleanup17.for.end_crit_edge

cleanup17.for.end_crit_edge:                      ; preds = %cleanup17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup17.for.body_crit_edge:                     ; preds = %cleanup17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %cleanup17.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_uvd_cs_parse(ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  %ptr.i25.i = alloca ptr, align 4
  %pkt = alloca %struct.radeon_cs_packet, align 4
  %buf_sizes = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt) #8
  %0 = getelementptr inbounds %struct.radeon_cs_packet, ptr %pkt, i32 0, i32 1
  %1 = getelementptr inbounds %struct.radeon_cs_packet, ptr %pkt, i32 0, i32 2
  %2 = getelementptr inbounds %struct.radeon_cs_packet, ptr %pkt, i32 0, i32 4
  %3 = call ptr @memset(ptr %pkt, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf_sizes) #8
  %4 = call ptr @memcpy(ptr %buf_sizes, ptr @__const.radeon_uvd_cs_parse.buf_sizes, i32 16)
  %chunk_ib = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %5 = ptrtoint ptr %chunk_ib to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chunk_ib, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %rem = and i32 %8, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35, i32 noundef %8) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %chunk_relocs = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 13
  %9 = ptrtoint ptr %chunk_relocs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chunk_relocs, align 8
  %cmp = icmp eq ptr %10, null
  br i1 %cmp, label %if.then3, label %do.body.preheader

do.body.preheader:                                ; preds = %if.end
  %idx = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 6
  %ptr.i.i.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 16, i32 3
  %relocs.i.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 8
  %rdev.i.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 1
  %filp70.i.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 2
  %arrayidx49.i = getelementptr inbounds i32, ptr %buf_sizes, i32 1
  %arrayidx50.i = getelementptr inbounds i32, ptr %buf_sizes, i32 2
  br label %do.body

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.36) #8
  br label %cleanup

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %do.body.preheader
  %data0.0 = phi i32 [ %data0.4, %do.cond.do.body_crit_edge ], [ 0, %do.body.preheader ]
  %data1.0 = phi i32 [ %data1.4, %do.cond.do.body_crit_edge ], [ 0, %do.body.preheader ]
  %has_msg_cmd.0 = phi i8 [ %has_msg_cmd.4, %do.cond.do.body_crit_edge ], [ 0, %do.body.preheader ]
  %11 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %idx, align 8
  %call = call i32 @radeon_cs_packet_parse(ptr noundef %p, ptr noundef nonnull %pkt, i32 noundef %12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end7, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %do.body
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %0, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %14, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb12
  ]

sw.bb:                                            ; preds = %if.end7
  %16 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %idx, align 8
  %inc.i = add i32 %17, 1
  store i32 %inc.i, ptr %idx, align 8
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not242.i = icmp slt i32 %19, 0
  br i1 %cmp.not242.i, label %sw.bb.do.cond_crit_edge, label %sw.bb.for.body.i_crit_edge

sw.bb.for.body.i_crit_edge:                       ; preds = %sw.bb
  br label %for.body.i

sw.bb.do.cond_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond

for.body.i:                                       ; preds = %sw.epilog.i.for.body.i_crit_edge, %sw.bb.for.body.i_crit_edge
  %data0.1 = phi i32 [ %data0.2, %sw.epilog.i.for.body.i_crit_edge ], [ %data0.0, %sw.bb.for.body.i_crit_edge ]
  %data1.1 = phi i32 [ %data1.2, %sw.epilog.i.for.body.i_crit_edge ], [ %data1.0, %sw.bb.for.body.i_crit_edge ]
  %has_msg_cmd.1 = phi i8 [ %has_msg_cmd.2, %sw.epilog.i.for.body.i_crit_edge ], [ %has_msg_cmd.0, %sw.bb.for.body.i_crit_edge ]
  %i.0243.i = phi i32 [ %inc11.i, %sw.epilog.i.for.body.i_crit_edge ], [ 0, %sw.bb.for.body.i_crit_edge ]
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %1, align 4
  %mul.i = shl i32 %i.0243.i, 2
  %add.i = add i32 %21, %mul.i
  %22 = zext i32 %add.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %add.i, label %sw.default.i [
    i32 61200, label %sw.bb.i
    i32 61204, label %sw.bb2.i
    i32 61196, label %sw.bb4.i
    i32 61208, label %for.body.i.sw.epilog.i_crit_edge
    i32 61436, label %for.body.i.sw.epilog.i_crit_edge1960
  ]

for.body.i.sw.epilog.i_crit_edge1960:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

for.body.i.sw.epilog.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %idx, align 8
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %idx, align 8
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %for.body.i
  %27 = ptrtoint ptr %chunk_relocs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %chunk_relocs, align 8
  %29 = ptrtoint ptr %chunk_ib to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chunk_ib, align 4
  %kdata.i.i.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %kdata.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %kdata.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i.i, label %if.end.i126.i.i, label %sw.bb4.i.radeon_get_ib_value.exit130.i.i_crit_edge

sw.bb4.i.radeon_get_ib_value.exit130.i.i_crit_edge: ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_get_ib_value.exit130.i.i

if.end.i126.i.i:                                  ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ptr.i.i.i, align 8
  br label %radeon_get_ib_value.exit130.i.i

radeon_get_ib_value.exit130.i.i:                  ; preds = %if.end.i126.i.i, %sw.bb4.i.radeon_get_ib_value.exit130.i.i_crit_edge
  %.pn.i.i = phi ptr [ %34, %if.end.i126.i.i ], [ %32, %sw.bb4.i.radeon_get_ib_value.exit130.i.i_crit_edge ]
  %retval.0.i143.in.i.i = getelementptr i32, ptr %.pn.i.i, i32 %data0.1
  %35 = ptrtoint ptr %retval.0.i143.in.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %retval.0.i143.i.i = load i32, ptr %retval.0.i143.in.i.i, align 4
  %retval.0.in.i128.i.i = getelementptr i32, ptr %.pn.i.i, i32 %data1.1
  %36 = ptrtoint ptr %retval.0.in.i128.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %retval.0.i129.i.i = load i32, ptr %retval.0.in.i128.i.i, align 4
  %37 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %28, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i129.i.i, i32 %38)
  %cmp.not.i.i = icmp ult i32 %retval.0.i129.i.i, %38
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %radeon_get_ib_value.exit130.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.45, i32 noundef %retval.0.i129.i.i, i32 noundef %38) #8
  br label %cleanup

if.end.i.i:                                       ; preds = %radeon_get_ib_value.exit130.i.i
  %39 = ptrtoint ptr %relocs.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %relocs.i.i, align 8
  %div121.i.i = lshr i32 %retval.0.i129.i.i, 2
  %arrayidx.i.i = getelementptr %struct.radeon_bo_list, ptr %40, i32 %div121.i.i
  %gpu_offset.i.i = getelementptr %struct.radeon_bo_list, ptr %40, i32 %div121.i.i, i32 2
  %41 = ptrtoint ptr %gpu_offset.i.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %gpu_offset.i.i, align 8
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i.i, align 8
  %size.i.i.i = getelementptr inbounds %struct.radeon_bo, ptr %44, i32 0, i32 4, i32 0, i32 5
  %45 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %size.i.i.i, align 8
  %conv.i.i = zext i32 %46 to i64
  %add.i.i = add i64 %42, %conv.i.i
  %conv4.i.i = zext i32 %retval.0.i143.i.i to i64
  %add5.i.i = add i64 %42, %conv4.i.i
  %conv6.i.i = trunc i64 %add5.i.i to i32
  %47 = ptrtoint ptr %ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ptr.i.i.i, align 8
  %arrayidx7.i.i = getelementptr i32, ptr %48, i32 %data0.1
  %49 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv6.i.i, ptr %arrayidx7.i.i, align 4
  %shr.i.i = lshr i64 %add5.i.i, 32
  %conv8.i.i = trunc i64 %shr.i.i to i32
  %50 = load ptr, ptr %ptr.i.i.i, align 8
  %arrayidx11.i.i = getelementptr i32, ptr %50, i32 %data1.1
  %51 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv8.i.i, ptr %arrayidx11.i.i, align 4
  %52 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %idx, align 8
  %54 = ptrtoint ptr %chunk_ib to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %chunk_ib, align 4
  %kdata.i132.i.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %kdata.i132.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %kdata.i132.i.i, align 4
  %tobool.not.i133.i.i = icmp eq ptr %57, null
  br i1 %tobool.not.i133.i.i, label %if.end.i135.i.i, label %if.end.i.i.radeon_get_ib_value.exit139.i.i_crit_edge

if.end.i.i.radeon_get_ib_value.exit139.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_get_ib_value.exit139.i.i

if.end.i135.i.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ptr.i.i.i, align 8
  br label %radeon_get_ib_value.exit139.i.i

radeon_get_ib_value.exit139.i.i:                  ; preds = %if.end.i135.i.i, %if.end.i.i.radeon_get_ib_value.exit139.i.i_crit_edge
  %.pn.i136.i.i = phi ptr [ %59, %if.end.i135.i.i ], [ %57, %if.end.i.i.radeon_get_ib_value.exit139.i.i_crit_edge ]
  %retval.0.in.i137.i.i = getelementptr i32, ptr %.pn.i136.i.i, i32 %53
  %60 = ptrtoint ptr %retval.0.in.i137.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %retval.0.i138.i.i = load i32, ptr %retval.0.in.i137.i.i, align 4
  %shr14.i.i = lshr i32 %retval.0.i138.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %retval.0.i138.i.i)
  %cmp15.i.i = icmp ult i32 %retval.0.i138.i.i, 8
  br i1 %cmp15.i.i, label %if.then17.i.i, label %if.else.i.i

if.then17.i.i:                                    ; preds = %radeon_get_ib_value.exit139.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %add5.i.i)
  %cmp18.not.i.i = icmp ugt i64 %add.i.i, %add5.i.i
  br i1 %cmp18.not.i.i, label %if.end21.i.i, label %if.then20.i.i

if.then20.i.i:                                    ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.46, i32 noundef %retval.0.i143.i.i) #8
  br label %cleanup

if.end21.i.i:                                     ; preds = %if.then17.i.i
  %sub.i.i = sub i64 %add.i.i, %add5.i.i
  %arrayidx22.i.i = getelementptr i32, ptr %buf_sizes, i32 %shr14.i.i
  %61 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx22.i.i, align 4
  %conv23.i.i = zext i32 %62 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i.i, i64 %conv23.i.i)
  %cmp24.i.i = icmp ult i64 %sub.i.i, %conv23.i.i
  br i1 %cmp24.i.i, label %if.then26.i.i, label %if.end21.i.i.if.end35.i.i_crit_edge

if.end21.i.i.if.end35.i.i_crit_edge:              ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i.i

if.then26.i.i:                                    ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv28.i.i = trunc i64 %sub.i.i to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.47, i32 noundef %shr14.i.i, i32 noundef %conv28.i.i, i32 noundef %62) #8
  br label %cleanup

if.else.i.i:                                      ; preds = %radeon_get_ib_value.exit139.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %shr14.i.i)
  %cmp31.not.i.i = icmp eq i32 %shr14.i.i, 256
  br i1 %cmp31.not.i.i, label %if.else.i.i.if.end35.i.i_crit_edge, label %if.then33.i.i

if.else.i.i.if.end35.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i.i

if.then33.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.48, i32 noundef %shr14.i.i) #8
  br label %cleanup

if.end35.i.i:                                     ; preds = %if.else.i.i.if.end35.i.i_crit_edge, %if.end21.i.i.if.end35.i.i_crit_edge
  %shr36.i.i = lshr i64 %add5.i.i, 28
  %sub37.i.i = add i64 %add.i.i, -1
  %shr38.i.i = lshr i64 %sub37.i.i, 28
  call void @__sanitizer_cov_trace_cmp8(i64 %shr36.i.i, i64 %shr38.i.i)
  %cmp39.not.i.i = icmp eq i64 %shr36.i.i, %shr38.i.i
  br i1 %cmp39.not.i.i, label %if.end42.i.i, label %if.then41.i.i

if.then41.i.i:                                    ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.49, i64 noundef %add5.i.i, i64 noundef %add.i.i) #8
  br label %cleanup

if.end42.i.i:                                     ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %retval.0.i138.i.i)
  %cmp43.i.i = icmp ult i32 %retval.0.i138.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr14.i.i)
  %cmp45.i.i = icmp eq i32 %shr14.i.i, 3
  %or.cond.i.i = or i1 %cmp43.i.i, %cmp45.i.i
  br i1 %or.cond.i.i, label %land.lhs.true.i.i, label %if.end42.i.i.if.end52.i.i_crit_edge

if.end42.i.i.if.end52.i.i_crit_edge:              ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52.i.i

land.lhs.true.i.i:                                ; preds = %if.end42.i.i
  %63 = ptrtoint ptr %rdev.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rdev.i.i, align 4
  %gpu_addr.i.i = getelementptr inbounds %struct.radeon_device, ptr %64, i32 0, i32 59, i32 3
  %65 = ptrtoint ptr %gpu_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %gpu_addr.i.i, align 8
  %shr48.i.i = lshr i64 %66, 28
  call void @__sanitizer_cov_trace_cmp8(i64 %shr36.i.i, i64 %shr48.i.i)
  %cmp49.not.i.i = icmp eq i64 %shr36.i.i, %shr48.i.i
  br i1 %cmp49.not.i.i, label %land.lhs.true.i.i.if.end52.i.i_crit_edge, label %if.then51.i.i

land.lhs.true.i.i.if.end52.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52.i.i

if.then51.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.50, i64 noundef %add5.i.i, i64 noundef %add.i.i) #8
  br label %cleanup

if.end52.i.i:                                     ; preds = %land.lhs.true.i.i.if.end52.i.i_crit_edge, %if.end42.i.i.if.end52.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %has_msg_cmd.1)
  %tobool.not.i.i = icmp eq i8 %has_msg_cmd.1, 0
  br i1 %cmp43.i.i, label %if.then55.i.i, label %if.else63.i.i

if.then55.i.i:                                    ; preds = %if.end52.i.i
  br i1 %tobool.not.i.i, label %if.end57.i.i, label %if.then56.i.i

if.then56.i.i:                                    ; preds = %if.then55.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.51) #8
  br label %cleanup

if.end57.i.i:                                     ; preds = %if.then55.i.i
  %67 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ptr.i25.i) #8
  %69 = ptrtoint ptr %ptr.i25.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr inttoptr (i32 -1 to ptr), ptr %ptr.i25.i, align 4, !annotation !147
  %and.i.i = and i32 %retval.0.i143.i.i, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i26.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i26.i, label %if.end.i28.i, label %if.then.i27.i

if.then.i27.i:                                    ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.53) #8
  br label %radeon_uvd_cs_msg.exit.thread.i

if.end.i28.i:                                     ; preds = %if.end57.i.i
  %resv.i.i = getelementptr inbounds %struct.radeon_bo, ptr %68, i32 0, i32 4, i32 0, i32 9
  %70 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %resv.i.i, align 8
  %call.i.i = call i32 @dma_resv_wait_timeout(ptr noundef %71, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 2147483647) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 1
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end3.i.i

if.then1.i.i:                                     ; preds = %if.end.i28.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.54, i32 noundef %call.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  %spec.select.i = select i1 %tobool2.not.i.i, i32 -62, i32 %call.i.i
  br label %radeon_uvd_cs_msg.exit.thread.i

if.end3.i.i:                                      ; preds = %if.end.i28.i
  %call4.i.i = call i32 @radeon_bo_kmap(ptr noundef %68, ptr noundef nonnull %ptr.i25.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.end7.i.i, label %if.then6.i.i

if.then6.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.55, i32 noundef %call4.i.i) #8
  br label %radeon_uvd_cs_msg.exit.thread.i

if.end7.i.i:                                      ; preds = %if.end3.i.i
  %72 = ptrtoint ptr %ptr.i25.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ptr.i25.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %73, i32 %retval.0.i143.i.i
  %arrayidx8.i.i = getelementptr i32, ptr %add.ptr.i.i, i32 2
  %74 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp9.i.i = icmp eq i32 %75, 0
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i

if.then10.i.i:                                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.56) #8
  br label %radeon_uvd_cs_msg.exit.thread.i

if.end11.i.i:                                     ; preds = %if.end7.i.i
  %arrayidx.i29.i = getelementptr i32, ptr %add.ptr.i.i, i32 1
  %76 = ptrtoint ptr %arrayidx.i29.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx.i29.i, align 4
  %78 = zext i32 %77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %77, label %sw.default.i.i [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb43.i.i
    i32 2, label %for.cond79.preheader.i.i
  ]

for.cond79.preheader.i.i:                         ; preds = %if.end11.i.i
  %79 = ptrtoint ptr %rdev.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rdev.i.i, align 4
  %max_handles82169.i.i = getelementptr inbounds %struct.radeon_device, ptr %80, i32 0, i32 59, i32 4
  %81 = ptrtoint ptr %max_handles82169.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %max_handles82169.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp83170.not.i.i = icmp eq i32 %82, 0
  br i1 %cmp83170.not.i.i, label %for.cond79.preheader.i.i.for.end92.i.i_crit_edge, label %for.cond79.preheader.i.i.for.body84.i.i_crit_edge

for.cond79.preheader.i.i.for.body84.i.i_crit_edge: ; preds = %for.cond79.preheader.i.i
  br label %for.body84.i.i

for.cond79.preheader.i.i.for.end92.i.i_crit_edge: ; preds = %for.cond79.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end92.i.i

sw.bb.i.i:                                        ; preds = %if.end11.i.i
  %arrayidx12.i.i = getelementptr i32, ptr %add.ptr.i.i, i32 7
  %83 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx12.i.i, align 4
  %arrayidx13.i.i = getelementptr i32, ptr %add.ptr.i.i, i32 8
  %85 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx13.i.i, align 4
  %mul.i.i = mul i32 %86, %84
  %arrayidx14.i.i = getelementptr i32, ptr %add.ptr.i.i, i32 4
  %87 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx14.i.i, align 4
  %89 = zext i32 %88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %88, label %sw.bb.i.i.radeon_uvd_validate_codec.exit53_crit_edge [
    i32 0, label %sw.bb.i.i.for.cond.preheader.i.i_crit_edge
    i32 1, label %sw.bb.i.i.for.cond.preheader.i.i_crit_edge1961
    i32 3, label %sw.bb.i.i.sw.bb1.i50_crit_edge
    i32 4, label %sw.bb.i.i.sw.bb1.i50_crit_edge1962
  ]

sw.bb.i.i.sw.bb1.i50_crit_edge1962:               ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i50

sw.bb.i.i.sw.bb1.i50_crit_edge:                   ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i50

sw.bb.i.i.for.cond.preheader.i.i_crit_edge1961:   ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader.i.i

sw.bb.i.i.for.cond.preheader.i.i_crit_edge:       ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader.i.i

sw.bb.i.i.radeon_uvd_validate_codec.exit53_crit_edge: ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_uvd_validate_codec.exit53

sw.bb1.i50:                                       ; preds = %sw.bb.i.i.sw.bb1.i50_crit_edge, %sw.bb.i.i.sw.bb1.i50_crit_edge1962
  %90 = ptrtoint ptr %rdev.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %rdev.i.i, align 4
  %family.i48 = getelementptr inbounds %struct.radeon_device, ptr %91, i32 0, i32 6
  %92 = ptrtoint ptr %family.i48 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %family.i48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 43, i32 %93)
  %cmp.i49 = icmp ugt i32 %93, 43
  br i1 %cmp.i49, label %sw.bb1.i50.for.cond.preheader.i.i_crit_edge, label %sw.bb1.i50.radeon_uvd_validate_codec.exit53_crit_edge

sw.bb1.i50.radeon_uvd_validate_codec.exit53_crit_edge: ; preds = %sw.bb1.i50
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_uvd_validate_codec.exit53

sw.bb1.i50.for.cond.preheader.i.i_crit_edge:      ; preds = %sw.bb1.i50
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader.i.i

radeon_uvd_validate_codec.exit53:                 ; preds = %sw.bb1.i50.radeon_uvd_validate_codec.exit53_crit_edge, %sw.bb.i.i.radeon_uvd_validate_codec.exit53_crit_edge
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.62, i32 noundef %88) #8
  call void @radeon_bo_kunmap(ptr noundef %68) #8
  br label %radeon_uvd_cs_msg.exit.thread.i

for.cond.preheader.i.i:                           ; preds = %sw.bb1.i50.for.cond.preheader.i.i_crit_edge, %sw.bb.i.i.for.cond.preheader.i.i_crit_edge, %sw.bb.i.i.for.cond.preheader.i.i_crit_edge1961
  call void @radeon_bo_kunmap(ptr noundef %68) #8
  %94 = ptrtoint ptr %rdev.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rdev.i.i, align 4
  %max_handles175.i.i = getelementptr inbounds %struct.radeon_device, ptr %95, i32 0, i32 59, i32 4
  %96 = ptrtoint ptr %max_handles175.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %max_handles175.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp19176.not.i.i = icmp eq i32 %97, 0
  br i1 %cmp19176.not.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %98 = phi ptr [ %112, %for.inc.i.i.for.body.i.i_crit_edge ], [ %95, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %i.0177.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %arrayidx22.i31.i = getelementptr %struct.radeon_device, ptr %98, i32 0, i32 59, i32 5, i32 %i.0177.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx22.i31.i, i32 noundef 4) #8
  %99 = ptrtoint ptr %arrayidx22.i31.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %arrayidx22.i31.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %75)
  %cmp24.i32.i = icmp eq i32 %100, %75
  br i1 %cmp24.i32.i, label %if.then25.i.i, label %if.end26.i.i

if.then25.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.57, i32 noundef %75) #8
  br label %radeon_uvd_cs_msg.exit.thread.i

if.end26.i.i:                                     ; preds = %for.body.i.i
  %101 = ptrtoint ptr %rdev.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %rdev.i.i, align 4
  %arrayidx30.i.i = getelementptr %struct.radeon_device, ptr %102, i32 0, i32 59, i32 5, i32 %i.0177.i.i
  %call.i.i153.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx30.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !154
  call void @llvm.prefetch.p0(ptr %arrayidx30.i.i, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %if.end26.i.i
  %103 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx30.i.i, ptr %arrayidx30.i.i, i32 0, i32 %75, ptr elementtype(i32) %arrayidx30.i.i) #8, !srcloc !155
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %103, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %atomic_cmpxchg.exit.i.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i

atomic_cmpxchg.exit.i.i:                          ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %103, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !156
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %asmresult3.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then33.i33.i, label %for.inc.i.i

if.then33.i33.i:                                  ; preds = %atomic_cmpxchg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %104 = ptrtoint ptr %filp70.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %filp70.i.i, align 8
  %106 = ptrtoint ptr %rdev.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %rdev.i.i, align 4
  %arrayidx37.i.i = getelementptr %struct.radeon_device, ptr %107, i32 0, i32 59, i32 6, i32 %i.0177.i.i
  %108 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %105, ptr %arrayidx37.i.i, align 4
  %109 = load ptr, ptr %rdev.i.i, align 4
  %arrayidx41.i.i = getelementptr %struct.radeon_device, ptr %109, i32 0, i32 59, i32 7, i32 %i.0177.i.i
  %110 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %mul.i.i, ptr %arrayidx41.i.i, align 4
  br label %radeon_uvd_cs_msg.exit.i

for.inc.i.i:                                      ; preds = %atomic_cmpxchg.exit.i.i
  %inc.i.i = add nuw i32 %i.0177.i.i, 1
  %111 = ptrtoint ptr %rdev.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %rdev.i.i, align 4
  %max_handles.i.i = getelementptr inbounds %struct.radeon_device, ptr %112, i32 0, i32 59, i32 4
  %113 = ptrtoint ptr %max_handles.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %max_handles.i.i, align 8
  %cmp19.i.i = icmp ult i32 %inc.i.i, %114
  br i1 %cmp19.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.for.end.i.i_crit_edge

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.58) #8
  br label %radeon_uvd_cs_msg.exit.thread.i

sw.bb43.i.i:                                      ; preds = %if.end11.i.i
  %arrayidx44.i.i = getelementptr i32, ptr %add.ptr.i.i, i32 4
  %115 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx44.i.i, align 4
  %117 = zext i32 %116 to i64
  call void @__sanitizer_cov_trace_switch(i64 %117, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %116, label %sw.bb43.i.i.if.end49.thread.i.i_crit_edge [
    i32 0, label %sw.bb43.i.i.if.end49.i.i_crit_edge
    i32 1, label %sw.bb43.i.i.if.end49.i.i_crit_edge1963
    i32 3, label %sw.bb43.i.i.sw.bb1.i_crit_edge
    i32 4, label %sw.bb43.i.i.sw.bb1.i_crit_edge1964
  ]

sw.bb43.i.i.sw.bb1.i_crit_edge1964:               ; preds = %sw.bb43.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

sw.bb43.i.i.sw.bb1.i_crit_edge:                   ; preds = %sw.bb43.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

sw.bb43.i.i.if.end49.i.i_crit_edge1963:           ; preds = %sw.bb43.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49.i.i

sw.bb43.i.i.if.end49.i.i_crit_edge:               ; preds = %sw.bb43.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49.i.i

sw.bb43.i.i.if.end49.thread.i.i_crit_edge:        ; preds = %sw.bb43.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49.thread.i.i

sw.bb1.i:                                         ; preds = %sw.bb43.i.i.sw.bb1.i_crit_edge, %sw.bb43.i.i.sw.bb1.i_crit_edge1964
  %118 = ptrtoint ptr %rdev.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %rdev.i.i, align 4
  %family.i = getelementptr inbounds %struct.radeon_device, ptr %119, i32 0, i32 6
  %120 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 43, i32 %121)
  %cmp.i = icmp ugt i32 %121, 43
  br i1 %cmp.i, label %if.end49.i.ithread-pre-split, label %sw.bb1.i.if.end49.thread.i.i_crit_edge

sw.bb1.i.if.end49.thread.i.i_crit_edge:           ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49.thread.i.i

if.end49.thread.i.i:                              ; preds = %sw.bb1.i.if.end49.thread.i.i_crit_edge, %sw.bb43.i.i.if.end49.thread.i.i_crit_edge
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.62, i32 noundef %116) #8
  call void @radeon_bo_kunmap(ptr noundef %68) #8
  br label %radeon_uvd_cs_msg.exit.thread.i

if.end49.i.ithread-pre-split:                     ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #10
  %122 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %.pr = load i32, ptr %arrayidx44.i.i, align 4
  br label %if.end49.i.i

if.end49.i.i:                                     ; preds = %if.end49.i.ithread-pre-split, %sw.bb43.i.i.if.end49.i.i_crit_edge, %sw.bb43.i.i.if.end49.i.i_crit_edge1963
  %123 = phi i32 [ %.pr, %if.end49.i.ithread-pre-split ], [ %116, %sw.bb43.i.i.if.end49.i.i_crit_edge ], [ %116, %sw.bb43.i.i.if.end49.i.i_crit_edge1963 ]
  %arrayidx1.i = getelementptr i32, ptr %add.ptr.i.i, i32 6
  %124 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx1.i, align 4
  %arrayidx2.i = getelementptr i32, ptr %add.ptr.i.i, i32 7
  %126 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx2.i, align 4
  %arrayidx3.i = getelementptr i32, ptr %add.ptr.i.i, i32 9
  %128 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx3.i, align 4
  %arrayidx4.i = getelementptr i32, ptr %add.ptr.i.i, i32 28
  %130 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx4.i, align 4
  %div101.i = lshr i32 %125, 4
  %div5102.i = lshr i32 %127, 4
  %add.i39 = add nuw nsw i32 %div5102.i, 1
  %and.i = and i32 %add.i39, 536870910
  %mul.i40 = mul i32 %127, %125
  %div6103.i = lshr i32 %mul.i40, 1
  %add7.i = add i32 %mul.i40, 1023
  %add8.i = add i32 %add7.i, %div6103.i
  %and9.i = and i32 %add8.i, -1024
  %132 = zext i32 %123 to i64
  call void @__sanitizer_cov_trace_switch(i64 %132, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %123, label %sw.default.i42 [
    i32 0, label %sw.bb.i41
    i32 1, label %sw.bb18.i
    i32 3, label %sw.bb33.i
    i32 4, label %sw.bb35.i
  ]

sw.bb.i41:                                        ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul10.i = mul i32 %and9.i, 17
  %mul11.i = mul i32 %and.i, %div101.i
  %reass.mul106.i = mul i32 %mul11.i, 3296
  %add17.i = add i32 %reass.mul106.i, %mul10.i
  br label %sw.epilog.i43

sw.bb18.i:                                        ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul19.i = mul i32 %and9.i, 3
  %mul21.i = shl i32 %add.i39, 7
  %133 = call i32 @llvm.umax.i32(i32 %div101.i, i32 %and.i) #8
  %mul29.i = mul i32 %133, 112
  %add30.i = add i32 %mul29.i, 63
  %and31.i = and i32 %add30.i, -64
  %reass.add104.i = or i32 %mul21.i, 192
  %reass.mul105.i = mul i32 %reass.add104.i, %div101.i
  %add26.i = add i32 %reass.mul105.i, %mul19.i
  %add32.i = add i32 %add26.i, %and31.i
  br label %sw.epilog.i43

sw.bb33.i:                                        ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul34.i = mul i32 %and9.i, 3
  br label %sw.epilog.i43

sw.bb35.i:                                        ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul36.i = mul i32 %and9.i, 3
  %mul37.i = mul i32 %and.i, %div101.i
  %reass.mul.i = mul i32 %mul37.i, 96
  %add44.i = add i32 %reass.mul.i, %mul36.i
  br label %sw.epilog.i43

sw.default.i42:                                   ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.63, i32 noundef %123) #8
  br label %radeon_uvd_cs_msg_decode.exit.thread

sw.epilog.i43:                                    ; preds = %sw.bb35.i, %sw.bb33.i, %sw.bb18.i, %sw.bb.i41
  %min_dpb_size.0.i = phi i32 [ %add44.i, %sw.bb35.i ], [ %mul34.i, %sw.bb33.i ], [ %add32.i, %sw.bb18.i ], [ %add17.i, %sw.bb.i41 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %125, i32 %131)
  %cmp45.i = icmp ugt i32 %125, %131
  br i1 %cmp45.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.epilog.i43
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.64) #8
  br label %radeon_uvd_cs_msg_decode.exit.thread

if.end.i:                                         ; preds = %sw.epilog.i43
  call void @__sanitizer_cov_trace_cmp4(i32 %129, i32 %min_dpb_size.0.i)
  %cmp46.i = icmp ult i32 %129, %min_dpb_size.0.i
  br i1 %cmp46.i, label %if.then47.i, label %for.cond53.preheader.i.i

if.then47.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.65, i32 noundef %129, i32 noundef %min_dpb_size.0.i) #8
  br label %radeon_uvd_cs_msg_decode.exit.thread

radeon_uvd_cs_msg_decode.exit.thread:             ; preds = %if.then47.i, %if.then.i, %sw.default.i42
  call void @radeon_bo_kunmap(ptr noundef %68) #8
  br label %radeon_uvd_cs_msg.exit.thread.i

for.cond53.preheader.i.i:                         ; preds = %if.end.i
  %134 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %129, ptr %arrayidx49.i, align 4
  %135 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %and9.i, ptr %arrayidx50.i, align 4
  call void @radeon_bo_kunmap(ptr noundef %68) #8
  %136 = ptrtoint ptr %rdev.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %rdev.i.i, align 4
  %max_handles56172.i.i = getelementptr inbounds %struct.radeon_device, ptr %137, i32 0, i32 59, i32 4
  %138 = ptrtoint ptr %max_handles56172.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %max_handles56172.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %cmp57173.not.i.i = icmp eq i32 %139, 0
  br i1 %cmp57173.not.i.i, label %for.cond53.preheader.i.i.for.end77.i.i_crit_edge, label %for.cond53.preheader.i.i.for.body58.i.i_crit_edge

for.cond53.preheader.i.i.for.body58.i.i_crit_edge: ; preds = %for.cond53.preheader.i.i
  br label %for.body58.i.i

for.cond53.preheader.i.i.for.end77.i.i_crit_edge: ; preds = %for.cond53.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end77.i.i

for.body58.i.i:                                   ; preds = %for.inc75.i.i.for.body58.i.i_crit_edge, %for.cond53.preheader.i.i.for.body58.i.i_crit_edge
  %140 = phi ptr [ %150, %for.inc75.i.i.for.body58.i.i_crit_edge ], [ %137, %for.cond53.preheader.i.i.for.body58.i.i_crit_edge ]
  %i.1174.i.i = phi i32 [ %inc76.i.i, %for.inc75.i.i.for.body58.i.i_crit_edge ], [ 0, %for.cond53.preheader.i.i.for.body58.i.i_crit_edge ]
  %arrayidx62.i.i = getelementptr %struct.radeon_device, ptr %140, i32 0, i32 59, i32 5, i32 %i.1174.i.i
  %call.i.i154.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx62.i.i, i32 noundef 4) #8
  %141 = ptrtoint ptr %arrayidx62.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %arrayidx62.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %142, i32 %75)
  %cmp64.i.i = icmp eq i32 %142, %75
  br i1 %cmp64.i.i, label %if.then65.i34.i, label %for.inc75.i.i

if.then65.i34.i:                                  ; preds = %for.body58.i.i
  %143 = ptrtoint ptr %rdev.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %rdev.i.i, align 4
  %arrayidx69.i.i = getelementptr %struct.radeon_device, ptr %144, i32 0, i32 59, i32 6, i32 %i.1174.i.i
  %145 = ptrtoint ptr %arrayidx69.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %arrayidx69.i.i, align 4
  %147 = ptrtoint ptr %filp70.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %filp70.i.i, align 8
  %cmp71.not.i.i = icmp eq ptr %146, %148
  br i1 %cmp71.not.i.i, label %if.then65.i34.i.radeon_uvd_cs_msg.exit.i_crit_edge, label %if.then72.i.i

if.then65.i34.i.radeon_uvd_cs_msg.exit.i_crit_edge: ; preds = %if.then65.i34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_uvd_cs_msg.exit.i

if.then72.i.i:                                    ; preds = %if.then65.i34.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.59) #8
  br label %radeon_uvd_cs_msg.exit.thread.i

for.inc75.i.i:                                    ; preds = %for.body58.i.i
  %inc76.i.i = add nuw i32 %i.1174.i.i, 1
  %149 = ptrtoint ptr %rdev.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %rdev.i.i, align 4
  %max_handles56.i.i = getelementptr inbounds %struct.radeon_device, ptr %150, i32 0, i32 59, i32 4
  %151 = ptrtoint ptr %max_handles56.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %max_handles56.i.i, align 8
  %cmp57.i.i = icmp ult i32 %inc76.i.i, %152
  br i1 %cmp57.i.i, label %for.inc75.i.i.for.body58.i.i_crit_edge, label %for.inc75.i.i.for.end77.i.i_crit_edge

for.inc75.i.i.for.end77.i.i_crit_edge:            ; preds = %for.inc75.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end77.i.i

for.inc75.i.i.for.body58.i.i_crit_edge:           ; preds = %for.inc75.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body58.i.i

for.end77.i.i:                                    ; preds = %for.inc75.i.i.for.end77.i.i_crit_edge, %for.cond53.preheader.i.i.for.end77.i.i_crit_edge
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.60, i32 noundef %75) #8
  br label %radeon_uvd_cs_msg.exit.thread.i

for.body84.i.i:                                   ; preds = %atomic_cmpxchg.exit160.i.i.for.body84.i.i_crit_edge, %for.cond79.preheader.i.i.for.body84.i.i_crit_edge
  %153 = phi ptr [ %156, %atomic_cmpxchg.exit160.i.i.for.body84.i.i_crit_edge ], [ %80, %for.cond79.preheader.i.i.for.body84.i.i_crit_edge ]
  %i.2171.i.i = phi i32 [ %inc91.i.i, %atomic_cmpxchg.exit160.i.i.for.body84.i.i_crit_edge ], [ 0, %for.cond79.preheader.i.i.for.body84.i.i_crit_edge ]
  %arrayidx88.i.i = getelementptr %struct.radeon_device, ptr %153, i32 0, i32 59, i32 5, i32 %i.2171.i.i
  %call.i.i155.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx88.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !154
  call void @llvm.prefetch.p0(ptr %arrayidx88.i.i, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i158.i.i

do.body.i.i.i158.i.i:                             ; preds = %do.body.i.i.i158.i.i.do.body.i.i.i158.i.i_crit_edge, %for.body84.i.i
  %154 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx88.i.i, ptr %arrayidx88.i.i, i32 %75, i32 0, ptr elementtype(i32) %arrayidx88.i.i) #8, !srcloc !155
  %asmresult.i.i.i156.i.i = extractvalue { i32, i32 } %154, 0
  %tobool.not.i.i.i157.i.i = icmp eq i32 %asmresult.i.i.i156.i.i, 0
  br i1 %tobool.not.i.i.i157.i.i, label %atomic_cmpxchg.exit160.i.i, label %do.body.i.i.i158.i.i.do.body.i.i.i158.i.i_crit_edge

do.body.i.i.i158.i.i.do.body.i.i.i158.i.i_crit_edge: ; preds = %do.body.i.i.i158.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i158.i.i

atomic_cmpxchg.exit160.i.i:                       ; preds = %do.body.i.i.i158.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !156
  %inc91.i.i = add nuw i32 %i.2171.i.i, 1
  %155 = ptrtoint ptr %rdev.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %rdev.i.i, align 4
  %max_handles82.i.i = getelementptr inbounds %struct.radeon_device, ptr %156, i32 0, i32 59, i32 4
  %157 = ptrtoint ptr %max_handles82.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %max_handles82.i.i, align 8
  %cmp83.i.i = icmp ult i32 %inc91.i.i, %158
  br i1 %cmp83.i.i, label %atomic_cmpxchg.exit160.i.i.for.body84.i.i_crit_edge, label %atomic_cmpxchg.exit160.i.i.for.end92.i.i_crit_edge

atomic_cmpxchg.exit160.i.i.for.end92.i.i_crit_edge: ; preds = %atomic_cmpxchg.exit160.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end92.i.i

atomic_cmpxchg.exit160.i.i.for.body84.i.i_crit_edge: ; preds = %atomic_cmpxchg.exit160.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body84.i.i

for.end92.i.i:                                    ; preds = %atomic_cmpxchg.exit160.i.i.for.end92.i.i_crit_edge, %for.cond79.preheader.i.i.for.end92.i.i_crit_edge
  call void @radeon_bo_kunmap(ptr noundef %68) #8
  br label %radeon_uvd_cs_msg.exit.i

sw.default.i.i:                                   ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.61, i32 noundef %77) #8
  br label %radeon_uvd_cs_msg.exit.thread.i

radeon_uvd_cs_msg.exit.thread.i:                  ; preds = %sw.default.i.i, %for.end77.i.i, %if.then72.i.i, %radeon_uvd_cs_msg_decode.exit.thread, %if.end49.thread.i.i, %for.end.i.i, %if.then25.i.i, %radeon_uvd_validate_codec.exit53, %if.then10.i.i, %if.then6.i.i, %if.then1.i.i, %if.then.i27.i
  %retval.0.i35.ph.i = phi i32 [ -22, %if.end49.thread.i.i ], [ -22, %for.end.i.i ], [ -22, %if.then25.i.i ], [ -2, %for.end77.i.i ], [ -22, %if.then72.i.i ], [ -22, %sw.default.i.i ], [ -22, %if.then10.i.i ], [ %call4.i.i, %if.then6.i.i ], [ -22, %if.then.i27.i ], [ %spec.select.i, %if.then1.i.i ], [ -22, %radeon_uvd_validate_codec.exit53 ], [ -22, %radeon_uvd_cs_msg_decode.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ptr.i25.i) #8
  br label %cleanup

radeon_uvd_cs_msg.exit.i:                         ; preds = %for.end92.i.i, %if.then65.i34.i.radeon_uvd_cs_msg.exit.i_crit_edge, %if.then33.i33.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ptr.i25.i) #8
  br label %sw.epilog.i

if.else63.i.i:                                    ; preds = %if.end52.i.i
  br i1 %tobool.not.i.i, label %if.then65.i.i, label %if.else63.i.i.sw.epilog.i_crit_edge

if.else63.i.i.sw.epilog.i_crit_edge:              ; preds = %if.else63.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.then65.i.i:                                    ; preds = %if.else63.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.52) #8
  br label %cleanup

sw.default.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.44, i32 noundef %add.i) #8
  br label %cleanup

sw.epilog.i:                                      ; preds = %if.else63.i.i.sw.epilog.i_crit_edge, %radeon_uvd_cs_msg.exit.i, %sw.bb2.i, %sw.bb.i, %for.body.i.sw.epilog.i_crit_edge, %for.body.i.sw.epilog.i_crit_edge1960
  %data0.2 = phi i32 [ %data0.1, %for.body.i.sw.epilog.i_crit_edge ], [ %data0.1, %for.body.i.sw.epilog.i_crit_edge1960 ], [ %data0.1, %radeon_uvd_cs_msg.exit.i ], [ %data0.1, %if.else63.i.i.sw.epilog.i_crit_edge ], [ %data0.1, %sw.bb2.i ], [ %24, %sw.bb.i ]
  %data1.2 = phi i32 [ %data1.1, %for.body.i.sw.epilog.i_crit_edge ], [ %data1.1, %for.body.i.sw.epilog.i_crit_edge1960 ], [ %data1.1, %radeon_uvd_cs_msg.exit.i ], [ %data1.1, %if.else63.i.i.sw.epilog.i_crit_edge ], [ %26, %sw.bb2.i ], [ %data1.1, %sw.bb.i ]
  %has_msg_cmd.2 = phi i8 [ %has_msg_cmd.1, %for.body.i.sw.epilog.i_crit_edge ], [ %has_msg_cmd.1, %for.body.i.sw.epilog.i_crit_edge1960 ], [ 1, %radeon_uvd_cs_msg.exit.i ], [ %has_msg_cmd.1, %if.else63.i.i.sw.epilog.i_crit_edge ], [ %has_msg_cmd.1, %sw.bb2.i ], [ %has_msg_cmd.1, %sw.bb.i ]
  %159 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %idx, align 8
  %inc10.i = add i32 %160, 1
  store i32 %inc10.i, ptr %idx, align 8
  %inc11.i = add i32 %i.0243.i, 1
  %161 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %2, align 4
  %cmp.not.i = icmp sgt i32 %inc11.i, %162
  br i1 %cmp.not.i, label %sw.epilog.i.do.cond_crit_edge, label %sw.epilog.i.for.body.i_crit_edge

sw.epilog.i.for.body.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

sw.epilog.i.do.cond_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond

sw.bb12:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %163 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %2, align 4
  %add = add i32 %164, 2
  %165 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %idx, align 8
  %add14 = add i32 %add, %166
  store i32 %add14, ptr %idx, align 8
  br label %do.cond

sw.default:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.37, i32 noundef %14) #8
  br label %cleanup

do.cond:                                          ; preds = %sw.bb12, %sw.epilog.i.do.cond_crit_edge, %sw.bb.do.cond_crit_edge
  %data0.4 = phi i32 [ %data0.0, %sw.bb12 ], [ %data0.0, %sw.bb.do.cond_crit_edge ], [ %data0.2, %sw.epilog.i.do.cond_crit_edge ]
  %data1.4 = phi i32 [ %data1.0, %sw.bb12 ], [ %data1.0, %sw.bb.do.cond_crit_edge ], [ %data1.2, %sw.epilog.i.do.cond_crit_edge ]
  %has_msg_cmd.4 = phi i8 [ %has_msg_cmd.0, %sw.bb12 ], [ %has_msg_cmd.0, %sw.bb.do.cond_crit_edge ], [ %has_msg_cmd.2, %sw.epilog.i.do.cond_crit_edge ]
  %167 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %idx, align 8
  %169 = ptrtoint ptr %chunk_ib to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %chunk_ib, align 4
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %170, align 4
  %cmp19 = icmp ult i32 %168, %172
  br i1 %cmp19, label %do.cond.do.body_crit_edge, label %do.end

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %do.cond
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %has_msg_cmd.4)
  %tobool20.not = icmp eq i8 %has_msg_cmd.4, 0
  br i1 %tobool20.not, label %if.then21, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then21:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.38) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %do.end.cleanup_crit_edge, %sw.default, %sw.default.i, %if.then65.i.i, %radeon_uvd_cs_msg.exit.thread.i, %if.then56.i.i, %if.then51.i.i, %if.then41.i.i, %if.then33.i.i, %if.then26.i.i, %if.then20.i.i, %if.then.i.i, %do.body.cleanup_crit_edge, %if.then3, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then3 ], [ -22, %sw.default ], [ -22, %if.then21 ], [ 0, %do.end.cleanup_crit_edge ], [ -22, %if.then.i.i ], [ -22, %if.then20.i.i ], [ -22, %if.then26.i.i ], [ -22, %if.then41.i.i ], [ -22, %if.then51.i.i ], [ -22, %if.then56.i.i ], [ -22, %if.then65.i.i ], [ -22, %if.then33.i.i ], [ %retval.0.i35.ph.i, %radeon_uvd_cs_msg.exit.thread.i ], [ -22, %sw.default.i ], [ %call, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf_sizes) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_cs_packet_parse(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_uvd_get_create_msg(ptr noundef %rdev, i32 noundef %ring, i32 noundef %handle, ptr noundef %fence) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vcpu_bo = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 59, i32 1
  %0 = ptrtoint ptr %vcpu_bo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vcpu_bo, align 4
  %size.i = getelementptr inbounds %struct.radeon_bo, ptr %1, i32 0, i32 4, i32 0, i32 5
  %2 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i, align 8
  %sub = add i32 %3, -4096
  %conv = zext i32 %sub to i64
  %cpu_addr = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 59, i32 2
  %4 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cpu_addr, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 %sub
  %gpu_addr = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 59, i32 3
  %6 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %gpu_addr, align 8
  %add = add i64 %7, %conv
  %resv32.i.i = getelementptr inbounds %struct.radeon_bo, ptr %1, i32 0, i32 4, i32 0, i32 9
  %8 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resv32.i.i, align 8
  %call.i1.i.i = tail call i32 @ww_mutex_lock(ptr noundef %9, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i1.i.i)
  %cmp.i.i = icmp eq i32 %call.i1.i.i, -4
  %.ret.0.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i1.i.i
  %10 = zext i32 %.ret.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %.ret.0.i.i, label %do.end.i [
    i32 0, label %do.body
    i32 -512, label %entry.cleanup_crit_edge
  ], !prof !145

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rdev.i = getelementptr inbounds %struct.radeon_bo, ptr %1, i32 0, i32 13
  %11 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rdev.i, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.40, ptr noundef %1) #11
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 3556) #8, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !158
  tail call void @arm_heavy_mb() #8
  %arrayidx9 = getelementptr i32, ptr %add.ptr, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx9, i32 0) #8, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !159
  tail call void @arm_heavy_mb() #8
  %arrayidx13 = getelementptr i32, ptr %add.ptr, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx13, i32 %handle) #8, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  tail call void @arm_heavy_mb() #8
  %arrayidx17 = getelementptr i32, ptr %add.ptr, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx17, i32 0) #8, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
  tail call void @arm_heavy_mb() #8
  %arrayidx21 = getelementptr i32, ptr %add.ptr, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx21, i32 0) #8, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !162
  tail call void @arm_heavy_mb() #8
  %arrayidx25 = getelementptr i32, ptr %add.ptr, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx25, i32 0) #8, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !163
  tail call void @arm_heavy_mb() #8
  %arrayidx29 = getelementptr i32, ptr %add.ptr, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx29, i32 0) #8, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !164
  tail call void @arm_heavy_mb() #8
  %arrayidx33 = getelementptr i32, ptr %add.ptr, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx33, i32 1920) #8, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %arrayidx37 = getelementptr i32, ptr %add.ptr, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx37, i32 1088) #8, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !166
  tail call void @arm_heavy_mb() #8
  %arrayidx41 = getelementptr i32, ptr %add.ptr, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx41, i32 0) #8, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !167
  tail call void @arm_heavy_mb() #8
  %arrayidx45 = getelementptr i32, ptr %add.ptr, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx45, i32 28536832) #8, !srcloc !149
  br label %do.body47

do.body47:                                        ; preds = %do.body47.do.body47_crit_edge, %do.body
  %i.079 = phi i32 [ 11, %do.body ], [ %inc, %do.body47.do.body47_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !168
  tail call void @arm_heavy_mb() #8
  %arrayidx50 = getelementptr i32, ptr %add.ptr, i32 %i.079
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx50, i32 0) #8, !srcloc !149
  %inc = add nuw nsw i32 %i.079, 1
  %exitcond.not = icmp eq i32 %inc, 1024
  br i1 %exitcond.not, label %for.end, label %do.body47.do.body47_crit_edge

do.body47.do.body47_crit_edge:                    ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body47

for.end:                                          ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #10
  %call51 = tail call fastcc i32 @radeon_uvd_send_msg(ptr noundef %rdev, i32 noundef %ring, i64 noundef %add, ptr noundef %fence)
  %15 = ptrtoint ptr %vcpu_bo to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vcpu_bo, align 4
  %tbo.i = getelementptr inbounds %struct.radeon_bo, ptr %16, i32 0, i32 4
  %bdev.i.i.i = getelementptr inbounds %struct.radeon_bo, ptr %16, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %18, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #8
  %resource.i.i.i = getelementptr inbounds %struct.radeon_bo, ptr %16, i32 0, i32 4, i32 6
  %19 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %resource.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i, ptr noundef %20, ptr noundef null) #8
  %21 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %22, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #8
  %resv.i.i = getelementptr inbounds %struct.radeon_bo, ptr %16, i32 0, i32 4, i32 0, i32 9
  %23 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %resv.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %24) #8
  tail call void @ww_mutex_unlock(ptr noundef %24) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call51, %for.end ], [ %.ret.0.i.i, %do.end.i ], [ %.ret.0.i.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @radeon_uvd_send_msg(ptr noundef %rdev, i32 noundef %ring, i64 noundef %addr, ptr noundef writeonly %fence) unnamed_addr #0 align 64 {
entry:
  %ib = alloca %struct.radeon_ib, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %ib) #8
  %0 = call ptr @memset(ptr %ib, i32 255, i32 88)
  %call = call i32 @radeon_ib_get(ptr noundef %rdev, i32 noundef %ring, ptr noundef nonnull %ib, ptr noundef null, i32 noundef 64) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %ptr = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 3
  %1 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ptr, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 15300, ptr %2, align 4
  %conv = trunc i64 %addr to i32
  %4 = load ptr, ptr %ptr, align 8
  %arrayidx2 = getelementptr i32, ptr %4, i32 1
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %arrayidx2, align 4
  %6 = load ptr, ptr %ptr, align 8
  %arrayidx4 = getelementptr i32, ptr %6, i32 2
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 15301, ptr %arrayidx4, align 4
  %shr = lshr i64 %addr, 32
  %conv5 = trunc i64 %shr to i32
  %8 = load ptr, ptr %ptr, align 8
  %arrayidx7 = getelementptr i32, ptr %8, i32 3
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv5, ptr %arrayidx7, align 4
  %10 = load ptr, ptr %ptr, align 8
  %arrayidx9 = getelementptr i32, ptr %10, i32 4
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 15299, ptr %arrayidx9, align 4
  %12 = load ptr, ptr %ptr, align 8
  %arrayidx11 = getelementptr i32, ptr %12, i32 5
  %13 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %arrayidx11, align 4
  %14 = load ptr, ptr %ptr, align 8
  %arrayidx14 = getelementptr i32, ptr %14, i32 6
  %15 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 15359, ptr %arrayidx14, align 4
  %16 = load ptr, ptr %ptr, align 8
  %arrayidx16 = getelementptr i32, ptr %16, i32 7
  %17 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %arrayidx16, align 4
  %18 = load ptr, ptr %ptr, align 8
  %arrayidx14.1 = getelementptr i32, ptr %18, i32 8
  %19 = ptrtoint ptr %arrayidx14.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 15359, ptr %arrayidx14.1, align 4
  %20 = load ptr, ptr %ptr, align 8
  %arrayidx16.1 = getelementptr i32, ptr %20, i32 9
  %21 = ptrtoint ptr %arrayidx16.1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %arrayidx16.1, align 4
  %22 = load ptr, ptr %ptr, align 8
  %arrayidx14.2 = getelementptr i32, ptr %22, i32 10
  %23 = ptrtoint ptr %arrayidx14.2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 15359, ptr %arrayidx14.2, align 4
  %24 = load ptr, ptr %ptr, align 8
  %arrayidx16.2 = getelementptr i32, ptr %24, i32 11
  %25 = ptrtoint ptr %arrayidx16.2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %arrayidx16.2, align 4
  %26 = load ptr, ptr %ptr, align 8
  %arrayidx14.3 = getelementptr i32, ptr %26, i32 12
  %27 = ptrtoint ptr %arrayidx14.3 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 15359, ptr %arrayidx14.3, align 4
  %28 = load ptr, ptr %ptr, align 8
  %arrayidx16.3 = getelementptr i32, ptr %28, i32 13
  %29 = ptrtoint ptr %arrayidx16.3 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %arrayidx16.3, align 4
  %30 = load ptr, ptr %ptr, align 8
  %arrayidx14.4 = getelementptr i32, ptr %30, i32 14
  %31 = ptrtoint ptr %arrayidx14.4 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 15359, ptr %arrayidx14.4, align 4
  %32 = load ptr, ptr %ptr, align 8
  %arrayidx16.4 = getelementptr i32, ptr %32, i32 15
  %33 = ptrtoint ptr %arrayidx16.4 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %arrayidx16.4, align 4
  %length_dw = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 1
  %34 = ptrtoint ptr %length_dw to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 16, ptr %length_dw, align 4
  %call18 = call i32 @radeon_ib_schedule(ptr noundef %rdev, ptr noundef nonnull %ib, ptr noundef null, i1 noundef zeroext false) #8
  %tobool19.not = icmp eq ptr %fence, null
  br i1 %tobool19.not, label %if.end.if.end23_crit_edge, label %if.then20

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %fence21 = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 5
  %35 = ptrtoint ptr %fence21 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fence21, align 8
  %call22 = call ptr @radeon_fence_ref(ptr noundef %36) #8
  %37 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call22, ptr %fence, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end.if.end23_crit_edge
  call void @radeon_ib_free(ptr noundef %rdev, ptr noundef nonnull %ib) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.end23 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %ib) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_dpm_enable_uvd(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_uvd_calc_upll_dividers(ptr nocapture noundef readonly %rdev, i32 noundef %vclk, i32 noundef %dclk, i32 noundef %vco_min, i32 noundef %vco_max, i32 noundef %fb_factor, i32 noundef %fb_mask, i32 noundef %pd_min, i32 noundef %pd_max, i32 noundef %pd_even, ptr nocapture noundef writeonly %optimal_fb_div, ptr nocapture noundef writeonly %optimal_vclk_div, ptr nocapture noundef writeonly %optimal_dclk_div) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spll = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 41, i32 3
  %0 = ptrtoint ptr %spll to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %spll, align 4
  %2 = tail call i32 @llvm.umax.i32(i32 %vco_min, i32 %vclk)
  %3 = tail call i32 @llvm.umax.i32(i32 %2, i32 %dclk)
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %vco_max)
  %cmp7.not387 = icmp ugt i32 %3, %vco_max
  br i1 %cmp7.not387, label %entry.for.end.thread393_crit_edge, label %for.body.lr.ph

entry.for.end.thread393_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread393

for.body.lr.ph:                                   ; preds = %entry
  %conv8 = zext i32 %fb_factor to i64
  %conv197 = zext i32 %fb_mask to i64
  %.neg = add i32 %dclk, %vclk
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %vco_freq.0389 = phi i32 [ %3, %for.body.lr.ph ], [ %add231, %for.inc.for.body_crit_edge ]
  %optimal_score.0388 = phi i32 [ -1, %for.body.lr.ph ], [ %optimal_score.1, %for.inc.for.body_crit_edge ]
  %conv = zext i32 %vco_freq.0389 to i64
  %mul = mul nuw i64 %conv, %conv8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp181 = icmp ult i64 %mul, 4294967296
  br i1 %cmp181, label %if.then185, label %if.else191, !prof !169

if.then185:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv186 = trunc i64 %mul to i32
  %div189 = udiv i32 %conv186, %1
  %conv190 = zext i32 %div189 to i64
  br label %if.end195

if.else191:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %4 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1, i64 %mul) #12, !srcloc !170
  %asmresult1.i = extractvalue { i64, i64 } %4, 1
  br label %if.end195

if.end195:                                        ; preds = %if.else191, %if.then185
  %fb_div.0 = phi i64 [ %conv190, %if.then185 ], [ %asmresult1.i, %if.else191 ]
  call void @__sanitizer_cov_trace_cmp8(i64 %fb_div.0, i64 %conv197)
  %cmp198 = icmp ugt i64 %fb_div.0, %conv197
  br i1 %cmp198, label %if.end195.for.end_crit_edge, label %if.end201

if.end195.for.end_crit_edge:                      ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end201:                                        ; preds = %if.end195
  %div.i = udiv i32 %vco_freq.0389, %vclk
  %5 = tail call i32 @llvm.umax.i32(i32 %div.i, i32 %pd_min) #8
  %div1.i = udiv i32 %vco_freq.0389, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i, i32 %vclk)
  %cmp2.i = icmp ugt i32 %div1.i, %vclk
  %add.i = zext i1 %cmp2.i to i32
  %post_div.1.i = add i32 %5, %add.i
  call void @__sanitizer_cov_trace_cmp4(i32 %post_div.1.i, i32 %pd_even)
  %cmp5.i = icmp ugt i32 %post_div.1.i, %pd_even
  %rem.i = and i32 %post_div.1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp ne i32 %rem.i, 0
  %not.or.cond.i = and i1 %cmp5.i, %tobool.not.i
  %add7.i = zext i1 %not.or.cond.i to i32
  %post_div.2.i = add i32 %post_div.1.i, %add7.i
  call void @__sanitizer_cov_trace_cmp4(i32 %post_div.2.i, i32 %pd_max)
  %cmp205 = icmp ugt i32 %post_div.2.i, %pd_max
  br i1 %cmp205, label %if.end201.for.end_crit_edge, label %if.end208

if.end201.for.end_crit_edge:                      ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end208:                                        ; preds = %if.end201
  %div.i347 = udiv i32 %vco_freq.0389, %dclk
  %6 = tail call i32 @llvm.umax.i32(i32 %div.i347, i32 %pd_min) #8
  %div1.i348 = udiv i32 %vco_freq.0389, %6
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i348, i32 %dclk)
  %cmp2.i349 = icmp ugt i32 %div1.i348, %dclk
  %add.i350 = zext i1 %cmp2.i349 to i32
  %post_div.1.i351 = add i32 %6, %add.i350
  call void @__sanitizer_cov_trace_cmp4(i32 %post_div.1.i351, i32 %pd_even)
  %cmp5.i352 = icmp ugt i32 %post_div.1.i351, %pd_even
  %rem.i353 = and i32 %post_div.1.i351, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i353)
  %tobool.not.i354 = icmp ne i32 %rem.i353, 0
  %not.or.cond.i355 = and i1 %cmp5.i352, %tobool.not.i354
  %add7.i356 = zext i1 %not.or.cond.i355 to i32
  %post_div.2.i357 = add i32 %post_div.1.i351, %add7.i356
  call void @__sanitizer_cov_trace_cmp4(i32 %post_div.2.i357, i32 %pd_max)
  %cmp210 = icmp ugt i32 %post_div.2.i357, %pd_max
  br i1 %cmp210, label %if.end208.for.end_crit_edge, label %if.end213

if.end208.for.end_crit_edge:                      ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end213:                                        ; preds = %if.end208
  %div214 = udiv i32 %vco_freq.0389, %post_div.2.i
  %div217 = udiv i32 %vco_freq.0389, %post_div.2.i357
  %7 = add i32 %div214, %div217
  %sub218 = sub i32 %.neg, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %sub218, i32 %optimal_score.0388)
  %cmp219 = icmp ult i32 %sub218, %optimal_score.0388
  br i1 %cmp219, label %if.then221, label %if.end213.for.inc_crit_edge

if.end213.for.inc_crit_edge:                      ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then221:                                       ; preds = %if.end213
  %8 = trunc i64 %fb_div.0 to i32
  %conv222 = and i32 %8, %fb_mask
  %9 = ptrtoint ptr %optimal_fb_div to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv222, ptr %optimal_fb_div, align 4
  %10 = ptrtoint ptr %optimal_vclk_div to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %post_div.2.i, ptr %optimal_vclk_div, align 4
  %11 = ptrtoint ptr %optimal_dclk_div to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %post_div.2.i357, ptr %optimal_dclk_div, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub218)
  %cmp223 = icmp eq i32 %sub218, 0
  br i1 %cmp223, label %if.then221.for.end.thread_crit_edge, label %if.then221.for.inc_crit_edge

if.then221.for.inc_crit_edge:                     ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then221.for.end.thread_crit_edge:              ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread

for.inc:                                          ; preds = %if.then221.for.inc_crit_edge, %if.end213.for.inc_crit_edge
  %optimal_score.1 = phi i32 [ %sub218, %if.then221.for.inc_crit_edge ], [ %optimal_score.0388, %if.end213.for.inc_crit_edge ]
  %add231 = add i32 %vco_freq.0389, 100
  %cmp7.not = icmp ugt i32 %add231, %vco_max
  br i1 %cmp7.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end208.for.end_crit_edge, %if.end201.for.end_crit_edge, %if.end195.for.end_crit_edge
  %optimal_score.0.lcssa = phi i32 [ %optimal_score.1, %for.inc.for.end_crit_edge ], [ %optimal_score.0388, %if.end195.for.end_crit_edge ], [ %optimal_score.0388, %if.end201.for.end_crit_edge ], [ %optimal_score.0388, %if.end208.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %optimal_score.0.lcssa)
  %cmp232 = icmp eq i32 %optimal_score.0.lcssa, -1
  br i1 %cmp232, label %for.end.for.end.thread393_crit_edge, label %for.end.for.end.thread_crit_edge

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread

for.end.for.end.thread393_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread393

for.end.thread393:                                ; preds = %for.end.for.end.thread393_crit_edge, %entry.for.end.thread393_crit_edge
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.thread393, %for.end.for.end.thread_crit_edge, %if.then221.for.end.thread_crit_edge
  %12 = phi i32 [ -22, %for.end.thread393 ], [ 0, %for.end.for.end.thread_crit_edge ], [ 0, %if.then221.for.end.thread_crit_edge ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_uvd_send_upll_ctlreq(ptr noundef %rdev, i32 noundef %cg_upll_func_cntl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %0 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %cg_upll_func_cntl)
  %cmp.i = icmp ugt i32 %1, %cg_upll_func_cntl
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %cg_upll_func_cntl)
  %cmp1.i = icmp ult i32 %cg_upll_func_cntl, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %2 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %cg_upll_func_cntl
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !171
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %cg_upll_func_cntl) #8
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i ], [ %5, %if.then.i ]
  %and = and i32 %retval.0.i, -9
  %6 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %cg_upll_func_cntl)
  %cmp.i50 = icmp ugt i32 %7, %cg_upll_func_cntl
  %or.cond.i52 = or i1 %cmp1.i, %cmp.i50
  br i1 %or.cond.i52, label %do.body.i, label %if.else.i55

do.body.i:                                        ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !173
  tail call void @arm_heavy_mb() #8
  %8 = tail call i32 @llvm.bswap.i32(i32 %and) #8
  %rmmio.i53 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %9 = ptrtoint ptr %rmmio.i53 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmmio.i53, align 4
  %add.ptr.i54 = getelementptr i8, ptr %10, i32 %cg_upll_func_cntl
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54, i32 %8) #8, !srcloc !149
  br label %r100_mm_wreg.exit

if.else.i55:                                      ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %cg_upll_func_cntl, i32 noundef %and) #8
  br label %r100_mm_wreg.exit

r100_mm_wreg.exit:                                ; preds = %if.else.i55, %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #8
  %21 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %cg_upll_func_cntl)
  %cmp.i57 = icmp ugt i32 %22, %cg_upll_func_cntl
  %or.cond.i59 = or i1 %cmp1.i, %cmp.i57
  br i1 %or.cond.i59, label %if.then.i62, label %if.else.i64

if.then.i62:                                      ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %rmmio.i60 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %23 = ptrtoint ptr %rmmio.i60 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rmmio.i60, align 4
  %add.ptr.i61 = getelementptr i8, ptr %24, i32 %cg_upll_func_cntl
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i61) #8, !srcloc !171
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  br label %r100_mm_rreg.exit66

if.else.i64:                                      ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i63 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %cg_upll_func_cntl) #8
  br label %r100_mm_rreg.exit66

r100_mm_rreg.exit66:                              ; preds = %if.else.i64, %if.then.i62
  %retval.0.i65 = phi i32 [ %call3.i63, %if.else.i64 ], [ %26, %if.then.i62 ]
  %or5 = or i32 %retval.0.i65, 8
  %27 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %cg_upll_func_cntl)
  %cmp.i68 = icmp ugt i32 %28, %cg_upll_func_cntl
  %or.cond.i70 = or i1 %cmp1.i, %cmp.i68
  br i1 %or.cond.i70, label %do.body.i73, label %if.else.i74

do.body.i73:                                      ; preds = %r100_mm_rreg.exit66
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !173
  tail call void @arm_heavy_mb() #8
  %29 = tail call i32 @llvm.bswap.i32(i32 %or5) #8
  %rmmio.i71 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %30 = ptrtoint ptr %rmmio.i71 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmmio.i71, align 4
  %add.ptr.i72 = getelementptr i8, ptr %31, i32 %cg_upll_func_cntl
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72, i32 %29) #8, !srcloc !149
  br label %r100_mm_wreg.exit75

if.else.i74:                                      ; preds = %r100_mm_rreg.exit66
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %cg_upll_func_cntl, i32 noundef %or5) #8
  br label %r100_mm_wreg.exit75

r100_mm_wreg.exit75:                              ; preds = %if.else.i74, %do.body.i73
  %rmmio.i80 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  br label %for.body

for.body:                                         ; preds = %while.body15.preheader.for.body_crit_edge, %r100_mm_wreg.exit75
  %i.0111 = phi i32 [ 0, %r100_mm_wreg.exit75 ], [ %inc, %while.body15.preheader.for.body_crit_edge ]
  %32 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %cg_upll_func_cntl)
  %cmp.i77 = icmp ugt i32 %33, %cg_upll_func_cntl
  %or.cond.i79 = or i1 %cmp1.i, %cmp.i77
  br i1 %or.cond.i79, label %if.then.i82, label %if.else.i84

if.then.i82:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %rmmio.i80 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rmmio.i80, align 4
  %add.ptr.i81 = getelementptr i8, ptr %35, i32 %cg_upll_func_cntl
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i81) #8, !srcloc !171
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  br label %r100_mm_rreg.exit86

if.else.i84:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i83 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %cg_upll_func_cntl) #8
  br label %r100_mm_rreg.exit86

r100_mm_rreg.exit86:                              ; preds = %if.else.i84, %if.then.i82
  %retval.0.i85 = phi i32 [ %call3.i83, %if.else.i84 ], [ %37, %if.then.i82 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741825, i32 %retval.0.i85)
  %cmp10 = icmp ugt i32 %retval.0.i85, -1073741825
  br i1 %cmp10, label %r100_mm_rreg.exit86.do.body17_crit_edge, label %while.body15.preheader

r100_mm_rreg.exit86.do.body17_crit_edge:          ; preds = %r100_mm_rreg.exit86
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body17

while.body15.preheader:                           ; preds = %r100_mm_rreg.exit86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748000) #8
  %inc = add nuw nsw i32 %i.0111, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %while.body15.preheader.do.body17_crit_edge, label %while.body15.preheader.for.body_crit_edge

while.body15.preheader.for.body_crit_edge:        ; preds = %while.body15.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

while.body15.preheader.do.body17_crit_edge:       ; preds = %while.body15.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body17

do.body17:                                        ; preds = %while.body15.preheader.do.body17_crit_edge, %r100_mm_rreg.exit86.do.body17_crit_edge
  %i.0.lcssa = phi i32 [ %i.0111, %r100_mm_rreg.exit86.do.body17_crit_edge ], [ 100, %while.body15.preheader.do.body17_crit_edge ]
  %48 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %cg_upll_func_cntl)
  %cmp.i88 = icmp ugt i32 %49, %cg_upll_func_cntl
  %or.cond.i90 = or i1 %cmp1.i, %cmp.i88
  br i1 %or.cond.i90, label %if.then.i93, label %if.else.i95

if.then.i93:                                      ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %rmmio.i80 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rmmio.i80, align 4
  %add.ptr.i92 = getelementptr i8, ptr %51, i32 %cg_upll_func_cntl
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i92) #8, !srcloc !171
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  br label %r100_mm_rreg.exit97

if.else.i95:                                      ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i94 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %cg_upll_func_cntl) #8
  br label %r100_mm_rreg.exit97

r100_mm_rreg.exit97:                              ; preds = %if.else.i95, %if.then.i93
  %retval.0.i96 = phi i32 [ %call3.i94, %if.else.i95 ], [ %53, %if.then.i93 ]
  %and20 = and i32 %retval.0.i96, -9
  %54 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %cg_upll_func_cntl)
  %cmp.i99 = icmp ugt i32 %55, %cg_upll_func_cntl
  %or.cond.i101 = or i1 %cmp1.i, %cmp.i99
  br i1 %or.cond.i101, label %do.body.i104, label %if.else.i105

do.body.i104:                                     ; preds = %r100_mm_rreg.exit97
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !173
  tail call void @arm_heavy_mb() #8
  %56 = tail call i32 @llvm.bswap.i32(i32 %and20) #8
  %57 = ptrtoint ptr %rmmio.i80 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rmmio.i80, align 4
  %add.ptr.i103 = getelementptr i8, ptr %58, i32 %cg_upll_func_cntl
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i103, i32 %56) #8, !srcloc !149
  br label %r100_mm_wreg.exit106

if.else.i105:                                     ; preds = %r100_mm_rreg.exit97
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %cg_upll_func_cntl, i32 noundef %and20) #8
  br label %r100_mm_wreg.exit106

r100_mm_wreg.exit106:                             ; preds = %if.else.i105, %do.body.i104
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %i.0.lcssa)
  %cmp24 = icmp eq i32 %i.0.lcssa, 100
  br i1 %cmp24, label %if.then25, label %r100_mm_wreg.exit106.cleanup27_crit_edge

r100_mm_wreg.exit106.cleanup27_crit_edge:         ; preds = %r100_mm_wreg.exit106
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup27

if.then25:                                        ; preds = %r100_mm_wreg.exit106
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.39) #8
  br label %cleanup27

cleanup27:                                        ; preds = %if.then25, %r100_mm_wreg.exit106.cleanup27_crit_edge
  %retval.0 = phi i32 [ -110, %if.then25 ], [ 0, %r100_mm_wreg.exit106.cleanup27_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock_interruptible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_move_to_lru_tail(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_reset_shared_max(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_resv_wait_timeout(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_ib_get(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_ib_schedule(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radeon_fence_ref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ib_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_fence_count_emitted(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_mm_rreg_slow(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_mm_wreg_slow(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !44, !45, !46, !47, !48, !49, !51, !52, !53, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !76, !78, !80, !82, !84, !86, !87, !88, !89, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134}
!llvm.module.flags = !{!136, !137, !138, !139, !140, !141, !142, !143}
!llvm.ident = !{!144}

!0 = !{ptr @__UNIQUE_ID_firmware320, !1, !"__UNIQUE_ID_firmware320", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 54, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware321, !3, !"__UNIQUE_ID_firmware321", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 55, i32 1}
!4 = !{ptr @__UNIQUE_ID_firmware322, !5, !"__UNIQUE_ID_firmware322", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 56, i32 1}
!6 = !{ptr @__UNIQUE_ID_firmware323, !7, !"__UNIQUE_ID_firmware323", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 57, i32 1}
!8 = !{ptr @__UNIQUE_ID_firmware324, !9, !"__UNIQUE_ID_firmware324", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 58, i32 1}
!10 = !{ptr @__UNIQUE_ID_firmware325, !11, !"__UNIQUE_ID_firmware325", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 59, i32 1}
!12 = !{ptr @__UNIQUE_ID_firmware326, !13, !"__UNIQUE_ID_firmware326", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 60, i32 1}
!14 = !{ptr @__UNIQUE_ID_firmware327, !15, !"__UNIQUE_ID_firmware327", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 61, i32 1}
!16 = !{ptr @__UNIQUE_ID_firmware328, !17, !"__UNIQUE_ID_firmware328", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 62, i32 1}
!18 = !{ptr @radeon_uvd_init.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 72, i32 2}
!20 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @radeon_uvd_init.__key.1, !19, !"__key", i1 false, i1 false}
!22 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 80, i32 20}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 85, i32 20}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 89, i32 20}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 95, i32 20}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 103, i32 20}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 113, i32 20}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 121, i32 20}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 129, i32 20}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 130, i32 13}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 143, i32 4}
!43 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @radeon_uvd_init._entry, !42, !"_entry", i1 false, i1 false}
!48 = !{ptr @radeon_uvd_init._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 160, i32 4}
!51 = !{ptr @radeon_uvd_init._entry.17, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @radeon_uvd_init._entry_ptr.19, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @radeon_uvd_init._entry.20, !54, !"_entry", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 180, i32 4}
!55 = !{ptr @radeon_uvd_init._entry_ptr.21, !54, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 193, i32 3}
!58 = !{ptr @radeon_uvd_init._entry.22, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @radeon_uvd_init._entry_ptr.24, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 200, i32 3}
!62 = !{ptr @radeon_uvd_init._entry.25, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @radeon_uvd_init._entry_ptr.27, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 209, i32 3}
!66 = !{ptr @radeon_uvd_init._entry.28, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @radeon_uvd_init._entry_ptr.30, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 215, i32 3}
!70 = !{ptr @radeon_uvd_init._entry.31, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @radeon_uvd_init._entry_ptr.33, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 268, i32 5}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 700, i32 3}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 706, i32 3}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 726, i32 4}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 732, i32 3}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 1046, i32 3}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/radeon/radeon_object.h", i32 71, i32 4}
!86 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @radeon_bo_reserve._entry, !85, !"_entry", i1 false, i1 false}
!89 = !{ptr @radeon_bo_reserve._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!90 = distinct !{null, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../include/drm/ttm/ttm_bo_driver.h", i32 140, i32 7}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 674, i32 4}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 585, i32 3}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 602, i32 4}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 606, i32 4}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 612, i32 3}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 617, i32 3}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 625, i32 3}
!106 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 632, i32 4}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 640, i32 3}
!110 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 477, i32 3}
!112 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 484, i32 3}
!114 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 490, i32 3}
!116 = !{ptr @.str.56, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 500, i32 3}
!118 = !{ptr @.str.57, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 517, i32 5}
!120 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 528, i32 3}
!122 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 544, i32 6}
!124 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 551, i32 3}
!126 = !{ptr @.str.61, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 563, i32 3}
!128 = !{ptr @.str.62, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 461, i32 3}
!130 = !{ptr @.str.63, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 424, i32 3}
!132 = !{ptr @.str.64, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 429, i32 3}
!134 = !{ptr @.str.65, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/radeon/radeon_uvd.c", i32 434, i32 3}
!136 = !{i32 1, !"wchar_size", i32 2}
!137 = !{i32 1, !"min_enum_size", i32 4}
!138 = !{i32 8, !"branch-target-enforcement", i32 0}
!139 = !{i32 8, !"sign-return-address", i32 0}
!140 = !{i32 8, !"sign-return-address-all", i32 0}
!141 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!142 = !{i32 7, !"uwtable", i32 1}
!143 = !{i32 7, !"frame-pointer", i32 2}
!144 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!145 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!146 = !{i8 0, i8 2}
!147 = !{!"auto-init"}
!148 = !{i64 2157753242}
!149 = !{i64 6714697}
!150 = !{i64 2157754048}
!151 = !{i64 2157754842}
!152 = !{i64 2157755445}
!153 = !{i64 2157755814}
!154 = !{i64 2148685511}
!155 = !{i64 1069177, i64 1069201, i64 1069222, i64 1069239, i64 1069256}
!156 = !{i64 2148685737}
!157 = !{i64 2157746614}
!158 = !{i64 2157747245}
!159 = !{i64 2157747809}
!160 = !{i64 2157748412}
!161 = !{i64 2157748781}
!162 = !{i64 2157749150}
!163 = !{i64 2157749519}
!164 = !{i64 2157750079}
!165 = !{i64 2157750885}
!166 = !{i64 2157751500}
!167 = !{i64 2157752061}
!168 = !{i64 2157752677}
!169 = !{!"branch_weights", i32 2000, i32 1}
!170 = !{i64 2148433449, i64 2148433729, i64 2148434063, i64 2148434397}
!171 = !{i64 6715115}
!172 = !{i64 2157435300}
!173 = !{i64 2157435707}
