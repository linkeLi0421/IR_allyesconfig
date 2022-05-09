; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/radeon_vce.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/radeon_vce.c"
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
%struct.radeon_ib = type { ptr, i32, i64, ptr, i32, ptr, ptr, i8, %struct.radeon_sync }
%struct.radeon_sync = type { [4 x ptr], [8 x ptr], ptr }
%struct.radeon_cs_parser = type { ptr, ptr, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, i32, ptr, ptr, ptr, ptr, %struct.radeon_ib, %struct.radeon_ib, ptr, i32, i32, i32, i32, i32, %struct.ww_acquire_ctx }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16, i32, ptr, ptr, %struct.lockdep_map, i32, i32 }
%struct.radeon_cs_chunk = type { i32, ptr, ptr }
%struct.radeon_bo_list = type { ptr, %struct.ttm_validate_buffer, i64, i32, i32, i32 }
%struct.ttm_validate_buffer = type { %struct.list_head, ptr, i32 }
%struct.radeon_semaphore = type { ptr, i32, i64 }
%struct.radeon_fence = type { %struct.dma_fence, ptr, i64, i32, i8, %struct.wait_queue_entry }
%struct.dma_fence = type { ptr, ptr, %union.anon.84, i64, i64, i32, %struct.kref, i32 }
%union.anon.84 = type { i64 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__UNIQUE_ID_firmware320 = internal constant [38 x i8] c"radeon.firmware=radeon/TAHITI_vce.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware321 = internal constant [39 x i8] c"radeon.firmware=radeon/BONAIRE_vce.bin\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"[ATI LIB=VCEFW,\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[ATI LIB=VCEFWSTATS,\00", [43 x i8] zeroinitializer }, align 32
@radeon_vce_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&(&rdev->vce.idle_work)->work)\00", [47 x i8] zeroinitializer }, align 32
@radeon_vce_init.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&(&rdev->vce.idle_work)->timer\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"radeon/TAHITI_vce.bin\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"radeon/BONAIRE_vce.bin\00", [41 x i8] zeroinitializer }, align 32
@radeon_vce_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 90, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"radeon_vce: Can't load firmware \22%s\22\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"radeon_vce_init\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/gpu/drm/radeon/radeon_vce.c\00", [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@radeon_vce_init._entry_ptr = internal global ptr @radeon_vce_init._entry, section ".printk_index", align 4
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%2hhd.%2hhd.%2hhd]\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%2u]\00", [27 x i8] zeroinitializer }, align 32
@radeon_vce_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.8, ptr @.str.9, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016[drm] Found VCE firmware/feedback version %d.%d.%d / %d!\0A\00", [36 x i8] zeroinitializer }, align 32
@radeon_vce_init._entry_ptr.16 = internal global ptr @radeon_vce_init._entry.14, section ".printk_index", align 4
@radeon_vce_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.8, ptr @.str.9, i32 145, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(%d) failed to allocate VCE bo\0A\00", [32 x i8] zeroinitializer }, align 32
@radeon_vce_init._entry_ptr.19 = internal global ptr @radeon_vce_init._entry.17, section ".printk_index", align 4
@radeon_vce_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.8, ptr @.str.9, i32 152, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(%d) failed to reserve VCE bo\0A\00", [33 x i8] zeroinitializer }, align 32
@radeon_vce_init._entry_ptr.22 = internal global ptr @radeon_vce_init._entry.20, section ".printk_index", align 4
@radeon_vce_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.8, ptr @.str.9, i32 161, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"(%d) VCE bo pin failed\0A\00", [40 x i8] zeroinitializer }, align 32
@radeon_vce_init._entry_ptr.25 = internal global ptr @radeon_vce_init._entry.23, section ".printk_index", align 4
@radeon_vce_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.26, ptr @.str.9, i32 230, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"radeon_vce_resume\00", [46 x i8] zeroinitializer }, align 32
@radeon_vce_resume._entry_ptr = internal global ptr @radeon_vce_resume._entry, section ".printk_index", align 4
@radeon_vce_resume._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.9, i32 237, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(%d) VCE map failed\0A\00", [43 x i8] zeroinitializer }, align 32
@radeon_vce_resume._entry_ptr.29 = internal global ptr @radeon_vce_resume._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Error destroying VCE handle (%d)!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"radeon: failed to get ib (%d).\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"radeon: failed to schedule ib (%d).\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Relocs at %d after relocations chunk end %d !\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"invalid reloc offset %llX!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"buffer to small (%d / %d)!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"invalid VCE command length (%d)!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"No other command allowed after destroy!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Handle already in use!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"invalid VCE command (0x%x)!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"no session command at start of IB\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"New session without create command!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"radeon: vce failed to lock ring %d (%d).\0A\00", [54 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@radeon_vce_ring_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.9, i32 778, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016[drm] ring test on %d succeeded in %d usecs\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"radeon_vce_ring_test\00", [43 x i8] zeroinitializer }, align 32
@radeon_vce_ring_test._entry_ptr = internal global ptr @radeon_vce_ring_test._entry, section ".printk_index", align 4
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"radeon: ring %d test failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"radeon: failed to get create msg (%d).\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"radeon: failed to get destroy ib (%d).\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"radeon: fence wait failed (%d).\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"radeon: fence wait timed out.\0A\00", [33 x i8] zeroinitializer }, align 32
@radeon_vce_ib_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.9, i32 820, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016[drm] ib test on ring %d succeeded\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"radeon_vce_ib_test\00", [45 x i8] zeroinitializer }, align 32
@radeon_vce_ib_test._entry_ptr = internal global ptr @radeon_vce_ib_test._entry, section ".printk_index", align 4
@radeon_bo_reserve._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.54, i32 71, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%p reserve failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"radeon_bo_reserve\00", [46 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/radeon/radeon_object.h\00", [57 x i8] zeroinitializer }, align 32
@radeon_bo_reserve._entry_ptr = internal global ptr @radeon_bo_reserve._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.56 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"VCE handle collision detected!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"No more free VCE handles!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"radeon: writing more dwords to the ring than expected!\0A\00", [40 x i8] zeroinitializer }, align 32
@switch.table.radeon_vce_init = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6, ptr @.str.6], [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 671220224, i64 838861056, i64 838926848]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.61 = internal global [16 x i64] [i64 14, i64 32, i64 1, i64 2, i64 16777217, i64 33554433, i64 50331649, i64 67108865, i64 67108866, i64 67108869, i64 67108871, i64 67108872, i64 67108873, i64 83886081, i64 83886084, i64 83886085]
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 58, i32 34 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 59, i32 34 }
@___asan_gen_.74 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 65, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 72, i32 13 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 80, i32 13 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 89, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 106, i32 16 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 121, i32 16 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 124, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 145, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 152, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 161, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 230, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 237, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 328, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 355, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 391, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 482, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 496, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 500, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 569, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 575, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 596, i32 5 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 653, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 659, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 668, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 763, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 777, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 780, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 802, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 808, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 815, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 817, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 820, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.228 = private unnamed_addr constant [42 x i8] c"../drivers/gpu/drm/radeon/radeon_object.h\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 71, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 529, i32 5 }
@___asan_gen_.234 = private constant [39 x i8] c"../drivers/gpu/drm/radeon/radeon_vce.c\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 546, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.237 = private unnamed_addr constant [35 x i8] c"../drivers/gpu/drm/radeon/radeon.h\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 2721, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant [29 x i8] c"switch.table.radeon_vce_init\00", align 1
@llvm.compiler.used = appending global [72 x ptr] [ptr @__UNIQUE_ID_firmware320, ptr @__UNIQUE_ID_firmware321, ptr @radeon_bo_reserve._entry, ptr @radeon_bo_reserve._entry_ptr, ptr @radeon_vce_ib_test._entry, ptr @radeon_vce_ib_test._entry_ptr, ptr @radeon_vce_init._entry, ptr @radeon_vce_init._entry.14, ptr @radeon_vce_init._entry.17, ptr @radeon_vce_init._entry.20, ptr @radeon_vce_init._entry.23, ptr @radeon_vce_init._entry_ptr, ptr @radeon_vce_init._entry_ptr.16, ptr @radeon_vce_init._entry_ptr.19, ptr @radeon_vce_init._entry_ptr.22, ptr @radeon_vce_init._entry_ptr.25, ptr @radeon_vce_resume._entry, ptr @radeon_vce_resume._entry.27, ptr @radeon_vce_resume._entry_ptr, ptr @radeon_vce_resume._entry_ptr.29, ptr @radeon_vce_ring_test._entry, ptr @radeon_vce_ring_test._entry_ptr, ptr @.str, ptr @.str.1, ptr @radeon_vce_init.__key, ptr @.str.2, ptr @radeon_vce_init.__key.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @switch.table.radeon_vce_init], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_vce_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_vce_init.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_vce_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_vce_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_vce_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_vce_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_vce_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_vce_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_vce_resume._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_vce_ring_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_vce_ib_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_bo_reserve._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.radeon_vce_init to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_vce_init(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  %start = alloca i8, align 1
  %mid = alloca i8, align 1
  %end = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %start) #9
  %0 = ptrtoint ptr %start to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %start, align 1, !annotation !126
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mid) #9
  %1 = ptrtoint ptr %mid to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %mid, align 1, !annotation !126
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %end) #9
  %2 = ptrtoint ptr %end to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %end, align 1, !annotation !126
  %vce = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 60
  %idle_work = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 7
  tail call void @__init_work(ptr noundef %idle_work, i32 noundef 0) #9
  %3 = ptrtoint ptr %idle_work to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -64, ptr %idle_work, align 8
  %lockdep_map = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 7, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.2, ptr noundef nonnull @radeon_vce_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry11 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 7, i32 0, i32 1
  %4 = ptrtoint ptr %entry11 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %entry11, ptr %entry11, align 4
  %prev.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 7, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %entry11, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 7, i32 0, i32 2
  %6 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @radeon_vce_idle_work_handler, ptr %func, align 4
  %timer = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 7, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.4, ptr noundef nonnull @radeon_vce_init.__key.3) #9
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %7 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %family, align 4
  %switch.tableidx = add i32 %8, -51
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %switch.tableidx)
  %9 = icmp ult i32 %switch.tableidx, 11
  br i1 %9, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 1999, %switch.maskindex
  %10 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %switch.lobit.not = icmp eq i16 %10, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [11 x ptr], ptr @switch.table.radeon_vce_init, i32 0, i32 %switch.tableidx
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %vce_fw = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 81
  %12 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rdev, align 8
  %call = tail call i32 @request_firmware(ptr noundef %vce_fw, ptr noundef nonnull %switch.load, ptr noundef %13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end25

do.end25:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.7, ptr noundef nonnull %switch.load) #12
  br label %cleanup

if.end:                                           ; preds = %switch.lookup
  %16 = ptrtoint ptr %vce_fw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vce_fw, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %sub30 = add i32 %19, -24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub30)
  %cond231 = icmp eq i32 %sub30, 0
  br i1 %cond231, label %if.end.cleanup_crit_edge, label %for.body.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %data32 = getelementptr inbounds %struct.firmware, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %data32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data32, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %size.0233 = phi i32 [ %dec, %for.inc.for.body_crit_edge ], [ %sub30, %for.body.preheader ]
  %c.0232 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %21, %for.body.preheader ]
  %call34 = tail call i32 @strncmp(ptr noundef %c.0232, ptr noundef nonnull dereferenceable(16) @.str, i32 noundef 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.end40, label %for.inc

for.inc:                                          ; preds = %for.body
  %dec = add i32 %size.0233, -1
  %incdec.ptr = getelementptr i8, ptr %c.0232, i32 1
  %cond = icmp eq i32 %dec, 0
  br i1 %cond, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end40:                                         ; preds = %for.body
  %add.ptr = getelementptr i8, ptr %c.0232, i32 15
  %call42 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr, ptr noundef nonnull @.str.12, ptr noundef nonnull %start, ptr noundef nonnull %mid, ptr noundef nonnull %end)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call42)
  %cmp43.not = icmp eq i32 %call42, 3
  br i1 %cmp43.not, label %if.end45, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end45:                                         ; preds = %if.end40
  %22 = ptrtoint ptr %vce_fw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vce_fw, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %sub50 = add i32 %25, -23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub50)
  %cond226234 = icmp eq i32 %sub50, 0
  br i1 %cond226234, label %if.end45.cleanup_crit_edge, label %for.body55.preheader

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body55.preheader:                             ; preds = %if.end45
  %data52 = getelementptr inbounds %struct.firmware, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %data52 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data52, align 4
  br label %for.body55

for.body55:                                       ; preds = %for.inc61.for.body55_crit_edge, %for.body55.preheader
  %size.1236 = phi i32 [ %dec62, %for.inc61.for.body55_crit_edge ], [ %sub50, %for.body55.preheader ]
  %c.1235 = phi ptr [ %incdec.ptr63, %for.inc61.for.body55_crit_edge ], [ %27, %for.body55.preheader ]
  %call57 = call i32 @strncmp(ptr noundef %c.1235, ptr noundef nonnull dereferenceable(21) @.str.1, i32 noundef 20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp eq i32 %call57, 0
  br i1 %cmp58, label %if.end67, label %for.inc61

for.inc61:                                        ; preds = %for.body55
  %dec62 = add i32 %size.1236, -1
  %incdec.ptr63 = getelementptr i8, ptr %c.1235, i32 1
  %cond226 = icmp eq i32 %dec62, 0
  br i1 %cond226, label %for.inc61.cleanup_crit_edge, label %for.inc61.for.body55_crit_edge

for.inc61.for.body55_crit_edge:                   ; preds = %for.inc61
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body55

for.inc61.cleanup_crit_edge:                      ; preds = %for.inc61
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end67:                                         ; preds = %for.body55
  %add.ptr69 = getelementptr i8, ptr %c.1235, i32 20
  %fb_version = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 3
  %call71 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr69, ptr noundef nonnull @.str.13, ptr noundef %fb_version)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call71)
  %cmp72.not = icmp eq i32 %call71, 1
  br i1 %cmp72.not, label %do.end77, label %if.end67.cleanup_crit_edge

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end77:                                         ; preds = %if.end67
  %28 = ptrtoint ptr %start to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %start, align 1
  %conv = zext i8 %29 to i32
  %30 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %mid, align 1
  %conv78 = zext i8 %31 to i32
  %32 = ptrtoint ptr %end to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %end, align 1
  %conv79 = zext i8 %33 to i32
  %34 = ptrtoint ptr %fb_version to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fb_version, align 4
  %call82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %conv, i32 noundef %conv78, i32 noundef %conv79, i32 noundef %35) #12
  %36 = ptrtoint ptr %start to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %start, align 1
  %conv83 = zext i8 %37 to i32
  %shl = shl nuw i32 %conv83, 24
  %38 = ptrtoint ptr %mid to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %mid, align 1
  %conv84 = zext i8 %39 to i32
  %shl85 = shl nuw nsw i32 %conv84, 16
  %or = or i32 %shl85, %shl
  %40 = ptrtoint ptr %end to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %end, align 1
  %conv86 = zext i8 %41 to i32
  %shl87 = shl nuw nsw i32 %conv86, 8
  %or88 = or i32 %or, %shl87
  %fw_version = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 2
  %42 = ptrtoint ptr %fw_version to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or88, ptr %fw_version, align 8
  %43 = zext i32 %or88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values)
  switch i32 %or88, label %do.end77.cleanup_crit_edge [
    i32 671220224, label %do.end77.if.end104_crit_edge
    i32 838861056, label %do.end77.if.end104_crit_edge253
    i32 838926848, label %do.end77.if.end104_crit_edge254
  ]

do.end77.if.end104_crit_edge254:                  ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104

do.end77.if.end104_crit_edge253:                  ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104

do.end77.if.end104_crit_edge:                     ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104

do.end77.cleanup_crit_edge:                       ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end104:                                        ; preds = %do.end77.if.end104_crit_edge, %do.end77.if.end104_crit_edge253, %do.end77.if.end104_crit_edge254
  %44 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 57, i32 %45)
  %cmp106 = icmp ult i32 %45, 57
  br i1 %cmp106, label %if.then108, label %if.else

if.then108:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #11
  %call109 = call i32 @vce_v1_0_bo_size(ptr noundef %rdev) #9
  br label %if.end111

if.else:                                          ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #11
  %call110 = call i32 @vce_v2_0_bo_size(ptr noundef %rdev) #9
  br label %if.end111

if.end111:                                        ; preds = %if.else, %if.then108
  %size.2 = phi i32 [ %call109, %if.then108 ], [ %call110, %if.else ]
  %call113 = call i32 @radeon_bo_create(ptr noundef %rdev, i32 noundef %size.2, i32 noundef 4096, i1 noundef zeroext true, i32 noundef 4, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef %vce) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.end120, label %do.end118

do.end118:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rdev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.18, i32 noundef %call113) #12
  br label %cleanup

if.end120:                                        ; preds = %if.end111
  %48 = ptrtoint ptr %vce to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %vce, align 8
  %call123 = call fastcc i32 @radeon_bo_reserve(ptr noundef %49)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.end132, label %if.then125

if.then125:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #11
  call void @radeon_bo_unref(ptr noundef %vce) #9
  %50 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rdev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.21, i32 noundef %call123) #12
  br label %cleanup

if.end132:                                        ; preds = %if.end120
  %52 = ptrtoint ptr %vce to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %vce, align 8
  %gpu_addr = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 1
  %call136 = call i32 @radeon_bo_pin(ptr noundef %53, i32 noundef 4, ptr noundef %gpu_addr) #9
  %54 = ptrtoint ptr %vce to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %vce, align 8
  call fastcc void @radeon_bo_unreserve(ptr noundef %55)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool139.not = icmp eq i32 %call136, 0
  br i1 %tobool139.not, label %for.body151.preheader, label %if.then140

for.body151.preheader:                            ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 4, i32 0
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #9
  %56 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile i32 0, ptr %arrayidx, align 4
  %arrayidx154 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 5, i32 0
  %57 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %arrayidx154, align 4
  %arrayidx.1 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 4, i32 1
  %call.i.i.1 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.1, i32 noundef 4) #9
  %58 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile i32 0, ptr %arrayidx.1, align 4
  %arrayidx154.1 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 5, i32 1
  %59 = ptrtoint ptr %arrayidx154.1 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %arrayidx154.1, align 4
  %arrayidx.2 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 4, i32 2
  %call.i.i.2 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.2, i32 noundef 4) #9
  %60 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile i32 0, ptr %arrayidx.2, align 4
  %arrayidx154.2 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 5, i32 2
  %61 = ptrtoint ptr %arrayidx154.2 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %arrayidx154.2, align 4
  %arrayidx.3 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 4, i32 3
  %call.i.i.3 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.3, i32 noundef 4) #9
  %62 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile i32 0, ptr %arrayidx.3, align 4
  %arrayidx154.3 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 5, i32 3
  %63 = ptrtoint ptr %arrayidx154.3 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %arrayidx154.3, align 4
  %arrayidx.4 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 4, i32 4
  %call.i.i.4 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.4, i32 noundef 4) #9
  %64 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile i32 0, ptr %arrayidx.4, align 4
  %arrayidx154.4 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 5, i32 4
  %65 = ptrtoint ptr %arrayidx154.4 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %arrayidx154.4, align 4
  %arrayidx.5 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 4, i32 5
  %call.i.i.5 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.5, i32 noundef 4) #9
  %66 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile i32 0, ptr %arrayidx.5, align 4
  %arrayidx154.5 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 5, i32 5
  %67 = ptrtoint ptr %arrayidx154.5 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %arrayidx154.5, align 4
  %arrayidx.6 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 4, i32 6
  %call.i.i.6 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.6, i32 noundef 4) #9
  %68 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile i32 0, ptr %arrayidx.6, align 4
  %arrayidx154.6 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 5, i32 6
  %69 = ptrtoint ptr %arrayidx154.6 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %arrayidx154.6, align 4
  %arrayidx.7 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 4, i32 7
  %call.i.i.7 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.7, i32 noundef 4) #9
  %70 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile i32 0, ptr %arrayidx.7, align 4
  %arrayidx154.7 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 5, i32 7
  %71 = ptrtoint ptr %arrayidx154.7 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %arrayidx154.7, align 4
  %arrayidx.8 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 4, i32 8
  %call.i.i.8 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.8, i32 noundef 4) #9
  %72 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile i32 0, ptr %arrayidx.8, align 4
  %arrayidx154.8 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 5, i32 8
  %73 = ptrtoint ptr %arrayidx154.8 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %arrayidx154.8, align 4
  %arrayidx.9 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 4, i32 9
  %call.i.i.9 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.9, i32 noundef 4) #9
  %74 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile i32 0, ptr %arrayidx.9, align 4
  %arrayidx154.9 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 5, i32 9
  %75 = ptrtoint ptr %arrayidx154.9 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %arrayidx154.9, align 4
  %arrayidx.10 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 4, i32 10
  %call.i.i.10 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.10, i32 noundef 4) #9
  %76 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile i32 0, ptr %arrayidx.10, align 4
  %arrayidx154.10 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 5, i32 10
  %77 = ptrtoint ptr %arrayidx154.10 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %arrayidx154.10, align 4
  %arrayidx.11 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 4, i32 11
  %call.i.i.11 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.11, i32 noundef 4) #9
  %78 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile i32 0, ptr %arrayidx.11, align 4
  %arrayidx154.11 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 5, i32 11
  %79 = ptrtoint ptr %arrayidx154.11 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %arrayidx154.11, align 4
  %arrayidx.12 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 4, i32 12
  %call.i.i.12 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.12, i32 noundef 4) #9
  %80 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile i32 0, ptr %arrayidx.12, align 4
  %arrayidx154.12 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 5, i32 12
  %81 = ptrtoint ptr %arrayidx154.12 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %arrayidx154.12, align 4
  %arrayidx.13 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 4, i32 13
  %call.i.i.13 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.13, i32 noundef 4) #9
  %82 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile i32 0, ptr %arrayidx.13, align 4
  %arrayidx154.13 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 5, i32 13
  %83 = ptrtoint ptr %arrayidx154.13 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %arrayidx154.13, align 4
  %arrayidx.14 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 4, i32 14
  %call.i.i.14 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.14, i32 noundef 4) #9
  %84 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile i32 0, ptr %arrayidx.14, align 4
  %arrayidx154.14 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 5, i32 14
  %85 = ptrtoint ptr %arrayidx154.14 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %arrayidx154.14, align 4
  %arrayidx.15 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 4, i32 15
  %call.i.i.15 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.15, i32 noundef 4) #9
  %86 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile i32 0, ptr %arrayidx.15, align 4
  %arrayidx154.15 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 5, i32 15
  %87 = ptrtoint ptr %arrayidx154.15 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %arrayidx154.15, align 4
  br label %cleanup

if.then140:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #11
  call void @radeon_bo_unref(ptr noundef %vce) #9
  %88 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %rdev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.24, i32 noundef %call136) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then140, %for.body151.preheader, %if.then125, %do.end118, %do.end77.cleanup_crit_edge, %if.end67.cleanup_crit_edge, %for.inc61.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end25, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end25 ], [ %call113, %do.end118 ], [ %call123, %if.then125 ], [ %call136, %if.then140 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end40.cleanup_crit_edge ], [ -22, %if.end67.cleanup_crit_edge ], [ -22, %do.end77.cleanup_crit_edge ], [ -22, %if.end45.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %for.body151.preheader ], [ -22, %switch.hole_check.cleanup_crit_edge ], [ -22, %for.inc61.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %end) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mid) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %start) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_vce_idle_work_handler(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -10160
  %call = tail call i32 @radeon_fence_count_emitted(ptr noundef %add.ptr, i32 noundef 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.else9_crit_edge

entry.if.else9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else9

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @radeon_fence_count_emitted(ptr noundef %add.ptr, i32 noundef 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then, label %land.lhs.true.if.else9_crit_edge

land.lhs.true.if.else9_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else9

if.then:                                          ; preds = %land.lhs.true
  %pm_method = getelementptr i8, ptr %work, i32 -1444
  %0 = ptrtoint ptr %pm_method to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pm_method, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp3 = icmp eq i32 %1, 2
  br i1 %cmp3, label %land.lhs.true4, label %if.then.if.else_crit_edge

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true4:                                   ; preds = %if.then
  %dpm_enabled = getelementptr i8, ptr %work, i32 -1192
  %2 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dpm_enabled, align 8, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true4.if.else_crit_edge, label %if.then6

land.lhs.true4.if.else_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then6:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @radeon_dpm_enable_vce(ptr noundef %add.ptr, i1 noundef zeroext false) #9
  br label %if.end12

if.else:                                          ; preds = %land.lhs.true4.if.else_crit_edge, %if.then.if.else_crit_edge
  %asic = getelementptr i8, ptr %work, i32 -1856
  %4 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %asic, align 8
  %set_vce_clocks = getelementptr inbounds %struct.radeon_asic, ptr %5, i32 0, i32 20, i32 13
  %6 = ptrtoint ptr %set_vce_clocks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_vce_clocks, align 4
  %call8 = tail call i32 %7(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 0) #9
  br label %if.end12

if.else9:                                         ; preds = %land.lhs.true.if.else9_crit_edge, %entry.if.else9_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %work, i32 noundef 100) #9
  br label %if.end12

if.end12:                                         ; preds = %if.else9, %if.else, %if.then6
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

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vce_v1_0_bo_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vce_v2_0_bo_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_bo_create(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @radeon_bo_reserve(ptr noundef %bo) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %resv32.i = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 0, i32 9
  %0 = ptrtoint ptr %resv32.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resv32.i, align 8
  %call.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %1, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, -4
  %retval.1.i = select i1 %cmp.i, i32 -512, i32 %call.i.i
  %2 = zext i32 %retval.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %retval.1.i, label %do.end [
    i32 0, label %entry.cleanup_crit_edge
    i32 -512, label %entry.cleanup_crit_edge1
  ], !prof !128

entry.cleanup_crit_edge1:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rdev = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 13
  %3 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rdev, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.52, ptr noundef %bo) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge1
  ret i32 %retval.1.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_bo_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_bo_pin(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_bo_unreserve(ptr noundef %bo) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %tbo = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4
  %bdev.i.i = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev.i.i, align 8
  %lru_lock.i.i = getelementptr inbounds %struct.ttm_device, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i) #9
  %resource.i.i = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 6
  %2 = ptrtoint ptr %resource.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resource.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo, ptr noundef %3, ptr noundef null) #9
  %4 = ptrtoint ptr %bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bdev.i.i, align 8
  %lru_lock2.i.i = getelementptr inbounds %struct.ttm_device, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i) #9
  %resv.i = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 0, i32 9
  %6 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resv.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %7) #9
  tail call void @ww_mutex_unlock(ptr noundef %7) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_vce_fini(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vce = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 60
  %0 = ptrtoint ptr %vce to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vce, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @radeon_bo_unref(ptr noundef %vce) #9
  %vce_fw = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 81
  %2 = ptrtoint ptr %vce_fw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vce_fw, align 8
  tail call void @release_firmware(ptr noundef %3) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_vce_suspend(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vce = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 60
  %0 = ptrtoint ptr %vce to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vce, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 4, i32 0
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #9
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %for.inc, label %for.body.preheader.cleanup_crit_edge

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc:                                          ; preds = %for.body.preheader
  %arrayidx.1 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 4, i32 1
  %call.i.i.1 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.1, i32 noundef 4) #9
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.1 = icmp eq i32 %5, 0
  br i1 %tobool.not.1, label %for.inc.1, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 4, i32 2
  %call.i.i.2 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.2, i32 noundef 4) #9
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.2 = icmp eq i32 %7, 0
  br i1 %tobool.not.2, label %for.inc.2, label %for.inc.1.cleanup_crit_edge

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 4, i32 3
  %call.i.i.3 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.3, i32 noundef 4) #9
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.3 = icmp eq i32 %9, 0
  br i1 %tobool.not.3, label %for.inc.3, label %for.inc.2.cleanup_crit_edge

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 4, i32 4
  %call.i.i.4 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.4, i32 noundef 4) #9
  %10 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.4 = icmp eq i32 %11, 0
  br i1 %tobool.not.4, label %for.inc.4, label %for.inc.3.cleanup_crit_edge

for.inc.3.cleanup_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.5 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 4, i32 5
  %call.i.i.5 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.5, i32 noundef 4) #9
  %12 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.5 = icmp eq i32 %13, 0
  br i1 %tobool.not.5, label %for.inc.5, label %for.inc.4.cleanup_crit_edge

for.inc.4.cleanup_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx.6 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 4, i32 6
  %call.i.i.6 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.6, i32 noundef 4) #9
  %14 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %arrayidx.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.6 = icmp eq i32 %15, 0
  br i1 %tobool.not.6, label %for.inc.6, label %for.inc.5.cleanup_crit_edge

for.inc.5.cleanup_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx.7 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 4, i32 7
  %call.i.i.7 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.7, i32 noundef 4) #9
  %16 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %arrayidx.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.7 = icmp eq i32 %17, 0
  br i1 %tobool.not.7, label %for.inc.7, label %for.inc.6.cleanup_crit_edge

for.inc.6.cleanup_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.7:                                        ; preds = %for.inc.6
  %arrayidx.8 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 4, i32 8
  %call.i.i.8 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.8, i32 noundef 4) #9
  %18 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %arrayidx.8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.8 = icmp eq i32 %19, 0
  br i1 %tobool.not.8, label %for.inc.8, label %for.inc.7.cleanup_crit_edge

for.inc.7.cleanup_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.8:                                        ; preds = %for.inc.7
  %arrayidx.9 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 4, i32 9
  %call.i.i.9 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.9, i32 noundef 4) #9
  %20 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %arrayidx.9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.9 = icmp eq i32 %21, 0
  br i1 %tobool.not.9, label %for.inc.9, label %for.inc.8.cleanup_crit_edge

for.inc.8.cleanup_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.9:                                        ; preds = %for.inc.8
  %arrayidx.10 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 4, i32 10
  %call.i.i.10 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.10, i32 noundef 4) #9
  %22 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.10 = icmp eq i32 %23, 0
  br i1 %tobool.not.10, label %for.inc.10, label %for.inc.9.cleanup_crit_edge

for.inc.9.cleanup_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.10:                                       ; preds = %for.inc.9
  %arrayidx.11 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 4, i32 11
  %call.i.i.11 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.11, i32 noundef 4) #9
  %24 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %arrayidx.11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.11 = icmp eq i32 %25, 0
  br i1 %tobool.not.11, label %for.inc.11, label %for.inc.10.cleanup_crit_edge

for.inc.10.cleanup_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.11:                                       ; preds = %for.inc.10
  %arrayidx.12 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 4, i32 12
  %call.i.i.12 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.12, i32 noundef 4) #9
  %26 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %arrayidx.12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.12 = icmp eq i32 %27, 0
  br i1 %tobool.not.12, label %for.inc.12, label %for.inc.11.cleanup_crit_edge

for.inc.11.cleanup_crit_edge:                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.12:                                       ; preds = %for.inc.11
  %arrayidx.13 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 4, i32 13
  %call.i.i.13 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.13, i32 noundef 4) #9
  %28 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %arrayidx.13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.13 = icmp eq i32 %29, 0
  br i1 %tobool.not.13, label %for.inc.13, label %for.inc.12.cleanup_crit_edge

for.inc.12.cleanup_crit_edge:                     ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.13:                                       ; preds = %for.inc.12
  %arrayidx.14 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 4, i32 14
  %call.i.i.14 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.14, i32 noundef 4) #9
  %30 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %arrayidx.14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.14 = icmp eq i32 %31, 0
  br i1 %tobool.not.14, label %for.inc.14, label %for.inc.13.cleanup_crit_edge

for.inc.13.cleanup_crit_edge:                     ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.14:                                       ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.15 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 4, i32 15
  %call.i.i.15 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.15, i32 noundef 4) #9
  %32 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %arrayidx.15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.15 = icmp eq i32 %33, 0
  %spec.select = select i1 %tobool.not.15, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %for.inc.14, %for.inc.13.cleanup_crit_edge, %for.inc.12.cleanup_crit_edge, %for.inc.11.cleanup_crit_edge, %for.inc.10.cleanup_crit_edge, %for.inc.9.cleanup_crit_edge, %for.inc.8.cleanup_crit_edge, %for.inc.7.cleanup_crit_edge, %for.inc.6.cleanup_crit_edge, %for.inc.5.cleanup_crit_edge, %for.inc.4.cleanup_crit_edge, %for.inc.3.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %for.inc.13.cleanup_crit_edge ], [ -22, %for.inc.12.cleanup_crit_edge ], [ -22, %for.inc.11.cleanup_crit_edge ], [ -22, %for.inc.10.cleanup_crit_edge ], [ -22, %for.inc.9.cleanup_crit_edge ], [ -22, %for.inc.8.cleanup_crit_edge ], [ -22, %for.inc.7.cleanup_crit_edge ], [ -22, %for.inc.6.cleanup_crit_edge ], [ -22, %for.inc.5.cleanup_crit_edge ], [ -22, %for.inc.4.cleanup_crit_edge ], [ -22, %for.inc.3.cleanup_crit_edge ], [ -22, %for.inc.2.cleanup_crit_edge ], [ -22, %for.inc.1.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ], [ -22, %for.body.preheader.cleanup_crit_edge ], [ %spec.select, %for.inc.14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_vce_resume(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  %cpu_addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cpu_addr) #9
  %0 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %cpu_addr, align 4, !annotation !126
  %vce = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 60
  %1 = ptrtoint ptr %vce to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vce, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %resv32.i.i = getelementptr inbounds %struct.radeon_bo, ptr %2, i32 0, i32 4, i32 0, i32 9
  %3 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %4, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %retval.1.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %5 = zext i32 %retval.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %retval.1.i.i, label %do.end.i [
    i32 0, label %if.end4
    i32 -512, label %if.end.do.end_crit_edge
  ], !prof !128

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %rdev.i = getelementptr inbounds %struct.radeon_bo, ptr %2, i32 0, i32 13
  %6 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rdev.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.52, ptr noundef nonnull %2) #12
  br label %do.end

do.end:                                           ; preds = %do.end.i, %if.end.do.end_crit_edge
  %10 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.21, i32 noundef %retval.1.i.i) #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %12 = ptrtoint ptr %vce to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vce, align 8
  %call7 = call i32 @radeon_bo_kmap(ptr noundef %13, ptr noundef nonnull %cpu_addr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end16, label %if.then9

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %vce to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vce, align 8
  %tbo.i = getelementptr inbounds %struct.radeon_bo, ptr %15, i32 0, i32 4
  %bdev.i.i.i = getelementptr inbounds %struct.radeon_bo, ptr %15, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %17, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #9
  %resource.i.i.i = getelementptr inbounds %struct.radeon_bo, ptr %15, i32 0, i32 4, i32 6
  %18 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %resource.i.i.i, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i, ptr noundef %19, ptr noundef null) #9
  %20 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %21, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #9
  %resv.i.i = getelementptr inbounds %struct.radeon_bo, ptr %15, i32 0, i32 4, i32 0, i32 9
  %22 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %resv.i.i, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %23) #9
  call void @ww_mutex_unlock(ptr noundef %23) #9
  %24 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rdev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.28, i32 noundef %call7) #12
  br label %cleanup

if.end16:                                         ; preds = %if.end4
  %26 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cpu_addr, align 4
  %28 = ptrtoint ptr %vce to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vce, align 8
  %size.i = getelementptr inbounds %struct.radeon_bo, ptr %29, i32 0, i32 4, i32 0, i32 5
  %30 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size.i, align 8
  %32 = call ptr @memset(ptr %27, i32 0, i32 %31)
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %33 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 57, i32 %34)
  %cmp20 = icmp ult i32 %34, 57
  %35 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cpu_addr, align 4
  br i1 %cmp20, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %call22 = call i32 @vce_v1_0_load_fw(ptr noundef %rdev, ptr noundef %36) #9
  br label %if.end24

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %vce_fw = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 81
  %37 = ptrtoint ptr %vce_fw to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vce_fw, align 8
  %data = getelementptr inbounds %struct.firmware, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data, align 4
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %38, align 4
  %43 = call ptr @memcpy(ptr %36, ptr %40, i32 %42)
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then21
  %r.0 = phi i32 [ %call22, %if.then21 ], [ 0, %if.else ]
  %44 = ptrtoint ptr %vce to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %vce, align 8
  call void @radeon_bo_kunmap(ptr noundef %45) #9
  %46 = ptrtoint ptr %vce to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %vce, align 8
  %tbo.i48 = getelementptr inbounds %struct.radeon_bo, ptr %47, i32 0, i32 4
  %bdev.i.i.i49 = getelementptr inbounds %struct.radeon_bo, ptr %47, i32 0, i32 4, i32 1
  %48 = ptrtoint ptr %bdev.i.i.i49 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bdev.i.i.i49, align 8
  %lru_lock.i.i.i50 = getelementptr inbounds %struct.ttm_device, ptr %49, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i50) #9
  %resource.i.i.i51 = getelementptr inbounds %struct.radeon_bo, ptr %47, i32 0, i32 4, i32 6
  %50 = ptrtoint ptr %resource.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %resource.i.i.i51, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i48, ptr noundef %51, ptr noundef null) #9
  %52 = ptrtoint ptr %bdev.i.i.i49 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bdev.i.i.i49, align 8
  %lru_lock2.i.i.i52 = getelementptr inbounds %struct.ttm_device, ptr %53, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i52) #9
  %resv.i.i53 = getelementptr inbounds %struct.radeon_bo, ptr %47, i32 0, i32 4, i32 0, i32 9
  %54 = ptrtoint ptr %resv.i.i53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %resv.i.i53, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %55) #9
  call void @ww_mutex_unlock(ptr noundef %55) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then9, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.1.i.i, %do.end ], [ %call7, %if.then9 ], [ %r.0, %if.end24 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cpu_addr) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_bo_kmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vce_v1_0_load_fw(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_bo_kunmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_vce_note_usage(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %idle_work = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 7
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %idle_work) #9
  %lnot = xor i1 %call, true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %idle_work, i32 noundef 100) #9
  %and40 = and i1 %call.i.i, %lnot
  br i1 %and40, label %if.then16, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then16:                                        ; preds = %entry
  %pm_method = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 34
  %1 = ptrtoint ptr %pm_method to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pm_method, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp19 = icmp eq i32 %2, 2
  br i1 %cmp19, label %land.lhs.true21, label %if.then16.if.else_crit_edge

if.then16.if.else_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true21:                                  ; preds = %if.then16
  %dpm_enabled23 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 50
  %3 = ptrtoint ptr %dpm_enabled23 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dpm_enabled23, align 8, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool24.not = icmp eq i8 %4, 0
  br i1 %tobool24.not, label %land.lhs.true21.if.else_crit_edge, label %if.then26

land.lhs.true21.if.else_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then26:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @radeon_dpm_enable_vce(ptr noundef %rdev, i1 noundef zeroext true) #9
  br label %if.end30

if.else:                                          ; preds = %land.lhs.true21.if.else_crit_edge, %if.then16.if.else_crit_edge
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %5 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %asic, align 8
  %set_vce_clocks = getelementptr inbounds %struct.radeon_asic, ptr %6, i32 0, i32 20, i32 13
  %7 = ptrtoint ptr %set_vce_clocks to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_vce_clocks, align 4
  %call28 = tail call i32 %8(ptr noundef %rdev, i32 noundef 53300, i32 noundef 40000) #9
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then26, %entry.if.end30_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_dpm_enable_vce(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_vce_free_handles(ptr noundef %rdev, ptr noundef readnone %filp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %idle_work.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 7
  %pm_method.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 34
  %dpm_enabled23.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 50
  %asic.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.028 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 4, i32 %i.028
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #9
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %lor.lhs.false

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body
  %arrayidx3 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 5, i32 %i.028
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx3, align 4
  %cmp4.not = icmp eq ptr %3, %filp
  br i1 %cmp4.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %idle_work.i) #9
  %lnot.i = xor i1 %call.i, true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %idle_work.i, i32 noundef 100) #9
  %and40.i = and i1 %call.i.i.i, %lnot.i
  br i1 %and40.i, label %if.then16.i, label %if.end.radeon_vce_note_usage.exit_crit_edge

if.end.radeon_vce_note_usage.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %radeon_vce_note_usage.exit

if.then16.i:                                      ; preds = %if.end
  %5 = ptrtoint ptr %pm_method.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pm_method.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp19.i = icmp eq i32 %6, 2
  br i1 %cmp19.i, label %land.lhs.true21.i, label %if.then16.i.if.else.i_crit_edge

if.then16.i.if.else.i_crit_edge:                  ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true21.i:                                ; preds = %if.then16.i
  %7 = ptrtoint ptr %dpm_enabled23.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dpm_enabled23.i, align 8, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool24.not.i = icmp eq i8 %8, 0
  br i1 %tobool24.not.i, label %land.lhs.true21.i.if.else.i_crit_edge, label %if.then26.i

land.lhs.true21.i.if.else.i_crit_edge:            ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then26.i:                                      ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @radeon_dpm_enable_vce(ptr noundef %rdev, i1 noundef zeroext true) #9
  br label %radeon_vce_note_usage.exit

if.else.i:                                        ; preds = %land.lhs.true21.i.if.else.i_crit_edge, %if.then16.i.if.else.i_crit_edge
  %9 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %asic.i, align 8
  %set_vce_clocks.i = getelementptr inbounds %struct.radeon_asic, ptr %10, i32 0, i32 20, i32 13
  %11 = ptrtoint ptr %set_vce_clocks.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_vce_clocks.i, align 4
  %call28.i = tail call i32 %12(ptr noundef %rdev, i32 noundef 53300, i32 noundef 40000) #9
  br label %radeon_vce_note_usage.exit

radeon_vce_note_usage.exit:                       ; preds = %if.else.i, %if.then26.i, %if.end.radeon_vce_note_usage.exit_crit_edge
  %call5 = tail call i32 @radeon_vce_get_destroy_msg(ptr noundef %rdev, i32 noundef 6, i32 noundef %1, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %radeon_vce_note_usage.exit.if.end8_crit_edge, label %if.then7

radeon_vce_note_usage.exit.if.end8_crit_edge:     ; preds = %radeon_vce_note_usage.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then7:                                         ; preds = %radeon_vce_note_usage.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.30, i32 noundef %call5) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %radeon_vce_note_usage.exit.if.end8_crit_edge
  %13 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %arrayidx3, align 4
  %call.i.i27 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #9
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 0, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %lor.lhs.false.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_vce_get_destroy_msg(ptr noundef %rdev, i32 noundef %ring, i32 noundef %handle, ptr noundef writeonly %fence) local_unnamed_addr #0 align 64 {
entry:
  %ib = alloca %struct.radeon_ib, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %ib) #9
  %0 = call ptr @memset(ptr %ib, i32 255, i32 88)
  %call = call i32 @radeon_ib_get(ptr noundef %rdev, i32 noundef %ring, ptr noundef nonnull %ib, ptr noundef null, i32 noundef 4096) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.31, i32 noundef %call) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %gpu_addr = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 2
  %1 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %gpu_addr, align 8
  %add = add i64 %2, 1024
  %length_dw = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 1
  %ptr = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 3
  %3 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ptr, align 8
  %5 = ptrtoint ptr %length_dw to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %length_dw, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 201326592, ptr %4, align 4
  %7 = load ptr, ptr %ptr, align 8
  %8 = load i32, ptr %length_dw, align 4
  %inc4 = add i32 %8, 1
  store i32 %inc4, ptr %length_dw, align 4
  %arrayidx5 = getelementptr i32, ptr %7, i32 %8
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 16777216, ptr %arrayidx5, align 4
  %10 = call i32 @llvm.bswap.i32(i32 %handle)
  %11 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ptr, align 8
  %13 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length_dw, align 4
  %inc8 = add i32 %14, 1
  store i32 %inc8, ptr %length_dw, align 4
  %arrayidx9 = getelementptr i32, ptr %12, i32 %14
  %15 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %10, ptr %arrayidx9, align 4
  %16 = load ptr, ptr %ptr, align 8
  %17 = load i32, ptr %length_dw, align 4
  %inc12 = add i32 %17, 1
  store i32 %inc12, ptr %length_dw, align 4
  %arrayidx13 = getelementptr i32, ptr %16, i32 %17
  %18 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 335544320, ptr %arrayidx13, align 4
  %19 = load ptr, ptr %ptr, align 8
  %20 = load i32, ptr %length_dw, align 4
  %inc16 = add i32 %20, 1
  store i32 %inc16, ptr %length_dw, align 4
  %arrayidx17 = getelementptr i32, ptr %19, i32 %20
  %21 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 83886085, ptr %arrayidx17, align 4
  %shr = lshr i64 %add, 32
  %conv = trunc i64 %shr to i32
  %22 = call i32 @llvm.bswap.i32(i32 %conv)
  %23 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ptr, align 8
  %25 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %length_dw, align 4
  %inc21 = add i32 %26, 1
  store i32 %inc21, ptr %length_dw, align 4
  %arrayidx22 = getelementptr i32, ptr %24, i32 %26
  %27 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %22, ptr %arrayidx22, align 4
  %conv23 = trunc i64 %add to i32
  %28 = call i32 @llvm.bswap.i32(i32 %conv23)
  %29 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ptr, align 8
  %31 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %length_dw, align 4
  %inc26 = add i32 %32, 1
  store i32 %inc26, ptr %length_dw, align 4
  %arrayidx27 = getelementptr i32, ptr %30, i32 %32
  %33 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %28, ptr %arrayidx27, align 4
  %34 = load ptr, ptr %ptr, align 8
  %35 = load i32, ptr %length_dw, align 4
  %inc30 = add i32 %35, 1
  store i32 %inc30, ptr %length_dw, align 4
  %arrayidx31 = getelementptr i32, ptr %34, i32 %35
  %36 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 16777216, ptr %arrayidx31, align 4
  %37 = load ptr, ptr %ptr, align 8
  %38 = load i32, ptr %length_dw, align 4
  %inc34 = add i32 %38, 1
  store i32 %inc34, ptr %length_dw, align 4
  %arrayidx35 = getelementptr i32, ptr %37, i32 %38
  %39 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 134217728, ptr %arrayidx35, align 4
  %40 = load ptr, ptr %ptr, align 8
  %41 = load i32, ptr %length_dw, align 4
  %inc38 = add i32 %41, 1
  store i32 %inc38, ptr %length_dw, align 4
  %arrayidx39 = getelementptr i32, ptr %40, i32 %41
  %42 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 16777218, ptr %arrayidx39, align 4
  %43 = load i32, ptr %length_dw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %43)
  %cmp69 = icmp ult i32 %43, 1024
  br i1 %cmp69, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.070 = phi i32 [ %inc44, %for.body.for.body_crit_edge ], [ %43, %if.end.for.body_crit_edge ]
  %44 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ptr, align 8
  %arrayidx43 = getelementptr i32, ptr %45, i32 %i.070
  %46 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %arrayidx43, align 4
  %inc44 = add i32 %i.070, 1
  %exitcond.not = icmp eq i32 %inc44, 1024
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %call45 = call i32 @radeon_ib_schedule(ptr noundef %rdev, ptr noundef nonnull %ib, ptr noundef null, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %for.end.if.end48_crit_edge, label %if.then47

for.end.if.end48_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then47:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.32, i32 noundef %call45) #9
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %for.end.if.end48_crit_edge
  %tobool49.not = icmp eq ptr %fence, null
  br i1 %tobool49.not, label %if.end48.if.end53_crit_edge, label %if.then50

if.end48.if.end53_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %fence51 = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 5
  %47 = ptrtoint ptr %fence51 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fence51, align 8
  %call52 = call ptr @radeon_fence_ref(ptr noundef %48) #9
  %49 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call52, ptr %fence, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.end48.if.end53_crit_edge
  call void @radeon_ib_free(ptr noundef %rdev, ptr noundef nonnull %ib) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call45, %if.end53 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %ib) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_vce_get_create_msg(ptr noundef %rdev, i32 noundef %ring, i32 noundef %handle, ptr noundef writeonly %fence) local_unnamed_addr #0 align 64 {
entry:
  %ib = alloca %struct.radeon_ib, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %ib) #9
  %0 = call ptr @memset(ptr %ib, i32 255, i32 88)
  %call = call i32 @radeon_ib_get(ptr noundef %rdev, i32 noundef %ring, ptr noundef nonnull %ib, ptr noundef null, i32 noundef 4096) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.31, i32 noundef %call) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %gpu_addr = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 2
  %1 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %gpu_addr, align 8
  %add = add i64 %2, 1024
  %length_dw = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 1
  %ptr = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 3
  %3 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ptr, align 8
  %5 = ptrtoint ptr %length_dw to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %length_dw, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 201326592, ptr %4, align 4
  %7 = load ptr, ptr %ptr, align 8
  %8 = load i32, ptr %length_dw, align 4
  %inc4 = add i32 %8, 1
  store i32 %inc4, ptr %length_dw, align 4
  %arrayidx5 = getelementptr i32, ptr %7, i32 %8
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 16777216, ptr %arrayidx5, align 4
  %10 = call i32 @llvm.bswap.i32(i32 %handle)
  %11 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ptr, align 8
  %13 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length_dw, align 4
  %inc8 = add i32 %14, 1
  store i32 %inc8, ptr %length_dw, align 4
  %arrayidx9 = getelementptr i32, ptr %12, i32 %14
  %15 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %10, ptr %arrayidx9, align 4
  %16 = load ptr, ptr %ptr, align 8
  %17 = load i32, ptr %length_dw, align 4
  %inc12 = add i32 %17, 1
  store i32 %inc12, ptr %length_dw, align 4
  %arrayidx13 = getelementptr i32, ptr %16, i32 %17
  %18 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 805306368, ptr %arrayidx13, align 4
  %19 = load ptr, ptr %ptr, align 8
  %20 = load i32, ptr %length_dw, align 4
  %inc16 = add i32 %20, 1
  store i32 %inc16, ptr %length_dw, align 4
  %arrayidx17 = getelementptr i32, ptr %19, i32 %20
  %21 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 16777217, ptr %arrayidx17, align 4
  %22 = load ptr, ptr %ptr, align 8
  %23 = load i32, ptr %length_dw, align 4
  %inc20 = add i32 %23, 1
  store i32 %inc20, ptr %length_dw, align 4
  %arrayidx21 = getelementptr i32, ptr %22, i32 %23
  %24 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %arrayidx21, align 4
  %25 = load ptr, ptr %ptr, align 8
  %26 = load i32, ptr %length_dw, align 4
  %inc24 = add i32 %26, 1
  store i32 %inc24, ptr %length_dw, align 4
  %arrayidx25 = getelementptr i32, ptr %25, i32 %26
  %27 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1107296256, ptr %arrayidx25, align 4
  %28 = load ptr, ptr %ptr, align 8
  %29 = load i32, ptr %length_dw, align 4
  %inc28 = add i32 %29, 1
  store i32 %inc28, ptr %length_dw, align 4
  %arrayidx29 = getelementptr i32, ptr %28, i32 %29
  %30 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 167772160, ptr %arrayidx29, align 4
  %31 = load ptr, ptr %ptr, align 8
  %32 = load i32, ptr %length_dw, align 4
  %inc32 = add i32 %32, 1
  store i32 %inc32, ptr %length_dw, align 4
  %arrayidx33 = getelementptr i32, ptr %31, i32 %32
  %33 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 16777216, ptr %arrayidx33, align 4
  %34 = load ptr, ptr %ptr, align 8
  %35 = load i32, ptr %length_dw, align 4
  %inc36 = add i32 %35, 1
  store i32 %inc36, ptr %length_dw, align 4
  %arrayidx37 = getelementptr i32, ptr %34, i32 %35
  %36 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -2147483648, ptr %arrayidx37, align 4
  %37 = load ptr, ptr %ptr, align 8
  %38 = load i32, ptr %length_dw, align 4
  %inc40 = add i32 %38, 1
  store i32 %inc40, ptr %length_dw, align 4
  %arrayidx41 = getelementptr i32, ptr %37, i32 %38
  %39 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1610612736, ptr %arrayidx41, align 4
  %40 = load ptr, ptr %ptr, align 8
  %41 = load i32, ptr %length_dw, align 4
  %inc44 = add i32 %41, 1
  store i32 %inc44, ptr %length_dw, align 4
  %arrayidx45 = getelementptr i32, ptr %40, i32 %41
  %42 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 65536, ptr %arrayidx45, align 4
  %43 = load ptr, ptr %ptr, align 8
  %44 = load i32, ptr %length_dw, align 4
  %inc48 = add i32 %44, 1
  store i32 %inc48, ptr %length_dw, align 4
  %arrayidx49 = getelementptr i32, ptr %43, i32 %44
  %45 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 65536, ptr %arrayidx49, align 4
  %46 = load ptr, ptr %ptr, align 8
  %47 = load i32, ptr %length_dw, align 4
  %inc52 = add i32 %47, 1
  store i32 %inc52, ptr %length_dw, align 4
  %arrayidx53 = getelementptr i32, ptr %46, i32 %47
  %48 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 201326592, ptr %arrayidx53, align 4
  %49 = load ptr, ptr %ptr, align 8
  %50 = load i32, ptr %length_dw, align 4
  %inc56 = add i32 %50, 1
  store i32 %inc56, ptr %length_dw, align 4
  %arrayidx57 = getelementptr i32, ptr %49, i32 %50
  %51 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %arrayidx57, align 4
  %52 = load ptr, ptr %ptr, align 8
  %53 = load i32, ptr %length_dw, align 4
  %inc60 = add i32 %53, 1
  store i32 %inc60, ptr %length_dw, align 4
  %arrayidx61 = getelementptr i32, ptr %52, i32 %53
  %54 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 335544320, ptr %arrayidx61, align 4
  %55 = load ptr, ptr %ptr, align 8
  %56 = load i32, ptr %length_dw, align 4
  %inc64 = add i32 %56, 1
  store i32 %inc64, ptr %length_dw, align 4
  %arrayidx65 = getelementptr i32, ptr %55, i32 %56
  %57 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 83886085, ptr %arrayidx65, align 4
  %shr = lshr i64 %add, 32
  %conv = trunc i64 %shr to i32
  %58 = call i32 @llvm.bswap.i32(i32 %conv)
  %59 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ptr, align 8
  %61 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %length_dw, align 4
  %inc69 = add i32 %62, 1
  store i32 %inc69, ptr %length_dw, align 4
  %arrayidx70 = getelementptr i32, ptr %60, i32 %62
  %63 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %58, ptr %arrayidx70, align 4
  %conv71 = trunc i64 %add to i32
  %64 = call i32 @llvm.bswap.i32(i32 %conv71)
  %65 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ptr, align 8
  %67 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %length_dw, align 4
  %inc74 = add i32 %68, 1
  store i32 %inc74, ptr %length_dw, align 4
  %arrayidx75 = getelementptr i32, ptr %66, i32 %68
  %69 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %64, ptr %arrayidx75, align 4
  %70 = load ptr, ptr %ptr, align 8
  %71 = load i32, ptr %length_dw, align 4
  %inc78 = add i32 %71, 1
  store i32 %inc78, ptr %length_dw, align 4
  %arrayidx79 = getelementptr i32, ptr %70, i32 %71
  %72 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 16777216, ptr %arrayidx79, align 4
  %73 = load i32, ptr %length_dw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %73)
  %cmp109 = icmp ult i32 %73, 1024
  br i1 %cmp109, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0110 = phi i32 [ %inc84, %for.body.for.body_crit_edge ], [ %73, %if.end.for.body_crit_edge ]
  %74 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ptr, align 8
  %arrayidx83 = getelementptr i32, ptr %75, i32 %i.0110
  %76 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %arrayidx83, align 4
  %inc84 = add i32 %i.0110, 1
  %exitcond.not = icmp eq i32 %inc84, 1024
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %call85 = call i32 @radeon_ib_schedule(ptr noundef %rdev, ptr noundef nonnull %ib, ptr noundef null, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %for.end.if.end88_crit_edge, label %if.then87

for.end.if.end88_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

if.then87:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.32, i32 noundef %call85) #9
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %for.end.if.end88_crit_edge
  %tobool89.not = icmp eq ptr %fence, null
  br i1 %tobool89.not, label %if.end88.if.end93_crit_edge, label %if.then90

if.end88.if.end93_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

if.then90:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  %fence91 = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 5
  %77 = ptrtoint ptr %fence91 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %fence91, align 8
  %call92 = call ptr @radeon_fence_ref(ptr noundef %78) #9
  %79 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call92, ptr %fence, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then90, %if.end88.if.end93_crit_edge
  call void @radeon_ib_free(ptr noundef %rdev, ptr noundef nonnull %ib) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end93, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call85, %if.end93 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %ib) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_ib_get(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_ib_schedule(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radeon_fence_ref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ib_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_vce_cs_reloc(ptr nocapture noundef readonly %p, i32 noundef %lo, i32 noundef %hi, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chunk_relocs = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 13
  %0 = ptrtoint ptr %chunk_relocs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chunk_relocs, align 8
  %chunk_ib.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %2 = ptrtoint ptr %chunk_ib.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chunk_ib.i, align 4
  %kdata.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %kdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kdata.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i55, label %entry.radeon_get_ib_value.exit59_crit_edge

entry.radeon_get_ib_value.exit59_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %radeon_get_ib_value.exit59

if.end.i55:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ptr.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 16, i32 3
  %6 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ptr.i, align 8
  br label %radeon_get_ib_value.exit59

radeon_get_ib_value.exit59:                       ; preds = %if.end.i55, %entry.radeon_get_ib_value.exit59_crit_edge
  %.pn = phi ptr [ %7, %if.end.i55 ], [ %5, %entry.radeon_get_ib_value.exit59_crit_edge ]
  %conv64.in.in = getelementptr i32, ptr %.pn, i32 %lo
  %8 = ptrtoint ptr %conv64.in.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %conv64.in = load i32, ptr %conv64.in.in, align 4
  %conv64 = zext i32 %conv64.in to i64
  %retval.0.in.i57 = getelementptr i32, ptr %.pn, i32 %hi
  %9 = ptrtoint ptr %retval.0.in.i57 to i32
  call void @__asan_load4_noabort(i32 %9)
  %retval.0.i58 = load i32, ptr %retval.0.in.i57, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i58, i32 %11)
  %cmp.not = icmp ult i32 %retval.0.i58, %11
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %radeon_get_ib_value.exit59
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33, i32 noundef %retval.0.i58, i32 noundef %11) #9
  br label %cleanup

if.end:                                           ; preds = %radeon_get_ib_value.exit59
  %relocs = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 8
  %12 = ptrtoint ptr %relocs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %relocs, align 8
  %div50 = lshr i32 %retval.0.i58, 2
  %arrayidx = getelementptr %struct.radeon_bo_list, ptr %13, i32 %div50
  %gpu_offset = getelementptr %struct.radeon_bo_list, ptr %13, i32 %div50, i32 2
  %14 = ptrtoint ptr %gpu_offset to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %gpu_offset, align 8
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 8
  %size.i = getelementptr inbounds %struct.radeon_bo, ptr %17, i32 0, i32 4, i32 0, i32 5
  %18 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size.i, align 8
  %conv5 = zext i32 %19 to i64
  %add = add i64 %15, %conv5
  %add6 = add i64 %15, %conv64
  %conv7 = trunc i64 %add6 to i32
  %ptr = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 16, i32 3
  %20 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ptr, align 8
  %arrayidx8 = getelementptr i32, ptr %21, i32 %lo
  %22 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv7, ptr %arrayidx8, align 4
  %shr = lshr i64 %add6, 32
  %conv9 = trunc i64 %shr to i32
  %23 = load ptr, ptr %ptr, align 8
  %arrayidx12 = getelementptr i32, ptr %23, i32 %hi
  %24 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv9, ptr %arrayidx12, align 4
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %add6)
  %cmp13.not = icmp ugt i64 %add, %add6
  br i1 %cmp13.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34, i64 noundef %conv64) #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %sub = sub i64 %add, %add6
  %conv17 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv17)
  %cmp18 = icmp ult i64 %sub, %conv17
  br i1 %cmp18, label %if.then20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %conv22 = trunc i64 %sub to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35, i32 noundef %conv22, i32 noundef %size) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.end16.cleanup_crit_edge, %if.then15, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then15 ], [ -22, %if.then20 ], [ 0, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_vce_cs_parse(ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp)
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4
  %idx = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 6
  %chunk_ib = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %1 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %idx, align 8
  %3 = ptrtoint ptr %chunk_ib to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chunk_ib, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %6)
  %cmp388 = icmp ult i32 %2, %6
  br i1 %cmp388, label %while.body.lr.ph, label %entry.cleanup103_crit_edge

entry.cleanup103_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup103

while.body.lr.ph:                                 ; preds = %entry
  %ptr.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 16, i32 3
  %rdev.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 1
  %filp18.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %7 = phi ptr [ %4, %while.body.lr.ph ], [ %121, %cleanup.while.body_crit_edge ]
  %8 = phi i32 [ %2, %while.body.lr.ph ], [ %add83, %cleanup.while.body_crit_edge ]
  %size.0394 = phi ptr [ %tmp, %while.body.lr.ph ], [ %size.1290, %cleanup.while.body_crit_edge ]
  %handle.0393 = phi i32 [ 0, %while.body.lr.ph ], [ %handle.1289, %cleanup.while.body_crit_edge ]
  %created.0.off0392 = phi i1 [ false, %while.body.lr.ph ], [ %created.1.off0288, %cleanup.while.body_crit_edge ]
  %destroyed.0.off0391 = phi i1 [ false, %while.body.lr.ph ], [ %destroyed.1.off0287, %cleanup.while.body_crit_edge ]
  %session_idx.0390 = phi i32 [ -1, %while.body.lr.ph ], [ %session_idx.1286, %cleanup.while.body_crit_edge ]
  %allocated.0389 = phi i8 [ 0, %while.body.lr.ph ], [ %allocated.2285, %cleanup.while.body_crit_edge ]
  %kdata.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %kdata.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %kdata.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i213, label %while.body.radeon_get_ib_value.exit217_crit_edge

while.body.radeon_get_ib_value.exit217_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %radeon_get_ib_value.exit217

if.end.i213:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ptr.i, align 8
  br label %radeon_get_ib_value.exit217

radeon_get_ib_value.exit217:                      ; preds = %if.end.i213, %while.body.radeon_get_ib_value.exit217_crit_edge
  %.pn = phi ptr [ %12, %if.end.i213 ], [ %10, %while.body.radeon_get_ib_value.exit217_crit_edge ]
  %retval.0.i262.in = getelementptr i32, ptr %.pn, i32 %8
  %13 = ptrtoint ptr %retval.0.i262.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %retval.0.i262 = load i32, ptr %retval.0.i262.in, align 4
  %add264 = add nuw i32 %8, 1
  %retval.0.in.i215 = getelementptr i32, ptr %.pn, i32 %add264
  %14 = ptrtoint ptr %retval.0.in.i215 to i32
  call void @__asan_load4_noabort(i32 %14)
  %retval.0.i216 = load i32, ptr %retval.0.in.i215, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %retval.0.i262)
  %cmp4 = icmp ugt i32 %retval.0.i262, 7
  %and = and i32 %retval.0.i262, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = and i1 %cmp4, %tobool.not
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %radeon_get_ib_value.exit217
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.36, i32 noundef %retval.0.i262) #9
  br label %land.lhs.true94

if.end:                                           ; preds = %radeon_get_ib_value.exit217
  br i1 %destroyed.0.off0391, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.37) #9
  br label %land.lhs.true94

if.end7:                                          ; preds = %if.end
  %15 = zext i32 %retval.0.i216 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %retval.0.i216, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %if.end7.sw.epilog_crit_edge
    i32 16777217, label %sw.bb15
    i32 67108865, label %if.end7.sw.epilog_crit_edge574
    i32 67108866, label %if.end7.sw.epilog_crit_edge575
    i32 67108869, label %if.end7.sw.epilog_crit_edge576
    i32 67108871, label %if.end7.sw.epilog_crit_edge577
    i32 67108872, label %if.end7.sw.epilog_crit_edge578
    i32 67108873, label %if.end7.sw.epilog_crit_edge579
    i32 50331649, label %sw.bb28
    i32 33554433, label %sw.bb46
    i32 83886081, label %sw.bb47
    i32 83886084, label %sw.bb57
    i32 83886085, label %sw.bb69
  ]

if.end7.sw.epilog_crit_edge579:                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end7.sw.epilog_crit_edge578:                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end7.sw.epilog_crit_edge577:                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end7.sw.epilog_crit_edge576:                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end7.sw.epilog_crit_edge575:                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end7.sw.epilog_crit_edge574:                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end7.sw.epilog_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end7
  %add9 = add i32 %8, 2
  br i1 %tobool.not.i, label %if.end.i222, label %sw.bb.radeon_get_ib_value.exit226_crit_edge

sw.bb.radeon_get_ib_value.exit226_crit_edge:      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %radeon_get_ib_value.exit226

if.end.i222:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ptr.i, align 8
  br label %radeon_get_ib_value.exit226

radeon_get_ib_value.exit226:                      ; preds = %if.end.i222, %sw.bb.radeon_get_ib_value.exit226_crit_edge
  %.pn.i223 = phi ptr [ %17, %if.end.i222 ], [ %10, %sw.bb.radeon_get_ib_value.exit226_crit_edge ]
  %retval.0.in.i224 = getelementptr i32, ptr %.pn.i223, i32 %add9
  %18 = ptrtoint ptr %retval.0.in.i224 to i32
  call void @__asan_load4_noabort(i32 %18)
  %retval.0.i225 = load i32, ptr %retval.0.in.i224, align 4
  %19 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rdev.i, align 4
  %arrayidx.i = getelementptr %struct.radeon_device, ptr %20, i32 0, i32 60, i32 4, i32 0
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i, i32 noundef 4) #9
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %retval.0.i225)
  %cmp1.i = icmp eq i32 %22, %retval.0.i225
  br i1 %cmp1.i, label %radeon_get_ib_value.exit226.if.then.i_crit_edge, label %for.inc.i

radeon_get_ib_value.exit226.if.then.i_crit_edge:  ; preds = %radeon_get_ib_value.exit226
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %for.inc.14.i.if.then.i_crit_edge, %for.inc.13.i.if.then.i_crit_edge, %for.inc.12.i.if.then.i_crit_edge, %for.inc.11.i.if.then.i_crit_edge, %for.inc.10.i.if.then.i_crit_edge, %for.inc.9.i.if.then.i_crit_edge, %for.inc.8.i.if.then.i_crit_edge, %for.inc.7.i.if.then.i_crit_edge, %for.inc.6.i.if.then.i_crit_edge, %for.inc.5.i.if.then.i_crit_edge, %for.inc.4.i.if.then.i_crit_edge, %for.inc.3.i.if.then.i_crit_edge, %for.inc.2.i.if.then.i_crit_edge, %for.inc.1.i.if.then.i_crit_edge, %for.inc.i.if.then.i_crit_edge, %radeon_get_ib_value.exit226.if.then.i_crit_edge
  %i.051.lcssa.i = phi i32 [ 0, %radeon_get_ib_value.exit226.if.then.i_crit_edge ], [ 1, %for.inc.i.if.then.i_crit_edge ], [ 2, %for.inc.1.i.if.then.i_crit_edge ], [ 3, %for.inc.2.i.if.then.i_crit_edge ], [ 4, %for.inc.3.i.if.then.i_crit_edge ], [ 5, %for.inc.4.i.if.then.i_crit_edge ], [ 6, %for.inc.5.i.if.then.i_crit_edge ], [ 7, %for.inc.6.i.if.then.i_crit_edge ], [ 8, %for.inc.7.i.if.then.i_crit_edge ], [ 9, %for.inc.8.i.if.then.i_crit_edge ], [ 10, %for.inc.9.i.if.then.i_crit_edge ], [ 11, %for.inc.10.i.if.then.i_crit_edge ], [ 12, %for.inc.11.i.if.then.i_crit_edge ], [ 13, %for.inc.12.i.if.then.i_crit_edge ], [ 14, %for.inc.13.i.if.then.i_crit_edge ], [ 15, %for.inc.14.i.if.then.i_crit_edge ]
  %23 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rdev.i, align 4
  %arrayidx4.i = getelementptr %struct.radeon_device, ptr %24, i32 0, i32 60, i32 5, i32 %i.051.lcssa.i
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx4.i, align 4
  %27 = ptrtoint ptr %filp18.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %filp18.i, align 8
  %cmp6.not.i = icmp eq ptr %26, %28
  br i1 %cmp6.not.i, label %if.then.i.sw.epilog.thread_crit_edge, label %if.then.i.cleanup103.sink.split_crit_edge

if.then.i.cleanup103.sink.split_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup103.sink.split

if.then.i.sw.epilog.thread_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.thread

for.inc.i:                                        ; preds = %radeon_get_ib_value.exit226
  %29 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rdev.i, align 4
  %arrayidx.1.i = getelementptr %struct.radeon_device, ptr %30, i32 0, i32 60, i32 4, i32 1
  %call.i.i.1.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.1.i, i32 noundef 4) #9
  %31 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %retval.0.i225)
  %cmp1.1.i = icmp eq i32 %32, %retval.0.i225
  br i1 %cmp1.1.i, label %for.inc.i.if.then.i_crit_edge, label %for.inc.1.i

for.inc.i.if.then.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %33 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rdev.i, align 4
  %arrayidx.2.i = getelementptr %struct.radeon_device, ptr %34, i32 0, i32 60, i32 4, i32 2
  %call.i.i.2.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.2.i, i32 noundef 4) #9
  %35 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %retval.0.i225)
  %cmp1.2.i = icmp eq i32 %36, %retval.0.i225
  br i1 %cmp1.2.i, label %for.inc.1.i.if.then.i_crit_edge, label %for.inc.2.i

for.inc.1.i.if.then.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %37 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rdev.i, align 4
  %arrayidx.3.i = getelementptr %struct.radeon_device, ptr %38, i32 0, i32 60, i32 4, i32 3
  %call.i.i.3.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.3.i, i32 noundef 4) #9
  %39 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %arrayidx.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %retval.0.i225)
  %cmp1.3.i = icmp eq i32 %40, %retval.0.i225
  br i1 %cmp1.3.i, label %for.inc.2.i.if.then.i_crit_edge, label %for.inc.3.i

for.inc.2.i.if.then.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %41 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rdev.i, align 4
  %arrayidx.4.i = getelementptr %struct.radeon_device, ptr %42, i32 0, i32 60, i32 4, i32 4
  %call.i.i.4.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.4.i, i32 noundef 4) #9
  %43 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %arrayidx.4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %retval.0.i225)
  %cmp1.4.i = icmp eq i32 %44, %retval.0.i225
  br i1 %cmp1.4.i, label %for.inc.3.i.if.then.i_crit_edge, label %for.inc.4.i

for.inc.3.i.if.then.i_crit_edge:                  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %45 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rdev.i, align 4
  %arrayidx.5.i = getelementptr %struct.radeon_device, ptr %46, i32 0, i32 60, i32 4, i32 5
  %call.i.i.5.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.5.i, i32 noundef 4) #9
  %47 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %arrayidx.5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %retval.0.i225)
  %cmp1.5.i = icmp eq i32 %48, %retval.0.i225
  br i1 %cmp1.5.i, label %for.inc.4.i.if.then.i_crit_edge, label %for.inc.5.i

for.inc.4.i.if.then.i_crit_edge:                  ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %49 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rdev.i, align 4
  %arrayidx.6.i = getelementptr %struct.radeon_device, ptr %50, i32 0, i32 60, i32 4, i32 6
  %call.i.i.6.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.6.i, i32 noundef 4) #9
  %51 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %arrayidx.6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %retval.0.i225)
  %cmp1.6.i = icmp eq i32 %52, %retval.0.i225
  br i1 %cmp1.6.i, label %for.inc.5.i.if.then.i_crit_edge, label %for.inc.6.i

for.inc.5.i.if.then.i_crit_edge:                  ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %53 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rdev.i, align 4
  %arrayidx.7.i = getelementptr %struct.radeon_device, ptr %54, i32 0, i32 60, i32 4, i32 7
  %call.i.i.7.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.7.i, i32 noundef 4) #9
  %55 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %arrayidx.7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %retval.0.i225)
  %cmp1.7.i = icmp eq i32 %56, %retval.0.i225
  br i1 %cmp1.7.i, label %for.inc.6.i.if.then.i_crit_edge, label %for.inc.7.i

for.inc.6.i.if.then.i_crit_edge:                  ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %57 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rdev.i, align 4
  %arrayidx.8.i = getelementptr %struct.radeon_device, ptr %58, i32 0, i32 60, i32 4, i32 8
  %call.i.i.8.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.8.i, i32 noundef 4) #9
  %59 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %arrayidx.8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %retval.0.i225)
  %cmp1.8.i = icmp eq i32 %60, %retval.0.i225
  br i1 %cmp1.8.i, label %for.inc.7.i.if.then.i_crit_edge, label %for.inc.8.i

for.inc.7.i.if.then.i_crit_edge:                  ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

for.inc.8.i:                                      ; preds = %for.inc.7.i
  %61 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rdev.i, align 4
  %arrayidx.9.i = getelementptr %struct.radeon_device, ptr %62, i32 0, i32 60, i32 4, i32 9
  %call.i.i.9.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.9.i, i32 noundef 4) #9
  %63 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %arrayidx.9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %retval.0.i225)
  %cmp1.9.i = icmp eq i32 %64, %retval.0.i225
  br i1 %cmp1.9.i, label %for.inc.8.i.if.then.i_crit_edge, label %for.inc.9.i

for.inc.8.i.if.then.i_crit_edge:                  ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

for.inc.9.i:                                      ; preds = %for.inc.8.i
  %65 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rdev.i, align 4
  %arrayidx.10.i = getelementptr %struct.radeon_device, ptr %66, i32 0, i32 60, i32 4, i32 10
  %call.i.i.10.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.10.i, i32 noundef 4) #9
  %67 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %arrayidx.10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %retval.0.i225)
  %cmp1.10.i = icmp eq i32 %68, %retval.0.i225
  br i1 %cmp1.10.i, label %for.inc.9.i.if.then.i_crit_edge, label %for.inc.10.i

for.inc.9.i.if.then.i_crit_edge:                  ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

for.inc.10.i:                                     ; preds = %for.inc.9.i
  %69 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rdev.i, align 4
  %arrayidx.11.i = getelementptr %struct.radeon_device, ptr %70, i32 0, i32 60, i32 4, i32 11
  %call.i.i.11.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.11.i, i32 noundef 4) #9
  %71 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %arrayidx.11.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %retval.0.i225)
  %cmp1.11.i = icmp eq i32 %72, %retval.0.i225
  br i1 %cmp1.11.i, label %for.inc.10.i.if.then.i_crit_edge, label %for.inc.11.i

for.inc.10.i.if.then.i_crit_edge:                 ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

for.inc.11.i:                                     ; preds = %for.inc.10.i
  %73 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rdev.i, align 4
  %arrayidx.12.i = getelementptr %struct.radeon_device, ptr %74, i32 0, i32 60, i32 4, i32 12
  %call.i.i.12.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.12.i, i32 noundef 4) #9
  %75 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %arrayidx.12.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %retval.0.i225)
  %cmp1.12.i = icmp eq i32 %76, %retval.0.i225
  br i1 %cmp1.12.i, label %for.inc.11.i.if.then.i_crit_edge, label %for.inc.12.i

for.inc.11.i.if.then.i_crit_edge:                 ; preds = %for.inc.11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

for.inc.12.i:                                     ; preds = %for.inc.11.i
  %77 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rdev.i, align 4
  %arrayidx.13.i = getelementptr %struct.radeon_device, ptr %78, i32 0, i32 60, i32 4, i32 13
  %call.i.i.13.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.13.i, i32 noundef 4) #9
  %79 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %arrayidx.13.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %retval.0.i225)
  %cmp1.13.i = icmp eq i32 %80, %retval.0.i225
  br i1 %cmp1.13.i, label %for.inc.12.i.if.then.i_crit_edge, label %for.inc.13.i

for.inc.12.i.if.then.i_crit_edge:                 ; preds = %for.inc.12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

for.inc.13.i:                                     ; preds = %for.inc.12.i
  %81 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %rdev.i, align 4
  %arrayidx.14.i = getelementptr %struct.radeon_device, ptr %82, i32 0, i32 60, i32 4, i32 14
  %call.i.i.14.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.14.i, i32 noundef 4) #9
  %83 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %arrayidx.14.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %retval.0.i225)
  %cmp1.14.i = icmp eq i32 %84, %retval.0.i225
  br i1 %cmp1.14.i, label %for.inc.13.i.if.then.i_crit_edge, label %for.inc.14.i

for.inc.13.i.if.then.i_crit_edge:                 ; preds = %for.inc.13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

for.inc.14.i:                                     ; preds = %for.inc.13.i
  %85 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %rdev.i, align 4
  %arrayidx.15.i = getelementptr %struct.radeon_device, ptr %86, i32 0, i32 60, i32 4, i32 15
  %call.i.i.15.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.15.i, i32 noundef 4) #9
  %87 = ptrtoint ptr %arrayidx.15.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %arrayidx.15.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %retval.0.i225)
  %cmp1.15.i = icmp eq i32 %88, %retval.0.i225
  br i1 %cmp1.15.i, label %for.inc.14.i.if.then.i_crit_edge, label %for.inc.14.i.for.body11.i_crit_edge

for.inc.14.i.for.body11.i_crit_edge:              ; preds = %for.inc.14.i
  br label %for.body11.i

for.inc.14.i.if.then.i_crit_edge:                 ; preds = %for.inc.14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

for.body11.i:                                     ; preds = %for.inc27.i.for.body11.i_crit_edge, %for.inc.14.i.for.body11.i_crit_edge
  %i.152.i = phi i32 [ %inc28.i, %for.inc27.i.for.body11.i_crit_edge ], [ 0, %for.inc.14.i.for.body11.i_crit_edge ]
  %89 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %rdev.i, align 4
  %arrayidx15.i = getelementptr %struct.radeon_device, ptr %90, i32 0, i32 60, i32 4, i32 %i.152.i
  %call.i.i48.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx15.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !129
  tail call void @llvm.prefetch.p0(ptr %arrayidx15.i, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %for.body11.i
  %91 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx15.i, ptr %arrayidx15.i, i32 0, i32 %retval.0.i225, ptr elementtype(i32) %arrayidx15.i) #9, !srcloc !130
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %91, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %atomic_cmpxchg.exit.i, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i

atomic_cmpxchg.exit.i:                            ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %91, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !131
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i.i)
  %tobool.not.i227 = icmp eq i32 %asmresult3.i.i.i.i, 0
  br i1 %tobool.not.i227, label %if.then17.i, label %for.inc27.i

if.then17.i:                                      ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %filp18.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %filp18.i, align 8
  %94 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rdev.i, align 4
  %arrayidx22.i = getelementptr %struct.radeon_device, ptr %95, i32 0, i32 60, i32 5, i32 %i.152.i
  %96 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %93, ptr %arrayidx22.i, align 4
  %97 = load ptr, ptr %rdev.i, align 4
  %arrayidx25.i = getelementptr %struct.radeon_device, ptr %97, i32 0, i32 60, i32 6, i32 %i.152.i
  %98 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %arrayidx25.i, align 4
  br label %sw.epilog.thread

for.inc27.i:                                      ; preds = %atomic_cmpxchg.exit.i
  %inc28.i = add nuw nsw i32 %i.152.i, 1
  %exitcond.not.i = icmp eq i32 %inc28.i, 16
  br i1 %exitcond.not.i, label %for.inc27.i.cleanup103.sink.split_crit_edge, label %for.inc27.i.for.body11.i_crit_edge

for.inc27.i.for.body11.i_crit_edge:               ; preds = %for.inc27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body11.i

for.inc27.i.cleanup103.sink.split_crit_edge:      ; preds = %for.inc27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup103.sink.split

sw.epilog.thread:                                 ; preds = %if.then17.i, %if.then.i.sw.epilog.thread_crit_edge
  %allocated.1 = phi i8 [ 0, %if.then.i.sw.epilog.thread_crit_edge ], [ 1, %if.then17.i ]
  %retval.0.i228 = phi i32 [ %i.051.lcssa.i, %if.then.i.sw.epilog.thread_crit_edge ], [ %i.152.i, %if.then17.i ]
  %99 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %rdev.i, align 4
  %arrayidx = getelementptr %struct.radeon_device, ptr %100, i32 0, i32 60, i32 6, i32 %retval.0.i228
  br label %cleanup

sw.bb15:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %allocated.0389)
  %tobool16.not = icmp eq i8 %allocated.0389, 0
  br i1 %tobool16.not, label %sw.bb15.cleanup103.sink.split_crit_edge, label %if.end18

sw.bb15.cleanup103.sink.split_crit_edge:          ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup103.sink.split

if.end18:                                         ; preds = %sw.bb15
  %add20 = add i32 %8, 8
  br i1 %tobool.not.i, label %if.end.i242, label %if.end18.radeon_get_ib_value.exit246_crit_edge

if.end18.radeon_get_ib_value.exit246_crit_edge:   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %radeon_get_ib_value.exit246

if.end.i242:                                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %101 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ptr.i, align 8
  br label %radeon_get_ib_value.exit246

radeon_get_ib_value.exit246:                      ; preds = %if.end.i242, %if.end18.radeon_get_ib_value.exit246_crit_edge
  %.pn337 = phi ptr [ %102, %if.end.i242 ], [ %10, %if.end18.radeon_get_ib_value.exit246_crit_edge ]
  %retval.0.i236273.in = getelementptr i32, ptr %.pn337, i32 %add20
  %103 = ptrtoint ptr %retval.0.i236273.in to i32
  call void @__asan_load4_noabort(i32 %103)
  %retval.0.i236273 = load i32, ptr %retval.0.i236273.in, align 4
  %add23275 = add i32 %8, 10
  %retval.0.in.i244 = getelementptr i32, ptr %.pn337, i32 %add23275
  %104 = ptrtoint ptr %retval.0.in.i244 to i32
  call void @__asan_load4_noabort(i32 %104)
  %retval.0.i245 = load i32, ptr %retval.0.in.i244, align 4
  %mul = mul i32 %retval.0.i236273, 24
  %mul26 = mul i32 %mul, %retval.0.i245
  %div207 = lshr exact i32 %mul26, 1
  %105 = ptrtoint ptr %size.0394 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %div207, ptr %size.0394, align 4
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end7
  %add30 = add i32 %8, 10
  %add32 = add i32 %8, 9
  %106 = ptrtoint ptr %size.0394 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %size.0394, align 4
  %call33 = tail call i32 @radeon_vce_cs_reloc(ptr noundef %p, i32 noundef %add30, i32 noundef %add32, i32 noundef %107)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %sw.bb28.land.lhs.true94_crit_edge

sw.bb28.land.lhs.true94_crit_edge:                ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true94

if.end36:                                         ; preds = %sw.bb28
  %108 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %idx, align 8
  %add38 = add i32 %109, 12
  %add40 = add i32 %109, 11
  %110 = ptrtoint ptr %size.0394 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %size.0394, align 4
  %div41 = udiv i32 %111, 3
  %call42 = tail call i32 @radeon_vce_cs_reloc(ptr noundef %p, i32 noundef %add38, i32 noundef %add40, i32 noundef %div41)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end36.sw.epilog_crit_edge, label %if.end36.land.lhs.true94_crit_edge

if.end36.land.lhs.true94_crit_edge:               ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true94

if.end36.sw.epilog_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb46:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb47:                                          ; preds = %if.end7
  %add49 = add i32 %8, 3
  %add51 = add i32 %8, 2
  %112 = ptrtoint ptr %size.0394 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %size.0394, align 4
  %mul52 = shl i32 %113, 1
  %call53 = tail call i32 @radeon_vce_cs_reloc(ptr noundef %p, i32 noundef %add49, i32 noundef %add51, i32 noundef %mul52)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %sw.bb47.sw.epilog_crit_edge, label %sw.bb47.land.lhs.true94_crit_edge

sw.bb47.land.lhs.true94_crit_edge:                ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true94

sw.bb47.sw.epilog_crit_edge:                      ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb57:                                          ; preds = %if.end7
  %add59 = add i32 %8, 4
  br i1 %tobool.not.i, label %if.end.i251, label %sw.bb57.radeon_get_ib_value.exit255_crit_edge

sw.bb57.radeon_get_ib_value.exit255_crit_edge:    ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #11
  br label %radeon_get_ib_value.exit255

if.end.i251:                                      ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #11
  %114 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ptr.i, align 8
  br label %radeon_get_ib_value.exit255

radeon_get_ib_value.exit255:                      ; preds = %if.end.i251, %sw.bb57.radeon_get_ib_value.exit255_crit_edge
  %.pn.i252 = phi ptr [ %115, %if.end.i251 ], [ %10, %sw.bb57.radeon_get_ib_value.exit255_crit_edge ]
  %retval.0.in.i253 = getelementptr i32, ptr %.pn.i252, i32 %add59
  %116 = ptrtoint ptr %retval.0.in.i253 to i32
  call void @__asan_load4_noabort(i32 %116)
  %retval.0.i254 = load i32, ptr %retval.0.in.i253, align 4
  %117 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %retval.0.i254, ptr %tmp, align 4
  %add62 = add i32 %8, 3
  %add64 = add i32 %8, 2
  %call65 = tail call i32 @radeon_vce_cs_reloc(ptr noundef %p, i32 noundef %add62, i32 noundef %add64, i32 noundef %retval.0.i254)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %radeon_get_ib_value.exit255.sw.epilog_crit_edge, label %radeon_get_ib_value.exit255.land.lhs.true94_crit_edge

radeon_get_ib_value.exit255.land.lhs.true94_crit_edge: ; preds = %radeon_get_ib_value.exit255
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true94

radeon_get_ib_value.exit255.sw.epilog_crit_edge:  ; preds = %radeon_get_ib_value.exit255
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb69:                                          ; preds = %if.end7
  %add71 = add i32 %8, 3
  %add73 = add i32 %8, 2
  %call74 = tail call i32 @radeon_vce_cs_reloc(ptr noundef %p, i32 noundef %add71, i32 noundef %add73, i32 noundef 4096)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %sw.bb69.sw.epilog_crit_edge, label %sw.bb69.land.lhs.true94_crit_edge

sw.bb69.land.lhs.true94_crit_edge:                ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true94

sw.bb69.sw.epilog_crit_edge:                      ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.default:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.39, i32 noundef %retval.0.i216) #9
  br label %land.lhs.true94

sw.epilog:                                        ; preds = %sw.bb69.sw.epilog_crit_edge, %radeon_get_ib_value.exit255.sw.epilog_crit_edge, %sw.bb47.sw.epilog_crit_edge, %sw.bb46, %if.end36.sw.epilog_crit_edge, %radeon_get_ib_value.exit246, %if.end7.sw.epilog_crit_edge, %if.end7.sw.epilog_crit_edge574, %if.end7.sw.epilog_crit_edge575, %if.end7.sw.epilog_crit_edge576, %if.end7.sw.epilog_crit_edge577, %if.end7.sw.epilog_crit_edge578, %if.end7.sw.epilog_crit_edge579
  %destroyed.1.off0 = phi i1 [ false, %sw.bb69.sw.epilog_crit_edge ], [ false, %radeon_get_ib_value.exit255.sw.epilog_crit_edge ], [ false, %sw.bb47.sw.epilog_crit_edge ], [ true, %sw.bb46 ], [ false, %if.end36.sw.epilog_crit_edge ], [ false, %radeon_get_ib_value.exit246 ], [ false, %if.end7.sw.epilog_crit_edge ], [ false, %if.end7.sw.epilog_crit_edge574 ], [ false, %if.end7.sw.epilog_crit_edge575 ], [ false, %if.end7.sw.epilog_crit_edge576 ], [ false, %if.end7.sw.epilog_crit_edge577 ], [ false, %if.end7.sw.epilog_crit_edge578 ], [ false, %if.end7.sw.epilog_crit_edge579 ]
  %created.1.off0 = phi i1 [ %created.0.off0392, %sw.bb69.sw.epilog_crit_edge ], [ %created.0.off0392, %radeon_get_ib_value.exit255.sw.epilog_crit_edge ], [ %created.0.off0392, %sw.bb47.sw.epilog_crit_edge ], [ %created.0.off0392, %sw.bb46 ], [ %created.0.off0392, %if.end36.sw.epilog_crit_edge ], [ true, %radeon_get_ib_value.exit246 ], [ %created.0.off0392, %if.end7.sw.epilog_crit_edge ], [ %created.0.off0392, %if.end7.sw.epilog_crit_edge574 ], [ %created.0.off0392, %if.end7.sw.epilog_crit_edge575 ], [ %created.0.off0392, %if.end7.sw.epilog_crit_edge576 ], [ %created.0.off0392, %if.end7.sw.epilog_crit_edge577 ], [ %created.0.off0392, %if.end7.sw.epilog_crit_edge578 ], [ %created.0.off0392, %if.end7.sw.epilog_crit_edge579 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %session_idx.0390)
  %cmp78 = icmp eq i32 %session_idx.0390, -1
  br i1 %cmp78, label %if.then79, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then79:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.40) #9
  br label %land.lhs.true94

cleanup:                                          ; preds = %sw.epilog.cleanup_crit_edge, %sw.epilog.thread
  %size.1290 = phi ptr [ %arrayidx, %sw.epilog.thread ], [ %size.0394, %sw.epilog.cleanup_crit_edge ]
  %handle.1289 = phi i32 [ %retval.0.i225, %sw.epilog.thread ], [ %handle.0393, %sw.epilog.cleanup_crit_edge ]
  %created.1.off0288 = phi i1 [ %created.0.off0392, %sw.epilog.thread ], [ %created.1.off0, %sw.epilog.cleanup_crit_edge ]
  %destroyed.1.off0287 = phi i1 [ false, %sw.epilog.thread ], [ %destroyed.1.off0, %sw.epilog.cleanup_crit_edge ]
  %session_idx.1286 = phi i32 [ %retval.0.i228, %sw.epilog.thread ], [ %session_idx.0390, %sw.epilog.cleanup_crit_edge ]
  %allocated.2285 = phi i8 [ %allocated.1, %sw.epilog.thread ], [ %allocated.0389, %sw.epilog.cleanup_crit_edge ]
  %div81206 = lshr i32 %retval.0.i262, 2
  %118 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %idx, align 8
  %add83 = add i32 %119, %div81206
  store i32 %add83, ptr %idx, align 8
  %120 = ptrtoint ptr %chunk_ib to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %chunk_ib, align 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %121, align 4
  %cmp = icmp ult i32 %add83, %123
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %allocated.2285)
  %tobool85.not = icmp eq i8 %allocated.2285, 0
  %brmerge = select i1 %tobool85.not, i1 true, i1 %created.1.off0288
  br i1 %brmerge, label %out, label %land.lhs.true94.thread332

land.lhs.true94.thread332:                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.41) #9
  br label %if.then96

out:                                              ; preds = %while.end
  br i1 %destroyed.1.off0287, label %out.if.then96_crit_edge, label %out.cleanup103_crit_edge

out.cleanup103_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup103

out.if.then96_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then96

land.lhs.true94:                                  ; preds = %if.then79, %sw.default, %sw.bb69.land.lhs.true94_crit_edge, %radeon_get_ib_value.exit255.land.lhs.true94_crit_edge, %sw.bb47.land.lhs.true94_crit_edge, %if.end36.land.lhs.true94_crit_edge, %sw.bb28.land.lhs.true94_crit_edge, %if.then6, %if.then
  %r.3323325 = phi i32 [ -22, %if.then79 ], [ -22, %sw.default ], [ -22, %if.then6 ], [ -22, %if.then ], [ %call33, %sw.bb28.land.lhs.true94_crit_edge ], [ %call42, %if.end36.land.lhs.true94_crit_edge ], [ %call53, %sw.bb47.land.lhs.true94_crit_edge ], [ %call65, %radeon_get_ib_value.exit255.land.lhs.true94_crit_edge ], [ %call74, %sw.bb69.land.lhs.true94_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %allocated.0389)
  %tobool95.not = icmp eq i8 %allocated.0389, 0
  br i1 %tobool95.not, label %land.lhs.true94.cleanup103_crit_edge, label %land.lhs.true94.if.then96_crit_edge

land.lhs.true94.if.then96_crit_edge:              ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then96

land.lhs.true94.cleanup103_crit_edge:             ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup103

if.then96:                                        ; preds = %land.lhs.true94.if.then96_crit_edge, %out.if.then96_crit_edge, %land.lhs.true94.thread332
  %handle.0347 = phi i32 [ %handle.1289, %out.if.then96_crit_edge ], [ %handle.0393, %land.lhs.true94.if.then96_crit_edge ], [ %handle.1289, %land.lhs.true94.thread332 ]
  %r.3322 = phi i32 [ 0, %out.if.then96_crit_edge ], [ %r.3323325, %land.lhs.true94.if.then96_crit_edge ], [ -2, %land.lhs.true94.thread332 ]
  %rdev98 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %atomic_cmpxchg.exit.for.body_crit_edge, %if.then96
  %i.0398 = phi i32 [ 0, %if.then96 ], [ %inc, %atomic_cmpxchg.exit.for.body_crit_edge ]
  %124 = ptrtoint ptr %rdev98 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %rdev98, align 4
  %arrayidx100 = getelementptr %struct.radeon_device, ptr %125, i32 0, i32 60, i32 4, i32 %i.0398
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx100, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !129
  tail call void @llvm.prefetch.p0(ptr %arrayidx100, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %for.body
  %126 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx100, ptr %arrayidx100, i32 %handle.0347, i32 0, ptr elementtype(i32) %arrayidx100) #9, !srcloc !130
  %asmresult.i.i.i = extractvalue { i32, i32 } %126, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !131
  %inc = add nuw nsw i32 %i.0398, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %atomic_cmpxchg.exit.cleanup103_crit_edge, label %atomic_cmpxchg.exit.for.body_crit_edge

atomic_cmpxchg.exit.for.body_crit_edge:           ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

atomic_cmpxchg.exit.cleanup103_crit_edge:         ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup103

cleanup103.sink.split:                            ; preds = %sw.bb15.cleanup103.sink.split_crit_edge, %for.inc27.i.cleanup103.sink.split_crit_edge, %if.then.i.cleanup103.sink.split_crit_edge
  %.str.38.sink = phi ptr [ @.str.57, %for.inc27.i.cleanup103.sink.split_crit_edge ], [ @.str.56, %if.then.i.cleanup103.sink.split_crit_edge ], [ @.str.38, %sw.bb15.cleanup103.sink.split_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull %.str.38.sink) #9
  br label %cleanup103

cleanup103:                                       ; preds = %cleanup103.sink.split, %atomic_cmpxchg.exit.cleanup103_crit_edge, %land.lhs.true94.cleanup103_crit_edge, %out.cleanup103_crit_edge, %entry.cleanup103_crit_edge
  %retval.2 = phi i32 [ %r.3323325, %land.lhs.true94.cleanup103_crit_edge ], [ 0, %out.cleanup103_crit_edge ], [ 0, %entry.cleanup103_crit_edge ], [ -22, %cleanup103.sink.split ], [ %r.3322, %atomic_cmpxchg.exit.cleanup103_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp)
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @radeon_vce_semaphore_emit(ptr nocapture noundef readnone %rdev, ptr noundef %ring, ptr nocapture noundef readonly %semaphore, i1 noundef zeroext %emit_wait) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gpu_addr = getelementptr inbounds %struct.radeon_semaphore, ptr %semaphore, i32 0, i32 2
  %0 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %gpu_addr, align 8
  %count_dw.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 11
  %2 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count_dw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp slt i32 %3, 1
  br i1 %cmp.i, label %if.then.i, label %entry.radeon_ring_write.exit_crit_edge

entry.radeon_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %radeon_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.58) #9
  br label %radeon_ring_write.exit

radeon_ring_write.exit:                           ; preds = %if.then.i, %entry.radeon_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 2
  %4 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ring1.i, align 8
  %wptr.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 7
  %6 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wptr.i, align 4
  %inc.i = add i32 %7, 1
  store i32 %inc.i, ptr %wptr.i, align 4
  %arrayidx.i = getelementptr i32, ptr %5, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 100663296, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 16
  %9 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ptr_mask.i, align 4
  %11 = load i32, ptr %wptr.i, align 4
  %and.i = and i32 %11, %10
  store i32 %and.i, ptr %wptr.i, align 4
  %12 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count_dw.i, align 4
  %dec.i = add i32 %13, -1
  store i32 %dec.i, ptr %count_dw.i, align 4
  %ring_free_dw.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 10
  %14 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i = add i32 %15, -1
  store i32 %dec4.i, ptr %ring_free_dw.i, align 8
  %16 = trunc i64 %1 to i32
  %17 = lshr i32 %16, 3
  %conv = and i32 %17, 1048575
  %18 = tail call i32 @llvm.bswap.i32(i32 %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i13 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i13, label %if.then.i14, label %radeon_ring_write.exit.radeon_ring_write.exit24_crit_edge

radeon_ring_write.exit.radeon_ring_write.exit24_crit_edge: ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %radeon_ring_write.exit24

if.then.i14:                                      ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.58) #9
  br label %radeon_ring_write.exit24

radeon_ring_write.exit24:                         ; preds = %if.then.i14, %radeon_ring_write.exit.radeon_ring_write.exit24_crit_edge
  %19 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ring1.i, align 8
  %21 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %wptr.i, align 4
  %inc.i17 = add i32 %22, 1
  store i32 %inc.i17, ptr %wptr.i, align 4
  %arrayidx.i18 = getelementptr i32, ptr %20, i32 %22
  %23 = ptrtoint ptr %arrayidx.i18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 %18, ptr %arrayidx.i18, align 4
  %24 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ptr_mask.i, align 4
  %26 = load i32, ptr %wptr.i, align 4
  %and.i20 = and i32 %26, %25
  store i32 %and.i20, ptr %wptr.i, align 4
  %27 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %count_dw.i, align 4
  %dec.i21 = add i32 %28, -1
  store i32 %dec.i21, ptr %count_dw.i, align 4
  %29 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i23 = add i32 %30, -1
  store i32 %dec4.i23, ptr %ring_free_dw.i, align 8
  %shr1 = lshr i64 %1, 23
  %31 = trunc i64 %shr1 to i32
  %conv3 = and i32 %31, 1048575
  %32 = tail call i32 @llvm.bswap.i32(i32 %conv3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i21)
  %cmp.i26 = icmp slt i32 %dec.i21, 1
  br i1 %cmp.i26, label %if.then.i27, label %radeon_ring_write.exit24.radeon_ring_write.exit37_crit_edge

radeon_ring_write.exit24.radeon_ring_write.exit37_crit_edge: ; preds = %radeon_ring_write.exit24
  call void @__sanitizer_cov_trace_pc() #11
  br label %radeon_ring_write.exit37

if.then.i27:                                      ; preds = %radeon_ring_write.exit24
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.58) #9
  br label %radeon_ring_write.exit37

radeon_ring_write.exit37:                         ; preds = %if.then.i27, %radeon_ring_write.exit24.radeon_ring_write.exit37_crit_edge
  %33 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ring1.i, align 8
  %35 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %wptr.i, align 4
  %inc.i30 = add i32 %36, 1
  store i32 %inc.i30, ptr %wptr.i, align 4
  %arrayidx.i31 = getelementptr i32, ptr %34, i32 %36
  %37 = ptrtoint ptr %arrayidx.i31 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 %32, ptr %arrayidx.i31, align 4
  %38 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ptr_mask.i, align 4
  %40 = load i32, ptr %wptr.i, align 4
  %and.i33 = and i32 %40, %39
  store i32 %and.i33, ptr %wptr.i, align 4
  %41 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %count_dw.i, align 4
  %dec.i34 = add i32 %42, -1
  store i32 %dec.i34, ptr %count_dw.i, align 4
  %43 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i36 = add i32 %44, -1
  store i32 %dec4.i36, ptr %ring_free_dw.i, align 8
  %cond = zext i1 %emit_wait to i32
  %or = or i32 %cond, 16789504
  %45 = tail call i32 @llvm.bswap.i32(i32 %or)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i34)
  %cmp.i39 = icmp slt i32 %dec.i34, 1
  br i1 %cmp.i39, label %if.then.i40, label %radeon_ring_write.exit37.radeon_ring_write.exit50_crit_edge

radeon_ring_write.exit37.radeon_ring_write.exit50_crit_edge: ; preds = %radeon_ring_write.exit37
  call void @__sanitizer_cov_trace_pc() #11
  br label %radeon_ring_write.exit50

if.then.i40:                                      ; preds = %radeon_ring_write.exit37
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.58) #9
  br label %radeon_ring_write.exit50

radeon_ring_write.exit50:                         ; preds = %if.then.i40, %radeon_ring_write.exit37.radeon_ring_write.exit50_crit_edge
  %46 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ring1.i, align 8
  %48 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %wptr.i, align 4
  %inc.i43 = add i32 %49, 1
  store i32 %inc.i43, ptr %wptr.i, align 4
  %arrayidx.i44 = getelementptr i32, ptr %47, i32 %49
  %50 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile i32 %45, ptr %arrayidx.i44, align 4
  %51 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ptr_mask.i, align 4
  %53 = load i32, ptr %wptr.i, align 4
  %and.i46 = and i32 %53, %52
  store i32 %and.i46, ptr %wptr.i, align 4
  %54 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %count_dw.i, align 4
  %dec.i47 = add i32 %55, -1
  store i32 %dec.i47, ptr %count_dw.i, align 4
  %56 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i49 = add i32 %57, -1
  store i32 %dec4.i49, ptr %ring_free_dw.i, align 8
  br i1 %emit_wait, label %radeon_ring_write.exit50.if.end_crit_edge, label %if.then

radeon_ring_write.exit50.if.end_crit_edge:        ; preds = %radeon_ring_write.exit50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %radeon_ring_write.exit50
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i47)
  %cmp.i52 = icmp slt i32 %dec.i47, 1
  br i1 %cmp.i52, label %if.then.i53, label %if.then.radeon_ring_write.exit63_crit_edge

if.then.radeon_ring_write.exit63_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %radeon_ring_write.exit63

if.then.i53:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.58) #9
  br label %radeon_ring_write.exit63

radeon_ring_write.exit63:                         ; preds = %if.then.i53, %if.then.radeon_ring_write.exit63_crit_edge
  %58 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ring1.i, align 8
  %60 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %wptr.i, align 4
  %inc.i56 = add i32 %61, 1
  store i32 %inc.i56, ptr %wptr.i, align 4
  %arrayidx.i57 = getelementptr i32, ptr %59, i32 %61
  %62 = ptrtoint ptr %arrayidx.i57 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile i32 16777216, ptr %arrayidx.i57, align 4
  %63 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ptr_mask.i, align 4
  %65 = load i32, ptr %wptr.i, align 4
  %and.i59 = and i32 %65, %64
  store i32 %and.i59, ptr %wptr.i, align 4
  %66 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %count_dw.i, align 4
  %dec.i60 = add i32 %67, -1
  store i32 %dec.i60, ptr %count_dw.i, align 4
  %68 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i62 = add i32 %69, -1
  store i32 %dec4.i62, ptr %ring_free_dw.i, align 8
  br label %if.end

if.end:                                           ; preds = %radeon_ring_write.exit63, %radeon_ring_write.exit50.if.end_crit_edge
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_vce_ib_execute(ptr nocapture noundef %rdev, ptr nocapture noundef readonly %ib) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ring2 = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 4
  %0 = ptrtoint ptr %ring2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ring2, align 4
  %count_dw.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 11
  %2 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count_dw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp slt i32 %3, 1
  br i1 %cmp.i, label %if.then.i, label %entry.radeon_ring_write.exit_crit_edge

entry.radeon_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %radeon_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.58) #9
  br label %radeon_ring_write.exit

radeon_ring_write.exit:                           ; preds = %if.then.i, %entry.radeon_ring_write.exit_crit_edge
  %ring1.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 2
  %4 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ring1.i, align 8
  %wptr.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 7
  %6 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wptr.i, align 4
  %inc.i = add i32 %7, 1
  store i32 %inc.i, ptr %wptr.i, align 4
  %arrayidx.i = getelementptr i32, ptr %5, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 33554432, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 16
  %9 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ptr_mask.i, align 4
  %11 = load i32, ptr %wptr.i, align 4
  %and.i = and i32 %11, %10
  store i32 %and.i, ptr %wptr.i, align 4
  %12 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count_dw.i, align 4
  %dec.i = add i32 %13, -1
  store i32 %dec.i, ptr %count_dw.i, align 4
  %ring_free_dw.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 10
  %14 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i = add i32 %15, -1
  store i32 %dec4.i, ptr %ring_free_dw.i, align 8
  %gpu_addr = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 2
  %16 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %gpu_addr, align 8
  %conv = trunc i64 %17 to i32
  %18 = tail call i32 @llvm.bswap.i32(i32 %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i13 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i13, label %if.then.i14, label %radeon_ring_write.exit.radeon_ring_write.exit24_crit_edge

radeon_ring_write.exit.radeon_ring_write.exit24_crit_edge: ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %radeon_ring_write.exit24

if.then.i14:                                      ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.58) #9
  br label %radeon_ring_write.exit24

radeon_ring_write.exit24:                         ; preds = %if.then.i14, %radeon_ring_write.exit.radeon_ring_write.exit24_crit_edge
  %19 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ring1.i, align 8
  %21 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %wptr.i, align 4
  %inc.i17 = add i32 %22, 1
  store i32 %inc.i17, ptr %wptr.i, align 4
  %arrayidx.i18 = getelementptr i32, ptr %20, i32 %22
  %23 = ptrtoint ptr %arrayidx.i18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 %18, ptr %arrayidx.i18, align 4
  %24 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ptr_mask.i, align 4
  %26 = load i32, ptr %wptr.i, align 4
  %and.i20 = and i32 %26, %25
  store i32 %and.i20, ptr %wptr.i, align 4
  %27 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %count_dw.i, align 4
  %dec.i21 = add i32 %28, -1
  store i32 %dec.i21, ptr %count_dw.i, align 4
  %29 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i23 = add i32 %30, -1
  store i32 %dec4.i23, ptr %ring_free_dw.i, align 8
  %31 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %gpu_addr, align 8
  %shr = lshr i64 %32, 32
  %conv5 = trunc i64 %shr to i32
  %33 = tail call i32 @llvm.bswap.i32(i32 %conv5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i21)
  %cmp.i26 = icmp slt i32 %dec.i21, 1
  br i1 %cmp.i26, label %if.then.i27, label %radeon_ring_write.exit24.radeon_ring_write.exit37_crit_edge

radeon_ring_write.exit24.radeon_ring_write.exit37_crit_edge: ; preds = %radeon_ring_write.exit24
  call void @__sanitizer_cov_trace_pc() #11
  br label %radeon_ring_write.exit37

if.then.i27:                                      ; preds = %radeon_ring_write.exit24
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.58) #9
  br label %radeon_ring_write.exit37

radeon_ring_write.exit37:                         ; preds = %if.then.i27, %radeon_ring_write.exit24.radeon_ring_write.exit37_crit_edge
  %34 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ring1.i, align 8
  %36 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %wptr.i, align 4
  %inc.i30 = add i32 %37, 1
  store i32 %inc.i30, ptr %wptr.i, align 4
  %arrayidx.i31 = getelementptr i32, ptr %35, i32 %37
  %38 = ptrtoint ptr %arrayidx.i31 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile i32 %33, ptr %arrayidx.i31, align 4
  %39 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ptr_mask.i, align 4
  %41 = load i32, ptr %wptr.i, align 4
  %and.i33 = and i32 %41, %40
  store i32 %and.i33, ptr %wptr.i, align 4
  %42 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %count_dw.i, align 4
  %dec.i34 = add i32 %43, -1
  store i32 %dec.i34, ptr %count_dw.i, align 4
  %44 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i36 = add i32 %45, -1
  store i32 %dec4.i36, ptr %ring_free_dw.i, align 8
  %length_dw = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 1
  %46 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %length_dw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i34)
  %cmp.i39 = icmp slt i32 %dec.i34, 1
  br i1 %cmp.i39, label %if.then.i40, label %radeon_ring_write.exit37.radeon_ring_write.exit50_crit_edge

radeon_ring_write.exit37.radeon_ring_write.exit50_crit_edge: ; preds = %radeon_ring_write.exit37
  call void @__sanitizer_cov_trace_pc() #11
  br label %radeon_ring_write.exit50

if.then.i40:                                      ; preds = %radeon_ring_write.exit37
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.58) #9
  br label %radeon_ring_write.exit50

radeon_ring_write.exit50:                         ; preds = %if.then.i40, %radeon_ring_write.exit37.radeon_ring_write.exit50_crit_edge
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  %49 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ring1.i, align 8
  %51 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %wptr.i, align 4
  %inc.i43 = add i32 %52, 1
  store i32 %inc.i43, ptr %wptr.i, align 4
  %arrayidx.i44 = getelementptr i32, ptr %50, i32 %52
  %53 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile i32 %48, ptr %arrayidx.i44, align 4
  %54 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ptr_mask.i, align 4
  %56 = load i32, ptr %wptr.i, align 4
  %and.i46 = and i32 %56, %55
  store i32 %and.i46, ptr %wptr.i, align 4
  %57 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %count_dw.i, align 4
  %dec.i47 = add i32 %58, -1
  store i32 %dec.i47, ptr %count_dw.i, align 4
  %59 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i49 = add i32 %60, -1
  store i32 %dec4.i49, ptr %ring_free_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_vce_fence_emit(ptr noundef %rdev, ptr nocapture noundef readonly %fence) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ring2 = getelementptr inbounds %struct.radeon_fence, ptr %fence, i32 0, i32 3
  %0 = ptrtoint ptr %ring2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ring2, align 8
  %gpu_addr = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 48, i32 %1, i32 2
  %2 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %gpu_addr, align 8
  %count_dw.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 11
  %4 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count_dw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp slt i32 %5, 1
  br i1 %cmp.i, label %if.then.i, label %entry.radeon_ring_write.exit_crit_edge

entry.radeon_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %radeon_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.58) #9
  br label %radeon_ring_write.exit

radeon_ring_write.exit:                           ; preds = %if.then.i, %entry.radeon_ring_write.exit_crit_edge
  %ring1.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 2
  %6 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ring1.i, align 8
  %wptr.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 7
  %8 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wptr.i, align 4
  %inc.i = add i32 %9, 1
  store i32 %inc.i, ptr %wptr.i, align 4
  %arrayidx.i = getelementptr i32, ptr %7, i32 %9
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 50331648, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 16
  %11 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ptr_mask.i, align 4
  %13 = load i32, ptr %wptr.i, align 4
  %and.i = and i32 %13, %12
  store i32 %and.i, ptr %wptr.i, align 4
  %14 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count_dw.i, align 4
  %dec.i = add i32 %15, -1
  store i32 %dec.i, ptr %count_dw.i, align 4
  %ring_free_dw.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 10
  %16 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i = add i32 %17, -1
  store i32 %dec4.i, ptr %ring_free_dw.i, align 8
  %conv = trunc i64 %3 to i32
  %18 = tail call i32 @llvm.bswap.i32(i32 %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i18 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i18, label %if.then.i19, label %radeon_ring_write.exit.radeon_ring_write.exit29_crit_edge

radeon_ring_write.exit.radeon_ring_write.exit29_crit_edge: ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %radeon_ring_write.exit29

if.then.i19:                                      ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.58) #9
  br label %radeon_ring_write.exit29

radeon_ring_write.exit29:                         ; preds = %if.then.i19, %radeon_ring_write.exit.radeon_ring_write.exit29_crit_edge
  %19 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ring1.i, align 8
  %21 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %wptr.i, align 4
  %inc.i22 = add i32 %22, 1
  store i32 %inc.i22, ptr %wptr.i, align 4
  %arrayidx.i23 = getelementptr i32, ptr %20, i32 %22
  %23 = ptrtoint ptr %arrayidx.i23 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 %18, ptr %arrayidx.i23, align 4
  %24 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ptr_mask.i, align 4
  %26 = load i32, ptr %wptr.i, align 4
  %and.i25 = and i32 %26, %25
  store i32 %and.i25, ptr %wptr.i, align 4
  %27 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %count_dw.i, align 4
  %dec.i26 = add i32 %28, -1
  store i32 %dec.i26, ptr %count_dw.i, align 4
  %29 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i28 = add i32 %30, -1
  store i32 %dec4.i28, ptr %ring_free_dw.i, align 8
  %shr = lshr i64 %3, 32
  %conv6 = trunc i64 %shr to i32
  %31 = tail call i32 @llvm.bswap.i32(i32 %conv6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i26)
  %cmp.i31 = icmp slt i32 %dec.i26, 1
  br i1 %cmp.i31, label %if.then.i32, label %radeon_ring_write.exit29.radeon_ring_write.exit42_crit_edge

radeon_ring_write.exit29.radeon_ring_write.exit42_crit_edge: ; preds = %radeon_ring_write.exit29
  call void @__sanitizer_cov_trace_pc() #11
  br label %radeon_ring_write.exit42

if.then.i32:                                      ; preds = %radeon_ring_write.exit29
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.58) #9
  br label %radeon_ring_write.exit42

radeon_ring_write.exit42:                         ; preds = %if.then.i32, %radeon_ring_write.exit29.radeon_ring_write.exit42_crit_edge
  %32 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ring1.i, align 8
  %34 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %wptr.i, align 4
  %inc.i35 = add i32 %35, 1
  store i32 %inc.i35, ptr %wptr.i, align 4
  %arrayidx.i36 = getelementptr i32, ptr %33, i32 %35
  %36 = ptrtoint ptr %arrayidx.i36 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 %31, ptr %arrayidx.i36, align 4
  %37 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ptr_mask.i, align 4
  %39 = load i32, ptr %wptr.i, align 4
  %and.i38 = and i32 %39, %38
  store i32 %and.i38, ptr %wptr.i, align 4
  %40 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %count_dw.i, align 4
  %dec.i39 = add i32 %41, -1
  store i32 %dec.i39, ptr %count_dw.i, align 4
  %42 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i41 = add i32 %43, -1
  store i32 %dec4.i41, ptr %ring_free_dw.i, align 8
  %seq = getelementptr inbounds %struct.radeon_fence, ptr %fence, i32 0, i32 2
  %44 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %seq, align 8
  %conv7 = trunc i64 %45 to i32
  %46 = tail call i32 @llvm.bswap.i32(i32 %conv7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i39)
  %cmp.i44 = icmp slt i32 %dec.i39, 1
  br i1 %cmp.i44, label %if.then.i45, label %radeon_ring_write.exit42.radeon_ring_write.exit55_crit_edge

radeon_ring_write.exit42.radeon_ring_write.exit55_crit_edge: ; preds = %radeon_ring_write.exit42
  call void @__sanitizer_cov_trace_pc() #11
  br label %radeon_ring_write.exit55

if.then.i45:                                      ; preds = %radeon_ring_write.exit42
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.58) #9
  br label %radeon_ring_write.exit55

radeon_ring_write.exit55:                         ; preds = %if.then.i45, %radeon_ring_write.exit42.radeon_ring_write.exit55_crit_edge
  %47 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ring1.i, align 8
  %49 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %wptr.i, align 4
  %inc.i48 = add i32 %50, 1
  store i32 %inc.i48, ptr %wptr.i, align 4
  %arrayidx.i49 = getelementptr i32, ptr %48, i32 %50
  %51 = ptrtoint ptr %arrayidx.i49 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile i32 %46, ptr %arrayidx.i49, align 4
  %52 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ptr_mask.i, align 4
  %54 = load i32, ptr %wptr.i, align 4
  %and.i51 = and i32 %54, %53
  store i32 %and.i51, ptr %wptr.i, align 4
  %55 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %count_dw.i, align 4
  %dec.i52 = add i32 %56, -1
  store i32 %dec.i52, ptr %count_dw.i, align 4
  %57 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i54 = add i32 %58, -1
  store i32 %dec4.i54, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i52)
  %cmp.i57 = icmp slt i32 %dec.i52, 1
  br i1 %cmp.i57, label %if.then.i58, label %radeon_ring_write.exit55.radeon_ring_write.exit68_crit_edge

radeon_ring_write.exit55.radeon_ring_write.exit68_crit_edge: ; preds = %radeon_ring_write.exit55
  call void @__sanitizer_cov_trace_pc() #11
  br label %radeon_ring_write.exit68

if.then.i58:                                      ; preds = %radeon_ring_write.exit55
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.58) #9
  br label %radeon_ring_write.exit68

radeon_ring_write.exit68:                         ; preds = %if.then.i58, %radeon_ring_write.exit55.radeon_ring_write.exit68_crit_edge
  %59 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ring1.i, align 8
  %61 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %wptr.i, align 4
  %inc.i61 = add i32 %62, 1
  store i32 %inc.i61, ptr %wptr.i, align 4
  %arrayidx.i62 = getelementptr i32, ptr %60, i32 %62
  %63 = ptrtoint ptr %arrayidx.i62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile i32 67108864, ptr %arrayidx.i62, align 4
  %64 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ptr_mask.i, align 4
  %66 = load i32, ptr %wptr.i, align 4
  %and.i64 = and i32 %66, %65
  store i32 %and.i64, ptr %wptr.i, align 4
  %67 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %count_dw.i, align 4
  %dec.i65 = add i32 %68, -1
  store i32 %dec.i65, ptr %count_dw.i, align 4
  %69 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i67 = add i32 %70, -1
  store i32 %dec4.i67, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i65)
  %cmp.i70 = icmp slt i32 %dec.i65, 1
  br i1 %cmp.i70, label %if.then.i71, label %radeon_ring_write.exit68.radeon_ring_write.exit81_crit_edge

radeon_ring_write.exit68.radeon_ring_write.exit81_crit_edge: ; preds = %radeon_ring_write.exit68
  call void @__sanitizer_cov_trace_pc() #11
  br label %radeon_ring_write.exit81

if.then.i71:                                      ; preds = %radeon_ring_write.exit68
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.58) #9
  br label %radeon_ring_write.exit81

radeon_ring_write.exit81:                         ; preds = %if.then.i71, %radeon_ring_write.exit68.radeon_ring_write.exit81_crit_edge
  %71 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ring1.i, align 8
  %73 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %wptr.i, align 4
  %inc.i74 = add i32 %74, 1
  store i32 %inc.i74, ptr %wptr.i, align 4
  %arrayidx.i75 = getelementptr i32, ptr %72, i32 %74
  %75 = ptrtoint ptr %arrayidx.i75 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile i32 16777216, ptr %arrayidx.i75, align 4
  %76 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ptr_mask.i, align 4
  %78 = load i32, ptr %wptr.i, align 4
  %and.i77 = and i32 %78, %77
  store i32 %and.i77, ptr %wptr.i, align 4
  %79 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %count_dw.i, align 4
  %dec.i78 = add i32 %80, -1
  store i32 %dec.i78, ptr %count_dw.i, align 4
  %81 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i80 = add i32 %82, -1
  store i32 %dec4.i80, ptr %ring_free_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_vce_ring_test(ptr noundef %rdev, ptr noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vce_v1_0_get_rptr(ptr noundef %rdev, ptr noundef %ring) #9
  %call1 = tail call i32 @radeon_ring_lock(ptr noundef %rdev, ptr noundef %ring, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %idx = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 19
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.42, i32 noundef %1, i32 noundef %call1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %count_dw.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 11
  %2 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count_dw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp slt i32 %3, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.radeon_ring_write.exit_crit_edge

if.end.radeon_ring_write.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %radeon_ring_write.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.58) #9
  br label %radeon_ring_write.exit

radeon_ring_write.exit:                           ; preds = %if.then.i, %if.end.radeon_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 2
  %4 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ring1.i, align 8
  %wptr.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 7
  %6 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wptr.i, align 4
  %inc.i = add i32 %7, 1
  store i32 %inc.i, ptr %wptr.i, align 4
  %arrayidx.i = getelementptr i32, ptr %5, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 16777216, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 16
  %9 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ptr_mask.i, align 4
  %11 = load i32, ptr %wptr.i, align 4
  %and.i = and i32 %11, %10
  store i32 %and.i, ptr %wptr.i, align 4
  %12 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count_dw.i, align 4
  %dec.i = add i32 %13, -1
  store i32 %dec.i, ptr %count_dw.i, align 4
  %ring_free_dw.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 10
  %14 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i = add i32 %15, -1
  store i32 %dec4.i, ptr %ring_free_dw.i, align 8
  tail call void @radeon_ring_unlock_commit(ptr noundef %rdev, ptr noundef %ring, i1 noundef zeroext false) #9
  %usec_timeout = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %16 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %usec_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp33.not = icmp eq i32 %17, 0
  br i1 %cmp33.not, label %radeon_ring_write.exit.for.end_crit_edge, label %radeon_ring_write.exit.for.body_crit_edge

radeon_ring_write.exit.for.body_crit_edge:        ; preds = %radeon_ring_write.exit
  br label %for.body

radeon_ring_write.exit.for.end_crit_edge:         ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %if.end5.for.body_crit_edge, %radeon_ring_write.exit.for.body_crit_edge
  %i.034 = phi i32 [ %inc, %if.end5.for.body_crit_edge ], [ 0, %radeon_ring_write.exit.for.body_crit_edge ]
  %call2 = tail call i32 @vce_v1_0_get_rptr(ptr noundef %rdev, ptr noundef %ring) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %call)
  %cmp3.not = icmp eq i32 %call2, %call
  br i1 %cmp3.not, label %if.end5, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end5:                                          ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #9
  %inc = add nuw i32 %i.034, 1
  %19 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %usec_timeout, align 4
  %cmp = icmp ult i32 %inc, %20
  br i1 %cmp, label %if.end5.for.body_crit_edge, label %if.end5.for.end_crit_edge

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end5.for.end_crit_edge, %for.body.for.end_crit_edge, %radeon_ring_write.exit.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %radeon_ring_write.exit.for.end_crit_edge ], [ %i.034, %for.body.for.end_crit_edge ], [ %inc, %if.end5.for.end_crit_edge ]
  %21 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %usec_timeout, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %22)
  %cmp7 = icmp ult i32 %i.0.lcssa, %22
  %idx9 = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 19
  %23 = ptrtoint ptr %idx9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %idx9, align 8
  br i1 %cmp7, label %do.end, label %if.else

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %24, i32 noundef %i.0.lcssa) #12
  br label %cleanup

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.45, i32 noundef %24) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ 0, %do.end ], [ -110, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vce_v1_0_get_rptr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_ring_lock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ring_unlock_commit(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_vce_ib_test(ptr noundef %rdev, ptr nocapture noundef readonly %ring) local_unnamed_addr #0 align 64 {
entry:
  %fence = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fence) #9
  %0 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %fence, align 4
  %idx = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 19
  %1 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %idx, align 8
  %call = tail call i32 @radeon_vce_get_create_msg(ptr noundef %rdev, i32 noundef %2, i32 noundef 1, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.46, i32 noundef %call) #9
  br label %error

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %idx, align 8
  %call2 = call i32 @radeon_vce_get_destroy_msg(ptr noundef %rdev, i32 noundef %4, i32 noundef 1, ptr noundef nonnull %fence)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.47, i32 noundef %call2) #9
  br label %error

if.end5:                                          ; preds = %if.end
  %5 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fence, align 4
  %call.i = call i32 @jiffies_to_usecs(i32 noundef 1073741822) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, 1000000
  %spec.select.i = select i1 %cmp.i, i32 1073741822, i32 100
  %call7 = call i32 @radeon_fence_wait_timeout(ptr noundef %6, i1 noundef zeroext false, i32 noundef %spec.select.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.48, i32 noundef %call7) #9
  br label %error

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp9 = icmp eq i32 %call7, 0
  br i1 %cmp9, label %if.then10, label %do.end

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.49) #9
  br label %error

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idx, align 8
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %8) #12
  br label %error

error:                                            ; preds = %do.end, %if.then10, %if.then8, %if.then4, %if.then
  %r.0 = phi i32 [ %call, %if.then ], [ %call2, %if.then4 ], [ %call7, %if.then8 ], [ -110, %if.then10 ], [ 0, %do.end ]
  call void @radeon_fence_unref(ptr noundef nonnull %fence) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence) #9
  ret i32 %r.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_fence_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock_interruptible(ptr noundef, ptr noundef) local_unnamed_addr #2

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
declare dso_local i32 @radeon_fence_count_emitted(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !86, !87, !88, !90, !92, !94, !96, !98, !100, !101, !102, !103, !105, !106, !107, !108, !109, !111, !113, !115}
!llvm.module.flags = !{!117, !118, !119, !120, !121, !122, !123, !124}
!llvm.ident = !{!125}

!0 = !{ptr @__UNIQUE_ID_firmware320, !1, !"__UNIQUE_ID_firmware320", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/radeon_vce.c", i32 44, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware321, !3, !"__UNIQUE_ID_firmware321", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/radeon_vce.c", i32 45, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/radeon/radeon_vce.c", i32 58, i32 34}
!6 = distinct !{null, !7, !"fw_version", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/radeon/radeon_vce.c", i32 58, i32 21}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/radeon/radeon_vce.c", i32 59, i32 34}
!10 = distinct !{null, !11, !"fb_version", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/radeon/radeon_vce.c", i32 59, i32 21}
!12 = !{ptr @radeon_vce_init.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/radeon/radeon_vce.c", i32 65, i32 2}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @radeon_vce_init.__key.3, !13, !"__key", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/radeon/radeon_vce.c", i32 72, i32 13}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/radeon/radeon_vce.c", i32 80, i32 13}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/radeon/radeon_vce.c", i32 89, i32 3}
!23 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @radeon_vce_init._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @radeon_vce_init._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/radeon/radeon_vce.c", i32 106, i32 16}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/radeon/radeon_vce.c", i32 121, i32 16}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/radeon/radeon_vce.c", i32 124, i32 2}
!35 = !{ptr @radeon_vce_init._entry.14, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @radeon_vce_init._entry_ptr.16, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/radeon/radeon_vce.c", i32 145, i32 3}
!39 = !{ptr @radeon_vce_init._entry.17, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @radeon_vce_init._entry_ptr.19, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/radeon/radeon_vce.c", i32 152, i32 3}
!43 = !{ptr @radeon_vce_init._entry.20, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @radeon_vce_init._entry_ptr.22, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/radeon/radeon_vce.c", i32 161, i32 3}
!47 = !{ptr @radeon_vce_init._entry.23, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @radeon_vce_init._entry_ptr.25, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/radeon/radeon_vce.c", i32 230, i32 3}
!51 = !{ptr @radeon_vce_resume._entry, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @radeon_vce_resume._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/radeon/radeon_vce.c", i32 237, i32 3}
!55 = !{ptr @radeon_vce_resume._entry.27, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @radeon_vce_resume._entry_ptr.29, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/radeon/radeon_vce.c", i32 328, i32 4}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/radeon/radeon_vce.c", i32 355, i32 3}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/radeon/radeon_vce.c", i32 391, i32 3}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/radeon/radeon_vce.c", i32 482, i32 3}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/radeon/radeon_vce.c", i32 496, i32 3}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/radeon/radeon_vce.c", i32 500, i32 3}
!69 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/radeon/radeon_vce.c", i32 569, i32 4}
!71 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/radeon/radeon_vce.c", i32 575, i32 4}
!73 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/radeon/radeon_vce.c", i32 596, i32 5}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/radeon/radeon_vce.c", i32 653, i32 4}
!77 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/radeon/radeon_vce.c", i32 659, i32 4}
!79 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/radeon/radeon_vce.c", i32 668, i32 3}
!81 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/radeon/radeon_vce.c", i32 763, i32 3}
!83 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/radeon/radeon_vce.c", i32 777, i32 3}
!85 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @radeon_vce_ring_test._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @radeon_vce_ring_test._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/radeon/radeon_vce.c", i32 780, i32 3}
!90 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/radeon/radeon_vce.c", i32 802, i32 3}
!92 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/radeon/radeon_vce.c", i32 808, i32 3}
!94 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/radeon/radeon_vce.c", i32 815, i32 3}
!96 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/radeon/radeon_vce.c", i32 817, i32 3}
!98 = !{ptr @.str.50, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/radeon/radeon_vce.c", i32 820, i32 3}
!100 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @radeon_vce_ib_test._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @radeon_vce_ib_test._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.52, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/radeon/radeon_object.h", i32 71, i32 4}
!105 = !{ptr @.str.53, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.54, !104, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @radeon_bo_reserve._entry, !104, !"_entry", i1 false, i1 false}
!108 = !{ptr @radeon_bo_reserve._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!109 = distinct !{null, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../include/drm/ttm/ttm_bo_driver.h", i32 140, i32 7}
!111 = !{ptr @.str.56, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/radeon/radeon_vce.c", i32 529, i32 5}
!113 = !{ptr @.str.57, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/radeon/radeon_vce.c", i32 546, i32 2}
!115 = !{ptr @.str.58, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/radeon/radeon.h", i32 2721, i32 3}
!117 = !{i32 1, !"wchar_size", i32 2}
!118 = !{i32 1, !"min_enum_size", i32 4}
!119 = !{i32 8, !"branch-target-enforcement", i32 0}
!120 = !{i32 8, !"sign-return-address", i32 0}
!121 = !{i32 8, !"sign-return-address-all", i32 0}
!122 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!123 = !{i32 7, !"uwtable", i32 1}
!124 = !{i32 7, !"frame-pointer", i32 2}
!125 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!126 = !{!"auto-init"}
!127 = !{i8 0, i8 2}
!128 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!129 = !{i64 2148680469}
!130 = !{i64 1064135, i64 1064159, i64 1064180, i64 1064197, i64 1064214}
!131 = !{i64 2148680695}
