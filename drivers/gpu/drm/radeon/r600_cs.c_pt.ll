; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/r600_cs.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/r600_cs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gpu_formats = type { i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.radeon_cs_packet = type { i32, i32, i32, i32, i32, i32 }
%struct.radeon_cs_parser = type { ptr, ptr, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, i32, ptr, ptr, ptr, ptr, %struct.radeon_ib, %struct.radeon_ib, ptr, i32, i32, i32, i32, i32, %struct.ww_acquire_ctx }
%struct.list_head = type { ptr, ptr }
%struct.radeon_ib = type { ptr, i32, i64, ptr, i32, ptr, ptr, i8, %struct.radeon_sync }
%struct.radeon_sync = type { [4 x ptr], [8 x ptr], ptr }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16, i32, ptr, ptr, %struct.lockdep_map, i32, i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.radeon_cs_chunk = type { i32, ptr, ptr }
%struct.radeon_device = type { ptr, ptr, ptr, ptr, %struct.rw_semaphore, %union.radeon_asic_config, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i16, ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.radeon_clock, %struct.radeon_mc, %struct.radeon_gart, %struct.radeon_mode_info, %struct.radeon_scratch, %struct.radeon_doorbell, %struct.radeon_mman, [8 x %struct.radeon_fence_driver], %struct.wait_queue_head, i64, %struct.mutex, [8 x %struct.radeon_ring], i8, %struct.radeon_sa_manager, %struct.radeon_irq, ptr, %struct.radeon_gem, %struct.radeon_pm, %struct.radeon_uvd, %struct.radeon_vce, [8 x i32], %struct.radeon_wb, %struct.radeon_dummy_page, i8, i8, i8, i8, i8, i8, [8 x %struct.radeon_surface_reg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.r600_vram_scratch, i32, %struct.r600_ih, %struct.radeon_rlc, %struct.radeon_mec, %struct.delayed_work, %struct.work_struct, %struct.work_struct, i32, %struct.mutex, i8, i8, %struct.r600_audio, %struct.notifier_block, ptr, ptr, [16 x ptr], %struct.radeon_vm_manager, %struct.mutex, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.radeon_atif, %struct.radeon_atcs, %struct.mutex, i32, i32, %struct.dev_pm_domain, i8, i32, i64, i64 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.r600_cs_track = type { i32, i32, i32, i32, i32, i32, [8 x i32], [8 x ptr], [8 x i64], [8 x i64], [8 x ptr], [8 x i64], [8 x ptr], [8 x i64], [8 x i32], [8 x i32], [8 x i32], [8 x i32], i32, i32, i8, [8 x i32], i32, i32, [4 x ptr], [4 x i64], [4 x i32], [4 x i32], i32, i32, i32, i32, i32, i32, ptr, i64, i8, i8, i8, i8, ptr, i64, i32 }
%struct.radeon_bo_list = type { ptr, %struct.ttm_validate_buffer, i64, i32, i32, i32 }
%struct.ttm_validate_buffer = type { %struct.list_head, ptr, i32 }
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

@color_formats_table = internal constant { [57 x %struct.gpu_formats], [268 x i8] } { [57 x %struct.gpu_formats] [%struct.gpu_formats zeroinitializer, %struct.gpu_formats { i32 1, i32 1, i32 1, i32 1, i32 27 }, %struct.gpu_formats { i32 1, i32 1, i32 1, i32 1, i32 27 }, %struct.gpu_formats { i32 1, i32 1, i32 1, i32 1, i32 27 }, %struct.gpu_formats zeroinitializer, %struct.gpu_formats { i32 1, i32 1, i32 2, i32 1, i32 27 }, %struct.gpu_formats { i32 1, i32 1, i32 2, i32 1, i32 27 }, %struct.gpu_formats { i32 1, i32 1, i32 2, i32 1, i32 27 }, %struct.gpu_formats { i32 1, i32 1, i32 2, i32 1, i32 27 }, %struct.gpu_formats { i32 1, i32 1, i32 2, i32 1, i32 27 }, %struct.gpu_formats { i32 1, i32 1, i32 2, i32 1, i32 27 }, %struct.gpu_formats { i32 1, i32 1, i32 2, i32 1, i32 27 }, %struct.gpu_formats { i32 1, i32 1, i32 2, i32 1, i32 27 }, %struct.gpu_formats { i32 1, i32 1, i32 4, i32 1, i32 27 }, %struct.gpu_formats { i32 1, i32 1, i32 4, i32 1, i32 27 }, %struct.gpu_formats { i32 1, i32 1, i32 4, i32 1, i32 27 }, %struct.gpu_formats { i32 1, i32 1, i32 4, i32 1, i32 27 }, %struct.gpu_formats { i32 1, i32 1, i32 4, i32 1, i32 27 }, %struct.gpu_formats { i32 1, i32 1, i32 4, i32 1, i32 27 }, %struct.gpu_formats { i32 1, i32 1, i32 4, i32 1, i32 27 }, %struct.gpu_formats { i32 1, i32 1, i32 4, i32 1, i32 27 }, %struct.gpu_formats { i32 1, i32 1, i32 4, i32 1, i32 27 }, %struct.gpu_formats { i32 1, i32 1, i32 4, i32 1, i32 27 }, %struct.gpu_formats { i32 1, i32 1, i32 4, i32 1, i32 27 }, %struct.gpu_formats { i32 1, i32 1, i32 4, i32 1, i32 27 }, %struct.gpu_formats { i32 1, i32 1, i32 4, i32 1, i32 27 }, %struct.gpu_formats { i32 1, i32 1, i32 4, i32 1, i32 27 }, %struct.gpu_formats { i32 1, i32 1, i32 4, i32 1, i32 27 }, %struct.gpu_formats { i32 1, i32 1, i32 8, i32 1, i32 27 }, %struct.gpu_formats { i32 1, i32 1, i32 8, i32 1, i32 27 }, %struct.gpu_formats { i32 1, i32 1, i32 8, i32 1, i32 27 }, %struct.gpu_formats { i32 1, i32 1, i32 8, i32 1, i32 27 }, %struct.gpu_formats { i32 1, i32 1, i32 8, i32 1, i32 27 }, %struct.gpu_formats zeroinitializer, %struct.gpu_formats { i32 1, i32 1, i32 16, i32 1, i32 27 }, %struct.gpu_formats { i32 1, i32 1, i32 16, i32 1, i32 27 }, %struct.gpu_formats zeroinitializer, %struct.gpu_formats { i32 1, i32 1, i32 1, i32 0, i32 27 }, %struct.gpu_formats zeroinitializer, %struct.gpu_formats { i32 2, i32 1, i32 4, i32 0, i32 0 }, %struct.gpu_formats { i32 2, i32 1, i32 4, i32 0, i32 0 }, %struct.gpu_formats { i32 1, i32 1, i32 4, i32 0, i32 27 }, %struct.gpu_formats { i32 1, i32 1, i32 4, i32 0, i32 27 }, %struct.gpu_formats { i32 1, i32 1, i32 4, i32 0, i32 27 }, %struct.gpu_formats { i32 1, i32 1, i32 4, i32 0, i32 27 }, %struct.gpu_formats { i32 1, i32 1, i32 8, i32 0, i32 27 }, %struct.gpu_formats { i32 1, i32 1, i32 8, i32 0, i32 27 }, %struct.gpu_formats { i32 1, i32 1, i32 12, i32 0, i32 27 }, %struct.gpu_formats { i32 1, i32 1, i32 12, i32 0, i32 27 }, %struct.gpu_formats { i32 4, i32 4, i32 8, i32 0, i32 0 }, %struct.gpu_formats { i32 4, i32 4, i32 16, i32 0, i32 0 }, %struct.gpu_formats { i32 4, i32 4, i32 16, i32 0, i32 0 }, %struct.gpu_formats { i32 4, i32 4, i32 8, i32 0, i32 0 }, %struct.gpu_formats { i32 4, i32 4, i32 16, i32 0, i32 0 }, %struct.gpu_formats { i32 4, i32 4, i32 16, i32 0, i32 39 }, %struct.gpu_formats { i32 4, i32 4, i32 16, i32 0, i32 39 }, %struct.gpu_formats { i32 1, i32 1, i32 4, i32 0, i32 39 }], [268 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"vline wait missing WAIT_REG_MEM segment\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"vline WAIT_REG_MEM waiting on MEM instead of REG\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"vline WAIT_REG_MEM waiting on PFP instead of ME\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"vline WAIT_REG_MEM function not equal\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"vline WAIT_REG_MEM bad reg\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"vline WAIT_REG_MEM bad bit mask\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cannot find crtc %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unknown crtc reloc\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unknown packet type %d !\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"No relocation chunk !\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Relocs at %d after relocations chunk end %d !\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Can not parse packet at %d after CS end %d !\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bad DMA_PACKET_WRITE\0A\00", [42 x i8] zeroinitializer }, align 32
@r600_dma_cs_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.15, i32 2423, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"DMA write buffer too small (%llu %lu)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"r600_dma_cs_parse\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/gpu/drm/radeon/r600_cs.c\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@r600_dma_cs_parse._entry_ptr = internal global ptr @r600_dma_cs_parse._entry, section ".printk_index", align 4
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bad DMA_PACKET_COPY\0A\00", [43 x i8] zeroinitializer }, align 32
@r600_dma_cs_parse._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.14, ptr @.str.15, i32 2490, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"DMA copy src buffer too small (%llu %lu)\0A\00", [54 x i8] zeroinitializer }, align 32
@r600_dma_cs_parse._entry_ptr.21 = internal global ptr @r600_dma_cs_parse._entry.19, section ".printk_index", align 4
@r600_dma_cs_parse._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.14, ptr @.str.15, i32 2495, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"DMA write dst buffer too small (%llu %lu)\0A\00", [53 x i8] zeroinitializer }, align 32
@r600_dma_cs_parse._entry_ptr.24 = internal global ptr @r600_dma_cs_parse._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Constant Fill is 7xx only !\0A\00", [35 x i8] zeroinitializer }, align 32
@r600_dma_cs_parse._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.14, ptr @.str.15, i32 2513, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"DMA constant fill buffer too small (%llu %lu)\0A\00", [49 x i8] zeroinitializer }, align 32
@r600_dma_cs_parse._entry_ptr.28 = internal global ptr @r600_dma_cs_parse._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unknown packet type %d at %d !\0A\00", [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"No reloc for ib[%d]=0x%04X\0A\00", [36 x i8] zeroinitializer }, align 32
@r600_packet0_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.15, i32 934, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013Forbidden register 0x%04X in cs at %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"r600_packet0_check\00", [45 x i8] zeroinitializer }, align 32
@r600_packet0_check._entry_ptr = internal global ptr @r600_packet0_check._entry, section ".printk_index", align 4
@r600_cs_packet_parse_vline.vline_start_end = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 25912, i32 27960], [24 x i8] zeroinitializer }, align 32
@r600_cs_packet_parse_vline.vline_status = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 25916, i32 27964], [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bad SET PREDICATION\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"bad SET PREDICATION operation %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bad START_3D\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bad CONTEXT_CONTROL\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bad INDEX_TYPE/NUM_INSTANCES\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bad DRAW_INDEX\0A\00", [16 x i8] zeroinitializer }, align 32
@r600_packet3_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.15, i32 1725, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s:%d invalid cmd stream\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"r600_packet3_check\00", [45 x i8] zeroinitializer }, align 32
@r600_packet3_check._entry_ptr = internal global ptr @r600_packet3_check._entry, section ".printk_index", align 4
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bad DRAW_INDEX_AUTO\0A\00", [43 x i8] zeroinitializer }, align 32
@r600_packet3_check._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.40, ptr @.str.15, i32 1737, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s:%d invalid cmd stream %d\0A\00", [35 x i8] zeroinitializer }, align 32
@r600_packet3_check._entry_ptr.44 = internal global ptr @r600_packet3_check._entry.42, section ".printk_index", align 4
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bad DRAW_INDEX_IMMD\0A\00", [43 x i8] zeroinitializer }, align 32
@r600_packet3_check._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.15, i32 1749, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@r600_packet3_check._entry_ptr.47 = internal global ptr @r600_packet3_check._entry.46, section ".printk_index", align 4
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bad WAIT_REG_MEM\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cannot use PFP on REG wait\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bad CP DMA\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"CP DMA SAS not supported\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"CP DMA SAIC only supported for registers\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bad CP DMA SRC\0A\00", [16 x i8] zeroinitializer }, align 32
@r600_packet3_check._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.40, ptr @.str.15, i32 1812, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"CP DMA src buffer too small (%llu %lu)\0A\00", [56 x i8] zeroinitializer }, align 32
@r600_packet3_check._entry_ptr.56 = internal global ptr @r600_packet3_check._entry.54, section ".printk_index", align 4
@.str.57 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"CP DMA DAS not supported\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"CP DMA DAIC only supported for registers\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bad CP DMA DST\0A\00", [16 x i8] zeroinitializer }, align 32
@r600_packet3_check._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.40, ptr @.str.15, i32 1842, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"CP DMA dst buffer too small (%llu %lu)\0A\00", [56 x i8] zeroinitializer }, align 32
@r600_packet3_check._entry_ptr.62 = internal global ptr @r600_packet3_check._entry.60, section ".printk_index", align 4
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bad SURFACE_SYNC\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bad EVENT_WRITE\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bad EVENT_WRITE_EOP\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bad PACKET3_SET_CONFIG_REG\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bad PACKET3_SET_CONTEXT_REG\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bad SET_RESOURCE\0A\00", [46 x i8] zeroinitializer }, align 32
@r600_packet3_check._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.40, ptr @.str.15, i32 2007, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"vbo resource seems too big (%d) for the bo (%ld)\0A\00", [46 x i8] zeroinitializer }, align 32
@r600_packet3_check._entry_ptr.71 = internal global ptr @r600_packet3_check._entry.69, section ".printk_index", align 4
@.str.72 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bad SET_ALU_CONST\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bad SET_BOOL_CONST\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bad SET_LOOP_CONST\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bad SET_CTL_CONST\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bad SET_SAMPLER\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"STRMOUT_BASE_UPDATE only supported on 7xx\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"bad STRMOUT_BASE_UPDATE packet count\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bad STRMOUT_BASE_UPDATE index\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bad STRMOUT_BASE_UPDATE reloc\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"bad STRMOUT_BASE_UPDATE, bo does not match\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"bad STRMOUT_BASE_UPDATE, bo offset does not match: 0x%llx, 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"bad STRMOUT_BASE_UPDATE bo too small: 0x%llx, 0x%lx\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bad SURFACE_BASE_UPDATE\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"bad STRMOUT_BUFFER_UPDATE (invalid count)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"bad STRMOUT_BUFFER_UPDATE (missing dst reloc)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"bad STRMOUT_BUFFER_UPDATE dst bo too small: 0x%llx, 0x%lx\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"bad STRMOUT_BUFFER_UPDATE (missing src reloc)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"bad STRMOUT_BUFFER_UPDATE src bo too small: 0x%llx, 0x%lx\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bad MEM_WRITE (invalid count)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bad MEM_WRITE (missing reloc)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"bad MEM_WRITE (address not qwords aligned)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"bad MEM_WRITE bo too small: 0x%llx, 0x%lx\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bad COPY_DW (invalid count)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bad COPY_DW (missing src reloc)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"bad COPY_DW src bo too small: 0x%llx, 0x%lx\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bad COPY_DW (missing dst reloc)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"bad COPY_DW dst bo too small: 0x%llx, 0x%lx\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Packet3 opcode %x not supported\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"streamout %d bo too small: 0x%llx, 0x%lx\0A\00", [54 x i8] zeroinitializer }, align 32
@r600_cs_track_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.15, i32 729, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"No buffer for streamout %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"r600_cs_track_check\00", [44 x i8] zeroinitializer }, align 32
@r600_cs_track_check._entry_ptr = internal global ptr @r600_cs_track_check._entry, section ".printk_index", align 4
@r600_cs_track_check._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.102, ptr @.str.15, i32 759, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s:%d mask 0x%08X | 0x%08X no cb for %d\0A\00", [55 x i8] zeroinitializer }, align 32
@r600_cs_track_check._entry_ptr.105 = internal global ptr @r600_cs_track_check._entry.103, section ".printk_index", align 4
@r600_cs_track_validate_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.15, i32 368, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s:%d cb invalid format %d for %d (0x%08X)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"r600_cs_track_validate_cb\00", [38 x i8] zeroinitializer }, align 32
@r600_cs_track_validate_cb._entry_ptr = internal global ptr @r600_cs_track_validate_cb._entry, section ".printk_index", align 4
@r600_cs_track_validate_cb._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.107, ptr @.str.15, i32 391, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s invalid tiling %d for %d (0x%08X)\0A\00", [58 x i8] zeroinitializer }, align 32
@r600_cs_track_validate_cb._entry_ptr.110 = internal global ptr @r600_cs_track_validate_cb._entry.108, section ".printk_index", align 4
@r600_cs_track_validate_cb._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.107, ptr @.str.15, i32 409, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@r600_cs_track_validate_cb._entry_ptr.112 = internal global ptr @r600_cs_track_validate_cb._entry.111, section ".printk_index", align 4
@r600_cs_track_validate_cb._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.107, ptr @.str.15, i32 415, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s:%d cb pitch (%d, 0x%x, %d) invalid\0A\00", [57 x i8] zeroinitializer }, align 32
@r600_cs_track_validate_cb._entry_ptr.115 = internal global ptr @r600_cs_track_validate_cb._entry.113, section ".printk_index", align 4
@r600_cs_track_validate_cb._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.107, ptr @.str.15, i32 420, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s:%d cb height (%d, 0x%x, %d) invalid\0A\00", [56 x i8] zeroinitializer }, align 32
@r600_cs_track_validate_cb._entry_ptr.118 = internal global ptr @r600_cs_track_validate_cb._entry.116, section ".printk_index", align 4
@r600_cs_track_validate_cb._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.107, ptr @.str.15, i32 425, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s offset[%d] 0x%llx 0x%llx, %d not aligned\0A\00", [51 x i8] zeroinitializer }, align 32
@r600_cs_track_validate_cb._entry_ptr.121 = internal global ptr @r600_cs_track_validate_cb._entry.119, section ".printk_index", align 4
@r600_cs_track_validate_cb._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.107, ptr @.str.15, i32 458, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s offset[%d] %d %llu %d %lu too big (%d %d) (%d %d %d)\0A\00", [39 x i8] zeroinitializer }, align 32
@r600_cs_track_validate_cb._entry_ptr.124 = internal global ptr @r600_cs_track_validate_cb._entry.122, section ".printk_index", align 4
@r600_cs_track_validate_cb._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.107, ptr @.str.15, i32 487, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"%s FMASK_TILE_MAX too large (tile_max=%u, bytes=%u, offset=%llu, bo_size=%lu)\0A\00", [49 x i8] zeroinitializer }, align 32
@r600_cs_track_validate_cb._entry_ptr.127 = internal global ptr @r600_cs_track_validate_cb._entry.125, section ".printk_index", align 4
@r600_cs_track_validate_cb._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.107, ptr @.str.15, i32 505, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"%s CMASK_BLOCK_MAX too large (block_max=%u, bytes=%u, offset=%llu, bo_size=%lu)\0A\00", [47 x i8] zeroinitializer }, align 32
@r600_cs_track_validate_cb._entry_ptr.130 = internal global ptr @r600_cs_track_validate_cb._entry.128, section ".printk_index", align 4
@r600_cs_track_validate_cb._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.107, ptr @.str.15, i32 511, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s invalid tile mode\0A\00", [42 x i8] zeroinitializer }, align 32
@r600_cs_track_validate_cb._entry_ptr.133 = internal global ptr @r600_cs_track_validate_cb._entry.131, section ".printk_index", align 4
@r600_cs_track_validate_db._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.135, ptr @.str.15, i32 531, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"z/stencil with no depth buffer\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"r600_cs_track_validate_db\00", [38 x i8] zeroinitializer }, align 32
@r600_cs_track_validate_db._entry_ptr = internal global ptr @r600_cs_track_validate_db._entry, section ".printk_index", align 4
@r600_cs_track_validate_db._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.135, ptr @.str.15, i32 549, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"z/stencil with invalid format %d\0A\00", [62 x i8] zeroinitializer }, align 32
@r600_cs_track_validate_db._entry_ptr.138 = internal global ptr @r600_cs_track_validate_db._entry.136, section ".printk_index", align 4
@r600_cs_track_validate_db._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.135, ptr @.str.15, i32 554, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"z/stencil buffer size not set\0A\00", [33 x i8] zeroinitializer }, align 32
@r600_cs_track_validate_db._entry_ptr.141 = internal global ptr @r600_cs_track_validate_db._entry.139, section ".printk_index", align 4
@r600_cs_track_validate_db._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.135, ptr @.str.15, i32 562, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"z/stencil buffer too small (0x%08X %d %d %ld)\0A\00", [49 x i8] zeroinitializer }, align 32
@r600_cs_track_validate_db._entry_ptr.144 = internal global ptr @r600_cs_track_validate_db._entry.142, section ".printk_index", align 4
@r600_cs_track_validate_db._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.135, ptr @.str.15, i32 586, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s invalid tiling %d (0x%08X)\0A\00", [33 x i8] zeroinitializer }, align 32
@r600_cs_track_validate_db._entry_ptr.147 = internal global ptr @r600_cs_track_validate_db._entry.145, section ".printk_index", align 4
@r600_cs_track_validate_db._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.135, ptr @.str.15, i32 599, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@r600_cs_track_validate_db._entry_ptr.149 = internal global ptr @r600_cs_track_validate_db._entry.148, section ".printk_index", align 4
@r600_cs_track_validate_db._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.135, ptr @.str.15, i32 605, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s:%d db pitch (%d, 0x%x, %d) invalid\0A\00", [57 x i8] zeroinitializer }, align 32
@r600_cs_track_validate_db._entry_ptr.152 = internal global ptr @r600_cs_track_validate_db._entry.150, section ".printk_index", align 4
@r600_cs_track_validate_db._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.135, ptr @.str.15, i32 610, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s:%d db height (%d, 0x%x, %d) invalid\0A\00", [56 x i8] zeroinitializer }, align 32
@r600_cs_track_validate_db._entry_ptr.155 = internal global ptr @r600_cs_track_validate_db._entry.153, section ".printk_index", align 4
@r600_cs_track_validate_db._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.135, ptr @.str.15, i32 615, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s offset 0x%llx, 0x%llx, %d not aligned\0A\00", [54 x i8] zeroinitializer }, align 32
@r600_cs_track_validate_db._entry_ptr.158 = internal global ptr @r600_cs_track_validate_db._entry.156, section ".printk_index", align 4
@r600_cs_track_validate_db._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.135, ptr @.str.15, i32 626, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"z/stencil buffer (%d) too small (0x%08X %d %d %d -> %u have %lu)\0A\00", [62 x i8] zeroinitializer }, align 32
@r600_cs_track_validate_db._entry_ptr.161 = internal global ptr @r600_cs_track_validate_db._entry.159, section ".printk_index", align 4
@r600_cs_track_validate_db._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.135, ptr @.str.15, i32 638, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s:%d htile enabled without htile surface 0x%08x\0A\00", [46 x i8] zeroinitializer }, align 32
@r600_cs_track_validate_db._entry_ptr.164 = internal global ptr @r600_cs_track_validate_db._entry.162, section ".printk_index", align 4
@r600_cs_track_validate_db._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.135, ptr @.str.15, i32 643, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s:%d htile can't be enabled with bogus db_depth_size 0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@r600_cs_track_validate_db._entry_ptr.167 = internal global ptr @r600_cs_track_validate_db._entry.165, section ".printk_index", align 4
@r600_cs_track_validate_db._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.135, ptr @.str.15, i32 682, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s:%d invalid num pipes %d\0A\00", [36 x i8] zeroinitializer }, align 32
@r600_cs_track_validate_db._entry_ptr.170 = internal global ptr @r600_cs_track_validate_db._entry.168, section ".printk_index", align 4
@r600_cs_track_validate_db._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.135, ptr @.str.15, i32 696, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s:%d htile surface too small %ld for %ld (%d %d)\0A\00", [45 x i8] zeroinitializer }, align 32
@r600_cs_track_validate_db._entry_ptr.173 = internal global ptr @r600_cs_track_validate_db._entry.171, section ".printk_index", align 4
@r600_cs_check_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.175, ptr @.str.15, i32 977, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"forbidden register 0x%08x at %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"r600_cs_check_reg\00", [46 x i8] zeroinitializer }, align 32
@r600_cs_check_reg._entry_ptr = internal global ptr @r600_cs_check_reg._entry, section ".printk_index", align 4
@r600_reg_safe_bm = internal constant { [1952 x i32], [1952 x i8] } { [1952 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -65537, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -17, i32 -1, i32 -805306369, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -70127617, i32 -817889281, i32 -1, i32 -33, i32 -1, i32 -983313, i32 -268435457, i32 -63, i32 -1, i32 -1, i32 -9, i32 -1, i32 -1, i32 -1, i32 -1, i32 -33, i32 -1, i32 -32770, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 -16, i32 -5, i32 -1, i32 -3, i32 -1, i32 -34, i32 -1, i32 -20481, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 0, i32 -256, i32 -1, i32 0, i32 0, i32 -256, i32 -1, i32 0, i32 0, i32 -256, i32 -1, i32 -262144, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -15361, i32 -1, i32 61695, i32 0, i32 843776, i32 0, i32 -3145728, i32 0, i32 0, i32 0, i32 0, i32 -32768, i32 98335, i32 -67108864, i32 -1, i32 -512, i32 2077228549, i32 -33030673, i32 -1, i32 -1, i32 -136183808, i32 -572547875, i32 -23555, i32 -1, i32 -324094, i32 -1, i32 -146457, i32 1073741823, i32 0, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -536870913], [1952 x i8] zeroinitializer }, align 32
@r600_cs_check_reg._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.175, ptr @.str.15, i32 1019, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bad SET_CONTEXT_REG 0x%04X\0A\00", [36 x i8] zeroinitializer }, align 32
@r600_cs_check_reg._entry_ptr.178 = internal global ptr @r600_cs_check_reg._entry.176, section ".printk_index", align 4
@r600_cs_check_reg._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.175, ptr @.str.15, i32 1037, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@r600_cs_check_reg._entry_ptr.180 = internal global ptr @r600_cs_check_reg._entry.179, section ".printk_index", align 4
@r600_cs_check_reg._entry.181 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.175, ptr @.str.15, i32 1079, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@r600_cs_check_reg._entry_ptr.182 = internal global ptr @r600_cs_check_reg._entry.181, section ".printk_index", align 4
@r600_cs_check_reg._entry.183 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.175, ptr @.str.15, i32 1102, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"missing reloc for CP_COHER_BASE 0x%04X\0A\00", [56 x i8] zeroinitializer }, align 32
@r600_cs_check_reg._entry_ptr.185 = internal global ptr @r600_cs_check_reg._entry.183, section ".printk_index", align 4
@r600_cs_check_reg._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.175, ptr @.str.15, i32 1137, ptr @.str.187, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@r600_cs_check_reg._entry_ptr.188 = internal global ptr @r600_cs_check_reg._entry.186, section ".printk_index", align 4
@r600_cs_check_reg._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.175, ptr @.str.15, i32 1200, ptr @.str.187, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"Broken old userspace ? no cb_color0_base supplied before trying to write 0x%08X\0A\00", [47 x i8] zeroinitializer }, align 32
@r600_cs_check_reg._entry_ptr.191 = internal global ptr @r600_cs_check_reg._entry.189, section ".printk_index", align 4
@r600_cs_check_reg._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.175, ptr @.str.15, i32 1209, ptr @.str.187, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@r600_cs_check_reg._entry_ptr.193 = internal global ptr @r600_cs_check_reg._entry.192, section ".printk_index", align 4
@r600_cs_check_reg._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.175, ptr @.str.15, i32 1231, ptr @.str.187, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@r600_cs_check_reg._entry_ptr.195 = internal global ptr @r600_cs_check_reg._entry.194, section ".printk_index", align 4
@r600_cs_check_reg._entry.196 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.175, ptr @.str.15, i32 1240, ptr @.str.187, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@r600_cs_check_reg._entry_ptr.197 = internal global ptr @r600_cs_check_reg._entry.196, section ".printk_index", align 4
@r600_cs_check_reg._entry.198 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.175, ptr @.str.15, i32 1276, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@r600_cs_check_reg._entry_ptr.199 = internal global ptr @r600_cs_check_reg._entry.198, section ".printk_index", align 4
@r600_cs_check_reg._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.175, ptr @.str.15, i32 1291, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@r600_cs_check_reg._entry_ptr.201 = internal global ptr @r600_cs_check_reg._entry.200, section ".printk_index", align 4
@r600_cs_check_reg._entry.202 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.175, ptr @.str.15, i32 1304, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@r600_cs_check_reg._entry_ptr.203 = internal global ptr @r600_cs_check_reg._entry.202, section ".printk_index", align 4
@r600_cs_check_reg._entry.204 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.175, ptr @.str.15, i32 1374, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@r600_cs_check_reg._entry_ptr.205 = internal global ptr @r600_cs_check_reg._entry.204, section ".printk_index", align 4
@r600_cs_check_reg._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.175, ptr @.str.15, i32 1383, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bad SET_CONFIG_REG 0x%04X\0A\00", [37 x i8] zeroinitializer }, align 32
@r600_cs_check_reg._entry_ptr.208 = internal global ptr @r600_cs_check_reg._entry.206, section ".printk_index", align 4
@r600_cs_check_reg._entry.209 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.175, ptr @.str.15, i32 1392, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@r600_cs_check_reg._entry_ptr.210 = internal global ptr @r600_cs_check_reg._entry.209, section ".printk_index", align 4
@r600_check_texture_resource._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.212, ptr @.str.15, i32 1548, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"this kernel doesn't support %d texture dim\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"r600_check_texture_resource\00", [36 x i8] zeroinitializer }, align 32
@r600_check_texture_resource._entry_ptr = internal global ptr @r600_check_texture_resource._entry, section ".printk_index", align 4
@r600_check_texture_resource._entry.213 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.212, ptr @.str.15, i32 1553, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s:%d texture invalid format %d\0A\00", [63 x i8] zeroinitializer }, align 32
@r600_check_texture_resource._entry_ptr.215 = internal global ptr @r600_check_texture_resource._entry.213, section ".printk_index", align 4
@r600_check_texture_resource._entry.216 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.217, ptr @.str.212, ptr @.str.15, i32 1560, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s:%d tex array mode (%d) invalid\0A\00", [61 x i8] zeroinitializer }, align 32
@r600_check_texture_resource._entry_ptr.218 = internal global ptr @r600_check_texture_resource._entry.216, section ".printk_index", align 4
@r600_check_texture_resource._entry.219 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.220, ptr @.str.212, ptr @.str.15, i32 1568, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s:%d tex pitch (%d, 0x%x, %d) invalid\0A\00", [56 x i8] zeroinitializer }, align 32
@r600_check_texture_resource._entry_ptr.221 = internal global ptr @r600_check_texture_resource._entry.219, section ".printk_index", align 4
@r600_check_texture_resource._entry.222 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.223, ptr @.str.212, ptr @.str.15, i32 1573, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s:%d tex base offset (0x%llx, 0x%llx, %d) invalid\0A\00", [44 x i8] zeroinitializer }, align 32
@r600_check_texture_resource._entry_ptr.224 = internal global ptr @r600_check_texture_resource._entry.222, section ".printk_index", align 4
@r600_check_texture_resource._entry.225 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.226, ptr @.str.212, ptr @.str.15, i32 1578, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s:%d tex mip offset (0x%llx, 0x%llx, %d) invalid\0A\00", [45 x i8] zeroinitializer }, align 32
@r600_check_texture_resource._entry_ptr.227 = internal global ptr @r600_check_texture_resource._entry.225, section ".printk_index", align 4
@r600_check_texture_resource._entry.228 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.229, ptr @.str.212, ptr @.str.15, i32 1584, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"texture blevel %d > llevel %d\0A\00", [33 x i8] zeroinitializer }, align 32
@r600_check_texture_resource._entry_ptr.230 = internal global ptr @r600_check_texture_resource._entry.228, section ".printk_index", align 4
@r600_check_texture_resource._entry.231 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.232, ptr @.str.212, ptr @.str.15, i32 1600, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"texture bo too small ((%d %d) (%d %d) %d %d %d -> %d have %ld)\0A\00", [32 x i8] zeroinitializer }, align 32
@r600_check_texture_resource._entry_ptr.233 = internal global ptr @r600_check_texture_resource._entry.231, section ".printk_index", align 4
@r600_check_texture_resource._entry.234 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.212, ptr @.str.15, i32 1601, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"alignments %d %d %d %lld\0A\00", [38 x i8] zeroinitializer }, align 32
@r600_check_texture_resource._entry_ptr.236 = internal global ptr @r600_check_texture_resource._entry.234, section ".printk_index", align 4
@r600_is_safe_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.237, ptr @.str.15, i32 1618, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"r600_is_safe_reg\00", [47 x i8] zeroinitializer }, align 32
@r600_is_safe_reg._entry_ptr = internal global ptr @r600_is_safe_reg._entry, section ".printk_index", align 4
@r600_is_safe_reg._entry.238 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.237, ptr @.str.15, i32 1624, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@r600_is_safe_reg._entry_ptr.239 = internal global ptr @r600_is_safe_reg._entry.238, section ".printk_index", align 4
@switch.table.r600_cs_track_check = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 2, i32 4, i32 4, i32 4, i32 4, i32 4, i32 8], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.240 = internal global [30 x i64] [i64 28, i64 32, i64 16, i64 32, i64 36, i64 40, i64 41, i64 42, i64 43, i64 45, i64 46, i64 47, i64 52, i64 59, i64 60, i64 61, i64 65, i64 67, i64 70, i64 71, i64 104, i64 105, i64 106, i64 107, i64 108, i64 109, i64 110, i64 111, i64 114, i64 115]
@__sancov_gen_cov_switch_values.241 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.242 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.243 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.244 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.245 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 13, i64 15]
@__sancov_gen_cov_switch_values.246 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.247 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.248 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.249 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.250 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.251 = internal global [159 x i64] [i64 157, i64 32, i64 34296, i64 35840, i64 35904, i64 35908, i64 35912, i64 35916, i64 35920, i64 35924, i64 35928, i64 35932, i64 35936, i64 35940, i64 35944, i64 35948, i64 35956, i64 35964, i64 36880, i64 163840, i64 163844, i64 163852, i64 163856, i64 163860, i64 163904, i64 163908, i64 163912, i64 163916, i64 163920, i64 163924, i64 163928, i64 163932, i64 163936, i64 163940, i64 163944, i64 163948, i64 163952, i64 163956, i64 163960, i64 163964, i64 163968, i64 163972, i64 163976, i64 163980, i64 163984, i64 163988, i64 163992, i64 163996, i64 164000, i64 164004, i64 164008, i64 164012, i64 164016, i64 164020, i64 164024, i64 164028, i64 164032, i64 164036, i64 164040, i64 164044, i64 164048, i64 164052, i64 164056, i64 164060, i64 164064, i64 164068, i64 164072, i64 164076, i64 164080, i64 164084, i64 164088, i64 164092, i64 164096, i64 164100, i64 164104, i64 164108, i64 164112, i64 164116, i64 164120, i64 164124, i64 164408, i64 164412, i64 164688, i64 165888, i64 165896, i64 165952, i64 165976, i64 165996, i64 166016, i64 166036, i64 166056, i64 166060, i64 166064, i64 166068, i64 166072, i64 166076, i64 166080, i64 166084, i64 166088, i64 166208, i64 166212, i64 166216, i64 166220, i64 166224, i64 166228, i64 166232, i64 166236, i64 166240, i64 166244, i64 166248, i64 166252, i64 166256, i64 166260, i64 166264, i64 166268, i64 166272, i64 166276, i64 166280, i64 166284, i64 166288, i64 166292, i64 166296, i64 166300, i64 166304, i64 166308, i64 166312, i64 166316, i64 166320, i64 166324, i64 166328, i64 166332, i64 166336, i64 166340, i64 166344, i64 166348, i64 166352, i64 166356, i64 166360, i64 166364, i64 166368, i64 166372, i64 166376, i64 166380, i64 166384, i64 166388, i64 166392, i64 166396, i64 166576, i64 166608, i64 166616, i64 166624, i64 166632, i64 166640, i64 166648, i64 166656, i64 166664, i64 166688, i64 166916, i64 167204]
@___asan_gen_.252 = private unnamed_addr constant [20 x i8] c"color_formats_table\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 105, i32 33 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 846, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 853, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 858, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 863, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 867, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 872, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 891, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 912, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 2311, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 2351, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 2356, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 2390, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 2404, i32 5 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 2422, i32 5 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 2430, i32 5 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 2489, i32 5 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 2494, i32 5 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 2501, i32 5 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 2512, i32 5 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 2524, i32 4 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 928, i32 4 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 934, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant [16 x i8] c"vline_start_end\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 795, i32 18 }
@___asan_gen_.354 = private unnamed_addr constant [13 x i8] c"vline_status\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 797, i32 18 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1653, i32 4 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1665, i32 4 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1686, i32 4 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1692, i32 4 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1699, i32 4 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1707, i32 4 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1725, i32 4 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1732, i32 4 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1737, i32 4 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1744, i32 4 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1749, i32 4 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1755, i32 4 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1775, i32 4 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1784, i32 4 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1791, i32 4 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1795, i32 5 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1801, i32 5 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1811, i32 5 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1821, i32 4 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1826, i32 5 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1831, i32 5 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1841, i32 5 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1853, i32 4 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1869, i32 4 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1893, i32 4 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1916, i32 4 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1932, i32 4 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1944, i32 4 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 2006, i32 6 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 2032, i32 5 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 2043, i32 4 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 2053, i32 4 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 2063, i32 4 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 2069, i32 4 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 2084, i32 4 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 2088, i32 4 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 2092, i32 4 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 2100, i32 5 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 2105, i32 5 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 2111, i32 5 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 2117, i32 5 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 2126, i32 4 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 2136, i32 4 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 2144, i32 5 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 2150, i32 5 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 2163, i32 5 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 2169, i32 5 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 2183, i32 4 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 2188, i32 4 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 2194, i32 4 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 2198, i32 4 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 2209, i32 4 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 2217, i32 5 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 2223, i32 5 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 2241, i32 5 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 2247, i32 5 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 2264, i32 3 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 723, i32 7 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 729, i32 6 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 758, i32 6 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 366, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 389, i32 3 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 407, i32 3 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 414, i32 3 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 419, i32 3 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 424, i32 3 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 452, i32 4 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 483, i32 5 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 501, i32 4 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 511, i32 3 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 531, i32 3 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 549, i32 3 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 554, i32 4 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 560, i32 4 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 584, i32 4 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 597, i32 4 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 604, i32 4 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 609, i32 4 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 614, i32 4 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 623, i32 4 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 637, i32 4 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 642, i32 4 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 681, i32 5 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 694, i32 4 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 977, i32 3 }
@___asan_gen_.717 = private unnamed_addr constant [17 x i8] c"r600_reg_safe_bm\00", align 1
@___asan_gen_.718 = private unnamed_addr constant [41 x i8] c"./drivers/gpu/drm/radeon/r600_reg_safe.h\00", align 1
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.718, i32 1, i32 23 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1018, i32 4 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1036, i32 5 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1078, i32 4 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1101, i32 4 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1137, i32 5 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1200, i32 5 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1209, i32 5 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1231, i32 5 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1240, i32 5 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1275, i32 4 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1290, i32 4 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1303, i32 4 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1373, i32 4 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1382, i32 4 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1392, i32 3 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1548, i32 3 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1552, i32 3 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1559, i32 3 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1567, i32 3 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1572, i32 3 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1577, i32 3 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1583, i32 3 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1597, i32 3 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1601, i32 3 }
@___asan_gen_.840 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1618, i32 3 }
@___asan_gen_.843 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.844 = private constant [36 x i8] c"../drivers/gpu/drm/radeon/r600_cs.c\00", align 1
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.844, i32 1624, i32 2 }
@___asan_gen_.846 = private unnamed_addr constant [33 x i8] c"switch.table.r600_cs_track_check\00", align 1
@llvm.compiler.used = appending global [263 x ptr] [ptr @r600_check_texture_resource._entry, ptr @r600_check_texture_resource._entry.213, ptr @r600_check_texture_resource._entry.216, ptr @r600_check_texture_resource._entry.219, ptr @r600_check_texture_resource._entry.222, ptr @r600_check_texture_resource._entry.225, ptr @r600_check_texture_resource._entry.228, ptr @r600_check_texture_resource._entry.231, ptr @r600_check_texture_resource._entry.234, ptr @r600_check_texture_resource._entry_ptr, ptr @r600_check_texture_resource._entry_ptr.215, ptr @r600_check_texture_resource._entry_ptr.218, ptr @r600_check_texture_resource._entry_ptr.221, ptr @r600_check_texture_resource._entry_ptr.224, ptr @r600_check_texture_resource._entry_ptr.227, ptr @r600_check_texture_resource._entry_ptr.230, ptr @r600_check_texture_resource._entry_ptr.233, ptr @r600_check_texture_resource._entry_ptr.236, ptr @r600_cs_check_reg._entry, ptr @r600_cs_check_reg._entry.176, ptr @r600_cs_check_reg._entry.179, ptr @r600_cs_check_reg._entry.181, ptr @r600_cs_check_reg._entry.183, ptr @r600_cs_check_reg._entry.186, ptr @r600_cs_check_reg._entry.189, ptr @r600_cs_check_reg._entry.192, ptr @r600_cs_check_reg._entry.194, ptr @r600_cs_check_reg._entry.196, ptr @r600_cs_check_reg._entry.198, ptr @r600_cs_check_reg._entry.200, ptr @r600_cs_check_reg._entry.202, ptr @r600_cs_check_reg._entry.204, ptr @r600_cs_check_reg._entry.206, ptr @r600_cs_check_reg._entry.209, ptr @r600_cs_check_reg._entry_ptr, ptr @r600_cs_check_reg._entry_ptr.178, ptr @r600_cs_check_reg._entry_ptr.180, ptr @r600_cs_check_reg._entry_ptr.182, ptr @r600_cs_check_reg._entry_ptr.185, ptr @r600_cs_check_reg._entry_ptr.188, ptr @r600_cs_check_reg._entry_ptr.191, ptr @r600_cs_check_reg._entry_ptr.193, ptr @r600_cs_check_reg._entry_ptr.195, ptr @r600_cs_check_reg._entry_ptr.197, ptr @r600_cs_check_reg._entry_ptr.199, ptr @r600_cs_check_reg._entry_ptr.201, ptr @r600_cs_check_reg._entry_ptr.203, ptr @r600_cs_check_reg._entry_ptr.205, ptr @r600_cs_check_reg._entry_ptr.208, ptr @r600_cs_check_reg._entry_ptr.210, ptr @r600_cs_track_check._entry, ptr @r600_cs_track_check._entry.103, ptr @r600_cs_track_check._entry_ptr, ptr @r600_cs_track_check._entry_ptr.105, ptr @r600_cs_track_validate_cb._entry, ptr @r600_cs_track_validate_cb._entry.108, ptr @r600_cs_track_validate_cb._entry.111, ptr @r600_cs_track_validate_cb._entry.113, ptr @r600_cs_track_validate_cb._entry.116, ptr @r600_cs_track_validate_cb._entry.119, ptr @r600_cs_track_validate_cb._entry.122, ptr @r600_cs_track_validate_cb._entry.125, ptr @r600_cs_track_validate_cb._entry.128, ptr @r600_cs_track_validate_cb._entry.131, ptr @r600_cs_track_validate_cb._entry_ptr, ptr @r600_cs_track_validate_cb._entry_ptr.110, ptr @r600_cs_track_validate_cb._entry_ptr.112, ptr @r600_cs_track_validate_cb._entry_ptr.115, ptr @r600_cs_track_validate_cb._entry_ptr.118, ptr @r600_cs_track_validate_cb._entry_ptr.121, ptr @r600_cs_track_validate_cb._entry_ptr.124, ptr @r600_cs_track_validate_cb._entry_ptr.127, ptr @r600_cs_track_validate_cb._entry_ptr.130, ptr @r600_cs_track_validate_cb._entry_ptr.133, ptr @r600_cs_track_validate_db._entry, ptr @r600_cs_track_validate_db._entry.136, ptr @r600_cs_track_validate_db._entry.139, ptr @r600_cs_track_validate_db._entry.142, ptr @r600_cs_track_validate_db._entry.145, ptr @r600_cs_track_validate_db._entry.148, ptr @r600_cs_track_validate_db._entry.150, ptr @r600_cs_track_validate_db._entry.153, ptr @r600_cs_track_validate_db._entry.156, ptr @r600_cs_track_validate_db._entry.159, ptr @r600_cs_track_validate_db._entry.162, ptr @r600_cs_track_validate_db._entry.165, ptr @r600_cs_track_validate_db._entry.168, ptr @r600_cs_track_validate_db._entry.171, ptr @r600_cs_track_validate_db._entry_ptr, ptr @r600_cs_track_validate_db._entry_ptr.138, ptr @r600_cs_track_validate_db._entry_ptr.141, ptr @r600_cs_track_validate_db._entry_ptr.144, ptr @r600_cs_track_validate_db._entry_ptr.147, ptr @r600_cs_track_validate_db._entry_ptr.149, ptr @r600_cs_track_validate_db._entry_ptr.152, ptr @r600_cs_track_validate_db._entry_ptr.155, ptr @r600_cs_track_validate_db._entry_ptr.158, ptr @r600_cs_track_validate_db._entry_ptr.161, ptr @r600_cs_track_validate_db._entry_ptr.164, ptr @r600_cs_track_validate_db._entry_ptr.167, ptr @r600_cs_track_validate_db._entry_ptr.170, ptr @r600_cs_track_validate_db._entry_ptr.173, ptr @r600_dma_cs_parse._entry, ptr @r600_dma_cs_parse._entry.19, ptr @r600_dma_cs_parse._entry.22, ptr @r600_dma_cs_parse._entry.26, ptr @r600_dma_cs_parse._entry_ptr, ptr @r600_dma_cs_parse._entry_ptr.21, ptr @r600_dma_cs_parse._entry_ptr.24, ptr @r600_dma_cs_parse._entry_ptr.28, ptr @r600_is_safe_reg._entry, ptr @r600_is_safe_reg._entry.238, ptr @r600_is_safe_reg._entry_ptr, ptr @r600_is_safe_reg._entry_ptr.239, ptr @r600_packet0_check._entry, ptr @r600_packet0_check._entry_ptr, ptr @r600_packet3_check._entry, ptr @r600_packet3_check._entry.42, ptr @r600_packet3_check._entry.46, ptr @r600_packet3_check._entry.54, ptr @r600_packet3_check._entry.60, ptr @r600_packet3_check._entry.69, ptr @r600_packet3_check._entry_ptr, ptr @r600_packet3_check._entry_ptr.44, ptr @r600_packet3_check._entry_ptr.47, ptr @r600_packet3_check._entry_ptr.56, ptr @r600_packet3_check._entry_ptr.62, ptr @r600_packet3_check._entry_ptr.71, ptr @color_formats_table, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @r600_cs_packet_parse_vline.vline_start_end, ptr @r600_cs_packet_parse_vline.vline_status, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.104, ptr @.str.106, ptr @.str.107, ptr @.str.109, ptr @.str.114, ptr @.str.117, ptr @.str.120, ptr @.str.123, ptr @.str.126, ptr @.str.129, ptr @.str.132, ptr @.str.134, ptr @.str.135, ptr @.str.137, ptr @.str.140, ptr @.str.143, ptr @.str.146, ptr @.str.151, ptr @.str.154, ptr @.str.157, ptr @.str.160, ptr @.str.163, ptr @.str.166, ptr @.str.169, ptr @.str.172, ptr @.str.174, ptr @.str.175, ptr @r600_reg_safe_bm, ptr @.str.177, ptr @.str.184, ptr @.str.187, ptr @.str.190, ptr @.str.207, ptr @.str.211, ptr @.str.212, ptr @.str.214, ptr @.str.217, ptr @.str.220, ptr @.str.223, ptr @.str.226, ptr @.str.229, ptr @.str.232, ptr @.str.235, ptr @.str.237, ptr @switch.table.r600_cs_track_check], section "llvm.metadata"
@0 = internal global [199 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @color_formats_table to i32), i32 1140, i32 1408, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_dma_cs_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_dma_cs_parse._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_dma_cs_parse._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_dma_cs_parse._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_packet0_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_cs_packet_parse_vline.vline_start_end to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_cs_packet_parse_vline.vline_status to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_packet3_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_packet3_check._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_packet3_check._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_packet3_check._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_packet3_check._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_packet3_check._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_cs_track_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_cs_track_check._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_cs_track_validate_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_cs_track_validate_cb._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_cs_track_validate_cb._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_cs_track_validate_cb._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_cs_track_validate_cb._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_cs_track_validate_cb._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_cs_track_validate_cb._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_cs_track_validate_cb._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_cs_track_validate_cb._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_cs_track_validate_cb._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_cs_track_validate_db._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_cs_track_validate_db._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_cs_track_validate_db._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_cs_track_validate_db._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_cs_track_validate_db._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_cs_track_validate_db._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_cs_track_validate_db._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_cs_track_validate_db._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_cs_track_validate_db._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_cs_track_validate_db._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_cs_track_validate_db._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_cs_track_validate_db._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_cs_track_validate_db._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_cs_track_validate_db._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_cs_check_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_reg_safe_bm to i32), i32 7808, i32 9760, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_cs_check_reg._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_cs_check_reg._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_cs_check_reg._entry.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_cs_check_reg._entry.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_cs_check_reg._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_cs_check_reg._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_cs_check_reg._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_cs_check_reg._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_cs_check_reg._entry.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_cs_check_reg._entry.198 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_cs_check_reg._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_cs_check_reg._entry.202 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_cs_check_reg._entry.204 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_cs_check_reg._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_cs_check_reg._entry.209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_check_texture_resource._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_check_texture_resource._entry.213 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_check_texture_resource._entry.216 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_check_texture_resource._entry.219 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_check_texture_resource._entry.222 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_check_texture_resource._entry.225 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_check_texture_resource._entry.228 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_check_texture_resource._entry.231 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_check_texture_resource._entry.234 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_is_safe_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_is_safe_reg._entry.238 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.r600_cs_track_check to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @r600_fmt_is_valid_color(i32 noundef %format) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %format)
  %cmp = icmp ugt i32 %format, 56
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %valid_color = getelementptr [57 x %struct.gpu_formats], ptr @color_formats_table, i32 0, i32 %format, i32 3
  %0 = ptrtoint ptr %valid_color to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %valid_color, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp ne i32 %1, 0
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ %tobool.not, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @r600_fmt_is_valid_texture(i32 noundef %format, i32 noundef %family) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %format)
  %cmp = icmp ugt i32 %format, 56
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %min_family = getelementptr [57 x %struct.gpu_formats], ptr @color_formats_table, i32 0, i32 %format, i32 4
  %0 = ptrtoint ptr %min_family to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %min_family, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %family)
  %cmp1 = icmp ugt i32 %1, %family
  br i1 %cmp1, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr [57 x %struct.gpu_formats], ptr @color_formats_table, i32 0, i32 %format
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp5.not = icmp ne i32 %3, 0
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ], [ %cmp5.not, %if.end3 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @r600_fmt_get_blocksize(i32 noundef %format) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %format)
  %cmp = icmp ugt i32 %format, 56
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %blocksize = getelementptr [57 x %struct.gpu_formats], ptr @color_formats_table, i32 0, i32 %format, i32 2
  %0 = ptrtoint ptr %blocksize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %blocksize, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %1, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @r600_fmt_get_nblocksx(i32 noundef %format, i32 noundef %w) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %format)
  %cmp = icmp ugt i32 %format, 56
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [57 x %struct.gpu_formats], ptr @color_formats_table, i32 0, i32 %format
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add = add i32 %w, -1
  %sub = add i32 %add, %1
  %div = udiv i32 %sub, %1
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div, %if.end3 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @r600_fmt_get_nblocksy(i32 noundef %format, i32 noundef %h) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %format)
  %cmp = icmp ugt i32 %format, 56
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %blockheight = getelementptr [57 x %struct.gpu_formats], ptr @color_formats_table, i32 0, i32 %format, i32 1
  %0 = ptrtoint ptr %blockheight to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %blockheight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add = add i32 %h, -1
  %sub = add i32 %add, %1
  %div = udiv i32 %sub, %1
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div, %if.end3 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r600_cs_common_vline_parse(ptr noundef %p, ptr nocapture noundef readonly %vline_start_end, ptr nocapture noundef readonly %vline_status) local_unnamed_addr #2 align 64 {
entry:
  %p3reloc = alloca %struct.radeon_cs_packet, align 4
  %wait_reg_mem = alloca %struct.radeon_cs_packet, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %p3reloc) #8
  %0 = getelementptr inbounds %struct.radeon_cs_packet, ptr %p3reloc, i32 0, i32 4
  %1 = call ptr @memset(ptr %p3reloc, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %wait_reg_mem) #8
  %2 = getelementptr inbounds %struct.radeon_cs_packet, ptr %wait_reg_mem, i32 0, i32 3
  %3 = getelementptr inbounds %struct.radeon_cs_packet, ptr %wait_reg_mem, i32 0, i32 4
  %ptr = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 16, i32 3
  %4 = call ptr @memset(ptr %wait_reg_mem, i32 255, i32 24)
  %5 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ptr, align 8
  %idx = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 6
  %7 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idx, align 8
  %call = call i32 @radeon_cs_packet_parse(ptr noundef %p, ptr noundef nonnull %wait_reg_mem, i32 noundef %8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = getelementptr inbounds %struct.radeon_cs_packet, ptr %wait_reg_mem, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp.not = icmp eq i32 %11, 3
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.if.then3_crit_edge

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

lor.lhs.false:                                    ; preds = %if.end
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %13)
  %cmp2.not = icmp eq i32 %13, 60
  br i1 %cmp2.not, label %if.end4, label %lor.lhs.false.if.then3_crit_edge

lor.lhs.false.if.then3_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

if.then3:                                         ; preds = %lor.lhs.false.if.then3_crit_edge, %if.end.if.then3_crit_edge
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #8
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %14 = ptrtoint ptr %wait_reg_mem to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wait_reg_mem, align 4
  %add = add i32 %15, 1
  %chunk_ib.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %16 = ptrtoint ptr %chunk_ib.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chunk_ib.i, align 4
  %kdata.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %kdata.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %kdata.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end4.radeon_get_ib_value.exit_crit_edge

if.end4.radeon_get_ib_value.exit_crit_edge:       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_get_ib_value.exit

if.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ptr, align 8
  br label %radeon_get_ib_value.exit

radeon_get_ib_value.exit:                         ; preds = %if.end.i, %if.end4.radeon_get_ib_value.exit_crit_edge
  %.pn.i = phi ptr [ %21, %if.end.i ], [ %19, %if.end4.radeon_get_ib_value.exit_crit_edge ]
  %retval.0.in.i = getelementptr i32, ptr %.pn.i, i32 %add
  %22 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %retval.0.i = load i32, ptr %retval.0.in.i, align 4
  %and = and i32 %retval.0.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %radeon_get_ib_value.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end9:                                          ; preds = %radeon_get_ib_value.exit
  %and10 = and i32 %retval.0.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %and14 = and i32 %retval.0.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and14)
  %cmp15.not = icmp eq i32 %and14, 3
  br i1 %cmp15.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #8
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %add19 = add i32 %15, 2
  br i1 %tobool.not.i, label %radeon_get_ib_value.exit152, label %radeon_get_ib_value.exit152.thread

radeon_get_ib_value.exit152:                      ; preds = %if.end17
  %23 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ptr, align 8
  %retval.0.in.i150 = getelementptr i32, ptr %24, i32 %add19
  %25 = ptrtoint ptr %retval.0.in.i150 to i32
  call void @__asan_load4_noabort(i32 %25)
  %retval.0.i151 = load i32, ptr %retval.0.in.i150, align 4
  %shl = shl i32 %retval.0.i151, 2
  %26 = ptrtoint ptr %vline_status to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vline_status, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %27)
  %cmp21.not = icmp eq i32 %shl, %27
  br i1 %cmp21.not, label %if.end.i157, label %radeon_get_ib_value.exit152.if.then22_crit_edge

radeon_get_ib_value.exit152.if.then22_crit_edge:  ; preds = %radeon_get_ib_value.exit152
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22

radeon_get_ib_value.exit152.thread:               ; preds = %if.end17
  %retval.0.in.i150182 = getelementptr i32, ptr %19, i32 %add19
  %28 = ptrtoint ptr %retval.0.in.i150182 to i32
  call void @__asan_load4_noabort(i32 %28)
  %retval.0.i151183 = load i32, ptr %retval.0.in.i150182, align 4
  %shl184 = shl i32 %retval.0.i151183, 2
  %29 = ptrtoint ptr %vline_status to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vline_status, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl184, i32 %30)
  %cmp21.not185 = icmp eq i32 %shl184, %30
  br i1 %cmp21.not185, label %radeon_get_ib_value.exit152.thread.radeon_get_ib_value.exit161_crit_edge, label %radeon_get_ib_value.exit152.thread.if.then22_crit_edge

radeon_get_ib_value.exit152.thread.if.then22_crit_edge: ; preds = %radeon_get_ib_value.exit152.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22

radeon_get_ib_value.exit152.thread.radeon_get_ib_value.exit161_crit_edge: ; preds = %radeon_get_ib_value.exit152.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_get_ib_value.exit161

if.then22:                                        ; preds = %radeon_get_ib_value.exit152.thread.if.then22_crit_edge, %radeon_get_ib_value.exit152.if.then22_crit_edge
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #8
  br label %cleanup

if.end.i157:                                      ; preds = %radeon_get_ib_value.exit152
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ptr, align 8
  br label %radeon_get_ib_value.exit161

radeon_get_ib_value.exit161:                      ; preds = %if.end.i157, %radeon_get_ib_value.exit152.thread.radeon_get_ib_value.exit161_crit_edge
  %.pn.i158 = phi ptr [ %32, %if.end.i157 ], [ %19, %radeon_get_ib_value.exit152.thread.radeon_get_ib_value.exit161_crit_edge ]
  %add25187 = add i32 %15, 5
  %retval.0.in.i159 = getelementptr i32, ptr %.pn.i158, i32 %add25187
  %33 = ptrtoint ptr %retval.0.in.i159 to i32
  call void @__asan_load4_noabort(i32 %33)
  %retval.0.i160 = load i32, ptr %retval.0.in.i159, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %retval.0.i160)
  %cmp27.not = icmp eq i32 %retval.0.i160, 4096
  br i1 %cmp27.not, label %if.end29, label %if.then28

if.then28:                                        ; preds = %radeon_get_ib_value.exit161
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #8
  br label %cleanup

if.end29:                                         ; preds = %radeon_get_ib_value.exit161
  %34 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %idx, align 8
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %3, align 4
  %add31 = add i32 %35, 2
  %add32 = add i32 %add31, %37
  %call33 = call i32 @radeon_cs_packet_parse(ptr noundef %p, ptr noundef nonnull %p3reloc, i32 noundef %add32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end36:                                         ; preds = %if.end29
  %38 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %idx, align 8
  %sub = add i32 %39, -2
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %3, align 4
  %add39 = add i32 %39, 2
  %add41 = add i32 %add39, %41
  %42 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %0, align 4
  %add43 = add i32 %43, 2
  %add45 = add i32 %add43, %add41
  store i32 %add45, ptr %idx, align 8
  %44 = ptrtoint ptr %chunk_ib.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %chunk_ib.i, align 4
  %kdata.i163 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %kdata.i163 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %kdata.i163, align 4
  %tobool.not.i164 = icmp eq ptr %47, null
  br i1 %tobool.not.i164, label %if.end.i175, label %if.end36.radeon_get_ib_value.exit179_crit_edge

if.end36.radeon_get_ib_value.exit179_crit_edge:   ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_get_ib_value.exit179

if.end.i175:                                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ptr, align 8
  br label %radeon_get_ib_value.exit179

radeon_get_ib_value.exit179:                      ; preds = %if.end.i175, %if.end36.radeon_get_ib_value.exit179_crit_edge
  %.pn = phi ptr [ %49, %if.end.i175 ], [ %47, %if.end36.radeon_get_ib_value.exit179_crit_edge ]
  %retval.0.i169192.in = getelementptr i32, ptr %.pn, i32 %sub
  %50 = ptrtoint ptr %retval.0.i169192.in to i32
  call void @__asan_load4_noabort(i32 %50)
  %retval.0.i169192 = load i32, ptr %retval.0.i169192.in, align 4
  %add49194 = add i32 %39, 8
  %retval.0.in.i177 = getelementptr i32, ptr %.pn, i32 %add49194
  %51 = ptrtoint ptr %retval.0.in.i177 to i32
  call void @__asan_load4_noabort(i32 %51)
  %retval.0.i178 = load i32, ptr %retval.0.in.i177, align 4
  %and51 = shl i32 %retval.0.i169192, 2
  %shl52 = and i32 %and51, 262140
  %rdev = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 1
  %52 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rdev, align 4
  %ddev = getelementptr inbounds %struct.radeon_device, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ddev, align 4
  %filp = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 2
  %56 = ptrtoint ptr %filp to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %filp, align 8
  %call.i = call ptr @drm_mode_object_find(ptr noundef %55, ptr noundef %57, i32 noundef %retval.0.i178, i32 noundef -858993460) #8
  %tobool.not.i180 = icmp eq ptr %call.i, null
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 -128
  %tobool54.not196 = icmp eq ptr %add.ptr.i, null
  %tobool54.not = or i1 %tobool.not.i180, %tobool54.not196
  br i1 %tobool54.not, label %if.then55, label %if.end56

if.then55:                                        ; preds = %radeon_get_ib_value.exit179
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6, i32 noundef %retval.0.i178) #8
  br label %cleanup

if.end56:                                         ; preds = %radeon_get_ib_value.exit179
  %crtc_id57 = getelementptr i8, ptr %call.i, i32 864
  %58 = ptrtoint ptr %crtc_id57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %crtc_id57, align 8
  %enabled = getelementptr i8, ptr %call.i, i32 40
  %60 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %enabled, align 8, !range !410
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool58.not = icmp eq i8 %61, 0
  br i1 %tobool58.not, label %if.then59, label %if.else

if.then59:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx61 = getelementptr i32, ptr %6, i32 %39
  %62 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile i32 -2147483648, ptr %arrayidx61, align 4
  %add62 = add i32 %39, 1
  %arrayidx63 = getelementptr i32, ptr %6, i32 %add62
  %63 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile i32 -2147483648, ptr %arrayidx63, align 4
  %arrayidx65 = getelementptr i32, ptr %6, i32 %add39
  %64 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile i32 -2147483648, ptr %arrayidx65, align 4
  %add66 = add i32 %39, 3
  %arrayidx67 = getelementptr i32, ptr %6, i32 %add66
  %65 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile i32 -2147483648, ptr %arrayidx67, align 4
  %add68 = add i32 %39, 4
  %arrayidx69 = getelementptr i32, ptr %6, i32 %add68
  %66 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile i32 -2147483648, ptr %arrayidx69, align 4
  %add70 = add i32 %39, 5
  %arrayidx71 = getelementptr i32, ptr %6, i32 %add70
  %67 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile i32 -2147483648, ptr %arrayidx71, align 4
  %add72 = add i32 %39, 6
  %arrayidx73 = getelementptr i32, ptr %6, i32 %add72
  %68 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile i32 -2147483648, ptr %arrayidx73, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end56
  %69 = ptrtoint ptr %vline_start_end to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %vline_start_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl52, i32 %70)
  %cmp75 = icmp eq i32 %shl52, %70
  br i1 %cmp75, label %if.then76, label %if.else84

if.then76:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %and77 = and i32 %retval.0.i169192, -65536
  %arrayidx78 = getelementptr i32, ptr %vline_start_end, i32 %59
  %71 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx78, align 4
  %shr = lshr i32 %72, 2
  %or = or i32 %shr, %and77
  %arrayidx79 = getelementptr i32, ptr %6, i32 %sub
  %73 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile i32 %or, ptr %arrayidx79, align 4
  %arrayidx80 = getelementptr i32, ptr %vline_status, i32 %59
  %74 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx80, align 4
  %shr81 = lshr i32 %75, 2
  %arrayidx83 = getelementptr i32, ptr %6, i32 %add39
  %76 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile i32 %shr81, ptr %arrayidx83, align 4
  br label %cleanup

if.else84:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else84, %if.then76, %if.then59, %if.then55, %if.end29.cleanup_crit_edge, %if.then28, %if.then22, %if.then16, %if.then12, %if.then8, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then3 ], [ -22, %if.then8 ], [ -22, %if.then12 ], [ -22, %if.then16 ], [ -22, %if.then22 ], [ -22, %if.then28 ], [ -22, %if.else84 ], [ -2, %if.then55 ], [ %call, %entry.cleanup_crit_edge ], [ %call33, %if.end29.cleanup_crit_edge ], [ 0, %if.then76 ], [ 0, %if.then59 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %wait_reg_mem) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %p3reloc) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_cs_packet_parse(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @r600_mip_minify(i32 noundef %size, i32 noundef %level) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %size, %level
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %cmp = icmp eq i32 %shr, 0
  %.shr = select i1 %cmp, i32 1, i32 %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level)
  %cmp1.not = icmp eq i32 %level, 0
  br i1 %cmp1.not, label %entry.if.end_crit_edge, label %cond.false21

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

cond.false21:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i35 = add i32 %.shr, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i35)
  %tobool.not.i.i.i = icmp eq i32 %sub.i35, 0
  %0 = tail call i32 @llvm.ctlz.i32(i32 %sub.i35, i1 true) #8, !range !411
  %sub.i.i.i = sub nuw nsw i32 32, %0
  %sub.i.i.op.i = shl nuw i32 1, %sub.i.i.i
  %shl.i = select i1 %tobool.not.i.i.i, i32 1, i32 %sub.i.i.op.i
  br label %if.end

if.end:                                           ; preds = %cond.false21, %entry.if.end_crit_edge
  %val.0 = phi i32 [ %.shr, %entry.if.end_crit_edge ], [ %shl.i, %cond.false21 ]
  ret i32 %val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r600_cs_parse(ptr noundef %p) local_unnamed_addr #2 align 64 {
entry:
  %reloc.i = alloca ptr, align 4
  %pkt = alloca %struct.radeon_cs_packet, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt) #8
  %0 = getelementptr inbounds %struct.radeon_cs_packet, ptr %pkt, i32 0, i32 1
  %1 = getelementptr inbounds %struct.radeon_cs_packet, ptr %pkt, i32 0, i32 2
  %2 = getelementptr inbounds %struct.radeon_cs_packet, ptr %pkt, i32 0, i32 3
  %3 = getelementptr inbounds %struct.radeon_cs_packet, ptr %pkt, i32 0, i32 4
  %track1 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 18
  %4 = call ptr @memset(ptr %pkt, i32 255, i32 24)
  %5 = ptrtoint ptr %track1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %track1, align 8
  %cmp = icmp eq ptr %6, null
  br i1 %cmp, label %if.then, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 736) #11
  %cmp2 = icmp eq ptr %call7.i.i, null
  br i1 %cmp2, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  %sq_config.i = getelementptr inbounds %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %sq_config.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %sq_config.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end
  %i.079.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 6, i32 %i.079.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 21, i32 %i.079.i
  %10 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %arrayidx1.i, align 4
  %arrayidx2.i = getelementptr %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 17, i32 %i.079.i
  %11 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %arrayidx2.i, align 4
  %arrayidx3.i = getelementptr %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 15, i32 %i.079.i
  %12 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %arrayidx3.i, align 4
  %arrayidx4.i = getelementptr %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 16, i32 %i.079.i
  %13 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %arrayidx4.i, align 4
  %arrayidx5.i = getelementptr %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 7, i32 %i.079.i
  %14 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %arrayidx5.i, align 4
  %arrayidx6.i = getelementptr %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 9, i32 %i.079.i
  %15 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 4294967295, ptr %arrayidx6.i, align 8
  %arrayidx7.i = getelementptr %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 8, i32 %i.079.i
  %16 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 4294967295, ptr %arrayidx7.i, align 8
  %arrayidx8.i = getelementptr %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 10, i32 %i.079.i
  %17 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx8.i, align 4
  %arrayidx9.i = getelementptr %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 11, i32 %i.079.i
  %18 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 4294967295, ptr %arrayidx9.i, align 8
  %arrayidx10.i = getelementptr %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 12, i32 %i.079.i
  %19 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %arrayidx10.i, align 4
  %arrayidx11.i = getelementptr %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 13, i32 %i.079.i
  %20 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 4294967295, ptr %arrayidx11.i, align 8
  %arrayidx12.i = getelementptr %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 14, i32 %i.079.i
  %21 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %arrayidx12.i, align 4
  %inc.i = add nuw nsw i32 %i.079.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %r600_cs_track_init.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

r600_cs_track_init.exit:                          ; preds = %for.body.i
  %is_resolve.i = getelementptr inbounds %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 20
  %22 = ptrtoint ptr %is_resolve.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %is_resolve.i, align 8
  %nsamples.i = getelementptr inbounds %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 5
  %23 = ptrtoint ptr %nsamples.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 16, ptr %nsamples.i, align 4
  %log_nsamples.i = getelementptr inbounds %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %log_nsamples.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4, ptr %log_nsamples.i, align 8
  %cb_target_mask.i = getelementptr inbounds %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 18
  %25 = ptrtoint ptr %cb_target_mask.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %cb_target_mask.i, align 8
  %cb_shader_mask.i = getelementptr inbounds %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 19
  %26 = ptrtoint ptr %cb_shader_mask.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %cb_shader_mask.i, align 4
  %cb_dirty.i = getelementptr inbounds %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 37
  %27 = ptrtoint ptr %cb_dirty.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %cb_dirty.i, align 1
  %db_bo.i = getelementptr inbounds %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 34
  %28 = ptrtoint ptr %db_bo.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %db_bo.i, align 8
  %db_bo_mc.i = getelementptr inbounds %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 35
  %29 = ptrtoint ptr %db_bo_mc.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 4294967295, ptr %db_bo_mc.i, align 8
  %db_depth_info.i = getelementptr inbounds %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 29
  %30 = ptrtoint ptr %db_depth_info.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 33554439, ptr %db_depth_info.i, align 4
  %db_depth_view.i = getelementptr inbounds %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 31
  %31 = ptrtoint ptr %db_depth_view.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -16384, ptr %db_depth_view.i, align 4
  %db_depth_size.i = getelementptr inbounds %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 32
  %32 = ptrtoint ptr %db_depth_size.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %db_depth_size.i, align 8
  %db_depth_size_idx.i = getelementptr inbounds %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 30
  %33 = ptrtoint ptr %db_depth_size_idx.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %db_depth_size_idx.i, align 8
  %db_depth_control.i = getelementptr inbounds %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 28
  %34 = ptrtoint ptr %db_depth_control.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %db_depth_control.i, align 8
  %db_dirty.i = getelementptr inbounds %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 38
  %35 = ptrtoint ptr %db_dirty.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %db_dirty.i, align 2
  %htile_bo.i = getelementptr inbounds %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 40
  %36 = ptrtoint ptr %htile_bo.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %htile_bo.i, align 4
  %htile_offset.i = getelementptr inbounds %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 41
  %37 = ptrtoint ptr %htile_offset.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 4294967295, ptr %htile_offset.i, align 8
  %htile_surface.i = getelementptr inbounds %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 42
  %38 = ptrtoint ptr %htile_surface.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %htile_surface.i, align 8
  %arrayidx16.i = getelementptr %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 27, i32 0
  %39 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %arrayidx16.i, align 8
  %arrayidx17.i = getelementptr %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 24, i32 0
  %40 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %arrayidx17.i, align 4
  %arrayidx18.i = getelementptr %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 26, i32 0
  %41 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %arrayidx18.i, align 8
  %arrayidx19.i = getelementptr %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 25, i32 0
  %42 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 4294967295, ptr %arrayidx19.i, align 8
  %arrayidx16.1.i = getelementptr %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 27, i32 1
  %43 = ptrtoint ptr %arrayidx16.1.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %arrayidx16.1.i, align 4
  %arrayidx17.1.i = getelementptr %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 24, i32 1
  %44 = ptrtoint ptr %arrayidx17.1.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %arrayidx17.1.i, align 8
  %arrayidx18.1.i = getelementptr %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 26, i32 1
  %45 = ptrtoint ptr %arrayidx18.1.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %arrayidx18.1.i, align 4
  %arrayidx19.1.i = getelementptr %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 25, i32 1
  %46 = ptrtoint ptr %arrayidx19.1.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 4294967295, ptr %arrayidx19.1.i, align 8
  %arrayidx16.2.i = getelementptr %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 27, i32 2
  %47 = ptrtoint ptr %arrayidx16.2.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %arrayidx16.2.i, align 8
  %arrayidx17.2.i = getelementptr %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 24, i32 2
  %48 = ptrtoint ptr %arrayidx17.2.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %arrayidx17.2.i, align 4
  %arrayidx18.2.i = getelementptr %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 26, i32 2
  %49 = ptrtoint ptr %arrayidx18.2.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %arrayidx18.2.i, align 8
  %arrayidx19.2.i = getelementptr %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 25, i32 2
  %50 = ptrtoint ptr %arrayidx19.2.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 4294967295, ptr %arrayidx19.2.i, align 8
  %arrayidx16.3.i = getelementptr %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 27, i32 3
  %51 = ptrtoint ptr %arrayidx16.3.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %arrayidx16.3.i, align 4
  %arrayidx17.3.i = getelementptr %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 24, i32 3
  %52 = ptrtoint ptr %arrayidx17.3.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %arrayidx17.3.i, align 8
  %arrayidx18.3.i = getelementptr %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 26, i32 3
  %53 = ptrtoint ptr %arrayidx18.3.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %arrayidx18.3.i, align 4
  %arrayidx19.3.i = getelementptr %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 25, i32 3
  %54 = ptrtoint ptr %arrayidx19.3.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 4294967295, ptr %arrayidx19.3.i, align 8
  %streamout_dirty.i = getelementptr inbounds %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 39
  %55 = ptrtoint ptr %streamout_dirty.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %streamout_dirty.i, align 1
  %sx_misc_kill_all_prims.i = getelementptr inbounds %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 36
  %56 = ptrtoint ptr %sx_misc_kill_all_prims.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %sx_misc_kill_all_prims.i, align 8
  %rdev = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 1
  %57 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rdev, align 4
  %family = getelementptr inbounds %struct.radeon_device, ptr %58, i32 0, i32 6
  %59 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %60)
  %cmp4 = icmp ult i32 %60, 35
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %r600_cs_track_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  %tiling_npipes = getelementptr inbounds %struct.radeon_device, ptr %58, i32 0, i32 5, i32 0, i32 14
  %61 = ptrtoint ptr %tiling_npipes to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tiling_npipes, align 8
  %npipes = getelementptr inbounds %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 2
  %63 = ptrtoint ptr %npipes to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %npipes, align 8
  %tiling_nbanks = getelementptr inbounds %struct.radeon_device, ptr %58, i32 0, i32 5, i32 0, i32 13
  %64 = ptrtoint ptr %tiling_nbanks to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tiling_nbanks, align 4
  %nbanks = getelementptr inbounds %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 1
  %66 = ptrtoint ptr %nbanks to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %nbanks, align 4
  %tiling_group_size = getelementptr inbounds %struct.radeon_device, ptr %58, i32 0, i32 5, i32 0, i32 15
  br label %if.end28.sink.split

if.else:                                          ; preds = %r600_cs_track_init.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %60)
  %cmp13 = icmp ult i32 %60, 39
  br i1 %cmp13, label %if.then14, label %if.else.if.end28_crit_edge

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %tiling_npipes17 = getelementptr inbounds %struct.radeon_device, ptr %58, i32 0, i32 5, i32 0, i32 18
  %67 = ptrtoint ptr %tiling_npipes17 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tiling_npipes17, align 8
  %npipes18 = getelementptr inbounds %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 2
  %69 = ptrtoint ptr %npipes18 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %npipes18, align 8
  %tiling_nbanks21 = getelementptr inbounds %struct.radeon_device, ptr %58, i32 0, i32 5, i32 0, i32 17
  %70 = ptrtoint ptr %tiling_nbanks21 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tiling_nbanks21, align 4
  %nbanks22 = getelementptr inbounds %struct.r600_cs_track, ptr %call7.i.i, i32 0, i32 1
  %72 = ptrtoint ptr %nbanks22 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %nbanks22, align 4
  %tiling_group_size25 = getelementptr inbounds %struct.radeon_device, ptr %58, i32 0, i32 5, i32 0, i32 19
  br label %if.end28.sink.split

if.end28.sink.split:                              ; preds = %if.then14, %if.then5
  %tiling_group_size25.sink = phi ptr [ %tiling_group_size25, %if.then14 ], [ %tiling_group_size, %if.then5 ]
  %73 = ptrtoint ptr %tiling_group_size25.sink to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tiling_group_size25.sink, align 4
  %75 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %call7.i.i, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.end28.sink.split, %if.else.if.end28_crit_edge
  %76 = ptrtoint ptr %track1 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call7.i.i, ptr %track1, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.end28, %entry.if.end30_crit_edge
  %idx = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 6
  %ptr.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 16, i32 3
  %chunk_ib.i.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %family794.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 19
  %rdev.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 1
  %cs_flags.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 21
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.end30
  %77 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %idx, align 8
  %call31 = call i32 @radeon_cs_packet_parse(ptr noundef %p, ptr noundef nonnull %pkt, i32 noundef %78) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool.not = icmp eq i32 %call31, 0
  br i1 %tobool.not, label %if.end35, label %do.body.cleanup.sink.split_crit_edge

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end35:                                         ; preds = %do.body
  %79 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %3, align 4
  %add = add i32 %80, 2
  %81 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %idx, align 8
  %add37 = add i32 %add, %82
  store i32 %add37, ptr %idx, align 8
  %83 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %0, align 4
  %85 = zext i32 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values)
  switch i32 %84, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %if.end35.do.cond_crit_edge
    i32 3, label %sw.bb39
  ]

if.end35.do.cond_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond

sw.bb:                                            ; preds = %if.end35
  %86 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %pkt, align 4
  %88 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %1, align 4
  br label %for.body.i91

for.cond.i:                                       ; preds = %sw.bb.i.i
  %inc.i90 = add i32 %i.023.i, 1
  %90 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %3, align 4
  %cmp.not.i = icmp ugt i32 %inc.i90, %91
  br i1 %cmp.not.i, label %for.cond.i.do.cond_crit_edge, label %for.cond.i.for.body.i91_crit_edge

for.cond.i.for.body.i91_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i91

for.cond.i.do.cond_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond

for.body.i91:                                     ; preds = %for.cond.i.for.body.i91_crit_edge, %sw.bb
  %idx.024.in.i = phi i32 [ %87, %sw.bb ], [ %idx.024.i, %for.cond.i.for.body.i91_crit_edge ]
  %i.023.i = phi i32 [ 0, %sw.bb ], [ %inc.i90, %for.cond.i.for.body.i91_crit_edge ]
  %reg.022.i = phi i32 [ %89, %sw.bb ], [ 25916, %for.cond.i.for.body.i91_crit_edge ]
  %idx.024.i = add i32 %idx.024.in.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 25912, i32 %reg.022.i)
  %cond.i.i = icmp eq i32 %reg.022.i, 25912
  br i1 %cond.i.i, label %sw.bb.i.i, label %do.end.i.i

sw.bb.i.i:                                        ; preds = %for.body.i91
  %call.i.i.i = call i32 @r600_cs_common_vline_parse(ptr noundef %p, ptr noundef nonnull @r600_cs_packet_parse_vline.vline_start_end, ptr noundef nonnull @r600_cs_packet_parse_vline.vline_status) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %for.cond.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.30, i32 noundef %idx.024.i, i32 noundef 25912) #8
  br label %cleanup.sink.split

do.end.i.i:                                       ; preds = %for.body.i91
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %reg.022.i, i32 noundef %idx.024.i) #12
  br label %cleanup.sink.split

sw.bb39:                                          ; preds = %if.end35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reloc.i) #8
  %92 = ptrtoint ptr %reloc.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr inttoptr (i32 -1 to ptr), ptr %reloc.i, align 4, !annotation !412
  %93 = ptrtoint ptr %track1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %track1, align 8
  %95 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ptr.i, align 8
  %97 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %pkt, align 4
  %add.i = add i32 %98, 1
  %99 = ptrtoint ptr %chunk_ib.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %chunk_ib.i.i, align 4
  %kdata.i.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %kdata.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %kdata.i.i, align 4
  %tobool.not.i.i92 = icmp eq ptr %102, null
  %spec.select.i = select i1 %tobool.not.i.i92, ptr %96, ptr %102
  %retval.0.in.i.i = getelementptr i32, ptr %spec.select.i, i32 %add.i
  %103 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %retval.0.i.i = load i32, ptr %retval.0.in.i.i, align 4
  %104 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %2, align 4
  %106 = zext i32 %105 to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values.240)
  switch i32 %105, label %sw.default1057.i [
    i32 32, label %sw.bb.i
    i32 36, label %sw.bb31.i
    i32 40, label %sw.bb38.i
    i32 42, label %sw.bb39.sw.bb44.i_crit_edge
    i32 47, label %sw.bb39.sw.bb44.i_crit_edge2397
    i32 43, label %sw.bb49.i
    i32 45, label %sw.bb84.i
    i32 41, label %sw.bb39.sw.bb98.i_crit_edge
    i32 46, label %sw.bb39.sw.bb98.i_crit_edge2398
    i32 60, label %sw.bb112.i
    i32 65, label %sw.bb161.i
    i32 67, label %sw.bb278.i
    i32 70, label %sw.bb306.i
    i32 71, label %sw.bb349.i
    i32 104, label %sw.bb388.i
    i32 105, label %sw.bb414.i
    i32 109, label %sw.bb447.i
    i32 106, label %sw.bb640.i
    i32 107, label %sw.bb661.i
    i32 108, label %sw.bb678.i
    i32 111, label %sw.bb695.i
    i32 110, label %sw.bb712.i
    i32 114, label %sw.bb734.i
    i32 115, label %sw.bb793.i
    i32 52, label %sw.bb807.i
    i32 61, label %sw.bb901.i
    i32 59, label %sw.bb949.i
    i32 16, label %sw.bb39.sw.epilog_crit_edge
  ]

sw.bb39.sw.epilog_crit_edge:                      ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb39.sw.bb98.i_crit_edge2398:                  ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb98.i

sw.bb39.sw.bb98.i_crit_edge:                      ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb98.i

sw.bb39.sw.bb44.i_crit_edge2397:                  ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb44.i

sw.bb39.sw.bb44.i_crit_edge:                      ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb44.i

sw.bb.i:                                          ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %80)
  %cmp.not.i94 = icmp eq i32 %80, 1
  br i1 %cmp.not.i94, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33) #8
  br label %sw.epilog.thread141

if.end.i:                                         ; preds = %sw.bb.i
  %add4.i = add i32 %98, 2
  %retval.0.in.i1513.i = getelementptr i32, ptr %spec.select.i, i32 %add4.i
  %107 = ptrtoint ptr %retval.0.in.i1513.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %retval.0.i1514.i = load i32, ptr %retval.0.in.i1513.i, align 4
  %108 = lshr i32 %retval.0.i1514.i, 16
  %and.i = and i32 %108, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp6.i = icmp eq i32 %and.i, 0
  br i1 %cmp6.i, label %if.end.i.sw.epilog_crit_edge, label %if.end8.i

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp9.i = icmp ugt i32 %and.i, 2
  br i1 %cmp9.i, label %if.then10.i, label %if.end11.i

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34, i32 noundef %and.i) #8
  br label %sw.epilog.thread141

if.end11.i:                                       ; preds = %if.end8.i
  %call12.i = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool.not.i, label %cleanup.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33) #8
  br label %sw.epilog.thread141

cleanup.i:                                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  %109 = ptrtoint ptr %reloc.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %reloc.i, align 4
  %gpu_offset.i = getelementptr inbounds %struct.radeon_bo_list, ptr %110, i32 0, i32 2
  %111 = ptrtoint ptr %gpu_offset.i to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %gpu_offset.i, align 8
  %and15.i = and i32 %retval.0.i.i, -16
  %conv.i = zext i32 %and15.i to i64
  %and17.i = and i32 %retval.0.i1514.i, 255
  %113 = zext i32 %and17.i to i64
  %shl.i = shl nuw nsw i64 %113, 32
  %add16.i = or i64 %shl.i, %conv.i
  %add19.i = add i64 %add16.i, %112
  %conv20.i = trunc i64 %add19.i to i32
  %arrayidx.i95 = getelementptr i32, ptr %96, i32 %add.i
  %114 = ptrtoint ptr %arrayidx.i95 to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile i32 %conv20.i, ptr %arrayidx.i95, align 4
  %and22.i = and i32 %retval.0.i1514.i, -256
  %shr23.i = lshr i64 %add19.i, 32
  %conv25.i = trunc i64 %shr23.i to i32
  %and26.i = and i32 %conv25.i, 255
  %or.i = or i32 %and26.i, %and22.i
  %arrayidx28.i = getelementptr i32, ptr %96, i32 %add4.i
  %115 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile i32 %or.i, ptr %arrayidx28.i, align 4
  br label %sw.epilog

sw.bb31.i:                                        ; preds = %sw.bb39
  %116 = ptrtoint ptr %family794.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %family794.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %117)
  %cmp32.i = icmp ult i32 %117, 35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool35.not.i = icmp eq i32 %80, 0
  %or.cond = select i1 %cmp32.i, i1 %tobool35.not.i, i1 false
  br i1 %or.cond, label %sw.bb31.i.sw.epilog_crit_edge, label %if.then36.i

sw.bb31.i.sw.epilog_crit_edge:                    ; preds = %sw.bb31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then36.i:                                      ; preds = %sw.bb31.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %sw.epilog.thread141

sw.bb38.i:                                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %80)
  %cmp40.not.i = icmp eq i32 %80, 1
  br i1 %cmp40.not.i, label %sw.bb38.i.sw.epilog_crit_edge, label %if.then42.i

sw.bb38.i.sw.epilog_crit_edge:                    ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then42.i:                                      ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.36) #8
  br label %sw.epilog.thread141

sw.bb44.i:                                        ; preds = %sw.bb39.sw.bb44.i_crit_edge, %sw.bb39.sw.bb44.i_crit_edge2397
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool46.not.i = icmp eq i32 %80, 0
  br i1 %tobool46.not.i, label %sw.bb44.i.sw.epilog_crit_edge, label %if.then47.i

sw.bb44.i.sw.epilog_crit_edge:                    ; preds = %sw.bb44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then47.i:                                      ; preds = %sw.bb44.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.37) #8
  br label %sw.epilog.thread141

sw.bb49.i:                                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %80)
  %cmp52.not.i = icmp eq i32 %80, 3
  br i1 %cmp52.not.i, label %if.end55.i, label %if.then54.i

if.then54.i:                                      ; preds = %sw.bb49.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.38) #8
  br label %sw.epilog.thread141

if.end55.i:                                       ; preds = %sw.bb49.i
  %call56.i = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %tobool57.not.i = icmp eq i32 %call56.i, 0
  br i1 %tobool57.not.i, label %if.end59.i, label %if.then58.i

if.then58.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.38) #8
  br label %sw.epilog.thread141

if.end59.i:                                       ; preds = %if.end55.i
  %118 = ptrtoint ptr %reloc.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %reloc.i, align 4
  %gpu_offset60.i = getelementptr inbounds %struct.radeon_bo_list, ptr %119, i32 0, i32 2
  %120 = ptrtoint ptr %gpu_offset60.i to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %gpu_offset60.i, align 8
  %conv61.i = zext i32 %retval.0.i.i to i64
  %add62.i = add i64 %121, %conv61.i
  %add63.i = add i32 %98, 2
  %122 = ptrtoint ptr %chunk_ib.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %chunk_ib.i.i, align 4
  %kdata.i1517.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %kdata.i1517.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %kdata.i1517.i, align 4
  %tobool.not.i1518.i = icmp eq ptr %125, null
  br i1 %tobool.not.i1518.i, label %if.end.i1520.i, label %if.end59.i.radeon_get_ib_value.exit1524.i_crit_edge

if.end59.i.radeon_get_ib_value.exit1524.i_crit_edge: ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_get_ib_value.exit1524.i

if.end.i1520.i:                                   ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #10
  %126 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ptr.i, align 8
  br label %radeon_get_ib_value.exit1524.i

radeon_get_ib_value.exit1524.i:                   ; preds = %if.end.i1520.i, %if.end59.i.radeon_get_ib_value.exit1524.i_crit_edge
  %.pn.i1521.i = phi ptr [ %127, %if.end.i1520.i ], [ %125, %if.end59.i.radeon_get_ib_value.exit1524.i_crit_edge ]
  %retval.0.in.i1522.i = getelementptr i32, ptr %.pn.i1521.i, i32 %add63.i
  %128 = ptrtoint ptr %retval.0.in.i1522.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %retval.0.i1523.i = load i32, ptr %retval.0.in.i1522.i, align 4
  %and65.i = and i32 %retval.0.i1523.i, 255
  %conv66.i = zext i32 %and65.i to i64
  %shl67.i = shl nuw nsw i64 %conv66.i, 32
  %add68.i = add i64 %add62.i, %shl67.i
  %conv69.i = trunc i64 %add68.i to i32
  %arrayidx71.i = getelementptr i32, ptr %96, i32 %add.i
  %129 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store volatile i32 %conv69.i, ptr %arrayidx71.i, align 4
  %shr72.i = lshr i64 %add68.i, 32
  %conv74.i = trunc i64 %shr72.i to i32
  %and75.i = and i32 %conv74.i, 255
  %arrayidx77.i = getelementptr i32, ptr %96, i32 %add63.i
  %130 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store volatile i32 %and75.i, ptr %arrayidx77.i, align 4
  %call78.i = call fastcc i32 @r600_cs_track_check(ptr noundef %p) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78.i)
  %tobool79.not.i = icmp eq i32 %call78.i, 0
  br i1 %tobool79.not.i, label %radeon_get_ib_value.exit1524.i.sw.epilog_crit_edge, label %do.end.i

radeon_get_ib_value.exit1524.i.sw.epilog_crit_edge: ; preds = %radeon_get_ib_value.exit1524.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end.i:                                         ; preds = %radeon_get_ib_value.exit1524.i
  call void @__sanitizer_cov_trace_pc() #10
  %131 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %132, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, i32 noundef 1725) #12
  br label %sw.epilog.thread141

sw.bb84.i:                                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %80)
  %cmp86.not.i = icmp eq i32 %80, 1
  br i1 %cmp86.not.i, label %if.end89.i, label %if.then88.i

if.then88.i:                                      ; preds = %sw.bb84.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.41) #8
  br label %sw.epilog.thread141

if.end89.i:                                       ; preds = %sw.bb84.i
  %call90.i = call fastcc i32 @r600_cs_track_check(ptr noundef %p) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.i)
  %tobool91.not.i = icmp eq i32 %call90.i, 0
  br i1 %tobool91.not.i, label %if.end89.i.sw.epilog_crit_edge, label %do.end95.i

if.end89.i.sw.epilog_crit_edge:                   ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end95.i:                                       ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #10
  %133 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %134, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.40, i32 noundef 1737, i32 noundef %add.i) #12
  br label %sw.epilog.thread141

sw.bb98.i:                                        ; preds = %sw.bb39.sw.bb98.i_crit_edge, %sw.bb39.sw.bb98.i_crit_edge2398
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %80)
  %cmp100.i = icmp slt i32 %80, 2
  br i1 %cmp100.i, label %if.then102.i, label %if.end103.i

if.then102.i:                                     ; preds = %sw.bb98.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.45) #8
  br label %sw.epilog.thread141

if.end103.i:                                      ; preds = %sw.bb98.i
  %call104.i = call fastcc i32 @r600_cs_track_check(ptr noundef %p) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104.i)
  %tobool105.not.i = icmp eq i32 %call104.i, 0
  br i1 %tobool105.not.i, label %if.end103.i.sw.epilog_crit_edge, label %do.end109.i

if.end103.i.sw.epilog_crit_edge:                  ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end109.i:                                      ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #10
  %135 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %136, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, i32 noundef 1749) #12
  br label %sw.epilog.thread141

sw.bb112.i:                                       ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %80)
  %cmp114.not.i = icmp eq i32 %80, 5
  br i1 %cmp114.not.i, label %if.end117.i, label %if.then116.i

if.then116.i:                                     ; preds = %sw.bb112.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.48) #8
  br label %sw.epilog.thread141

if.end117.i:                                      ; preds = %sw.bb112.i
  %and118.i = and i32 %retval.0.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118.i)
  %tobool119.not.i = icmp eq i32 %and118.i, 0
  br i1 %tobool119.not.i, label %if.else.i, label %if.then120.i

if.then120.i:                                     ; preds = %if.end117.i
  %call122.i = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122.i)
  %tobool123.not.i = icmp eq i32 %call122.i, 0
  br i1 %tobool123.not.i, label %if.end125.i, label %if.then124.i

if.then124.i:                                     ; preds = %if.then120.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.48) #8
  br label %sw.epilog.thread141

if.end125.i:                                      ; preds = %if.then120.i
  %137 = ptrtoint ptr %reloc.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %reloc.i, align 4
  %gpu_offset126.i = getelementptr inbounds %struct.radeon_bo_list, ptr %138, i32 0, i32 2
  %139 = ptrtoint ptr %gpu_offset126.i to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %gpu_offset126.i, align 8
  %add127.i = add i32 %98, 2
  %141 = ptrtoint ptr %chunk_ib.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %chunk_ib.i.i, align 4
  %kdata.i1526.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %142, i32 0, i32 1
  %143 = ptrtoint ptr %kdata.i1526.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %kdata.i1526.i, align 4
  %tobool.not.i1527.i = icmp eq ptr %144, null
  br i1 %tobool.not.i1527.i, label %if.end.i1538.i, label %if.end125.i.radeon_get_ib_value.exit1542.i_crit_edge

if.end125.i.radeon_get_ib_value.exit1542.i_crit_edge: ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_get_ib_value.exit1542.i

if.end.i1538.i:                                   ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #10
  %145 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ptr.i, align 8
  br label %radeon_get_ib_value.exit1542.i

radeon_get_ib_value.exit1542.i:                   ; preds = %if.end.i1538.i, %if.end125.i.radeon_get_ib_value.exit1542.i_crit_edge
  %.pn1962.i = phi ptr [ %146, %if.end.i1538.i ], [ %144, %if.end125.i.radeon_get_ib_value.exit1542.i_crit_edge ]
  %conv1301830.pn.in.in.in.i = getelementptr i32, ptr %.pn1962.i, i32 %add127.i
  %147 = ptrtoint ptr %conv1301830.pn.in.in.in.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %conv1301830.pn.in.in.i = load i32, ptr %conv1301830.pn.in.in.in.i, align 4
  %conv1301830.pn.in.i = and i32 %conv1301830.pn.in.in.i, -16
  %conv1301830.pn.i = zext i32 %conv1301830.pn.in.i to i64
  %add1311833.i = add i64 %140, %conv1301830.pn.i
  %add1321835.i = add i32 %98, 3
  %retval.0.in.i1540.i = getelementptr i32, ptr %.pn1962.i, i32 %add1321835.i
  %148 = ptrtoint ptr %retval.0.in.i1540.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %retval.0.i1541.i = load i32, ptr %retval.0.in.i1540.i, align 4
  %and134.i = and i32 %retval.0.i1541.i, 255
  %conv135.i = zext i32 %and134.i to i64
  %shl136.i = shl nuw nsw i64 %conv135.i, 32
  %add137.i = add i64 %add1311833.i, %shl136.i
  %arrayidx139.i = getelementptr i32, ptr %96, i32 %add127.i
  %149 = ptrtoint ptr %arrayidx139.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load volatile i32, ptr %arrayidx139.i, align 4
  %and140.i = and i32 %150, 3
  %151 = trunc i64 %add137.i to i32
  %152 = and i32 %151, -16
  %conv144.i = or i32 %152, %and140.i
  store volatile i32 %conv144.i, ptr %arrayidx139.i, align 4
  %shr147.i = lshr i64 %add137.i, 32
  %conv149.i = trunc i64 %shr147.i to i32
  %and150.i = and i32 %conv149.i, 255
  %arrayidx152.i = getelementptr i32, ptr %96, i32 %add1321835.i
  %153 = ptrtoint ptr %arrayidx152.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store volatile i32 %and150.i, ptr %arrayidx152.i, align 4
  br label %sw.epilog

if.else.i:                                        ; preds = %if.end117.i
  %and156.i = and i32 %retval.0.i.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and156.i)
  %tobool157.not.i = icmp eq i32 %and156.i, 0
  br i1 %tobool157.not.i, label %if.else.i.sw.epilog_crit_edge, label %if.then158.i

if.else.i.sw.epilog_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then158.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.49) #8
  br label %sw.epilog.thread141

sw.bb161.i:                                       ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %80)
  %cmp165.not.i = icmp eq i32 %80, 4
  br i1 %cmp165.not.i, label %if.end168.i, label %if.then167.i

if.then167.i:                                     ; preds = %sw.bb161.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.50) #8
  br label %sw.epilog.thread141

if.end168.i:                                      ; preds = %sw.bb161.i
  %add169.i = add i32 %98, 5
  %retval.0.in.i1549.i = getelementptr i32, ptr %spec.select.i, i32 %add169.i
  %154 = ptrtoint ptr %retval.0.in.i1549.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %retval.0.i1550.i = load i32, ptr %retval.0.in.i1549.i, align 4
  %and171.i = and i32 %retval.0.i1550.i, 2097151
  %and172.i = and i32 %retval.0.i1550.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and172.i)
  %tobool173.not.i = icmp eq i32 %and172.i, 0
  br i1 %tobool173.not.i, label %if.else175.i, label %if.then174.i

if.then174.i:                                     ; preds = %if.end168.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.51) #8
  br label %sw.epilog.thread141

if.else175.i:                                     ; preds = %if.end168.i
  %and176.i = and i32 %retval.0.i1550.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and176.i)
  %tobool177.not.i = icmp eq i32 %and176.i, 0
  br i1 %tobool177.not.i, label %if.end179.i, label %if.then178.i

if.then178.i:                                     ; preds = %if.else175.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.52) #8
  br label %sw.epilog.thread141

if.end179.i:                                      ; preds = %if.else175.i
  %call180.i = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180.i)
  %tobool181.not.i = icmp eq i32 %call180.i, 0
  br i1 %tobool181.not.i, label %if.end183.i, label %if.then182.i

if.then182.i:                                     ; preds = %if.end179.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.53) #8
  br label %sw.epilog.thread141

if.end183.i:                                      ; preds = %if.end179.i
  %155 = ptrtoint ptr %chunk_ib.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %chunk_ib.i.i, align 4
  %kdata.i1553.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %156, i32 0, i32 1
  %157 = ptrtoint ptr %kdata.i1553.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %kdata.i1553.i, align 4
  %tobool.not.i1554.i = icmp eq ptr %158, null
  br i1 %tobool.not.i1554.i, label %if.end.i1565.i, label %if.end183.i.radeon_get_ib_value.exit1569.i_crit_edge

if.end183.i.radeon_get_ib_value.exit1569.i_crit_edge: ; preds = %if.end183.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_get_ib_value.exit1569.i

if.end.i1565.i:                                   ; preds = %if.end183.i
  call void @__sanitizer_cov_trace_pc() #10
  %159 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %ptr.i, align 8
  br label %radeon_get_ib_value.exit1569.i

radeon_get_ib_value.exit1569.i:                   ; preds = %if.end.i1565.i, %if.end183.i.radeon_get_ib_value.exit1569.i_crit_edge
  %.pn1960.i = phi ptr [ %160, %if.end.i1565.i ], [ %158, %if.end183.i.radeon_get_ib_value.exit1569.i_crit_edge ]
  %conv1851842.in.in.i = getelementptr i32, ptr %.pn1960.i, i32 %add.i
  %161 = ptrtoint ptr %conv1851842.in.in.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %conv1851842.in.i = load i32, ptr %conv1851842.in.in.i, align 4
  %conv1851842.i = zext i32 %conv1851842.in.i to i64
  %add1861844.i = add i32 %98, 2
  %retval.0.in.i1567.i = getelementptr i32, ptr %.pn1960.i, i32 %add1861844.i
  %162 = ptrtoint ptr %retval.0.in.i1567.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %retval.0.i1568.i = load i32, ptr %retval.0.in.i1567.i, align 4
  %and188.i = and i32 %retval.0.i1568.i, 255
  %conv189.i = zext i32 %and188.i to i64
  %shl190.i = shl nuw nsw i64 %conv189.i, 32
  %add191.i = or i64 %shl190.i, %conv1851842.i
  %163 = ptrtoint ptr %reloc.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %reloc.i, align 4
  %conv194.i = zext i32 %and171.i to i64
  %add195.i = add nuw nsw i64 %add191.i, %conv194.i
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %164, align 8
  %size.i.i = getelementptr inbounds %struct.radeon_bo, ptr %166, i32 0, i32 4, i32 0, i32 5
  %167 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %size.i.i, align 8
  %conv197.i = zext i32 %168 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add195.i, i64 %conv197.i)
  %cmp198.i = icmp ugt i64 %add195.i, %conv197.i
  br i1 %cmp198.i, label %do.end203.i, label %if.end209.i

do.end203.i:                                      ; preds = %radeon_get_ib_value.exit1569.i
  call void @__sanitizer_cov_trace_pc() #10
  %169 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %170, ptr noundef nonnull @.str.55, i64 noundef %add195.i, i32 noundef %168) #12
  br label %sw.epilog.thread141

if.end209.i:                                      ; preds = %radeon_get_ib_value.exit1569.i
  %gpu_offset192.i = getelementptr inbounds %struct.radeon_bo_list, ptr %164, i32 0, i32 2
  %171 = ptrtoint ptr %gpu_offset192.i to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %gpu_offset192.i, align 8
  %add193.i = add i64 %172, %add191.i
  %conv210.i = trunc i64 %add193.i to i32
  %arrayidx211.i = getelementptr i32, ptr %96, i32 %add.i
  %173 = ptrtoint ptr %arrayidx211.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store volatile i32 %conv210.i, ptr %arrayidx211.i, align 4
  %arrayidx213.i = getelementptr i32, ptr %96, i32 %add1861844.i
  %174 = ptrtoint ptr %arrayidx213.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load volatile i32, ptr %arrayidx213.i, align 4
  %and214.i = and i32 %175, -256
  %shr215.i = lshr i64 %add193.i, 32
  %conv217.i = trunc i64 %shr215.i to i32
  %and218.i = and i32 %conv217.i, 255
  %or219.i = or i32 %and218.i, %and214.i
  store volatile i32 %or219.i, ptr %arrayidx213.i, align 4
  %and223.i = and i32 %retval.0.i1550.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and223.i)
  %tobool224.not.i = icmp eq i32 %and223.i, 0
  br i1 %tobool224.not.i, label %if.else226.i, label %if.then225.i

if.then225.i:                                     ; preds = %if.end209.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.57) #8
  br label %sw.epilog.thread141

if.else226.i:                                     ; preds = %if.end209.i
  %and227.i = and i32 %retval.0.i1550.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and227.i)
  %tobool228.not.i = icmp eq i32 %and227.i, 0
  br i1 %tobool228.not.i, label %if.end230.i, label %if.then229.i

if.then229.i:                                     ; preds = %if.else226.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.58) #8
  br label %sw.epilog.thread141

if.end230.i:                                      ; preds = %if.else226.i
  %call231.i = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call231.i)
  %tobool232.not.i = icmp eq i32 %call231.i, 0
  br i1 %tobool232.not.i, label %if.end234.i, label %if.then233.i

if.then233.i:                                     ; preds = %if.end230.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.59) #8
  br label %sw.epilog.thread141

if.end234.i:                                      ; preds = %if.end230.i
  %add235.i = add i32 %98, 3
  %176 = ptrtoint ptr %chunk_ib.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %chunk_ib.i.i, align 4
  %kdata.i1572.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %177, i32 0, i32 1
  %178 = ptrtoint ptr %kdata.i1572.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %kdata.i1572.i, align 4
  %tobool.not.i1573.i = icmp eq ptr %179, null
  br i1 %tobool.not.i1573.i, label %if.end.i1584.i, label %if.end234.i.radeon_get_ib_value.exit1588.i_crit_edge

if.end234.i.radeon_get_ib_value.exit1588.i_crit_edge: ; preds = %if.end234.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_get_ib_value.exit1588.i

if.end.i1584.i:                                   ; preds = %if.end234.i
  call void @__sanitizer_cov_trace_pc() #10
  %180 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %ptr.i, align 8
  br label %radeon_get_ib_value.exit1588.i

radeon_get_ib_value.exit1588.i:                   ; preds = %if.end.i1584.i, %if.end234.i.radeon_get_ib_value.exit1588.i_crit_edge
  %.pn1961.i = phi ptr [ %181, %if.end.i1584.i ], [ %179, %if.end234.i.radeon_get_ib_value.exit1588.i_crit_edge ]
  %conv2371851.in.in.i = getelementptr i32, ptr %.pn1961.i, i32 %add235.i
  %182 = ptrtoint ptr %conv2371851.in.in.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %conv2371851.in.i = load i32, ptr %conv2371851.in.in.i, align 4
  %conv2371851.i = zext i32 %conv2371851.in.i to i64
  %add2381853.i = add i32 %98, 4
  %retval.0.in.i1586.i = getelementptr i32, ptr %.pn1961.i, i32 %add2381853.i
  %183 = ptrtoint ptr %retval.0.in.i1586.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %retval.0.i1587.i = load i32, ptr %retval.0.in.i1586.i, align 4
  %and240.i = and i32 %retval.0.i1587.i, 255
  %conv241.i = zext i32 %and240.i to i64
  %shl242.i = shl nuw nsw i64 %conv241.i, 32
  %add243.i = or i64 %shl242.i, %conv2371851.i
  %184 = ptrtoint ptr %reloc.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %reloc.i, align 4
  %add247.i = add nuw nsw i64 %add243.i, %conv194.i
  %186 = ptrtoint ptr %185 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %185, align 8
  %size.i1589.i = getelementptr inbounds %struct.radeon_bo, ptr %187, i32 0, i32 4, i32 0, i32 5
  %188 = ptrtoint ptr %size.i1589.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %size.i1589.i, align 8
  %conv250.i = zext i32 %189 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add247.i, i64 %conv250.i)
  %cmp251.i = icmp ugt i64 %add247.i, %conv250.i
  br i1 %cmp251.i, label %do.end256.i, label %if.end262.i

do.end256.i:                                      ; preds = %radeon_get_ib_value.exit1588.i
  call void @__sanitizer_cov_trace_pc() #10
  %190 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %191, ptr noundef nonnull @.str.61, i64 noundef %add247.i, i32 noundef %189) #12
  br label %sw.epilog.thread141

if.end262.i:                                      ; preds = %radeon_get_ib_value.exit1588.i
  call void @__sanitizer_cov_trace_pc() #10
  %gpu_offset244.i = getelementptr inbounds %struct.radeon_bo_list, ptr %185, i32 0, i32 2
  %192 = ptrtoint ptr %gpu_offset244.i to i32
  call void @__asan_load8_noabort(i32 %192)
  %193 = load i64, ptr %gpu_offset244.i, align 8
  %add245.i = add i64 %193, %add243.i
  %conv263.i = trunc i64 %add245.i to i32
  %arrayidx265.i = getelementptr i32, ptr %96, i32 %add235.i
  %194 = ptrtoint ptr %arrayidx265.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store volatile i32 %conv263.i, ptr %arrayidx265.i, align 4
  %shr266.i = lshr i64 %add245.i, 32
  %conv268.i = trunc i64 %shr266.i to i32
  %and269.i = and i32 %conv268.i, 255
  %arrayidx271.i = getelementptr i32, ptr %96, i32 %add2381853.i
  %195 = ptrtoint ptr %arrayidx271.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store volatile i32 %and269.i, ptr %arrayidx271.i, align 4
  br label %sw.epilog

sw.bb278.i:                                       ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %80)
  %cmp280.not.i = icmp eq i32 %80, 3
  br i1 %cmp280.not.i, label %if.end283.i, label %if.then282.i

if.then282.i:                                     ; preds = %sw.bb278.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.63) #8
  br label %sw.epilog.thread141

if.end283.i:                                      ; preds = %sw.bb278.i
  %add284.i = add i32 %98, 2
  br i1 %tobool.not.i.i92, label %radeon_get_ib_value.exit1599.i, label %radeon_get_ib_value.exit1599.thread.i

radeon_get_ib_value.exit1599.i:                   ; preds = %if.end283.i
  %retval.0.in.i1597.i = getelementptr i32, ptr %96, i32 %add284.i
  %196 = ptrtoint ptr %retval.0.in.i1597.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %retval.0.i1598.i = load i32, ptr %retval.0.in.i1597.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i1598.i)
  %cmp286.not.i = icmp eq i32 %retval.0.i1598.i, -1
  br i1 %cmp286.not.i, label %radeon_get_ib_value.exit1599.i.radeon_get_ib_value.exit1608.i_crit_edge, label %radeon_get_ib_value.exit1599.i.if.then293.i_crit_edge

radeon_get_ib_value.exit1599.i.if.then293.i_crit_edge: ; preds = %radeon_get_ib_value.exit1599.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then293.i

radeon_get_ib_value.exit1599.i.radeon_get_ib_value.exit1608.i_crit_edge: ; preds = %radeon_get_ib_value.exit1599.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_get_ib_value.exit1608.i

radeon_get_ib_value.exit1599.thread.i:            ; preds = %if.end283.i
  %retval.0.in.i15971856.i = getelementptr i32, ptr %102, i32 %add284.i
  %197 = ptrtoint ptr %retval.0.in.i15971856.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %retval.0.i15981857.i = load i32, ptr %retval.0.in.i15971856.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i15981857.i)
  %cmp286.not1858.i = icmp eq i32 %retval.0.i15981857.i, -1
  br i1 %cmp286.not1858.i, label %radeon_get_ib_value.exit1599.thread.i.radeon_get_ib_value.exit1608.i_crit_edge, label %radeon_get_ib_value.exit1599.thread.i.if.then293.i_crit_edge

radeon_get_ib_value.exit1599.thread.i.if.then293.i_crit_edge: ; preds = %radeon_get_ib_value.exit1599.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then293.i

radeon_get_ib_value.exit1599.thread.i.radeon_get_ib_value.exit1608.i_crit_edge: ; preds = %radeon_get_ib_value.exit1599.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_get_ib_value.exit1608.i

radeon_get_ib_value.exit1608.i:                   ; preds = %radeon_get_ib_value.exit1599.thread.i.radeon_get_ib_value.exit1608.i_crit_edge, %radeon_get_ib_value.exit1599.i.radeon_get_ib_value.exit1608.i_crit_edge
  %.pn.i1605.i = phi ptr [ %102, %radeon_get_ib_value.exit1599.thread.i.radeon_get_ib_value.exit1608.i_crit_edge ], [ %96, %radeon_get_ib_value.exit1599.i.radeon_get_ib_value.exit1608.i_crit_edge ]
  %add2891860.i = add i32 %98, 3
  %retval.0.in.i1606.i = getelementptr i32, ptr %.pn.i1605.i, i32 %add2891860.i
  %198 = ptrtoint ptr %retval.0.in.i1606.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %retval.0.i1607.i = load i32, ptr %retval.0.in.i1606.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i1607.i)
  %cmp291.not.i = icmp eq i32 %retval.0.i1607.i, 0
  br i1 %cmp291.not.i, label %radeon_get_ib_value.exit1608.i.sw.epilog_crit_edge, label %radeon_get_ib_value.exit1608.i.if.then293.i_crit_edge

radeon_get_ib_value.exit1608.i.if.then293.i_crit_edge: ; preds = %radeon_get_ib_value.exit1608.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then293.i

radeon_get_ib_value.exit1608.i.sw.epilog_crit_edge: ; preds = %radeon_get_ib_value.exit1608.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then293.i:                                     ; preds = %radeon_get_ib_value.exit1608.i.if.then293.i_crit_edge, %radeon_get_ib_value.exit1599.thread.i.if.then293.i_crit_edge, %radeon_get_ib_value.exit1599.i.if.then293.i_crit_edge
  %call294.i = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call294.i)
  %tobool295.not.i = icmp eq i32 %call294.i, 0
  br i1 %tobool295.not.i, label %if.end297.i, label %if.then296.i

if.then296.i:                                     ; preds = %if.then293.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.63) #8
  br label %sw.epilog.thread141

if.end297.i:                                      ; preds = %if.then293.i
  call void @__sanitizer_cov_trace_pc() #10
  %199 = ptrtoint ptr %reloc.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %reloc.i, align 4
  %gpu_offset298.i = getelementptr inbounds %struct.radeon_bo_list, ptr %200, i32 0, i32 2
  %201 = ptrtoint ptr %gpu_offset298.i to i32
  call void @__asan_load8_noabort(i32 %201)
  %202 = load i64, ptr %gpu_offset298.i, align 8
  %shr299.i = lshr i64 %202, 8
  %conv301.i = trunc i64 %shr299.i to i32
  %add302.i = add i32 %98, 3
  %arrayidx303.i = getelementptr i32, ptr %96, i32 %add302.i
  %203 = ptrtoint ptr %arrayidx303.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load volatile i32, ptr %arrayidx303.i, align 4
  %add304.i = add i32 %204, %conv301.i
  store volatile i32 %add304.i, ptr %arrayidx303.i, align 4
  br label %sw.epilog

sw.bb306.i:                                       ; preds = %sw.bb39
  %205 = zext i32 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %205, ptr @__sancov_gen_cov_switch_values.241)
  switch i32 %80, label %if.then313.i [
    i32 0, label %sw.bb306.i.sw.epilog_crit_edge
    i32 2, label %if.then317.i
  ]

sw.bb306.i.sw.epilog_crit_edge:                   ; preds = %sw.bb306.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then313.i:                                     ; preds = %sw.bb306.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.64) #8
  br label %sw.epilog.thread141

if.then317.i:                                     ; preds = %sw.bb306.i
  %call319.i = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call319.i)
  %tobool320.not.i = icmp eq i32 %call319.i, 0
  br i1 %tobool320.not.i, label %if.end322.i, label %if.then321.i

if.then321.i:                                     ; preds = %if.then317.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.64) #8
  br label %sw.epilog.thread141

if.end322.i:                                      ; preds = %if.then317.i
  %206 = ptrtoint ptr %reloc.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %reloc.i, align 4
  %gpu_offset323.i = getelementptr inbounds %struct.radeon_bo_list, ptr %207, i32 0, i32 2
  %208 = ptrtoint ptr %gpu_offset323.i to i32
  call void @__asan_load8_noabort(i32 %208)
  %209 = load i64, ptr %gpu_offset323.i, align 8
  %add324.i = add i32 %98, 2
  %210 = ptrtoint ptr %chunk_ib.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %chunk_ib.i.i, align 4
  %kdata.i1610.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %211, i32 0, i32 1
  %212 = ptrtoint ptr %kdata.i1610.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %kdata.i1610.i, align 4
  %tobool.not.i1611.i = icmp eq ptr %213, null
  br i1 %tobool.not.i1611.i, label %if.end.i1622.i, label %if.end322.i.radeon_get_ib_value.exit1626.i_crit_edge

if.end322.i.radeon_get_ib_value.exit1626.i_crit_edge: ; preds = %if.end322.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_get_ib_value.exit1626.i

if.end.i1622.i:                                   ; preds = %if.end322.i
  call void @__sanitizer_cov_trace_pc() #10
  %214 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %ptr.i, align 8
  br label %radeon_get_ib_value.exit1626.i

radeon_get_ib_value.exit1626.i:                   ; preds = %if.end.i1622.i, %if.end322.i.radeon_get_ib_value.exit1626.i_crit_edge
  %.pn1959.i = phi ptr [ %215, %if.end.i1622.i ], [ %213, %if.end322.i.radeon_get_ib_value.exit1626.i_crit_edge ]
  %conv3271865.pn.in.in.in.i = getelementptr i32, ptr %.pn1959.i, i32 %add324.i
  %216 = ptrtoint ptr %conv3271865.pn.in.in.in.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %conv3271865.pn.in.in.i = load i32, ptr %conv3271865.pn.in.in.in.i, align 4
  %conv3271865.pn.in.i = and i32 %conv3271865.pn.in.in.i, -8
  %conv3271865.pn.i = zext i32 %conv3271865.pn.in.i to i64
  %add3281868.i = add i64 %209, %conv3271865.pn.i
  %add3291870.i = add i32 %98, 3
  %retval.0.in.i1624.i = getelementptr i32, ptr %.pn1959.i, i32 %add3291870.i
  %217 = ptrtoint ptr %retval.0.in.i1624.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %retval.0.i1625.i = load i32, ptr %retval.0.in.i1624.i, align 4
  %and331.i = and i32 %retval.0.i1625.i, 255
  %conv332.i = zext i32 %and331.i to i64
  %shl333.i = shl nuw nsw i64 %conv332.i, 32
  %add334.i = add i64 %add3281868.i, %shl333.i
  %218 = trunc i64 %add334.i to i32
  %conv336.i = and i32 %218, -8
  %arrayidx338.i = getelementptr i32, ptr %96, i32 %add324.i
  %219 = ptrtoint ptr %arrayidx338.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store volatile i32 %conv336.i, ptr %arrayidx338.i, align 4
  %shr339.i = lshr i64 %add334.i, 32
  %conv341.i = trunc i64 %shr339.i to i32
  %and342.i = and i32 %conv341.i, 255
  %arrayidx344.i = getelementptr i32, ptr %96, i32 %add3291870.i
  %220 = ptrtoint ptr %arrayidx344.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store volatile i32 %and342.i, ptr %arrayidx344.i, align 4
  br label %sw.epilog

sw.bb349.i:                                       ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %80)
  %cmp352.not.i = icmp eq i32 %80, 4
  br i1 %cmp352.not.i, label %if.end355.i, label %if.then354.i

if.then354.i:                                     ; preds = %sw.bb349.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.65) #8
  br label %sw.epilog.thread141

if.end355.i:                                      ; preds = %sw.bb349.i
  %call356.i = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call356.i)
  %tobool357.not.i = icmp eq i32 %call356.i, 0
  br i1 %tobool357.not.i, label %if.end359.i, label %if.then358.i

if.then358.i:                                     ; preds = %if.end355.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.64) #8
  br label %sw.epilog.thread141

if.end359.i:                                      ; preds = %if.end355.i
  %221 = ptrtoint ptr %reloc.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %reloc.i, align 4
  %gpu_offset360.i = getelementptr inbounds %struct.radeon_bo_list, ptr %222, i32 0, i32 2
  %223 = ptrtoint ptr %gpu_offset360.i to i32
  call void @__asan_load8_noabort(i32 %223)
  %224 = load i64, ptr %gpu_offset360.i, align 8
  %add361.i = add i32 %98, 2
  %225 = ptrtoint ptr %chunk_ib.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %chunk_ib.i.i, align 4
  %kdata.i1628.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %226, i32 0, i32 1
  %227 = ptrtoint ptr %kdata.i1628.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %kdata.i1628.i, align 4
  %tobool.not.i1629.i = icmp eq ptr %228, null
  br i1 %tobool.not.i1629.i, label %if.end.i1640.i, label %if.end359.i.radeon_get_ib_value.exit1644.i_crit_edge

if.end359.i.radeon_get_ib_value.exit1644.i_crit_edge: ; preds = %if.end359.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_get_ib_value.exit1644.i

if.end.i1640.i:                                   ; preds = %if.end359.i
  call void @__sanitizer_cov_trace_pc() #10
  %229 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %ptr.i, align 8
  br label %radeon_get_ib_value.exit1644.i

radeon_get_ib_value.exit1644.i:                   ; preds = %if.end.i1640.i, %if.end359.i.radeon_get_ib_value.exit1644.i_crit_edge
  %.pn1958.i = phi ptr [ %230, %if.end.i1640.i ], [ %228, %if.end359.i.radeon_get_ib_value.exit1644.i_crit_edge ]
  %conv3641876.pn.in.in.in.i = getelementptr i32, ptr %.pn1958.i, i32 %add361.i
  %231 = ptrtoint ptr %conv3641876.pn.in.in.in.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %conv3641876.pn.in.in.i = load i32, ptr %conv3641876.pn.in.in.in.i, align 4
  %conv3641876.pn.in.i = and i32 %conv3641876.pn.in.in.i, -4
  %conv3641876.pn.i = zext i32 %conv3641876.pn.in.i to i64
  %add3651879.i = add i64 %224, %conv3641876.pn.i
  %add3661881.i = add i32 %98, 3
  %retval.0.in.i1642.i = getelementptr i32, ptr %.pn1958.i, i32 %add3661881.i
  %232 = ptrtoint ptr %retval.0.in.i1642.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %retval.0.i1643.i = load i32, ptr %retval.0.in.i1642.i, align 4
  %and368.i = and i32 %retval.0.i1643.i, 255
  %conv369.i = zext i32 %and368.i to i64
  %shl370.i = shl nuw nsw i64 %conv369.i, 32
  %add371.i = add i64 %add3651879.i, %shl370.i
  %233 = trunc i64 %add371.i to i32
  %conv373.i = and i32 %233, -4
  %arrayidx375.i = getelementptr i32, ptr %96, i32 %add361.i
  %234 = ptrtoint ptr %arrayidx375.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store volatile i32 %conv373.i, ptr %arrayidx375.i, align 4
  %arrayidx377.i = getelementptr i32, ptr %96, i32 %add3661881.i
  %235 = ptrtoint ptr %arrayidx377.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load volatile i32, ptr %arrayidx377.i, align 4
  %and378.i = and i32 %236, -256
  %shr379.i = lshr i64 %add371.i, 32
  %conv381.i = trunc i64 %shr379.i to i32
  %and382.i = and i32 %conv381.i, 255
  %or383.i = or i32 %and382.i, %and378.i
  store volatile i32 %or383.i, ptr %arrayidx377.i, align 4
  br label %sw.epilog

sw.bb388.i:                                       ; preds = %sw.bb39
  %shl389.i = shl i32 %retval.0.i.i, 2
  %add390.i = add i32 %shl389.i, 32768
  %mul.i = shl i32 %80, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 11263, i32 %shl389.i)
  %237 = icmp ugt i32 %shl389.i, 11263
  %add392.i = add i32 %mul.i, -11268
  %238 = add i32 %add392.i, %shl389.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -44032, i32 %238)
  %cmp399.i = icmp ult i32 %238, -44032
  %or.cond1487.i = select i1 %237, i1 true, i1 %cmp399.i
  br i1 %or.cond1487.i, label %if.then401.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %sw.bb388.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp4041973.not.i = icmp eq i32 %80, 0
  br i1 %cmp4041973.not.i, label %for.cond.preheader.i.sw.epilog_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.sw.epilog_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %add408.i = add i32 %98, 2
  br label %for.body.i98

if.then401.i:                                     ; preds = %sw.bb388.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.66) #8
  br label %sw.epilog.thread141

for.cond.i97:                                     ; preds = %for.body.i98
  %inc.i96 = add nuw i32 %i.01974.i, 1
  %239 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %3, align 4
  %cmp404.i = icmp ult i32 %inc.i96, %240
  br i1 %cmp404.i, label %for.cond.i97.for.body.i98_crit_edge, label %for.cond.i97.sw.epilog_crit_edge

for.cond.i97.sw.epilog_crit_edge:                 ; preds = %for.cond.i97
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.cond.i97.for.body.i98_crit_edge:              ; preds = %for.cond.i97
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i98

for.body.i98:                                     ; preds = %for.cond.i97.for.body.i98_crit_edge, %for.body.lr.ph.i
  %i.01974.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i96, %for.cond.i97.for.body.i98_crit_edge ]
  %mul406.i = shl i32 %i.01974.i, 2
  %add407.i = add i32 %add390.i, %mul406.i
  %add409.i = add i32 %add408.i, %i.01974.i
  %call410.i = call fastcc i32 @r600_cs_check_reg(ptr noundef %p, i32 noundef %add407.i, i32 noundef %add409.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call410.i)
  %tobool411.not.i = icmp eq i32 %call410.i, 0
  br i1 %tobool411.not.i, label %for.cond.i97, label %for.body.i98.sw.epilog.thread141_crit_edge

for.body.i98.sw.epilog.thread141_crit_edge:       ; preds = %for.body.i98
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread141

sw.bb414.i:                                       ; preds = %sw.bb39
  %shl415.i = shl i32 %retval.0.i.i, 2
  %add416.i = add i32 %shl415.i, 163840
  %mul418.i = shl i32 %80, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %shl415.i)
  %241 = icmp ugt i32 %shl415.i, 4095
  %add419.i = add i32 %mul418.i, -4100
  %242 = add i32 %add419.i, %shl415.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -167936, i32 %242)
  %cmp427.i = icmp ult i32 %242, -167936
  %or.cond1489.i = select i1 %241, i1 true, i1 %cmp427.i
  br i1 %or.cond1489.i, label %if.then429.i, label %for.cond431.preheader.i

for.cond431.preheader.i:                          ; preds = %sw.bb414.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp4331971.not.i = icmp eq i32 %80, 0
  br i1 %cmp4331971.not.i, label %for.cond431.preheader.i.sw.epilog_crit_edge, label %for.body435.lr.ph.i

for.cond431.preheader.i.sw.epilog_crit_edge:      ; preds = %for.cond431.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.body435.lr.ph.i:                              ; preds = %for.cond431.preheader.i
  %add438.i = add i32 %98, 2
  br label %for.body435.i

if.then429.i:                                     ; preds = %sw.bb414.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.67) #8
  br label %sw.epilog.thread141

for.cond431.i:                                    ; preds = %for.body435.i
  %inc445.i = add nuw i32 %i.11972.i, 1
  %243 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %3, align 4
  %cmp433.i = icmp ult i32 %inc445.i, %244
  br i1 %cmp433.i, label %for.cond431.i.for.body435.i_crit_edge, label %for.cond431.i.sw.epilog_crit_edge

for.cond431.i.sw.epilog_crit_edge:                ; preds = %for.cond431.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.cond431.i.for.body435.i_crit_edge:            ; preds = %for.cond431.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body435.i

for.body435.i:                                    ; preds = %for.cond431.i.for.body435.i_crit_edge, %for.body435.lr.ph.i
  %i.11972.i = phi i32 [ 0, %for.body435.lr.ph.i ], [ %inc445.i, %for.cond431.i.for.body435.i_crit_edge ]
  %mul436.i = shl i32 %i.11972.i, 2
  %add437.i = add i32 %add416.i, %mul436.i
  %add439.i = add i32 %add438.i, %i.11972.i
  %call440.i = call fastcc i32 @r600_cs_check_reg(ptr noundef %p, i32 noundef %add437.i, i32 noundef %add439.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call440.i)
  %tobool441.not.i = icmp eq i32 %call440.i, 0
  br i1 %tobool441.not.i, label %for.cond431.i, label %for.body435.i.sw.epilog.thread141_crit_edge

for.body435.i.sw.epilog.thread141_crit_edge:      ; preds = %for.body435.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread141

sw.bb447.i:                                       ; preds = %sw.bb39
  %rem.i = srem i32 %80, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool449.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool449.not.i, label %if.end451.i, label %if.then450.i

if.then450.i:                                     ; preds = %sw.bb447.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.68) #8
  br label %sw.epilog.thread141

if.end451.i:                                      ; preds = %sw.bb447.i
  %shl452.i = shl i32 %retval.0.i.i, 2
  %mul455.i = shl i32 %80, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %shl452.i)
  %245 = icmp ugt i32 %shl452.i, 16383
  %add456.i = add i32 %mul455.i, -16388
  %246 = add i32 %add456.i, %shl452.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -245760, i32 %246)
  %cmp464.i = icmp ult i32 %246, -245760
  %or.cond1491.i = select i1 %245, i1 true, i1 %cmp464.i
  br i1 %or.cond1491.i, label %if.then466.i, label %for.cond468.preheader.i

for.cond468.preheader.i:                          ; preds = %if.end451.i
  %.off.i = add i32 %80, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %.off.i)
  %247 = icmp ult i32 %.off.i, 13
  br i1 %247, label %for.cond468.preheader.i.sw.epilog_crit_edge, label %for.body472.lr.ph.i

for.cond468.preheader.i.sw.epilog_crit_edge:      ; preds = %for.cond468.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.body472.lr.ph.i:                              ; preds = %for.cond468.preheader.i
  %add566.i = add i32 %98, 2
  br label %for.body472.i

if.then466.i:                                     ; preds = %if.end451.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.68) #8
  br label %sw.epilog.thread141

for.body472.i:                                    ; preds = %for.inc637.i.for.body472.i_crit_edge, %for.body472.lr.ph.i
  %i.21969.i = phi i32 [ 0, %for.body472.lr.ph.i ], [ %inc638.i, %for.inc637.i.for.body472.i_crit_edge ]
  %mul475.i = mul i32 %i.21969.i, 7
  %add476.i = add i32 %mul475.i, %add.i
  %add478.i = add i32 %add476.i, 7
  %248 = ptrtoint ptr %chunk_ib.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %chunk_ib.i.i, align 4
  %kdata.i1646.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %249, i32 0, i32 1
  %250 = ptrtoint ptr %kdata.i1646.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %kdata.i1646.i, align 4
  %tobool.not.i1647.i = icmp eq ptr %251, null
  br i1 %tobool.not.i1647.i, label %if.end.i1649.i, label %for.body472.i.radeon_get_ib_value.exit1653.i_crit_edge

for.body472.i.radeon_get_ib_value.exit1653.i_crit_edge: ; preds = %for.body472.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_get_ib_value.exit1653.i

if.end.i1649.i:                                   ; preds = %for.body472.i
  call void @__sanitizer_cov_trace_pc() #10
  %252 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %ptr.i, align 8
  br label %radeon_get_ib_value.exit1653.i

radeon_get_ib_value.exit1653.i:                   ; preds = %if.end.i1649.i, %for.body472.i.radeon_get_ib_value.exit1653.i_crit_edge
  %.pn.i1650.i = phi ptr [ %253, %if.end.i1649.i ], [ %251, %for.body472.i.radeon_get_ib_value.exit1653.i_crit_edge ]
  %retval.0.in.i1651.i = getelementptr i32, ptr %.pn.i1650.i, i32 %add478.i
  %254 = ptrtoint ptr %retval.0.in.i1651.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %retval.0.i1652.i = load i32, ptr %retval.0.in.i1651.i, align 4
  %shr480.i = lshr i32 %retval.0.i1652.i, 30
  %255 = zext i32 %shr480.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %255, ptr @__sancov_gen_cov_switch_values.242)
  switch i32 %shr480.i, label %for.body472.unreachabledefault.i [
    i32 2, label %sw.bb482.i
    i32 3, label %sw.bb561.i
    i32 0, label %radeon_get_ib_value.exit1653.i.sw.default.i_crit_edge
    i32 1, label %radeon_get_ib_value.exit1653.i.sw.default.i_crit_edge2399
  ]

radeon_get_ib_value.exit1653.i.sw.default.i_crit_edge2399: ; preds = %radeon_get_ib_value.exit1653.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default.i

radeon_get_ib_value.exit1653.i.sw.default.i_crit_edge: ; preds = %radeon_get_ib_value.exit1653.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default.i

sw.bb482.i:                                       ; preds = %radeon_get_ib_value.exit1653.i
  %call483.i = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call483.i)
  %tobool484.not.i = icmp eq i32 %call483.i, 0
  br i1 %tobool484.not.i, label %if.end486.i, label %if.then485.i

if.then485.i:                                     ; preds = %sw.bb482.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.68) #8
  br label %sw.epilog.thread141

if.end486.i:                                      ; preds = %sw.bb482.i
  %256 = ptrtoint ptr %reloc.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %reloc.i, align 4
  %gpu_offset487.i = getelementptr inbounds %struct.radeon_bo_list, ptr %257, i32 0, i32 2
  %258 = ptrtoint ptr %gpu_offset487.i to i32
  call void @__asan_load8_noabort(i32 %258)
  %259 = load i64, ptr %gpu_offset487.i, align 8
  %shr488.i = lshr i64 %259, 8
  %conv490.i = trunc i64 %shr488.i to i32
  %260 = ptrtoint ptr %cs_flags.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %cs_flags.i, align 4
  %and491.i = and i32 %261, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and491.i)
  %tobool492.not.i = icmp eq i32 %and491.i, 0
  br i1 %tobool492.not.i, label %if.then493.i, label %if.end486.i.if.end516.i_crit_edge

if.end486.i.if.end516.i_crit_edge:                ; preds = %if.end486.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end516.i

if.then493.i:                                     ; preds = %if.end486.i
  %tiling_flags.i = getelementptr inbounds %struct.radeon_bo_list, ptr %257, i32 0, i32 5
  %262 = ptrtoint ptr %tiling_flags.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %tiling_flags.i, align 8
  %and494.i = and i32 %263, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and494.i)
  %tobool495.not.i = icmp eq i32 %and494.i, 0
  br i1 %tobool495.not.i, label %if.else503.i, label %if.then493.i.if.end516.sink.split.i_crit_edge

if.then493.i.if.end516.sink.split.i_crit_edge:    ; preds = %if.then493.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end516.sink.split.i

if.else503.i:                                     ; preds = %if.then493.i
  %and505.i = and i32 %263, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and505.i)
  %tobool506.not.i = icmp eq i32 %and505.i, 0
  br i1 %tobool506.not.i, label %if.else503.i.if.end516.i_crit_edge, label %if.else503.i.if.end516.sink.split.i_crit_edge

if.else503.i.if.end516.sink.split.i_crit_edge:    ; preds = %if.else503.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end516.sink.split.i

if.else503.i.if.end516.i_crit_edge:               ; preds = %if.else503.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end516.i

if.end516.sink.split.i:                           ; preds = %if.else503.i.if.end516.sink.split.i_crit_edge, %if.then493.i.if.end516.sink.split.i_crit_edge
  %.sink1987.i = phi i32 [ 32, %if.then493.i.if.end516.sink.split.i_crit_edge ], [ 16, %if.else503.i.if.end516.sink.split.i_crit_edge ]
  %add510.i = add i32 %mul475.i, %add566.i
  %arrayidx512.i = getelementptr i32, ptr %96, i32 %add510.i
  %264 = ptrtoint ptr %arrayidx512.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load volatile i32, ptr %arrayidx512.i, align 4
  %or502.i = or i32 %265, %.sink1987.i
  store volatile i32 %or502.i, ptr %arrayidx512.i, align 4
  br label %if.end516.i

if.end516.i:                                      ; preds = %if.end516.sink.split.i, %if.else503.i.if.end516.i_crit_edge, %if.end486.i.if.end516.i_crit_edge
  %266 = ptrtoint ptr %reloc.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %reloc.i, align 4
  %268 = ptrtoint ptr %267 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %267, align 8
  %call518.i = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call518.i)
  %tobool519.not.i = icmp eq i32 %call518.i, 0
  br i1 %tobool519.not.i, label %if.end521.i, label %if.then520.i

if.then520.i:                                     ; preds = %if.end516.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.68) #8
  br label %sw.epilog.thread141

if.end521.i:                                      ; preds = %if.end516.i
  %270 = ptrtoint ptr %reloc.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %reloc.i, align 4
  %gpu_offset522.i = getelementptr inbounds %struct.radeon_bo_list, ptr %271, i32 0, i32 2
  %272 = ptrtoint ptr %gpu_offset522.i to i32
  call void @__asan_load8_noabort(i32 %272)
  %273 = load i64, ptr %gpu_offset522.i, align 8
  %shr523.i = lshr i64 %273, 8
  %conv525.i = trunc i64 %shr523.i to i32
  %add529.i = add i32 %add476.i, 1
  %add532.i = add i32 %mul475.i, %add566.i
  %add533.i = add i32 %add532.i, 2
  %274 = ptrtoint ptr %chunk_ib.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %chunk_ib.i.i, align 4
  %kdata.i1655.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %275, i32 0, i32 1
  %276 = ptrtoint ptr %kdata.i1655.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %kdata.i1655.i, align 4
  %tobool.not.i1656.i = icmp eq ptr %277, null
  br i1 %tobool.not.i1656.i, label %if.end.i1667.i, label %if.end521.i.radeon_get_ib_value.exit1671.i_crit_edge

if.end521.i.radeon_get_ib_value.exit1671.i_crit_edge: ; preds = %if.end521.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_get_ib_value.exit1671.i

if.end.i1667.i:                                   ; preds = %if.end521.i
  call void @__sanitizer_cov_trace_pc() #10
  %278 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %ptr.i, align 8
  br label %radeon_get_ib_value.exit1671.i

radeon_get_ib_value.exit1671.i:                   ; preds = %if.end.i1667.i, %if.end521.i.radeon_get_ib_value.exit1671.i_crit_edge
  %.pn1957.i = phi ptr [ %279, %if.end.i1667.i ], [ %277, %if.end521.i.radeon_get_ib_value.exit1671.i_crit_edge ]
  %add5401891.i = add i32 %add532.i, 3
  %tiling_flags544.i = getelementptr inbounds %struct.radeon_bo_list, ptr %271, i32 0, i32 5
  %280 = ptrtoint ptr %tiling_flags544.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %tiling_flags544.i, align 8
  %282 = ptrtoint ptr %track1 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %track1, align 8
  %284 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %rdev.i, align 4
  %cmp.i109 = icmp eq ptr %285, null
  br i1 %cmp.i109, label %radeon_get_ib_value.exit1671.i.if.end548.i_crit_edge, label %if.end.i114

radeon_get_ib_value.exit1671.i.if.end548.i_crit_edge: ; preds = %radeon_get_ib_value.exit1671.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end548.i

if.end.i114:                                      ; preds = %radeon_get_ib_value.exit1671.i
  %retval.0.in.i1669.i = getelementptr i32, ptr %.pn1957.i, i32 %add5401891.i
  %286 = ptrtoint ptr %retval.0.in.i1669.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %retval.0.i1670.i = load i32, ptr %retval.0.in.i1669.i, align 4
  %add542.i = add i32 %retval.0.i1670.i, %conv525.i
  %conv543.i = zext i32 %add542.i to i64
  %retval.0.i16611885.pn.in.i = getelementptr i32, ptr %.pn1957.i, i32 %add533.i
  %287 = ptrtoint ptr %retval.0.i16611885.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %retval.0.i16611885.pn.i = load i32, ptr %retval.0.i16611885.pn.in.i, align 4
  %conv5361889.in.i = add i32 %retval.0.i16611885.pn.i, %conv490.i
  %conv5361889.i = zext i32 %conv5361889.in.i to i64
  %shl.i110 = shl nuw nsw i64 %conv5361889.i, 8
  %shl2.i = shl nuw nsw i64 %conv543.i, 8
  br i1 %tobool.not.i1656.i, label %if.end.i.i, label %if.end.i114.radeon_get_ib_value.exit.i_crit_edge

if.end.i114.radeon_get_ib_value.exit.i_crit_edge: ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_get_ib_value.exit.i

if.end.i.i:                                       ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #10
  %288 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %ptr.i, align 8
  br label %radeon_get_ib_value.exit.i

radeon_get_ib_value.exit.i:                       ; preds = %if.end.i.i, %if.end.i114.radeon_get_ib_value.exit.i_crit_edge
  %.pn.i.i = phi ptr [ %289, %if.end.i.i ], [ %277, %if.end.i114.radeon_get_ib_value.exit.i_crit_edge ]
  %retval.0.in.i.i115 = getelementptr i32, ptr %.pn.i.i, i32 %add529.i
  %290 = ptrtoint ptr %retval.0.in.i.i115 to i32
  call void @__asan_load4_noabort(i32 %290)
  %retval.0.i.i116 = load i32, ptr %retval.0.in.i.i115, align 4
  %291 = ptrtoint ptr %cs_flags.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %cs_flags.i, align 4
  %and.i118 = and i32 %292, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i118)
  %tobool.not.i119 = icmp eq i32 %and.i118, 0
  br i1 %tobool.not.i119, label %if.then3.i, label %radeon_get_ib_value.exit.i.if.end13.i_crit_edge

radeon_get_ib_value.exit.i.if.end13.i_crit_edge:  ; preds = %radeon_get_ib_value.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.then3.i:                                       ; preds = %radeon_get_ib_value.exit.i
  %and4.i = and i32 %281, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.else.i121, label %if.then6.i

if.then6.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i120 = or i32 %retval.0.i.i116, 32
  br label %if.end13.i

if.else.i121:                                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  %and7.i = shl i32 %281, 3
  %293 = and i32 %and7.i, 16
  %294 = or i32 %retval.0.i.i116, %293
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else.i121, %if.then6.i, %radeon_get_ib_value.exit.i.if.end13.i_crit_edge
  %word0.0.i = phi i32 [ %retval.0.i.i116, %radeon_get_ib_value.exit.i.if.end13.i_crit_edge ], [ %or.i120, %if.then6.i ], [ %294, %if.else.i121 ]
  %add14.i = add i32 %add476.i, 2
  br i1 %tobool.not.i1656.i, label %if.end.i276.i, label %if.end13.i.radeon_get_ib_value.exit280.i_crit_edge

if.end13.i.radeon_get_ib_value.exit280.i_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_get_ib_value.exit280.i

if.end.i276.i:                                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %295 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %ptr.i, align 8
  br label %radeon_get_ib_value.exit280.i

radeon_get_ib_value.exit280.i:                    ; preds = %if.end.i276.i, %if.end13.i.radeon_get_ib_value.exit280.i_crit_edge
  %.sink370.i = phi ptr [ %296, %if.end.i276.i ], [ %277, %if.end13.i.radeon_get_ib_value.exit280.i_crit_edge ]
  %add16.i122 = add i32 %add476.i, 3
  %retval.0.in.i251.i = getelementptr i32, ptr %.sink370.i, i32 %add16.i122
  %add22.i = add i32 %add476.i, 5
  %retval.0.in.i269.i = getelementptr i32, ptr %.sink370.i, i32 %add22.i
  %retval.0.i243315326340351.in.i = getelementptr i32, ptr %.sink370.i, i32 %add14.i
  %297 = ptrtoint ptr %retval.0.i243315326340351.in.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %retval.0.i243315326340351.i = load i32, ptr %retval.0.i243315326340351.in.i, align 4
  %298 = ptrtoint ptr %retval.0.in.i251.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %shl18328338353.in.i = load i32, ptr %retval.0.in.i251.i, align 4
  %shl18328338353.i = shl i32 %shl18328338353.in.i, 8
  %299 = ptrtoint ptr %retval.0.in.i269.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %retval.0.i270355.i = load i32, ptr %retval.0.in.i269.i, align 4
  %add24357.i = add i32 %add476.i, 6
  %retval.0.in.i278.i = getelementptr i32, ptr %.sink370.i, i32 %add24357.i
  %300 = ptrtoint ptr %retval.0.in.i278.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %retval.0.i279.i = load i32, ptr %retval.0.in.i278.i, align 4
  %and26.i123 = and i32 %word0.0.i, 7
  %shr27.i = lshr i32 %word0.0.i, 19
  %301 = lshr i32 %word0.0.i, 5
  %add32.i = and i32 %301, 16376
  %mul.i124 = add nuw nsw i32 %add32.i, 8
  %and34.i = and i32 %retval.0.i243315326340351.i, 8191
  %shr36.i = lshr i32 %retval.0.i243315326340351.i, 13
  %and37.i = and i32 %shr36.i, 8191
  %shr38.i = lshr i32 %retval.0.i243315326340351.i, 26
  %shr40.i = lshr i32 %retval.0.i270355.i, 28
  %and43.i = and i32 %retval.0.i279.i, 15
  %shr44.i = lshr i32 %word0.0.i, 3
  %and45.i = and i32 %shr44.i, 15
  %302 = ptrtoint ptr %283 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %283, align 8
  %nbanks.i = getelementptr inbounds %struct.r600_cs_track, ptr %283, i32 0, i32 1
  %304 = ptrtoint ptr %nbanks.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %nbanks.i, align 4
  %npipes.i = getelementptr inbounds %struct.r600_cs_track, ptr %283, i32 0, i32 2
  %306 = ptrtoint ptr %npipes.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %npipes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -469762049, i32 %retval.0.i243315326340351.i)
  %cmp.i.i = icmp ugt i32 %retval.0.i243315326340351.i, -469762049
  br i1 %cmp.i.i, label %radeon_get_ib_value.exit280.i.r600_fmt_get_blocksize.exit.i_crit_edge, label %if.end.i281.i

radeon_get_ib_value.exit280.i.r600_fmt_get_blocksize.exit.i_crit_edge: ; preds = %radeon_get_ib_value.exit280.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %r600_fmt_get_blocksize.exit.i

if.end.i281.i:                                    ; preds = %radeon_get_ib_value.exit280.i
  call void @__sanitizer_cov_trace_pc() #10
  %blocksize.i.i = getelementptr [57 x %struct.gpu_formats], ptr @color_formats_table, i32 0, i32 %shr38.i, i32 2
  %308 = ptrtoint ptr %blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %blocksize.i.i, align 4
  br label %r600_fmt_get_blocksize.exit.i

r600_fmt_get_blocksize.exit.i:                    ; preds = %if.end.i281.i, %radeon_get_ib_value.exit280.i.r600_fmt_get_blocksize.exit.i_crit_edge
  %retval.0.i282.i = phi i32 [ %309, %if.end.i281.i ], [ 0, %radeon_get_ib_value.exit280.i.r600_fmt_get_blocksize.exit.i_crit_edge ]
  %310 = zext i32 %and26.i123 to i64
  call void @__sanitizer_cov_trace_switch(i64 %310, ptr @__sancov_gen_cov_switch_values.243)
  switch i32 %and26.i123, label %if.end13.unreachabledefault.i [
    i32 0, label %r600_fmt_get_blocksize.exit.i.sw.epilog.i_crit_edge
    i32 1, label %r600_fmt_get_blocksize.exit.i.sw.epilog.i_crit_edge2400
    i32 2, label %r600_fmt_get_blocksize.exit.i.sw.epilog.i_crit_edge2401
    i32 3, label %sw.bb50.i
    i32 4, label %r600_fmt_get_blocksize.exit.i.sw.bb55.i_crit_edge
    i32 5, label %r600_fmt_get_blocksize.exit.i.sw.bb55.i_crit_edge2402
    i32 7, label %sw.bb56.i
    i32 6, label %r600_fmt_get_blocksize.exit.i.sw.bb57.i_crit_edge
  ]

r600_fmt_get_blocksize.exit.i.sw.bb57.i_crit_edge: ; preds = %r600_fmt_get_blocksize.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb57.i

r600_fmt_get_blocksize.exit.i.sw.bb55.i_crit_edge2402: ; preds = %r600_fmt_get_blocksize.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb55.i

r600_fmt_get_blocksize.exit.i.sw.bb55.i_crit_edge: ; preds = %r600_fmt_get_blocksize.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb55.i

r600_fmt_get_blocksize.exit.i.sw.epilog.i_crit_edge2401: ; preds = %r600_fmt_get_blocksize.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

r600_fmt_get_blocksize.exit.i.sw.epilog.i_crit_edge2400: ; preds = %r600_fmt_get_blocksize.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

r600_fmt_get_blocksize.exit.i.sw.epilog.i_crit_edge: ; preds = %r600_fmt_get_blocksize.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb50.i:                                        ; preds = %r600_fmt_get_blocksize.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %311 = ptrtoint ptr %family794.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %family794.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %312)
  %cmp51.i = icmp ugt i32 %312, 34
  %..i = select i1 %cmp51.i, i32 8, i32 6
  br label %sw.epilog.i

sw.bb55.i:                                        ; preds = %r600_fmt_get_blocksize.exit.i.sw.bb55.i_crit_edge, %r600_fmt_get_blocksize.exit.i.sw.bb55.i_crit_edge2402
  br label %sw.epilog.i

sw.bb56.i:                                        ; preds = %r600_fmt_get_blocksize.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb57.i

sw.bb57.i:                                        ; preds = %sw.bb56.i, %r600_fmt_get_blocksize.exit.i.sw.bb57.i_crit_edge
  %is_array.0.off0.i = phi i1 [ false, %r600_fmt_get_blocksize.exit.i.sw.bb57.i_crit_edge ], [ true, %sw.bb56.i ]
  %shl58.i = shl nuw nsw i32 1, %and43.i
  br label %sw.epilog.i

if.end13.unreachabledefault.i:                    ; preds = %r600_fmt_get_blocksize.exit.i
  unreachable

sw.epilog.i:                                      ; preds = %sw.bb57.i, %sw.bb55.i, %sw.bb50.i, %r600_fmt_get_blocksize.exit.i.sw.epilog.i_crit_edge, %r600_fmt_get_blocksize.exit.i.sw.epilog.i_crit_edge2400, %r600_fmt_get_blocksize.exit.i.sw.epilog.i_crit_edge2401
  %array_check.sroa.19.0.i = phi i32 [ %shl58.i, %sw.bb57.i ], [ 1, %sw.bb55.i ], [ 1, %sw.bb50.i ], [ 1, %r600_fmt_get_blocksize.exit.i.sw.epilog.i_crit_edge ], [ 1, %r600_fmt_get_blocksize.exit.i.sw.epilog.i_crit_edge2400 ], [ 1, %r600_fmt_get_blocksize.exit.i.sw.epilog.i_crit_edge2401 ]
  %nfaces.0.i = phi i32 [ 1, %sw.bb57.i ], [ 1, %sw.bb55.i ], [ %..i, %sw.bb50.i ], [ 1, %r600_fmt_get_blocksize.exit.i.sw.epilog.i_crit_edge ], [ 1, %r600_fmt_get_blocksize.exit.i.sw.epilog.i_crit_edge2400 ], [ 1, %r600_fmt_get_blocksize.exit.i.sw.epilog.i_crit_edge2401 ]
  %llevel.0.i = phi i32 [ 0, %sw.bb57.i ], [ %and43.i, %sw.bb55.i ], [ %and43.i, %sw.bb50.i ], [ %and43.i, %r600_fmt_get_blocksize.exit.i.sw.epilog.i_crit_edge ], [ %and43.i, %r600_fmt_get_blocksize.exit.i.sw.epilog.i_crit_edge2400 ], [ %and43.i, %r600_fmt_get_blocksize.exit.i.sw.epilog.i_crit_edge2401 ]
  %is_array.1.off0.i = phi i1 [ %is_array.0.off0.i, %sw.bb57.i ], [ true, %sw.bb55.i ], [ false, %sw.bb50.i ], [ false, %r600_fmt_get_blocksize.exit.i.sw.epilog.i_crit_edge ], [ false, %r600_fmt_get_blocksize.exit.i.sw.epilog.i_crit_edge2400 ], [ false, %r600_fmt_get_blocksize.exit.i.sw.epilog.i_crit_edge2401 ]
  br i1 %cmp.i.i, label %sw.epilog.i.do.end67.i_crit_edge, label %if.end.i284.i

sw.epilog.i.do.end67.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67.i

if.end.i284.i:                                    ; preds = %sw.epilog.i
  %313 = ptrtoint ptr %family794.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %family794.i, align 4
  %min_family.i.i = getelementptr [57 x %struct.gpu_formats], ptr @color_formats_table, i32 0, i32 %shr38.i, i32 4
  %315 = ptrtoint ptr %min_family.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %min_family.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %316, i32 %314)
  %cmp1.i.i = icmp ugt i32 %316, %314
  br i1 %cmp1.i.i, label %if.end.i284.i.do.end67.i_crit_edge, label %r600_fmt_is_valid_texture.exit.i

if.end.i284.i.do.end67.i_crit_edge:               ; preds = %if.end.i284.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67.i

r600_fmt_is_valid_texture.exit.i:                 ; preds = %if.end.i284.i
  %arrayidx.i.i = getelementptr [57 x %struct.gpu_formats], ptr @color_formats_table, i32 0, i32 %shr38.i
  %317 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %318)
  %cmp5.not.i.not.i = icmp eq i32 %318, 0
  br i1 %cmp5.not.i.not.i, label %r600_fmt_is_valid_texture.exit.i.do.end67.i_crit_edge, label %if.end69.i

r600_fmt_is_valid_texture.exit.i.do.end67.i_crit_edge: ; preds = %r600_fmt_is_valid_texture.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67.i

do.end67.i:                                       ; preds = %r600_fmt_is_valid_texture.exit.i.do.end67.i_crit_edge, %if.end.i284.i.do.end67.i_crit_edge, %sw.epilog.i.do.end67.i_crit_edge
  %319 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %320, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.212, i32 noundef 1553, i32 noundef %shr38.i) #12
  br label %sw.epilog.thread141

if.end69.i:                                       ; preds = %r600_fmt_is_valid_texture.exit.i
  %321 = zext i32 %and45.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %321, ptr @__sancov_gen_cov_switch_values.244)
  switch i32 %and45.i, label %do.end75.i [
    i32 0, label %if.end69.i.if.end79.i_crit_edge
    i32 1, label %sw.bb5.i.i
    i32 2, label %sw.bb8.i.i
    i32 4, label %sw.bb24.i.i
  ]

if.end69.i.if.end79.i_crit_edge:                  ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79.i

sw.bb5.i.i:                                       ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #10
  %div.i.i = udiv i32 %303, %retval.0.i282.i
  %322 = call i32 @llvm.umax.i32(i32 %div.i.i, i32 64) #8
  br label %if.end79.i

sw.bb8.i.i:                                       ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul11.i.i = mul i32 %array_check.sroa.19.0.i, %retval.0.i282.i
  %mul13.i.i = shl i32 %mul11.i.i, 3
  %div14.i.i = udiv i32 %303, %mul13.i.i
  %323 = call i32 @llvm.umax.i32(i32 %div14.i.i, i32 8) #8
  br label %if.end79.i

sw.bb24.i.i:                                      ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul3.i.i = mul i32 %array_check.sroa.19.0.i, %retval.0.i282.i
  %mul1.i.i = shl i32 %mul3.i.i, 6
  %mul2.i.i = mul i32 %mul1.i.i, %305
  %mul4.i.i = mul i32 %mul2.i.i, %307
  %mul25.i.i = shl i32 %305, 3
  %mul28.i.i = mul i32 %305, %303
  %mul32.i.i = shl i32 %mul3.i.i, 3
  %div33.i.i = udiv i32 %mul28.i.i, %mul32.i.i
  %324 = call i32 @llvm.umax.i32(i32 %mul25.i.i, i32 %div33.i.i) #8
  %mul41.i.i = shl i32 %307, 3
  %mul44.i.i = mul i32 %mul3.i.i, %mul41.i.i
  %mul46.i.i = mul i32 %mul44.i.i, %324
  %325 = call i32 @llvm.umax.i32(i32 %mul4.i.i, i32 %mul46.i.i) #8
  br label %if.end79.i

do.end75.i:                                       ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #10
  %326 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %327, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.212, i32 noundef 1560, i32 noundef %and45.i) #12
  br label %sw.epilog.thread141

if.end79.i:                                       ; preds = %sw.bb24.i.i, %sw.bb8.i.i, %sw.bb5.i.i, %if.end69.i.if.end79.i_crit_edge
  %height_align.0.i = phi i32 [ %mul41.i.i, %sw.bb24.i.i ], [ 8, %sw.bb8.i.i ], [ 1, %sw.bb5.i.i ], [ 1, %if.end69.i.if.end79.i_crit_edge ]
  %pitch_align.0.i = phi i32 [ %324, %sw.bb24.i.i ], [ %323, %sw.bb8.i.i ], [ %322, %sw.bb5.i.i ], [ 1, %if.end69.i.if.end79.i_crit_edge ]
  %.sink.shrunk.i.i = phi i32 [ %325, %sw.bb24.i.i ], [ %303, %sw.bb8.i.i ], [ %303, %sw.bb5.i.i ], [ 1, %if.end69.i.if.end79.i_crit_edge ]
  %.sink.i.i = zext i32 %.sink.shrunk.i.i to i64
  %sub.i = add i32 %pitch_align.0.i, -1
  %and80.i = and i32 %sub.i, %mul.i124
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80.i)
  %cmp81.i = icmp eq i32 %and80.i, 0
  br i1 %cmp81.i, label %if.end89.i126, label %do.end85.i

do.end85.i:                                       ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #10
  %328 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %329, ptr noundef nonnull @.str.220, ptr noundef nonnull @.str.212, i32 noundef 1568, i32 noundef %mul.i124, i32 noundef %pitch_align.0.i, i32 noundef %and45.i) #12
  br label %sw.epilog.thread141

if.end89.i126:                                    ; preds = %if.end79.i
  %sub90.i = add nsw i64 %.sink.i.i, -1
  %and91.i = and i64 %sub90.i, %shl.i110
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and91.i)
  %cmp92.i = icmp eq i64 %and91.i, 0
  br i1 %cmp92.i, label %if.end100.i, label %do.end96.i

do.end96.i:                                       ; preds = %if.end89.i126
  call void @__sanitizer_cov_trace_pc() #10
  %330 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %331, ptr noundef nonnull @.str.223, ptr noundef nonnull @.str.212, i32 noundef 1573, i64 noundef %shl.i110, i64 noundef %.sink.i.i, i32 noundef %and45.i) #12
  br label %sw.epilog.thread141

if.end100.i:                                      ; preds = %if.end89.i126
  %and102.i = and i64 %sub90.i, %shl2.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and102.i)
  %cmp103.i = icmp eq i64 %and102.i, 0
  br i1 %cmp103.i, label %if.end111.i, label %do.end107.i

do.end107.i:                                      ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #10
  %332 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %333, ptr noundef nonnull @.str.226, ptr noundef nonnull @.str.212, i32 noundef 1578, i64 noundef %shl2.i, i64 noundef %.sink.i.i, i32 noundef %and45.i) #12
  br label %sw.epilog.thread141

if.end111.i:                                      ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr40.i, i32 %llevel.0.i)
  %cmp112.i = icmp ugt i32 %shr40.i, %llevel.0.i
  br i1 %cmp112.i, label %do.end116.i, label %if.end111.i.r600_fmt_get_blocksize.exit.i.i_crit_edge

if.end111.i.r600_fmt_get_blocksize.exit.i.i_crit_edge: ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %r600_fmt_get_blocksize.exit.i.i

do.end116.i:                                      ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #10
  %334 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %335, ptr noundef nonnull @.str.229, i32 noundef %shr40.i, i32 noundef %llevel.0.i) #12
  br label %r600_fmt_get_blocksize.exit.i.i

r600_fmt_get_blocksize.exit.i.i:                  ; preds = %do.end116.i, %if.end111.i.r600_fmt_get_blocksize.exit.i.i_crit_edge
  %sub.i.i = sub nsw i32 1, %shr40.i
  %add.i.i = add nsw i32 %llevel.0.i, %sub.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i)
  %cmp158.not.i.i = icmp eq i32 %add.i.i, 0
  br i1 %cmp158.not.i.i, label %r600_fmt_get_blocksize.exit.i.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

r600_fmt_get_blocksize.exit.i.i.for.end.i.i_crit_edge: ; preds = %r600_fmt_get_blocksize.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %r600_fmt_get_blocksize.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %cmp.i73.i.i = icmp eq i32 %and37.i, 0
  %.shr.i74.i.i = select i1 %cmp.i73.i.i, i32 1, i32 %and37.i
  %shr121.i = lshr i32 %retval.0.i279.i, 4
  %and122.i = and i32 %shr121.i, 8191
  %sub125.i = sub nsw i32 1, %and122.i
  %shr123.i = lshr i32 %retval.0.i279.i, 17
  %and124.i = and i32 %shr123.i, 8191
  %add126.i = add nsw i32 %sub125.i, %and124.i
  %nfaces.1.i = select i1 %is_array.1.off0.i, i32 %add126.i, i32 %nfaces.0.i
  %blocksize.i.i.i = getelementptr [57 x %struct.gpu_formats], ptr @color_formats_table, i32 0, i32 %shr38.i, i32 2
  %336 = ptrtoint ptr %blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %blocksize.i.i.i, align 4
  %blockheight.i.i.i = getelementptr [57 x %struct.gpu_formats], ptr @color_formats_table, i32 0, i32 %shr38.i, i32 1
  %sub12.i.i = add i32 %height_align.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nfaces.1.i)
  %tobool.not.i288.i = icmp eq i32 %nfaces.1.i, 0
  %mul.i.i = mul i32 %337, %array_check.sroa.19.0.i
  %338 = ptrtoint ptr %blockheight.i.i.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %blockheight.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %339)
  %cmp1.i113.i.i = icmp eq i32 %339, 0
  %call15.nfaces153.i.i = select i1 %tobool.not.i288.i, i32 %.shr.i74.i.i, i32 %nfaces.1.i
  %mul16150.i.i = mul i32 %mul.i.i, %call15.nfaces153.i.i
  %sub.i82.i.i.peel = add i32 %318, %shr27.i
  %div.i.i.i.peel = udiv i32 %sub.i82.i.i.peel, %318
  %sub6.i.i.peel = add i32 %div.i.i.i.peel, -1
  %or.i.i.peel = or i32 %sub6.i.i.peel, %sub.i
  %add8.i.i.peel = add i32 %or.i.i.peel, 1
  br i1 %cmp1.i113.i.i, label %for.body.lr.ph.i.i.r600_mip_minify.exit147.thread.i.i.peel_crit_edge, label %if.end3.i118.i.i.peel

for.body.lr.ph.i.i.r600_mip_minify.exit147.thread.i.i.peel_crit_edge: ; preds = %for.body.lr.ph.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %r600_mip_minify.exit147.thread.i.i.peel

if.end3.i118.i.i.peel:                            ; preds = %for.body.lr.ph.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i116.i.i.peel = add i32 %339, %and34.i
  %div.i117.i.i.peel = udiv i32 %sub.i116.i.i.peel, %339
  br label %r600_mip_minify.exit147.thread.i.i.peel

r600_mip_minify.exit147.thread.i.i.peel:          ; preds = %if.end3.i118.i.i.peel, %for.body.lr.ph.i.i.r600_mip_minify.exit147.thread.i.i.peel_crit_edge
  %retval.0.i119.i.i.peel = phi i32 [ %div.i117.i.i.peel, %if.end3.i118.i.i.peel ], [ 0, %for.body.lr.ph.i.i.r600_mip_minify.exit147.thread.i.i.peel_crit_edge ]
  %sub11.i.i.peel = add i32 %retval.0.i119.i.i.peel, -1
  %or13.i.i.peel = or i32 %sub11.i.i.peel, %sub12.i.i
  %add14.i.i.peel = add i32 %or13.i.i.peel, 1
  %mul17151.i.i.peel = mul i32 %mul16150.i.i, %add8.i.i.peel
  %size.0154.i.i.peel = mul i32 %mul17151.i.i.peel, %add14.i.i.peel
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add.i.i)
  %exitcond.not.i.i.peel = icmp eq i32 %add.i.i, 1
  br i1 %exitcond.not.i.i.peel, label %r600_mip_minify.exit147.thread.i.i.peel.for.end.i.i_crit_edge, label %r600_mip_minify.exit147.thread.i.i.peel.for.body.i.i_crit_edge

r600_mip_minify.exit147.thread.i.i.peel.for.body.i.i_crit_edge: ; preds = %r600_mip_minify.exit147.thread.i.i.peel
  br label %for.body.i.i

r600_mip_minify.exit147.thread.i.i.peel.for.end.i.i_crit_edge: ; preds = %r600_mip_minify.exit147.thread.i.i.peel
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %r600_mip_minify.exit147.thread.i.i.peel.for.body.i.i_crit_edge
  %i.0161.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 1, %r600_mip_minify.exit147.thread.i.i.peel.for.body.i.i_crit_edge ]
  %inc.i.i = add nuw i32 %i.0161.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %add.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge, !llvm.loop !413

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %r600_mip_minify.exit147.thread.i.i.peel.for.end.i.i_crit_edge, %r600_fmt_get_blocksize.exit.i.i.for.end.i.i_crit_edge
  %l0_size.3.i = phi i32 [ -1, %r600_fmt_get_blocksize.exit.i.i.for.end.i.i_crit_edge ], [ %size.0154.i.i.peel, %for.body.i.i.for.end.i.i_crit_edge ], [ %size.0154.i.i.peel, %r600_mip_minify.exit147.thread.i.i.peel.for.end.i.i_crit_edge ]
  %add129.i = add i32 %l0_size.3.i, %shl18328338353.i
  %size.i.i127 = getelementptr inbounds %struct.radeon_bo, ptr %269, i32 0, i32 4, i32 0, i32 5
  %340 = ptrtoint ptr %size.i.i127 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %size.i.i127, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add129.i, i32 %341)
  %cmp131.i = icmp ugt i32 %add129.i, %341
  br i1 %cmp131.i, label %do.end136.i, label %for.end.i.i.if.end548.i_crit_edge

for.end.i.i.if.end548.i_crit_edge:                ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end548.i

do.end136.i:                                      ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add29.i.le = add nuw nsw i32 %shr27.i, 1
  %add35.i.le = add nuw nsw i32 %and34.i, 1
  %342 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %343, ptr noundef nonnull @.str.232, i32 noundef %add29.i.le, i32 noundef %add35.i.le, i32 noundef %pitch_align.0.i, i32 noundef %height_align.0.i, i32 noundef %and45.i, i32 noundef %shr38.i, i32 noundef %shl18328338353.i, i32 noundef %l0_size.3.i, i32 noundef %341) #12
  %344 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %345, ptr noundef nonnull @.str.235, i32 noundef %mul.i124, i32 noundef %pitch_align.0.i, i32 noundef %height_align.0.i, i64 noundef %.sink.i.i) #12
  br label %sw.epilog.thread141

if.end548.i:                                      ; preds = %for.end.i.i.if.end548.i_crit_edge, %radeon_get_ib_value.exit1671.i.if.end548.i_crit_edge
  %arrayidx553.i = getelementptr i32, ptr %96, i32 %add533.i
  %346 = ptrtoint ptr %arrayidx553.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load volatile i32, ptr %arrayidx553.i, align 4
  %add554.i = add i32 %347, %conv490.i
  store volatile i32 %add554.i, ptr %arrayidx553.i, align 4
  %arrayidx559.i = getelementptr i32, ptr %96, i32 %add5401891.i
  %348 = ptrtoint ptr %arrayidx559.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load volatile i32, ptr %arrayidx559.i, align 4
  %add560.i = add i32 %349, %conv525.i
  store volatile i32 %add560.i, ptr %arrayidx559.i, align 4
  br label %for.inc637.i

sw.bb561.i:                                       ; preds = %radeon_get_ib_value.exit1653.i
  %call562.i = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call562.i)
  %tobool563.not.i = icmp eq i32 %call562.i, 0
  br i1 %tobool563.not.i, label %if.end565.i, label %cleanup626.i

if.end565.i:                                      ; preds = %sw.bb561.i
  %add568.i = add i32 %mul475.i, %add566.i
  %350 = ptrtoint ptr %chunk_ib.i.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %chunk_ib.i.i, align 4
  %kdata.i1673.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %351, i32 0, i32 1
  %352 = ptrtoint ptr %kdata.i1673.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %kdata.i1673.i, align 4
  %tobool.not.i1674.i = icmp eq ptr %353, null
  br i1 %tobool.not.i1674.i, label %if.end.i1685.i, label %if.end565.i.radeon_get_ib_value.exit1689.i_crit_edge

if.end565.i.radeon_get_ib_value.exit1689.i_crit_edge: ; preds = %if.end565.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_get_ib_value.exit1689.i

if.end.i1685.i:                                   ; preds = %if.end565.i
  call void @__sanitizer_cov_trace_pc() #10
  %354 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %ptr.i, align 8
  br label %radeon_get_ib_value.exit1689.i

radeon_get_ib_value.exit1689.i:                   ; preds = %if.end.i1685.i, %if.end565.i.radeon_get_ib_value.exit1689.i_crit_edge
  %.pn1956.i = phi ptr [ %355, %if.end.i1685.i ], [ %353, %if.end565.i.radeon_get_ib_value.exit1689.i_crit_edge ]
  %retval.0.i16791897.in.i = getelementptr i32, ptr %.pn1956.i, i32 %add568.i
  %356 = ptrtoint ptr %retval.0.i16791897.in.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %retval.0.i16791897.i = load i32, ptr %retval.0.i16791897.in.i, align 4
  %add5741899.i = add i32 %add568.i, 1
  %357 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %rdev.i, align 4
  %tobool577.not.i = icmp eq ptr %358, null
  br i1 %tobool577.not.i, label %radeon_get_ib_value.exit1689.i.cleanup626.thread.i_crit_edge, label %land.lhs.true578.i

radeon_get_ib_value.exit1689.i.cleanup626.thread.i_crit_edge: ; preds = %radeon_get_ib_value.exit1689.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup626.thread.i

land.lhs.true578.i:                               ; preds = %radeon_get_ib_value.exit1689.i
  %retval.0.in.i1687.i = getelementptr i32, ptr %.pn1956.i, i32 %add5741899.i
  %359 = ptrtoint ptr %retval.0.in.i1687.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %retval.0.i1688.i = load i32, ptr %retval.0.in.i1687.i, align 4
  %add576.i = add i32 %retval.0.i16791897.i, 1
  %add579.i = add i32 %add576.i, %retval.0.i1688.i
  %360 = ptrtoint ptr %reloc.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %reloc.i, align 4
  %362 = ptrtoint ptr %361 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %361, align 8
  %size.i1690.i = getelementptr inbounds %struct.radeon_bo, ptr %363, i32 0, i32 4, i32 0, i32 5
  %364 = ptrtoint ptr %size.i1690.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %size.i1690.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add579.i, i32 %365)
  %cmp582.i = icmp ugt i32 %add579.i, %365
  br i1 %cmp582.i, label %do.end587.i, label %land.lhs.true578.i.cleanup626.thread.i_crit_edge

land.lhs.true578.i.cleanup626.thread.i_crit_edge: ; preds = %land.lhs.true578.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup626.thread.i

do.end587.i:                                      ; preds = %land.lhs.true578.i
  call void @__sanitizer_cov_trace_pc() #10
  %366 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %367, ptr noundef nonnull @.str.70, i32 noundef %add579.i, i32 noundef %365) #12
  %368 = ptrtoint ptr %reloc.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %reloc.i, align 4
  %370 = ptrtoint ptr %369 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %369, align 8
  %size.i1692.i = getelementptr inbounds %struct.radeon_bo, ptr %371, i32 0, i32 4, i32 0, i32 5
  %372 = ptrtoint ptr %size.i1692.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %size.i1692.i, align 8
  %sub594.i = sub i32 %373, %retval.0.i16791897.i
  %arrayidx599.i = getelementptr i32, ptr %96, i32 %add5741899.i
  %374 = ptrtoint ptr %arrayidx599.i to i32
  call void @__asan_store4_noabort(i32 %374)
  store volatile i32 %sub594.i, ptr %arrayidx599.i, align 4
  br label %cleanup626.thread.i

cleanup626.thread.i:                              ; preds = %do.end587.i, %land.lhs.true578.i.cleanup626.thread.i_crit_edge, %radeon_get_ib_value.exit1689.i.cleanup626.thread.i_crit_edge
  %375 = ptrtoint ptr %reloc.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %reloc.i, align 4
  %gpu_offset601.i = getelementptr inbounds %struct.radeon_bo_list, ptr %376, i32 0, i32 2
  %377 = ptrtoint ptr %gpu_offset601.i to i32
  call void @__asan_load8_noabort(i32 %377)
  %378 = load i64, ptr %gpu_offset601.i, align 8
  %conv602.i = zext i32 %retval.0.i16791897.i to i64
  %add603.i = add i64 %378, %conv602.i
  %conv604.i = trunc i64 %add603.i to i32
  %mul606.i = shl i32 %i.21969.i, 3
  %add607.i = add i32 %mul606.i, %add566.i
  %arrayidx609.i = getelementptr i32, ptr %96, i32 %add607.i
  %379 = ptrtoint ptr %arrayidx609.i to i32
  call void @__asan_store4_noabort(i32 %379)
  store volatile i32 %conv604.i, ptr %arrayidx609.i, align 4
  %add613.i = add i32 %add607.i, 2
  %arrayidx614.i = getelementptr i32, ptr %96, i32 %add613.i
  %380 = ptrtoint ptr %arrayidx614.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load volatile i32, ptr %arrayidx614.i, align 4
  %and615.i = and i32 %381, -256
  %shr616.i = lshr i64 %add603.i, 32
  %conv618.i = trunc i64 %shr616.i to i32
  %and619.i = and i32 %conv618.i, 255
  %or620.i = or i32 %and619.i, %and615.i
  store volatile i32 %or620.i, ptr %arrayidx614.i, align 4
  br label %for.inc637.i

cleanup626.i:                                     ; preds = %sw.bb561.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.68) #8
  br label %sw.epilog.thread141

for.body472.unreachabledefault.i:                 ; preds = %radeon_get_ib_value.exit1653.i
  unreachable

sw.default.i:                                     ; preds = %radeon_get_ib_value.exit1653.i.sw.default.i_crit_edge, %radeon_get_ib_value.exit1653.i.sw.default.i_crit_edge2399
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.68) #8
  br label %sw.epilog.thread141

for.inc637.i:                                     ; preds = %cleanup626.thread.i, %if.end548.i
  %inc638.i = add nuw i32 %i.21969.i, 1
  %382 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %3, align 4
  %div.i = sdiv i32 %383, 7
  %cmp470.i = icmp ult i32 %inc638.i, %div.i
  br i1 %cmp470.i, label %for.inc637.i.for.body472.i_crit_edge, label %for.inc637.i.sw.epilog_crit_edge

for.inc637.i.sw.epilog_crit_edge:                 ; preds = %for.inc637.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.inc637.i.for.body472.i_crit_edge:             ; preds = %for.inc637.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body472.i

sw.bb640.i:                                       ; preds = %sw.bb39
  %sq_config.i99 = getelementptr inbounds %struct.r600_cs_track, ptr %94, i32 0, i32 3
  %384 = ptrtoint ptr %sq_config.i99 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %sq_config.i99, align 4
  %and641.i = and i32 %385, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and641.i)
  %tobool642.not.i = icmp eq i32 %and641.i, 0
  br i1 %tobool642.not.i, label %sw.bb640.i.sw.epilog_crit_edge, label %if.then643.i

sw.bb640.i.sw.epilog_crit_edge:                   ; preds = %sw.bb640.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then643.i:                                     ; preds = %sw.bb640.i
  %shl644.i = shl i32 %retval.0.i.i, 2
  %mul647.i = shl i32 %80, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %shl644.i)
  %386 = icmp ugt i32 %shl644.i, 8191
  %add648.i = add i32 %mul647.i, -8196
  %387 = add i32 %add648.i, %shl644.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -204800, i32 %387)
  %cmp656.i = icmp ult i32 %387, -204800
  %or.cond1493.i = select i1 %386, i1 true, i1 %cmp656.i
  br i1 %or.cond1493.i, label %if.then658.i, label %if.then643.i.sw.epilog_crit_edge

if.then643.i.sw.epilog_crit_edge:                 ; preds = %if.then643.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then658.i:                                     ; preds = %if.then643.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.72) #8
  br label %sw.epilog.thread141

sw.bb661.i:                                       ; preds = %sw.bb39
  %shl662.i = shl i32 %retval.0.i.i, 2
  %mul665.i = shl i32 %80, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7295, i32 %shl662.i)
  %388 = icmp ugt i32 %shl662.i, 7295
  %add666.i = add i32 %mul665.i, -7300
  %389 = add i32 %add666.i, %shl662.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -262144, i32 %389)
  %cmp674.i = icmp ult i32 %389, -262144
  %or.cond1495.i = select i1 %388, i1 true, i1 %cmp674.i
  br i1 %or.cond1495.i, label %if.then676.i, label %sw.bb661.i.sw.epilog_crit_edge

sw.bb661.i.sw.epilog_crit_edge:                   ; preds = %sw.bb661.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then676.i:                                     ; preds = %sw.bb661.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.73) #8
  br label %sw.epilog.thread141

sw.bb678.i:                                       ; preds = %sw.bb39
  %shl679.i = shl i32 %retval.0.i.i, 2
  %mul682.i = shl i32 %80, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 383, i32 %shl679.i)
  %390 = icmp ugt i32 %shl679.i, 383
  %add683.i = add i32 %mul682.i, -388
  %391 = add i32 %add683.i, %shl679.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -254848, i32 %391)
  %cmp691.i = icmp ult i32 %391, -254848
  %or.cond1497.i = select i1 %390, i1 true, i1 %cmp691.i
  br i1 %or.cond1497.i, label %if.then693.i, label %sw.bb678.i.sw.epilog_crit_edge

sw.bb678.i.sw.epilog_crit_edge:                   ; preds = %sw.bb678.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then693.i:                                     ; preds = %sw.bb678.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #8
  br label %sw.epilog.thread141

sw.bb695.i:                                       ; preds = %sw.bb39
  %shl696.i = shl i32 %retval.0.i.i, 2
  %mul699.i = shl i32 %80, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4623, i32 %shl696.i)
  %392 = icmp ugt i32 %shl696.i, 4623
  %add700.i = add i32 %mul699.i, -4628
  %393 = add i32 %add700.i, %shl696.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -254464, i32 %393)
  %cmp708.i = icmp ult i32 %393, -254464
  %or.cond1499.i = select i1 %392, i1 true, i1 %cmp708.i
  br i1 %or.cond1499.i, label %if.then710.i, label %sw.bb695.i.sw.epilog_crit_edge

sw.bb695.i.sw.epilog_crit_edge:                   ; preds = %sw.bb695.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then710.i:                                     ; preds = %sw.bb695.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.75) #8
  br label %sw.epilog.thread141

sw.bb712.i:                                       ; preds = %sw.bb39
  %rem714.i = srem i32 %80, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem714.i)
  %tobool715.not.i = icmp eq i32 %rem714.i, 0
  br i1 %tobool715.not.i, label %if.end717.i, label %if.then716.i

if.then716.i:                                     ; preds = %sw.bb712.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.76) #8
  br label %sw.epilog.thread141

if.end717.i:                                      ; preds = %sw.bb712.i
  %shl718.i = shl i32 %retval.0.i.i, 2
  %mul721.i = shl i32 %80, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4079, i32 %shl718.i)
  %394 = icmp ugt i32 %shl718.i, 4079
  %add722.i = add i32 %mul721.i, -4084
  %395 = add i32 %add722.i, %shl718.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -249840, i32 %395)
  %cmp730.i = icmp ult i32 %395, -249840
  %or.cond1501.i = select i1 %394, i1 true, i1 %cmp730.i
  br i1 %or.cond1501.i, label %if.then732.i, label %if.end717.i.sw.epilog_crit_edge

if.end717.i.sw.epilog_crit_edge:                  ; preds = %if.end717.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then732.i:                                     ; preds = %if.end717.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.76) #8
  br label %sw.epilog.thread141

sw.bb734.i:                                       ; preds = %sw.bb39
  %396 = ptrtoint ptr %family794.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %family794.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %397)
  %cmp736.i = icmp ult i32 %397, 33
  br i1 %cmp736.i, label %if.then738.i, label %if.end739.i

if.then738.i:                                     ; preds = %sw.bb734.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.77) #8
  br label %sw.epilog.thread141

if.end739.i:                                      ; preds = %sw.bb734.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %80)
  %cmp741.not.i = icmp eq i32 %80, 1
  br i1 %cmp741.not.i, label %if.end744.i, label %if.then743.i

if.then743.i:                                     ; preds = %if.end739.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.78) #8
  br label %sw.epilog.thread141

if.end744.i:                                      ; preds = %if.end739.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %retval.0.i.i)
  %cmp745.i = icmp ugt i32 %retval.0.i.i, 3
  br i1 %cmp745.i, label %if.then747.i, label %if.end748.i

if.then747.i:                                     ; preds = %if.end744.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.79) #8
  br label %sw.epilog.thread141

if.end748.i:                                      ; preds = %if.end744.i
  %call750.i = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call750.i)
  %tobool751.not.i = icmp eq i32 %call750.i, 0
  br i1 %tobool751.not.i, label %if.end753.i, label %if.then752.i

if.then752.i:                                     ; preds = %if.end748.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.80) #8
  br label %sw.epilog.thread141

if.end753.i:                                      ; preds = %if.end748.i
  %398 = ptrtoint ptr %reloc.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %reloc.i, align 4
  %400 = ptrtoint ptr %399 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %399, align 8
  %arrayidx755.i = getelementptr %struct.r600_cs_track, ptr %94, i32 0, i32 24, i32 %retval.0.i.i
  %402 = ptrtoint ptr %arrayidx755.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %arrayidx755.i, align 4
  %cmp756.not.i = icmp eq ptr %401, %403
  br i1 %cmp756.not.i, label %if.end759.i, label %if.then758.i

if.then758.i:                                     ; preds = %if.end753.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.81) #8
  br label %sw.epilog.thread141

if.end759.i:                                      ; preds = %if.end753.i
  %add760.i = add i32 %98, 2
  %404 = ptrtoint ptr %chunk_ib.i.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %chunk_ib.i.i, align 4
  %kdata.i1694.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %405, i32 0, i32 1
  %406 = ptrtoint ptr %kdata.i1694.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %kdata.i1694.i, align 4
  %tobool.not.i1695.i = icmp eq ptr %407, null
  br i1 %tobool.not.i1695.i, label %if.end.i1697.i, label %if.end759.i.radeon_get_ib_value.exit1701.i_crit_edge

if.end759.i.radeon_get_ib_value.exit1701.i_crit_edge: ; preds = %if.end759.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_get_ib_value.exit1701.i

if.end.i1697.i:                                   ; preds = %if.end759.i
  call void @__sanitizer_cov_trace_pc() #10
  %408 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %ptr.i, align 8
  br label %radeon_get_ib_value.exit1701.i

radeon_get_ib_value.exit1701.i:                   ; preds = %if.end.i1697.i, %if.end759.i.radeon_get_ib_value.exit1701.i_crit_edge
  %.pn.i1698.i = phi ptr [ %409, %if.end.i1697.i ], [ %407, %if.end759.i.radeon_get_ib_value.exit1701.i_crit_edge ]
  %retval.0.in.i1699.i = getelementptr i32, ptr %.pn.i1698.i, i32 %add760.i
  %410 = ptrtoint ptr %retval.0.in.i1699.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %retval.0.i1700.i = load i32, ptr %retval.0.in.i1699.i, align 4
  %shl762.i = shl i32 %retval.0.i1700.i, 8
  %conv763.i = zext i32 %shl762.i to i64
  %arrayidx764.i = getelementptr %struct.r600_cs_track, ptr %94, i32 0, i32 26, i32 %retval.0.i.i
  %411 = ptrtoint ptr %arrayidx764.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %arrayidx764.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl762.i, i32 %412)
  %cmp766.not.i = icmp eq i32 %shl762.i, %412
  br i1 %cmp766.not.i, label %if.end771.i, label %if.then768.i

if.then768.i:                                     ; preds = %radeon_get_ib_value.exit1701.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.82, i64 noundef %conv763.i, i32 noundef %412) #8
  br label %sw.epilog.thread141

if.end771.i:                                      ; preds = %radeon_get_ib_value.exit1701.i
  %add772.i = or i64 %conv763.i, 4
  %size.i1702.i = getelementptr inbounds %struct.radeon_bo, ptr %401, i32 0, i32 4, i32 0, i32 5
  %413 = ptrtoint ptr %size.i1702.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load i32, ptr %size.i1702.i, align 8
  %conv775.i = zext i32 %414 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add772.i, i64 %conv775.i)
  %cmp776.i = icmp ugt i64 %add772.i, %conv775.i
  br i1 %cmp776.i, label %if.then778.i, label %if.end782.i

if.then778.i:                                     ; preds = %if.end771.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.83, i64 noundef %add772.i, i32 noundef %414) #8
  br label %sw.epilog.thread141

if.end782.i:                                      ; preds = %if.end771.i
  call void @__sanitizer_cov_trace_pc() #10
  %gpu_offset783.i = getelementptr inbounds %struct.radeon_bo_list, ptr %399, i32 0, i32 2
  %415 = ptrtoint ptr %gpu_offset783.i to i32
  call void @__asan_load8_noabort(i32 %415)
  %416 = load i64, ptr %gpu_offset783.i, align 8
  %shr784.i = lshr i64 %416, 8
  %conv786.i = trunc i64 %shr784.i to i32
  %arrayidx788.i = getelementptr i32, ptr %96, i32 %add760.i
  %417 = ptrtoint ptr %arrayidx788.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load volatile i32, ptr %arrayidx788.i, align 4
  %add789.i = add i32 %418, %conv786.i
  store volatile i32 %add789.i, ptr %arrayidx788.i, align 4
  br label %sw.epilog

sw.bb793.i:                                       ; preds = %sw.bb39
  %419 = ptrtoint ptr %family794.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load i32, ptr %family794.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %420)
  %cmp795.i = icmp ugt i32 %420, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %420)
  %cmp799.i = icmp eq i32 %420, 27
  %or.cond1503.i = or i1 %cmp795.i, %cmp799.i
  br i1 %or.cond1503.i, label %if.then801.i, label %if.end802.i

if.then801.i:                                     ; preds = %sw.bb793.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.84) #8
  br label %sw.epilog.thread141

if.end802.i:                                      ; preds = %sw.bb793.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool804.not.i = icmp eq i32 %80, 0
  br i1 %tobool804.not.i, label %if.end802.i.sw.epilog_crit_edge, label %if.then805.i

if.end802.i.sw.epilog_crit_edge:                  ; preds = %if.end802.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then805.i:                                     ; preds = %if.end802.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.84) #8
  br label %sw.epilog.thread141

sw.bb807.i:                                       ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %80)
  %cmp809.not.i = icmp eq i32 %80, 4
  br i1 %cmp809.not.i, label %if.end812.i, label %if.then811.i

if.then811.i:                                     ; preds = %sw.bb807.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.85) #8
  br label %sw.epilog.thread141

if.end812.i:                                      ; preds = %sw.bb807.i
  %and813.i = and i32 %retval.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and813.i)
  %tobool814.not.i = icmp eq i32 %and813.i, 0
  br i1 %tobool814.not.i, label %if.end812.i.if.end855.i_crit_edge, label %if.then815.i

if.end812.i.if.end855.i_crit_edge:                ; preds = %if.end812.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end855.i

if.then815.i:                                     ; preds = %if.end812.i
  %call817.i = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call817.i)
  %tobool818.not.i = icmp eq i32 %call817.i, 0
  br i1 %tobool818.not.i, label %if.end820.i, label %if.then819.i

if.then819.i:                                     ; preds = %if.then815.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.86) #8
  br label %sw.epilog.thread141

if.end820.i:                                      ; preds = %if.then815.i
  %add821.i = add i32 %98, 2
  %421 = ptrtoint ptr %chunk_ib.i.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %chunk_ib.i.i, align 4
  %kdata.i1705.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %422, i32 0, i32 1
  %423 = ptrtoint ptr %kdata.i1705.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %kdata.i1705.i, align 4
  %tobool.not.i1706.i = icmp eq ptr %424, null
  br i1 %tobool.not.i1706.i, label %if.end.i1717.i, label %if.end820.i.radeon_get_ib_value.exit1721.i_crit_edge

if.end820.i.radeon_get_ib_value.exit1721.i_crit_edge: ; preds = %if.end820.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_get_ib_value.exit1721.i

if.end.i1717.i:                                   ; preds = %if.end820.i
  call void @__sanitizer_cov_trace_pc() #10
  %425 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %ptr.i, align 8
  br label %radeon_get_ib_value.exit1721.i

radeon_get_ib_value.exit1721.i:                   ; preds = %if.end.i1717.i, %if.end820.i.radeon_get_ib_value.exit1721.i_crit_edge
  %.pn1954.i = phi ptr [ %426, %if.end.i1717.i ], [ %424, %if.end820.i.radeon_get_ib_value.exit1721.i_crit_edge ]
  %conv8231909.in.in.i = getelementptr i32, ptr %.pn1954.i, i32 %add821.i
  %427 = ptrtoint ptr %conv8231909.in.in.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %conv8231909.in.i = load i32, ptr %conv8231909.in.in.i, align 4
  %conv8231909.i = zext i32 %conv8231909.in.i to i64
  %add8241911.i = add i32 %98, 3
  %retval.0.in.i1719.i = getelementptr i32, ptr %.pn1954.i, i32 %add8241911.i
  %428 = ptrtoint ptr %retval.0.in.i1719.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %retval.0.i1720.i = load i32, ptr %retval.0.in.i1719.i, align 4
  %and826.i = and i32 %retval.0.i1720.i, 255
  %conv827.i = zext i32 %and826.i to i64
  %shl828.i = shl nuw nsw i64 %conv827.i, 32
  %add829.i = or i64 %shl828.i, %conv8231909.i
  %add830.i = add nuw nsw i64 %add829.i, 4
  %429 = ptrtoint ptr %reloc.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %reloc.i, align 4
  %431 = ptrtoint ptr %430 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %430, align 8
  %size.i1722.i = getelementptr inbounds %struct.radeon_bo, ptr %432, i32 0, i32 4, i32 0, i32 5
  %433 = ptrtoint ptr %size.i1722.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %size.i1722.i, align 8
  %conv833.i = zext i32 %434 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add830.i, i64 %conv833.i)
  %cmp834.i = icmp ugt i64 %add830.i, %conv833.i
  br i1 %cmp834.i, label %if.then836.i, label %if.end840.i

if.then836.i:                                     ; preds = %radeon_get_ib_value.exit1721.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.87, i64 noundef %add830.i, i32 noundef %434) #8
  br label %sw.epilog.thread141

if.end840.i:                                      ; preds = %radeon_get_ib_value.exit1721.i
  call void @__sanitizer_cov_trace_pc() #10
  %gpu_offset841.i = getelementptr inbounds %struct.radeon_bo_list, ptr %430, i32 0, i32 2
  %435 = ptrtoint ptr %gpu_offset841.i to i32
  call void @__asan_load8_noabort(i32 %435)
  %436 = load i64, ptr %gpu_offset841.i, align 8
  %add842.i = add i64 %436, %add829.i
  %conv843.i = trunc i64 %add842.i to i32
  %arrayidx845.i = getelementptr i32, ptr %96, i32 %add821.i
  %437 = ptrtoint ptr %arrayidx845.i to i32
  call void @__asan_store4_noabort(i32 %437)
  store volatile i32 %conv843.i, ptr %arrayidx845.i, align 4
  %shr846.i = lshr i64 %add842.i, 32
  %conv848.i = trunc i64 %shr846.i to i32
  %and849.i = and i32 %conv848.i, 255
  %arrayidx851.i = getelementptr i32, ptr %96, i32 %add8241911.i
  %438 = ptrtoint ptr %arrayidx851.i to i32
  call void @__asan_store4_noabort(i32 %438)
  store volatile i32 %and849.i, ptr %arrayidx851.i, align 4
  br label %if.end855.i

if.end855.i:                                      ; preds = %if.end840.i, %if.end812.i.if.end855.i_crit_edge
  %439 = and i32 %retval.0.i.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %439)
  %cmp858.i = icmp eq i32 %439, 4
  br i1 %cmp858.i, label %if.then860.i, label %if.end855.i.sw.epilog_crit_edge

if.end855.i.sw.epilog_crit_edge:                  ; preds = %if.end855.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then860.i:                                     ; preds = %if.end855.i
  %call862.i = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call862.i)
  %tobool863.not.i = icmp eq i32 %call862.i, 0
  br i1 %tobool863.not.i, label %if.end865.i, label %if.then864.i

if.then864.i:                                     ; preds = %if.then860.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.88) #8
  br label %sw.epilog.thread141

if.end865.i:                                      ; preds = %if.then860.i
  %add866.i = add i32 %98, 4
  %440 = ptrtoint ptr %chunk_ib.i.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %chunk_ib.i.i, align 4
  %kdata.i1725.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %441, i32 0, i32 1
  %442 = ptrtoint ptr %kdata.i1725.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %kdata.i1725.i, align 4
  %tobool.not.i1726.i = icmp eq ptr %443, null
  br i1 %tobool.not.i1726.i, label %if.end.i1737.i, label %if.end865.i.radeon_get_ib_value.exit1741.i_crit_edge

if.end865.i.radeon_get_ib_value.exit1741.i_crit_edge: ; preds = %if.end865.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_get_ib_value.exit1741.i

if.end.i1737.i:                                   ; preds = %if.end865.i
  call void @__sanitizer_cov_trace_pc() #10
  %444 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %ptr.i, align 8
  br label %radeon_get_ib_value.exit1741.i

radeon_get_ib_value.exit1741.i:                   ; preds = %if.end.i1737.i, %if.end865.i.radeon_get_ib_value.exit1741.i_crit_edge
  %.pn1955.i = phi ptr [ %445, %if.end.i1737.i ], [ %443, %if.end865.i.radeon_get_ib_value.exit1741.i_crit_edge ]
  %conv8681918.in.in.i = getelementptr i32, ptr %.pn1955.i, i32 %add866.i
  %446 = ptrtoint ptr %conv8681918.in.in.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %conv8681918.in.i = load i32, ptr %conv8681918.in.in.i, align 4
  %conv8681918.i = zext i32 %conv8681918.in.i to i64
  %add8691920.i = add i32 %98, 5
  %retval.0.in.i1739.i = getelementptr i32, ptr %.pn1955.i, i32 %add8691920.i
  %447 = ptrtoint ptr %retval.0.in.i1739.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %retval.0.i1740.i = load i32, ptr %retval.0.in.i1739.i, align 4
  %and871.i = and i32 %retval.0.i1740.i, 255
  %conv872.i = zext i32 %and871.i to i64
  %shl873.i = shl nuw nsw i64 %conv872.i, 32
  %add874.i = or i64 %shl873.i, %conv8681918.i
  %add875.i = add nuw nsw i64 %add874.i, 4
  %448 = ptrtoint ptr %reloc.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %reloc.i, align 4
  %450 = ptrtoint ptr %449 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %449, align 8
  %size.i1742.i = getelementptr inbounds %struct.radeon_bo, ptr %451, i32 0, i32 4, i32 0, i32 5
  %452 = ptrtoint ptr %size.i1742.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load i32, ptr %size.i1742.i, align 8
  %conv878.i = zext i32 %453 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add875.i, i64 %conv878.i)
  %cmp879.i = icmp ugt i64 %add875.i, %conv878.i
  br i1 %cmp879.i, label %if.then881.i, label %if.end885.i

if.then881.i:                                     ; preds = %radeon_get_ib_value.exit1741.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.89, i64 noundef %add875.i, i32 noundef %453) #8
  br label %sw.epilog.thread141

if.end885.i:                                      ; preds = %radeon_get_ib_value.exit1741.i
  call void @__sanitizer_cov_trace_pc() #10
  %gpu_offset886.i = getelementptr inbounds %struct.radeon_bo_list, ptr %449, i32 0, i32 2
  %454 = ptrtoint ptr %gpu_offset886.i to i32
  call void @__asan_load8_noabort(i32 %454)
  %455 = load i64, ptr %gpu_offset886.i, align 8
  %add887.i = add i64 %455, %add874.i
  %conv888.i = trunc i64 %add887.i to i32
  %arrayidx890.i = getelementptr i32, ptr %96, i32 %add866.i
  %456 = ptrtoint ptr %arrayidx890.i to i32
  call void @__asan_store4_noabort(i32 %456)
  store volatile i32 %conv888.i, ptr %arrayidx890.i, align 4
  %shr891.i = lshr i64 %add887.i, 32
  %conv893.i = trunc i64 %shr891.i to i32
  %and894.i = and i32 %conv893.i, 255
  %arrayidx896.i = getelementptr i32, ptr %96, i32 %add8691920.i
  %457 = ptrtoint ptr %arrayidx896.i to i32
  call void @__asan_store4_noabort(i32 %457)
  store volatile i32 %and894.i, ptr %arrayidx896.i, align 4
  br label %sw.epilog

sw.bb901.i:                                       ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %80)
  %cmp904.not.i = icmp eq i32 %80, 3
  br i1 %cmp904.not.i, label %if.end907.i, label %if.then906.i

if.then906.i:                                     ; preds = %sw.bb901.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.90) #8
  br label %sw.epilog.thread141

if.end907.i:                                      ; preds = %sw.bb901.i
  %call908.i = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call908.i)
  %tobool909.not.i = icmp eq i32 %call908.i, 0
  br i1 %tobool909.not.i, label %if.end911.i, label %if.then910.i

if.then910.i:                                     ; preds = %if.end907.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.91) #8
  br label %sw.epilog.thread141

if.end911.i:                                      ; preds = %if.end907.i
  %458 = ptrtoint ptr %chunk_ib.i.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %chunk_ib.i.i, align 4
  %kdata.i1745.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %459, i32 0, i32 1
  %460 = ptrtoint ptr %kdata.i1745.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %kdata.i1745.i, align 4
  %tobool.not.i1746.i = icmp eq ptr %461, null
  br i1 %tobool.not.i1746.i, label %if.end.i1757.i, label %if.end911.i.radeon_get_ib_value.exit1761.i_crit_edge

if.end911.i.radeon_get_ib_value.exit1761.i_crit_edge: ; preds = %if.end911.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_get_ib_value.exit1761.i

if.end.i1757.i:                                   ; preds = %if.end911.i
  call void @__sanitizer_cov_trace_pc() #10
  %462 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %ptr.i, align 8
  br label %radeon_get_ib_value.exit1761.i

radeon_get_ib_value.exit1761.i:                   ; preds = %if.end.i1757.i, %if.end911.i.radeon_get_ib_value.exit1761.i_crit_edge
  %.pn1953.i = phi ptr [ %463, %if.end.i1757.i ], [ %461, %if.end911.i.radeon_get_ib_value.exit1761.i_crit_edge ]
  %conv9141927.in.in.i = getelementptr i32, ptr %.pn1953.i, i32 %add.i
  %464 = ptrtoint ptr %conv9141927.in.in.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %conv9141927.in.i = load i32, ptr %conv9141927.in.in.i, align 4
  %conv9141927.i = zext i32 %conv9141927.in.i to i64
  %add9151929.i = add i32 %98, 2
  %retval.0.in.i1759.i = getelementptr i32, ptr %.pn1953.i, i32 %add9151929.i
  %465 = ptrtoint ptr %retval.0.in.i1759.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %retval.0.i1760.i = load i32, ptr %retval.0.in.i1759.i, align 4
  %and917.i = and i32 %retval.0.i1760.i, 255
  %conv918.i = zext i32 %and917.i to i64
  %shl919.i = shl nuw nsw i64 %conv918.i, 32
  %add920.i = or i64 %shl919.i, %conv9141927.i
  %and921.i = and i64 %conv9141927.i, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and921.i)
  %tobool922.not.i = icmp eq i64 %and921.i, 0
  br i1 %tobool922.not.i, label %if.end924.i, label %if.then923.i

if.then923.i:                                     ; preds = %radeon_get_ib_value.exit1761.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.92) #8
  br label %sw.epilog.thread141

if.end924.i:                                      ; preds = %radeon_get_ib_value.exit1761.i
  %add925.i = add nuw nsw i64 %add920.i, 8
  %466 = ptrtoint ptr %reloc.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %reloc.i, align 4
  %468 = ptrtoint ptr %467 to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %467, align 8
  %size.i1762.i = getelementptr inbounds %struct.radeon_bo, ptr %469, i32 0, i32 4, i32 0, i32 5
  %470 = ptrtoint ptr %size.i1762.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load i32, ptr %size.i1762.i, align 8
  %conv928.i = zext i32 %471 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add925.i, i64 %conv928.i)
  %cmp929.i = icmp ugt i64 %add925.i, %conv928.i
  br i1 %cmp929.i, label %if.then931.i, label %if.end935.i

if.then931.i:                                     ; preds = %if.end924.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.93, i64 noundef %add925.i, i32 noundef %471) #8
  br label %sw.epilog.thread141

if.end935.i:                                      ; preds = %if.end924.i
  call void @__sanitizer_cov_trace_pc() #10
  %gpu_offset936.i = getelementptr inbounds %struct.radeon_bo_list, ptr %467, i32 0, i32 2
  %472 = ptrtoint ptr %gpu_offset936.i to i32
  call void @__asan_load8_noabort(i32 %472)
  %473 = load i64, ptr %gpu_offset936.i, align 8
  %add937.i = add i64 %473, %add920.i
  %conv938.i = trunc i64 %add937.i to i32
  %arrayidx940.i = getelementptr i32, ptr %96, i32 %add.i
  %474 = ptrtoint ptr %arrayidx940.i to i32
  call void @__asan_store4_noabort(i32 %474)
  store volatile i32 %conv938.i, ptr %arrayidx940.i, align 4
  %shr941.i = lshr i64 %add937.i, 32
  %conv943.i = trunc i64 %shr941.i to i32
  %and944.i = and i32 %conv943.i, 255
  %arrayidx946.i = getelementptr i32, ptr %96, i32 %add9151929.i
  %475 = ptrtoint ptr %arrayidx946.i to i32
  call void @__asan_store4_noabort(i32 %475)
  store volatile i32 %and944.i, ptr %arrayidx946.i, align 4
  br label %sw.epilog

sw.bb949.i:                                       ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %80)
  %cmp951.not.i = icmp eq i32 %80, 4
  br i1 %cmp951.not.i, label %if.end954.i, label %if.then953.i

if.then953.i:                                     ; preds = %sw.bb949.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.94) #8
  br label %sw.epilog.thread141

if.end954.i:                                      ; preds = %sw.bb949.i
  %and955.i = and i32 %retval.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and955.i)
  %tobool956.not.i = icmp eq i32 %and955.i, 0
  br i1 %tobool956.not.i, label %if.else997.i, label %if.then957.i

if.then957.i:                                     ; preds = %if.end954.i
  %call959.i = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call959.i)
  %tobool960.not.i = icmp eq i32 %call959.i, 0
  br i1 %tobool960.not.i, label %if.end962.i, label %if.then961.i

if.then961.i:                                     ; preds = %if.then957.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.95) #8
  br label %sw.epilog.thread141

if.end962.i:                                      ; preds = %if.then957.i
  %add963.i = add i32 %98, 2
  %476 = ptrtoint ptr %chunk_ib.i.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %chunk_ib.i.i, align 4
  %kdata.i1765.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %477, i32 0, i32 1
  %478 = ptrtoint ptr %kdata.i1765.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %kdata.i1765.i, align 4
  %tobool.not.i1766.i = icmp eq ptr %479, null
  br i1 %tobool.not.i1766.i, label %if.end.i1777.i, label %if.end962.i.radeon_get_ib_value.exit1781.i_crit_edge

if.end962.i.radeon_get_ib_value.exit1781.i_crit_edge: ; preds = %if.end962.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_get_ib_value.exit1781.i

if.end.i1777.i:                                   ; preds = %if.end962.i
  call void @__sanitizer_cov_trace_pc() #10
  %480 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %ptr.i, align 8
  br label %radeon_get_ib_value.exit1781.i

radeon_get_ib_value.exit1781.i:                   ; preds = %if.end.i1777.i, %if.end962.i.radeon_get_ib_value.exit1781.i_crit_edge
  %.pn.i = phi ptr [ %481, %if.end.i1777.i ], [ %479, %if.end962.i.radeon_get_ib_value.exit1781.i_crit_edge ]
  %conv9651936.in.in.i = getelementptr i32, ptr %.pn.i, i32 %add963.i
  %482 = ptrtoint ptr %conv9651936.in.in.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %conv9651936.in.i = load i32, ptr %conv9651936.in.in.i, align 4
  %conv9651936.i = zext i32 %conv9651936.in.i to i64
  %add9661938.i = add i32 %98, 3
  %retval.0.in.i1779.i = getelementptr i32, ptr %.pn.i, i32 %add9661938.i
  %483 = ptrtoint ptr %retval.0.in.i1779.i to i32
  call void @__asan_load4_noabort(i32 %483)
  %retval.0.i1780.i = load i32, ptr %retval.0.in.i1779.i, align 4
  %and968.i = and i32 %retval.0.i1780.i, 255
  %conv969.i = zext i32 %and968.i to i64
  %shl970.i = shl nuw nsw i64 %conv969.i, 32
  %add971.i = or i64 %shl970.i, %conv9651936.i
  %add972.i = add nuw nsw i64 %add971.i, 4
  %484 = ptrtoint ptr %reloc.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %reloc.i, align 4
  %486 = ptrtoint ptr %485 to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %485, align 8
  %size.i1782.i = getelementptr inbounds %struct.radeon_bo, ptr %487, i32 0, i32 4, i32 0, i32 5
  %488 = ptrtoint ptr %size.i1782.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load i32, ptr %size.i1782.i, align 8
  %conv975.i = zext i32 %489 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add972.i, i64 %conv975.i)
  %cmp976.i = icmp ugt i64 %add972.i, %conv975.i
  br i1 %cmp976.i, label %if.then978.i, label %if.end982.i

if.then978.i:                                     ; preds = %radeon_get_ib_value.exit1781.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.96, i64 noundef %add972.i, i32 noundef %489) #8
  br label %sw.epilog.thread141

if.end982.i:                                      ; preds = %radeon_get_ib_value.exit1781.i
  call void @__sanitizer_cov_trace_pc() #10
  %gpu_offset983.i = getelementptr inbounds %struct.radeon_bo_list, ptr %485, i32 0, i32 2
  %490 = ptrtoint ptr %gpu_offset983.i to i32
  call void @__asan_load8_noabort(i32 %490)
  %491 = load i64, ptr %gpu_offset983.i, align 8
  %add984.i = add i64 %491, %add971.i
  %conv985.i = trunc i64 %add984.i to i32
  %arrayidx987.i = getelementptr i32, ptr %96, i32 %add963.i
  %492 = ptrtoint ptr %arrayidx987.i to i32
  call void @__asan_store4_noabort(i32 %492)
  store volatile i32 %conv985.i, ptr %arrayidx987.i, align 4
  %shr988.i = lshr i64 %add984.i, 32
  %conv990.i = trunc i64 %shr988.i to i32
  %and991.i = and i32 %conv990.i, 255
  %arrayidx993.i = getelementptr i32, ptr %96, i32 %add9661938.i
  %493 = ptrtoint ptr %arrayidx993.i to i32
  call void @__asan_store4_noabort(i32 %493)
  store volatile i32 %and991.i, ptr %arrayidx993.i, align 4
  br label %if.end1005.i

if.else997.i:                                     ; preds = %if.end954.i
  %add998.i = add i32 %98, 2
  %retval.0.in.i1790.i = getelementptr i32, ptr %spec.select.i, i32 %add998.i
  %494 = ptrtoint ptr %retval.0.in.i1790.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %retval.0.i1791.i = load i32, ptr %retval.0.in.i1790.i, align 4
  %shl1000.i = shl i32 %retval.0.i1791.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 249855, i32 %shl1000.i)
  %cmp.i = icmp ugt i32 %shl1000.i, 249855
  br i1 %cmp.i, label %if.else997.i.r600_is_safe_reg.exit_crit_edge, label %if.end.i104

if.else997.i.r600_is_safe_reg.exit_crit_edge:     ; preds = %if.else997.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %r600_is_safe_reg.exit

if.end.i104:                                      ; preds = %if.else997.i
  %shr.i = lshr i32 %shl1000.i, 7
  %and.i100 = and i32 %retval.0.i1791.i, 31
  %shl.i101 = shl nuw i32 1, %and.i100
  %arrayidx.i102 = getelementptr [1952 x i32], ptr @r600_reg_safe_bm, i32 0, i32 %shr.i
  %495 = ptrtoint ptr %arrayidx.i102 to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load i32, ptr %arrayidx.i102, align 4
  %and2.i = and i32 %496, %shl.i101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i103 = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i103, label %if.end.i104.if.end1005.i_crit_edge, label %if.end.i104.r600_is_safe_reg.exit_crit_edge

if.end.i104.r600_is_safe_reg.exit_crit_edge:      ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_pc() #10
  br label %r600_is_safe_reg.exit

if.end.i104.if.end1005.i_crit_edge:               ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end1005.i

r600_is_safe_reg.exit:                            ; preds = %if.end.i104.r600_is_safe_reg.exit_crit_edge, %if.else997.i.r600_is_safe_reg.exit_crit_edge
  %497 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %498, ptr noundef nonnull @.str.174, i32 noundef %shl1000.i, i32 noundef %add998.i) #12
  br label %sw.epilog.thread141

if.end1005.i:                                     ; preds = %if.end.i104.if.end1005.i_crit_edge, %if.end982.i
  %and1006.i = and i32 %retval.0.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1006.i)
  %tobool1007.not.i = icmp eq i32 %and1006.i, 0
  br i1 %tobool1007.not.i, label %if.else1048.i, label %if.then1008.i

if.then1008.i:                                    ; preds = %if.end1005.i
  %call1010.i = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1010.i)
  %tobool1011.not.i = icmp eq i32 %call1010.i, 0
  br i1 %tobool1011.not.i, label %if.end1013.i, label %if.then1012.i

if.then1012.i:                                    ; preds = %if.then1008.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.97) #8
  br label %sw.epilog.thread141

if.end1013.i:                                     ; preds = %if.then1008.i
  %add1014.i = add i32 %98, 4
  %499 = ptrtoint ptr %chunk_ib.i.i to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load ptr, ptr %chunk_ib.i.i, align 4
  %kdata.i1794.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %500, i32 0, i32 1
  %501 = ptrtoint ptr %kdata.i1794.i to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %kdata.i1794.i, align 4
  %tobool.not.i1795.i = icmp eq ptr %502, null
  br i1 %tobool.not.i1795.i, label %if.end.i1806.i, label %if.end1013.i.radeon_get_ib_value.exit1810.i_crit_edge

if.end1013.i.radeon_get_ib_value.exit1810.i_crit_edge: ; preds = %if.end1013.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_get_ib_value.exit1810.i

if.end.i1806.i:                                   ; preds = %if.end1013.i
  call void @__sanitizer_cov_trace_pc() #10
  %503 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %ptr.i, align 8
  br label %radeon_get_ib_value.exit1810.i

radeon_get_ib_value.exit1810.i:                   ; preds = %if.end.i1806.i, %if.end1013.i.radeon_get_ib_value.exit1810.i_crit_edge
  %.pn1952.i = phi ptr [ %504, %if.end.i1806.i ], [ %502, %if.end1013.i.radeon_get_ib_value.exit1810.i_crit_edge ]
  %conv10161945.in.in.i = getelementptr i32, ptr %.pn1952.i, i32 %add1014.i
  %505 = ptrtoint ptr %conv10161945.in.in.i to i32
  call void @__asan_load4_noabort(i32 %505)
  %conv10161945.in.i = load i32, ptr %conv10161945.in.in.i, align 4
  %conv10161945.i = zext i32 %conv10161945.in.i to i64
  %add10171947.i = add i32 %98, 5
  %retval.0.in.i1808.i = getelementptr i32, ptr %.pn1952.i, i32 %add10171947.i
  %506 = ptrtoint ptr %retval.0.in.i1808.i to i32
  call void @__asan_load4_noabort(i32 %506)
  %retval.0.i1809.i = load i32, ptr %retval.0.in.i1808.i, align 4
  %and1019.i = and i32 %retval.0.i1809.i, 255
  %conv1020.i = zext i32 %and1019.i to i64
  %shl1021.i = shl nuw nsw i64 %conv1020.i, 32
  %add1022.i = or i64 %shl1021.i, %conv10161945.i
  %add1023.i = add nuw nsw i64 %add1022.i, 4
  %507 = ptrtoint ptr %reloc.i to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load ptr, ptr %reloc.i, align 4
  %509 = ptrtoint ptr %508 to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %508, align 8
  %size.i1811.i = getelementptr inbounds %struct.radeon_bo, ptr %510, i32 0, i32 4, i32 0, i32 5
  %511 = ptrtoint ptr %size.i1811.i to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load i32, ptr %size.i1811.i, align 8
  %conv1026.i = zext i32 %512 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add1023.i, i64 %conv1026.i)
  %cmp1027.i = icmp ugt i64 %add1023.i, %conv1026.i
  br i1 %cmp1027.i, label %if.then1029.i, label %if.end1033.i

if.then1029.i:                                    ; preds = %radeon_get_ib_value.exit1810.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.98, i64 noundef %add1023.i, i32 noundef %512) #8
  br label %sw.epilog.thread141

if.end1033.i:                                     ; preds = %radeon_get_ib_value.exit1810.i
  call void @__sanitizer_cov_trace_pc() #10
  %gpu_offset1034.i = getelementptr inbounds %struct.radeon_bo_list, ptr %508, i32 0, i32 2
  %513 = ptrtoint ptr %gpu_offset1034.i to i32
  call void @__asan_load8_noabort(i32 %513)
  %514 = load i64, ptr %gpu_offset1034.i, align 8
  %add1035.i = add i64 %514, %add1022.i
  %conv1036.i = trunc i64 %add1035.i to i32
  %arrayidx1038.i = getelementptr i32, ptr %96, i32 %add1014.i
  %515 = ptrtoint ptr %arrayidx1038.i to i32
  call void @__asan_store4_noabort(i32 %515)
  store volatile i32 %conv1036.i, ptr %arrayidx1038.i, align 4
  %shr1039.i = lshr i64 %add1035.i, 32
  %conv1041.i = trunc i64 %shr1039.i to i32
  %and1042.i = and i32 %conv1041.i, 255
  %arrayidx1044.i = getelementptr i32, ptr %96, i32 %add10171947.i
  %516 = ptrtoint ptr %arrayidx1044.i to i32
  call void @__asan_store4_noabort(i32 %516)
  store volatile i32 %and1042.i, ptr %arrayidx1044.i, align 4
  br label %sw.epilog

if.else1048.i:                                    ; preds = %if.end1005.i
  %add1049.i = add i32 %98, 4
  %517 = ptrtoint ptr %chunk_ib.i.i to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load ptr, ptr %chunk_ib.i.i, align 4
  %kdata.i1814.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %518, i32 0, i32 1
  %519 = ptrtoint ptr %kdata.i1814.i to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load ptr, ptr %kdata.i1814.i, align 4
  %tobool.not.i1815.i = icmp eq ptr %520, null
  br i1 %tobool.not.i1815.i, label %if.end.i1817.i, label %if.else1048.i.radeon_get_ib_value.exit1821.i_crit_edge

if.else1048.i.radeon_get_ib_value.exit1821.i_crit_edge: ; preds = %if.else1048.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_get_ib_value.exit1821.i

if.end.i1817.i:                                   ; preds = %if.else1048.i
  call void @__sanitizer_cov_trace_pc() #10
  %521 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load ptr, ptr %ptr.i, align 8
  br label %radeon_get_ib_value.exit1821.i

radeon_get_ib_value.exit1821.i:                   ; preds = %if.end.i1817.i, %if.else1048.i.radeon_get_ib_value.exit1821.i_crit_edge
  %.pn.i1818.i = phi ptr [ %522, %if.end.i1817.i ], [ %520, %if.else1048.i.radeon_get_ib_value.exit1821.i_crit_edge ]
  %retval.0.in.i1819.i = getelementptr i32, ptr %.pn.i1818.i, i32 %add1049.i
  %523 = ptrtoint ptr %retval.0.in.i1819.i to i32
  call void @__asan_load4_noabort(i32 %523)
  %retval.0.i1820.i = load i32, ptr %retval.0.in.i1819.i, align 4
  %shl1051.i = shl i32 %retval.0.i1820.i, 2
  %call1053.i = call fastcc zeroext i1 @r600_is_safe_reg(ptr noundef %p, i32 noundef %shl1051.i, i32 noundef %add1049.i) #8
  br i1 %call1053.i, label %radeon_get_ib_value.exit1821.i.sw.epilog_crit_edge, label %radeon_get_ib_value.exit1821.i.sw.epilog.thread141_crit_edge

radeon_get_ib_value.exit1821.i.sw.epilog.thread141_crit_edge: ; preds = %radeon_get_ib_value.exit1821.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread141

radeon_get_ib_value.exit1821.i.sw.epilog_crit_edge: ; preds = %radeon_get_ib_value.exit1821.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.default1057.i:                                 ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.99, i32 noundef %105) #8
  br label %sw.epilog.thread141

sw.default:                                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8, i32 noundef %84) #8
  br label %cleanup.sink.split

sw.epilog.thread141:                              ; preds = %sw.default1057.i, %radeon_get_ib_value.exit1821.i.sw.epilog.thread141_crit_edge, %if.then1029.i, %if.then1012.i, %r600_is_safe_reg.exit, %if.then978.i, %if.then961.i, %if.then953.i, %if.then931.i, %if.then923.i, %if.then910.i, %if.then906.i, %if.then881.i, %if.then864.i, %if.then836.i, %if.then819.i, %if.then811.i, %if.then805.i, %if.then801.i, %if.then778.i, %if.then768.i, %if.then758.i, %if.then752.i, %if.then747.i, %if.then743.i, %if.then738.i, %if.then732.i, %if.then716.i, %if.then710.i, %if.then693.i, %if.then676.i, %if.then658.i, %sw.default.i, %cleanup626.i, %do.end136.i, %do.end107.i, %do.end96.i, %do.end85.i, %do.end75.i, %do.end67.i, %if.then520.i, %if.then485.i, %if.then466.i, %if.then450.i, %for.body435.i.sw.epilog.thread141_crit_edge, %if.then429.i, %for.body.i98.sw.epilog.thread141_crit_edge, %if.then401.i, %if.then358.i, %if.then354.i, %if.then321.i, %if.then313.i, %if.then296.i, %if.then282.i, %do.end256.i, %if.then233.i, %if.then229.i, %if.then225.i, %do.end203.i, %if.then182.i, %if.then178.i, %if.then174.i, %if.then167.i, %if.then158.i, %if.then124.i, %if.then116.i, %do.end109.i, %if.then102.i, %do.end95.i, %if.then88.i, %do.end.i, %if.then58.i, %if.then54.i, %if.then47.i, %if.then42.i, %if.then36.i, %if.then13.i, %if.then10.i, %if.then.i
  %retval.18.i.ph = phi i32 [ -22, %sw.default.i ], [ -22, %cleanup626.i ], [ -22, %if.then485.i ], [ -22, %if.then520.i ], [ -22, %if.then54.i ], [ -22, %if.then58.i ], [ %call78.i, %do.end.i ], [ -22, %if.then.i ], [ -22, %if.then10.i ], [ -22, %if.then13.i ], [ -22, %if.then1012.i ], [ -22, %if.then1029.i ], [ -22, %r600_is_safe_reg.exit ], [ -22, %if.then961.i ], [ -22, %if.then978.i ], [ -22, %if.then906.i ], [ -22, %if.then910.i ], [ -22, %if.then923.i ], [ -22, %if.then931.i ], [ -22, %if.then864.i ], [ -22, %if.then881.i ], [ -22, %if.then819.i ], [ -22, %if.then836.i ], [ -22, %if.then752.i ], [ -22, %if.then758.i ], [ -22, %if.then768.i ], [ -22, %if.then778.i ], [ -22, %if.then354.i ], [ -22, %if.then358.i ], [ -22, %if.then321.i ], [ -22, %if.then167.i ], [ -22, %if.then174.i ], [ -22, %if.then178.i ], [ -22, %if.then182.i ], [ -22, %do.end203.i ], [ -22, %if.then225.i ], [ -22, %if.then229.i ], [ -22, %if.then233.i ], [ -22, %do.end256.i ], [ -22, %if.then124.i ], [ -22, %if.then36.i ], [ -22, %if.then42.i ], [ -22, %if.then47.i ], [ %call90.i, %do.end95.i ], [ -22, %if.then88.i ], [ %call104.i, %do.end109.i ], [ -22, %if.then102.i ], [ -22, %if.then158.i ], [ -22, %if.then116.i ], [ -22, %if.then296.i ], [ -22, %if.then282.i ], [ -22, %if.then313.i ], [ -22, %if.then401.i ], [ -22, %if.then429.i ], [ -22, %if.then466.i ], [ -22, %if.then450.i ], [ -22, %if.then658.i ], [ -22, %if.then676.i ], [ -22, %if.then693.i ], [ -22, %if.then710.i ], [ -22, %if.then732.i ], [ -22, %if.then716.i ], [ -22, %if.then747.i ], [ -22, %if.then743.i ], [ -22, %if.then738.i ], [ -22, %if.then805.i ], [ -22, %if.then801.i ], [ -22, %if.then811.i ], [ -22, %if.then953.i ], [ -22, %sw.default1057.i ], [ -22, %do.end75.i ], [ -22, %do.end136.i ], [ -22, %do.end107.i ], [ -22, %do.end96.i ], [ -22, %do.end85.i ], [ -22, %do.end67.i ], [ %call410.i, %for.body.i98.sw.epilog.thread141_crit_edge ], [ %call440.i, %for.body435.i.sw.epilog.thread141_crit_edge ], [ -22, %radeon_get_ib_value.exit1821.i.sw.epilog.thread141_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reloc.i) #8
  br label %cleanup.sink.split

sw.epilog:                                        ; preds = %radeon_get_ib_value.exit1821.i.sw.epilog_crit_edge, %if.end1033.i, %if.end935.i, %if.end885.i, %if.end855.i.sw.epilog_crit_edge, %if.end802.i.sw.epilog_crit_edge, %if.end782.i, %if.end717.i.sw.epilog_crit_edge, %sw.bb695.i.sw.epilog_crit_edge, %sw.bb678.i.sw.epilog_crit_edge, %sw.bb661.i.sw.epilog_crit_edge, %if.then643.i.sw.epilog_crit_edge, %sw.bb640.i.sw.epilog_crit_edge, %for.inc637.i.sw.epilog_crit_edge, %for.cond468.preheader.i.sw.epilog_crit_edge, %for.cond431.i.sw.epilog_crit_edge, %for.cond431.preheader.i.sw.epilog_crit_edge, %for.cond.i97.sw.epilog_crit_edge, %for.cond.preheader.i.sw.epilog_crit_edge, %radeon_get_ib_value.exit1644.i, %radeon_get_ib_value.exit1626.i, %sw.bb306.i.sw.epilog_crit_edge, %if.end297.i, %radeon_get_ib_value.exit1608.i.sw.epilog_crit_edge, %if.end262.i, %if.else.i.sw.epilog_crit_edge, %radeon_get_ib_value.exit1542.i, %if.end103.i.sw.epilog_crit_edge, %if.end89.i.sw.epilog_crit_edge, %radeon_get_ib_value.exit1524.i.sw.epilog_crit_edge, %sw.bb44.i.sw.epilog_crit_edge, %sw.bb38.i.sw.epilog_crit_edge, %sw.bb31.i.sw.epilog_crit_edge, %cleanup.i, %if.end.i.sw.epilog_crit_edge, %sw.bb39.sw.epilog_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reloc.i) #8
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog, %for.cond.i.do.cond_crit_edge, %if.end35.do.cond_crit_edge
  %524 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load i32, ptr %idx, align 8
  %526 = ptrtoint ptr %chunk_ib.i.i to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %chunk_ib.i.i, align 4
  %528 = ptrtoint ptr %527 to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load i32, ptr %527, align 4
  %cmp50 = icmp ult i32 %525, %529
  br i1 %cmp50, label %do.cond.do.body_crit_edge, label %do.cond.cleanup.sink.split_crit_edge

do.cond.cleanup.sink.split_crit_edge:             ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

cleanup.sink.split:                               ; preds = %do.cond.cleanup.sink.split_crit_edge, %sw.epilog.thread141, %sw.default, %do.end.i.i, %if.then.i.i, %do.body.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -22, %sw.default ], [ %retval.18.i.ph, %sw.epilog.thread141 ], [ %call.i.i.i, %if.then.i.i ], [ -22, %do.end.i.i ], [ %call31, %do.body.cleanup.sink.split_crit_edge ], [ 0, %do.cond.cleanup.sink.split_crit_edge ]
  %530 = ptrtoint ptr %track1 to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %track1, align 8
  call void @kfree(ptr noundef %531) #8
  %532 = ptrtoint ptr %track1 to i32
  call void @__asan_store4_noabort(i32 %532)
  store ptr null, ptr %track1, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r600_dma_cs_next_reloc(ptr nocapture noundef %p, ptr nocapture noundef writeonly %cs_reloc) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cs_reloc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %cs_reloc, align 4
  %chunk_relocs = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 13
  %1 = ptrtoint ptr %chunk_relocs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chunk_relocs, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dma_reloc_idx = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 11
  %3 = ptrtoint ptr %dma_reloc_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dma_reloc_idx, align 8
  %nrelocs = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 7
  %5 = ptrtoint ptr %nrelocs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nrelocs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp1.not = icmp ult i32 %4, %6
  br i1 %cmp1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10, i32 noundef %4, i32 noundef %6) #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %relocs = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 8
  %7 = ptrtoint ptr %relocs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %relocs, align 8
  %arrayidx = getelementptr %struct.radeon_bo_list, ptr %8, i32 %4
  %9 = ptrtoint ptr %cs_reloc to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx, ptr %cs_reloc, align 4
  %10 = ptrtoint ptr %dma_reloc_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_reloc_idx, align 8
  %inc = add i32 %11, 1
  store i32 %inc, ptr %dma_reloc_idx, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then2 ], [ 0, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r600_dma_cs_parse(ptr noundef %p) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chunk_ib = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %0 = ptrtoint ptr %chunk_ib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chunk_ib, align 4
  %ptr = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 16, i32 3
  %2 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptr, align 8
  %idx2 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 6
  %family291 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 19
  %chunk_relocs.i703 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 13
  %dma_reloc_idx.i706 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 11
  %nrelocs.i707 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 7
  %relocs.i711 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 8
  br label %do.body

do.body:                                          ; preds = %do.cond348.do.body_crit_edge, %entry
  %4 = ptrtoint ptr %idx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx2, align 8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp ult i32 %5, %7
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11, i32 noundef %5, i32 noundef %7) #8
  br label %cleanup

if.end:                                           ; preds = %do.body
  %8 = ptrtoint ptr %chunk_ib to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chunk_ib, align 4
  %kdata.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %kdata.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %kdata.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.radeon_get_ib_value.exit_crit_edge

if.end.radeon_get_ib_value.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_get_ib_value.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ptr, align 8
  br label %radeon_get_ib_value.exit

radeon_get_ib_value.exit:                         ; preds = %if.end.i, %if.end.radeon_get_ib_value.exit_crit_edge
  %.pn.i = phi ptr [ %13, %if.end.i ], [ %11, %if.end.radeon_get_ib_value.exit_crit_edge ]
  %retval.0.in.i = getelementptr i32, ptr %.pn.i, i32 %5
  %14 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %retval.0.i = load i32, ptr %retval.0.in.i, align 4
  %shr = lshr i32 %retval.0.i, 28
  %and6 = and i32 %retval.0.i, 65535
  %and7 = lshr i32 %retval.0.i, 23
  %shr8 = and i32 %and7, 1
  %15 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.245)
  switch i32 %shr, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb62
    i32 13, label %sw.bb290
    i32 15, label %sw.bb345
  ]

sw.bb:                                            ; preds = %radeon_get_ib_value.exit
  %16 = ptrtoint ptr %chunk_relocs.i703 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chunk_relocs.i703, align 8
  %cmp.i = icmp eq ptr %17, null
  br i1 %cmp.i, label %if.then.i, label %if.end.i506

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9) #8
  br label %if.then10

if.end.i506:                                      ; preds = %sw.bb
  %18 = ptrtoint ptr %dma_reloc_idx.i706 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_reloc_idx.i706, align 8
  %20 = ptrtoint ptr %nrelocs.i707 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nrelocs.i707, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp1.not.i = icmp ult i32 %19, %21
  br i1 %cmp1.not.i, label %if.end11, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i506
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10, i32 noundef %19, i32 noundef %21) #8
  br label %if.then10

if.then10:                                        ; preds = %if.then2.i, %if.then.i
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end.i506
  %22 = ptrtoint ptr %relocs.i711 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %relocs.i711, align 8
  %arrayidx.i = getelementptr %struct.radeon_bo_list, ptr %23, i32 %19
  %inc.i = add nuw i32 %19, 1
  %24 = ptrtoint ptr %dma_reloc_idx.i706 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %inc.i, ptr %dma_reloc_idx.i706, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr8)
  %tobool12.not = icmp eq i32 %shr8, 0
  %add22 = add nuw i32 %5, 1
  %25 = ptrtoint ptr %chunk_ib to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chunk_ib, align 4
  %kdata.i518 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %kdata.i518 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %kdata.i518, align 4
  %tobool.not.i519 = icmp eq ptr %28, null
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end11
  br i1 %tobool.not.i519, label %if.end.i512, label %if.then13.radeon_get_ib_value.exit516_crit_edge

if.then13.radeon_get_ib_value.exit516_crit_edge:  ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_get_ib_value.exit516

if.end.i512:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ptr, align 8
  br label %radeon_get_ib_value.exit516

radeon_get_ib_value.exit516:                      ; preds = %if.end.i512, %if.then13.radeon_get_ib_value.exit516_crit_edge
  %.pn.i513 = phi ptr [ %30, %if.end.i512 ], [ %28, %if.then13.radeon_get_ib_value.exit516_crit_edge ]
  %retval.0.in.i514 = getelementptr i32, ptr %.pn.i513, i32 %add22
  %31 = ptrtoint ptr %retval.0.in.i514 to i32
  call void @__asan_load4_noabort(i32 %31)
  %retval.0.i515 = load i32, ptr %retval.0.in.i514, align 4
  %conv = zext i32 %retval.0.i515 to i64
  %shl = shl nuw nsw i64 %conv, 8
  %gpu_offset = getelementptr %struct.radeon_bo_list, ptr %23, i32 %19, i32 2
  %32 = ptrtoint ptr %gpu_offset to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %gpu_offset, align 8
  %shr15 = lshr i64 %33, 8
  %conv16 = trunc i64 %shr15 to i32
  %arrayidx = getelementptr i32, ptr %3, i32 %add22
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %arrayidx, align 4
  br label %if.end47

if.else:                                          ; preds = %if.end11
  br i1 %tobool.not.i519, label %if.end.i530, label %if.else.radeon_get_ib_value.exit534_crit_edge

if.else.radeon_get_ib_value.exit534_crit_edge:    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_get_ib_value.exit534

if.end.i530:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ptr, align 8
  br label %radeon_get_ib_value.exit534

radeon_get_ib_value.exit534:                      ; preds = %if.end.i530, %if.else.radeon_get_ib_value.exit534_crit_edge
  %.pn905 = phi ptr [ %37, %if.end.i530 ], [ %28, %if.else.radeon_get_ib_value.exit534_crit_edge ]
  %conv24771.in.in = getelementptr i32, ptr %.pn905, i32 %add22
  %38 = ptrtoint ptr %conv24771.in.in to i32
  call void @__asan_load4_noabort(i32 %38)
  %conv24771.in = load i32, ptr %conv24771.in.in, align 4
  %conv24771 = zext i32 %conv24771.in to i64
  %add25773 = add i32 %5, 2
  %retval.0.in.i532 = getelementptr i32, ptr %.pn905, i32 %add25773
  %39 = ptrtoint ptr %retval.0.in.i532 to i32
  call void @__asan_load4_noabort(i32 %39)
  %retval.0.i533 = load i32, ptr %retval.0.in.i532, align 4
  %and27 = and i32 %retval.0.i533, 255
  %conv28 = zext i32 %and27 to i64
  %shl29 = shl nuw nsw i64 %conv28, 32
  %or = or i64 %shl29, %conv24771
  %gpu_offset30 = getelementptr %struct.radeon_bo_list, ptr %23, i32 %19, i32 2
  %40 = ptrtoint ptr %gpu_offset30 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %gpu_offset30, align 8
  %42 = trunc i64 %41 to i32
  %conv32 = and i32 %42, -4
  %arrayidx34 = getelementptr i32, ptr %3, i32 %add22
  %43 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %arrayidx34, align 4
  %add35 = add i32 %conv32, %44
  store volatile i32 %add35, ptr %arrayidx34, align 4
  %45 = load i64, ptr %gpu_offset30, align 8
  %shr37 = lshr i64 %45, 32
  %conv39 = trunc i64 %shr37 to i32
  %and40 = and i32 %conv39, 255
  %arrayidx42 = getelementptr i32, ptr %3, i32 %add25773
  %46 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %arrayidx42, align 4
  br label %if.end47

if.end47:                                         ; preds = %radeon_get_ib_value.exit534, %radeon_get_ib_value.exit516
  %.sink1131 = phi i32 [ %47, %radeon_get_ib_value.exit534 ], [ %conv16, %radeon_get_ib_value.exit516 ]
  %and40.sink = phi i32 [ %and40, %radeon_get_ib_value.exit534 ], [ %35, %radeon_get_ib_value.exit516 ]
  %arrayidx42.sink = phi ptr [ %arrayidx42, %radeon_get_ib_value.exit534 ], [ %arrayidx, %radeon_get_ib_value.exit516 ]
  %.sink = phi i32 [ 3, %radeon_get_ib_value.exit534 ], [ 5, %radeon_get_ib_value.exit516 ]
  %dst_offset.0 = phi i64 [ %or, %radeon_get_ib_value.exit534 ], [ %shl, %radeon_get_ib_value.exit516 ]
  %add43 = add i32 %and40.sink, %.sink1131
  %48 = ptrtoint ptr %arrayidx42.sink to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 %add43, ptr %arrayidx42.sink, align 4
  %add44 = add nuw nsw i32 %and6, %.sink
  %49 = ptrtoint ptr %idx2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %idx2, align 8
  %add46 = add i32 %add44, %50
  store i32 %add46, ptr %idx2, align 8
  %mul = shl nuw nsw i32 %and6, 2
  %conv48 = zext i32 %mul to i64
  %add49 = add nsw i64 %dst_offset.0, %conv48
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i, align 8
  %size.i = getelementptr inbounds %struct.radeon_bo, ptr %52, i32 0, i32 4, i32 0, i32 5
  %53 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %size.i, align 8
  %conv51 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add49, i64 %conv51)
  %cmp52 = icmp ugt i64 %add49, %conv51
  br i1 %cmp52, label %do.end, label %if.end47.do.cond348_crit_edge

if.end47.do.cond348_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond348

do.end:                                           ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %56, ptr noundef nonnull @.str.13, i64 noundef %add49, i32 noundef %54) #12
  br label %cleanup

sw.bb62:                                          ; preds = %radeon_get_ib_value.exit
  %57 = ptrtoint ptr %chunk_relocs.i703 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %chunk_relocs.i703, align 8
  %cmp.i537 = icmp eq ptr %58, null
  br i1 %cmp.i537, label %if.then.i538, label %if.end.i542

if.then.i538:                                     ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9) #8
  br label %if.then65

if.end.i542:                                      ; preds = %sw.bb62
  %59 = ptrtoint ptr %dma_reloc_idx.i706 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dma_reloc_idx.i706, align 8
  %61 = ptrtoint ptr %nrelocs.i707 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %nrelocs.i707, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp1.not.i541 = icmp ult i32 %60, %62
  br i1 %cmp1.not.i541, label %if.end66, label %if.then2.i543

if.then2.i543:                                    ; preds = %if.end.i542
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10, i32 noundef %60, i32 noundef %62) #8
  br label %if.then65

if.then65:                                        ; preds = %if.then2.i543, %if.then.i538
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18) #8
  br label %cleanup

if.end66:                                         ; preds = %if.end.i542
  %63 = ptrtoint ptr %relocs.i711 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %relocs.i711, align 8
  %arrayidx.i545 = getelementptr %struct.radeon_bo_list, ptr %64, i32 %60
  %inc.i546 = add nuw i32 %60, 1
  %65 = ptrtoint ptr %dma_reloc_idx.i706 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %inc.i546, ptr %dma_reloc_idx.i706, align 8
  %66 = ptrtoint ptr %chunk_relocs.i703 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %chunk_relocs.i703, align 8
  %cmp.i551 = icmp eq ptr %67, null
  br i1 %cmp.i551, label %if.then.i552, label %if.end.i556

if.then.i552:                                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9) #8
  br label %if.then69

if.end.i556:                                      ; preds = %if.end66
  %68 = ptrtoint ptr %dma_reloc_idx.i706 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %dma_reloc_idx.i706, align 8
  %70 = ptrtoint ptr %nrelocs.i707 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %nrelocs.i707, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %71)
  %cmp1.not.i555 = icmp ult i32 %69, %71
  br i1 %cmp1.not.i555, label %if.end70, label %if.then2.i557

if.then2.i557:                                    ; preds = %if.end.i556
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10, i32 noundef %69, i32 noundef %71) #8
  br label %if.then69

if.then69:                                        ; preds = %if.then2.i557, %if.then.i552
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18) #8
  br label %cleanup

if.end70:                                         ; preds = %if.end.i556
  %72 = ptrtoint ptr %relocs.i711 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %relocs.i711, align 8
  %arrayidx.i559 = getelementptr %struct.radeon_bo_list, ptr %73, i32 %69
  %inc.i560 = add nuw i32 %69, 1
  %74 = ptrtoint ptr %dma_reloc_idx.i706 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %inc.i560, ptr %dma_reloc_idx.i706, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr8)
  %tobool71.not = icmp eq i32 %shr8, 0
  br i1 %tobool71.not, label %if.else148, label %if.then72

if.then72:                                        ; preds = %if.end70
  %add73 = add i32 %5, 2
  %75 = ptrtoint ptr %chunk_ib to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %chunk_ib, align 4
  %kdata.i565 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %kdata.i565 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %kdata.i565, align 4
  %tobool.not.i566 = icmp eq ptr %78, null
  br i1 %tobool.not.i566, label %radeon_get_ib_value.exit572, label %radeon_get_ib_value.exit572.thread

radeon_get_ib_value.exit572:                      ; preds = %if.then72
  %79 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ptr, align 8
  %retval.0.in.i570 = getelementptr i32, ptr %80, i32 %add73
  %81 = ptrtoint ptr %retval.0.in.i570 to i32
  call void @__asan_load4_noabort(i32 %81)
  %retval.0.i571 = load i32, ptr %retval.0.in.i570, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i571)
  %tobool76.not = icmp sgt i32 %retval.0.i571, -1
  br i1 %tobool76.not, label %if.end.i613, label %if.end.i577

radeon_get_ib_value.exit572.thread:               ; preds = %if.then72
  %retval.0.in.i570784 = getelementptr i32, ptr %78, i32 %add73
  %82 = ptrtoint ptr %retval.0.in.i570784 to i32
  call void @__asan_load4_noabort(i32 %82)
  %retval.0.i571785 = load i32, ptr %retval.0.in.i570784, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i571785)
  %tobool76.not786 = icmp sgt i32 %retval.0.i571785, -1
  br i1 %tobool76.not786, label %radeon_get_ib_value.exit608.thread, label %radeon_get_ib_value.exit572.thread.radeon_get_ib_value.exit581_crit_edge

radeon_get_ib_value.exit572.thread.radeon_get_ib_value.exit581_crit_edge: ; preds = %radeon_get_ib_value.exit572.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_get_ib_value.exit581

if.end.i577:                                      ; preds = %radeon_get_ib_value.exit572
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ptr, align 8
  br label %radeon_get_ib_value.exit581

radeon_get_ib_value.exit581:                      ; preds = %if.end.i577, %radeon_get_ib_value.exit572.thread.radeon_get_ib_value.exit581_crit_edge
  %.pn.i578 = phi ptr [ %84, %if.end.i577 ], [ %78, %radeon_get_ib_value.exit572.thread.radeon_get_ib_value.exit581_crit_edge ]
  %add78788 = add nuw i32 %5, 1
  %retval.0.in.i579 = getelementptr i32, ptr %.pn.i578, i32 %add78788
  %85 = ptrtoint ptr %retval.0.in.i579 to i32
  call void @__asan_load4_noabort(i32 %85)
  %retval.0.i580 = load i32, ptr %retval.0.in.i579, align 4
  %conv80 = zext i32 %retval.0.i580 to i64
  %shl81 = shl nuw nsw i64 %conv80, 8
  %gpu_offset82 = getelementptr %struct.radeon_bo_list, ptr %64, i32 %60, i32 2
  %86 = ptrtoint ptr %gpu_offset82 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %gpu_offset82, align 8
  %shr83 = lshr i64 %87, 8
  %conv84 = trunc i64 %shr83 to i32
  %arrayidx86 = getelementptr i32, ptr %3, i32 %add78788
  %88 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %arrayidx86, align 4
  %add87 = add i32 %89, %conv84
  store volatile i32 %add87, ptr %arrayidx86, align 4
  %add88 = add i32 %5, 5
  %90 = ptrtoint ptr %chunk_ib to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %chunk_ib, align 4
  %kdata.i583 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %kdata.i583 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %kdata.i583, align 4
  %tobool.not.i584 = icmp eq ptr %93, null
  br i1 %tobool.not.i584, label %if.end.i595, label %radeon_get_ib_value.exit581.radeon_get_ib_value.exit599_crit_edge

radeon_get_ib_value.exit581.radeon_get_ib_value.exit599_crit_edge: ; preds = %radeon_get_ib_value.exit581
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_get_ib_value.exit599

if.end.i595:                                      ; preds = %radeon_get_ib_value.exit581
  call void @__sanitizer_cov_trace_pc() #10
  %94 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ptr, align 8
  br label %radeon_get_ib_value.exit599

radeon_get_ib_value.exit599:                      ; preds = %if.end.i595, %radeon_get_ib_value.exit581.radeon_get_ib_value.exit599_crit_edge
  %.pn904 = phi ptr [ %95, %if.end.i595 ], [ %93, %radeon_get_ib_value.exit581.radeon_get_ib_value.exit599_crit_edge ]
  %conv90794.in.in = getelementptr i32, ptr %.pn904, i32 %add88
  %96 = ptrtoint ptr %conv90794.in.in to i32
  call void @__asan_load4_noabort(i32 %96)
  %conv90794.in = load i32, ptr %conv90794.in.in, align 4
  %conv90794 = zext i32 %conv90794.in to i64
  %add91796 = add i32 %5, 6
  %retval.0.in.i597 = getelementptr i32, ptr %.pn904, i32 %add91796
  %97 = ptrtoint ptr %retval.0.in.i597 to i32
  call void @__asan_load4_noabort(i32 %97)
  %retval.0.i598 = load i32, ptr %retval.0.in.i597, align 4
  %and93 = and i32 %retval.0.i598, 255
  %conv94 = zext i32 %and93 to i64
  %shl95 = shl nuw nsw i64 %conv94, 32
  %or96 = or i64 %shl95, %conv90794
  %gpu_offset97 = getelementptr %struct.radeon_bo_list, ptr %73, i32 %69, i32 2
  %98 = ptrtoint ptr %gpu_offset97 to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %gpu_offset97, align 8
  %100 = trunc i64 %99 to i32
  %conv99 = and i32 %100, -4
  %arrayidx101 = getelementptr i32, ptr %3, i32 %add88
  %101 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %arrayidx101, align 4
  %add102 = add i32 %conv99, %102
  store volatile i32 %add102, ptr %arrayidx101, align 4
  %103 = load i64, ptr %gpu_offset97, align 8
  %shr104 = lshr i64 %103, 32
  %conv106 = trunc i64 %shr104 to i32
  %and107 = and i32 %conv106, 255
  %arrayidx109 = getelementptr i32, ptr %3, i32 %add91796
  %104 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %arrayidx109, align 4
  br label %if.end145

radeon_get_ib_value.exit608.thread:               ; preds = %radeon_get_ib_value.exit572.thread
  call void @__sanitizer_cov_trace_pc() #10
  %add112798 = add i32 %5, 5
  %retval.0.in.i606802 = getelementptr i32, ptr %78, i32 %add112798
  br label %radeon_get_ib_value.exit617

if.end.i613:                                      ; preds = %radeon_get_ib_value.exit572
  call void @__sanitizer_cov_trace_pc() #10
  %add112 = add i32 %5, 5
  %106 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ptr, align 8
  %retval.0.in.i606 = getelementptr i32, ptr %107, i32 %add112
  br label %radeon_get_ib_value.exit617

radeon_get_ib_value.exit617:                      ; preds = %if.end.i613, %radeon_get_ib_value.exit608.thread
  %conv114807.in.in = phi ptr [ %retval.0.in.i606, %if.end.i613 ], [ %retval.0.in.i606802, %radeon_get_ib_value.exit608.thread ]
  %add112799806 = phi i32 [ %add112, %if.end.i613 ], [ %add112798, %radeon_get_ib_value.exit608.thread ]
  %.pn.i614 = phi ptr [ %107, %if.end.i613 ], [ %78, %radeon_get_ib_value.exit608.thread ]
  %108 = ptrtoint ptr %conv114807.in.in to i32
  call void @__asan_load4_noabort(i32 %108)
  %conv114807.in = load i32, ptr %conv114807.in.in, align 4
  %conv114807 = zext i32 %conv114807.in to i64
  %add115808 = add i32 %5, 6
  %retval.0.in.i615 = getelementptr i32, ptr %.pn.i614, i32 %add115808
  %109 = ptrtoint ptr %retval.0.in.i615 to i32
  call void @__asan_load4_noabort(i32 %109)
  %retval.0.i616 = load i32, ptr %retval.0.in.i615, align 4
  %and117 = and i32 %retval.0.i616, 255
  %conv118 = zext i32 %and117 to i64
  %shl119 = shl nuw nsw i64 %conv118, 32
  %or120 = or i64 %shl119, %conv114807
  %gpu_offset121 = getelementptr %struct.radeon_bo_list, ptr %64, i32 %60, i32 2
  %110 = ptrtoint ptr %gpu_offset121 to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %gpu_offset121, align 8
  %112 = trunc i64 %111 to i32
  %conv123 = and i32 %112, -4
  %arrayidx125 = getelementptr i32, ptr %3, i32 %add112799806
  %113 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile i32, ptr %arrayidx125, align 4
  %add126 = add i32 %conv123, %114
  store volatile i32 %add126, ptr %arrayidx125, align 4
  %115 = load i64, ptr %gpu_offset121, align 8
  %shr128 = lshr i64 %115, 32
  %conv130 = trunc i64 %shr128 to i32
  %and131 = and i32 %conv130, 255
  %arrayidx133 = getelementptr i32, ptr %3, i32 %add115808
  %116 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %arrayidx133, align 4
  %add134 = add i32 %and131, %117
  store volatile i32 %add134, ptr %arrayidx133, align 4
  %add135 = add nuw i32 %5, 1
  %118 = ptrtoint ptr %chunk_ib to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %chunk_ib, align 4
  %kdata.i619 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %kdata.i619 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %kdata.i619, align 4
  %tobool.not.i620 = icmp eq ptr %121, null
  br i1 %tobool.not.i620, label %if.end.i622, label %radeon_get_ib_value.exit617.radeon_get_ib_value.exit626_crit_edge

radeon_get_ib_value.exit617.radeon_get_ib_value.exit626_crit_edge: ; preds = %radeon_get_ib_value.exit617
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_get_ib_value.exit626

if.end.i622:                                      ; preds = %radeon_get_ib_value.exit617
  call void @__sanitizer_cov_trace_pc() #10
  %122 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ptr, align 8
  br label %radeon_get_ib_value.exit626

radeon_get_ib_value.exit626:                      ; preds = %if.end.i622, %radeon_get_ib_value.exit617.radeon_get_ib_value.exit626_crit_edge
  %.pn.i623 = phi ptr [ %123, %if.end.i622 ], [ %121, %radeon_get_ib_value.exit617.radeon_get_ib_value.exit626_crit_edge ]
  %retval.0.in.i624 = getelementptr i32, ptr %.pn.i623, i32 %add135
  %124 = ptrtoint ptr %retval.0.in.i624 to i32
  call void @__asan_load4_noabort(i32 %124)
  %retval.0.i625 = load i32, ptr %retval.0.in.i624, align 4
  %conv137 = zext i32 %retval.0.i625 to i64
  %shl138 = shl nuw nsw i64 %conv137, 8
  %gpu_offset139 = getelementptr %struct.radeon_bo_list, ptr %73, i32 %69, i32 2
  %125 = ptrtoint ptr %gpu_offset139 to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %gpu_offset139, align 8
  %shr140 = lshr i64 %126, 8
  %conv141 = trunc i64 %shr140 to i32
  %arrayidx143 = getelementptr i32, ptr %3, i32 %add135
  %127 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %arrayidx143, align 4
  br label %if.end145

if.end145:                                        ; preds = %radeon_get_ib_value.exit626, %radeon_get_ib_value.exit599
  %conv141.sink = phi i32 [ %conv141, %radeon_get_ib_value.exit626 ], [ %105, %radeon_get_ib_value.exit599 ]
  %.sink1132 = phi i32 [ %128, %radeon_get_ib_value.exit626 ], [ %and107, %radeon_get_ib_value.exit599 ]
  %arrayidx143.sink = phi ptr [ %arrayidx143, %radeon_get_ib_value.exit626 ], [ %arrayidx109, %radeon_get_ib_value.exit599 ]
  %src_offset.0 = phi i64 [ %or120, %radeon_get_ib_value.exit626 ], [ %shl81, %radeon_get_ib_value.exit599 ]
  %dst_offset.1 = phi i64 [ %shl138, %radeon_get_ib_value.exit626 ], [ %or96, %radeon_get_ib_value.exit599 ]
  %add144 = add i32 %.sink1132, %conv141.sink
  %129 = ptrtoint ptr %arrayidx143.sink to i32
  call void @__asan_store4_noabort(i32 %129)
  store volatile i32 %add144, ptr %arrayidx143.sink, align 4
  br label %if.end251

if.else148:                                       ; preds = %if.end70
  %130 = ptrtoint ptr %family291 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %family291, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %131)
  %cmp149 = icmp ugt i32 %131, 34
  %add152 = add i32 %5, 2
  %132 = ptrtoint ptr %chunk_ib to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %chunk_ib, align 4
  %kdata.i628 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %133, i32 0, i32 1
  %134 = ptrtoint ptr %kdata.i628 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %kdata.i628, align 4
  %tobool.not.i629 = icmp eq ptr %135, null
  br i1 %cmp149, label %if.then151, label %if.else200

if.then151:                                       ; preds = %if.else148
  br i1 %tobool.not.i629, label %if.end.i658, label %radeon_get_ib_value.exit653

radeon_get_ib_value.exit653:                      ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #10
  %retval.0.in.i633 = getelementptr i32, ptr %135, i32 %add152
  %136 = ptrtoint ptr %retval.0.in.i633 to i32
  call void @__asan_load4_noabort(i32 %136)
  %retval.0.i634 = load i32, ptr %retval.0.in.i633, align 4
  %conv154 = zext i32 %retval.0.i634 to i64
  %add155 = add i32 %5, 4
  %retval.0.in.i642 = getelementptr i32, ptr %135, i32 %add155
  %137 = ptrtoint ptr %retval.0.in.i642 to i32
  call void @__asan_load4_noabort(i32 %137)
  %retval.0.i643 = load i32, ptr %retval.0.in.i642, align 4
  %and157 = and i32 %retval.0.i643, 255
  %conv158 = zext i32 %and157 to i64
  %shl159 = shl nuw nsw i64 %conv158, 32
  %or160 = or i64 %shl159, %conv154
  %add161 = add nuw i32 %5, 1
  %retval.0.in.i651 = getelementptr i32, ptr %135, i32 %add161
  br label %radeon_get_ib_value.exit662

if.end.i658:                                      ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #10
  %138 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ptr, align 8
  %retval.0.in.i633810 = getelementptr i32, ptr %139, i32 %add152
  %140 = ptrtoint ptr %retval.0.in.i633810 to i32
  call void @__asan_load4_noabort(i32 %140)
  %retval.0.i634811 = load i32, ptr %retval.0.in.i633810, align 4
  %conv154812 = zext i32 %retval.0.i634811 to i64
  %add155813 = add i32 %5, 4
  %retval.0.in.i642821 = getelementptr i32, ptr %139, i32 %add155813
  %141 = ptrtoint ptr %retval.0.in.i642821 to i32
  call void @__asan_load4_noabort(i32 %141)
  %retval.0.i643822 = load i32, ptr %retval.0.in.i642821, align 4
  %and157823 = and i32 %retval.0.i643822, 255
  %conv158824 = zext i32 %and157823 to i64
  %shl159825 = shl nuw nsw i64 %conv158824, 32
  %or160826 = or i64 %shl159825, %conv154812
  %add161827 = add nuw i32 %5, 1
  %retval.0.in.i651838 = getelementptr i32, ptr %139, i32 %add161827
  br label %radeon_get_ib_value.exit662

radeon_get_ib_value.exit662:                      ; preds = %if.end.i658, %radeon_get_ib_value.exit653
  %conv163848.in.in = phi ptr [ %retval.0.in.i651838, %if.end.i658 ], [ %retval.0.in.i651, %radeon_get_ib_value.exit653 ]
  %add155816828846 = phi i32 [ %add155813, %if.end.i658 ], [ %add155, %radeon_get_ib_value.exit653 ]
  %or160830844 = phi i64 [ %or160826, %if.end.i658 ], [ %or160, %radeon_get_ib_value.exit653 ]
  %add161832842 = phi i32 [ %add161827, %if.end.i658 ], [ %add161, %radeon_get_ib_value.exit653 ]
  %.pn.i659 = phi ptr [ %139, %if.end.i658 ], [ %135, %radeon_get_ib_value.exit653 ]
  %142 = ptrtoint ptr %conv163848.in.in to i32
  call void @__asan_load4_noabort(i32 %142)
  %conv163848.in = load i32, ptr %conv163848.in.in, align 4
  %conv163848 = zext i32 %conv163848.in to i64
  %add164850 = add i32 %5, 3
  %retval.0.in.i660 = getelementptr i32, ptr %.pn.i659, i32 %add164850
  %143 = ptrtoint ptr %retval.0.in.i660 to i32
  call void @__asan_load4_noabort(i32 %143)
  %retval.0.i661 = load i32, ptr %retval.0.in.i660, align 4
  %and166 = and i32 %retval.0.i661, 255
  %conv167 = zext i32 %and166 to i64
  %shl168 = shl nuw nsw i64 %conv167, 32
  %or169 = or i64 %shl168, %conv163848
  %gpu_offset170 = getelementptr %struct.radeon_bo_list, ptr %73, i32 %69, i32 2
  %144 = ptrtoint ptr %gpu_offset170 to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %gpu_offset170, align 8
  %146 = trunc i64 %145 to i32
  %conv172 = and i32 %146, -4
  %arrayidx174 = getelementptr i32, ptr %3, i32 %add161832842
  %147 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load volatile i32, ptr %arrayidx174, align 4
  %add175 = add i32 %conv172, %148
  store volatile i32 %add175, ptr %arrayidx174, align 4
  %gpu_offset176 = getelementptr %struct.radeon_bo_list, ptr %64, i32 %60, i32 2
  %149 = ptrtoint ptr %gpu_offset176 to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %gpu_offset176, align 8
  %151 = trunc i64 %150 to i32
  %conv178 = and i32 %151, -4
  %arrayidx180 = getelementptr i32, ptr %3, i32 %add152
  %152 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load volatile i32, ptr %arrayidx180, align 4
  %add181 = add i32 %conv178, %153
  store volatile i32 %add181, ptr %arrayidx180, align 4
  %154 = load i64, ptr %gpu_offset170, align 8
  %shr183 = lshr i64 %154, 32
  %conv185 = trunc i64 %shr183 to i32
  %and186 = and i32 %conv185, 255
  %arrayidx188 = getelementptr i32, ptr %3, i32 %add164850
  %155 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load volatile i32, ptr %arrayidx188, align 4
  %add189 = add i32 %and186, %156
  store volatile i32 %add189, ptr %arrayidx188, align 4
  %157 = load i64, ptr %gpu_offset176, align 8
  %shr191 = lshr i64 %157, 32
  %conv193 = trunc i64 %shr191 to i32
  %and194 = and i32 %conv193, 255
  %arrayidx196 = getelementptr i32, ptr %3, i32 %add155816828846
  %158 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load volatile i32, ptr %arrayidx196, align 4
  %add197 = add i32 %and194, %159
  store volatile i32 %add197, ptr %arrayidx196, align 4
  br label %if.end251

if.else200:                                       ; preds = %if.else148
  br i1 %tobool.not.i629, label %if.end.i694, label %radeon_get_ib_value.exit689

radeon_get_ib_value.exit689:                      ; preds = %if.else200
  call void @__sanitizer_cov_trace_pc() #10
  %retval.0.in.i669 = getelementptr i32, ptr %135, i32 %add152
  %160 = ptrtoint ptr %retval.0.in.i669 to i32
  call void @__asan_load4_noabort(i32 %160)
  %retval.0.i670 = load i32, ptr %retval.0.in.i669, align 4
  %conv203 = zext i32 %retval.0.i670 to i64
  %add204 = add i32 %5, 3
  %retval.0.in.i678 = getelementptr i32, ptr %135, i32 %add204
  %161 = ptrtoint ptr %retval.0.in.i678 to i32
  call void @__asan_load4_noabort(i32 %161)
  %retval.0.i679 = load i32, ptr %retval.0.in.i678, align 4
  %and206 = and i32 %retval.0.i679, 255
  %conv207 = zext i32 %and206 to i64
  %shl208 = shl nuw nsw i64 %conv207, 32
  %or209 = or i64 %shl208, %conv203
  %add210 = add nuw i32 %5, 1
  %retval.0.in.i687 = getelementptr i32, ptr %135, i32 %add210
  br label %radeon_get_ib_value.exit698

if.end.i694:                                      ; preds = %if.else200
  call void @__sanitizer_cov_trace_pc() #10
  %162 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %ptr, align 8
  %retval.0.in.i669853 = getelementptr i32, ptr %163, i32 %add152
  %164 = ptrtoint ptr %retval.0.in.i669853 to i32
  call void @__asan_load4_noabort(i32 %164)
  %retval.0.i670854 = load i32, ptr %retval.0.in.i669853, align 4
  %conv203855 = zext i32 %retval.0.i670854 to i64
  %add204856 = add i32 %5, 3
  %retval.0.in.i678864 = getelementptr i32, ptr %163, i32 %add204856
  %165 = ptrtoint ptr %retval.0.in.i678864 to i32
  call void @__asan_load4_noabort(i32 %165)
  %retval.0.i679865 = load i32, ptr %retval.0.in.i678864, align 4
  %and206866 = and i32 %retval.0.i679865, 255
  %conv207867 = zext i32 %and206866 to i64
  %shl208868 = shl nuw nsw i64 %conv207867, 32
  %or209869 = or i64 %shl208868, %conv203855
  %add210870 = add nuw i32 %5, 1
  %retval.0.in.i687881 = getelementptr i32, ptr %163, i32 %add210870
  br label %radeon_get_ib_value.exit698

radeon_get_ib_value.exit698:                      ; preds = %if.end.i694, %radeon_get_ib_value.exit689
  %conv212890.in.in = phi ptr [ %retval.0.in.i687881, %if.end.i694 ], [ %retval.0.in.i687, %radeon_get_ib_value.exit689 ]
  %add204859871888 = phi i32 [ %add204856, %if.end.i694 ], [ %add204, %radeon_get_ib_value.exit689 ]
  %or209873886 = phi i64 [ %or209869, %if.end.i694 ], [ %or209, %radeon_get_ib_value.exit689 ]
  %add210875884 = phi i32 [ %add210870, %if.end.i694 ], [ %add210, %radeon_get_ib_value.exit689 ]
  %.pn.i695 = phi ptr [ %163, %if.end.i694 ], [ %135, %radeon_get_ib_value.exit689 ]
  %166 = ptrtoint ptr %conv212890.in.in to i32
  call void @__asan_load4_noabort(i32 %166)
  %conv212890.in = load i32, ptr %conv212890.in.in, align 4
  %conv212890 = zext i32 %conv212890.in to i64
  %retval.0.in.i696 = getelementptr i32, ptr %.pn.i695, i32 %add204859871888
  %167 = ptrtoint ptr %retval.0.in.i696 to i32
  call void @__asan_load4_noabort(i32 %167)
  %retval.0.i697 = load i32, ptr %retval.0.in.i696, align 4
  %and215 = and i32 %retval.0.i697, 16711680
  %conv216 = zext i32 %and215 to i64
  %shl217 = shl nuw nsw i64 %conv216, 16
  %or218 = or i64 %shl217, %conv212890
  %gpu_offset219 = getelementptr %struct.radeon_bo_list, ptr %73, i32 %69, i32 2
  %168 = ptrtoint ptr %gpu_offset219 to i32
  call void @__asan_load8_noabort(i32 %168)
  %169 = load i64, ptr %gpu_offset219, align 8
  %170 = trunc i64 %169 to i32
  %conv221 = and i32 %170, -4
  %arrayidx223 = getelementptr i32, ptr %3, i32 %add210875884
  %171 = ptrtoint ptr %arrayidx223 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load volatile i32, ptr %arrayidx223, align 4
  %add224 = add i32 %conv221, %172
  store volatile i32 %add224, ptr %arrayidx223, align 4
  %gpu_offset225 = getelementptr %struct.radeon_bo_list, ptr %64, i32 %60, i32 2
  %173 = ptrtoint ptr %gpu_offset225 to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %gpu_offset225, align 8
  %175 = trunc i64 %174 to i32
  %conv227 = and i32 %175, -4
  %arrayidx229 = getelementptr i32, ptr %3, i32 %add152
  %176 = ptrtoint ptr %arrayidx229 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load volatile i32, ptr %arrayidx229, align 4
  %add230 = add i32 %conv227, %177
  store volatile i32 %add230, ptr %arrayidx229, align 4
  %178 = load i64, ptr %gpu_offset225, align 8
  %shr232 = lshr i64 %178, 32
  %conv234 = trunc i64 %shr232 to i32
  %and235 = and i32 %conv234, 255
  %arrayidx237 = getelementptr i32, ptr %3, i32 %add204859871888
  %179 = ptrtoint ptr %arrayidx237 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load volatile i32, ptr %arrayidx237, align 4
  %add238 = add i32 %and235, %180
  store volatile i32 %add238, ptr %arrayidx237, align 4
  %181 = load i64, ptr %gpu_offset219, align 8
  %sh.diff504 = lshr i64 %181, 16
  %tr.sh.diff505 = trunc i64 %sh.diff504 to i32
  %shl244 = and i32 %tr.sh.diff505, 16711680
  %182 = load volatile i32, ptr %arrayidx237, align 4
  %add247 = add i32 %shl244, %182
  store volatile i32 %add247, ptr %arrayidx237, align 4
  br label %if.end251

if.end251:                                        ; preds = %radeon_get_ib_value.exit698, %radeon_get_ib_value.exit662, %if.end145
  %.sink1134 = phi i32 [ 5, %radeon_get_ib_value.exit662 ], [ 4, %radeon_get_ib_value.exit698 ], [ 7, %if.end145 ]
  %src_offset.1 = phi i64 [ %or160830844, %radeon_get_ib_value.exit662 ], [ %or209873886, %radeon_get_ib_value.exit698 ], [ %src_offset.0, %if.end145 ]
  %dst_offset.2 = phi i64 [ %or169, %radeon_get_ib_value.exit662 ], [ %or218, %radeon_get_ib_value.exit698 ], [ %dst_offset.1, %if.end145 ]
  %183 = ptrtoint ptr %idx2 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %idx2, align 8
  %add199 = add i32 %184, %.sink1134
  store i32 %add199, ptr %idx2, align 8
  %mul252 = shl nuw nsw i32 %and6, 2
  %conv253 = zext i32 %mul252 to i64
  %add254 = add nsw i64 %src_offset.1, %conv253
  %185 = ptrtoint ptr %arrayidx.i545 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %arrayidx.i545, align 8
  %size.i699 = getelementptr inbounds %struct.radeon_bo, ptr %186, i32 0, i32 4, i32 0, i32 5
  %187 = ptrtoint ptr %size.i699 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %size.i699, align 8
  %conv257 = zext i32 %188 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add254, i64 %conv257)
  %cmp258 = icmp ugt i64 %add254, %conv257
  br i1 %cmp258, label %do.end263, label %if.end270

do.end263:                                        ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #10
  %189 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %190, ptr noundef nonnull @.str.20, i64 noundef %add254, i32 noundef %188) #12
  br label %cleanup

if.end270:                                        ; preds = %if.end251
  %add273 = add nsw i64 %dst_offset.2, %conv253
  %191 = ptrtoint ptr %arrayidx.i559 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %arrayidx.i559, align 8
  %size.i701 = getelementptr inbounds %struct.radeon_bo, ptr %192, i32 0, i32 4, i32 0, i32 5
  %193 = ptrtoint ptr %size.i701 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %size.i701, align 8
  %conv276 = zext i32 %194 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add273, i64 %conv276)
  %cmp277 = icmp ugt i64 %add273, %conv276
  br i1 %cmp277, label %do.end282, label %if.end270.do.cond348_crit_edge

if.end270.do.cond348_crit_edge:                   ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond348

do.end282:                                        ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #10
  %195 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %196, ptr noundef nonnull @.str.23, i64 noundef %add273, i32 noundef %194) #12
  br label %cleanup

sw.bb290:                                         ; preds = %radeon_get_ib_value.exit
  %197 = ptrtoint ptr %family291 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %family291, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %198)
  %cmp292 = icmp ult i32 %198, 35
  br i1 %cmp292, label %if.then294, label %if.end295

if.then294:                                       ; preds = %sw.bb290
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.25) #8
  br label %cleanup

if.end295:                                        ; preds = %sw.bb290
  %199 = ptrtoint ptr %chunk_relocs.i703 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %chunk_relocs.i703, align 8
  %cmp.i704 = icmp eq ptr %200, null
  br i1 %cmp.i704, label %if.then.i705, label %if.end.i709

if.then.i705:                                     ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9) #8
  br label %if.then298

if.end.i709:                                      ; preds = %if.end295
  %201 = ptrtoint ptr %dma_reloc_idx.i706 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %dma_reloc_idx.i706, align 8
  %203 = ptrtoint ptr %nrelocs.i707 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %nrelocs.i707, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %202, i32 %204)
  %cmp1.not.i708 = icmp ult i32 %202, %204
  br i1 %cmp1.not.i708, label %if.end299, label %if.then2.i710

if.then2.i710:                                    ; preds = %if.end.i709
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10, i32 noundef %202, i32 noundef %204) #8
  br label %if.then298

if.then298:                                       ; preds = %if.then2.i710, %if.then.i705
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12) #8
  br label %cleanup

if.end299:                                        ; preds = %if.end.i709
  %205 = ptrtoint ptr %relocs.i711 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %relocs.i711, align 8
  %arrayidx.i712 = getelementptr %struct.radeon_bo_list, ptr %206, i32 %202
  %inc.i713 = add nuw i32 %202, 1
  %207 = ptrtoint ptr %dma_reloc_idx.i706 to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %inc.i713, ptr %dma_reloc_idx.i706, align 8
  %add300 = add nuw i32 %5, 1
  %208 = ptrtoint ptr %chunk_ib to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %chunk_ib, align 4
  %kdata.i718 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %209, i32 0, i32 1
  %210 = ptrtoint ptr %kdata.i718 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %kdata.i718, align 4
  %tobool.not.i719 = icmp eq ptr %211, null
  br i1 %tobool.not.i719, label %if.end.i730, label %if.end299.radeon_get_ib_value.exit734_crit_edge

if.end299.radeon_get_ib_value.exit734_crit_edge:  ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_get_ib_value.exit734

if.end.i730:                                      ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #10
  %212 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %ptr, align 8
  br label %radeon_get_ib_value.exit734

radeon_get_ib_value.exit734:                      ; preds = %if.end.i730, %if.end299.radeon_get_ib_value.exit734_crit_edge
  %.pn = phi ptr [ %213, %if.end.i730 ], [ %211, %if.end299.radeon_get_ib_value.exit734_crit_edge ]
  %conv302900.in.in = getelementptr i32, ptr %.pn, i32 %add300
  %214 = ptrtoint ptr %conv302900.in.in to i32
  call void @__asan_load4_noabort(i32 %214)
  %conv302900.in = load i32, ptr %conv302900.in.in, align 4
  %conv302900 = zext i32 %conv302900.in to i64
  %add303902 = add i32 %5, 3
  %retval.0.in.i732 = getelementptr i32, ptr %.pn, i32 %add303902
  %215 = ptrtoint ptr %retval.0.in.i732 to i32
  call void @__asan_load4_noabort(i32 %215)
  %retval.0.i733 = load i32, ptr %retval.0.in.i732, align 4
  %and305 = and i32 %retval.0.i733, 16711680
  %conv306 = zext i32 %and305 to i64
  %shl307 = shl nuw nsw i64 %conv306, 16
  %mul309 = shl nuw nsw i32 %and6, 2
  %conv310 = zext i32 %mul309 to i64
  %or308 = add nuw nsw i64 %conv302900, %conv310
  %add311 = add nuw nsw i64 %or308, %shl307
  %216 = ptrtoint ptr %arrayidx.i712 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %arrayidx.i712, align 8
  %size.i735 = getelementptr inbounds %struct.radeon_bo, ptr %217, i32 0, i32 4, i32 0, i32 5
  %218 = ptrtoint ptr %size.i735 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %size.i735, align 8
  %conv314 = zext i32 %219 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add311, i64 %conv314)
  %cmp315 = icmp ugt i64 %add311, %conv314
  br i1 %cmp315, label %do.end320, label %if.end327

do.end320:                                        ; preds = %radeon_get_ib_value.exit734
  call void @__sanitizer_cov_trace_pc() #10
  %220 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %221, ptr noundef nonnull @.str.27, i64 noundef %add311, i32 noundef %219) #12
  br label %cleanup

if.end327:                                        ; preds = %radeon_get_ib_value.exit734
  call void @__sanitizer_cov_trace_pc() #10
  %gpu_offset328 = getelementptr %struct.radeon_bo_list, ptr %206, i32 %202, i32 2
  %222 = ptrtoint ptr %gpu_offset328 to i32
  call void @__asan_load8_noabort(i32 %222)
  %223 = load i64, ptr %gpu_offset328, align 8
  %224 = trunc i64 %223 to i32
  %conv330 = and i32 %224, -4
  %arrayidx332 = getelementptr i32, ptr %3, i32 %add300
  %225 = ptrtoint ptr %arrayidx332 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load volatile i32, ptr %arrayidx332, align 4
  %add333 = add i32 %conv330, %226
  store volatile i32 %add333, ptr %arrayidx332, align 4
  %227 = load i64, ptr %gpu_offset328, align 8
  %sh.diff = lshr i64 %227, 16
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %and339 = and i32 %tr.sh.diff, 16711680
  %arrayidx341 = getelementptr i32, ptr %3, i32 %add303902
  %228 = ptrtoint ptr %arrayidx341 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load volatile i32, ptr %arrayidx341, align 4
  %add342 = add i32 %and339, %229
  store volatile i32 %add342, ptr %arrayidx341, align 4
  %230 = ptrtoint ptr %idx2 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %idx2, align 8
  %add344 = add i32 %231, 4
  br label %do.cond348.sink.split

sw.bb345:                                         ; preds = %radeon_get_ib_value.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add347 = add nuw i32 %5, 1
  br label %do.cond348.sink.split

sw.default:                                       ; preds = %radeon_get_ib_value.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.29, i32 noundef %shr, i32 noundef %5) #8
  br label %cleanup

do.cond348.sink.split:                            ; preds = %sw.bb345, %if.end327
  %add344.sink = phi i32 [ %add344, %if.end327 ], [ %add347, %sw.bb345 ]
  %232 = ptrtoint ptr %idx2 to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %add344.sink, ptr %idx2, align 8
  br label %do.cond348

do.cond348:                                       ; preds = %do.cond348.sink.split, %if.end270.do.cond348_crit_edge, %if.end47.do.cond348_crit_edge
  %233 = ptrtoint ptr %idx2 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %idx2, align 8
  %235 = ptrtoint ptr %chunk_ib to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %chunk_ib, align 4
  %237 = ptrtoint ptr %236 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %236, align 4
  %cmp352 = icmp ult i32 %234, %238
  br i1 %cmp352, label %do.cond348.do.body_crit_edge, label %do.cond348.cleanup_crit_edge

do.cond348.cleanup_crit_edge:                     ; preds = %do.cond348
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond348.do.body_crit_edge:                     ; preds = %do.cond348
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

cleanup:                                          ; preds = %do.cond348.cleanup_crit_edge, %sw.default, %do.end320, %if.then298, %if.then294, %do.end282, %do.end263, %if.then69, %if.then65, %do.end, %if.then10, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %sw.default ], [ -22, %if.then294 ], [ -22, %if.then298 ], [ -22, %do.end320 ], [ -22, %if.then65 ], [ -22, %if.then69 ], [ -22, %do.end263 ], [ -22, %do.end282 ], [ -22, %if.then10 ], [ -22, %do.end ], [ 0, %do.cond348.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_object_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_cs_packet_next_reloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @r600_cs_track_check(ptr noundef readonly %p) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %track1 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 18
  %0 = ptrtoint ptr %track1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %track1, align 8
  %rdev = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 1
  %2 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdev, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup91_crit_edge, label %if.end

entry.cleanup91_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup91

if.end:                                           ; preds = %entry
  %streamout_dirty = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 39
  %4 = ptrtoint ptr %streamout_dirty to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %streamout_dirty, align 1, !range !410
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end.if.end25_crit_edge, label %land.lhs.true

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end
  %vgt_strmout_en = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 22
  %6 = ptrtoint ptr %vgt_strmout_en to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vgt_strmout_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end25_crit_edge, label %for.cond.preheader

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

for.cond.preheader:                               ; preds = %land.lhs.true
  %vgt_strmout_buffer_en = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 23
  %8 = ptrtoint ptr %vgt_strmout_buffer_en to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vgt_strmout_buffer_en, align 8
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %for.cond.preheader.for.inc_crit_edge, label %if.then6

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then6:                                         ; preds = %for.cond.preheader
  %arrayidx = getelementptr %struct.r600_cs_track, ptr %1, i32 0, i32 24, i32 0
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool7.not = icmp eq ptr %11, null
  br i1 %tobool7.not, label %if.then6.do.end_crit_edge, label %if.then8

if.then6.do.end_crit_edge:                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then8:                                         ; preds = %if.then6
  %arrayidx9 = getelementptr %struct.r600_cs_track, ptr %1, i32 0, i32 26, i32 0
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx9, align 4
  %conv = zext i32 %13 to i64
  %arrayidx10 = getelementptr %struct.r600_cs_track, ptr %1, i32 0, i32 27, i32 0
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx10, align 4
  %conv11 = zext i32 %15 to i64
  %add = add nuw nsw i64 %conv11, %conv
  %size.i = getelementptr inbounds %struct.radeon_bo, ptr %11, i32 0, i32 4, i32 0, i32 5
  %16 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size.i, align 8
  %conv14 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv14)
  %cmp15 = icmp ugt i64 %add, %conv14
  br i1 %cmp15, label %if.then8.if.then17_crit_edge, label %if.then8.for.inc_crit_edge

if.then8.for.inc_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then8.if.then17_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

if.then17:                                        ; preds = %if.then8.3.if.then17_crit_edge, %if.then8.2.if.then17_crit_edge, %if.then8.1.if.then17_crit_edge, %if.then8.if.then17_crit_edge
  %i.0309.lcssa434 = phi i32 [ 0, %if.then8.if.then17_crit_edge ], [ 1, %if.then8.1.if.then17_crit_edge ], [ 2, %if.then8.2.if.then17_crit_edge ], [ 3, %if.then8.3.if.then17_crit_edge ]
  %add.lcssa = phi i64 [ %add, %if.then8.if.then17_crit_edge ], [ %add.1, %if.then8.1.if.then17_crit_edge ], [ %add.2, %if.then8.2.if.then17_crit_edge ], [ %add.3, %if.then8.3.if.then17_crit_edge ]
  %.lcssa433 = phi i32 [ %17, %if.then8.if.then17_crit_edge ], [ %27, %if.then8.1.if.then17_crit_edge ], [ %35, %if.then8.2.if.then17_crit_edge ], [ %43, %if.then8.3.if.then17_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.100, i32 noundef %i.0309.lcssa434, i64 noundef %add.lcssa, i32 noundef %.lcssa433) #8
  br label %cleanup91

do.end:                                           ; preds = %if.then6.3.do.end_crit_edge, %if.then6.2.do.end_crit_edge, %if.then6.1.do.end_crit_edge, %if.then6.do.end_crit_edge
  %i.0309.lcssa = phi i32 [ 0, %if.then6.do.end_crit_edge ], [ 1, %if.then6.1.do.end_crit_edge ], [ 2, %if.then6.2.do.end_crit_edge ], [ 3, %if.then6.3.do.end_crit_edge ]
  %18 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.101, i32 noundef %i.0309.lcssa) #12
  br label %cleanup91

for.inc:                                          ; preds = %if.then8.for.inc_crit_edge, %for.cond.preheader.for.inc_crit_edge
  %and.1 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool5.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool5.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then6.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.then6.1:                                       ; preds = %for.inc
  %arrayidx.1 = getelementptr %struct.r600_cs_track, ptr %1, i32 0, i32 24, i32 1
  %20 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.1, align 4
  %tobool7.not.1 = icmp eq ptr %21, null
  br i1 %tobool7.not.1, label %if.then6.1.do.end_crit_edge, label %if.then8.1

if.then6.1.do.end_crit_edge:                      ; preds = %if.then6.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then8.1:                                       ; preds = %if.then6.1
  %arrayidx9.1 = getelementptr %struct.r600_cs_track, ptr %1, i32 0, i32 26, i32 1
  %22 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx9.1, align 4
  %conv.1 = zext i32 %23 to i64
  %arrayidx10.1 = getelementptr %struct.r600_cs_track, ptr %1, i32 0, i32 27, i32 1
  %24 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx10.1, align 4
  %conv11.1 = zext i32 %25 to i64
  %add.1 = add nuw nsw i64 %conv11.1, %conv.1
  %size.i.1 = getelementptr inbounds %struct.radeon_bo, ptr %21, i32 0, i32 4, i32 0, i32 5
  %26 = ptrtoint ptr %size.i.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size.i.1, align 8
  %conv14.1 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add.1, i64 %conv14.1)
  %cmp15.1 = icmp ugt i64 %add.1, %conv14.1
  br i1 %cmp15.1, label %if.then8.1.if.then17_crit_edge, label %if.then8.1.for.inc.1_crit_edge

if.then8.1.for.inc.1_crit_edge:                   ; preds = %if.then8.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.then8.1.if.then17_crit_edge:                   ; preds = %if.then8.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

for.inc.1:                                        ; preds = %if.then8.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %and.2 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool5.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool5.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then6.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.then6.2:                                       ; preds = %for.inc.1
  %arrayidx.2 = getelementptr %struct.r600_cs_track, ptr %1, i32 0, i32 24, i32 2
  %28 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.2, align 4
  %tobool7.not.2 = icmp eq ptr %29, null
  br i1 %tobool7.not.2, label %if.then6.2.do.end_crit_edge, label %if.then8.2

if.then6.2.do.end_crit_edge:                      ; preds = %if.then6.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then8.2:                                       ; preds = %if.then6.2
  %arrayidx9.2 = getelementptr %struct.r600_cs_track, ptr %1, i32 0, i32 26, i32 2
  %30 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx9.2, align 4
  %conv.2 = zext i32 %31 to i64
  %arrayidx10.2 = getelementptr %struct.r600_cs_track, ptr %1, i32 0, i32 27, i32 2
  %32 = ptrtoint ptr %arrayidx10.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx10.2, align 4
  %conv11.2 = zext i32 %33 to i64
  %add.2 = add nuw nsw i64 %conv11.2, %conv.2
  %size.i.2 = getelementptr inbounds %struct.radeon_bo, ptr %29, i32 0, i32 4, i32 0, i32 5
  %34 = ptrtoint ptr %size.i.2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size.i.2, align 8
  %conv14.2 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add.2, i64 %conv14.2)
  %cmp15.2 = icmp ugt i64 %add.2, %conv14.2
  br i1 %cmp15.2, label %if.then8.2.if.then17_crit_edge, label %if.then8.2.for.inc.2_crit_edge

if.then8.2.for.inc.2_crit_edge:                   ; preds = %if.then8.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.then8.2.if.then17_crit_edge:                   ; preds = %if.then8.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

for.inc.2:                                        ; preds = %if.then8.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %and.3 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool5.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool5.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then6.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

if.then6.3:                                       ; preds = %for.inc.2
  %arrayidx.3 = getelementptr %struct.r600_cs_track, ptr %1, i32 0, i32 24, i32 3
  %36 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.3, align 4
  %tobool7.not.3 = icmp eq ptr %37, null
  br i1 %tobool7.not.3, label %if.then6.3.do.end_crit_edge, label %if.then8.3

if.then6.3.do.end_crit_edge:                      ; preds = %if.then6.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then8.3:                                       ; preds = %if.then6.3
  %arrayidx9.3 = getelementptr %struct.r600_cs_track, ptr %1, i32 0, i32 26, i32 3
  %38 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx9.3, align 4
  %conv.3 = zext i32 %39 to i64
  %arrayidx10.3 = getelementptr %struct.r600_cs_track, ptr %1, i32 0, i32 27, i32 3
  %40 = ptrtoint ptr %arrayidx10.3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx10.3, align 4
  %conv11.3 = zext i32 %41 to i64
  %add.3 = add nuw nsw i64 %conv11.3, %conv.3
  %size.i.3 = getelementptr inbounds %struct.radeon_bo, ptr %37, i32 0, i32 4, i32 0, i32 5
  %42 = ptrtoint ptr %size.i.3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %size.i.3, align 8
  %conv14.3 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add.3, i64 %conv14.3)
  %cmp15.3 = icmp ugt i64 %add.3, %conv14.3
  br i1 %cmp15.3, label %if.then8.3.if.then17_crit_edge, label %if.then8.3.for.inc.3_crit_edge

if.then8.3.for.inc.3_crit_edge:                   ; preds = %if.then8.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

if.then8.3.if.then17_crit_edge:                   ; preds = %if.then8.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

for.inc.3:                                        ; preds = %if.then8.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %44 = ptrtoint ptr %streamout_dirty to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %streamout_dirty, align 1
  br label %if.end25

if.end25:                                         ; preds = %for.inc.3, %land.lhs.true.if.end25_crit_edge, %if.end.if.end25_crit_edge
  %sx_misc_kill_all_prims = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 36
  %45 = ptrtoint ptr %sx_misc_kill_all_prims to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %sx_misc_kill_all_prims, align 8, !range !410
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool26.not = icmp eq i8 %46, 0
  br i1 %tobool26.not, label %if.end28, label %if.end25.cleanup91_crit_edge

if.end25.cleanup91_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup91

if.end28:                                         ; preds = %if.end25
  %cb_dirty = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 37
  %47 = ptrtoint ptr %cb_dirty to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %cb_dirty, align 1, !range !410
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool29.not = icmp eq i8 %48, 0
  br i1 %tobool29.not, label %if.end28.if.end69_crit_edge, label %if.then30

if.end28.if.end69_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then30:                                        ; preds = %if.end28
  %cb_target_mask = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 18
  %49 = ptrtoint ptr %cb_target_mask to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cb_target_mask, align 8
  %is_resolve = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 20
  %51 = ptrtoint ptr %is_resolve to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %is_resolve, align 8, !range !410
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool31.not = icmp eq i8 %52, 0
  %or = or i32 %50, 255
  %spec.select = select i1 %tobool31.not, i32 %50, i32 %or
  %ptr.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 16, i32 3
  br label %for.body37

for.body37:                                       ; preds = %for.inc65.for.body37_crit_edge, %if.then30
  %i.1311 = phi i32 [ 0, %if.then30 ], [ %inc66, %for.inc65.for.body37_crit_edge ]
  %arrayidx38 = getelementptr %struct.r600_cs_track, ptr %1, i32 0, i32 15, i32 %i.1311
  %53 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx38, align 4
  %55 = and i32 %54, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp40.not = icmp eq i32 %55, 0
  br i1 %cmp40.not, label %for.body37.for.inc65_crit_edge, label %land.lhs.true42

for.body37.for.inc65_crit_edge:                   ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc65

land.lhs.true42:                                  ; preds = %for.body37
  %mul = shl i32 %i.1311, 2
  %56 = shl i32 15, %mul
  %57 = and i32 %56, %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool45.not = icmp eq i32 %57, 0
  br i1 %tobool45.not, label %land.lhs.true42.for.inc65_crit_edge, label %if.then46

land.lhs.true42.for.inc65_crit_edge:              ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc65

if.then46:                                        ; preds = %land.lhs.true42
  %arrayidx47 = getelementptr %struct.r600_cs_track, ptr %1, i32 0, i32 7, i32 %i.1311
  %58 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx47, align 4
  %cmp48 = icmp eq ptr %59, null
  br i1 %cmp48, label %do.end53, label %if.end56

do.end53:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %p, align 8
  %62 = ptrtoint ptr %cb_target_mask to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cb_target_mask, align 8
  %cb_shader_mask = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 19
  %64 = ptrtoint ptr %cb_shader_mask to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cb_shader_mask, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %61, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.102, i32 noundef 759, i32 noundef %63, i32 noundef %65, i32 noundef %i.1311) #12
  br label %cleanup91

if.end56:                                         ; preds = %if.then46
  %66 = ptrtoint ptr %track1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %track1, align 8
  %68 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ptr.i, align 8
  %is_resolve.i = getelementptr inbounds %struct.r600_cs_track, ptr %67, i32 0, i32 20
  %70 = ptrtoint ptr %is_resolve.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %is_resolve.i, align 8, !range !410
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.not.i = icmp ne i8 %71, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.1311)
  %cmp.i = icmp eq i32 %i.1311, 1
  %or.cond.i = and i1 %cmp.i, %tobool.not.i
  br i1 %or.cond.i, label %if.end56.cond.end.i_crit_edge, label %cond.false.i

if.end56.cond.end.i_crit_edge:                    ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  %nsamples3.i = getelementptr inbounds %struct.r600_cs_track, ptr %67, i32 0, i32 5
  %72 = ptrtoint ptr %nsamples3.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %nsamples3.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end56.cond.end.i_crit_edge
  %cond.i = phi i32 [ %73, %cond.false.i ], [ 1, %if.end56.cond.end.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.r600_cs_track, ptr %67, i32 0, i32 15, i32 %i.1311
  %74 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.i, align 4
  %shr.i = lshr i32 %75, 2
  %and.i = and i32 %shr.i, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %and.i)
  %cmp.i.i = icmp ugt i32 %and.i, 56
  br i1 %cmp.i.i, label %cond.end.i.do.end.i_crit_edge, label %r600_fmt_is_valid_color.exit.i

cond.end.i.do.end.i_crit_edge:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

r600_fmt_is_valid_color.exit.i:                   ; preds = %cond.end.i
  %valid_color.i.i = getelementptr [57 x %struct.gpu_formats], ptr @color_formats_table, i32 0, i32 %and.i, i32 3
  %76 = ptrtoint ptr %valid_color.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %valid_color.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.not.i.not.i = icmp eq i32 %77, 0
  br i1 %tobool.not.i.not.i, label %r600_fmt_is_valid_color.exit.i.do.end.i_crit_edge, label %r600_fmt_get_blocksize.exit.i

r600_fmt_is_valid_color.exit.i.do.end.i_crit_edge: ; preds = %r600_fmt_is_valid_color.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %r600_fmt_is_valid_color.exit.i.do.end.i_crit_edge, %cond.end.i.do.end.i_crit_edge
  %78 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %79, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.107, i32 noundef 368, i32 noundef %and.i, i32 noundef %i.1311, i32 noundef %75) #12
  br label %cleanup91

r600_fmt_get_blocksize.exit.i:                    ; preds = %r600_fmt_is_valid_color.exit.i
  %arrayidx6.i = getelementptr %struct.r600_cs_track, ptr %67, i32 0, i32 21, i32 %i.1311
  %80 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx6.i, align 4
  %and8.i = shl i32 %81, 3
  %add.i = and i32 %and8.i, 8184
  %mul.i = add nuw nsw i32 %add.i, 8
  %82 = lshr i32 %81, 4
  %add13.i = and i32 %82, 67108800
  %mul14.i = add nuw nsw i32 %add13.i, 64
  %div.i = udiv i32 %mul14.i, %mul.i
  %83 = tail call i32 @llvm.umin.i32(i32 %div.i, i32 8192) #8
  %shr20.i = lshr i32 %75, 8
  %and21.i = and i32 %shr20.i, 15
  %arrayidx22.i = getelementptr %struct.r600_cs_track, ptr %67, i32 0, i32 8, i32 %i.1311
  %84 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %arrayidx22.i, align 8
  %arrayidx23.i = getelementptr %struct.r600_cs_track, ptr %67, i32 0, i32 9, i32 %i.1311
  %86 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %arrayidx23.i, align 8
  %add24.i = add i64 %87, %85
  %88 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %67, align 8
  %blocksize.i.i = getelementptr [57 x %struct.gpu_formats], ptr @color_formats_table, i32 0, i32 %and.i, i32 2
  %90 = ptrtoint ptr %blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %blocksize.i.i, align 4
  %92 = zext i32 %and21.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.246)
  switch i32 %and21.i, label %do.end36.i [
    i32 0, label %r600_fmt_get_blocksize.exit.i.sw.epilog.i_crit_edge
    i32 1, label %sw.bb5.i.i
    i32 2, label %sw.bb.i
    i32 4, label %sw.bb24.i.i
  ]

r600_fmt_get_blocksize.exit.i.sw.epilog.i_crit_edge: ; preds = %r600_fmt_get_blocksize.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb5.i.i:                                       ; preds = %r600_fmt_get_blocksize.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %div.i.i = udiv i32 %89, %91
  %93 = tail call i32 @llvm.umax.i32(i32 %div.i.i, i32 64) #8
  br label %sw.epilog.i

sw.bb24.i.i:                                      ; preds = %r600_fmt_get_blocksize.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %npipes.i = getelementptr inbounds %struct.r600_cs_track, ptr %67, i32 0, i32 2
  %94 = ptrtoint ptr %npipes.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %npipes.i, align 8
  %nbanks.i = getelementptr inbounds %struct.r600_cs_track, ptr %67, i32 0, i32 1
  %96 = ptrtoint ptr %nbanks.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %nbanks.i, align 4
  %mul3.i.i = mul i32 %91, %cond.i
  %mul1.i.i = shl i32 %mul3.i.i, 6
  %mul2.i.i = mul i32 %mul1.i.i, %95
  %mul4.i.i = mul i32 %mul2.i.i, %97
  %mul25.i.i = shl i32 %97, 3
  %mul28.i.i = mul i32 %97, %89
  %mul32.i.i = shl i32 %mul3.i.i, 3
  %div33.i.i = udiv i32 %mul28.i.i, %mul32.i.i
  %98 = tail call i32 @llvm.umax.i32(i32 %mul25.i.i, i32 %div33.i.i) #8
  %mul41.i.i = shl i32 %95, 3
  %mul44.i.i = mul i32 %mul3.i.i, %mul41.i.i
  %mul46.i.i = mul i32 %mul44.i.i, %98
  %99 = tail call i32 @llvm.umax.i32(i32 %mul4.i.i, i32 %mul46.i.i) #8
  br label %sw.epilog.i

do.end36.i:                                       ; preds = %r600_fmt_get_blocksize.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %100 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %101, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.107, i32 noundef %and21.i, i32 noundef %i.1311, i32 noundef %75) #12
  br label %cleanup91

sw.bb.i:                                          ; preds = %r600_fmt_get_blocksize.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul11.i.i = mul i32 %91, %cond.i
  %mul13.i.i = shl i32 %mul11.i.i, 3
  %div14.i.i = udiv i32 %89, %mul13.i.i
  %102 = tail call i32 @llvm.umax.i32(i32 %div14.i.i, i32 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %83)
  %cmp45.i = icmp ugt i32 %83, 7
  %and47.i = and i32 %83, 16376
  %spec.select.i = select i1 %cmp45.i, i32 %and47.i, i32 %83
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb.i, %sw.bb24.i.i, %sw.bb5.i.i, %r600_fmt_get_blocksize.exit.i.sw.epilog.i_crit_edge
  %.sink.i442.in.i = phi i32 [ %89, %sw.bb.i ], [ 1, %r600_fmt_get_blocksize.exit.i.sw.epilog.i_crit_edge ], [ %89, %sw.bb5.i.i ], [ %99, %sw.bb24.i.i ]
  %pitch_align.0441.i = phi i32 [ %102, %sw.bb.i ], [ 1, %r600_fmt_get_blocksize.exit.i.sw.epilog.i_crit_edge ], [ %93, %sw.bb5.i.i ], [ %98, %sw.bb24.i.i ]
  %height_align.0440.i = phi i32 [ 8, %sw.bb.i ], [ 1, %r600_fmt_get_blocksize.exit.i.sw.epilog.i_crit_edge ], [ 1, %sw.bb5.i.i ], [ %mul41.i.i, %sw.bb24.i.i ]
  %height.0.i = phi i32 [ %spec.select.i, %sw.bb.i ], [ %83, %r600_fmt_get_blocksize.exit.i.sw.epilog.i_crit_edge ], [ %83, %sw.bb5.i.i ], [ %83, %sw.bb24.i.i ]
  %.sink.i442.i = zext i32 %.sink.i442.in.i to i64
  %sub.i = add i32 %pitch_align.0441.i, 16383
  %and59.i = and i32 %sub.i, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.i)
  %cmp60.i = icmp eq i32 %and59.i, 0
  br i1 %cmp60.i, label %if.end66.i, label %do.end64.i

do.end64.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %103 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %104, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.107, i32 noundef 415, i32 noundef %mul.i, i32 noundef %pitch_align.0441.i, i32 noundef %and21.i) #12
  br label %cleanup91

if.end66.i:                                       ; preds = %sw.epilog.i
  %sub67.i = add i32 %height_align.0440.i, -1
  %and68.i = and i32 %height.0.i, %sub67.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68.i)
  %cmp69.i = icmp eq i32 %and68.i, 0
  br i1 %cmp69.i, label %if.end75.i, label %do.end73.i

do.end73.i:                                       ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #10
  %105 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %106, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.107, i32 noundef 420, i32 noundef %height.0.i, i32 noundef %height_align.0440.i, i32 noundef %and21.i) #12
  br label %cleanup91

if.end75.i:                                       ; preds = %if.end66.i
  %sub76.i = add nsw i64 %.sink.i442.i, -1
  %and77.i = and i64 %sub76.i, %add24.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and77.i)
  %cmp78.i = icmp eq i64 %and77.i, 0
  br i1 %cmp78.i, label %if.end.i373.i, label %do.end82.i

do.end82.i:                                       ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #10
  %107 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %108, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.107, i32 noundef %i.1311, i64 noundef %add24.i, i64 noundef %.sink.i442.i, i32 noundef %and21.i) #12
  br label %cleanup91

if.end.i373.i:                                    ; preds = %if.end75.i
  %blockheight.i.i = getelementptr [57 x %struct.gpu_formats], ptr @color_formats_table, i32 0, i32 %and.i, i32 1
  %109 = ptrtoint ptr %blockheight.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %blockheight.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp1.i.i = icmp eq i32 %110, 0
  br i1 %cmp1.i.i, label %if.end.i373.i.if.end.i378.i_crit_edge, label %if.end3.i.i

if.end.i373.i.if.end.i378.i_crit_edge:            ; preds = %if.end.i373.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i378.i

if.end3.i.i:                                      ; preds = %if.end.i373.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i.i = add nsw i32 %height.0.i, -1
  %sub.i.i = add i32 %add.i.i, %110
  %div.i374.i = udiv i32 %sub.i.i, %110
  br label %if.end.i378.i

if.end.i378.i:                                    ; preds = %if.end3.i.i, %if.end.i373.i.if.end.i378.i_crit_edge
  %retval.0.i375.i = phi i32 [ %div.i374.i, %if.end3.i.i ], [ 0, %if.end.i373.i.if.end.i378.i_crit_edge ]
  %arrayidx.i.i = getelementptr [57 x %struct.gpu_formats], ptr @color_formats_table, i32 0, i32 %and.i
  %111 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp1.i377.i = icmp eq i32 %112, 0
  br i1 %cmp1.i377.i, label %if.end.i378.i.r600_fmt_get_blocksize.exit388.i_crit_edge, label %if.end3.i382.i

if.end.i378.i.r600_fmt_get_blocksize.exit388.i_crit_edge: ; preds = %if.end.i378.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %r600_fmt_get_blocksize.exit388.i

if.end3.i382.i:                                   ; preds = %if.end.i378.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i379.i = or i32 %add.i, 7
  %sub.i380.i = add i32 %add.i379.i, %112
  %div.i381.i = udiv i32 %sub.i380.i, %112
  br label %r600_fmt_get_blocksize.exit388.i

r600_fmt_get_blocksize.exit388.i:                 ; preds = %if.end3.i382.i, %if.end.i378.i.r600_fmt_get_blocksize.exit388.i_crit_edge
  %retval.0.i383.i = phi i32 [ %div.i381.i, %if.end3.i382.i ], [ 0, %if.end.i378.i.r600_fmt_get_blocksize.exit388.i_crit_edge ]
  %mul87.i = mul i32 %91, %cond.i
  %mul89.i = mul i32 %mul87.i, %retval.0.i375.i
  %mul90.i = mul i32 %mul89.i, %retval.0.i383.i
  %113 = zext i32 %and21.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %113, ptr @__sancov_gen_cov_switch_values.247)
  switch i32 %and21.i, label %sw.bb92.i [
    i32 4, label %r600_fmt_get_blocksize.exit388.i.sw.bb96.i_crit_edge
    i32 2, label %r600_fmt_get_blocksize.exit388.i.sw.bb96.i_crit_edge912
  ]

r600_fmt_get_blocksize.exit388.i.sw.bb96.i_crit_edge912: ; preds = %r600_fmt_get_blocksize.exit388.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb96.i

r600_fmt_get_blocksize.exit388.i.sw.bb96.i_crit_edge: ; preds = %r600_fmt_get_blocksize.exit388.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb96.i

sw.bb92.i:                                        ; preds = %r600_fmt_get_blocksize.exit388.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx93.i = getelementptr %struct.r600_cs_track, ptr %67, i32 0, i32 16, i32 %i.1311
  %114 = ptrtoint ptr %arrayidx93.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx93.i, align 4
  %and94.i = and i32 %115, 255
  br label %sw.epilog103.i

sw.bb96.i:                                        ; preds = %r600_fmt_get_blocksize.exit388.i.sw.bb96.i_crit_edge, %r600_fmt_get_blocksize.exit388.i.sw.bb96.i_crit_edge912
  %arrayidx98.i = getelementptr %struct.r600_cs_track, ptr %67, i32 0, i32 16, i32 %i.1311
  %116 = ptrtoint ptr %arrayidx98.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx98.i, align 4
  %shr99.i = lshr i32 %117, 13
  %and100.i = and i32 %shr99.i, 2047
  %mul101.i = mul i32 %and100.i, %mul90.i
  br label %sw.epilog103.i

sw.epilog103.i:                                   ; preds = %sw.bb96.i, %sw.bb92.i
  %and94.pn.i = phi i32 [ %and94.i, %sw.bb92.i ], [ %mul101.i, %sw.bb96.i ]
  %tmp.0.i = add i32 %and94.pn.i, %mul90.i
  %conv.i = zext i32 %tmp.0.i to i64
  %add106.i = add i64 %87, %conv.i
  %arrayidx107.i = getelementptr %struct.r600_cs_track, ptr %67, i32 0, i32 7, i32 %i.1311
  %118 = ptrtoint ptr %arrayidx107.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx107.i, align 4
  %size.i.i = getelementptr inbounds %struct.radeon_bo, ptr %119, i32 0, i32 4, i32 0, i32 5
  %120 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %size.i.i, align 8
  %conv109.i = zext i32 %121 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add106.i, i64 %conv109.i)
  %cmp110.i = icmp ule i64 %add106.i, %conv109.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %cmp113.i = icmp eq i32 %and21.i, 0
  %or.cond364.i = select i1 %cmp110.i, i1 true, i1 %cmp113.i
  br i1 %or.cond364.i, label %if.end129.i, label %if.end.i393.i

if.end.i393.i:                                    ; preds = %sw.epilog103.i
  %122 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %p, align 8
  br i1 %cmp1.i377.i, label %if.end.i393.i.if.end.i403.i_crit_edge, label %if.end3.i397.i

if.end.i393.i.if.end.i403.i_crit_edge:            ; preds = %if.end.i393.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i403.i

if.end3.i397.i:                                   ; preds = %if.end.i393.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i394.i = or i32 %add.i, 7
  %sub.i395.i = add i32 %add.i394.i, %112
  %div.i396.i = udiv i32 %sub.i395.i, %112
  br label %if.end.i403.i

if.end.i403.i:                                    ; preds = %if.end3.i397.i, %if.end.i393.i.if.end.i403.i_crit_edge
  %retval.0.i398.i = phi i32 [ %div.i396.i, %if.end3.i397.i ], [ 0, %if.end.i393.i.if.end.i403.i_crit_edge ]
  br i1 %cmp1.i.i, label %if.end.i403.i.r600_fmt_get_blocksize.exit414.i_crit_edge, label %if.end3.i407.i

if.end.i403.i.r600_fmt_get_blocksize.exit414.i_crit_edge: ; preds = %if.end.i403.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %r600_fmt_get_blocksize.exit414.i

if.end3.i407.i:                                   ; preds = %if.end.i403.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i404.i = add nsw i32 %height.0.i, -1
  %sub.i405.i = add i32 %add.i404.i, %110
  %div.i406.i = udiv i32 %sub.i405.i, %110
  br label %r600_fmt_get_blocksize.exit414.i

r600_fmt_get_blocksize.exit414.i:                 ; preds = %if.end3.i407.i, %if.end.i403.i.r600_fmt_get_blocksize.exit414.i_crit_edge
  %retval.0.i408.i = phi i32 [ %div.i406.i, %if.end3.i407.i ], [ 0, %if.end.i403.i.r600_fmt_get_blocksize.exit414.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %123, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.107, i32 noundef %i.1311, i32 noundef %and21.i, i64 noundef %87, i32 noundef %tmp.0.i, i32 noundef %121, i32 noundef %mul.i, i32 noundef %height.0.i, i32 noundef %retval.0.i398.i, i32 noundef %retval.0.i408.i, i32 noundef %91) #12
  br label %cleanup91

if.end129.i:                                      ; preds = %sw.epilog103.i
  %mul130.i = mul nuw nsw i32 %height.0.i, %mul.i
  %shr131.i = lshr i32 %mul130.i, 6
  %124 = tail call i32 @llvm.umin.i32(i32 %shr131.i, i32 %mul14.i) #8
  %div136363.i = lshr exact i32 %mul.i, 3
  %sub137.i = add nuw nsw i32 %div136363.i, 1023
  %and138.i = and i32 %sub137.i, 1023
  %sub139.i = shl nuw nsw i32 %124, 10
  %and140.i = add nuw nsw i32 %sub139.i, 1073740800
  %shl141.i = and i32 %and140.i, 1073740800
  %or.i = or i32 %shl141.i, %and138.i
  %arrayidx142.i = getelementptr %struct.r600_cs_track, ptr %67, i32 0, i32 17, i32 %i.1311
  %125 = ptrtoint ptr %arrayidx142.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx142.i, align 4
  %arrayidx143.i = getelementptr i32, ptr %69, i32 %126
  %127 = ptrtoint ptr %arrayidx143.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store volatile i32 %or.i, ptr %arrayidx143.i, align 4
  %128 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx.i, align 4
  %shr146.i = lshr i32 %129, 18
  %and147.i = and i32 %shr146.i, 3
  %130 = zext i32 %and147.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %130, ptr @__sancov_gen_cov_switch_values.248)
  switch i32 %and147.i, label %do.end215.i [
    i32 0, label %if.end129.i.for.inc65_crit_edge
    i32 2, label %sw.bb148.i
    i32 1, label %if.end129.i.sw.bb182.i_crit_edge
  ]

if.end129.i.sw.bb182.i_crit_edge:                 ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb182.i

if.end129.i.for.inc65_crit_edge:                  ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc65

sw.bb148.i:                                       ; preds = %if.end129.i
  %nsamples149.i = getelementptr inbounds %struct.r600_cs_track, ptr %67, i32 0, i32 5
  %131 = ptrtoint ptr %nsamples149.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %nsamples149.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %132)
  %cmp150.i = icmp ugt i32 %132, 1
  br i1 %cmp150.i, label %if.then152.i, label %sw.bb148.i.sw.bb182.i_crit_edge

sw.bb148.i.sw.bb182.i_crit_edge:                  ; preds = %sw.bb148.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb182.i

if.then152.i:                                     ; preds = %sw.bb148.i
  %arrayidx153.i = getelementptr %struct.r600_cs_track, ptr %67, i32 0, i32 14, i32 %i.1311
  %133 = ptrtoint ptr %arrayidx153.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx153.i, align 4
  %shr154.i = lshr i32 %134, 12
  %log_nsamples.i = getelementptr inbounds %struct.r600_cs_track, ptr %67, i32 0, i32 4
  %135 = ptrtoint ptr %log_nsamples.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %log_nsamples.i, align 8
  %add159.i = add nuw nsw i32 %shr154.i, 1
  %mul157.i = shl i32 %132, 3
  %mul158.i = mul i32 %mul157.i, %136
  %mul160.i = mul i32 %mul158.i, %add159.i
  %conv161.i = zext i32 %mul160.i to i64
  %arrayidx162.i = getelementptr %struct.r600_cs_track, ptr %67, i32 0, i32 11, i32 %i.1311
  %137 = ptrtoint ptr %arrayidx162.i to i32
  call void @__asan_load8_noabort(i32 %137)
  %138 = load i64, ptr %arrayidx162.i, align 8
  %add163.i = add i64 %138, %conv161.i
  %arrayidx164.i = getelementptr %struct.r600_cs_track, ptr %67, i32 0, i32 10, i32 %i.1311
  %139 = ptrtoint ptr %arrayidx164.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %arrayidx164.i, align 4
  %size.i415.i = getelementptr inbounds %struct.radeon_bo, ptr %140, i32 0, i32 4, i32 0, i32 5
  %141 = ptrtoint ptr %size.i415.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %size.i415.i, align 8
  %conv166.i = zext i32 %142 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add163.i, i64 %conv166.i)
  %cmp167.i = icmp ugt i64 %add163.i, %conv166.i
  br i1 %cmp167.i, label %do.end172.i, label %if.then152.i.sw.bb182.i_crit_edge

if.then152.i.sw.bb182.i_crit_edge:                ; preds = %if.then152.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb182.i

do.end172.i:                                      ; preds = %if.then152.i
  call void @__sanitizer_cov_trace_pc() #10
  %143 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %144, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.107, i32 noundef %shr154.i, i32 noundef %mul160.i, i64 noundef %138, i32 noundef %142) #12
  br label %cleanup91

sw.bb182.i:                                       ; preds = %if.then152.i.sw.bb182.i_crit_edge, %sw.bb148.i.sw.bb182.i_crit_edge, %if.end129.i.sw.bb182.i_crit_edge
  %arrayidx184.i = getelementptr %struct.r600_cs_track, ptr %67, i32 0, i32 14, i32 %i.1311
  %145 = ptrtoint ptr %arrayidx184.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx184.i, align 4
  %and186.i = and i32 %146, 4095
  %add188.i = shl nuw nsw i32 %and186.i, 7
  %mul189.i = add nuw nsw i32 %add188.i, 128
  %conv190.i = zext i32 %mul189.i to i64
  %arrayidx191.i = getelementptr %struct.r600_cs_track, ptr %67, i32 0, i32 13, i32 %i.1311
  %147 = ptrtoint ptr %arrayidx191.i to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %arrayidx191.i, align 8
  %add192.i = add i64 %148, %conv190.i
  %arrayidx193.i = getelementptr %struct.r600_cs_track, ptr %67, i32 0, i32 12, i32 %i.1311
  %149 = ptrtoint ptr %arrayidx193.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %arrayidx193.i, align 4
  %size.i417.i = getelementptr inbounds %struct.radeon_bo, ptr %150, i32 0, i32 4, i32 0, i32 5
  %151 = ptrtoint ptr %size.i417.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %size.i417.i, align 8
  %conv195.i = zext i32 %152 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add192.i, i64 %conv195.i)
  %cmp196.i = icmp ugt i64 %add192.i, %conv195.i
  br i1 %cmp196.i, label %do.end201.i, label %sw.bb182.i.for.inc65_crit_edge

sw.bb182.i.for.inc65_crit_edge:                   ; preds = %sw.bb182.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc65

do.end201.i:                                      ; preds = %sw.bb182.i
  call void @__sanitizer_cov_trace_pc() #10
  %153 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %154, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.107, i32 noundef %and186.i, i32 noundef %mul189.i, i64 noundef %148, i32 noundef %152) #12
  br label %cleanup91

do.end215.i:                                      ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #10
  %155 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %156, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.107) #12
  br label %cleanup91

for.inc65:                                        ; preds = %sw.bb182.i.for.inc65_crit_edge, %if.end129.i.for.inc65_crit_edge, %land.lhs.true42.for.inc65_crit_edge, %for.body37.for.inc65_crit_edge
  %inc66 = add nuw nsw i32 %i.1311, 1
  %exitcond.not = icmp eq i32 %inc66, 8
  br i1 %exitcond.not, label %for.end67, label %for.inc65.for.body37_crit_edge

for.inc65.for.body37_crit_edge:                   ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body37

for.end67:                                        ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #10
  %157 = ptrtoint ptr %cb_dirty to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 0, ptr %cb_dirty, align 1
  br label %if.end69

if.end69:                                         ; preds = %for.end67, %if.end28.if.end69_crit_edge
  %db_dirty = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 38
  %158 = ptrtoint ptr %db_dirty to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %db_dirty, align 2, !range !410
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool70.not = icmp eq i8 %159, 0
  br i1 %tobool70.not, label %if.end69.cleanup91_crit_edge, label %land.lhs.true72

if.end69.cleanup91_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup91

land.lhs.true72:                                  ; preds = %if.end69
  %db_depth_info = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 29
  %160 = ptrtoint ptr %db_depth_info to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %db_depth_info, align 4
  %and74 = and i32 %161, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %cmp75.not = icmp eq i32 %and74, 0
  br i1 %cmp75.not, label %land.lhs.true72.cleanup91_crit_edge, label %land.lhs.true77

land.lhs.true72.cleanup91_crit_edge:              ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup91

land.lhs.true77:                                  ; preds = %land.lhs.true72
  %db_depth_control = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 28
  %162 = ptrtoint ptr %db_depth_control to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %db_depth_control, align 8
  %164 = and i32 %163, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %land.lhs.true77.cleanup91_crit_edge, label %if.then85

land.lhs.true77.cleanup91_crit_edge:              ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup91

if.then85:                                        ; preds = %land.lhs.true77
  %166 = ptrtoint ptr %track1 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %track1, align 8
  %ptr.i146 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 16, i32 3
  %168 = ptrtoint ptr %ptr.i146 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %ptr.i146, align 8
  %db_bo.i = getelementptr inbounds %struct.r600_cs_track, ptr %167, i32 0, i32 34
  %170 = ptrtoint ptr %db_bo.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %db_bo.i, align 8
  %cmp.i147 = icmp eq ptr %171, null
  br i1 %cmp.i147, label %do.end.i148, label %if.end.i

do.end.i148:                                      ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #10
  %172 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %173, ptr noundef nonnull @.str.134) #12
  br label %cleanup91

if.end.i:                                         ; preds = %if.then85
  %db_depth_info.i = getelementptr inbounds %struct.r600_cs_track, ptr %167, i32 0, i32 29
  %174 = ptrtoint ptr %db_depth_info.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %db_depth_info.i, align 4
  %and.i149 = and i32 %175, 7
  %switch.tableidx = add nsw i32 %and.i149, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %176 = icmp ult i32 %switch.tableidx, 7
  br i1 %176, label %switch.lookup, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %177 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %178, ptr noundef nonnull @.str.137, i32 noundef %and.i149) #12
  br label %cleanup91

switch.lookup:                                    ; preds = %if.end.i
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.r600_cs_track_check, i32 0, i32 %switch.tableidx
  %179 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %179)
  %switch.load = load i32, ptr %switch.gep, align 4
  %db_depth_size.i = getelementptr inbounds %struct.r600_cs_track, ptr %167, i32 0, i32 32
  %180 = ptrtoint ptr %db_depth_size.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %db_depth_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1025, i32 %181)
  %cmp13.i = icmp ugt i32 %181, -1025
  br i1 %cmp13.i, label %if.then14.i, label %if.else.i

if.then14.i:                                      ; preds = %switch.lookup
  %db_depth_size_idx.i = getelementptr inbounds %struct.r600_cs_track, ptr %167, i32 0, i32 30
  %182 = ptrtoint ptr %db_depth_size_idx.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %db_depth_size_idx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %tobool.not.i151 = icmp eq i32 %183, 0
  br i1 %tobool.not.i151, label %do.end18.i, label %if.end20.i

do.end18.i:                                       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  %184 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %185, ptr noundef nonnull @.str.140) #12
  br label %cleanup91

if.end20.i:                                       ; preds = %if.then14.i
  %size.i.i152 = getelementptr inbounds %struct.radeon_bo, ptr %171, i32 0, i32 4, i32 0, i32 5
  %186 = ptrtoint ptr %size.i.i152 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %size.i.i152, align 8
  %db_offset.i = getelementptr inbounds %struct.r600_cs_track, ptr %167, i32 0, i32 33
  %188 = ptrtoint ptr %db_offset.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %db_offset.i, align 4
  %sub.i153 = sub i32 %187, %189
  %div.i154 = udiv i32 %sub.i153, %switch.load
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %div.i154)
  %tobool23.not.i = icmp ult i32 %div.i154, 64
  br i1 %tobool23.not.i, label %do.end27.i, label %if.end33.i

do.end27.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %190 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %191, ptr noundef nonnull @.str.143, i32 noundef %181, i32 noundef %switch.load, i32 noundef %189, i32 noundef %187) #12
  br label %cleanup91

if.end33.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %192 = shl i32 %div.i154, 4
  %193 = add i32 %192, 1073740800
  %shl.i = and i32 %193, 1073740800
  %and37.i = and i32 %181, 1023
  %or.i155 = or i32 %shl.i, %and37.i
  %arrayidx.i156 = getelementptr i32, ptr %169, i32 %183
  %194 = ptrtoint ptr %arrayidx.i156 to i32
  call void @__asan_store4_noabort(i32 %194)
  store volatile i32 %or.i155, ptr %arrayidx.i156, align 4
  br label %if.end144.i

if.else.i:                                        ; preds = %switch.lookup
  %and41.i = shl i32 %181, 3
  %add.i157 = and i32 %and41.i, 8184
  %mul.i158 = add nuw nsw i32 %add.i157, 8
  %195 = lshr i32 %181, 4
  %add45.i = and i32 %195, 67108800
  %mul46.i = add nuw nsw i32 %add45.i, 64
  %div47.i = udiv i32 %mul46.i, %mul.i158
  %196 = tail call i32 @llvm.umin.i32(i32 %div47.i, i32 8192) #8
  %db_bo_mc.i = getelementptr inbounds %struct.r600_cs_track, ptr %167, i32 0, i32 35
  %197 = ptrtoint ptr %db_bo_mc.i to i32
  call void @__asan_load8_noabort(i32 %197)
  %198 = load i64, ptr %db_bo_mc.i, align 8
  %db_offset51.i = getelementptr inbounds %struct.r600_cs_track, ptr %167, i32 0, i32 33
  %199 = ptrtoint ptr %db_offset51.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %db_offset51.i, align 4
  %conv.i159 = zext i32 %200 to i64
  %add52.i = add i64 %198, %conv.i159
  %shr54.i = lshr i32 %175, 15
  %and55.i = and i32 %shr54.i, 15
  %201 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %167, align 8
  %nsamples.i = getelementptr inbounds %struct.r600_cs_track, ptr %167, i32 0, i32 5
  %203 = ptrtoint ptr %nsamples.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %nsamples.i, align 4
  %205 = zext i32 %and55.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %205, ptr @__sancov_gen_cov_switch_values.249)
  switch i32 %and55.i, label %do.end66.i [
    i32 0, label %if.else.i.do.end78.i_crit_edge
    i32 1, label %if.else.i.do.end78.i_crit_edge913
    i32 2, label %sw.bb73.i
    i32 4, label %if.end72.i
  ]

if.else.i.do.end78.i_crit_edge913:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end78.i

if.else.i.do.end78.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end78.i

do.end66.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %206 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %207, ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.135, i32 noundef %and55.i, i32 noundef %175) #12
  br label %cleanup91

if.end72.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %npipes.i160 = getelementptr inbounds %struct.r600_cs_track, ptr %167, i32 0, i32 2
  %208 = ptrtoint ptr %npipes.i160 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %npipes.i160, align 8
  %nbanks.i161 = getelementptr inbounds %struct.r600_cs_track, ptr %167, i32 0, i32 1
  %210 = ptrtoint ptr %nbanks.i161 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %nbanks.i161, align 4
  %mul3.i.i162 = shl nuw nsw i32 %switch.load, 6
  %mul1.i.i163 = mul i32 %mul3.i.i162, %204
  %mul2.i.i164 = mul i32 %mul1.i.i163, %209
  %mul4.i.i165 = mul i32 %mul2.i.i164, %211
  %mul25.i.i166 = shl i32 %211, 3
  %mul28.i.i167 = mul i32 %211, %202
  %mul31.i.i168 = shl nuw nsw i32 %switch.load, 3
  %mul32.i.i169 = mul i32 %mul31.i.i168, %204
  %div33.i.i170 = udiv i32 %mul28.i.i167, %mul32.i.i169
  %212 = tail call i32 @llvm.umax.i32(i32 %mul25.i.i166, i32 %div33.i.i170) #8
  %mul41.i.i171 = shl i32 %209, 3
  %mul43.i.i172 = mul i32 %204, %switch.load
  %mul44.i.i173 = mul i32 %mul43.i.i172, %mul41.i.i171
  %mul46.i.i174 = mul i32 %mul44.i.i173, %212
  %213 = tail call i32 @llvm.umax.i32(i32 %mul4.i.i165, i32 %mul46.i.i174) #8
  br label %sw.epilog84.i

sw.bb73.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul11.i.i175 = shl nuw nsw i32 %switch.load, 3
  %mul13.i.i176 = mul i32 %mul11.i.i175, %204
  %div14.i.i177 = udiv i32 %202, %mul13.i.i176
  %214 = tail call i32 @llvm.umax.i32(i32 %div14.i.i177, i32 8) #8
  %and74.i = and i32 %196, 16376
  br label %sw.epilog84.i

do.end78.i:                                       ; preds = %if.else.i.do.end78.i_crit_edge, %if.else.i.do.end78.i_crit_edge913
  %215 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %216, ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.135, i32 noundef %and55.i, i32 noundef %175) #12
  br label %cleanup91

sw.epilog84.i:                                    ; preds = %sw.bb73.i, %if.end72.i
  %.sink.i406.in.i = phi i32 [ %213, %if.end72.i ], [ %202, %sw.bb73.i ]
  %pitch_align.0404.i = phi i32 [ %212, %if.end72.i ], [ %214, %sw.bb73.i ]
  %height_align.0402.i = phi i32 [ %mul41.i.i171, %if.end72.i ], [ 8, %sw.bb73.i ]
  %height.0.i178 = phi i32 [ %196, %if.end72.i ], [ %and74.i, %sw.bb73.i ]
  %.sink.i406.i = zext i32 %.sink.i406.in.i to i64
  %sub85.i = add i32 %pitch_align.0404.i, 16383
  %and86.i = and i32 %sub85.i, %mul.i158
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86.i)
  %cmp87.i = icmp eq i32 %and86.i, 0
  br i1 %cmp87.i, label %if.end94.i, label %do.end92.i

do.end92.i:                                       ; preds = %sw.epilog84.i
  call void @__sanitizer_cov_trace_pc() #10
  %217 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %218, ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.135, i32 noundef 605, i32 noundef %mul.i158, i32 noundef %pitch_align.0404.i, i32 noundef %and55.i) #12
  br label %cleanup91

if.end94.i:                                       ; preds = %sw.epilog84.i
  %sub95.i = add i32 %height_align.0402.i, -1
  %and96.i = and i32 %height.0.i178, %sub95.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96.i)
  %cmp97.i = icmp eq i32 %and96.i, 0
  br i1 %cmp97.i, label %if.end104.i, label %do.end102.i

do.end102.i:                                      ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #10
  %219 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %220, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.135, i32 noundef 610, i32 noundef %height.0.i178, i32 noundef %height_align.0402.i, i32 noundef %and55.i) #12
  br label %cleanup91

if.end104.i:                                      ; preds = %if.end94.i
  %sub105.i = add nsw i64 %.sink.i406.i, -1
  %and106.i = and i64 %sub105.i, %add52.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and106.i)
  %cmp107.i = icmp eq i64 %and106.i, 0
  br i1 %cmp107.i, label %if.end114.i, label %do.end112.i

do.end112.i:                                      ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #10
  %221 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %222, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.135, i64 noundef %add52.i, i64 noundef %.sink.i406.i, i32 noundef %and55.i) #12
  br label %cleanup91

if.end114.i:                                      ; preds = %if.end104.i
  %shr116.i = lshr i32 %181, 10
  %and117.i = and i32 %shr116.i, 1048575
  %add118.i = add nuw nsw i32 %and117.i, 1
  %db_depth_view.i = getelementptr inbounds %struct.r600_cs_track, ptr %167, i32 0, i32 31
  %223 = ptrtoint ptr %db_depth_view.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %db_depth_view.i, align 4
  %shr119.i = lshr i32 %224, 13
  %and120.i = and i32 %shr119.i, 2047
  %add121.i = add nuw nsw i32 %and120.i, 1
  %mul122.i = shl nuw nsw i32 %switch.load, 6
  %mul123.i = mul nuw nsw i32 %mul122.i, %add118.i
  %mul124.i = mul i32 %mul123.i, %204
  %mul126.i = mul i32 %mul124.i, %add121.i
  %add128.i = add i32 %mul126.i, %200
  %size.i373.i = getelementptr inbounds %struct.radeon_bo, ptr %171, i32 0, i32 4, i32 0, i32 5
  %225 = ptrtoint ptr %size.i373.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %size.i373.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add128.i, i32 %226)
  %cmp131.i = icmp ugt i32 %add128.i, %226
  br i1 %cmp131.i, label %do.end136.i, label %if.end114.i.if.end144.i_crit_edge

if.end114.i.if.end144.i_crit_edge:                ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end144.i

do.end136.i:                                      ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #10
  %227 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %228, ptr noundef nonnull @.str.160, i32 noundef %and55.i, i32 noundef %181, i32 noundef %add118.i, i32 noundef %add121.i, i32 noundef %switch.load, i32 noundef %add128.i, i32 noundef %226) #12
  br label %cleanup91

if.end144.i:                                      ; preds = %if.end114.i.if.end144.i_crit_edge, %if.end33.i
  %pitch.0.i = phi i32 [ 8192, %if.end33.i ], [ %mul.i158, %if.end114.i.if.end144.i_crit_edge ]
  %height.1.i = phi i32 [ 8192, %if.end33.i ], [ %height.0.i178, %if.end114.i.if.end144.i_crit_edge ]
  %229 = ptrtoint ptr %db_depth_info.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %db_depth_info.i, align 4
  %231 = and i32 %230, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %231)
  %tobool148.not.i = icmp eq i32 %231, 0
  br i1 %tobool148.not.i, label %if.end144.i.r600_cs_track_validate_db.exit_crit_edge, label %if.then149.i

if.end144.i.r600_cs_track_validate_db.exit_crit_edge: ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %r600_cs_track_validate_db.exit

if.then149.i:                                     ; preds = %if.end144.i
  %htile_bo.i = getelementptr inbounds %struct.r600_cs_track, ptr %167, i32 0, i32 40
  %232 = ptrtoint ptr %htile_bo.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %htile_bo.i, align 4
  %cmp150.i179 = icmp eq ptr %233, null
  br i1 %cmp150.i179, label %do.end155.i, label %if.end158.i

do.end155.i:                                      ; preds = %if.then149.i
  call void @__sanitizer_cov_trace_pc() #10
  %234 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %235, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.135, i32 noundef 638, i32 noundef %230) #12
  br label %cleanup91

if.end158.i:                                      ; preds = %if.then149.i
  %236 = ptrtoint ptr %db_depth_size.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %db_depth_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1025, i32 %237)
  %cmp161.i = icmp ugt i32 %237, -1025
  br i1 %cmp161.i, label %do.end166.i, label %if.end169.i

do.end166.i:                                      ; preds = %if.end158.i
  call void @__sanitizer_cov_trace_pc() #10
  %238 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %239, ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.135, i32 noundef 643, i32 noundef %237) #12
  br label %cleanup91

if.end169.i:                                      ; preds = %if.end158.i
  %htile_surface.i = getelementptr inbounds %struct.r600_cs_track, ptr %167, i32 0, i32 42
  %240 = ptrtoint ptr %htile_surface.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %htile_surface.i, align 8
  %242 = and i32 %241, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %242)
  %tobool172.not.i = icmp eq i32 %242, 0
  br i1 %tobool172.not.i, label %if.else183.i, label %if.then173.i

if.then173.i:                                     ; preds = %if.end169.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub174.i = add nsw i32 %pitch.0.i, -1
  %or175.i = or i32 %sub174.i, 127
  %sub177.i = add nsw i32 %height.1.i, -1
  %npipes178.i = getelementptr inbounds %struct.r600_cs_track, ptr %167, i32 0, i32 2
  %243 = ptrtoint ptr %npipes178.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %npipes178.i, align 8
  %mul179.i = shl i32 %244, 3
  br label %if.end220.i

if.else183.i:                                     ; preds = %if.end169.i
  %npipes184.i = getelementptr inbounds %struct.r600_cs_track, ptr %167, i32 0, i32 2
  %245 = ptrtoint ptr %npipes184.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %npipes184.i, align 8
  %247 = zext i32 %246 to i64
  call void @__sanitizer_cov_trace_switch(i64 %247, ptr @__sancov_gen_cov_switch_values.250)
  switch i32 %246, label %do.end216.i [
    i32 8, label %sw.bb185.i
    i32 4, label %sw.bb192.i
    i32 2, label %sw.bb199.i
    i32 1, label %sw.bb206.i
  ]

sw.bb185.i:                                       ; preds = %if.else183.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub186.i = add nsw i32 %pitch.0.i, -1
  %or187.i = or i32 %sub186.i, 511
  br label %if.end220.i

sw.bb192.i:                                       ; preds = %if.else183.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub193.i = add nsw i32 %pitch.0.i, -1
  %or194.i = or i32 %sub193.i, 511
  br label %if.end220.i

sw.bb199.i:                                       ; preds = %if.else183.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub200.i = add nsw i32 %pitch.0.i, -1
  %or201.i = or i32 %sub200.i, 255
  br label %if.end220.i

sw.bb206.i:                                       ; preds = %if.else183.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub207.i = add nsw i32 %pitch.0.i, -1
  %or208.i = or i32 %sub207.i, 255
  br label %if.end220.i

do.end216.i:                                      ; preds = %if.else183.i
  call void @__sanitizer_cov_trace_pc() #10
  %248 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %249, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.135, i32 noundef 682, i32 noundef %246) #12
  br label %cleanup91

if.end220.i:                                      ; preds = %sw.bb206.i, %sw.bb199.i, %sw.bb192.i, %sw.bb185.i, %if.then173.i
  %height.1.sink.i = phi i32 [ %height.1.i, %sw.bb185.i ], [ %height.1.i, %sw.bb192.i ], [ %height.1.i, %sw.bb199.i ], [ %height.1.i, %sw.bb206.i ], [ %mul179.i, %if.then173.i ]
  %.sink.i = phi i32 [ 511, %sw.bb185.i ], [ 255, %sw.bb192.i ], [ 255, %sw.bb199.i ], [ 127, %sw.bb206.i ], [ %sub177.i, %if.then173.i ]
  %nbx.0.in.i = phi i32 [ %or187.i, %sw.bb185.i ], [ %or194.i, %sw.bb192.i ], [ %or201.i, %sw.bb199.i ], [ %or208.i, %sw.bb206.i ], [ %or175.i, %if.then173.i ]
  %sub189.i = add i32 %height.1.sink.i, -1
  %or190.i = or i32 %sub189.i, %.sink.i
  %nby.0.i = add i32 %or190.i, 1
  %nbx.0.i = add i32 %nbx.0.in.i, 1
  %shr222.i = lshr i32 %nby.0.i, 3
  %npipes223.i = getelementptr inbounds %struct.r600_cs_track, ptr %167, i32 0, i32 2
  %250 = ptrtoint ptr %npipes223.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %npipes223.i, align 8
  %mul224.i = shl i32 %251, 11
  %mul226.i = lshr exact i32 %nbx.0.i, 1
  %mul227.i = mul i32 %mul226.i, %shr222.i
  %sub228.i = add i32 %mul224.i, -1
  %add229.i = add i32 %sub228.i, %mul227.i
  %252 = urem i32 %add229.i, %mul224.i
  %mul231.i = sub i32 %add229.i, %252
  %htile_offset.i = getelementptr inbounds %struct.r600_cs_track, ptr %167, i32 0, i32 41
  %253 = ptrtoint ptr %htile_offset.i to i32
  call void @__asan_load8_noabort(i32 %253)
  %254 = load i64, ptr %htile_offset.i, align 8
  %255 = trunc i64 %254 to i32
  %conv234.i = add i32 %mul231.i, %255
  %size.i375.i = getelementptr inbounds %struct.radeon_bo, ptr %233, i32 0, i32 4, i32 0, i32 5
  %256 = ptrtoint ptr %size.i375.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %size.i375.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %conv234.i, i32 %257)
  %cmp237.i = icmp ugt i32 %conv234.i, %257
  br i1 %cmp237.i, label %do.end242.i, label %if.end220.i.r600_cs_track_validate_db.exit_crit_edge

if.end220.i.r600_cs_track_validate_db.exit_crit_edge: ; preds = %if.end220.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %r600_cs_track_validate_db.exit

do.end242.i:                                      ; preds = %if.end220.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr221.i = lshr exact i32 %nbx.0.i, 3
  %258 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %259, ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.135, i32 noundef 696, i32 noundef %257, i32 noundef %conv234.i, i32 noundef %shr221.i, i32 noundef %shr222.i) #12
  br label %cleanup91

r600_cs_track_validate_db.exit:                   ; preds = %if.end220.i.r600_cs_track_validate_db.exit_crit_edge, %if.end144.i.r600_cs_track_validate_db.exit_crit_edge
  %db_dirty.i = getelementptr inbounds %struct.r600_cs_track, ptr %167, i32 0, i32 38
  %260 = ptrtoint ptr %db_dirty.i to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 0, ptr %db_dirty.i, align 2
  br label %cleanup91

cleanup91:                                        ; preds = %r600_cs_track_validate_db.exit, %do.end242.i, %do.end216.i, %do.end166.i, %do.end155.i, %do.end136.i, %do.end112.i, %do.end102.i, %do.end92.i, %do.end78.i, %do.end66.i, %do.end27.i, %do.end18.i, %do.end7.i, %do.end.i148, %land.lhs.true77.cleanup91_crit_edge, %land.lhs.true72.cleanup91_crit_edge, %if.end69.cleanup91_crit_edge, %do.end215.i, %do.end201.i, %do.end172.i, %r600_fmt_get_blocksize.exit414.i, %do.end82.i, %do.end73.i, %do.end64.i, %do.end36.i, %do.end.i, %do.end53, %if.end25.cleanup91_crit_edge, %do.end, %if.then17, %entry.cleanup91_crit_edge
  %retval.6 = phi i32 [ -22, %do.end ], [ 0, %entry.cleanup91_crit_edge ], [ -22, %if.then17 ], [ 0, %if.end25.cleanup91_crit_edge ], [ -22, %do.end53 ], [ 0, %r600_cs_track_validate_db.exit ], [ 0, %land.lhs.true77.cleanup91_crit_edge ], [ 0, %land.lhs.true72.cleanup91_crit_edge ], [ 0, %if.end69.cleanup91_crit_edge ], [ -22, %do.end36.i ], [ -22, %do.end215.i ], [ -22, %r600_fmt_get_blocksize.exit414.i ], [ -22, %do.end82.i ], [ -22, %do.end73.i ], [ -22, %do.end64.i ], [ -22, %do.end.i ], [ -22, %do.end172.i ], [ -22, %do.end201.i ], [ -22, %do.end.i148 ], [ -22, %do.end7.i ], [ -22, %do.end27.i ], [ -22, %do.end18.i ], [ -22, %do.end66.i ], [ -22, %do.end78.i ], [ -22, %do.end136.i ], [ -22, %do.end112.i ], [ -22, %do.end102.i ], [ -22, %do.end92.i ], [ -22, %do.end242.i ], [ -22, %do.end216.i ], [ -22, %do.end166.i ], [ -22, %do.end155.i ]
  ret i32 %retval.6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @r600_cs_check_reg(ptr noundef %p, i32 noundef %reg, i32 noundef %idx) unnamed_addr #2 align 64 {
entry:
  %reloc = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %track1 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 18
  %0 = ptrtoint ptr %track1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %track1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reloc) #8
  %2 = ptrtoint ptr %reloc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %reloc, align 4, !annotation !412
  call void @__sanitizer_cov_trace_const_cmp4(i32 249855, i32 %reg)
  %cmp = icmp ugt i32 %reg, 249855
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.174, i32 noundef %reg, i32 noundef %idx) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr = lshr i32 %reg, 7
  %shr2 = lshr i32 %reg, 2
  %and = and i32 %shr2, 31
  %shl = shl nuw i32 1, %and
  %arrayidx = getelementptr [1952 x i32], ptr @r600_reg_safe_bm, i32 0, i32 %shr
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %and3 = and i32 %6, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %ptr = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 16, i32 3
  %7 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ptr, align 8
  %9 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.251)
  switch i32 %reg, label %do.end424 [
    i32 166056, label %if.end5.cleanup_crit_edge
    i32 35908, label %if.end5.cleanup_crit_edge947
    i32 166064, label %if.end5.cleanup_crit_edge948
    i32 35924, label %if.end5.cleanup_crit_edge949
    i32 166080, label %if.end5.cleanup_crit_edge950
    i32 35956, label %if.end5.cleanup_crit_edge951
    i32 166068, label %if.end5.cleanup_crit_edge952
    i32 35932, label %if.end5.cleanup_crit_edge953
    i32 166060, label %if.end5.cleanup_crit_edge954
    i32 35916, label %if.end5.cleanup_crit_edge955
    i32 166076, label %if.end5.cleanup_crit_edge956
    i32 35948, label %if.end5.cleanup_crit_edge957
    i32 166084, label %if.end5.cleanup_crit_edge958
    i32 35964, label %if.end5.cleanup_crit_edge959
    i32 166072, label %if.end5.cleanup_crit_edge960
    i32 35940, label %if.end5.cleanup_crit_edge961
    i32 166088, label %if.end5.cleanup_crit_edge962
    i32 35904, label %if.end5.sw.bb7_crit_edge
    i32 35912, label %if.end5.sw.bb7_crit_edge963
    i32 35920, label %if.end5.sw.bb7_crit_edge964
    i32 35928, label %if.end5.sw.bb7_crit_edge965
    i32 35944, label %if.end5.sw.bb7_crit_edge966
    i32 35936, label %if.end5.sw.bb7_crit_edge967
    i32 35840, label %sw.bb18
    i32 165888, label %sw.bb20
    i32 163856, label %sw.bb22
    i32 163844, label %sw.bb57
    i32 163840, label %sw.bb60
    i32 166576, label %sw.bb63
    i32 166688, label %sw.bb65
    i32 166616, label %if.end5.sw.bb68_crit_edge
    i32 166632, label %if.end5.sw.bb68_crit_edge968
    i32 166648, label %if.end5.sw.bb68_crit_edge969
    i32 166664, label %if.end5.sw.bb68_crit_edge970
    i32 166608, label %if.end5.sw.bb90_crit_edge
    i32 166624, label %if.end5.sw.bb90_crit_edge971
    i32 166640, label %if.end5.sw.bb90_crit_edge972
    i32 166656, label %if.end5.sw.bb90_crit_edge973
    i32 34296, label %sw.bb96
    i32 164408, label %sw.bb111
    i32 164412, label %sw.bb113
    i32 166916, label %sw.bb115
    i32 165896, label %sw.bb121
    i32 164000, label %if.end5.sw.bb128_crit_edge
    i32 164004, label %if.end5.sw.bb128_crit_edge974
    i32 164008, label %if.end5.sw.bb128_crit_edge975
    i32 164012, label %if.end5.sw.bb128_crit_edge976
    i32 164016, label %if.end5.sw.bb128_crit_edge977
    i32 164020, label %if.end5.sw.bb128_crit_edge978
    i32 164024, label %if.end5.sw.bb128_crit_edge979
    i32 164028, label %if.end5.sw.bb128_crit_edge980
    i32 163968, label %if.end5.sw.bb177_crit_edge
    i32 163972, label %if.end5.sw.bb177_crit_edge981
    i32 163976, label %if.end5.sw.bb177_crit_edge982
    i32 163980, label %if.end5.sw.bb177_crit_edge983
    i32 163984, label %if.end5.sw.bb177_crit_edge984
    i32 163988, label %if.end5.sw.bb177_crit_edge985
    i32 163992, label %if.end5.sw.bb177_crit_edge986
    i32 163996, label %if.end5.sw.bb177_crit_edge987
    i32 163936, label %if.end5.sw.bb183_crit_edge
    i32 163940, label %if.end5.sw.bb183_crit_edge988
    i32 163944, label %if.end5.sw.bb183_crit_edge989
    i32 163948, label %if.end5.sw.bb183_crit_edge990
    i32 163952, label %if.end5.sw.bb183_crit_edge991
    i32 163956, label %if.end5.sw.bb183_crit_edge992
    i32 163960, label %if.end5.sw.bb183_crit_edge993
    i32 163964, label %if.end5.sw.bb183_crit_edge994
    i32 164064, label %if.end5.sw.bb190_crit_edge
    i32 164068, label %if.end5.sw.bb190_crit_edge995
    i32 164072, label %if.end5.sw.bb190_crit_edge996
    i32 164076, label %if.end5.sw.bb190_crit_edge997
    i32 164080, label %if.end5.sw.bb190_crit_edge998
    i32 164084, label %if.end5.sw.bb190_crit_edge999
    i32 164088, label %if.end5.sw.bb190_crit_edge1000
    i32 164092, label %if.end5.sw.bb190_crit_edge1001
    i32 164032, label %if.end5.sw.bb242_crit_edge
    i32 164036, label %if.end5.sw.bb242_crit_edge1002
    i32 164040, label %if.end5.sw.bb242_crit_edge1003
    i32 164044, label %if.end5.sw.bb242_crit_edge1004
    i32 164048, label %if.end5.sw.bb242_crit_edge1005
    i32 164052, label %if.end5.sw.bb242_crit_edge1006
    i32 164056, label %if.end5.sw.bb242_crit_edge1007
    i32 164060, label %if.end5.sw.bb242_crit_edge1008
    i32 164096, label %if.end5.sw.bb297_crit_edge
    i32 164100, label %if.end5.sw.bb297_crit_edge1009
    i32 164104, label %if.end5.sw.bb297_crit_edge1010
    i32 164108, label %if.end5.sw.bb297_crit_edge1011
    i32 164112, label %if.end5.sw.bb297_crit_edge1012
    i32 164116, label %if.end5.sw.bb297_crit_edge1013
    i32 164120, label %if.end5.sw.bb297_crit_edge1014
    i32 164124, label %if.end5.sw.bb297_crit_edge1015
    i32 163904, label %if.end5.sw.bb310_crit_edge
    i32 163908, label %if.end5.sw.bb310_crit_edge1016
    i32 163912, label %if.end5.sw.bb310_crit_edge1017
    i32 163916, label %if.end5.sw.bb310_crit_edge1018
    i32 163920, label %if.end5.sw.bb310_crit_edge1019
    i32 163924, label %if.end5.sw.bb310_crit_edge1020
    i32 163928, label %if.end5.sw.bb310_crit_edge1021
    i32 163932, label %if.end5.sw.bb310_crit_edge1022
    i32 163852, label %sw.bb341
    i32 163860, label %sw.bb361
    i32 167204, label %sw.bb381
    i32 166036, label %if.end5.sw.bb386_crit_edge
    i32 166016, label %if.end5.sw.bb386_crit_edge1023
    i32 165976, label %if.end5.sw.bb386_crit_edge1024
    i32 165996, label %if.end5.sw.bb386_crit_edge1025
    i32 165952, label %if.end5.sw.bb386_crit_edge1026
    i32 166336, label %if.end5.sw.bb386_crit_edge1027
    i32 166340, label %if.end5.sw.bb386_crit_edge1028
    i32 166344, label %if.end5.sw.bb386_crit_edge1029
    i32 166348, label %if.end5.sw.bb386_crit_edge1030
    i32 166352, label %if.end5.sw.bb386_crit_edge1031
    i32 166356, label %if.end5.sw.bb386_crit_edge1032
    i32 166360, label %if.end5.sw.bb386_crit_edge1033
    i32 166364, label %if.end5.sw.bb386_crit_edge1034
    i32 166368, label %if.end5.sw.bb386_crit_edge1035
    i32 166372, label %if.end5.sw.bb386_crit_edge1036
    i32 166376, label %if.end5.sw.bb386_crit_edge1037
    i32 166380, label %if.end5.sw.bb386_crit_edge1038
    i32 166384, label %if.end5.sw.bb386_crit_edge1039
    i32 166388, label %if.end5.sw.bb386_crit_edge1040
    i32 166392, label %if.end5.sw.bb386_crit_edge1041
    i32 166396, label %if.end5.sw.bb386_crit_edge1042
    i32 166208, label %if.end5.sw.bb386_crit_edge1043
    i32 166212, label %if.end5.sw.bb386_crit_edge1044
    i32 166216, label %if.end5.sw.bb386_crit_edge1045
    i32 166220, label %if.end5.sw.bb386_crit_edge1046
    i32 166224, label %if.end5.sw.bb386_crit_edge1047
    i32 166228, label %if.end5.sw.bb386_crit_edge1048
    i32 166232, label %if.end5.sw.bb386_crit_edge1049
    i32 166236, label %if.end5.sw.bb386_crit_edge1050
    i32 166240, label %if.end5.sw.bb386_crit_edge1051
    i32 166244, label %if.end5.sw.bb386_crit_edge1052
    i32 166248, label %if.end5.sw.bb386_crit_edge1053
    i32 166252, label %if.end5.sw.bb386_crit_edge1054
    i32 166256, label %if.end5.sw.bb386_crit_edge1055
    i32 166260, label %if.end5.sw.bb386_crit_edge1056
    i32 166264, label %if.end5.sw.bb386_crit_edge1057
    i32 166268, label %if.end5.sw.bb386_crit_edge1058
    i32 166272, label %if.end5.sw.bb386_crit_edge1059
    i32 166276, label %if.end5.sw.bb386_crit_edge1060
    i32 166280, label %if.end5.sw.bb386_crit_edge1061
    i32 166284, label %if.end5.sw.bb386_crit_edge1062
    i32 166288, label %if.end5.sw.bb386_crit_edge1063
    i32 166292, label %if.end5.sw.bb386_crit_edge1064
    i32 166296, label %if.end5.sw.bb386_crit_edge1065
    i32 166300, label %if.end5.sw.bb386_crit_edge1066
    i32 166304, label %if.end5.sw.bb386_crit_edge1067
    i32 166308, label %if.end5.sw.bb386_crit_edge1068
    i32 166312, label %if.end5.sw.bb386_crit_edge1069
    i32 166316, label %if.end5.sw.bb386_crit_edge1070
    i32 166320, label %if.end5.sw.bb386_crit_edge1071
    i32 166324, label %if.end5.sw.bb386_crit_edge1072
    i32 166328, label %if.end5.sw.bb386_crit_edge1073
    i32 166332, label %if.end5.sw.bb386_crit_edge1074
    i32 36880, label %sw.bb401
    i32 164688, label %sw.bb416
  ]

if.end5.sw.bb386_crit_edge1074:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge1073:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge1072:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge1071:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge1070:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge1069:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge1068:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge1067:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge1066:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge1065:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge1064:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge1063:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge1062:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge1061:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge1060:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge1059:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge1058:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge1057:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge1056:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge1055:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge1054:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge1053:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge1052:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge1051:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge1050:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge1049:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge1048:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge1047:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge1046:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge1045:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge1044:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge1043:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge1042:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge1041:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge1040:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge1039:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge1038:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge1037:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge1036:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge1035:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge1034:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge1033:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge1032:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge1031:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge1030:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge1029:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge1028:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge1027:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge1026:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge1025:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge1024:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge1023:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb386_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb386

if.end5.sw.bb310_crit_edge1022:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb310

if.end5.sw.bb310_crit_edge1021:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb310

if.end5.sw.bb310_crit_edge1020:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb310

if.end5.sw.bb310_crit_edge1019:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb310

if.end5.sw.bb310_crit_edge1018:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb310

if.end5.sw.bb310_crit_edge1017:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb310

if.end5.sw.bb310_crit_edge1016:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb310

if.end5.sw.bb310_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb310

if.end5.sw.bb297_crit_edge1015:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb297

if.end5.sw.bb297_crit_edge1014:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb297

if.end5.sw.bb297_crit_edge1013:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb297

if.end5.sw.bb297_crit_edge1012:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb297

if.end5.sw.bb297_crit_edge1011:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb297

if.end5.sw.bb297_crit_edge1010:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb297

if.end5.sw.bb297_crit_edge1009:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb297

if.end5.sw.bb297_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb297

if.end5.sw.bb242_crit_edge1008:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb242

if.end5.sw.bb242_crit_edge1007:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb242

if.end5.sw.bb242_crit_edge1006:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb242

if.end5.sw.bb242_crit_edge1005:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb242

if.end5.sw.bb242_crit_edge1004:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb242

if.end5.sw.bb242_crit_edge1003:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb242

if.end5.sw.bb242_crit_edge1002:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb242

if.end5.sw.bb242_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb242

if.end5.sw.bb190_crit_edge1001:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb190

if.end5.sw.bb190_crit_edge1000:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb190

if.end5.sw.bb190_crit_edge999:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb190

if.end5.sw.bb190_crit_edge998:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb190

if.end5.sw.bb190_crit_edge997:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb190

if.end5.sw.bb190_crit_edge996:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb190

if.end5.sw.bb190_crit_edge995:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb190

if.end5.sw.bb190_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb190

if.end5.sw.bb183_crit_edge994:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb183

if.end5.sw.bb183_crit_edge993:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb183

if.end5.sw.bb183_crit_edge992:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb183

if.end5.sw.bb183_crit_edge991:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb183

if.end5.sw.bb183_crit_edge990:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb183

if.end5.sw.bb183_crit_edge989:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb183

if.end5.sw.bb183_crit_edge988:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb183

if.end5.sw.bb183_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb183

if.end5.sw.bb177_crit_edge987:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb177

if.end5.sw.bb177_crit_edge986:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb177

if.end5.sw.bb177_crit_edge985:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb177

if.end5.sw.bb177_crit_edge984:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb177

if.end5.sw.bb177_crit_edge983:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb177

if.end5.sw.bb177_crit_edge982:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb177

if.end5.sw.bb177_crit_edge981:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb177

if.end5.sw.bb177_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb177

if.end5.sw.bb128_crit_edge980:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb128

if.end5.sw.bb128_crit_edge979:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb128

if.end5.sw.bb128_crit_edge978:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb128

if.end5.sw.bb128_crit_edge977:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb128

if.end5.sw.bb128_crit_edge976:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb128

if.end5.sw.bb128_crit_edge975:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb128

if.end5.sw.bb128_crit_edge974:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb128

if.end5.sw.bb128_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb128

if.end5.sw.bb90_crit_edge973:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb90

if.end5.sw.bb90_crit_edge972:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb90

if.end5.sw.bb90_crit_edge971:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb90

if.end5.sw.bb90_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb90

if.end5.sw.bb68_crit_edge970:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb68

if.end5.sw.bb68_crit_edge969:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb68

if.end5.sw.bb68_crit_edge968:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb68

if.end5.sw.bb68_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb68

if.end5.sw.bb7_crit_edge967:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb7

if.end5.sw.bb7_crit_edge966:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb7

if.end5.sw.bb7_crit_edge965:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb7

if.end5.sw.bb7_crit_edge964:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb7

if.end5.sw.bb7_crit_edge963:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb7

if.end5.sw.bb7_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb7

if.end5.cleanup_crit_edge962:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5.cleanup_crit_edge961:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5.cleanup_crit_edge960:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5.cleanup_crit_edge959:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5.cleanup_crit_edge958:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5.cleanup_crit_edge957:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5.cleanup_crit_edge956:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5.cleanup_crit_edge955:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5.cleanup_crit_edge954:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5.cleanup_crit_edge953:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5.cleanup_crit_edge952:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5.cleanup_crit_edge951:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5.cleanup_crit_edge950:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5.cleanup_crit_edge949:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5.cleanup_crit_edge948:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5.cleanup_crit_edge947:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb7:                                           ; preds = %if.end5.sw.bb7_crit_edge, %if.end5.sw.bb7_crit_edge963, %if.end5.sw.bb7_crit_edge964, %if.end5.sw.bb7_crit_edge965, %if.end5.sw.bb7_crit_edge966, %if.end5.sw.bb7_crit_edge967
  %call = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.end14, label %do.end12

do.end12:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.177, i32 noundef %reg) #12
  br label %cleanup

if.end14:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %reloc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reloc, align 4
  %gpu_offset = getelementptr inbounds %struct.radeon_bo_list, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %gpu_offset to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %gpu_offset, align 8
  %shr15 = lshr i64 %15, 8
  %conv = trunc i64 %shr15 to i32
  %arrayidx17 = getelementptr i32, ptr %8, i32 %idx
  %16 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx17, align 4
  %add = add i32 %17, %conv
  store i32 %add, ptr %arrayidx17, align 4
  br label %cleanup

sw.bb18:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %chunk_ib.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %18 = ptrtoint ptr %chunk_ib.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chunk_ib.i, align 4
  %kdata.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %kdata.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %kdata.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  %spec.select = select i1 %tobool.not.i, ptr %8, ptr %21
  %retval.0.in.i = getelementptr i32, ptr %spec.select, i32 %idx
  %22 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %retval.0.i = load i32, ptr %retval.0.in.i, align 4
  %sq_config = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %sq_config to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %retval.0.i, ptr %sq_config, align 4
  br label %cleanup

sw.bb20:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %chunk_ib.i725 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %24 = ptrtoint ptr %chunk_ib.i725 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chunk_ib.i725, align 4
  %kdata.i726 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %kdata.i726 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %kdata.i726, align 4
  %tobool.not.i727 = icmp eq ptr %27, null
  %spec.select932 = select i1 %tobool.not.i727, ptr %8, ptr %27
  %retval.0.in.i731 = getelementptr i32, ptr %spec.select932, i32 %idx
  %28 = ptrtoint ptr %retval.0.in.i731 to i32
  call void @__asan_load4_noabort(i32 %28)
  %retval.0.i732 = load i32, ptr %retval.0.in.i731, align 4
  %db_depth_control = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 28
  %29 = ptrtoint ptr %db_depth_control to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %retval.0.i732, ptr %db_depth_control, align 8
  %db_dirty = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 38
  %30 = ptrtoint ptr %db_dirty to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %db_dirty, align 2
  br label %cleanup

sw.bb22:                                          ; preds = %if.end5
  %cs_flags = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 21
  %31 = ptrtoint ptr %cs_flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cs_flags, align 4
  %and23 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %land.lhs.true, label %sw.bb22.if.else52_crit_edge

sw.bb22.if.else52_crit_edge:                      ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else52

land.lhs.true:                                    ; preds = %sw.bb22
  %call25 = tail call zeroext i1 @radeon_cs_packet_next_is_pkt3_nop(ptr noundef %p) #8
  br i1 %call25, label %if.then27, label %land.lhs.true.if.else52_crit_edge

land.lhs.true.if.else52_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else52

if.then27:                                        ; preds = %land.lhs.true
  %call28 = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end35, label %do.end33

do.end33:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %34, ptr noundef nonnull @.str.177, i32 noundef 163856) #12
  br label %cleanup

if.end35:                                         ; preds = %if.then27
  %chunk_ib.i734 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %35 = ptrtoint ptr %chunk_ib.i734 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %chunk_ib.i734, align 4
  %kdata.i735 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %kdata.i735 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %kdata.i735, align 4
  %tobool.not.i736 = icmp eq ptr %38, null
  br i1 %tobool.not.i736, label %if.end.i738, label %if.end35.radeon_get_ib_value.exit742_crit_edge

if.end35.radeon_get_ib_value.exit742_crit_edge:   ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_get_ib_value.exit742

if.end.i738:                                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ptr, align 8
  br label %radeon_get_ib_value.exit742

radeon_get_ib_value.exit742:                      ; preds = %if.end.i738, %if.end35.radeon_get_ib_value.exit742_crit_edge
  %.pn.i739 = phi ptr [ %40, %if.end.i738 ], [ %38, %if.end35.radeon_get_ib_value.exit742_crit_edge ]
  %retval.0.in.i740 = getelementptr i32, ptr %.pn.i739, i32 %idx
  %41 = ptrtoint ptr %retval.0.in.i740 to i32
  call void @__asan_load4_noabort(i32 %41)
  %retval.0.i741 = load i32, ptr %retval.0.in.i740, align 4
  %db_depth_info = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 29
  %42 = ptrtoint ptr %db_depth_info to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %retval.0.i741, ptr %db_depth_info, align 4
  %arrayidx37 = getelementptr i32, ptr %8, i32 %idx
  %43 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx37, align 4
  %and38 = and i32 %44, -491521
  store i32 %and38, ptr %arrayidx37, align 4
  %45 = load i32, ptr %db_depth_info, align 4
  %and40 = and i32 %45, -491521
  store i32 %and40, ptr %db_depth_info, align 4
  %46 = ptrtoint ptr %reloc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reloc, align 4
  %tiling_flags = getelementptr inbounds %struct.radeon_bo_list, ptr %47, i32 0, i32 5
  %48 = ptrtoint ptr %tiling_flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tiling_flags, align 8
  %and41 = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  %50 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx37, align 4
  br i1 %tobool42.not, label %if.else, label %if.then43

if.then43:                                        ; preds = %radeon_get_ib_value.exit742
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %51, 131072
  %52 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or, ptr %arrayidx37, align 4
  %53 = ptrtoint ptr %db_depth_info to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %db_depth_info, align 4
  %or46 = or i32 %54, 131072
  store i32 %or46, ptr %db_depth_info, align 4
  br label %if.end55

if.else:                                          ; preds = %radeon_get_ib_value.exit742
  call void @__sanitizer_cov_trace_pc() #10
  %or48 = or i32 %51, 65536
  %55 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %or48, ptr %arrayidx37, align 4
  %56 = ptrtoint ptr %db_depth_info to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %db_depth_info, align 4
  %or50 = or i32 %57, 65536
  store i32 %or50, ptr %db_depth_info, align 4
  br label %if.end55

if.else52:                                        ; preds = %land.lhs.true.if.else52_crit_edge, %sw.bb22.if.else52_crit_edge
  %chunk_ib.i743 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %58 = ptrtoint ptr %chunk_ib.i743 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %chunk_ib.i743, align 4
  %kdata.i744 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %kdata.i744 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %kdata.i744, align 4
  %tobool.not.i745 = icmp eq ptr %61, null
  br i1 %tobool.not.i745, label %if.end.i747, label %if.else52.radeon_get_ib_value.exit751_crit_edge

if.else52.radeon_get_ib_value.exit751_crit_edge:  ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_get_ib_value.exit751

if.end.i747:                                      ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ptr, align 8
  br label %radeon_get_ib_value.exit751

radeon_get_ib_value.exit751:                      ; preds = %if.end.i747, %if.else52.radeon_get_ib_value.exit751_crit_edge
  %.pn.i748 = phi ptr [ %63, %if.end.i747 ], [ %61, %if.else52.radeon_get_ib_value.exit751_crit_edge ]
  %retval.0.in.i749 = getelementptr i32, ptr %.pn.i748, i32 %idx
  %64 = ptrtoint ptr %retval.0.in.i749 to i32
  call void @__asan_load4_noabort(i32 %64)
  %retval.0.i750 = load i32, ptr %retval.0.in.i749, align 4
  %db_depth_info54 = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 29
  %65 = ptrtoint ptr %db_depth_info54 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %retval.0.i750, ptr %db_depth_info54, align 4
  br label %if.end55

if.end55:                                         ; preds = %radeon_get_ib_value.exit751, %if.else, %if.then43
  %db_dirty56 = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 38
  %66 = ptrtoint ptr %db_dirty56 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %db_dirty56, align 2
  br label %cleanup

sw.bb57:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %chunk_ib.i752 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %67 = ptrtoint ptr %chunk_ib.i752 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %chunk_ib.i752, align 4
  %kdata.i753 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %kdata.i753 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %kdata.i753, align 4
  %tobool.not.i754 = icmp eq ptr %70, null
  %spec.select933 = select i1 %tobool.not.i754, ptr %8, ptr %70
  %retval.0.in.i758 = getelementptr i32, ptr %spec.select933, i32 %idx
  %71 = ptrtoint ptr %retval.0.in.i758 to i32
  call void @__asan_load4_noabort(i32 %71)
  %retval.0.i759 = load i32, ptr %retval.0.in.i758, align 4
  %db_depth_view = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 31
  %72 = ptrtoint ptr %db_depth_view to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %retval.0.i759, ptr %db_depth_view, align 4
  %db_dirty59 = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 38
  %73 = ptrtoint ptr %db_dirty59 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %db_dirty59, align 2
  br label %cleanup

sw.bb60:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %chunk_ib.i761 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %74 = ptrtoint ptr %chunk_ib.i761 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %chunk_ib.i761, align 4
  %kdata.i762 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %kdata.i762 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %kdata.i762, align 4
  %tobool.not.i763 = icmp eq ptr %77, null
  %spec.select934 = select i1 %tobool.not.i763, ptr %8, ptr %77
  %retval.0.in.i767 = getelementptr i32, ptr %spec.select934, i32 %idx
  %78 = ptrtoint ptr %retval.0.in.i767 to i32
  call void @__asan_load4_noabort(i32 %78)
  %retval.0.i768 = load i32, ptr %retval.0.in.i767, align 4
  %db_depth_size = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 32
  %79 = ptrtoint ptr %db_depth_size to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %retval.0.i768, ptr %db_depth_size, align 8
  %db_depth_size_idx = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 30
  %80 = ptrtoint ptr %db_depth_size_idx to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %idx, ptr %db_depth_size_idx, align 8
  %db_dirty62 = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 38
  %81 = ptrtoint ptr %db_dirty62 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %db_dirty62, align 2
  br label %cleanup

sw.bb63:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %chunk_ib.i770 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %82 = ptrtoint ptr %chunk_ib.i770 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %chunk_ib.i770, align 4
  %kdata.i771 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %kdata.i771 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %kdata.i771, align 4
  %tobool.not.i772 = icmp eq ptr %85, null
  %spec.select935 = select i1 %tobool.not.i772, ptr %8, ptr %85
  %retval.0.in.i776 = getelementptr i32, ptr %spec.select935, i32 %idx
  %86 = ptrtoint ptr %retval.0.in.i776 to i32
  call void @__asan_load4_noabort(i32 %86)
  %retval.0.i777 = load i32, ptr %retval.0.in.i776, align 4
  %vgt_strmout_en = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 22
  %87 = ptrtoint ptr %vgt_strmout_en to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %retval.0.i777, ptr %vgt_strmout_en, align 4
  %streamout_dirty = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 39
  %88 = ptrtoint ptr %streamout_dirty to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 1, ptr %streamout_dirty, align 1
  br label %cleanup

sw.bb65:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %chunk_ib.i779 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %89 = ptrtoint ptr %chunk_ib.i779 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %chunk_ib.i779, align 4
  %kdata.i780 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %kdata.i780 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %kdata.i780, align 4
  %tobool.not.i781 = icmp eq ptr %92, null
  %spec.select936 = select i1 %tobool.not.i781, ptr %8, ptr %92
  %retval.0.in.i785 = getelementptr i32, ptr %spec.select936, i32 %idx
  %93 = ptrtoint ptr %retval.0.in.i785 to i32
  call void @__asan_load4_noabort(i32 %93)
  %retval.0.i786 = load i32, ptr %retval.0.in.i785, align 4
  %vgt_strmout_buffer_en = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 23
  %94 = ptrtoint ptr %vgt_strmout_buffer_en to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %retval.0.i786, ptr %vgt_strmout_buffer_en, align 8
  %streamout_dirty67 = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 39
  %95 = ptrtoint ptr %streamout_dirty67 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 1, ptr %streamout_dirty67, align 1
  br label %cleanup

sw.bb68:                                          ; preds = %if.end5.sw.bb68_crit_edge, %if.end5.sw.bb68_crit_edge968, %if.end5.sw.bb68_crit_edge969, %if.end5.sw.bb68_crit_edge970
  %call69 = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end76, label %do.end74

do.end74:                                         ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #10
  %96 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %97, ptr noundef nonnull @.str.177, i32 noundef %reg) #12
  br label %cleanup

if.end76:                                         ; preds = %sw.bb68
  %sub = add nsw i32 %reg, -166616
  %div724 = lshr i32 %sub, 4
  %chunk_ib.i788 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %98 = ptrtoint ptr %chunk_ib.i788 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %chunk_ib.i788, align 4
  %kdata.i789 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %kdata.i789 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %kdata.i789, align 4
  %tobool.not.i790 = icmp eq ptr %101, null
  br i1 %tobool.not.i790, label %if.end.i792, label %if.end76.radeon_get_ib_value.exit796_crit_edge

if.end76.radeon_get_ib_value.exit796_crit_edge:   ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_get_ib_value.exit796

if.end.i792:                                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  %102 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ptr, align 8
  br label %radeon_get_ib_value.exit796

radeon_get_ib_value.exit796:                      ; preds = %if.end.i792, %if.end76.radeon_get_ib_value.exit796_crit_edge
  %.pn.i793 = phi ptr [ %103, %if.end.i792 ], [ %101, %if.end76.radeon_get_ib_value.exit796_crit_edge ]
  %retval.0.in.i794 = getelementptr i32, ptr %.pn.i793, i32 %idx
  %104 = ptrtoint ptr %retval.0.in.i794 to i32
  call void @__asan_load4_noabort(i32 %104)
  %retval.0.i795 = load i32, ptr %retval.0.in.i794, align 4
  %shl78 = shl i32 %retval.0.i795, 8
  %arrayidx79 = getelementptr %struct.r600_cs_track, ptr %1, i32 0, i32 26, i32 %div724
  %105 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %shl78, ptr %arrayidx79, align 4
  %106 = ptrtoint ptr %reloc to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %reloc, align 4
  %gpu_offset80 = getelementptr inbounds %struct.radeon_bo_list, ptr %107, i32 0, i32 2
  %108 = ptrtoint ptr %gpu_offset80 to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %gpu_offset80, align 8
  %shr81 = lshr i64 %109, 8
  %conv83 = trunc i64 %shr81 to i32
  %arrayidx84 = getelementptr i32, ptr %8, i32 %idx
  %110 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx84, align 4
  %add85 = add i32 %111, %conv83
  store i32 %add85, ptr %arrayidx84, align 4
  %112 = load ptr, ptr %reloc, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %112, align 8
  %arrayidx86 = getelementptr %struct.r600_cs_track, ptr %1, i32 0, i32 24, i32 %div724
  %115 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %114, ptr %arrayidx86, align 4
  %116 = load ptr, ptr %reloc, align 4
  %gpu_offset87 = getelementptr inbounds %struct.radeon_bo_list, ptr %116, i32 0, i32 2
  %117 = ptrtoint ptr %gpu_offset87 to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %gpu_offset87, align 8
  %arrayidx88 = getelementptr %struct.r600_cs_track, ptr %1, i32 0, i32 25, i32 %div724
  %119 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 %118, ptr %arrayidx88, align 8
  %streamout_dirty89 = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 39
  %120 = ptrtoint ptr %streamout_dirty89 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 1, ptr %streamout_dirty89, align 1
  br label %cleanup

sw.bb90:                                          ; preds = %if.end5.sw.bb90_crit_edge, %if.end5.sw.bb90_crit_edge971, %if.end5.sw.bb90_crit_edge972, %if.end5.sw.bb90_crit_edge973
  %sub91 = add nsw i32 %reg, -166608
  %div92723 = lshr i32 %sub91, 4
  %chunk_ib.i797 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %121 = ptrtoint ptr %chunk_ib.i797 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %chunk_ib.i797, align 4
  %kdata.i798 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %kdata.i798 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %kdata.i798, align 4
  %tobool.not.i799 = icmp eq ptr %124, null
  %spec.select937 = select i1 %tobool.not.i799, ptr %8, ptr %124
  %retval.0.in.i803 = getelementptr i32, ptr %spec.select937, i32 %idx
  %125 = ptrtoint ptr %retval.0.in.i803 to i32
  call void @__asan_load4_noabort(i32 %125)
  %retval.0.i804 = load i32, ptr %retval.0.in.i803, align 4
  %mul = shl i32 %retval.0.i804, 2
  %arrayidx94 = getelementptr %struct.r600_cs_track, ptr %1, i32 0, i32 27, i32 %div92723
  %126 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %mul, ptr %arrayidx94, align 4
  %streamout_dirty95 = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 39
  %127 = ptrtoint ptr %streamout_dirty95 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 1, ptr %streamout_dirty95, align 1
  br label %cleanup

sw.bb96:                                          ; preds = %if.end5
  %call97 = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end104, label %do.end102

do.end102:                                        ; preds = %sw.bb96
  call void @__sanitizer_cov_trace_pc() #10
  %128 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %129, ptr noundef nonnull @.str.184, i32 noundef 34296) #12
  br label %cleanup

if.end104:                                        ; preds = %sw.bb96
  call void @__sanitizer_cov_trace_pc() #10
  %130 = ptrtoint ptr %reloc to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %reloc, align 4
  %gpu_offset105 = getelementptr inbounds %struct.radeon_bo_list, ptr %131, i32 0, i32 2
  %132 = ptrtoint ptr %gpu_offset105 to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %gpu_offset105, align 8
  %shr106 = lshr i64 %133, 8
  %conv108 = trunc i64 %shr106 to i32
  %arrayidx109 = getelementptr i32, ptr %8, i32 %idx
  %134 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx109, align 4
  %add110 = add i32 %135, %conv108
  store i32 %add110, ptr %arrayidx109, align 4
  br label %cleanup

sw.bb111:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %chunk_ib.i806 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %136 = ptrtoint ptr %chunk_ib.i806 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %chunk_ib.i806, align 4
  %kdata.i807 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %137, i32 0, i32 1
  %138 = ptrtoint ptr %kdata.i807 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %kdata.i807, align 4
  %tobool.not.i808 = icmp eq ptr %139, null
  %spec.select938 = select i1 %tobool.not.i808, ptr %8, ptr %139
  %retval.0.in.i812 = getelementptr i32, ptr %spec.select938, i32 %idx
  %140 = ptrtoint ptr %retval.0.in.i812 to i32
  call void @__asan_load4_noabort(i32 %140)
  %retval.0.i813 = load i32, ptr %retval.0.in.i812, align 4
  %cb_target_mask = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 18
  %141 = ptrtoint ptr %cb_target_mask to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %retval.0.i813, ptr %cb_target_mask, align 8
  %cb_dirty = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 37
  %142 = ptrtoint ptr %cb_dirty to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 1, ptr %cb_dirty, align 1
  br label %cleanup

sw.bb113:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %chunk_ib.i815 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %143 = ptrtoint ptr %chunk_ib.i815 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %chunk_ib.i815, align 4
  %kdata.i816 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %144, i32 0, i32 1
  %145 = ptrtoint ptr %kdata.i816 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %kdata.i816, align 4
  %tobool.not.i817 = icmp eq ptr %146, null
  %spec.select939 = select i1 %tobool.not.i817, ptr %8, ptr %146
  %retval.0.in.i821 = getelementptr i32, ptr %spec.select939, i32 %idx
  %147 = ptrtoint ptr %retval.0.in.i821 to i32
  call void @__asan_load4_noabort(i32 %147)
  %retval.0.i822 = load i32, ptr %retval.0.in.i821, align 4
  %cb_shader_mask = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 19
  %148 = ptrtoint ptr %cb_shader_mask to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %retval.0.i822, ptr %cb_shader_mask, align 4
  br label %cleanup

sw.bb115:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %chunk_ib.i824 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %149 = ptrtoint ptr %chunk_ib.i824 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %chunk_ib.i824, align 4
  %kdata.i825 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %150, i32 0, i32 1
  %151 = ptrtoint ptr %kdata.i825 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %kdata.i825, align 4
  %tobool.not.i826 = icmp eq ptr %152, null
  %spec.select940 = select i1 %tobool.not.i826, ptr %8, ptr %152
  %retval.0.in.i830 = getelementptr i32, ptr %spec.select940, i32 %idx
  %153 = ptrtoint ptr %retval.0.in.i830 to i32
  call void @__asan_load4_noabort(i32 %153)
  %retval.0.i831 = load i32, ptr %retval.0.in.i830, align 4
  %and118 = and i32 %retval.0.i831, 3
  %log_nsamples = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 4
  %154 = ptrtoint ptr %log_nsamples to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %and118, ptr %log_nsamples, align 8
  %shl119 = shl nuw nsw i32 1, %and118
  %nsamples = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 5
  %155 = ptrtoint ptr %nsamples to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %shl119, ptr %nsamples, align 4
  %cb_dirty120 = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 37
  %156 = ptrtoint ptr %cb_dirty120 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 1, ptr %cb_dirty120, align 1
  br label %cleanup

sw.bb121:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %chunk_ib.i833 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %157 = ptrtoint ptr %chunk_ib.i833 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %chunk_ib.i833, align 4
  %kdata.i834 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %158, i32 0, i32 1
  %159 = ptrtoint ptr %kdata.i834 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %kdata.i834, align 4
  %tobool.not.i835 = icmp eq ptr %160, null
  %spec.select941 = select i1 %tobool.not.i835, ptr %8, ptr %160
  %retval.0.in.i839 = getelementptr i32, ptr %spec.select941, i32 %idx
  %161 = ptrtoint ptr %retval.0.in.i839 to i32
  call void @__asan_load4_noabort(i32 %161)
  %retval.0.i840 = load i32, ptr %retval.0.in.i839, align 4
  %162 = and i32 %retval.0.i840, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 112, i32 %162)
  %cmp125 = icmp eq i32 %162, 112
  %is_resolve = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 20
  %frombool = zext i1 %cmp125 to i8
  %163 = ptrtoint ptr %is_resolve to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %frombool, ptr %is_resolve, align 8
  %cb_dirty127 = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 37
  %164 = ptrtoint ptr %cb_dirty127 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 1, ptr %cb_dirty127, align 1
  br label %cleanup

sw.bb128:                                         ; preds = %if.end5.sw.bb128_crit_edge, %if.end5.sw.bb128_crit_edge974, %if.end5.sw.bb128_crit_edge975, %if.end5.sw.bb128_crit_edge976, %if.end5.sw.bb128_crit_edge977, %if.end5.sw.bb128_crit_edge978, %if.end5.sw.bb128_crit_edge979, %if.end5.sw.bb128_crit_edge980
  %cs_flags129 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 21
  %165 = ptrtoint ptr %cs_flags129 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %cs_flags129, align 4
  %and130 = and i32 %166, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %tobool131.not = icmp eq i32 %and130, 0
  br i1 %tobool131.not, label %land.lhs.true132, label %sw.bb128.if.else169_crit_edge

sw.bb128.if.else169_crit_edge:                    ; preds = %sw.bb128
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else169

land.lhs.true132:                                 ; preds = %sw.bb128
  %call133 = tail call zeroext i1 @radeon_cs_packet_next_is_pkt3_nop(ptr noundef %p) #8
  br i1 %call133, label %if.then135, label %land.lhs.true132.if.else169_crit_edge

land.lhs.true132.if.else169_crit_edge:            ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else169

if.then135:                                       ; preds = %land.lhs.true132
  %call136 = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %if.end143, label %do.end141

do.end141:                                        ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #10
  %167 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %168, ptr noundef nonnull @.str.177, i32 noundef %reg) #12
  br label %cleanup

if.end143:                                        ; preds = %if.then135
  %sub144 = add nsw i32 %reg, -164000
  %div145722 = lshr i32 %sub144, 2
  %chunk_ib.i842 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %169 = ptrtoint ptr %chunk_ib.i842 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %chunk_ib.i842, align 4
  %kdata.i843 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %170, i32 0, i32 1
  %171 = ptrtoint ptr %kdata.i843 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %kdata.i843, align 4
  %tobool.not.i844 = icmp eq ptr %172, null
  br i1 %tobool.not.i844, label %if.end.i846, label %if.end143.radeon_get_ib_value.exit850_crit_edge

if.end143.radeon_get_ib_value.exit850_crit_edge:  ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_get_ib_value.exit850

if.end.i846:                                      ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #10
  %173 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %ptr, align 8
  br label %radeon_get_ib_value.exit850

radeon_get_ib_value.exit850:                      ; preds = %if.end.i846, %if.end143.radeon_get_ib_value.exit850_crit_edge
  %.pn.i847 = phi ptr [ %174, %if.end.i846 ], [ %172, %if.end143.radeon_get_ib_value.exit850_crit_edge ]
  %retval.0.in.i848 = getelementptr i32, ptr %.pn.i847, i32 %idx
  %175 = ptrtoint ptr %retval.0.in.i848 to i32
  call void @__asan_load4_noabort(i32 %175)
  %retval.0.i849 = load i32, ptr %retval.0.in.i848, align 4
  %arrayidx147 = getelementptr %struct.r600_cs_track, ptr %1, i32 0, i32 15, i32 %div145722
  %176 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %retval.0.i849, ptr %arrayidx147, align 4
  %177 = ptrtoint ptr %reloc to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %reloc, align 4
  %tiling_flags148 = getelementptr inbounds %struct.radeon_bo_list, ptr %178, i32 0, i32 5
  %179 = ptrtoint ptr %tiling_flags148 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %tiling_flags148, align 8
  %and149 = and i32 %180, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149)
  %tobool150.not = icmp eq i32 %and149, 0
  br i1 %tobool150.not, label %if.else157, label %if.then151

if.then151:                                       ; preds = %radeon_get_ib_value.exit850
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx152 = getelementptr i32, ptr %8, i32 %idx
  %181 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %arrayidx152, align 4
  %or153 = or i32 %182, 1024
  store i32 %or153, ptr %arrayidx152, align 4
  %183 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %arrayidx147, align 4
  %or156 = or i32 %184, 1024
  store i32 %or156, ptr %arrayidx147, align 4
  br label %if.end175

if.else157:                                       ; preds = %radeon_get_ib_value.exit850
  %and159 = and i32 %180, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159)
  %tobool160.not = icmp eq i32 %and159, 0
  br i1 %tobool160.not, label %if.else157.if.end175_crit_edge, label %if.then161

if.else157.if.end175_crit_edge:                   ; preds = %if.else157
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end175

if.then161:                                       ; preds = %if.else157
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx162 = getelementptr i32, ptr %8, i32 %idx
  %185 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %arrayidx162, align 4
  %or163 = or i32 %186, 512
  store i32 %or163, ptr %arrayidx162, align 4
  %187 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %arrayidx147, align 4
  %or166 = or i32 %188, 512
  store i32 %or166, ptr %arrayidx147, align 4
  br label %if.end175

if.else169:                                       ; preds = %land.lhs.true132.if.else169_crit_edge, %sw.bb128.if.else169_crit_edge
  %sub170 = add nsw i32 %reg, -164000
  %div171721 = lshr i32 %sub170, 2
  %chunk_ib.i851 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %189 = ptrtoint ptr %chunk_ib.i851 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %chunk_ib.i851, align 4
  %kdata.i852 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %190, i32 0, i32 1
  %191 = ptrtoint ptr %kdata.i852 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %kdata.i852, align 4
  %tobool.not.i853 = icmp eq ptr %192, null
  br i1 %tobool.not.i853, label %if.end.i855, label %if.else169.radeon_get_ib_value.exit859_crit_edge

if.else169.radeon_get_ib_value.exit859_crit_edge: ; preds = %if.else169
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_get_ib_value.exit859

if.end.i855:                                      ; preds = %if.else169
  call void @__sanitizer_cov_trace_pc() #10
  %193 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %ptr, align 8
  br label %radeon_get_ib_value.exit859

radeon_get_ib_value.exit859:                      ; preds = %if.end.i855, %if.else169.radeon_get_ib_value.exit859_crit_edge
  %.pn.i856 = phi ptr [ %194, %if.end.i855 ], [ %192, %if.else169.radeon_get_ib_value.exit859_crit_edge ]
  %retval.0.in.i857 = getelementptr i32, ptr %.pn.i856, i32 %idx
  %195 = ptrtoint ptr %retval.0.in.i857 to i32
  call void @__asan_load4_noabort(i32 %195)
  %retval.0.i858 = load i32, ptr %retval.0.in.i857, align 4
  %arrayidx174 = getelementptr %struct.r600_cs_track, ptr %1, i32 0, i32 15, i32 %div171721
  %196 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %retval.0.i858, ptr %arrayidx174, align 4
  br label %if.end175

if.end175:                                        ; preds = %radeon_get_ib_value.exit859, %if.then161, %if.else157.if.end175_crit_edge, %if.then151
  %cb_dirty176 = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 37
  %197 = ptrtoint ptr %cb_dirty176 to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 1, ptr %cb_dirty176, align 1
  br label %cleanup

sw.bb177:                                         ; preds = %if.end5.sw.bb177_crit_edge, %if.end5.sw.bb177_crit_edge981, %if.end5.sw.bb177_crit_edge982, %if.end5.sw.bb177_crit_edge983, %if.end5.sw.bb177_crit_edge984, %if.end5.sw.bb177_crit_edge985, %if.end5.sw.bb177_crit_edge986, %if.end5.sw.bb177_crit_edge987
  %sub178 = add nsw i32 %reg, -163968
  %div179720 = lshr i32 %sub178, 2
  %chunk_ib.i860 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %198 = ptrtoint ptr %chunk_ib.i860 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %chunk_ib.i860, align 4
  %kdata.i861 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %199, i32 0, i32 1
  %200 = ptrtoint ptr %kdata.i861 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %kdata.i861, align 4
  %tobool.not.i862 = icmp eq ptr %201, null
  %spec.select942 = select i1 %tobool.not.i862, ptr %8, ptr %201
  %retval.0.in.i866 = getelementptr i32, ptr %spec.select942, i32 %idx
  %202 = ptrtoint ptr %retval.0.in.i866 to i32
  call void @__asan_load4_noabort(i32 %202)
  %retval.0.i867 = load i32, ptr %retval.0.in.i866, align 4
  %arrayidx181 = getelementptr %struct.r600_cs_track, ptr %1, i32 0, i32 16, i32 %div179720
  %203 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %retval.0.i867, ptr %arrayidx181, align 4
  %cb_dirty182 = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 37
  %204 = ptrtoint ptr %cb_dirty182 to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 1, ptr %cb_dirty182, align 1
  br label %cleanup

sw.bb183:                                         ; preds = %if.end5.sw.bb183_crit_edge, %if.end5.sw.bb183_crit_edge988, %if.end5.sw.bb183_crit_edge989, %if.end5.sw.bb183_crit_edge990, %if.end5.sw.bb183_crit_edge991, %if.end5.sw.bb183_crit_edge992, %if.end5.sw.bb183_crit_edge993, %if.end5.sw.bb183_crit_edge994
  %sub184 = add nsw i32 %reg, -163936
  %div185719 = lshr i32 %sub184, 2
  %chunk_ib.i869 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %205 = ptrtoint ptr %chunk_ib.i869 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %chunk_ib.i869, align 4
  %kdata.i870 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %206, i32 0, i32 1
  %207 = ptrtoint ptr %kdata.i870 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %kdata.i870, align 4
  %tobool.not.i871 = icmp eq ptr %208, null
  %spec.select943 = select i1 %tobool.not.i871, ptr %8, ptr %208
  %retval.0.in.i875 = getelementptr i32, ptr %spec.select943, i32 %idx
  %209 = ptrtoint ptr %retval.0.in.i875 to i32
  call void @__asan_load4_noabort(i32 %209)
  %retval.0.i876 = load i32, ptr %retval.0.in.i875, align 4
  %arrayidx187 = getelementptr %struct.r600_cs_track, ptr %1, i32 0, i32 21, i32 %div185719
  %210 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %retval.0.i876, ptr %arrayidx187, align 4
  %arrayidx188 = getelementptr %struct.r600_cs_track, ptr %1, i32 0, i32 17, i32 %div185719
  %211 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %idx, ptr %arrayidx188, align 4
  %cb_dirty189 = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 37
  %212 = ptrtoint ptr %cb_dirty189 to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 1, ptr %cb_dirty189, align 1
  br label %cleanup

sw.bb190:                                         ; preds = %if.end5.sw.bb190_crit_edge, %if.end5.sw.bb190_crit_edge995, %if.end5.sw.bb190_crit_edge996, %if.end5.sw.bb190_crit_edge997, %if.end5.sw.bb190_crit_edge998, %if.end5.sw.bb190_crit_edge999, %if.end5.sw.bb190_crit_edge1000, %if.end5.sw.bb190_crit_edge1001
  %sub191 = add nsw i32 %reg, -164064
  %div192718 = lshr i32 %sub191, 2
  %call193 = tail call zeroext i1 @radeon_cs_packet_next_is_pkt3_nop(ptr noundef %p) #8
  br i1 %call193, label %if.else210, label %if.then194

if.then194:                                       ; preds = %sw.bb190
  %arrayidx195 = getelementptr %struct.r600_cs_track, ptr %1, i32 0, i32 6, i32 %div192718
  %213 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %arrayidx195, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %214)
  %tobool196.not = icmp eq i32 %214, 0
  br i1 %tobool196.not, label %do.end200, label %if.end202

do.end200:                                        ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #10
  %215 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %216, ptr noundef nonnull @.str.190, i32 noundef %reg) #12
  br label %cleanup

if.end202:                                        ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx203 = getelementptr %struct.r600_cs_track, ptr %1, i32 0, i32 7, i32 %div192718
  %217 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %arrayidx203, align 4
  %arrayidx204 = getelementptr %struct.r600_cs_track, ptr %1, i32 0, i32 10, i32 %div192718
  %219 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr %218, ptr %arrayidx204, align 4
  %arrayidx205 = getelementptr %struct.r600_cs_track, ptr %1, i32 0, i32 9, i32 %div192718
  %220 = ptrtoint ptr %arrayidx205 to i32
  call void @__asan_load8_noabort(i32 %220)
  %221 = load i64, ptr %arrayidx205, align 8
  %arrayidx206 = getelementptr %struct.r600_cs_track, ptr %1, i32 0, i32 11, i32 %div192718
  %222 = ptrtoint ptr %arrayidx206 to i32
  call void @__asan_store8_noabort(i32 %222)
  store i64 %221, ptr %arrayidx206, align 8
  %223 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %arrayidx195, align 4
  %arrayidx209 = getelementptr i32, ptr %8, i32 %idx
  %225 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 %224, ptr %arrayidx209, align 4
  br label %if.end233

if.else210:                                       ; preds = %sw.bb190
  %call211 = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call211)
  %tobool212.not = icmp eq i32 %call211, 0
  br i1 %tobool212.not, label %if.end218, label %do.end216

do.end216:                                        ; preds = %if.else210
  call void @__sanitizer_cov_trace_pc() #10
  %226 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %227, ptr noundef nonnull @.str.177, i32 noundef %reg) #12
  br label %cleanup

if.end218:                                        ; preds = %if.else210
  call void @__sanitizer_cov_trace_pc() #10
  %228 = ptrtoint ptr %reloc to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %reloc, align 4
  %230 = ptrtoint ptr %229 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %229, align 8
  %arrayidx221 = getelementptr %struct.r600_cs_track, ptr %1, i32 0, i32 10, i32 %div192718
  %232 = ptrtoint ptr %arrayidx221 to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr %231, ptr %arrayidx221, align 4
  %arrayidx222 = getelementptr i32, ptr %8, i32 %idx
  %233 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %arrayidx222, align 4
  %conv223 = zext i32 %234 to i64
  %shl224 = shl nuw nsw i64 %conv223, 8
  %arrayidx226 = getelementptr %struct.r600_cs_track, ptr %1, i32 0, i32 11, i32 %div192718
  %235 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_store8_noabort(i32 %235)
  store i64 %shl224, ptr %arrayidx226, align 8
  %236 = load ptr, ptr %reloc, align 4
  %gpu_offset227 = getelementptr inbounds %struct.radeon_bo_list, ptr %236, i32 0, i32 2
  %237 = ptrtoint ptr %gpu_offset227 to i32
  call void @__asan_load8_noabort(i32 %237)
  %238 = load i64, ptr %gpu_offset227, align 8
  %shr228 = lshr i64 %238, 8
  %conv230 = trunc i64 %shr228 to i32
  %239 = load i32, ptr %arrayidx222, align 4
  %add232 = add i32 %239, %conv230
  store i32 %add232, ptr %arrayidx222, align 4
  br label %if.end233

if.end233:                                        ; preds = %if.end218, %if.end202
  %arrayidx235 = getelementptr %struct.r600_cs_track, ptr %1, i32 0, i32 15, i32 %div192718
  %240 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %arrayidx235, align 4
  %242 = and i32 %241, 786432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %242)
  %tobool238.not = icmp eq i32 %242, 0
  br i1 %tobool238.not, label %if.end233.cleanup_crit_edge, label %if.then239

if.end233.cleanup_crit_edge:                      ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then239:                                       ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #10
  %cb_dirty240 = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 37
  %243 = ptrtoint ptr %cb_dirty240 to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 1, ptr %cb_dirty240, align 1
  br label %cleanup

sw.bb242:                                         ; preds = %if.end5.sw.bb242_crit_edge, %if.end5.sw.bb242_crit_edge1002, %if.end5.sw.bb242_crit_edge1003, %if.end5.sw.bb242_crit_edge1004, %if.end5.sw.bb242_crit_edge1005, %if.end5.sw.bb242_crit_edge1006, %if.end5.sw.bb242_crit_edge1007, %if.end5.sw.bb242_crit_edge1008
  %sub243 = add nsw i32 %reg, -164032
  %div244717 = lshr i32 %sub243, 2
  %call245 = tail call zeroext i1 @radeon_cs_packet_next_is_pkt3_nop(ptr noundef %p) #8
  br i1 %call245, label %if.else265, label %if.then246

if.then246:                                       ; preds = %sw.bb242
  %arrayidx248 = getelementptr %struct.r600_cs_track, ptr %1, i32 0, i32 6, i32 %div244717
  %244 = ptrtoint ptr %arrayidx248 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %arrayidx248, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %245)
  %tobool249.not = icmp eq i32 %245, 0
  br i1 %tobool249.not, label %do.end253, label %if.end255

do.end253:                                        ; preds = %if.then246
  call void @__sanitizer_cov_trace_pc() #10
  %246 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %247, ptr noundef nonnull @.str.190, i32 noundef %reg) #12
  br label %cleanup

if.end255:                                        ; preds = %if.then246
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx257 = getelementptr %struct.r600_cs_track, ptr %1, i32 0, i32 7, i32 %div244717
  %248 = ptrtoint ptr %arrayidx257 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %arrayidx257, align 4
  %arrayidx258 = getelementptr %struct.r600_cs_track, ptr %1, i32 0, i32 12, i32 %div244717
  %250 = ptrtoint ptr %arrayidx258 to i32
  call void @__asan_store4_noabort(i32 %250)
  store ptr %249, ptr %arrayidx258, align 4
  %arrayidx260 = getelementptr %struct.r600_cs_track, ptr %1, i32 0, i32 9, i32 %div244717
  %251 = ptrtoint ptr %arrayidx260 to i32
  call void @__asan_load8_noabort(i32 %251)
  %252 = load i64, ptr %arrayidx260, align 8
  %arrayidx261 = getelementptr %struct.r600_cs_track, ptr %1, i32 0, i32 13, i32 %div244717
  %253 = ptrtoint ptr %arrayidx261 to i32
  call void @__asan_store8_noabort(i32 %253)
  store i64 %252, ptr %arrayidx261, align 8
  %254 = ptrtoint ptr %arrayidx248 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %arrayidx248, align 4
  %arrayidx264 = getelementptr i32, ptr %8, i32 %idx
  %256 = ptrtoint ptr %arrayidx264 to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %255, ptr %arrayidx264, align 4
  br label %if.end288

if.else265:                                       ; preds = %sw.bb242
  %call266 = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call266)
  %tobool267.not = icmp eq i32 %call266, 0
  br i1 %tobool267.not, label %if.end273, label %do.end271

do.end271:                                        ; preds = %if.else265
  call void @__sanitizer_cov_trace_pc() #10
  %257 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %258, ptr noundef nonnull @.str.177, i32 noundef %reg) #12
  br label %cleanup

if.end273:                                        ; preds = %if.else265
  call void @__sanitizer_cov_trace_pc() #10
  %259 = ptrtoint ptr %reloc to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %reloc, align 4
  %261 = ptrtoint ptr %260 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %260, align 8
  %arrayidx276 = getelementptr %struct.r600_cs_track, ptr %1, i32 0, i32 12, i32 %div244717
  %263 = ptrtoint ptr %arrayidx276 to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr %262, ptr %arrayidx276, align 4
  %arrayidx277 = getelementptr i32, ptr %8, i32 %idx
  %264 = ptrtoint ptr %arrayidx277 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %arrayidx277, align 4
  %conv278 = zext i32 %265 to i64
  %shl279 = shl nuw nsw i64 %conv278, 8
  %arrayidx281 = getelementptr %struct.r600_cs_track, ptr %1, i32 0, i32 13, i32 %div244717
  %266 = ptrtoint ptr %arrayidx281 to i32
  call void @__asan_store8_noabort(i32 %266)
  store i64 %shl279, ptr %arrayidx281, align 8
  %267 = load ptr, ptr %reloc, align 4
  %gpu_offset282 = getelementptr inbounds %struct.radeon_bo_list, ptr %267, i32 0, i32 2
  %268 = ptrtoint ptr %gpu_offset282 to i32
  call void @__asan_load8_noabort(i32 %268)
  %269 = load i64, ptr %gpu_offset282, align 8
  %shr283 = lshr i64 %269, 8
  %conv285 = trunc i64 %shr283 to i32
  %270 = load i32, ptr %arrayidx277, align 4
  %add287 = add i32 %270, %conv285
  store i32 %add287, ptr %arrayidx277, align 4
  br label %if.end288

if.end288:                                        ; preds = %if.end273, %if.end255
  %arrayidx290 = getelementptr %struct.r600_cs_track, ptr %1, i32 0, i32 15, i32 %div244717
  %271 = ptrtoint ptr %arrayidx290 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %arrayidx290, align 4
  %273 = and i32 %272, 786432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %273)
  %tobool293.not = icmp eq i32 %273, 0
  br i1 %tobool293.not, label %if.end288.cleanup_crit_edge, label %if.then294

if.end288.cleanup_crit_edge:                      ; preds = %if.end288
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then294:                                       ; preds = %if.end288
  call void @__sanitizer_cov_trace_pc() #10
  %cb_dirty295 = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 37
  %274 = ptrtoint ptr %cb_dirty295 to i32
  call void @__asan_store1_noabort(i32 %274)
  store i8 1, ptr %cb_dirty295, align 1
  br label %cleanup

sw.bb297:                                         ; preds = %if.end5.sw.bb297_crit_edge, %if.end5.sw.bb297_crit_edge1009, %if.end5.sw.bb297_crit_edge1010, %if.end5.sw.bb297_crit_edge1011, %if.end5.sw.bb297_crit_edge1012, %if.end5.sw.bb297_crit_edge1013, %if.end5.sw.bb297_crit_edge1014, %if.end5.sw.bb297_crit_edge1015
  %sub298 = add nsw i32 %reg, -164096
  %div299716 = lshr i32 %sub298, 2
  %chunk_ib.i878 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %275 = ptrtoint ptr %chunk_ib.i878 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %chunk_ib.i878, align 4
  %kdata.i879 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %276, i32 0, i32 1
  %277 = ptrtoint ptr %kdata.i879 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %kdata.i879, align 4
  %tobool.not.i880 = icmp eq ptr %278, null
  %spec.select944 = select i1 %tobool.not.i880, ptr %8, ptr %278
  %retval.0.in.i884 = getelementptr i32, ptr %spec.select944, i32 %idx
  %279 = ptrtoint ptr %retval.0.in.i884 to i32
  call void @__asan_load4_noabort(i32 %279)
  %retval.0.i885 = load i32, ptr %retval.0.in.i884, align 4
  %arrayidx301 = getelementptr %struct.r600_cs_track, ptr %1, i32 0, i32 14, i32 %div299716
  %280 = ptrtoint ptr %arrayidx301 to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 %retval.0.i885, ptr %arrayidx301, align 4
  %arrayidx303 = getelementptr %struct.r600_cs_track, ptr %1, i32 0, i32 15, i32 %div299716
  %281 = ptrtoint ptr %arrayidx303 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %arrayidx303, align 4
  %283 = and i32 %282, 786432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %283)
  %tobool306.not = icmp eq i32 %283, 0
  br i1 %tobool306.not, label %sw.bb297.cleanup_crit_edge, label %if.then307

sw.bb297.cleanup_crit_edge:                       ; preds = %sw.bb297
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then307:                                       ; preds = %sw.bb297
  call void @__sanitizer_cov_trace_pc() #10
  %cb_dirty308 = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 37
  %284 = ptrtoint ptr %cb_dirty308 to i32
  call void @__asan_store1_noabort(i32 %284)
  store i8 1, ptr %cb_dirty308, align 1
  br label %cleanup

sw.bb310:                                         ; preds = %if.end5.sw.bb310_crit_edge, %if.end5.sw.bb310_crit_edge1016, %if.end5.sw.bb310_crit_edge1017, %if.end5.sw.bb310_crit_edge1018, %if.end5.sw.bb310_crit_edge1019, %if.end5.sw.bb310_crit_edge1020, %if.end5.sw.bb310_crit_edge1021, %if.end5.sw.bb310_crit_edge1022
  %call311 = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call311)
  %tobool312.not = icmp eq i32 %call311, 0
  br i1 %tobool312.not, label %if.end318, label %do.end316

do.end316:                                        ; preds = %sw.bb310
  call void @__sanitizer_cov_trace_pc() #10
  %285 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %286, ptr noundef nonnull @.str.177, i32 noundef %reg) #12
  br label %cleanup

if.end318:                                        ; preds = %sw.bb310
  %sub319 = add nsw i32 %reg, -163904
  %div320715 = lshr i32 %sub319, 2
  %chunk_ib.i887 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %287 = ptrtoint ptr %chunk_ib.i887 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %chunk_ib.i887, align 4
  %kdata.i888 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %288, i32 0, i32 1
  %289 = ptrtoint ptr %kdata.i888 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %kdata.i888, align 4
  %tobool.not.i889 = icmp eq ptr %290, null
  br i1 %tobool.not.i889, label %if.end.i891, label %if.end318.radeon_get_ib_value.exit895_crit_edge

if.end318.radeon_get_ib_value.exit895_crit_edge:  ; preds = %if.end318
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_get_ib_value.exit895

if.end.i891:                                      ; preds = %if.end318
  call void @__sanitizer_cov_trace_pc() #10
  %291 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %ptr, align 8
  br label %radeon_get_ib_value.exit895

radeon_get_ib_value.exit895:                      ; preds = %if.end.i891, %if.end318.radeon_get_ib_value.exit895_crit_edge
  %.pn.i892 = phi ptr [ %292, %if.end.i891 ], [ %290, %if.end318.radeon_get_ib_value.exit895_crit_edge ]
  %retval.0.in.i893 = getelementptr i32, ptr %.pn.i892, i32 %idx
  %293 = ptrtoint ptr %retval.0.in.i893 to i32
  call void @__asan_load4_noabort(i32 %293)
  %retval.0.i894 = load i32, ptr %retval.0.in.i893, align 4
  %shl322 = shl i32 %retval.0.i894, 8
  %conv323 = zext i32 %shl322 to i64
  %arrayidx325 = getelementptr %struct.r600_cs_track, ptr %1, i32 0, i32 9, i32 %div320715
  %294 = ptrtoint ptr %arrayidx325 to i32
  call void @__asan_store8_noabort(i32 %294)
  store i64 %conv323, ptr %arrayidx325, align 8
  %295 = ptrtoint ptr %reloc to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %reloc, align 4
  %gpu_offset326 = getelementptr inbounds %struct.radeon_bo_list, ptr %296, i32 0, i32 2
  %297 = ptrtoint ptr %gpu_offset326 to i32
  call void @__asan_load8_noabort(i32 %297)
  %298 = load i64, ptr %gpu_offset326, align 8
  %shr327 = lshr i64 %298, 8
  %conv329 = trunc i64 %shr327 to i32
  %arrayidx330 = getelementptr i32, ptr %8, i32 %idx
  %299 = ptrtoint ptr %arrayidx330 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %arrayidx330, align 4
  %add331 = add i32 %300, %conv329
  store i32 %add331, ptr %arrayidx330, align 4
  %arrayidx334 = getelementptr %struct.r600_cs_track, ptr %1, i32 0, i32 6, i32 %div320715
  %301 = ptrtoint ptr %arrayidx334 to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 %add331, ptr %arrayidx334, align 4
  %302 = load ptr, ptr %reloc, align 4
  %303 = ptrtoint ptr %302 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %302, align 8
  %arrayidx337 = getelementptr %struct.r600_cs_track, ptr %1, i32 0, i32 7, i32 %div320715
  %305 = ptrtoint ptr %arrayidx337 to i32
  call void @__asan_store4_noabort(i32 %305)
  store ptr %304, ptr %arrayidx337, align 4
  %306 = load ptr, ptr %reloc, align 4
  %gpu_offset338 = getelementptr inbounds %struct.radeon_bo_list, ptr %306, i32 0, i32 2
  %307 = ptrtoint ptr %gpu_offset338 to i32
  call void @__asan_load8_noabort(i32 %307)
  %308 = load i64, ptr %gpu_offset338, align 8
  %arrayidx339 = getelementptr %struct.r600_cs_track, ptr %1, i32 0, i32 8, i32 %div320715
  %309 = ptrtoint ptr %arrayidx339 to i32
  call void @__asan_store8_noabort(i32 %309)
  store i64 %308, ptr %arrayidx339, align 8
  %cb_dirty340 = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 37
  %310 = ptrtoint ptr %cb_dirty340 to i32
  call void @__asan_store1_noabort(i32 %310)
  store i8 1, ptr %cb_dirty340, align 1
  br label %cleanup

sw.bb341:                                         ; preds = %if.end5
  %call342 = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call342)
  %tobool343.not = icmp eq i32 %call342, 0
  br i1 %tobool343.not, label %if.end349, label %do.end347

do.end347:                                        ; preds = %sw.bb341
  call void @__sanitizer_cov_trace_pc() #10
  %311 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %312, ptr noundef nonnull @.str.177, i32 noundef 163852) #12
  br label %cleanup

if.end349:                                        ; preds = %sw.bb341
  %chunk_ib.i896 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %313 = ptrtoint ptr %chunk_ib.i896 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %chunk_ib.i896, align 4
  %kdata.i897 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %314, i32 0, i32 1
  %315 = ptrtoint ptr %kdata.i897 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %kdata.i897, align 4
  %tobool.not.i898 = icmp eq ptr %316, null
  br i1 %tobool.not.i898, label %if.end.i900, label %if.end349.radeon_get_ib_value.exit904_crit_edge

if.end349.radeon_get_ib_value.exit904_crit_edge:  ; preds = %if.end349
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_get_ib_value.exit904

if.end.i900:                                      ; preds = %if.end349
  call void @__sanitizer_cov_trace_pc() #10
  %317 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %ptr, align 8
  br label %radeon_get_ib_value.exit904

radeon_get_ib_value.exit904:                      ; preds = %if.end.i900, %if.end349.radeon_get_ib_value.exit904_crit_edge
  %.pn.i901 = phi ptr [ %318, %if.end.i900 ], [ %316, %if.end349.radeon_get_ib_value.exit904_crit_edge ]
  %retval.0.in.i902 = getelementptr i32, ptr %.pn.i901, i32 %idx
  %319 = ptrtoint ptr %retval.0.in.i902 to i32
  call void @__asan_load4_noabort(i32 %319)
  %retval.0.i903 = load i32, ptr %retval.0.in.i902, align 4
  %shl351 = shl i32 %retval.0.i903, 8
  %db_offset = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 33
  %320 = ptrtoint ptr %db_offset to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 %shl351, ptr %db_offset, align 4
  %321 = ptrtoint ptr %reloc to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %reloc, align 4
  %gpu_offset352 = getelementptr inbounds %struct.radeon_bo_list, ptr %322, i32 0, i32 2
  %323 = ptrtoint ptr %gpu_offset352 to i32
  call void @__asan_load8_noabort(i32 %323)
  %324 = load i64, ptr %gpu_offset352, align 8
  %shr353 = lshr i64 %324, 8
  %conv355 = trunc i64 %shr353 to i32
  %arrayidx356 = getelementptr i32, ptr %8, i32 %idx
  %325 = ptrtoint ptr %arrayidx356 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %arrayidx356, align 4
  %add357 = add i32 %326, %conv355
  store i32 %add357, ptr %arrayidx356, align 4
  %327 = load ptr, ptr %reloc, align 4
  %328 = ptrtoint ptr %327 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %327, align 8
  %db_bo = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 34
  %330 = ptrtoint ptr %db_bo to i32
  call void @__asan_store4_noabort(i32 %330)
  store ptr %329, ptr %db_bo, align 8
  %gpu_offset359 = getelementptr inbounds %struct.radeon_bo_list, ptr %327, i32 0, i32 2
  %331 = ptrtoint ptr %gpu_offset359 to i32
  call void @__asan_load8_noabort(i32 %331)
  %332 = load i64, ptr %gpu_offset359, align 8
  %db_bo_mc = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 35
  %333 = ptrtoint ptr %db_bo_mc to i32
  call void @__asan_store8_noabort(i32 %333)
  store i64 %332, ptr %db_bo_mc, align 8
  %db_dirty360 = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 38
  %334 = ptrtoint ptr %db_dirty360 to i32
  call void @__asan_store1_noabort(i32 %334)
  store i8 1, ptr %db_dirty360, align 2
  br label %cleanup

sw.bb361:                                         ; preds = %if.end5
  %call362 = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call362)
  %tobool363.not = icmp eq i32 %call362, 0
  br i1 %tobool363.not, label %if.end369, label %do.end367

do.end367:                                        ; preds = %sw.bb361
  call void @__sanitizer_cov_trace_pc() #10
  %335 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %336, ptr noundef nonnull @.str.177, i32 noundef 163860) #12
  br label %cleanup

if.end369:                                        ; preds = %sw.bb361
  %chunk_ib.i905 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %337 = ptrtoint ptr %chunk_ib.i905 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %chunk_ib.i905, align 4
  %kdata.i906 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %338, i32 0, i32 1
  %339 = ptrtoint ptr %kdata.i906 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %kdata.i906, align 4
  %tobool.not.i907 = icmp eq ptr %340, null
  br i1 %tobool.not.i907, label %if.end.i909, label %if.end369.radeon_get_ib_value.exit913_crit_edge

if.end369.radeon_get_ib_value.exit913_crit_edge:  ; preds = %if.end369
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_get_ib_value.exit913

if.end.i909:                                      ; preds = %if.end369
  call void @__sanitizer_cov_trace_pc() #10
  %341 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %ptr, align 8
  br label %radeon_get_ib_value.exit913

radeon_get_ib_value.exit913:                      ; preds = %if.end.i909, %if.end369.radeon_get_ib_value.exit913_crit_edge
  %.pn.i910 = phi ptr [ %342, %if.end.i909 ], [ %340, %if.end369.radeon_get_ib_value.exit913_crit_edge ]
  %retval.0.in.i911 = getelementptr i32, ptr %.pn.i910, i32 %idx
  %343 = ptrtoint ptr %retval.0.in.i911 to i32
  call void @__asan_load4_noabort(i32 %343)
  %retval.0.i912 = load i32, ptr %retval.0.in.i911, align 4
  %shl371 = shl i32 %retval.0.i912, 8
  %conv372 = zext i32 %shl371 to i64
  %htile_offset = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 41
  %344 = ptrtoint ptr %htile_offset to i32
  call void @__asan_store8_noabort(i32 %344)
  store i64 %conv372, ptr %htile_offset, align 8
  %345 = ptrtoint ptr %reloc to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %reloc, align 4
  %gpu_offset373 = getelementptr inbounds %struct.radeon_bo_list, ptr %346, i32 0, i32 2
  %347 = ptrtoint ptr %gpu_offset373 to i32
  call void @__asan_load8_noabort(i32 %347)
  %348 = load i64, ptr %gpu_offset373, align 8
  %shr374 = lshr i64 %348, 8
  %conv376 = trunc i64 %shr374 to i32
  %arrayidx377 = getelementptr i32, ptr %8, i32 %idx
  %349 = ptrtoint ptr %arrayidx377 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %arrayidx377, align 4
  %add378 = add i32 %350, %conv376
  store i32 %add378, ptr %arrayidx377, align 4
  %351 = load ptr, ptr %reloc, align 4
  %352 = ptrtoint ptr %351 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %351, align 8
  %htile_bo = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 40
  %354 = ptrtoint ptr %htile_bo to i32
  call void @__asan_store4_noabort(i32 %354)
  store ptr %353, ptr %htile_bo, align 4
  %db_dirty380 = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 38
  %355 = ptrtoint ptr %db_dirty380 to i32
  call void @__asan_store1_noabort(i32 %355)
  store i8 1, ptr %db_dirty380, align 2
  br label %cleanup

sw.bb381:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %chunk_ib.i914 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %356 = ptrtoint ptr %chunk_ib.i914 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %chunk_ib.i914, align 4
  %kdata.i915 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %357, i32 0, i32 1
  %358 = ptrtoint ptr %kdata.i915 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %kdata.i915, align 4
  %tobool.not.i916 = icmp eq ptr %359, null
  %spec.select945 = select i1 %tobool.not.i916, ptr %8, ptr %359
  %retval.0.in.i920 = getelementptr i32, ptr %spec.select945, i32 %idx
  %360 = ptrtoint ptr %retval.0.in.i920 to i32
  call void @__asan_load4_noabort(i32 %360)
  %retval.0.i921 = load i32, ptr %retval.0.in.i920, align 4
  %htile_surface = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 42
  %361 = ptrtoint ptr %htile_surface to i32
  call void @__asan_store4_noabort(i32 %361)
  store i32 %retval.0.i921, ptr %htile_surface, align 8
  %arrayidx383 = getelementptr i32, ptr %8, i32 %idx
  %362 = ptrtoint ptr %arrayidx383 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %arrayidx383, align 4
  %or384 = or i32 %363, 3
  store i32 %or384, ptr %arrayidx383, align 4
  %db_dirty385 = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 38
  %364 = ptrtoint ptr %db_dirty385 to i32
  call void @__asan_store1_noabort(i32 %364)
  store i8 1, ptr %db_dirty385, align 2
  br label %cleanup

sw.bb386:                                         ; preds = %if.end5.sw.bb386_crit_edge, %if.end5.sw.bb386_crit_edge1023, %if.end5.sw.bb386_crit_edge1024, %if.end5.sw.bb386_crit_edge1025, %if.end5.sw.bb386_crit_edge1026, %if.end5.sw.bb386_crit_edge1027, %if.end5.sw.bb386_crit_edge1028, %if.end5.sw.bb386_crit_edge1029, %if.end5.sw.bb386_crit_edge1030, %if.end5.sw.bb386_crit_edge1031, %if.end5.sw.bb386_crit_edge1032, %if.end5.sw.bb386_crit_edge1033, %if.end5.sw.bb386_crit_edge1034, %if.end5.sw.bb386_crit_edge1035, %if.end5.sw.bb386_crit_edge1036, %if.end5.sw.bb386_crit_edge1037, %if.end5.sw.bb386_crit_edge1038, %if.end5.sw.bb386_crit_edge1039, %if.end5.sw.bb386_crit_edge1040, %if.end5.sw.bb386_crit_edge1041, %if.end5.sw.bb386_crit_edge1042, %if.end5.sw.bb386_crit_edge1043, %if.end5.sw.bb386_crit_edge1044, %if.end5.sw.bb386_crit_edge1045, %if.end5.sw.bb386_crit_edge1046, %if.end5.sw.bb386_crit_edge1047, %if.end5.sw.bb386_crit_edge1048, %if.end5.sw.bb386_crit_edge1049, %if.end5.sw.bb386_crit_edge1050, %if.end5.sw.bb386_crit_edge1051, %if.end5.sw.bb386_crit_edge1052, %if.end5.sw.bb386_crit_edge1053, %if.end5.sw.bb386_crit_edge1054, %if.end5.sw.bb386_crit_edge1055, %if.end5.sw.bb386_crit_edge1056, %if.end5.sw.bb386_crit_edge1057, %if.end5.sw.bb386_crit_edge1058, %if.end5.sw.bb386_crit_edge1059, %if.end5.sw.bb386_crit_edge1060, %if.end5.sw.bb386_crit_edge1061, %if.end5.sw.bb386_crit_edge1062, %if.end5.sw.bb386_crit_edge1063, %if.end5.sw.bb386_crit_edge1064, %if.end5.sw.bb386_crit_edge1065, %if.end5.sw.bb386_crit_edge1066, %if.end5.sw.bb386_crit_edge1067, %if.end5.sw.bb386_crit_edge1068, %if.end5.sw.bb386_crit_edge1069, %if.end5.sw.bb386_crit_edge1070, %if.end5.sw.bb386_crit_edge1071, %if.end5.sw.bb386_crit_edge1072, %if.end5.sw.bb386_crit_edge1073, %if.end5.sw.bb386_crit_edge1074
  %call387 = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call387)
  %tobool388.not = icmp eq i32 %call387, 0
  br i1 %tobool388.not, label %if.end394, label %do.end392

do.end392:                                        ; preds = %sw.bb386
  call void @__sanitizer_cov_trace_pc() #10
  %365 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %366, ptr noundef nonnull @.str.177, i32 noundef %reg) #12
  br label %cleanup

if.end394:                                        ; preds = %sw.bb386
  call void @__sanitizer_cov_trace_pc() #10
  %367 = ptrtoint ptr %reloc to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %reloc, align 4
  %gpu_offset395 = getelementptr inbounds %struct.radeon_bo_list, ptr %368, i32 0, i32 2
  %369 = ptrtoint ptr %gpu_offset395 to i32
  call void @__asan_load8_noabort(i32 %369)
  %370 = load i64, ptr %gpu_offset395, align 8
  %shr396 = lshr i64 %370, 8
  %conv398 = trunc i64 %shr396 to i32
  %arrayidx399 = getelementptr i32, ptr %8, i32 %idx
  %371 = ptrtoint ptr %arrayidx399 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %arrayidx399, align 4
  %add400 = add i32 %372, %conv398
  store i32 %add400, ptr %arrayidx399, align 4
  br label %cleanup

sw.bb401:                                         ; preds = %if.end5
  %call402 = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call402)
  %tobool403.not = icmp eq i32 %call402, 0
  br i1 %tobool403.not, label %if.end409, label %do.end407

do.end407:                                        ; preds = %sw.bb401
  call void @__sanitizer_cov_trace_pc() #10
  %373 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %p, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %374, ptr noundef nonnull @.str.207, i32 noundef 36880) #12
  br label %cleanup

if.end409:                                        ; preds = %sw.bb401
  call void @__sanitizer_cov_trace_pc() #10
  %375 = ptrtoint ptr %reloc to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %reloc, align 4
  %gpu_offset410 = getelementptr inbounds %struct.radeon_bo_list, ptr %376, i32 0, i32 2
  %377 = ptrtoint ptr %gpu_offset410 to i32
  call void @__asan_load8_noabort(i32 %377)
  %378 = load i64, ptr %gpu_offset410, align 8
  %shr411 = lshr i64 %378, 8
  %conv413 = trunc i64 %shr411 to i32
  %arrayidx414 = getelementptr i32, ptr %8, i32 %idx
  %379 = ptrtoint ptr %arrayidx414 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %arrayidx414, align 4
  %add415 = add i32 %380, %conv413
  store i32 %add415, ptr %arrayidx414, align 4
  br label %cleanup

sw.bb416:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %chunk_ib.i923 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %381 = ptrtoint ptr %chunk_ib.i923 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %chunk_ib.i923, align 4
  %kdata.i924 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %382, i32 0, i32 1
  %383 = ptrtoint ptr %kdata.i924 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %kdata.i924, align 4
  %tobool.not.i925 = icmp eq ptr %384, null
  %spec.select946 = select i1 %tobool.not.i925, ptr %8, ptr %384
  %retval.0.in.i929 = getelementptr i32, ptr %spec.select946, i32 %idx
  %385 = ptrtoint ptr %retval.0.in.i929 to i32
  call void @__asan_load4_noabort(i32 %385)
  %retval.0.i930 = load i32, ptr %retval.0.in.i929, align 4
  %sx_misc_kill_all_prims = getelementptr inbounds %struct.r600_cs_track, ptr %1, i32 0, i32 36
  %386 = trunc i32 %retval.0.i930 to i8
  %387 = and i8 %386, 1
  %388 = ptrtoint ptr %sx_misc_kill_all_prims to i32
  call void @__asan_store1_noabort(i32 %388)
  store i8 %387, ptr %sx_misc_kill_all_prims, align 8
  br label %cleanup

do.end424:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %389 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %390, ptr noundef nonnull @.str.174, i32 noundef %reg, i32 noundef %idx) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end424, %sw.bb416, %if.end409, %do.end407, %if.end394, %do.end392, %sw.bb381, %radeon_get_ib_value.exit913, %do.end367, %radeon_get_ib_value.exit904, %do.end347, %radeon_get_ib_value.exit895, %do.end316, %if.then307, %sw.bb297.cleanup_crit_edge, %if.then294, %if.end288.cleanup_crit_edge, %do.end271, %do.end253, %if.then239, %if.end233.cleanup_crit_edge, %do.end216, %do.end200, %sw.bb183, %sw.bb177, %if.end175, %do.end141, %sw.bb121, %sw.bb115, %sw.bb113, %sw.bb111, %if.end104, %do.end102, %sw.bb90, %radeon_get_ib_value.exit796, %do.end74, %sw.bb65, %sw.bb63, %sw.bb60, %sw.bb57, %if.end55, %do.end33, %sw.bb20, %sw.bb18, %if.end14, %do.end12, %if.end5.cleanup_crit_edge, %if.end5.cleanup_crit_edge947, %if.end5.cleanup_crit_edge948, %if.end5.cleanup_crit_edge949, %if.end5.cleanup_crit_edge950, %if.end5.cleanup_crit_edge951, %if.end5.cleanup_crit_edge952, %if.end5.cleanup_crit_edge953, %if.end5.cleanup_crit_edge954, %if.end5.cleanup_crit_edge955, %if.end5.cleanup_crit_edge956, %if.end5.cleanup_crit_edge957, %if.end5.cleanup_crit_edge958, %if.end5.cleanup_crit_edge959, %if.end5.cleanup_crit_edge960, %if.end5.cleanup_crit_edge961, %if.end5.cleanup_crit_edge962, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end424 ], [ -22, %do.end407 ], [ -22, %do.end392 ], [ -22, %do.end367 ], [ -22, %do.end347 ], [ -22, %do.end316 ], [ -22, %do.end271 ], [ -22, %do.end253 ], [ -22, %do.end216 ], [ -22, %do.end200 ], [ -22, %do.end141 ], [ -22, %do.end102 ], [ -22, %do.end74 ], [ -22, %do.end33 ], [ -22, %do.end12 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %sw.bb297.cleanup_crit_edge ], [ 0, %if.then307 ], [ 0, %if.end288.cleanup_crit_edge ], [ 0, %if.then294 ], [ 0, %if.end233.cleanup_crit_edge ], [ 0, %if.then239 ], [ 0, %if.end5.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge947 ], [ 0, %if.end5.cleanup_crit_edge948 ], [ 0, %if.end5.cleanup_crit_edge949 ], [ 0, %if.end5.cleanup_crit_edge950 ], [ 0, %if.end5.cleanup_crit_edge951 ], [ 0, %if.end5.cleanup_crit_edge952 ], [ 0, %if.end5.cleanup_crit_edge953 ], [ 0, %if.end5.cleanup_crit_edge954 ], [ 0, %if.end5.cleanup_crit_edge955 ], [ 0, %if.end5.cleanup_crit_edge956 ], [ 0, %if.end5.cleanup_crit_edge957 ], [ 0, %if.end5.cleanup_crit_edge958 ], [ 0, %if.end5.cleanup_crit_edge959 ], [ 0, %if.end5.cleanup_crit_edge960 ], [ 0, %if.end5.cleanup_crit_edge961 ], [ 0, %if.end5.cleanup_crit_edge962 ], [ 0, %sw.bb416 ], [ 0, %if.end409 ], [ 0, %if.end394 ], [ 0, %sw.bb381 ], [ 0, %radeon_get_ib_value.exit913 ], [ 0, %radeon_get_ib_value.exit904 ], [ 0, %radeon_get_ib_value.exit895 ], [ 0, %sw.bb183 ], [ 0, %sw.bb177 ], [ 0, %if.end175 ], [ 0, %sw.bb121 ], [ 0, %sw.bb115 ], [ 0, %sw.bb113 ], [ 0, %sw.bb111 ], [ 0, %if.end104 ], [ 0, %sw.bb90 ], [ 0, %radeon_get_ib_value.exit796 ], [ 0, %sw.bb65 ], [ 0, %sw.bb63 ], [ 0, %sw.bb60 ], [ 0, %sw.bb57 ], [ 0, %if.end55 ], [ 0, %sw.bb20 ], [ 0, %sw.bb18 ], [ 0, %if.end14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reloc) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @r600_is_safe_reg(ptr nocapture noundef readonly %p, i32 noundef %reg, i32 noundef %idx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 249855, i32 %reg)
  %cmp = icmp ugt i32 %reg, 249855
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %shr = lshr i32 %reg, 7
  %shr1 = lshr i32 %reg, 2
  %and = and i32 %shr1, 31
  %shl = shl nuw i32 1, %and
  %arrayidx = getelementptr [1952 x i32], ptr @r600_reg_safe_bm, i32 0, i32 %shr
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %and2 = and i32 %1, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %2 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.174, i32 noundef %reg, i32 noundef %idx) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end.cleanup_crit_edge ], [ false, %cleanup.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_cs_packet_next_is_pkt3_nop(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

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

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 199)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 199)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !32, !33, !34, !36, !38, !39, !40, !42, !43, !44, !46, !48, !49, !50, !52, !54, !56, !58, !59, !60, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !80, !81, !82, !84, !86, !87, !88, !90, !92, !93, !95, !97, !99, !101, !103, !105, !107, !108, !109, !111, !113, !115, !117, !118, !119, !121, !123, !125, !127, !129, !131, !133, !134, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !198, !199, !200, !202, !203, !204, !206, !207, !208, !209, !211, !212, !213, !215, !216, !218, !219, !220, !222, !223, !224, !226, !227, !228, !230, !231, !232, !234, !235, !236, !238, !239, !240, !242, !243, !244, !246, !247, !248, !249, !251, !252, !253, !255, !256, !257, !259, !260, !261, !263, !264, !265, !267, !268, !270, !271, !272, !274, !275, !276, !278, !279, !280, !282, !283, !284, !286, !287, !288, !290, !291, !292, !294, !295, !296, !298, !299, !300, !302, !303, !304, !305, !307, !308, !309, !311, !312, !314, !315, !317, !318, !319, !321, !322, !323, !325, !326, !327, !329, !330, !332, !333, !335, !336, !338, !339, !341, !342, !344, !345, !347, !348, !350, !351, !352, !354, !355, !357, !359, !360, !361, !362, !364, !365, !366, !368, !369, !370, !372, !373, !374, !376, !377, !378, !380, !381, !382, !384, !385, !386, !388, !389, !390, !392, !393, !394, !396, !397, !398, !400}
!llvm.module.flags = !{!401, !402, !403, !404, !405, !406, !407, !408}
!llvm.ident = !{!409}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 846, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 853, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 858, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 863, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 867, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 872, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 891, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 912, i32 3}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 2311, i32 4}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 2351, i32 3}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 2356, i32 3}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 2390, i32 4}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 2404, i32 5}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 2422, i32 5}
!28 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @r600_dma_cs_parse._entry, !27, !"_entry", i1 false, i1 false}
!33 = !{ptr @r600_dma_cs_parse._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 2430, i32 5}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 2489, i32 5}
!38 = !{ptr @r600_dma_cs_parse._entry.19, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @r600_dma_cs_parse._entry_ptr.21, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 2494, i32 5}
!42 = !{ptr @r600_dma_cs_parse._entry.22, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @r600_dma_cs_parse._entry_ptr.24, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 2501, i32 5}
!46 = !{ptr @.str.27, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 2512, i32 5}
!48 = !{ptr @r600_dma_cs_parse._entry.26, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @r600_dma_cs_parse._entry_ptr.28, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.29, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 2524, i32 4}
!52 = !{ptr @color_formats_table, !53, !"color_formats_table", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 105, i32 33}
!54 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 928, i32 4}
!56 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 934, i32 3}
!58 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @r600_packet0_check._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @r600_packet0_check._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @r600_cs_packet_parse_vline.vline_start_end, !62, !"vline_start_end", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 795, i32 18}
!63 = !{ptr @r600_cs_packet_parse_vline.vline_status, !64, !"vline_status", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 797, i32 18}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1653, i32 4}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1665, i32 4}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1686, i32 4}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1692, i32 4}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1699, i32 4}
!75 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1707, i32 4}
!77 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1725, i32 4}
!79 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @r600_packet3_check._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @r600_packet3_check._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1732, i32 4}
!84 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1737, i32 4}
!86 = !{ptr @r600_packet3_check._entry.42, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @r600_packet3_check._entry_ptr.44, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1744, i32 4}
!90 = !{ptr @r600_packet3_check._entry.46, !91, !"_entry", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1749, i32 4}
!92 = !{ptr @r600_packet3_check._entry_ptr.47, !91, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.48, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1755, i32 4}
!95 = !{ptr @.str.49, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1775, i32 4}
!97 = !{ptr @.str.50, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1784, i32 4}
!99 = !{ptr @.str.51, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1791, i32 4}
!101 = !{ptr @.str.52, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1795, i32 5}
!103 = !{ptr @.str.53, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1801, i32 5}
!105 = !{ptr @.str.55, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1811, i32 5}
!107 = !{ptr @r600_packet3_check._entry.54, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @r600_packet3_check._entry_ptr.56, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.57, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1821, i32 4}
!111 = !{ptr @.str.58, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1826, i32 5}
!113 = !{ptr @.str.59, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1831, i32 5}
!115 = !{ptr @.str.61, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1841, i32 5}
!117 = !{ptr @r600_packet3_check._entry.60, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @r600_packet3_check._entry_ptr.62, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.63, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1853, i32 4}
!121 = !{ptr @.str.64, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1869, i32 4}
!123 = !{ptr @.str.65, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1893, i32 4}
!125 = !{ptr @.str.66, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1916, i32 4}
!127 = !{ptr @.str.67, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1932, i32 4}
!129 = !{ptr @.str.68, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1944, i32 4}
!131 = !{ptr @.str.70, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 2006, i32 6}
!133 = !{ptr @r600_packet3_check._entry.69, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @r600_packet3_check._entry_ptr.71, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.72, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 2032, i32 5}
!137 = !{ptr @.str.73, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 2043, i32 4}
!139 = !{ptr @.str.74, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 2053, i32 4}
!141 = !{ptr @.str.75, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 2063, i32 4}
!143 = !{ptr @.str.76, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 2069, i32 4}
!145 = !{ptr @.str.77, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 2084, i32 4}
!147 = !{ptr @.str.78, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 2088, i32 4}
!149 = !{ptr @.str.79, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 2092, i32 4}
!151 = !{ptr @.str.80, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 2100, i32 5}
!153 = !{ptr @.str.81, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 2105, i32 5}
!155 = !{ptr @.str.82, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 2111, i32 5}
!157 = !{ptr @.str.83, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 2117, i32 5}
!159 = !{ptr @.str.84, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 2126, i32 4}
!161 = !{ptr @.str.85, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 2136, i32 4}
!163 = !{ptr @.str.86, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 2144, i32 5}
!165 = !{ptr @.str.87, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 2150, i32 5}
!167 = !{ptr @.str.88, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 2163, i32 5}
!169 = !{ptr @.str.89, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 2169, i32 5}
!171 = !{ptr @.str.90, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 2183, i32 4}
!173 = !{ptr @.str.91, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 2188, i32 4}
!175 = !{ptr @.str.92, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 2194, i32 4}
!177 = !{ptr @.str.93, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 2198, i32 4}
!179 = !{ptr @.str.94, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 2209, i32 4}
!181 = !{ptr @.str.95, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 2217, i32 5}
!183 = !{ptr @.str.96, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 2223, i32 5}
!185 = !{ptr @.str.97, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 2241, i32 5}
!187 = !{ptr @.str.98, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 2247, i32 5}
!189 = !{ptr @.str.99, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 2264, i32 3}
!191 = distinct !{null, !192, !"r600_nomm", i1 false, i1 false}
!192 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 36, i32 12}
!193 = !{ptr @.str.100, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 723, i32 7}
!195 = !{ptr @.str.101, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 729, i32 6}
!197 = !{ptr @.str.102, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @r600_cs_track_check._entry, !196, !"_entry", i1 false, i1 false}
!199 = !{ptr @r600_cs_track_check._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.104, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 758, i32 6}
!202 = !{ptr @r600_cs_track_check._entry.103, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @r600_cs_track_check._entry_ptr.105, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.106, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 366, i32 3}
!206 = !{ptr @.str.107, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @r600_cs_track_validate_cb._entry, !205, !"_entry", i1 false, i1 false}
!208 = !{ptr @r600_cs_track_validate_cb._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.109, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 389, i32 3}
!211 = !{ptr @r600_cs_track_validate_cb._entry.108, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @r600_cs_track_validate_cb._entry_ptr.110, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @r600_cs_track_validate_cb._entry.111, !214, !"_entry", i1 false, i1 false}
!214 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 407, i32 3}
!215 = !{ptr @r600_cs_track_validate_cb._entry_ptr.112, !214, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.114, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 414, i32 3}
!218 = !{ptr @r600_cs_track_validate_cb._entry.113, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @r600_cs_track_validate_cb._entry_ptr.115, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.117, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 419, i32 3}
!222 = !{ptr @r600_cs_track_validate_cb._entry.116, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @r600_cs_track_validate_cb._entry_ptr.118, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.120, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 424, i32 3}
!226 = !{ptr @r600_cs_track_validate_cb._entry.119, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @r600_cs_track_validate_cb._entry_ptr.121, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.123, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 452, i32 4}
!230 = !{ptr @r600_cs_track_validate_cb._entry.122, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @r600_cs_track_validate_cb._entry_ptr.124, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.126, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 483, i32 5}
!234 = !{ptr @r600_cs_track_validate_cb._entry.125, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @r600_cs_track_validate_cb._entry_ptr.127, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.129, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 501, i32 4}
!238 = !{ptr @r600_cs_track_validate_cb._entry.128, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @r600_cs_track_validate_cb._entry_ptr.130, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.132, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 511, i32 3}
!242 = !{ptr @r600_cs_track_validate_cb._entry.131, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @r600_cs_track_validate_cb._entry_ptr.133, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.134, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 531, i32 3}
!246 = !{ptr @.str.135, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @r600_cs_track_validate_db._entry, !245, !"_entry", i1 false, i1 false}
!248 = !{ptr @r600_cs_track_validate_db._entry_ptr, !245, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.137, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 549, i32 3}
!251 = !{ptr @r600_cs_track_validate_db._entry.136, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @r600_cs_track_validate_db._entry_ptr.138, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.140, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 554, i32 4}
!255 = !{ptr @r600_cs_track_validate_db._entry.139, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @r600_cs_track_validate_db._entry_ptr.141, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.143, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 560, i32 4}
!259 = !{ptr @r600_cs_track_validate_db._entry.142, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @r600_cs_track_validate_db._entry_ptr.144, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.146, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 584, i32 4}
!263 = !{ptr @r600_cs_track_validate_db._entry.145, !262, !"_entry", i1 false, i1 false}
!264 = !{ptr @r600_cs_track_validate_db._entry_ptr.147, !262, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @r600_cs_track_validate_db._entry.148, !266, !"_entry", i1 false, i1 false}
!266 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 597, i32 4}
!267 = !{ptr @r600_cs_track_validate_db._entry_ptr.149, !266, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.151, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 604, i32 4}
!270 = !{ptr @r600_cs_track_validate_db._entry.150, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @r600_cs_track_validate_db._entry_ptr.152, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.154, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 609, i32 4}
!274 = !{ptr @r600_cs_track_validate_db._entry.153, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @r600_cs_track_validate_db._entry_ptr.155, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.157, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 614, i32 4}
!278 = !{ptr @r600_cs_track_validate_db._entry.156, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @r600_cs_track_validate_db._entry_ptr.158, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.160, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 623, i32 4}
!282 = !{ptr @r600_cs_track_validate_db._entry.159, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @r600_cs_track_validate_db._entry_ptr.161, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.163, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 637, i32 4}
!286 = !{ptr @r600_cs_track_validate_db._entry.162, !285, !"_entry", i1 false, i1 false}
!287 = !{ptr @r600_cs_track_validate_db._entry_ptr.164, !285, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.166, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 642, i32 4}
!290 = !{ptr @r600_cs_track_validate_db._entry.165, !289, !"_entry", i1 false, i1 false}
!291 = !{ptr @r600_cs_track_validate_db._entry_ptr.167, !289, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.169, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 681, i32 5}
!294 = !{ptr @r600_cs_track_validate_db._entry.168, !293, !"_entry", i1 false, i1 false}
!295 = !{ptr @r600_cs_track_validate_db._entry_ptr.170, !293, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @.str.172, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 694, i32 4}
!298 = !{ptr @r600_cs_track_validate_db._entry.171, !297, !"_entry", i1 false, i1 false}
!299 = !{ptr @r600_cs_track_validate_db._entry_ptr.173, !297, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @.str.174, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 977, i32 3}
!302 = !{ptr @.str.175, !301, !"<string literal>", i1 false, i1 false}
!303 = !{ptr @r600_cs_check_reg._entry, !301, !"_entry", i1 false, i1 false}
!304 = !{ptr @r600_cs_check_reg._entry_ptr, !301, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @.str.177, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1018, i32 4}
!307 = !{ptr @r600_cs_check_reg._entry.176, !306, !"_entry", i1 false, i1 false}
!308 = !{ptr @r600_cs_check_reg._entry_ptr.178, !306, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @r600_cs_check_reg._entry.179, !310, !"_entry", i1 false, i1 false}
!310 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1036, i32 5}
!311 = !{ptr @r600_cs_check_reg._entry_ptr.180, !310, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @r600_cs_check_reg._entry.181, !313, !"_entry", i1 false, i1 false}
!313 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1078, i32 4}
!314 = !{ptr @r600_cs_check_reg._entry_ptr.182, !313, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.184, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1101, i32 4}
!317 = !{ptr @r600_cs_check_reg._entry.183, !316, !"_entry", i1 false, i1 false}
!318 = !{ptr @r600_cs_check_reg._entry_ptr.185, !316, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.187, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1137, i32 5}
!321 = !{ptr @r600_cs_check_reg._entry.186, !320, !"_entry", i1 false, i1 false}
!322 = !{ptr @r600_cs_check_reg._entry_ptr.188, !320, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @.str.190, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1200, i32 5}
!325 = !{ptr @r600_cs_check_reg._entry.189, !324, !"_entry", i1 false, i1 false}
!326 = !{ptr @r600_cs_check_reg._entry_ptr.191, !324, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @r600_cs_check_reg._entry.192, !328, !"_entry", i1 false, i1 false}
!328 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1209, i32 5}
!329 = !{ptr @r600_cs_check_reg._entry_ptr.193, !328, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @r600_cs_check_reg._entry.194, !331, !"_entry", i1 false, i1 false}
!331 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1231, i32 5}
!332 = !{ptr @r600_cs_check_reg._entry_ptr.195, !331, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @r600_cs_check_reg._entry.196, !334, !"_entry", i1 false, i1 false}
!334 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1240, i32 5}
!335 = !{ptr @r600_cs_check_reg._entry_ptr.197, !334, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @r600_cs_check_reg._entry.198, !337, !"_entry", i1 false, i1 false}
!337 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1275, i32 4}
!338 = !{ptr @r600_cs_check_reg._entry_ptr.199, !337, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @r600_cs_check_reg._entry.200, !340, !"_entry", i1 false, i1 false}
!340 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1290, i32 4}
!341 = !{ptr @r600_cs_check_reg._entry_ptr.201, !340, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @r600_cs_check_reg._entry.202, !343, !"_entry", i1 false, i1 false}
!343 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1303, i32 4}
!344 = !{ptr @r600_cs_check_reg._entry_ptr.203, !343, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @r600_cs_check_reg._entry.204, !346, !"_entry", i1 false, i1 false}
!346 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1373, i32 4}
!347 = !{ptr @r600_cs_check_reg._entry_ptr.205, !346, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @.str.207, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1382, i32 4}
!350 = !{ptr @r600_cs_check_reg._entry.206, !349, !"_entry", i1 false, i1 false}
!351 = !{ptr @r600_cs_check_reg._entry_ptr.208, !349, !"_entry_ptr", i1 false, i1 false}
!352 = !{ptr @r600_cs_check_reg._entry.209, !353, !"_entry", i1 false, i1 false}
!353 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1392, i32 3}
!354 = !{ptr @r600_cs_check_reg._entry_ptr.210, !353, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @r600_reg_safe_bm, !356, !"r600_reg_safe_bm", i1 false, i1 false}
!356 = !{!"./drivers/gpu/drm/radeon/r600_reg_safe.h", i32 1, i32 23}
!357 = !{ptr @.str.211, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1548, i32 3}
!359 = !{ptr @.str.212, !358, !"<string literal>", i1 false, i1 false}
!360 = !{ptr @r600_check_texture_resource._entry, !358, !"_entry", i1 false, i1 false}
!361 = !{ptr @r600_check_texture_resource._entry_ptr, !358, !"_entry_ptr", i1 false, i1 false}
!362 = !{ptr @.str.214, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1552, i32 3}
!364 = !{ptr @r600_check_texture_resource._entry.213, !363, !"_entry", i1 false, i1 false}
!365 = !{ptr @r600_check_texture_resource._entry_ptr.215, !363, !"_entry_ptr", i1 false, i1 false}
!366 = !{ptr @.str.217, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1559, i32 3}
!368 = !{ptr @r600_check_texture_resource._entry.216, !367, !"_entry", i1 false, i1 false}
!369 = !{ptr @r600_check_texture_resource._entry_ptr.218, !367, !"_entry_ptr", i1 false, i1 false}
!370 = !{ptr @.str.220, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1567, i32 3}
!372 = !{ptr @r600_check_texture_resource._entry.219, !371, !"_entry", i1 false, i1 false}
!373 = !{ptr @r600_check_texture_resource._entry_ptr.221, !371, !"_entry_ptr", i1 false, i1 false}
!374 = !{ptr @.str.223, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1572, i32 3}
!376 = !{ptr @r600_check_texture_resource._entry.222, !375, !"_entry", i1 false, i1 false}
!377 = !{ptr @r600_check_texture_resource._entry_ptr.224, !375, !"_entry_ptr", i1 false, i1 false}
!378 = !{ptr @.str.226, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1577, i32 3}
!380 = !{ptr @r600_check_texture_resource._entry.225, !379, !"_entry", i1 false, i1 false}
!381 = !{ptr @r600_check_texture_resource._entry_ptr.227, !379, !"_entry_ptr", i1 false, i1 false}
!382 = !{ptr @.str.229, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1583, i32 3}
!384 = !{ptr @r600_check_texture_resource._entry.228, !383, !"_entry", i1 false, i1 false}
!385 = !{ptr @r600_check_texture_resource._entry_ptr.230, !383, !"_entry_ptr", i1 false, i1 false}
!386 = !{ptr @.str.232, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1597, i32 3}
!388 = !{ptr @r600_check_texture_resource._entry.231, !387, !"_entry", i1 false, i1 false}
!389 = !{ptr @r600_check_texture_resource._entry_ptr.233, !387, !"_entry_ptr", i1 false, i1 false}
!390 = !{ptr @.str.235, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1601, i32 3}
!392 = !{ptr @r600_check_texture_resource._entry.234, !391, !"_entry", i1 false, i1 false}
!393 = !{ptr @r600_check_texture_resource._entry_ptr.236, !391, !"_entry_ptr", i1 false, i1 false}
!394 = !{ptr @.str.237, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1618, i32 3}
!396 = !{ptr @r600_is_safe_reg._entry, !395, !"_entry", i1 false, i1 false}
!397 = !{ptr @r600_is_safe_reg._entry_ptr, !395, !"_entry_ptr", i1 false, i1 false}
!398 = !{ptr @r600_is_safe_reg._entry.238, !399, !"_entry", i1 false, i1 false}
!399 = !{!"../drivers/gpu/drm/radeon/r600_cs.c", i32 1624, i32 2}
!400 = !{ptr @r600_is_safe_reg._entry_ptr.239, !399, !"_entry_ptr", i1 false, i1 false}
!401 = !{i32 1, !"wchar_size", i32 2}
!402 = !{i32 1, !"min_enum_size", i32 4}
!403 = !{i32 8, !"branch-target-enforcement", i32 0}
!404 = !{i32 8, !"sign-return-address", i32 0}
!405 = !{i32 8, !"sign-return-address-all", i32 0}
!406 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!407 = !{i32 7, !"uwtable", i32 1}
!408 = !{i32 7, !"frame-pointer", i32 2}
!409 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!410 = !{i8 0, i8 2}
!411 = !{i32 0, i32 33}
!412 = !{!"auto-init"}
!413 = distinct !{!413, !414}
!414 = !{!"llvm.loop.peeled.count", i32 1}
