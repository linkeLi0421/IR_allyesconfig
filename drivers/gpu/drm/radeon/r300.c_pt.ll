; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/r300.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/r300.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
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
%struct.radeon_fence = type { %struct.dma_fence, ptr, i64, i32, i8, %struct.wait_queue_entry }
%struct.dma_fence = type { ptr, ptr, %union.anon.84, i64, i64, i32, %struct.kref, i32 }
%union.anon.84 = type { i64 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.r100_mc_save = type { i32, i32, i32, i32, i32, i32 }
%struct.radeon_cs_packet = type { i32, i32, i32, i32, i32, i32 }
%struct.radeon_cs_parser = type { ptr, ptr, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, i32, ptr, ptr, ptr, ptr, %struct.radeon_ib, %struct.radeon_ib, ptr, i32, i32, i32, i32, i32, %struct.ww_acquire_ctx }
%struct.radeon_ib = type { ptr, i32, i64, ptr, i32, ptr, ptr, i8, %struct.radeon_sync }
%struct.radeon_sync = type { [4 x ptr], [8 x ptr], ptr }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16, i32, ptr, ptr, %struct.lockdep_map, i32, i32 }
%struct.radeon_cs_chunk = type { i32, ptr, ptr }
%struct.radeon_bo_list = type { ptr, %struct.ttm_validate_buffer, i64, i32, i32, i32 }
%struct.ttm_validate_buffer = type { %struct.list_head, ptr, i32 }
%struct.r100_cs_track = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x %struct.r100_cs_track_array], [4 x %struct.r100_cs_track_cb], %struct.r100_cs_track_cb, %struct.r100_cs_track_cb, [16 x %struct.r100_cs_track_texture], i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.r100_cs_track_array = type { ptr, i32 }
%struct.r100_cs_track_cb = type { ptr, i32, i32, i32 }
%struct.r100_cs_track_texture = type { ptr, [5 x %struct.r100_cs_cube_info], i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32 }
%struct.r100_cs_cube_info = type { ptr, i32, i32, i32 }
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

@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/radeon/r300.c\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"RV370 PCIE GART already initialized\0A\00", [59 x i8] zeroinitializer }, align 32
@rv370_pcie_gart_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 158, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"No VRAM object for PCIE GART.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rv370_pcie_gart_enable\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rv370_pcie_gart_enable._entry_ptr = internal global ptr @rv370_pcie_gart_enable._entry, section ".printk_index", align 4
@rv370_pcie_gart_enable._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016[drm] PCIE GART of %uM enabled (table at 0x%016llX).\0A\00", [40 x i8] zeroinitializer }, align 32
@rv370_pcie_gart_enable._entry_ptr.8 = internal global ptr @rv370_pcie_gart_enable._entry.6, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@r300_asic_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str, i32 426, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"(%s:%d) RBBM_STATUS=0x%08X\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"r300_asic_reset\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@r300_asic_reset._entry_ptr = internal global ptr @r300_asic_reset._entry, section ".printk_index", align 4
@r300_asic_reset._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str, i32 445, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@r300_asic_reset._entry_ptr.13 = internal global ptr @r300_asic_reset._entry.12, section ".printk_index", align 4
@r300_asic_reset._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str, i32 457, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@r300_asic_reset._entry_ptr.15 = internal global ptr @r300_asic_reset._entry.14, section ".printk_index", align 4
@r300_asic_reset._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.10, ptr @.str, i32 463, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to reset GPU\0A\00", [43 x i8] zeroinitializer }, align 32
@r300_asic_reset._entry_ptr.18 = internal global ptr @r300_asic_reset._entry.16, section ".printk_index", align 4
@r300_asic_reset._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.10, ptr @.str, i32 466, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"GPU reset succeed\0A\00", [45 x i8] zeroinitializer }, align 32
@r300_asic_reset._entry_ptr.21 = internal global ptr @r300_asic_reset._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unknown packet type %d !\0A\00", [38 x i8] zeroinitializer }, align 32
@r300_reg_safe_bm = internal constant { [159 x i32], [132 x i8] } { [159 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 402595839, i32 -4, i32 -1, i32 -13566017, i32 -8, i32 -1008271361, i32 -2337, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -4033, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -4146, i32 -267468801, i32 8126464, i32 -268435336, i32 -16777207, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -2049, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -952, i32 -1, i32 -2, i32 -1, i32 956272464, i32 -491390, i32 -268435444, i32 -85980161, i32 65535, i32 -1, i32 -1, i32 0, i32 0, i32 49408, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -65536, i32 -1, i32 -8323073, i32 0, i32 0, i32 0, i32 0, i32 261131, i32 -769, i32 -4195431], [132 x i8] zeroinitializer }, align 32
@r300_mc_program._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str, i32 1348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016[drm] Failed to wait MC idle before programming MC.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"r300_mc_program\00", [16 x i8] zeroinitializer }, align 32
@r300_mc_program._entry_ptr = internal global ptr @r300_mc_program._entry, section ".printk_index", align 4
@radeon_dynclks = external dso_local local_unnamed_addr global i32, align 4
@r300_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str, i32 1452, ptr @.str.27, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"GPU reset failed ! (0xE40=0x%08X, 0x7C0=0x%08X)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"r300_resume\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@r300_resume._entry_ptr = internal global ptr @r300_resume._entry, section ".printk_index", align 4
@r300_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str, i32 1521, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Expecting combios for RS400/RS480 GPU\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"r300_init\00", [22 x i8] zeroinitializer }, align 32
@r300_init._entry_ptr = internal global ptr @r300_init._entry, section ".printk_index", align 4
@r300_init._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.29, ptr @.str, i32 1533, ptr @.str.27, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@r300_init._entry_ptr.31 = internal global ptr @r300_init._entry.30, section ".printk_index", align 4
@r300_init._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.29, ptr @.str, i32 1576, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Disabling GPU acceleration\0A\00", [36 x i8] zeroinitializer }, align 32
@r300_init._entry_ptr.34 = internal global ptr @r300_init._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"radeon: writing more dwords to the ring than expected!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rv370_pcie_gart_info\00", [43 x i8] zeroinitializer }, align 32
@rv370_debugfs_pcie_gart_info_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rv370_debugfs_pcie_gart_info_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PCIE_TX_GART_CNTL 0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PCIE_TX_GART_BASE 0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"PCIE_TX_GART_START_LO 0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"PCIE_TX_GART_START_HI 0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"PCIE_TX_GART_END_LO 0x%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"PCIE_TX_GART_END_HI 0x%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PCIE_TX_GART_ERROR 0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"No reloc for ib[%d]=0x%04X\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Invalid RB3D_CCTL: Cannot enable CMASK.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Invalid color buffer format (%d)!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Invalid color buffer format (%d) !\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Invalid z buffer format (%d) !\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid texture format %u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Forbidden bit TXFORMAT_MSB\0A\00", [36 x i8] zeroinitializer }, align 32
@r300_packet0_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str, i32 1168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013Forbidden register 0x%04X in cs at %d (val=%08x)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"r300_packet0_check\00", [45 x i8] zeroinitializer }, align 32
@r300_packet0_check._entry_ptr = internal global ptr @r300_packet0_check._entry, section ".printk_index", align 4
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"No reloc for packet3 %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"PRIM_WALK must be 3 for IMMD draw\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Packet3 opcode %x not supported\0A\00", [63 x i8] zeroinitializer }, align 32
@r300_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str, i32 1408, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed initializing CP fences (%d).\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"r300_startup\00", [19 x i8] zeroinitializer }, align 32
@r300_startup._entry_ptr = internal global ptr @r300_startup._entry, section ".printk_index", align 4
@r300_startup._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str, i32 1424, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed initializing CP (%d).\0A\00", [34 x i8] zeroinitializer }, align 32
@r300_startup._entry_ptr.60 = internal global ptr @r300_startup._entry.58, section ".printk_index", align 4
@r300_startup._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.57, ptr @.str, i32 1430, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"IB initialization failed (%d).\0A\00", [32 x i8] zeroinitializer }, align 32
@r300_startup._entry_ptr.63 = internal global ptr @r300_startup._entry.61, section ".printk_index", align 4
@r300_gpu_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str, i32 394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\014Failed to wait GUI idle while programming pipes. Bad things might happen.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"r300_gpu_init\00", [18 x i8] zeroinitializer }, align 32
@r300_gpu_init._entry_ptr = internal global ptr @r300_gpu_init._entry, section ".printk_index", align 4
@r300_gpu_init._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str, i32 405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@r300_gpu_init._entry_ptr.67 = internal global ptr @r300_gpu_init._entry.66, section ".printk_index", align 4
@r300_gpu_init._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.65, ptr @.str, i32 408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\014Failed to wait MC idle while programming pipes. Bad things might happen.\0A\00", [52 x i8] zeroinitializer }, align 32
@r300_gpu_init._entry_ptr.70 = internal global ptr @r300_gpu_init._entry.68, section ".printk_index", align 4
@r300_gpu_init._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.65, ptr @.str, i32 411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016[drm] radeon: %d quad pipes, %d Z pipes initialized\0A\00", [41 x i8] zeroinitializer }, align 32
@r300_gpu_init._entry_ptr.73 = internal global ptr @r300_gpu_init._entry.71, section ".printk_index", align 4
@switch.table.r300_ring_start = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 23, i32 29, i32 31], [20 x i8] zeroinitializer }, align 32
@switch.table.r300_mc_init = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 64, i32 128, i32 256], [20 x i8] zeroinitializer }, align 32
@switch.table.rv370_set_pcie_lanes = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 0, i32 1, i32 2, i32 6, i32 3, i32 6, i32 6, i32 6, i32 4, i32 6, i32 6, i32 6, i32 5], [44 x i8] zeroinitializer }, align 32
@switch.table.rv370_get_pcie_lanes = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 1, i32 2, i32 4, i32 8], [44 x i8] zeroinitializer }, align 32
@switch.table.r300_packet0_check = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2, i32 2, i32 4], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.74 = internal global [14 x i64] [i64 12, i64 32, i64 16, i64 40, i64 41, i64 42, i64 47, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56]
@__sancov_gen_cov_switch_values.75 = internal global [119 x i64] [i64 117, i64 32, i64 536, i64 5160, i64 5164, i64 8324, i64 8328, i64 8372, i64 8500, i64 16424, i64 16644, i64 17316, i64 17380, i64 17408, i64 17412, i64 17416, i64 17420, i64 17424, i64 17428, i64 17432, i64 17436, i64 17440, i64 17444, i64 17448, i64 17452, i64 17456, i64 17460, i64 17464, i64 17468, i64 17536, i64 17540, i64 17544, i64 17548, i64 17552, i64 17556, i64 17560, i64 17564, i64 17568, i64 17572, i64 17576, i64 17580, i64 17584, i64 17588, i64 17592, i64 17596, i64 17600, i64 17604, i64 17608, i64 17612, i64 17616, i64 17620, i64 17624, i64 17628, i64 17632, i64 17636, i64 17640, i64 17644, i64 17648, i64 17652, i64 17656, i64 17660, i64 17664, i64 17668, i64 17672, i64 17676, i64 17680, i64 17684, i64 17688, i64 17692, i64 17696, i64 17700, i64 17704, i64 17708, i64 17712, i64 17716, i64 17720, i64 17724, i64 17728, i64 17732, i64 17736, i64 17740, i64 17744, i64 17748, i64 17752, i64 17756, i64 17760, i64 17764, i64 17768, i64 17772, i64 17776, i64 17780, i64 17784, i64 17788, i64 19432, i64 19968, i64 19972, i64 19980, i64 20008, i64 20012, i64 20016, i64 20020, i64 20024, i64 20028, i64 20032, i64 20036, i64 20096, i64 20100, i64 20104, i64 20224, i64 20240, i64 20252, i64 20256, i64 20260, i64 20272, i64 20276, i64 20292, i64 20308, i64 20316, i64 25912]
@__sancov_gen_cov_switch_values.76 = internal global [13 x i64] [i64 11, i64 32, i64 3, i64 4, i64 5, i64 6, i64 7, i64 9, i64 10, i64 11, i64 12, i64 13, i64 15]
@__sancov_gen_cov_switch_values.77 = internal global [32 x i64] [i64 30, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 20, i64 21, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31]
@__sancov_gen_cov_switch_values.78 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 6]
@__sancov_gen_cov_switch_values.79 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 6]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 10]
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 135, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 158, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 184, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 426, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 445, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 457, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 463, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 466, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1310, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant [17 x i8] c"r300_reg_safe_bm\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [41 x i8] c"./drivers/gpu/drm/radeon/r300_reg_safe.h\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1, i32 23 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1348, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1450, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1521, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1530, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1576, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant [35 x i8] c"../drivers/gpu/drm/radeon/radeon.h\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 2721, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 621, i32 22 }
@___asan_gen_.193 = private unnamed_addr constant [34 x i8] c"rv370_debugfs_pcie_gart_info_fops\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 613, i32 1 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 597, i32 16 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 599, i32 16 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 601, i32 16 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 603, i32 16 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 605, i32 16 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 607, i32 16 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 609, i32 16 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 647, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 764, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 814, i32 5 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 829, i32 4 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 855, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 964, i32 5 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1043, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1167, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1193, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1209, i32 4 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1274, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1408, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1424, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1430, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 394, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 405, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 408, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.298 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.299 = private constant [33 x i8] c"../drivers/gpu/drm/radeon/r300.c\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 410, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant [29 x i8] c"switch.table.r300_ring_start\00", align 1
@___asan_gen_.302 = private unnamed_addr constant [26 x i8] c"switch.table.r300_mc_init\00", align 1
@___asan_gen_.303 = private unnamed_addr constant [34 x i8] c"switch.table.rv370_set_pcie_lanes\00", align 1
@___asan_gen_.304 = private unnamed_addr constant [34 x i8] c"switch.table.rv370_get_pcie_lanes\00", align 1
@___asan_gen_.305 = private unnamed_addr constant [32 x i8] c"switch.table.r300_packet0_check\00", align 1
@llvm.compiler.used = appending global [97 x ptr] [ptr @r300_asic_reset._entry, ptr @r300_asic_reset._entry.12, ptr @r300_asic_reset._entry.14, ptr @r300_asic_reset._entry.16, ptr @r300_asic_reset._entry.19, ptr @r300_asic_reset._entry_ptr, ptr @r300_asic_reset._entry_ptr.13, ptr @r300_asic_reset._entry_ptr.15, ptr @r300_asic_reset._entry_ptr.18, ptr @r300_asic_reset._entry_ptr.21, ptr @r300_gpu_init._entry, ptr @r300_gpu_init._entry.66, ptr @r300_gpu_init._entry.68, ptr @r300_gpu_init._entry.71, ptr @r300_gpu_init._entry_ptr, ptr @r300_gpu_init._entry_ptr.67, ptr @r300_gpu_init._entry_ptr.70, ptr @r300_gpu_init._entry_ptr.73, ptr @r300_init._entry, ptr @r300_init._entry.30, ptr @r300_init._entry.32, ptr @r300_init._entry_ptr, ptr @r300_init._entry_ptr.31, ptr @r300_init._entry_ptr.34, ptr @r300_mc_program._entry, ptr @r300_mc_program._entry_ptr, ptr @r300_packet0_check._entry, ptr @r300_packet0_check._entry_ptr, ptr @r300_resume._entry, ptr @r300_resume._entry_ptr, ptr @r300_startup._entry, ptr @r300_startup._entry.58, ptr @r300_startup._entry.61, ptr @r300_startup._entry_ptr, ptr @r300_startup._entry_ptr.60, ptr @r300_startup._entry_ptr.63, ptr @rv370_pcie_gart_enable._entry, ptr @rv370_pcie_gart_enable._entry.6, ptr @rv370_pcie_gart_enable._entry_ptr, ptr @rv370_pcie_gart_enable._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @r300_reg_safe_bm, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @rv370_debugfs_pcie_gart_info_fops, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.69, ptr @.str.72, ptr @switch.table.r300_ring_start, ptr @switch.table.r300_mc_init, ptr @switch.table.rv370_set_pcie_lanes, ptr @switch.table.rv370_get_pcie_lanes, ptr @switch.table.r300_packet0_check], section "llvm.metadata"
@0 = internal global [77 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv370_pcie_gart_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv370_pcie_gart_enable._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r300_asic_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r300_asic_reset._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r300_asic_reset._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r300_asic_reset._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r300_asic_reset._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r300_reg_safe_bm to i32), i32 636, i32 768, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r300_mc_program._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r300_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r300_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r300_init._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r300_init._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv370_debugfs_pcie_gart_info_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r300_packet0_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r300_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r300_startup._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r300_startup._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r300_gpu_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r300_gpu_init._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r300_gpu_init._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r300_gpu_init._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.r300_ring_start to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.r300_mc_init to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rv370_set_pcie_lanes to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rv370_get_pcie_lanes to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.r300_packet0_check to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv370_pcie_rreg(ptr noundef %rdev, i32 noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_idx_lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 23
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock) #8
  %pcie_reg_mask = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 36
  %0 = ptrtoint ptr %pcie_reg_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pcie_reg_mask, align 8
  %and = and i32 %1, %reg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %2 = tail call i32 @llvm.bswap.i32(i32 %and) #8
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %3 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #8, !srcloc !145
  %5 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %6, i32 52
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock, i32 noundef %call2) #8
  ret i32 %8
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv370_pcie_wreg(ptr noundef %rdev, i32 noundef %reg, i32 noundef %v) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_idx_lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 23
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock) #8
  %pcie_reg_mask = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 36
  %0 = ptrtoint ptr %pcie_reg_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pcie_reg_mask, align 8
  %and = and i32 %1, %reg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %2 = tail call i32 @llvm.bswap.i32(i32 %and) #8
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %3 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #8, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %5 = tail call i32 @llvm.bswap.i32(i32 %v) #8
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %7, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %5) #8, !srcloc !145
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock, i32 noundef %call2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv370_pcie_gart_tlb_flush(ptr noundef %rdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_idx_lock.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 23
  %pcie_reg_mask.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 36
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %cmp = phi i1 [ true, %entry ], [ false, %for.body.for.body_crit_edge ]
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i) #8
  %0 = ptrtoint ptr %pcie_reg_mask.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pcie_reg_mask.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %and.i = shl i32 %1, 24
  %2 = and i32 %and.i, 268435456
  %3 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %2) #8, !srcloc !145
  %5 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %6, i32 52
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i, i32 noundef %call2.i) #8
  %8 = or i32 %7, 65536
  %call2.i8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i) #8
  %9 = ptrtoint ptr %pcie_reg_mask.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pcie_reg_mask.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %and.i10 = shl i32 %10, 24
  %11 = and i32 %and.i10, 268435456
  %12 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i12 = getelementptr i8, ptr %13, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i12, i32 %11) #8, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %15, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %8) #8, !srcloc !145
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i, i32 noundef %call2.i8) #8
  %call2.i14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i) #8
  %16 = ptrtoint ptr %pcie_reg_mask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pcie_reg_mask.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %and.i16 = shl i32 %17, 24
  %18 = and i32 %and.i16, 268435456
  %19 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i18 = getelementptr i8, ptr %20, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i18, i32 %18) #8, !srcloc !145
  %21 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i12.i19 = getelementptr i8, ptr %22, i32 52
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i19) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i, i32 noundef %call2.i14) #8
  %call2.i21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i) #8
  %24 = ptrtoint ptr %pcie_reg_mask.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pcie_reg_mask.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %and.i23 = shl i32 %25, 24
  %26 = and i32 %and.i23, 268435456
  %27 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i25 = getelementptr i8, ptr %28, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i25, i32 %26) #8, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %29 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i11.i26 = getelementptr i8, ptr %30, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i26, i32 %7) #8, !srcloc !145
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i, i32 noundef %call2.i21) #8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %do.body

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  tail call void @arm_heavy_mb() #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @rv370_pcie_gart_get_page_entry(i64 noundef %addr, i32 noundef %flags) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %addr to i32
  %shr = lshr i32 %conv, 8
  %sh.diff = lshr i64 %addr, 8
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %shl = and i32 %tr.sh.diff, -16777216
  %and6 = shl i32 %flags, 2
  %0 = and i32 %and6, 8
  %and8 = and i32 %flags, 4
  %and13 = lshr i32 %flags, 3
  %and13.lobit = and i32 %and13, 1
  %1 = xor i32 %and13.lobit, 1
  %or = or i32 %and8, %shr
  %2 = or i32 %or, %shl
  %3 = or i32 %2, %0
  %addr.addr.225 = or i32 %3, %1
  %addr.addr.2 = zext i32 %addr.addr.225 to i64
  ret i64 %addr.addr.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv370_pcie_gart_set_page(ptr nocapture noundef readonly %rdev, i32 noundef %i, i64 noundef %entry1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ptr2 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 2
  %0 = ptrtoint ptr %ptr2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr2, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %conv = trunc i64 %entry1 to i32
  %2 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %mul = shl i32 %i, 2
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #8, !srcloc !145
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv370_pcie_gart_init(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %robj = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 1
  %0 = ptrtoint ptr %robj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %robj, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end17, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 135, i32 noundef 9, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end17:                                         ; preds = %entry
  %call = tail call i32 @radeon_gart_init(ptr noundef %rdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool18.not = icmp eq i32 %call, 0
  br i1 %tobool18.not, label %if.end20, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %ddev.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %2 = ptrtoint ptr %ddev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddev.i, align 4
  %primary.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %primary.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %primary.i, align 4
  %debugfs_root.i = getelementptr inbounds %struct.drm_minor, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %debugfs_root.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %debugfs_root.i, align 4
  %call.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.36, i16 noundef zeroext 292, ptr noundef %7, ptr noundef %rdev, ptr noundef nonnull @rv370_debugfs_pcie_gart_info_fops) #8
  %num_gpu_pages = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 3
  %8 = ptrtoint ptr %num_gpu_pages to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_gpu_pages, align 4
  %mul = shl i32 %9, 2
  %table_size = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 5
  %10 = ptrtoint ptr %table_size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul, ptr %table_size, align 4
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %11 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %asic, align 8
  %gart23 = getelementptr inbounds %struct.radeon_asic, ptr %12, i32 0, i32 12
  %13 = ptrtoint ptr %gart23 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @rv370_pcie_gart_tlb_flush, ptr %gart23, align 4
  %14 = load ptr, ptr %asic, align 8
  %get_page_entry = getelementptr inbounds %struct.radeon_asic, ptr %14, i32 0, i32 12, i32 1
  %15 = ptrtoint ptr %get_page_entry to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @rv370_pcie_gart_get_page_entry, ptr %get_page_entry, align 4
  %16 = load ptr, ptr %asic, align 8
  %set_page = getelementptr inbounds %struct.radeon_asic, ptr %16, i32 0, i32 12, i32 2
  %17 = ptrtoint ptr %set_page to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @rv370_pcie_gart_set_page, ptr %set_page, align 4
  %call28 = tail call i32 @radeon_gart_table_vram_alloc(ptr noundef %rdev) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end17.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %call28, %if.end20 ], [ %call, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_gart_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_gart_table_vram_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv370_pcie_gart_enable(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %gart = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43
  %robj = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 1
  %0 = ptrtoint ptr %robj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %robj, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @radeon_gart_table_vram_pin(ptr noundef %rdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %pcie_idx_lock.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 23
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i) #8
  %pcie_reg_mask.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 36
  %4 = ptrtoint ptr %pcie_reg_mask.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pcie_reg_mask.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %and.i = shl i32 %5, 24
  %6 = and i32 %and.i, 268435456
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %7 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %6) #8, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %9 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %10, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 100663296) #8, !srcloc !145
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i, i32 noundef %call2.i) #8
  %gtt_start = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 6
  %11 = ptrtoint ptr %gtt_start to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %gtt_start, align 8
  %conv = trunc i64 %12 to i32
  %call2.i49 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i) #8
  %13 = ptrtoint ptr %pcie_reg_mask.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pcie_reg_mask.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %and.i51 = shl i32 %14, 24
  %15 = and i32 %and.i51, 335544320
  %16 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i53 = getelementptr i8, ptr %17, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i53, i32 %15) #8, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %18 = tail call i32 @llvm.bswap.i32(i32 %conv) #8
  %19 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i11.i54 = getelementptr i8, ptr %20, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i54, i32 %18) #8, !srcloc !145
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i, i32 noundef %call2.i49) #8
  %gtt_end = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 7
  %21 = ptrtoint ptr %gtt_end to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %gtt_end, align 8
  %23 = trunc i64 %22 to i32
  %conv4 = and i32 %23, -4096
  %call2.i56 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i) #8
  %24 = ptrtoint ptr %pcie_reg_mask.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pcie_reg_mask.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %and.i58 = shl i32 %25, 24
  %26 = and i32 %and.i58, 369098752
  %27 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i60 = getelementptr i8, ptr %28, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i60, i32 %26) #8, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %29 = tail call i32 @llvm.bswap.i32(i32 %conv4) #8
  %30 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i11.i61 = getelementptr i8, ptr %31, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i61, i32 %29) #8, !srcloc !145
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i, i32 noundef %call2.i56) #8
  %call2.i63 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i) #8
  %32 = ptrtoint ptr %pcie_reg_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pcie_reg_mask.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %and.i65 = shl i32 %33, 24
  %34 = and i32 %and.i65, 352321536
  %35 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i67 = getelementptr i8, ptr %36, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i67, i32 %34) #8, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %37 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i11.i68 = getelementptr i8, ptr %38, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i68, i32 0) #8, !srcloc !145
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i, i32 noundef %call2.i63) #8
  %call2.i70 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i) #8
  %39 = ptrtoint ptr %pcie_reg_mask.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pcie_reg_mask.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %and.i72 = shl i32 %40, 24
  %41 = and i32 %and.i72, 385875968
  %42 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i74 = getelementptr i8, ptr %43, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i74, i32 %41) #8, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %44 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i11.i75 = getelementptr i8, ptr %45, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i75, i32 0) #8, !srcloc !145
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i, i32 noundef %call2.i70) #8
  %46 = ptrtoint ptr %gart to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %gart, align 8
  %call2.i77 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i) #8
  %48 = ptrtoint ptr %pcie_reg_mask.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pcie_reg_mask.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %and.i79 = shl i32 %49, 24
  %50 = and i32 %and.i79, 318767104
  %51 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i81 = getelementptr i8, ptr %52, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i81, i32 %50) #8, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %53 = tail call i32 @llvm.bswap.i32(i32 %47) #8
  %54 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i11.i82 = getelementptr i8, ptr %55, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i82, i32 %53) #8, !srcloc !145
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i, i32 noundef %call2.i77) #8
  %vram_start = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 8
  %56 = ptrtoint ptr %vram_start to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %vram_start, align 8
  %conv8 = trunc i64 %57 to i32
  %call2.i84 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i) #8
  %58 = ptrtoint ptr %pcie_reg_mask.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pcie_reg_mask.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %and.i86 = shl i32 %59, 24
  %60 = and i32 %and.i86, 285212672
  %61 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i88 = getelementptr i8, ptr %62, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i88, i32 %60) #8, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %63 = tail call i32 @llvm.bswap.i32(i32 %conv8) #8
  %64 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i11.i89 = getelementptr i8, ptr %65, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i89, i32 %63) #8, !srcloc !145
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i, i32 noundef %call2.i84) #8
  %call2.i91 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i) #8
  %66 = ptrtoint ptr %pcie_reg_mask.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pcie_reg_mask.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %and.i93 = shl i32 %67, 24
  %68 = and i32 %and.i93, 301989888
  %69 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i95 = getelementptr i8, ptr %70, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i95, i32 %68) #8, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %71 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i11.i96 = getelementptr i8, ptr %72, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i96, i32 0) #8, !srcloc !145
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i, i32 noundef %call2.i91) #8
  %call2.i98 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i) #8
  %73 = ptrtoint ptr %pcie_reg_mask.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %pcie_reg_mask.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %and.i100 = shl i32 %74, 24
  %75 = and i32 %and.i100, 402653184
  %76 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i102 = getelementptr i8, ptr %77, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i102, i32 %75) #8, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %78 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i11.i103 = getelementptr i8, ptr %79, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i103, i32 0) #8, !srcloc !145
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i, i32 noundef %call2.i98) #8
  %call2.i105 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i) #8
  %80 = ptrtoint ptr %pcie_reg_mask.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %pcie_reg_mask.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %and.i107 = shl i32 %81, 24
  %82 = and i32 %and.i107, 268435456
  %83 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i109 = getelementptr i8, ptr %84, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i109, i32 %82) #8, !srcloc !145
  %85 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %86, i32 52
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i, i32 noundef %call2.i105) #8
  %88 = or i32 %87, 117440512
  %call2.i111 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i) #8
  %89 = ptrtoint ptr %pcie_reg_mask.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %pcie_reg_mask.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %and.i113 = shl i32 %90, 24
  %91 = and i32 %and.i113, 268435456
  %92 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i115 = getelementptr i8, ptr %93, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i115, i32 %91) #8, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %94 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i11.i116 = getelementptr i8, ptr %95, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i116, i32 %88) #8, !srcloc !145
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i, i32 noundef %call2.i111) #8
  tail call void @rv370_pcie_gart_tlb_flush(ptr noundef %rdev)
  %gtt_size = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 5
  %96 = ptrtoint ptr %gtt_size to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %gtt_size, align 8
  %shr = lshr i64 %97, 20
  %conv16 = trunc i64 %shr to i32
  %conv17 = zext i32 %47 to i64
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv16, i64 noundef %conv17) #11
  %ready = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 8
  %98 = ptrtoint ptr %ready to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 1, ptr %ready, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end2 ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_gart_table_vram_pin(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv370_pcie_gart_disable(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_idx_lock.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 23
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i) #8
  %pcie_reg_mask.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 36
  %0 = ptrtoint ptr %pcie_reg_mask.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pcie_reg_mask.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %and.i = shl i32 %1, 24
  %2 = and i32 %and.i, 335544320
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %3 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %2) #8, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %5 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %6, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 0) #8, !srcloc !145
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i, i32 noundef %call2.i) #8
  %call2.i9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i) #8
  %7 = ptrtoint ptr %pcie_reg_mask.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pcie_reg_mask.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %and.i11 = shl i32 %8, 24
  %9 = and i32 %and.i11, 369098752
  %10 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i13 = getelementptr i8, ptr %11, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i13, i32 %9) #8, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i11.i14 = getelementptr i8, ptr %13, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i14, i32 0) #8, !srcloc !145
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i, i32 noundef %call2.i9) #8
  %call2.i16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i) #8
  %14 = ptrtoint ptr %pcie_reg_mask.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pcie_reg_mask.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %and.i18 = shl i32 %15, 24
  %16 = and i32 %and.i18, 352321536
  %17 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i20 = getelementptr i8, ptr %18, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i20, i32 %16) #8, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %19 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i11.i21 = getelementptr i8, ptr %20, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i21, i32 0) #8, !srcloc !145
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i, i32 noundef %call2.i16) #8
  %call2.i23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i) #8
  %21 = ptrtoint ptr %pcie_reg_mask.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pcie_reg_mask.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %and.i25 = shl i32 %22, 24
  %23 = and i32 %and.i25, 385875968
  %24 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i27 = getelementptr i8, ptr %25, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i27, i32 %23) #8, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %26 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i11.i28 = getelementptr i8, ptr %27, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i28, i32 0) #8, !srcloc !145
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i, i32 noundef %call2.i23) #8
  %call2.i30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i) #8
  %28 = ptrtoint ptr %pcie_reg_mask.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pcie_reg_mask.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %and.i32 = shl i32 %29, 24
  %30 = and i32 %and.i32, 268435456
  %31 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i34 = getelementptr i8, ptr %32, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i34, i32 %30) #8, !srcloc !145
  %33 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %34, i32 52
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i, i32 noundef %call2.i30) #8
  %36 = and i32 %35, -117440513
  %37 = or i32 %36, 100663296
  %call2.i36 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i) #8
  %38 = ptrtoint ptr %pcie_reg_mask.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pcie_reg_mask.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %and.i38 = shl i32 %39, 24
  %40 = and i32 %and.i38, 268435456
  %41 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i40 = getelementptr i8, ptr %42, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i40, i32 %40) #8, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %43 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i11.i41 = getelementptr i8, ptr %44, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i41, i32 %37) #8, !srcloc !145
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i, i32 noundef %call2.i36) #8
  tail call void @radeon_gart_table_vram_unpin(ptr noundef %rdev) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_gart_table_vram_unpin(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv370_pcie_gart_fini(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @radeon_gart_fini(ptr noundef %rdev) #8
  tail call void @rv370_pcie_gart_disable(ptr noundef %rdev)
  tail call void @radeon_gart_table_vram_free(ptr noundef %rdev) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_gart_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_gart_table_vram_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r300_fence_ring_emit(ptr noundef %rdev, ptr nocapture noundef readonly %fence) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ring2 = getelementptr inbounds %struct.radeon_fence, ptr %fence, i32 0, i32 3
  %0 = ptrtoint ptr %ring2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ring2, align 8
  %count_dw.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 11
  %2 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count_dw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp slt i32 %3, 1
  br i1 %cmp.i, label %if.then.i, label %entry.radeon_ring_write.exit_crit_edge

entry.radeon_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
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
  store volatile i32 4344, ptr %arrayidx.i, align 4
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i32 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i32, label %if.then.i33, label %radeon_ring_write.exit.radeon_ring_write.exit43_crit_edge

radeon_ring_write.exit.radeon_ring_write.exit43_crit_edge: ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit43

if.then.i33:                                      ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %radeon_ring_write.exit43

radeon_ring_write.exit43:                         ; preds = %if.then.i33, %radeon_ring_write.exit.radeon_ring_write.exit43_crit_edge
  %16 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ring1.i, align 8
  %18 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %wptr.i, align 4
  %inc.i36 = add i32 %19, 1
  store i32 %inc.i36, ptr %wptr.i, align 4
  %arrayidx.i37 = getelementptr i32, ptr %17, i32 %19
  %20 = ptrtoint ptr %arrayidx.i37 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 0, ptr %arrayidx.i37, align 4
  %21 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ptr_mask.i, align 4
  %23 = load i32, ptr %wptr.i, align 4
  %and.i39 = and i32 %23, %22
  store i32 %and.i39, ptr %wptr.i, align 4
  %24 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %count_dw.i, align 4
  %dec.i40 = add i32 %25, -1
  store i32 %dec.i40, ptr %count_dw.i, align 4
  %26 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i42 = add i32 %27, -1
  store i32 %dec4.i42, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i40)
  %cmp.i45 = icmp slt i32 %dec.i40, 1
  br i1 %cmp.i45, label %if.then.i46, label %radeon_ring_write.exit43.radeon_ring_write.exit56_crit_edge

radeon_ring_write.exit43.radeon_ring_write.exit56_crit_edge: ; preds = %radeon_ring_write.exit43
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit56

if.then.i46:                                      ; preds = %radeon_ring_write.exit43
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %radeon_ring_write.exit56

radeon_ring_write.exit56:                         ; preds = %if.then.i46, %radeon_ring_write.exit43.radeon_ring_write.exit56_crit_edge
  %28 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ring1.i, align 8
  %30 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %wptr.i, align 4
  %inc.i49 = add i32 %31, 1
  store i32 %inc.i49, ptr %wptr.i, align 4
  %arrayidx.i50 = getelementptr i32, ptr %29, i32 %31
  %32 = ptrtoint ptr %arrayidx.i50 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 4345, ptr %arrayidx.i50, align 4
  %33 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ptr_mask.i, align 4
  %35 = load i32, ptr %wptr.i, align 4
  %and.i52 = and i32 %35, %34
  store i32 %and.i52, ptr %wptr.i, align 4
  %36 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %count_dw.i, align 4
  %dec.i53 = add i32 %37, -1
  store i32 %dec.i53, ptr %count_dw.i, align 4
  %38 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i55 = add i32 %39, -1
  store i32 %dec4.i55, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i53)
  %cmp.i58 = icmp slt i32 %dec.i53, 1
  br i1 %cmp.i58, label %if.then.i59, label %radeon_ring_write.exit56.radeon_ring_write.exit69_crit_edge

radeon_ring_write.exit56.radeon_ring_write.exit69_crit_edge: ; preds = %radeon_ring_write.exit56
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit69

if.then.i59:                                      ; preds = %radeon_ring_write.exit56
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %radeon_ring_write.exit69

radeon_ring_write.exit69:                         ; preds = %if.then.i59, %radeon_ring_write.exit56.radeon_ring_write.exit69_crit_edge
  %40 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ring1.i, align 8
  %42 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %wptr.i, align 4
  %inc.i62 = add i32 %43, 1
  store i32 %inc.i62, ptr %wptr.i, align 4
  %arrayidx.i63 = getelementptr i32, ptr %41, i32 %43
  %44 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 0, ptr %arrayidx.i63, align 4
  %45 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ptr_mask.i, align 4
  %47 = load i32, ptr %wptr.i, align 4
  %and.i65 = and i32 %47, %46
  store i32 %and.i65, ptr %wptr.i, align 4
  %48 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %count_dw.i, align 4
  %dec.i66 = add i32 %49, -1
  store i32 %dec.i66, ptr %count_dw.i, align 4
  %50 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i68 = add i32 %51, -1
  store i32 %dec4.i68, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i66)
  %cmp.i71 = icmp slt i32 %dec.i66, 1
  br i1 %cmp.i71, label %if.then.i72, label %radeon_ring_write.exit69.radeon_ring_write.exit82_crit_edge

radeon_ring_write.exit69.radeon_ring_write.exit82_crit_edge: ; preds = %radeon_ring_write.exit69
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit82

if.then.i72:                                      ; preds = %radeon_ring_write.exit69
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %radeon_ring_write.exit82

radeon_ring_write.exit82:                         ; preds = %if.then.i72, %radeon_ring_write.exit69.radeon_ring_write.exit82_crit_edge
  %52 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ring1.i, align 8
  %54 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %wptr.i, align 4
  %inc.i75 = add i32 %55, 1
  store i32 %inc.i75, ptr %wptr.i, align 4
  %arrayidx.i76 = getelementptr i32, ptr %53, i32 %55
  %56 = ptrtoint ptr %arrayidx.i76 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile i32 5011, ptr %arrayidx.i76, align 4
  %57 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ptr_mask.i, align 4
  %59 = load i32, ptr %wptr.i, align 4
  %and.i78 = and i32 %59, %58
  store i32 %and.i78, ptr %wptr.i, align 4
  %60 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %count_dw.i, align 4
  %dec.i79 = add i32 %61, -1
  store i32 %dec.i79, ptr %count_dw.i, align 4
  %62 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i81 = add i32 %63, -1
  store i32 %dec4.i81, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i79)
  %cmp.i84 = icmp slt i32 %dec.i79, 1
  br i1 %cmp.i84, label %if.then.i85, label %radeon_ring_write.exit82.radeon_ring_write.exit95_crit_edge

radeon_ring_write.exit82.radeon_ring_write.exit95_crit_edge: ; preds = %radeon_ring_write.exit82
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit95

if.then.i85:                                      ; preds = %radeon_ring_write.exit82
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %radeon_ring_write.exit95

radeon_ring_write.exit95:                         ; preds = %if.then.i85, %radeon_ring_write.exit82.radeon_ring_write.exit95_crit_edge
  %64 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ring1.i, align 8
  %66 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %wptr.i, align 4
  %inc.i88 = add i32 %67, 1
  store i32 %inc.i88, ptr %wptr.i, align 4
  %arrayidx.i89 = getelementptr i32, ptr %65, i32 %67
  %68 = ptrtoint ptr %arrayidx.i89 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile i32 2, ptr %arrayidx.i89, align 4
  %69 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ptr_mask.i, align 4
  %71 = load i32, ptr %wptr.i, align 4
  %and.i91 = and i32 %71, %70
  store i32 %and.i91, ptr %wptr.i, align 4
  %72 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %count_dw.i, align 4
  %dec.i92 = add i32 %73, -1
  store i32 %dec.i92, ptr %count_dw.i, align 4
  %74 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i94 = add i32 %75, -1
  store i32 %dec4.i94, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i92)
  %cmp.i97 = icmp slt i32 %dec.i92, 1
  br i1 %cmp.i97, label %if.then.i98, label %radeon_ring_write.exit95.radeon_ring_write.exit108_crit_edge

radeon_ring_write.exit95.radeon_ring_write.exit108_crit_edge: ; preds = %radeon_ring_write.exit95
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit108

if.then.i98:                                      ; preds = %radeon_ring_write.exit95
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %radeon_ring_write.exit108

radeon_ring_write.exit108:                        ; preds = %if.then.i98, %radeon_ring_write.exit95.radeon_ring_write.exit108_crit_edge
  %76 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ring1.i, align 8
  %78 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %wptr.i, align 4
  %inc.i101 = add i32 %79, 1
  store i32 %inc.i101, ptr %wptr.i, align 4
  %arrayidx.i102 = getelementptr i32, ptr %77, i32 %79
  %80 = ptrtoint ptr %arrayidx.i102 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile i32 5062, ptr %arrayidx.i102, align 4
  %81 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %ptr_mask.i, align 4
  %83 = load i32, ptr %wptr.i, align 4
  %and.i104 = and i32 %83, %82
  store i32 %and.i104, ptr %wptr.i, align 4
  %84 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %count_dw.i, align 4
  %dec.i105 = add i32 %85, -1
  store i32 %dec.i105, ptr %count_dw.i, align 4
  %86 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i107 = add i32 %87, -1
  store i32 %dec4.i107, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i105)
  %cmp.i110 = icmp slt i32 %dec.i105, 1
  br i1 %cmp.i110, label %if.then.i111, label %radeon_ring_write.exit108.radeon_ring_write.exit121_crit_edge

radeon_ring_write.exit108.radeon_ring_write.exit121_crit_edge: ; preds = %radeon_ring_write.exit108
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit121

if.then.i111:                                     ; preds = %radeon_ring_write.exit108
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %radeon_ring_write.exit121

radeon_ring_write.exit121:                        ; preds = %if.then.i111, %radeon_ring_write.exit108.radeon_ring_write.exit121_crit_edge
  %88 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ring1.i, align 8
  %90 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %wptr.i, align 4
  %inc.i114 = add i32 %91, 1
  store i32 %inc.i114, ptr %wptr.i, align 4
  %arrayidx.i115 = getelementptr i32, ptr %89, i32 %91
  %92 = ptrtoint ptr %arrayidx.i115 to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile i32 1, ptr %arrayidx.i115, align 4
  %93 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %ptr_mask.i, align 4
  %95 = load i32, ptr %wptr.i, align 4
  %and.i117 = and i32 %95, %94
  store i32 %and.i117, ptr %wptr.i, align 4
  %96 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %count_dw.i, align 4
  %dec.i118 = add i32 %97, -1
  store i32 %dec.i118, ptr %count_dw.i, align 4
  %98 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i120 = add i32 %99, -1
  store i32 %dec4.i120, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i118)
  %cmp.i123 = icmp slt i32 %dec.i118, 1
  br i1 %cmp.i123, label %if.then.i124, label %radeon_ring_write.exit121.radeon_ring_write.exit134_crit_edge

radeon_ring_write.exit121.radeon_ring_write.exit134_crit_edge: ; preds = %radeon_ring_write.exit121
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit134

if.then.i124:                                     ; preds = %radeon_ring_write.exit121
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %radeon_ring_write.exit134

radeon_ring_write.exit134:                        ; preds = %if.then.i124, %radeon_ring_write.exit121.radeon_ring_write.exit134_crit_edge
  %100 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ring1.i, align 8
  %102 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %wptr.i, align 4
  %inc.i127 = add i32 %103, 1
  store i32 %inc.i127, ptr %wptr.i, align 4
  %arrayidx.i128 = getelementptr i32, ptr %101, i32 %103
  %104 = ptrtoint ptr %arrayidx.i128 to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile i32 1480, ptr %arrayidx.i128, align 4
  %105 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %ptr_mask.i, align 4
  %107 = load i32, ptr %wptr.i, align 4
  %and.i130 = and i32 %107, %106
  store i32 %and.i130, ptr %wptr.i, align 4
  %108 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %count_dw.i, align 4
  %dec.i131 = add i32 %109, -1
  store i32 %dec.i131, ptr %count_dw.i, align 4
  %110 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i133 = add i32 %111, -1
  store i32 %dec4.i133, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i131)
  %cmp.i136 = icmp slt i32 %dec.i131, 1
  br i1 %cmp.i136, label %if.then.i137, label %radeon_ring_write.exit134.radeon_ring_write.exit147_crit_edge

radeon_ring_write.exit134.radeon_ring_write.exit147_crit_edge: ; preds = %radeon_ring_write.exit134
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit147

if.then.i137:                                     ; preds = %radeon_ring_write.exit134
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %radeon_ring_write.exit147

radeon_ring_write.exit147:                        ; preds = %if.then.i137, %radeon_ring_write.exit134.radeon_ring_write.exit147_crit_edge
  %112 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ring1.i, align 8
  %114 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %wptr.i, align 4
  %inc.i140 = add i32 %115, 1
  store i32 %inc.i140, ptr %wptr.i, align 4
  %arrayidx.i141 = getelementptr i32, ptr %113, i32 %115
  %116 = ptrtoint ptr %arrayidx.i141 to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile i32 197120, ptr %arrayidx.i141, align 4
  %117 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %ptr_mask.i, align 4
  %119 = load i32, ptr %wptr.i, align 4
  %and.i143 = and i32 %119, %118
  store i32 %and.i143, ptr %wptr.i, align 4
  %120 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %count_dw.i, align 4
  %dec.i144 = add i32 %121, -1
  store i32 %dec.i144, ptr %count_dw.i, align 4
  %122 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i146 = add i32 %123, -1
  store i32 %dec4.i146, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i144)
  %cmp.i149 = icmp slt i32 %dec.i144, 1
  br i1 %cmp.i149, label %if.then.i150, label %radeon_ring_write.exit147.radeon_ring_write.exit160_crit_edge

radeon_ring_write.exit147.radeon_ring_write.exit160_crit_edge: ; preds = %radeon_ring_write.exit147
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit160

if.then.i150:                                     ; preds = %radeon_ring_write.exit147
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %radeon_ring_write.exit160

radeon_ring_write.exit160:                        ; preds = %if.then.i150, %radeon_ring_write.exit147.radeon_ring_write.exit160_crit_edge
  %124 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %ring1.i, align 8
  %126 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %wptr.i, align 4
  %inc.i153 = add i32 %127, 1
  store i32 %inc.i153, ptr %wptr.i, align 4
  %arrayidx.i154 = getelementptr i32, ptr %125, i32 %127
  %128 = ptrtoint ptr %arrayidx.i154 to i32
  call void @__asan_store4_noabort(i32 %128)
  store volatile i32 76, ptr %arrayidx.i154, align 4
  %129 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %ptr_mask.i, align 4
  %131 = load i32, ptr %wptr.i, align 4
  %and.i156 = and i32 %131, %130
  store i32 %and.i156, ptr %wptr.i, align 4
  %132 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %count_dw.i, align 4
  %dec.i157 = add i32 %133, -1
  store i32 %dec.i157, ptr %count_dw.i, align 4
  %134 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i159 = add i32 %135, -1
  store i32 %dec4.i159, ptr %ring_free_dw.i, align 8
  %hdp_cntl = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 3
  %136 = ptrtoint ptr %hdp_cntl to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %hdp_cntl, align 4
  %or = or i32 %137, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i157)
  %cmp.i162 = icmp slt i32 %dec.i157, 1
  br i1 %cmp.i162, label %if.then.i163, label %radeon_ring_write.exit160.radeon_ring_write.exit173_crit_edge

radeon_ring_write.exit160.radeon_ring_write.exit173_crit_edge: ; preds = %radeon_ring_write.exit160
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit173

if.then.i163:                                     ; preds = %radeon_ring_write.exit160
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %radeon_ring_write.exit173

radeon_ring_write.exit173:                        ; preds = %if.then.i163, %radeon_ring_write.exit160.radeon_ring_write.exit173_crit_edge
  %138 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ring1.i, align 8
  %140 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %wptr.i, align 4
  %inc.i166 = add i32 %141, 1
  store i32 %inc.i166, ptr %wptr.i, align 4
  %arrayidx.i167 = getelementptr i32, ptr %139, i32 %141
  %142 = ptrtoint ptr %arrayidx.i167 to i32
  call void @__asan_store4_noabort(i32 %142)
  store volatile i32 %or, ptr %arrayidx.i167, align 4
  %143 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %ptr_mask.i, align 4
  %145 = load i32, ptr %wptr.i, align 4
  %and.i169 = and i32 %145, %144
  store i32 %and.i169, ptr %wptr.i, align 4
  %146 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %count_dw.i, align 4
  %dec.i170 = add i32 %147, -1
  store i32 %dec.i170, ptr %count_dw.i, align 4
  %148 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i172 = add i32 %149, -1
  store i32 %dec4.i172, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i170)
  %cmp.i175 = icmp slt i32 %dec.i170, 1
  br i1 %cmp.i175, label %if.then.i176, label %radeon_ring_write.exit173.radeon_ring_write.exit186_crit_edge

radeon_ring_write.exit173.radeon_ring_write.exit186_crit_edge: ; preds = %radeon_ring_write.exit173
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit186

if.then.i176:                                     ; preds = %radeon_ring_write.exit173
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %radeon_ring_write.exit186

radeon_ring_write.exit186:                        ; preds = %if.then.i176, %radeon_ring_write.exit173.radeon_ring_write.exit186_crit_edge
  %150 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %ring1.i, align 8
  %152 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %wptr.i, align 4
  %inc.i179 = add i32 %153, 1
  store i32 %inc.i179, ptr %wptr.i, align 4
  %arrayidx.i180 = getelementptr i32, ptr %151, i32 %153
  %154 = ptrtoint ptr %arrayidx.i180 to i32
  call void @__asan_store4_noabort(i32 %154)
  store volatile i32 76, ptr %arrayidx.i180, align 4
  %155 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %ptr_mask.i, align 4
  %157 = load i32, ptr %wptr.i, align 4
  %and.i182 = and i32 %157, %156
  store i32 %and.i182, ptr %wptr.i, align 4
  %158 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %count_dw.i, align 4
  %dec.i183 = add i32 %159, -1
  store i32 %dec.i183, ptr %count_dw.i, align 4
  %160 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i185 = add i32 %161, -1
  store i32 %dec4.i185, ptr %ring_free_dw.i, align 8
  %162 = ptrtoint ptr %hdp_cntl to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %hdp_cntl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i183)
  %cmp.i188 = icmp slt i32 %dec.i183, 1
  br i1 %cmp.i188, label %if.then.i189, label %radeon_ring_write.exit186.radeon_ring_write.exit199_crit_edge

radeon_ring_write.exit186.radeon_ring_write.exit199_crit_edge: ; preds = %radeon_ring_write.exit186
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit199

if.then.i189:                                     ; preds = %radeon_ring_write.exit186
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %radeon_ring_write.exit199

radeon_ring_write.exit199:                        ; preds = %if.then.i189, %radeon_ring_write.exit186.radeon_ring_write.exit199_crit_edge
  %164 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %ring1.i, align 8
  %166 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %wptr.i, align 4
  %inc.i192 = add i32 %167, 1
  store i32 %inc.i192, ptr %wptr.i, align 4
  %arrayidx.i193 = getelementptr i32, ptr %165, i32 %167
  %168 = ptrtoint ptr %arrayidx.i193 to i32
  call void @__asan_store4_noabort(i32 %168)
  store volatile i32 %163, ptr %arrayidx.i193, align 4
  %169 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %ptr_mask.i, align 4
  %171 = load i32, ptr %wptr.i, align 4
  %and.i195 = and i32 %171, %170
  store i32 %and.i195, ptr %wptr.i, align 4
  %172 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %count_dw.i, align 4
  %dec.i196 = add i32 %173, -1
  store i32 %dec.i196, ptr %count_dw.i, align 4
  %174 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i198 = add i32 %175, -1
  store i32 %dec4.i198, ptr %ring_free_dw.i, align 8
  %176 = ptrtoint ptr %ring2 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %ring2, align 8
  %scratch_reg = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 48, i32 %177, i32 1
  %178 = ptrtoint ptr %scratch_reg to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %scratch_reg, align 4
  %shr = lshr i32 %179, 2
  %and = and i32 %shr, 131071
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i196)
  %cmp.i201 = icmp slt i32 %dec.i196, 1
  br i1 %cmp.i201, label %if.then.i202, label %radeon_ring_write.exit199.radeon_ring_write.exit212_crit_edge

radeon_ring_write.exit199.radeon_ring_write.exit212_crit_edge: ; preds = %radeon_ring_write.exit199
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit212

if.then.i202:                                     ; preds = %radeon_ring_write.exit199
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %radeon_ring_write.exit212

radeon_ring_write.exit212:                        ; preds = %if.then.i202, %radeon_ring_write.exit199.radeon_ring_write.exit212_crit_edge
  %180 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %ring1.i, align 8
  %182 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %wptr.i, align 4
  %inc.i205 = add i32 %183, 1
  store i32 %inc.i205, ptr %wptr.i, align 4
  %arrayidx.i206 = getelementptr i32, ptr %181, i32 %183
  %184 = ptrtoint ptr %arrayidx.i206 to i32
  call void @__asan_store4_noabort(i32 %184)
  store volatile i32 %and, ptr %arrayidx.i206, align 4
  %185 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %ptr_mask.i, align 4
  %187 = load i32, ptr %wptr.i, align 4
  %and.i208 = and i32 %187, %186
  store i32 %and.i208, ptr %wptr.i, align 4
  %188 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %count_dw.i, align 4
  %dec.i209 = add i32 %189, -1
  store i32 %dec.i209, ptr %count_dw.i, align 4
  %190 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i211 = add i32 %191, -1
  store i32 %dec4.i211, ptr %ring_free_dw.i, align 8
  %seq = getelementptr inbounds %struct.radeon_fence, ptr %fence, i32 0, i32 2
  %192 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %192)
  %193 = load i64, ptr %seq, align 8
  %conv = trunc i64 %193 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i209)
  %cmp.i214 = icmp slt i32 %dec.i209, 1
  br i1 %cmp.i214, label %if.then.i215, label %radeon_ring_write.exit212.radeon_ring_write.exit225_crit_edge

radeon_ring_write.exit212.radeon_ring_write.exit225_crit_edge: ; preds = %radeon_ring_write.exit212
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit225

if.then.i215:                                     ; preds = %radeon_ring_write.exit212
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %radeon_ring_write.exit225

radeon_ring_write.exit225:                        ; preds = %if.then.i215, %radeon_ring_write.exit212.radeon_ring_write.exit225_crit_edge
  %194 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %ring1.i, align 8
  %196 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %wptr.i, align 4
  %inc.i218 = add i32 %197, 1
  store i32 %inc.i218, ptr %wptr.i, align 4
  %arrayidx.i219 = getelementptr i32, ptr %195, i32 %197
  %198 = ptrtoint ptr %arrayidx.i219 to i32
  call void @__asan_store4_noabort(i32 %198)
  store volatile i32 %conv, ptr %arrayidx.i219, align 4
  %199 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %ptr_mask.i, align 4
  %201 = load i32, ptr %wptr.i, align 4
  %and.i221 = and i32 %201, %200
  store i32 %and.i221, ptr %wptr.i, align 4
  %202 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %count_dw.i, align 4
  %dec.i222 = add i32 %203, -1
  store i32 %dec.i222, ptr %count_dw.i, align 4
  %204 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i224 = add i32 %205, -1
  store i32 %dec4.i224, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i222)
  %cmp.i227 = icmp slt i32 %dec.i222, 1
  br i1 %cmp.i227, label %if.then.i228, label %radeon_ring_write.exit225.radeon_ring_write.exit238_crit_edge

radeon_ring_write.exit225.radeon_ring_write.exit238_crit_edge: ; preds = %radeon_ring_write.exit225
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit238

if.then.i228:                                     ; preds = %radeon_ring_write.exit225
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %radeon_ring_write.exit238

radeon_ring_write.exit238:                        ; preds = %if.then.i228, %radeon_ring_write.exit225.radeon_ring_write.exit238_crit_edge
  %206 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %ring1.i, align 8
  %208 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %wptr.i, align 4
  %inc.i231 = add i32 %209, 1
  store i32 %inc.i231, ptr %wptr.i, align 4
  %arrayidx.i232 = getelementptr i32, ptr %207, i32 %209
  %210 = ptrtoint ptr %arrayidx.i232 to i32
  call void @__asan_store4_noabort(i32 %210)
  store volatile i32 17, ptr %arrayidx.i232, align 4
  %211 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %ptr_mask.i, align 4
  %213 = load i32, ptr %wptr.i, align 4
  %and.i234 = and i32 %213, %212
  store i32 %and.i234, ptr %wptr.i, align 4
  %214 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %count_dw.i, align 4
  %dec.i235 = add i32 %215, -1
  store i32 %dec.i235, ptr %count_dw.i, align 4
  %216 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i237 = add i32 %217, -1
  store i32 %dec4.i237, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i235)
  %cmp.i240 = icmp slt i32 %dec.i235, 1
  br i1 %cmp.i240, label %if.then.i241, label %radeon_ring_write.exit238.radeon_ring_write.exit251_crit_edge

radeon_ring_write.exit238.radeon_ring_write.exit251_crit_edge: ; preds = %radeon_ring_write.exit238
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit251

if.then.i241:                                     ; preds = %radeon_ring_write.exit238
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %radeon_ring_write.exit251

radeon_ring_write.exit251:                        ; preds = %if.then.i241, %radeon_ring_write.exit238.radeon_ring_write.exit251_crit_edge
  %218 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %ring1.i, align 8
  %220 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %wptr.i, align 4
  %inc.i244 = add i32 %221, 1
  store i32 %inc.i244, ptr %wptr.i, align 4
  %arrayidx.i245 = getelementptr i32, ptr %219, i32 %221
  %222 = ptrtoint ptr %arrayidx.i245 to i32
  call void @__asan_store4_noabort(i32 %222)
  store volatile i32 67108864, ptr %arrayidx.i245, align 4
  %223 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %ptr_mask.i, align 4
  %225 = load i32, ptr %wptr.i, align 4
  %and.i247 = and i32 %225, %224
  store i32 %and.i247, ptr %wptr.i, align 4
  %226 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %count_dw.i, align 4
  %dec.i248 = add i32 %227, -1
  store i32 %dec.i248, ptr %count_dw.i, align 4
  %228 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i250 = add i32 %229, -1
  store i32 %dec4.i250, ptr %ring_free_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r300_ring_start(ptr noundef %rdev, ptr noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %num_gb_pipes = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 10
  %0 = ptrtoint ptr %num_gb_pipes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_gb_pipes, align 4
  %switch.tableidx = add i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 3
  br i1 %2, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.r300_ring_start, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %gb_tile_config.0 = phi i32 [ %switch.load, %switch.lookup ], [ 17, %entry.sw.epilog_crit_edge ]
  %call = tail call i32 @radeon_ring_lock(ptr noundef %rdev, ptr noundef %ring, i32 noundef 64) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %count_dw.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 11
  %4 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count_dw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp slt i32 %5, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.radeon_ring_write.exit_crit_edge

if.end.radeon_ring_write.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %radeon_ring_write.exit

radeon_ring_write.exit:                           ; preds = %if.then.i, %if.end.radeon_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 2
  %6 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ring1.i, align 8
  %wptr.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 7
  %8 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wptr.i, align 4
  %inc.i = add i32 %9, 1
  store i32 %inc.i, ptr %wptr.i, align 4
  %arrayidx.i = getelementptr i32, ptr %7, i32 %9
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 1481, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 16
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
  %ring_free_dw.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 10
  %16 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i = add i32 %17, -1
  store i32 %dec4.i, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i50 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i50, label %if.then.i51, label %radeon_ring_write.exit.radeon_ring_write.exit61_crit_edge

radeon_ring_write.exit.radeon_ring_write.exit61_crit_edge: ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit61

if.then.i51:                                      ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %radeon_ring_write.exit61

radeon_ring_write.exit61:                         ; preds = %if.then.i51, %radeon_ring_write.exit.radeon_ring_write.exit61_crit_edge
  %18 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ring1.i, align 8
  %20 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %wptr.i, align 4
  %inc.i54 = add i32 %21, 1
  store i32 %inc.i54, ptr %wptr.i, align 4
  %arrayidx.i55 = getelementptr i32, ptr %19, i32 %21
  %22 = ptrtoint ptr %arrayidx.i55 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 51, ptr %arrayidx.i55, align 4
  %23 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ptr_mask.i, align 4
  %25 = load i32, ptr %wptr.i, align 4
  %and.i57 = and i32 %25, %24
  store i32 %and.i57, ptr %wptr.i, align 4
  %26 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count_dw.i, align 4
  %dec.i58 = add i32 %27, -1
  store i32 %dec.i58, ptr %count_dw.i, align 4
  %28 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i60 = add i32 %29, -1
  store i32 %dec4.i60, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i58)
  %cmp.i63 = icmp slt i32 %dec.i58, 1
  br i1 %cmp.i63, label %if.then.i64, label %radeon_ring_write.exit61.radeon_ring_write.exit74_crit_edge

radeon_ring_write.exit61.radeon_ring_write.exit74_crit_edge: ; preds = %radeon_ring_write.exit61
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit74

if.then.i64:                                      ; preds = %radeon_ring_write.exit61
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %radeon_ring_write.exit74

radeon_ring_write.exit74:                         ; preds = %if.then.i64, %radeon_ring_write.exit61.radeon_ring_write.exit74_crit_edge
  %30 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ring1.i, align 8
  %32 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %wptr.i, align 4
  %inc.i67 = add i32 %33, 1
  store i32 %inc.i67, ptr %wptr.i, align 4
  %arrayidx.i68 = getelementptr i32, ptr %31, i32 %33
  %34 = ptrtoint ptr %arrayidx.i68 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 4102, ptr %arrayidx.i68, align 4
  %35 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ptr_mask.i, align 4
  %37 = load i32, ptr %wptr.i, align 4
  %and.i70 = and i32 %37, %36
  store i32 %and.i70, ptr %wptr.i, align 4
  %38 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %count_dw.i, align 4
  %dec.i71 = add i32 %39, -1
  store i32 %dec.i71, ptr %count_dw.i, align 4
  %40 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i73 = add i32 %41, -1
  store i32 %dec4.i73, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i71)
  %cmp.i76 = icmp slt i32 %dec.i71, 1
  br i1 %cmp.i76, label %if.then.i77, label %radeon_ring_write.exit74.radeon_ring_write.exit87_crit_edge

radeon_ring_write.exit74.radeon_ring_write.exit87_crit_edge: ; preds = %radeon_ring_write.exit74
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit87

if.then.i77:                                      ; preds = %radeon_ring_write.exit74
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %radeon_ring_write.exit87

radeon_ring_write.exit87:                         ; preds = %if.then.i77, %radeon_ring_write.exit74.radeon_ring_write.exit87_crit_edge
  %42 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ring1.i, align 8
  %44 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %wptr.i, align 4
  %inc.i80 = add i32 %45, 1
  store i32 %inc.i80, ptr %wptr.i, align 4
  %arrayidx.i81 = getelementptr i32, ptr %43, i32 %45
  %46 = ptrtoint ptr %arrayidx.i81 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile i32 %gb_tile_config.0, ptr %arrayidx.i81, align 4
  %47 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ptr_mask.i, align 4
  %49 = load i32, ptr %wptr.i, align 4
  %and.i83 = and i32 %49, %48
  store i32 %and.i83, ptr %wptr.i, align 4
  %50 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %count_dw.i, align 4
  %dec.i84 = add i32 %51, -1
  store i32 %dec.i84, ptr %count_dw.i, align 4
  %52 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i86 = add i32 %53, -1
  store i32 %dec4.i86, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i84)
  %cmp.i89 = icmp slt i32 %dec.i84, 1
  br i1 %cmp.i89, label %if.then.i90, label %radeon_ring_write.exit87.radeon_ring_write.exit100_crit_edge

radeon_ring_write.exit87.radeon_ring_write.exit100_crit_edge: ; preds = %radeon_ring_write.exit87
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit100

if.then.i90:                                      ; preds = %radeon_ring_write.exit87
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %radeon_ring_write.exit100

radeon_ring_write.exit100:                        ; preds = %if.then.i90, %radeon_ring_write.exit87.radeon_ring_write.exit100_crit_edge
  %54 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ring1.i, align 8
  %56 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %wptr.i, align 4
  %inc.i93 = add i32 %57, 1
  store i32 %inc.i93, ptr %wptr.i, align 4
  %arrayidx.i94 = getelementptr i32, ptr %55, i32 %57
  %58 = ptrtoint ptr %arrayidx.i94 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile i32 1480, ptr %arrayidx.i94, align 4
  %59 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ptr_mask.i, align 4
  %61 = load i32, ptr %wptr.i, align 4
  %and.i96 = and i32 %61, %60
  store i32 %and.i96, ptr %wptr.i, align 4
  %62 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %count_dw.i, align 4
  %dec.i97 = add i32 %63, -1
  store i32 %dec.i97, ptr %count_dw.i, align 4
  %64 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i99 = add i32 %65, -1
  store i32 %dec4.i99, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i97)
  %cmp.i102 = icmp slt i32 %dec.i97, 1
  br i1 %cmp.i102, label %if.then.i103, label %radeon_ring_write.exit100.radeon_ring_write.exit113_crit_edge

radeon_ring_write.exit100.radeon_ring_write.exit113_crit_edge: ; preds = %radeon_ring_write.exit100
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit113

if.then.i103:                                     ; preds = %radeon_ring_write.exit100
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %radeon_ring_write.exit113

radeon_ring_write.exit113:                        ; preds = %if.then.i103, %radeon_ring_write.exit100.radeon_ring_write.exit113_crit_edge
  %66 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ring1.i, align 8
  %68 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %wptr.i, align 4
  %inc.i106 = add i32 %69, 1
  store i32 %inc.i106, ptr %wptr.i, align 4
  %arrayidx.i107 = getelementptr i32, ptr %67, i32 %69
  %70 = ptrtoint ptr %arrayidx.i107 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile i32 196608, ptr %arrayidx.i107, align 4
  %71 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ptr_mask.i, align 4
  %73 = load i32, ptr %wptr.i, align 4
  %and.i109 = and i32 %73, %72
  store i32 %and.i109, ptr %wptr.i, align 4
  %74 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %count_dw.i, align 4
  %dec.i110 = add i32 %75, -1
  store i32 %dec.i110, ptr %count_dw.i, align 4
  %76 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i112 = add i32 %77, -1
  store i32 %dec4.i112, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i110)
  %cmp.i115 = icmp slt i32 %dec.i110, 1
  br i1 %cmp.i115, label %if.then.i116, label %radeon_ring_write.exit113.radeon_ring_write.exit126_crit_edge

radeon_ring_write.exit113.radeon_ring_write.exit126_crit_edge: ; preds = %radeon_ring_write.exit113
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit126

if.then.i116:                                     ; preds = %radeon_ring_write.exit113
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %radeon_ring_write.exit126

radeon_ring_write.exit126:                        ; preds = %if.then.i116, %radeon_ring_write.exit113.radeon_ring_write.exit126_crit_edge
  %78 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ring1.i, align 8
  %80 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %wptr.i, align 4
  %inc.i119 = add i32 %81, 1
  store i32 %inc.i119, ptr %wptr.i, align 4
  %arrayidx.i120 = getelementptr i32, ptr %79, i32 %81
  %82 = ptrtoint ptr %arrayidx.i120 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile i32 1475, ptr %arrayidx.i120, align 4
  %83 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %ptr_mask.i, align 4
  %85 = load i32, ptr %wptr.i, align 4
  %and.i122 = and i32 %85, %84
  store i32 %and.i122, ptr %wptr.i, align 4
  %86 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %count_dw.i, align 4
  %dec.i123 = add i32 %87, -1
  store i32 %dec.i123, ptr %count_dw.i, align 4
  %88 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i125 = add i32 %89, -1
  store i32 %dec4.i125, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i123)
  %cmp.i128 = icmp slt i32 %dec.i123, 1
  br i1 %cmp.i128, label %if.then.i129, label %radeon_ring_write.exit126.radeon_ring_write.exit139_crit_edge

radeon_ring_write.exit126.radeon_ring_write.exit139_crit_edge: ; preds = %radeon_ring_write.exit126
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit139

if.then.i129:                                     ; preds = %radeon_ring_write.exit126
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %radeon_ring_write.exit139

radeon_ring_write.exit139:                        ; preds = %if.then.i129, %radeon_ring_write.exit126.radeon_ring_write.exit139_crit_edge
  %90 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ring1.i, align 8
  %92 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %wptr.i, align 4
  %inc.i132 = add i32 %93, 1
  store i32 %inc.i132, ptr %wptr.i, align 4
  %arrayidx.i133 = getelementptr i32, ptr %91, i32 %93
  %94 = ptrtoint ptr %arrayidx.i133 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile i32 -2147483648, ptr %arrayidx.i133, align 4
  %95 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %ptr_mask.i, align 4
  %97 = load i32, ptr %wptr.i, align 4
  %and.i135 = and i32 %97, %96
  store i32 %and.i135, ptr %wptr.i, align 4
  %98 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %count_dw.i, align 4
  %dec.i136 = add i32 %99, -1
  store i32 %dec.i136, ptr %count_dw.i, align 4
  %100 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i138 = add i32 %101, -1
  store i32 %dec4.i138, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i136)
  %cmp.i141 = icmp slt i32 %dec.i136, 1
  br i1 %cmp.i141, label %if.then.i142, label %radeon_ring_write.exit139.radeon_ring_write.exit152_crit_edge

radeon_ring_write.exit139.radeon_ring_write.exit152_crit_edge: ; preds = %radeon_ring_write.exit139
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit152

if.then.i142:                                     ; preds = %radeon_ring_write.exit139
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %radeon_ring_write.exit152

radeon_ring_write.exit152:                        ; preds = %if.then.i142, %radeon_ring_write.exit139.radeon_ring_write.exit152_crit_edge
  %102 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ring1.i, align 8
  %104 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %wptr.i, align 4
  %inc.i145 = add i32 %105, 1
  store i32 %inc.i145, ptr %wptr.i, align 4
  %arrayidx.i146 = getelementptr i32, ptr %103, i32 %105
  %106 = ptrtoint ptr %arrayidx.i146 to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile i32 4103, ptr %arrayidx.i146, align 4
  %107 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %ptr_mask.i, align 4
  %109 = load i32, ptr %wptr.i, align 4
  %and.i148 = and i32 %109, %108
  store i32 %and.i148, ptr %wptr.i, align 4
  %110 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %count_dw.i, align 4
  %dec.i149 = add i32 %111, -1
  store i32 %dec.i149, ptr %count_dw.i, align 4
  %112 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i151 = add i32 %113, -1
  store i32 %dec4.i151, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i149)
  %cmp.i154 = icmp slt i32 %dec.i149, 1
  br i1 %cmp.i154, label %if.then.i155, label %radeon_ring_write.exit152.radeon_ring_write.exit165_crit_edge

radeon_ring_write.exit152.radeon_ring_write.exit165_crit_edge: ; preds = %radeon_ring_write.exit152
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit165

if.then.i155:                                     ; preds = %radeon_ring_write.exit152
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %radeon_ring_write.exit165

radeon_ring_write.exit165:                        ; preds = %if.then.i155, %radeon_ring_write.exit152.radeon_ring_write.exit165_crit_edge
  %114 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ring1.i, align 8
  %116 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %wptr.i, align 4
  %inc.i158 = add i32 %117, 1
  store i32 %inc.i158, ptr %wptr.i, align 4
  %arrayidx.i159 = getelementptr i32, ptr %115, i32 %117
  %118 = ptrtoint ptr %arrayidx.i159 to i32
  call void @__asan_store4_noabort(i32 %118)
  store volatile i32 0, ptr %arrayidx.i159, align 4
  %119 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %ptr_mask.i, align 4
  %121 = load i32, ptr %wptr.i, align 4
  %and.i161 = and i32 %121, %120
  store i32 %and.i161, ptr %wptr.i, align 4
  %122 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %count_dw.i, align 4
  %dec.i162 = add i32 %123, -1
  store i32 %dec.i162, ptr %count_dw.i, align 4
  %124 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i164 = add i32 %125, -1
  store i32 %dec4.i164, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i162)
  %cmp.i167 = icmp slt i32 %dec.i162, 1
  br i1 %cmp.i167, label %if.then.i168, label %radeon_ring_write.exit165.radeon_ring_write.exit178_crit_edge

radeon_ring_write.exit165.radeon_ring_write.exit178_crit_edge: ; preds = %radeon_ring_write.exit165
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit178

if.then.i168:                                     ; preds = %radeon_ring_write.exit165
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %radeon_ring_write.exit178

radeon_ring_write.exit178:                        ; preds = %if.then.i168, %radeon_ring_write.exit165.radeon_ring_write.exit178_crit_edge
  %126 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ring1.i, align 8
  %128 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %wptr.i, align 4
  %inc.i171 = add i32 %129, 1
  store i32 %inc.i171, ptr %wptr.i, align 4
  %arrayidx.i172 = getelementptr i32, ptr %127, i32 %129
  %130 = ptrtoint ptr %arrayidx.i172 to i32
  call void @__asan_store4_noabort(i32 %130)
  store volatile i32 4098, ptr %arrayidx.i172, align 4
  %131 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %ptr_mask.i, align 4
  %133 = load i32, ptr %wptr.i, align 4
  %and.i174 = and i32 %133, %132
  store i32 %and.i174, ptr %wptr.i, align 4
  %134 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %count_dw.i, align 4
  %dec.i175 = add i32 %135, -1
  store i32 %dec.i175, ptr %count_dw.i, align 4
  %136 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i177 = add i32 %137, -1
  store i32 %dec4.i177, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i175)
  %cmp.i180 = icmp slt i32 %dec.i175, 1
  br i1 %cmp.i180, label %if.then.i181, label %radeon_ring_write.exit178.radeon_ring_write.exit191_crit_edge

radeon_ring_write.exit178.radeon_ring_write.exit191_crit_edge: ; preds = %radeon_ring_write.exit178
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit191

if.then.i181:                                     ; preds = %radeon_ring_write.exit178
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %radeon_ring_write.exit191

radeon_ring_write.exit191:                        ; preds = %if.then.i181, %radeon_ring_write.exit178.radeon_ring_write.exit191_crit_edge
  %138 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ring1.i, align 8
  %140 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %wptr.i, align 4
  %inc.i184 = add i32 %141, 1
  store i32 %inc.i184, ptr %wptr.i, align 4
  %arrayidx.i185 = getelementptr i32, ptr %139, i32 %141
  %142 = ptrtoint ptr %arrayidx.i185 to i32
  call void @__asan_store4_noabort(i32 %142)
  store volatile i32 0, ptr %arrayidx.i185, align 4
  %143 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %ptr_mask.i, align 4
  %145 = load i32, ptr %wptr.i, align 4
  %and.i187 = and i32 %145, %144
  store i32 %and.i187, ptr %wptr.i, align 4
  %146 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %count_dw.i, align 4
  %dec.i188 = add i32 %147, -1
  store i32 %dec.i188, ptr %count_dw.i, align 4
  %148 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i190 = add i32 %149, -1
  store i32 %dec4.i190, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i188)
  %cmp.i193 = icmp slt i32 %dec.i188, 1
  br i1 %cmp.i193, label %if.then.i194, label %radeon_ring_write.exit191.radeon_ring_write.exit204_crit_edge

radeon_ring_write.exit191.radeon_ring_write.exit204_crit_edge: ; preds = %radeon_ring_write.exit191
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit204

if.then.i194:                                     ; preds = %radeon_ring_write.exit191
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %radeon_ring_write.exit204

radeon_ring_write.exit204:                        ; preds = %if.then.i194, %radeon_ring_write.exit191.radeon_ring_write.exit204_crit_edge
  %150 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %ring1.i, align 8
  %152 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %wptr.i, align 4
  %inc.i197 = add i32 %153, 1
  store i32 %inc.i197, ptr %wptr.i, align 4
  %arrayidx.i198 = getelementptr i32, ptr %151, i32 %153
  %154 = ptrtoint ptr %arrayidx.i198 to i32
  call void @__asan_store4_noabort(i32 %154)
  store volatile i32 5011, ptr %arrayidx.i198, align 4
  %155 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %ptr_mask.i, align 4
  %157 = load i32, ptr %wptr.i, align 4
  %and.i200 = and i32 %157, %156
  store i32 %and.i200, ptr %wptr.i, align 4
  %158 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %count_dw.i, align 4
  %dec.i201 = add i32 %159, -1
  store i32 %dec.i201, ptr %count_dw.i, align 4
  %160 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i203 = add i32 %161, -1
  store i32 %dec4.i203, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i201)
  %cmp.i206 = icmp slt i32 %dec.i201, 1
  br i1 %cmp.i206, label %if.then.i207, label %radeon_ring_write.exit204.radeon_ring_write.exit217_crit_edge

radeon_ring_write.exit204.radeon_ring_write.exit217_crit_edge: ; preds = %radeon_ring_write.exit204
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit217

if.then.i207:                                     ; preds = %radeon_ring_write.exit204
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %radeon_ring_write.exit217

radeon_ring_write.exit217:                        ; preds = %if.then.i207, %radeon_ring_write.exit204.radeon_ring_write.exit217_crit_edge
  %162 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %ring1.i, align 8
  %164 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %wptr.i, align 4
  %inc.i210 = add i32 %165, 1
  store i32 %inc.i210, ptr %wptr.i, align 4
  %arrayidx.i211 = getelementptr i32, ptr %163, i32 %165
  %166 = ptrtoint ptr %arrayidx.i211 to i32
  call void @__asan_store4_noabort(i32 %166)
  store volatile i32 10, ptr %arrayidx.i211, align 4
  %167 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %ptr_mask.i, align 4
  %169 = load i32, ptr %wptr.i, align 4
  %and.i213 = and i32 %169, %168
  store i32 %and.i213, ptr %wptr.i, align 4
  %170 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %count_dw.i, align 4
  %dec.i214 = add i32 %171, -1
  store i32 %dec.i214, ptr %count_dw.i, align 4
  %172 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i216 = add i32 %173, -1
  store i32 %dec4.i216, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i214)
  %cmp.i219 = icmp slt i32 %dec.i214, 1
  br i1 %cmp.i219, label %if.then.i220, label %radeon_ring_write.exit217.radeon_ring_write.exit230_crit_edge

radeon_ring_write.exit217.radeon_ring_write.exit230_crit_edge: ; preds = %radeon_ring_write.exit217
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit230

if.then.i220:                                     ; preds = %radeon_ring_write.exit217
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %radeon_ring_write.exit230

radeon_ring_write.exit230:                        ; preds = %if.then.i220, %radeon_ring_write.exit217.radeon_ring_write.exit230_crit_edge
  %174 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %ring1.i, align 8
  %176 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %wptr.i, align 4
  %inc.i223 = add i32 %177, 1
  store i32 %inc.i223, ptr %wptr.i, align 4
  %arrayidx.i224 = getelementptr i32, ptr %175, i32 %177
  %178 = ptrtoint ptr %arrayidx.i224 to i32
  call void @__asan_store4_noabort(i32 %178)
  store volatile i32 5062, ptr %arrayidx.i224, align 4
  %179 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %ptr_mask.i, align 4
  %181 = load i32, ptr %wptr.i, align 4
  %and.i226 = and i32 %181, %180
  store i32 %and.i226, ptr %wptr.i, align 4
  %182 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %count_dw.i, align 4
  %dec.i227 = add i32 %183, -1
  store i32 %dec.i227, ptr %count_dw.i, align 4
  %184 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i229 = add i32 %185, -1
  store i32 %dec4.i229, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i227)
  %cmp.i232 = icmp slt i32 %dec.i227, 1
  br i1 %cmp.i232, label %if.then.i233, label %radeon_ring_write.exit230.radeon_ring_write.exit243_crit_edge

radeon_ring_write.exit230.radeon_ring_write.exit243_crit_edge: ; preds = %radeon_ring_write.exit230
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit243

if.then.i233:                                     ; preds = %radeon_ring_write.exit230
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %radeon_ring_write.exit243

radeon_ring_write.exit243:                        ; preds = %if.then.i233, %radeon_ring_write.exit230.radeon_ring_write.exit243_crit_edge
  %186 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %ring1.i, align 8
  %188 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %wptr.i, align 4
  %inc.i236 = add i32 %189, 1
  store i32 %inc.i236, ptr %wptr.i, align 4
  %arrayidx.i237 = getelementptr i32, ptr %187, i32 %189
  %190 = ptrtoint ptr %arrayidx.i237 to i32
  call void @__asan_store4_noabort(i32 %190)
  store volatile i32 3, ptr %arrayidx.i237, align 4
  %191 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %ptr_mask.i, align 4
  %193 = load i32, ptr %wptr.i, align 4
  %and.i239 = and i32 %193, %192
  store i32 %and.i239, ptr %wptr.i, align 4
  %194 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %count_dw.i, align 4
  %dec.i240 = add i32 %195, -1
  store i32 %dec.i240, ptr %count_dw.i, align 4
  %196 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i242 = add i32 %197, -1
  store i32 %dec4.i242, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i240)
  %cmp.i245 = icmp slt i32 %dec.i240, 1
  br i1 %cmp.i245, label %if.then.i246, label %radeon_ring_write.exit243.radeon_ring_write.exit256_crit_edge

radeon_ring_write.exit243.radeon_ring_write.exit256_crit_edge: ; preds = %radeon_ring_write.exit243
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit256

if.then.i246:                                     ; preds = %radeon_ring_write.exit243
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %radeon_ring_write.exit256

radeon_ring_write.exit256:                        ; preds = %if.then.i246, %radeon_ring_write.exit243.radeon_ring_write.exit256_crit_edge
  %198 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %ring1.i, align 8
  %200 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %wptr.i, align 4
  %inc.i249 = add i32 %201, 1
  store i32 %inc.i249, ptr %wptr.i, align 4
  %arrayidx.i250 = getelementptr i32, ptr %199, i32 %201
  %202 = ptrtoint ptr %arrayidx.i250 to i32
  call void @__asan_store4_noabort(i32 %202)
  store volatile i32 1480, ptr %arrayidx.i250, align 4
  %203 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %ptr_mask.i, align 4
  %205 = load i32, ptr %wptr.i, align 4
  %and.i252 = and i32 %205, %204
  store i32 %and.i252, ptr %wptr.i, align 4
  %206 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %count_dw.i, align 4
  %dec.i253 = add i32 %207, -1
  store i32 %dec.i253, ptr %count_dw.i, align 4
  %208 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i255 = add i32 %209, -1
  store i32 %dec4.i255, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i253)
  %cmp.i258 = icmp slt i32 %dec.i253, 1
  br i1 %cmp.i258, label %if.then.i259, label %radeon_ring_write.exit256.radeon_ring_write.exit269_crit_edge

radeon_ring_write.exit256.radeon_ring_write.exit269_crit_edge: ; preds = %radeon_ring_write.exit256
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit269

if.then.i259:                                     ; preds = %radeon_ring_write.exit256
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %radeon_ring_write.exit269

radeon_ring_write.exit269:                        ; preds = %if.then.i259, %radeon_ring_write.exit256.radeon_ring_write.exit269_crit_edge
  %210 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %ring1.i, align 8
  %212 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %wptr.i, align 4
  %inc.i262 = add i32 %213, 1
  store i32 %inc.i262, ptr %wptr.i, align 4
  %arrayidx.i263 = getelementptr i32, ptr %211, i32 %213
  %214 = ptrtoint ptr %arrayidx.i263 to i32
  call void @__asan_store4_noabort(i32 %214)
  store volatile i32 196608, ptr %arrayidx.i263, align 4
  %215 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %ptr_mask.i, align 4
  %217 = load i32, ptr %wptr.i, align 4
  %and.i265 = and i32 %217, %216
  store i32 %and.i265, ptr %wptr.i, align 4
  %218 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %count_dw.i, align 4
  %dec.i266 = add i32 %219, -1
  store i32 %dec.i266, ptr %count_dw.i, align 4
  %220 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i268 = add i32 %221, -1
  store i32 %dec4.i268, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i266)
  %cmp.i271 = icmp slt i32 %dec.i266, 1
  br i1 %cmp.i271, label %if.then.i272, label %radeon_ring_write.exit269.radeon_ring_write.exit282_crit_edge

radeon_ring_write.exit269.radeon_ring_write.exit282_crit_edge: ; preds = %radeon_ring_write.exit269
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit282

if.then.i272:                                     ; preds = %radeon_ring_write.exit269
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %radeon_ring_write.exit282

radeon_ring_write.exit282:                        ; preds = %if.then.i272, %radeon_ring_write.exit269.radeon_ring_write.exit282_crit_edge
  %222 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %ring1.i, align 8
  %224 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %wptr.i, align 4
  %inc.i275 = add i32 %225, 1
  store i32 %inc.i275, ptr %wptr.i, align 4
  %arrayidx.i276 = getelementptr i32, ptr %223, i32 %225
  %226 = ptrtoint ptr %arrayidx.i276 to i32
  call void @__asan_store4_noabort(i32 %226)
  store volatile i32 4104, ptr %arrayidx.i276, align 4
  %227 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %ptr_mask.i, align 4
  %229 = load i32, ptr %wptr.i, align 4
  %and.i278 = and i32 %229, %228
  store i32 %and.i278, ptr %wptr.i, align 4
  %230 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %count_dw.i, align 4
  %dec.i279 = add i32 %231, -1
  store i32 %dec.i279, ptr %count_dw.i, align 4
  %232 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i281 = add i32 %233, -1
  store i32 %dec4.i281, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i279)
  %cmp.i284 = icmp slt i32 %dec.i279, 1
  br i1 %cmp.i284, label %if.then.i285, label %radeon_ring_write.exit282.radeon_ring_write.exit295_crit_edge

radeon_ring_write.exit282.radeon_ring_write.exit295_crit_edge: ; preds = %radeon_ring_write.exit282
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit295

if.then.i285:                                     ; preds = %radeon_ring_write.exit282
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %radeon_ring_write.exit295

radeon_ring_write.exit295:                        ; preds = %if.then.i285, %radeon_ring_write.exit282.radeon_ring_write.exit295_crit_edge
  %234 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %ring1.i, align 8
  %236 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %wptr.i, align 4
  %inc.i288 = add i32 %237, 1
  store i32 %inc.i288, ptr %wptr.i, align 4
  %arrayidx.i289 = getelementptr i32, ptr %235, i32 %237
  %238 = ptrtoint ptr %arrayidx.i289 to i32
  call void @__asan_store4_noabort(i32 %238)
  store volatile i32 0, ptr %arrayidx.i289, align 4
  %239 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %ptr_mask.i, align 4
  %241 = load i32, ptr %wptr.i, align 4
  %and.i291 = and i32 %241, %240
  store i32 %and.i291, ptr %wptr.i, align 4
  %242 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %count_dw.i, align 4
  %dec.i292 = add i32 %243, -1
  store i32 %dec.i292, ptr %count_dw.i, align 4
  %244 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i294 = add i32 %245, -1
  store i32 %dec4.i294, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i292)
  %cmp.i297 = icmp slt i32 %dec.i292, 1
  br i1 %cmp.i297, label %if.then.i298, label %radeon_ring_write.exit295.radeon_ring_write.exit308_crit_edge

radeon_ring_write.exit295.radeon_ring_write.exit308_crit_edge: ; preds = %radeon_ring_write.exit295
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit308

if.then.i298:                                     ; preds = %radeon_ring_write.exit295
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %radeon_ring_write.exit308

radeon_ring_write.exit308:                        ; preds = %if.then.i298, %radeon_ring_write.exit295.radeon_ring_write.exit308_crit_edge
  %246 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %ring1.i, align 8
  %248 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %wptr.i, align 4
  %inc.i301 = add i32 %249, 1
  store i32 %inc.i301, ptr %wptr.i, align 4
  %arrayidx.i302 = getelementptr i32, ptr %247, i32 %249
  %250 = ptrtoint ptr %arrayidx.i302 to i32
  call void @__asan_store4_noabort(i32 %250)
  store volatile i32 5011, ptr %arrayidx.i302, align 4
  %251 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %ptr_mask.i, align 4
  %253 = load i32, ptr %wptr.i, align 4
  %and.i304 = and i32 %253, %252
  store i32 %and.i304, ptr %wptr.i, align 4
  %254 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %count_dw.i, align 4
  %dec.i305 = add i32 %255, -1
  store i32 %dec.i305, ptr %count_dw.i, align 4
  %256 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i307 = add i32 %257, -1
  store i32 %dec4.i307, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i305)
  %cmp.i310 = icmp slt i32 %dec.i305, 1
  br i1 %cmp.i310, label %if.then.i311, label %radeon_ring_write.exit308.radeon_ring_write.exit321_crit_edge

radeon_ring_write.exit308.radeon_ring_write.exit321_crit_edge: ; preds = %radeon_ring_write.exit308
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit321

if.then.i311:                                     ; preds = %radeon_ring_write.exit308
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %radeon_ring_write.exit321

radeon_ring_write.exit321:                        ; preds = %if.then.i311, %radeon_ring_write.exit308.radeon_ring_write.exit321_crit_edge
  %258 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %ring1.i, align 8
  %260 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %wptr.i, align 4
  %inc.i314 = add i32 %261, 1
  store i32 %inc.i314, ptr %wptr.i, align 4
  %arrayidx.i315 = getelementptr i32, ptr %259, i32 %261
  %262 = ptrtoint ptr %arrayidx.i315 to i32
  call void @__asan_store4_noabort(i32 %262)
  store volatile i32 10, ptr %arrayidx.i315, align 4
  %263 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %ptr_mask.i, align 4
  %265 = load i32, ptr %wptr.i, align 4
  %and.i317 = and i32 %265, %264
  store i32 %and.i317, ptr %wptr.i, align 4
  %266 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %count_dw.i, align 4
  %dec.i318 = add i32 %267, -1
  store i32 %dec.i318, ptr %count_dw.i, align 4
  %268 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i320 = add i32 %269, -1
  store i32 %dec4.i320, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i318)
  %cmp.i323 = icmp slt i32 %dec.i318, 1
  br i1 %cmp.i323, label %if.then.i324, label %radeon_ring_write.exit321.radeon_ring_write.exit334_crit_edge

radeon_ring_write.exit321.radeon_ring_write.exit334_crit_edge: ; preds = %radeon_ring_write.exit321
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit334

if.then.i324:                                     ; preds = %radeon_ring_write.exit321
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %radeon_ring_write.exit334

radeon_ring_write.exit334:                        ; preds = %if.then.i324, %radeon_ring_write.exit321.radeon_ring_write.exit334_crit_edge
  %270 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %ring1.i, align 8
  %272 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %wptr.i, align 4
  %inc.i327 = add i32 %273, 1
  store i32 %inc.i327, ptr %wptr.i, align 4
  %arrayidx.i328 = getelementptr i32, ptr %271, i32 %273
  %274 = ptrtoint ptr %arrayidx.i328 to i32
  call void @__asan_store4_noabort(i32 %274)
  store volatile i32 5062, ptr %arrayidx.i328, align 4
  %275 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %ptr_mask.i, align 4
  %277 = load i32, ptr %wptr.i, align 4
  %and.i330 = and i32 %277, %276
  store i32 %and.i330, ptr %wptr.i, align 4
  %278 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %count_dw.i, align 4
  %dec.i331 = add i32 %279, -1
  store i32 %dec.i331, ptr %count_dw.i, align 4
  %280 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i333 = add i32 %281, -1
  store i32 %dec4.i333, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i331)
  %cmp.i336 = icmp slt i32 %dec.i331, 1
  br i1 %cmp.i336, label %if.then.i337, label %radeon_ring_write.exit334.radeon_ring_write.exit347_crit_edge

radeon_ring_write.exit334.radeon_ring_write.exit347_crit_edge: ; preds = %radeon_ring_write.exit334
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit347

if.then.i337:                                     ; preds = %radeon_ring_write.exit334
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %radeon_ring_write.exit347

radeon_ring_write.exit347:                        ; preds = %if.then.i337, %radeon_ring_write.exit334.radeon_ring_write.exit347_crit_edge
  %282 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %ring1.i, align 8
  %284 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %wptr.i, align 4
  %inc.i340 = add i32 %285, 1
  store i32 %inc.i340, ptr %wptr.i, align 4
  %arrayidx.i341 = getelementptr i32, ptr %283, i32 %285
  %286 = ptrtoint ptr %arrayidx.i341 to i32
  call void @__asan_store4_noabort(i32 %286)
  store volatile i32 3, ptr %arrayidx.i341, align 4
  %287 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %ptr_mask.i, align 4
  %289 = load i32, ptr %wptr.i, align 4
  %and.i343 = and i32 %289, %288
  store i32 %and.i343, ptr %wptr.i, align 4
  %290 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %count_dw.i, align 4
  %dec.i344 = add i32 %291, -1
  store i32 %dec.i344, ptr %count_dw.i, align 4
  %292 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i346 = add i32 %293, -1
  store i32 %dec4.i346, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i344)
  %cmp.i349 = icmp slt i32 %dec.i344, 1
  br i1 %cmp.i349, label %if.then.i350, label %radeon_ring_write.exit347.radeon_ring_write.exit360_crit_edge

radeon_ring_write.exit347.radeon_ring_write.exit360_crit_edge: ; preds = %radeon_ring_write.exit347
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit360

if.then.i350:                                     ; preds = %radeon_ring_write.exit347
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %radeon_ring_write.exit360

radeon_ring_write.exit360:                        ; preds = %if.then.i350, %radeon_ring_write.exit347.radeon_ring_write.exit360_crit_edge
  %294 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %ring1.i, align 8
  %296 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %wptr.i, align 4
  %inc.i353 = add i32 %297, 1
  store i32 %inc.i353, ptr %wptr.i, align 4
  %arrayidx.i354 = getelementptr i32, ptr %295, i32 %297
  %298 = ptrtoint ptr %arrayidx.i354 to i32
  call void @__asan_store4_noabort(i32 %298)
  store volatile i32 4100, ptr %arrayidx.i354, align 4
  %299 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %ptr_mask.i, align 4
  %301 = load i32, ptr %wptr.i, align 4
  %and.i356 = and i32 %301, %300
  store i32 %and.i356, ptr %wptr.i, align 4
  %302 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %count_dw.i, align 4
  %dec.i357 = add i32 %303, -1
  store i32 %dec.i357, ptr %count_dw.i, align 4
  %304 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i359 = add i32 %305, -1
  store i32 %dec4.i359, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i357)
  %cmp.i362 = icmp slt i32 %dec.i357, 1
  br i1 %cmp.i362, label %if.then.i363, label %radeon_ring_write.exit360.radeon_ring_write.exit373_crit_edge

radeon_ring_write.exit360.radeon_ring_write.exit373_crit_edge: ; preds = %radeon_ring_write.exit360
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit373

if.then.i363:                                     ; preds = %radeon_ring_write.exit360
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %radeon_ring_write.exit373

radeon_ring_write.exit373:                        ; preds = %if.then.i363, %radeon_ring_write.exit360.radeon_ring_write.exit373_crit_edge
  %306 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %ring1.i, align 8
  %308 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %wptr.i, align 4
  %inc.i366 = add i32 %309, 1
  store i32 %inc.i366, ptr %wptr.i, align 4
  %arrayidx.i367 = getelementptr i32, ptr %307, i32 %309
  %310 = ptrtoint ptr %arrayidx.i367 to i32
  call void @__asan_store4_noabort(i32 %310)
  store volatile i32 1717986918, ptr %arrayidx.i367, align 4
  %311 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %ptr_mask.i, align 4
  %313 = load i32, ptr %wptr.i, align 4
  %and.i369 = and i32 %313, %312
  store i32 %and.i369, ptr %wptr.i, align 4
  %314 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %count_dw.i, align 4
  %dec.i370 = add i32 %315, -1
  store i32 %dec.i370, ptr %count_dw.i, align 4
  %316 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i372 = add i32 %317, -1
  store i32 %dec4.i372, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i370)
  %cmp.i375 = icmp slt i32 %dec.i370, 1
  br i1 %cmp.i375, label %if.then.i376, label %radeon_ring_write.exit373.radeon_ring_write.exit386_crit_edge

radeon_ring_write.exit373.radeon_ring_write.exit386_crit_edge: ; preds = %radeon_ring_write.exit373
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit386

if.then.i376:                                     ; preds = %radeon_ring_write.exit373
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %radeon_ring_write.exit386

radeon_ring_write.exit386:                        ; preds = %if.then.i376, %radeon_ring_write.exit373.radeon_ring_write.exit386_crit_edge
  %318 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %ring1.i, align 8
  %320 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %wptr.i, align 4
  %inc.i379 = add i32 %321, 1
  store i32 %inc.i379, ptr %wptr.i, align 4
  %arrayidx.i380 = getelementptr i32, ptr %319, i32 %321
  %322 = ptrtoint ptr %arrayidx.i380 to i32
  call void @__asan_store4_noabort(i32 %322)
  store volatile i32 4101, ptr %arrayidx.i380, align 4
  %323 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %ptr_mask.i, align 4
  %325 = load i32, ptr %wptr.i, align 4
  %and.i382 = and i32 %325, %324
  store i32 %and.i382, ptr %wptr.i, align 4
  %326 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %count_dw.i, align 4
  %dec.i383 = add i32 %327, -1
  store i32 %dec.i383, ptr %count_dw.i, align 4
  %328 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i385 = add i32 %329, -1
  store i32 %dec4.i385, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i383)
  %cmp.i388 = icmp slt i32 %dec.i383, 1
  br i1 %cmp.i388, label %if.then.i389, label %radeon_ring_write.exit386.radeon_ring_write.exit399_crit_edge

radeon_ring_write.exit386.radeon_ring_write.exit399_crit_edge: ; preds = %radeon_ring_write.exit386
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit399

if.then.i389:                                     ; preds = %radeon_ring_write.exit386
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %radeon_ring_write.exit399

radeon_ring_write.exit399:                        ; preds = %if.then.i389, %radeon_ring_write.exit386.radeon_ring_write.exit399_crit_edge
  %330 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %ring1.i, align 8
  %332 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %wptr.i, align 4
  %inc.i392 = add i32 %333, 1
  store i32 %inc.i392, ptr %wptr.i, align 4
  %arrayidx.i393 = getelementptr i32, ptr %331, i32 %333
  %334 = ptrtoint ptr %arrayidx.i393 to i32
  call void @__asan_store4_noabort(i32 %334)
  store volatile i32 107374182, ptr %arrayidx.i393, align 4
  %335 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %ptr_mask.i, align 4
  %337 = load i32, ptr %wptr.i, align 4
  %and.i395 = and i32 %337, %336
  store i32 %and.i395, ptr %wptr.i, align 4
  %338 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %count_dw.i, align 4
  %dec.i396 = add i32 %339, -1
  store i32 %dec.i396, ptr %count_dw.i, align 4
  %340 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i398 = add i32 %341, -1
  store i32 %dec4.i398, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i396)
  %cmp.i401 = icmp slt i32 %dec.i396, 1
  br i1 %cmp.i401, label %if.then.i402, label %radeon_ring_write.exit399.radeon_ring_write.exit412_crit_edge

radeon_ring_write.exit399.radeon_ring_write.exit412_crit_edge: ; preds = %radeon_ring_write.exit399
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit412

if.then.i402:                                     ; preds = %radeon_ring_write.exit399
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %radeon_ring_write.exit412

radeon_ring_write.exit412:                        ; preds = %if.then.i402, %radeon_ring_write.exit399.radeon_ring_write.exit412_crit_edge
  %342 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %ring1.i, align 8
  %344 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %wptr.i, align 4
  %inc.i405 = add i32 %345, 1
  store i32 %inc.i405, ptr %wptr.i, align 4
  %arrayidx.i406 = getelementptr i32, ptr %343, i32 %345
  %346 = ptrtoint ptr %arrayidx.i406 to i32
  call void @__asan_store4_noabort(i32 %346)
  store volatile i32 4253, ptr %arrayidx.i406, align 4
  %347 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %ptr_mask.i, align 4
  %349 = load i32, ptr %wptr.i, align 4
  %and.i408 = and i32 %349, %348
  store i32 %and.i408, ptr %wptr.i, align 4
  %350 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %count_dw.i, align 4
  %dec.i409 = add i32 %351, -1
  store i32 %dec.i409, ptr %count_dw.i, align 4
  %352 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i411 = add i32 %353, -1
  store i32 %dec4.i411, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i409)
  %cmp.i414 = icmp slt i32 %dec.i409, 1
  br i1 %cmp.i414, label %if.then.i415, label %radeon_ring_write.exit412.radeon_ring_write.exit425_crit_edge

radeon_ring_write.exit412.radeon_ring_write.exit425_crit_edge: ; preds = %radeon_ring_write.exit412
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit425

if.then.i415:                                     ; preds = %radeon_ring_write.exit412
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %radeon_ring_write.exit425

radeon_ring_write.exit425:                        ; preds = %if.then.i415, %radeon_ring_write.exit412.radeon_ring_write.exit425_crit_edge
  %354 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %ring1.i, align 8
  %356 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %wptr.i, align 4
  %inc.i418 = add i32 %357, 1
  store i32 %inc.i418, ptr %wptr.i, align 4
  %arrayidx.i419 = getelementptr i32, ptr %355, i32 %357
  %358 = ptrtoint ptr %arrayidx.i419 to i32
  call void @__asan_store4_noabort(i32 %358)
  store volatile i32 3, ptr %arrayidx.i419, align 4
  %359 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %ptr_mask.i, align 4
  %361 = load i32, ptr %wptr.i, align 4
  %and.i421 = and i32 %361, %360
  store i32 %and.i421, ptr %wptr.i, align 4
  %362 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %count_dw.i, align 4
  %dec.i422 = add i32 %363, -1
  store i32 %dec.i422, ptr %count_dw.i, align 4
  %364 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i424 = add i32 %365, -1
  store i32 %dec4.i424, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i422)
  %cmp.i427 = icmp slt i32 %dec.i422, 1
  br i1 %cmp.i427, label %if.then.i428, label %radeon_ring_write.exit425.radeon_ring_write.exit438_crit_edge

radeon_ring_write.exit425.radeon_ring_write.exit438_crit_edge: ; preds = %radeon_ring_write.exit425
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit438

if.then.i428:                                     ; preds = %radeon_ring_write.exit425
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %radeon_ring_write.exit438

radeon_ring_write.exit438:                        ; preds = %if.then.i428, %radeon_ring_write.exit425.radeon_ring_write.exit438_crit_edge
  %366 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %ring1.i, align 8
  %368 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %wptr.i, align 4
  %inc.i431 = add i32 %369, 1
  store i32 %inc.i431, ptr %wptr.i, align 4
  %arrayidx.i432 = getelementptr i32, ptr %367, i32 %369
  %370 = ptrtoint ptr %arrayidx.i432 to i32
  call void @__asan_store4_noabort(i32 %370)
  store volatile i32 4258, ptr %arrayidx.i432, align 4
  %371 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %ptr_mask.i, align 4
  %373 = load i32, ptr %wptr.i, align 4
  %and.i434 = and i32 %373, %372
  store i32 %and.i434, ptr %wptr.i, align 4
  %374 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %count_dw.i, align 4
  %dec.i435 = add i32 %375, -1
  store i32 %dec.i435, ptr %count_dw.i, align 4
  %376 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i437 = add i32 %377, -1
  store i32 %dec4.i437, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i435)
  %cmp.i440 = icmp slt i32 %dec.i435, 1
  br i1 %cmp.i440, label %if.then.i441, label %radeon_ring_write.exit438.radeon_ring_write.exit451_crit_edge

radeon_ring_write.exit438.radeon_ring_write.exit451_crit_edge: ; preds = %radeon_ring_write.exit438
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit451

if.then.i441:                                     ; preds = %radeon_ring_write.exit438
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %radeon_ring_write.exit451

radeon_ring_write.exit451:                        ; preds = %if.then.i441, %radeon_ring_write.exit438.radeon_ring_write.exit451_crit_edge
  %378 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %ring1.i, align 8
  %380 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %wptr.i, align 4
  %inc.i444 = add i32 %381, 1
  store i32 %inc.i444, ptr %wptr.i, align 4
  %arrayidx.i445 = getelementptr i32, ptr %379, i32 %381
  %382 = ptrtoint ptr %arrayidx.i445 to i32
  call void @__asan_store4_noabort(i32 %382)
  store volatile i32 288, ptr %arrayidx.i445, align 4
  %383 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %ptr_mask.i, align 4
  %385 = load i32, ptr %wptr.i, align 4
  %and.i447 = and i32 %385, %384
  store i32 %and.i447, ptr %wptr.i, align 4
  %386 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %count_dw.i, align 4
  %dec.i448 = add i32 %387, -1
  store i32 %dec.i448, ptr %count_dw.i, align 4
  %388 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i450 = add i32 %389, -1
  store i32 %dec4.i450, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i448)
  %cmp.i453 = icmp slt i32 %dec.i448, 1
  br i1 %cmp.i453, label %if.then.i454, label %radeon_ring_write.exit451.radeon_ring_write.exit464_crit_edge

radeon_ring_write.exit451.radeon_ring_write.exit464_crit_edge: ; preds = %radeon_ring_write.exit451
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit464

if.then.i454:                                     ; preds = %radeon_ring_write.exit451
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %radeon_ring_write.exit464

radeon_ring_write.exit464:                        ; preds = %if.then.i454, %radeon_ring_write.exit451.radeon_ring_write.exit464_crit_edge
  %390 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %ring1.i, align 8
  %392 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %wptr.i, align 4
  %inc.i457 = add i32 %393, 1
  store i32 %inc.i457, ptr %wptr.i, align 4
  %arrayidx.i458 = getelementptr i32, ptr %391, i32 %393
  %394 = ptrtoint ptr %arrayidx.i458 to i32
  call void @__asan_store4_noabort(i32 %394)
  store volatile i32 4259, ptr %arrayidx.i458, align 4
  %395 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %ptr_mask.i, align 4
  %397 = load i32, ptr %wptr.i, align 4
  %and.i460 = and i32 %397, %396
  store i32 %and.i460, ptr %wptr.i, align 4
  %398 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %count_dw.i, align 4
  %dec.i461 = add i32 %399, -1
  store i32 %dec.i461, ptr %count_dw.i, align 4
  %400 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i463 = add i32 %401, -1
  store i32 %dec4.i463, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i461)
  %cmp.i466 = icmp slt i32 %dec.i461, 1
  br i1 %cmp.i466, label %if.then.i467, label %radeon_ring_write.exit464.radeon_ring_write.exit477_crit_edge

radeon_ring_write.exit464.radeon_ring_write.exit477_crit_edge: ; preds = %radeon_ring_write.exit464
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit477

if.then.i467:                                     ; preds = %radeon_ring_write.exit464
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #8
  br label %radeon_ring_write.exit477

radeon_ring_write.exit477:                        ; preds = %if.then.i467, %radeon_ring_write.exit464.radeon_ring_write.exit477_crit_edge
  %402 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %ring1.i, align 8
  %404 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %wptr.i, align 4
  %inc.i470 = add i32 %405, 1
  store i32 %inc.i470, ptr %wptr.i, align 4
  %arrayidx.i471 = getelementptr i32, ptr %403, i32 %405
  %406 = ptrtoint ptr %arrayidx.i471 to i32
  call void @__asan_store4_noabort(i32 %406)
  store volatile i32 5, ptr %arrayidx.i471, align 4
  %407 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load i32, ptr %ptr_mask.i, align 4
  %409 = load i32, ptr %wptr.i, align 4
  %and.i473 = and i32 %409, %408
  store i32 %and.i473, ptr %wptr.i, align 4
  %410 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %count_dw.i, align 4
  %dec.i474 = add i32 %411, -1
  store i32 %dec.i474, ptr %count_dw.i, align 4
  %412 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i476 = add i32 %413, -1
  store i32 %dec4.i476, ptr %ring_free_dw.i, align 8
  tail call void @radeon_ring_unlock_commit(ptr noundef %rdev, ptr noundef %ring, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %radeon_ring_write.exit477, %sw.epilog.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_ring_lock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ring_unlock_commit(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r300_mc_wait_for_idle(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %usec_timeout = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %0 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usec_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp4.not = icmp eq i32 %1, 0
  br i1 %cmp4.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 336
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  %5 = and i32 %4, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #8
  %inc = add nuw i32 %i.05, 1
  %7 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %usec_timeout, align 4
  %cmp = icmp ult i32 %inc, %8
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r300_asic_reset(ptr noundef %rdev, i1 noundef zeroext %hard) local_unnamed_addr #0 align 64 {
entry:
  %save = alloca %struct.r100_mc_save, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %save) #8
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = call ptr @memset(ptr %save, i32 255, i32 24)
  %1 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 3648
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  %.mask = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool.not = icmp eq i32 %.mask, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @r100_mc_stop(ptr noundef %rdev, ptr noundef nonnull %save) #8
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i76 = getelementptr i8, ptr %5, i32 3648
  %6 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i76) #8, !srcloc !146
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  %7 = call i32 @llvm.bswap.i32(i32 %6) #8
  %8 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rdev, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 426, i32 noundef %7) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  call void @arm_heavy_mb() #8
  %10 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i78 = getelementptr i8, ptr %11, i32 1856
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i78, i32 0) #8, !srcloc !145
  %12 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i80 = getelementptr i8, ptr %13, i32 1796
  %14 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i80) #8, !srcloc !146
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  %15 = or i32 %14, 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  call void @arm_heavy_mb() #8
  %16 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i82 = getelementptr i8, ptr %17, i32 1796
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i82, i32 %15) #8, !srcloc !145
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  call void @arm_heavy_mb() #8
  %18 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i84 = getelementptr i8, ptr %19, i32 1820
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i84, i32 0) #8, !srcloc !145
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  call void @arm_heavy_mb() #8
  %20 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i86 = getelementptr i8, ptr %21, i32 1812
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86, i32 0) #8, !srcloc !145
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  call void @arm_heavy_mb() #8
  %22 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i88 = getelementptr i8, ptr %23, i32 1796
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88, i32 %14) #8, !srcloc !145
  %pdev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 2
  %24 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev, align 8
  %call3 = call i32 @pci_save_state(ptr noundef %25) #8
  call void @r100_bm_disable(ptr noundef %rdev) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  call void @arm_heavy_mb() #8
  %26 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i90 = getelementptr i8, ptr %27, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90, i32 69206016) #8, !srcloc !145
  %28 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i92 = getelementptr i8, ptr %29, i32 240
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i92) #8, !srcloc !146
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end
  %__ms.0105 = phi i32 [ 500, %if.end ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.0105, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %31(i32 noundef 214748000) #8
  %tobool5.not = icmp eq i32 %dec, 0
  br i1 %tobool5.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %while.body
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  call void @arm_heavy_mb() #8
  %32 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i94 = getelementptr i8, ptr %33, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i94, i32 0) #8, !srcloc !145
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %34(i32 noundef 214748000) #8
  %35 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i96 = getelementptr i8, ptr %36, i32 3648
  %37 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i96) #8, !srcloc !146
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  %38 = call i32 @llvm.bswap.i32(i32 %37) #8
  %39 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rdev, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %40, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 445, i32 noundef %38) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  call void @arm_heavy_mb() #8
  %41 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i98 = getelementptr i8, ptr %42, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i98, i32 16777216) #8, !srcloc !145
  %43 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i100 = getelementptr i8, ptr %44, i32 240
  %45 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i100) #8, !srcloc !146
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  br label %while.body16

while.body16:                                     ; preds = %while.body16.while.body16_crit_edge, %while.end
  %__ms12.0106 = phi i32 [ 500, %while.end ], [ %dec14, %while.body16.while.body16_crit_edge ]
  %dec14 = add nsw i32 %__ms12.0106, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %46(i32 noundef 214748000) #8
  %tobool15.not = icmp eq i32 %dec14, 0
  br i1 %tobool15.not, label %while.end17, label %while.body16.while.body16_crit_edge

while.body16.while.body16_crit_edge:              ; preds = %while.body16
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body16

while.end17:                                      ; preds = %while.body16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  call void @arm_heavy_mb() #8
  %47 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i102 = getelementptr i8, ptr %48, i32 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i102, i32 0) #8, !srcloc !145
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %49(i32 noundef 214748000) #8
  %50 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i104 = getelementptr i8, ptr %51, i32 3648
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i104) #8, !srcloc !146
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  %53 = call i32 @llvm.bswap.i32(i32 %52) #8
  %54 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rdev, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %55, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 457, i32 noundef %53) #11
  %56 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pdev, align 8
  call void @pci_restore_state(ptr noundef %57) #8
  call void @r100_enable_bm(ptr noundef %rdev) #8
  %58 = and i32 %53, 68157440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %59 = icmp eq i32 %58, 0
  %60 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rdev, align 8
  br i1 %59, label %do.end37, label %do.end33

do.end33:                                         ; preds = %while.end17
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.17) #11
  br label %if.end39

do.end37:                                         ; preds = %while.end17
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %61, ptr noundef nonnull @.str.20) #11
  br label %if.end39

if.end39:                                         ; preds = %do.end37, %do.end33
  %ret.0 = phi i32 [ -1, %do.end33 ], [ 0, %do.end37 ]
  call void @r100_mc_resume(ptr noundef %rdev, ptr noundef nonnull %save) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end39 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %save) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_mc_stop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_bm_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_enable_bm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_mc_resume(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r300_mc_init(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mc = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42
  %vram_is_ddr = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 13
  %0 = ptrtoint ptr %vram_is_ddr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %vram_is_ddr, align 4
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %1 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 320
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  %4 = lshr i32 %3, 24
  %and = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %.not = icmp eq i32 %and, 3
  br i1 %.not, label %entry.sw.epilog_crit_edge, label %switch.lookup

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.r300_mc_init, i32 0, i32 %and
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 128, %entry.sw.epilog_crit_edge ]
  %vram_width9 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 10
  %6 = ptrtoint ptr %vram_width9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink, ptr %vram_width9, align 8
  tail call void @r100_vram_init_sizes(ptr noundef %rdev) #8
  %aper_base = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 1
  %7 = ptrtoint ptr %aper_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %aper_base, align 4
  %flags = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 8
  %and11 = and i32 %10, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool.not = icmp eq i32 %and11, 0
  br i1 %tobool.not, label %sw.epilog.if.end_crit_edge, label %if.then

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i41 = getelementptr i8, ptr %12, i32 348
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  %shl = shl i32 %14, 16
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge
  %base.0.in = phi i32 [ %shl, %if.then ], [ %8, %sw.epilog.if.end_crit_edge ]
  %base.0 = zext i32 %base.0.in to i64
  tail call void @radeon_vram_location(ptr noundef %rdev, ptr noundef %mc, i64 noundef %base.0) #8
  %gtt_base_align = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 15
  %15 = ptrtoint ptr %gtt_base_align to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 0, ptr %gtt_base_align, align 8
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 8
  %and18 = and i32 %17, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.then20, label %if.end.if.end22_crit_edge

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_gtt_location(ptr noundef %rdev, ptr noundef %mc) #8
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end.if.end22_crit_edge
  tail call void @radeon_update_bandwidth_info(ptr noundef %rdev) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_vram_init_sizes(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_vram_location(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_gtt_location(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_update_bandwidth_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv370_set_pcie_lanes(ptr noundef %rdev, i32 noundef %lanes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %2 = and i32 %1, 2228224
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %2)
  %.not = icmp eq i32 %2, 2097152
  br i1 %.not, label %if.end5, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %lanes)
  %3 = icmp ult i32 %lanes, 13
  br i1 %3, label %switch.lookup, label %if.end5.sw.epilog_crit_edge

if.end5.sw.epilog_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.rv370_set_pcie_lanes, i32 0, i32 %lanes
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end5.sw.epilog_crit_edge
  %mask.0 = phi i32 [ %switch.load, %switch.lookup ], [ 6, %if.end5.sw.epilog_crit_edge ]
  %pcie_idx_lock.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 23
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i) #8
  %pcie_reg_mask.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 36
  %5 = ptrtoint ptr %pcie_reg_mask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pcie_reg_mask.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %and.i = shl i32 %6, 24
  %7 = and i32 %and.i, -1577058304
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %8 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %7) #8, !srcloc !145
  %10 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %11, i32 52
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i, i32 noundef %call2.i) #8
  %and12 = and i32 %13, 112
  %shl = shl nuw nsw i32 %mask.0, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and12, i32 %shl)
  %cmp = icmp eq i32 %and12, %shl
  br i1 %cmp, label %sw.epilog.cleanup_crit_edge, label %if.end14

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %sw.epilog
  %and15 = and i32 %13, -1800
  %or = or i32 %and15, %mask.0
  %call2.i34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i) #8
  %14 = ptrtoint ptr %pcie_reg_mask.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pcie_reg_mask.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %and.i36 = shl i32 %15, 24
  %16 = and i32 %and.i36, -1577058304
  %17 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i38 = getelementptr i8, ptr %18, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i38, i32 %16) #8, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %19 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  %20 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %21, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %19) #8, !srcloc !145
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i, i32 noundef %call2.i34) #8
  %or16 = or i32 %or, 256
  %call2.i40 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i) #8
  %22 = ptrtoint ptr %pcie_reg_mask.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pcie_reg_mask.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %and.i42 = shl i32 %23, 24
  %24 = and i32 %and.i42, -1577058304
  %25 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i44 = getelementptr i8, ptr %26, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i44, i32 %24) #8, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %27 = tail call i32 @llvm.bswap.i32(i32 %or16) #8
  %28 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i11.i45 = getelementptr i8, ptr %29, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i45, i32 %27) #8, !srcloc !145
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i, i32 noundef %call2.i40) #8
  %call2.i47 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i) #8
  %30 = ptrtoint ptr %pcie_reg_mask.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pcie_reg_mask.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %and.i49 = shl i32 %31, 24
  %32 = and i32 %and.i49, -1577058304
  %33 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i51 = getelementptr i8, ptr %34, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i51, i32 %32) #8, !srcloc !145
  %35 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i12.i52 = getelementptr i8, ptr %36, i32 52
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i52) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i, i32 noundef %call2.i47) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %cmp1860 = icmp eq i32 %37, -1
  br i1 %cmp1860, label %if.end14.while.body_crit_edge, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14.while.body_crit_edge:                    ; preds = %if.end14
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end14.while.body_crit_edge
  %call2.i54 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i) #8
  %38 = ptrtoint ptr %pcie_reg_mask.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pcie_reg_mask.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %and.i56 = shl i32 %39, 24
  %40 = and i32 %and.i56, -1577058304
  %41 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i58 = getelementptr i8, ptr %42, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i58, i32 %40) #8, !srcloc !145
  %43 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i12.i59 = getelementptr i8, ptr %44, i32 52
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i59) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i, i32 noundef %call2.i54) #8
  %cmp18 = icmp eq i32 %45, -1
  br i1 %cmp18, label %while.body.while.body_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv370_get_pcie_lanes(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %2 = and i32 %1, 2228224
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %2)
  %.not = icmp eq i32 %2, 2097152
  br i1 %.not, label %if.end5, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %entry
  %pcie_idx_lock.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 23
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i) #8
  %pcie_reg_mask.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 36
  %3 = ptrtoint ptr %pcie_reg_mask.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pcie_reg_mask.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %and.i = shl i32 %4, 24
  %5 = and i32 %and.i, -1577058304
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %6 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %5) #8, !srcloc !145
  %8 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %9, i32 52
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  %11 = lshr i32 %10, 28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i, i32 noundef %call2.i) #8
  %shr = and i32 %11, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %shr)
  %12 = icmp ult i32 %shr, 5
  br i1 %12, label %switch.lookup, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.rv370_get_pcie_lanes, i32 0, i32 %shr
  %13 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %switch.load, %switch.lookup ], [ 16, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r300_cs_parse(ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  %reloc.i = alloca ptr, align 4
  %pkt = alloca %struct.radeon_cs_packet, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pkt) #8
  %0 = getelementptr inbounds %struct.radeon_cs_packet, ptr %pkt, i32 0, i32 1
  %1 = getelementptr inbounds %struct.radeon_cs_packet, ptr %pkt, i32 0, i32 3
  %2 = getelementptr inbounds %struct.radeon_cs_packet, ptr %pkt, i32 0, i32 4
  %3 = call ptr @memset(ptr %pkt, i32 255, i32 24)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 2388) #12
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %rdev = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 1
  %5 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rdev, align 4
  tail call void @r100_cs_track_clear(ptr noundef %6, ptr noundef nonnull %call7.i.i) #8
  %track1 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 18
  %7 = ptrtoint ptr %track1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %track1, align 8
  %idx = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 6
  %ptr.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 16, i32 3
  %filp89.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 2
  %chunk_ib.i234.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.end
  %8 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idx, align 8
  %call2 = call i32 @radeon_cs_packet_parse(ptr noundef %p, ptr noundef nonnull %pkt, i32 noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %do.body
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %2, align 4
  %add = add i32 %11, 2
  %12 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %idx, align 8
  %add6 = add i32 %add, %13
  store i32 %add6, ptr %idx, align 8
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %0, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %15, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %if.end4.do.cond_crit_edge
    i32 3, label %sw.bb11
  ]

if.end4.do.cond_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond

sw.bb:                                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rdev, align 4
  %config = getelementptr inbounds %struct.radeon_device, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %config, align 8
  %reg_safe_bm_size = getelementptr inbounds %struct.radeon_device, ptr %18, i32 0, i32 5, i32 0, i32 1
  %21 = ptrtoint ptr %reg_safe_bm_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reg_safe_bm_size, align 4
  %call10 = call i32 @r100_cs_parse_packet0(ptr noundef %p, ptr noundef nonnull %pkt, ptr noundef %20, i32 noundef %22, ptr noundef nonnull @r300_packet0_check) #8
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reloc.i) #8
  %23 = ptrtoint ptr %reloc.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 -1 to ptr), ptr %reloc.i, align 4, !annotation !150
  %24 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ptr.i, align 8
  %26 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pkt, align 4
  %add.i = add i32 %27, 1
  %28 = ptrtoint ptr %track1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %track1, align 8
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %1, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %31, label %sw.default.i [
    i32 47, label %sw.bb.i
    i32 51, label %sw.bb4.i
    i32 41, label %sw.bb18.i
    i32 53, label %sw.bb30.i
    i32 40, label %sw.bb47.i
    i32 52, label %sw.bb56.i
    i32 42, label %sw.bb64.i
    i32 54, label %sw.bb73.i
    i32 55, label %sw.bb11.sw.bb81.i_crit_edge
    i32 50, label %sw.bb11.sw.bb81.i_crit_edge38
    i32 56, label %sw.bb87.i
    i32 16, label %sw.bb11.sw.epilog.i_crit_edge
  ]

sw.bb11.sw.epilog.i_crit_edge:                    ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb11.sw.bb81.i_crit_edge38:                    ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb81.i

sw.bb11.sw.bb81.i_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb81.i

sw.bb.i:                                          ; preds = %sw.bb11
  %call.i = call i32 @r100_packet3_load_vbpntr(ptr noundef %p, ptr noundef nonnull %pkt, i32 noundef %add.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %sw.bb.i.sw.epilog.i_crit_edge, label %sw.bb.i.r300_packet3_check.exit_crit_edge

sw.bb.i.r300_packet3_check.exit_crit_edge:        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %r300_packet3_check.exit

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %sw.bb11
  %call5.i = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end9.i, label %if.then7.i

if.then7.i:                                       ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %1, align 4
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.53, i32 noundef %34) #8
  call void @radeon_cs_dump_packet(ptr noundef %p, ptr noundef nonnull %pkt) #8
  br label %r300_packet3_check.exit

if.end9.i:                                        ; preds = %sw.bb4.i
  %add10.i = add i32 %27, 2
  %35 = ptrtoint ptr %chunk_ib.i234.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %chunk_ib.i234.i, align 4
  %kdata.i.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %kdata.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %kdata.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end9.i.radeon_get_ib_value.exit.i_crit_edge

if.end9.i.radeon_get_ib_value.exit.i_crit_edge:   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_get_ib_value.exit.i

if.end.i.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ptr.i, align 8
  br label %radeon_get_ib_value.exit.i

radeon_get_ib_value.exit.i:                       ; preds = %if.end.i.i, %if.end9.i.radeon_get_ib_value.exit.i_crit_edge
  %.pn.i.i = phi ptr [ %40, %if.end.i.i ], [ %38, %if.end9.i.radeon_get_ib_value.exit.i_crit_edge ]
  %retval.0.in.i.i = getelementptr i32, ptr %.pn.i.i, i32 %add10.i
  %41 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %retval.0.i.i = load i32, ptr %retval.0.in.i.i, align 4
  %42 = ptrtoint ptr %reloc.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reloc.i, align 4
  %gpu_offset.i = getelementptr inbounds %struct.radeon_bo_list, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %gpu_offset.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %gpu_offset.i, align 8
  %conv.i = trunc i64 %45 to i32
  %add12.i = add i32 %retval.0.i.i, %conv.i
  %arrayidx.i = getelementptr i32, ptr %25, i32 %add10.i
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile i32 %add12.i, ptr %arrayidx.i, align 4
  %47 = load ptr, ptr %reloc.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 8
  %call14.i = call i32 @r100_cs_track_check_pkt3_indx_buffer(ptr noundef %p, ptr noundef nonnull %pkt, ptr noundef %49) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %radeon_get_ib_value.exit.i.sw.epilog.i_crit_edge, label %radeon_get_ib_value.exit.i.r300_packet3_check.exit_crit_edge

radeon_get_ib_value.exit.i.r300_packet3_check.exit_crit_edge: ; preds = %radeon_get_ib_value.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %r300_packet3_check.exit

radeon_get_ib_value.exit.i.sw.epilog.i_crit_edge: ; preds = %radeon_get_ib_value.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb18.i:                                        ; preds = %sw.bb11
  %add19.i = add i32 %27, 2
  %50 = ptrtoint ptr %chunk_ib.i234.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %chunk_ib.i234.i, align 4
  %kdata.i172.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %kdata.i172.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %kdata.i172.i, align 4
  %tobool.not.i173.i = icmp eq ptr %53, null
  br i1 %tobool.not.i173.i, label %radeon_get_ib_value.exit179.i, label %radeon_get_ib_value.exit179.thread.i

radeon_get_ib_value.exit179.i:                    ; preds = %sw.bb18.i
  %retval.0.in.i177.i = getelementptr i32, ptr %25, i32 %add19.i
  %54 = ptrtoint ptr %retval.0.in.i177.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %retval.0.i178.i = load i32, ptr %retval.0.in.i177.i, align 4
  %55 = and i32 %retval.0.i178.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %55)
  %cmp.not.i = icmp eq i32 %55, 48
  br i1 %cmp.not.i, label %radeon_get_ib_value.exit179.i.radeon_get_ib_value.exit188.i_crit_edge, label %radeon_get_ib_value.exit179.i.if.then22.i_crit_edge

radeon_get_ib_value.exit179.i.if.then22.i_crit_edge: ; preds = %radeon_get_ib_value.exit179.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22.i

radeon_get_ib_value.exit179.i.radeon_get_ib_value.exit188.i_crit_edge: ; preds = %radeon_get_ib_value.exit179.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_get_ib_value.exit188.i

radeon_get_ib_value.exit179.thread.i:             ; preds = %sw.bb18.i
  %retval.0.in.i177244.i = getelementptr i32, ptr %53, i32 %add19.i
  %56 = ptrtoint ptr %retval.0.in.i177244.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %retval.0.i178245.i = load i32, ptr %retval.0.in.i177244.i, align 4
  %57 = and i32 %retval.0.i178245.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %57)
  %cmp.not246.i = icmp eq i32 %57, 48
  br i1 %cmp.not246.i, label %radeon_get_ib_value.exit179.thread.i.radeon_get_ib_value.exit188.i_crit_edge, label %radeon_get_ib_value.exit179.thread.i.if.then22.i_crit_edge

radeon_get_ib_value.exit179.thread.i.if.then22.i_crit_edge: ; preds = %radeon_get_ib_value.exit179.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22.i

radeon_get_ib_value.exit179.thread.i.radeon_get_ib_value.exit188.i_crit_edge: ; preds = %radeon_get_ib_value.exit179.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_get_ib_value.exit188.i

if.then22.i:                                      ; preds = %radeon_get_ib_value.exit179.thread.i.if.then22.i_crit_edge, %radeon_get_ib_value.exit179.i.if.then22.i_crit_edge
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.54) #8
  br label %r300_packet3_check.exit

radeon_get_ib_value.exit188.i:                    ; preds = %radeon_get_ib_value.exit179.thread.i.radeon_get_ib_value.exit188.i_crit_edge, %radeon_get_ib_value.exit179.i.radeon_get_ib_value.exit188.i_crit_edge
  %.pn.i185.i = phi ptr [ %53, %radeon_get_ib_value.exit179.thread.i.radeon_get_ib_value.exit188.i_crit_edge ], [ %25, %radeon_get_ib_value.exit179.i.radeon_get_ib_value.exit188.i_crit_edge ]
  %retval.0.in.i186.i = getelementptr i32, ptr %.pn.i185.i, i32 %add19.i
  %58 = ptrtoint ptr %retval.0.in.i186.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %retval.0.i187.i = load i32, ptr %retval.0.in.i186.i, align 4
  %vap_vf_cntl.i = getelementptr inbounds %struct.r100_cs_track, ptr %29, i32 0, i32 4
  %59 = ptrtoint ptr %vap_vf_cntl.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %retval.0.i187.i, ptr %vap_vf_cntl.i, align 4
  %60 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %2, align 4
  %sub.i = add i32 %61, -1
  %immd_dwords.i = getelementptr inbounds %struct.r100_cs_track, ptr %29, i32 0, i32 6
  %62 = ptrtoint ptr %immd_dwords.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %sub.i, ptr %immd_dwords.i, align 4
  %63 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rdev, align 4
  %call26.i = call i32 @r100_cs_track_check(ptr noundef %64, ptr noundef %29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %radeon_get_ib_value.exit188.i.sw.epilog.i_crit_edge, label %radeon_get_ib_value.exit188.i.r300_packet3_check.exit_crit_edge

radeon_get_ib_value.exit188.i.r300_packet3_check.exit_crit_edge: ; preds = %radeon_get_ib_value.exit188.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %r300_packet3_check.exit

radeon_get_ib_value.exit188.i.sw.epilog.i_crit_edge: ; preds = %radeon_get_ib_value.exit188.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb30.i:                                        ; preds = %sw.bb11
  %65 = ptrtoint ptr %chunk_ib.i234.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %chunk_ib.i234.i, align 4
  %kdata.i190.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %kdata.i190.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %kdata.i190.i, align 4
  %tobool.not.i191.i = icmp eq ptr %68, null
  br i1 %tobool.not.i191.i, label %radeon_get_ib_value.exit197.i, label %radeon_get_ib_value.exit197.thread.i

radeon_get_ib_value.exit197.i:                    ; preds = %sw.bb30.i
  %retval.0.in.i195.i = getelementptr i32, ptr %25, i32 %add.i
  %69 = ptrtoint ptr %retval.0.in.i195.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %retval.0.i196.i = load i32, ptr %retval.0.in.i195.i, align 4
  %70 = and i32 %retval.0.i196.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %70)
  %cmp34.not.i = icmp eq i32 %70, 48
  br i1 %cmp34.not.i, label %radeon_get_ib_value.exit197.i.radeon_get_ib_value.exit206.i_crit_edge, label %radeon_get_ib_value.exit197.i.if.then36.i_crit_edge

radeon_get_ib_value.exit197.i.if.then36.i_crit_edge: ; preds = %radeon_get_ib_value.exit197.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36.i

radeon_get_ib_value.exit197.i.radeon_get_ib_value.exit206.i_crit_edge: ; preds = %radeon_get_ib_value.exit197.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_get_ib_value.exit206.i

radeon_get_ib_value.exit197.thread.i:             ; preds = %sw.bb30.i
  %retval.0.in.i195248.i = getelementptr i32, ptr %68, i32 %add.i
  %71 = ptrtoint ptr %retval.0.in.i195248.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %retval.0.i196249.i = load i32, ptr %retval.0.in.i195248.i, align 4
  %72 = and i32 %retval.0.i196249.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %72)
  %cmp34.not250.i = icmp eq i32 %72, 48
  br i1 %cmp34.not250.i, label %radeon_get_ib_value.exit197.thread.i.radeon_get_ib_value.exit206.i_crit_edge, label %radeon_get_ib_value.exit197.thread.i.if.then36.i_crit_edge

radeon_get_ib_value.exit197.thread.i.if.then36.i_crit_edge: ; preds = %radeon_get_ib_value.exit197.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36.i

radeon_get_ib_value.exit197.thread.i.radeon_get_ib_value.exit206.i_crit_edge: ; preds = %radeon_get_ib_value.exit197.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_get_ib_value.exit206.i

if.then36.i:                                      ; preds = %radeon_get_ib_value.exit197.thread.i.if.then36.i_crit_edge, %radeon_get_ib_value.exit197.i.if.then36.i_crit_edge
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.54) #8
  br label %r300_packet3_check.exit

radeon_get_ib_value.exit206.i:                    ; preds = %radeon_get_ib_value.exit197.thread.i.radeon_get_ib_value.exit206.i_crit_edge, %radeon_get_ib_value.exit197.i.radeon_get_ib_value.exit206.i_crit_edge
  %.pn.i203.i = phi ptr [ %68, %radeon_get_ib_value.exit197.thread.i.radeon_get_ib_value.exit206.i_crit_edge ], [ %25, %radeon_get_ib_value.exit197.i.radeon_get_ib_value.exit206.i_crit_edge ]
  %retval.0.in.i204.i = getelementptr i32, ptr %.pn.i203.i, i32 %add.i
  %73 = ptrtoint ptr %retval.0.in.i204.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %retval.0.i205.i = load i32, ptr %retval.0.in.i204.i, align 4
  %vap_vf_cntl39.i = getelementptr inbounds %struct.r100_cs_track, ptr %29, i32 0, i32 4
  %74 = ptrtoint ptr %vap_vf_cntl39.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %retval.0.i205.i, ptr %vap_vf_cntl39.i, align 4
  %75 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %2, align 4
  %immd_dwords41.i = getelementptr inbounds %struct.r100_cs_track, ptr %29, i32 0, i32 6
  %77 = ptrtoint ptr %immd_dwords41.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %immd_dwords41.i, align 4
  %78 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rdev, align 4
  %call43.i = call i32 @r100_cs_track_check(ptr noundef %79, ptr noundef %29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool44.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool44.not.i, label %radeon_get_ib_value.exit206.i.sw.epilog.i_crit_edge, label %radeon_get_ib_value.exit206.i.r300_packet3_check.exit_crit_edge

radeon_get_ib_value.exit206.i.r300_packet3_check.exit_crit_edge: ; preds = %radeon_get_ib_value.exit206.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %r300_packet3_check.exit

radeon_get_ib_value.exit206.i.sw.epilog.i_crit_edge: ; preds = %radeon_get_ib_value.exit206.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb47.i:                                        ; preds = %sw.bb11
  %add48.i = add i32 %27, 2
  %80 = ptrtoint ptr %chunk_ib.i234.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %chunk_ib.i234.i, align 4
  %kdata.i208.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %kdata.i208.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %kdata.i208.i, align 4
  %tobool.not.i209.i = icmp eq ptr %83, null
  %spec.select.i = select i1 %tobool.not.i209.i, ptr %25, ptr %83
  %retval.0.in.i213.i = getelementptr i32, ptr %spec.select.i, i32 %add48.i
  %84 = ptrtoint ptr %retval.0.in.i213.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %retval.0.i214.i = load i32, ptr %retval.0.in.i213.i, align 4
  %vap_vf_cntl50.i = getelementptr inbounds %struct.r100_cs_track, ptr %29, i32 0, i32 4
  %85 = ptrtoint ptr %vap_vf_cntl50.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %retval.0.i214.i, ptr %vap_vf_cntl50.i, align 4
  %86 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %rdev, align 4
  %call52.i = call i32 @r100_cs_track_check(ptr noundef %87, ptr noundef %29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %tobool53.not.i = icmp eq i32 %call52.i, 0
  br i1 %tobool53.not.i, label %sw.bb47.i.sw.epilog.i_crit_edge, label %sw.bb47.i.r300_packet3_check.exit_crit_edge

sw.bb47.i.r300_packet3_check.exit_crit_edge:      ; preds = %sw.bb47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %r300_packet3_check.exit

sw.bb47.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb56.i:                                        ; preds = %sw.bb11
  %88 = ptrtoint ptr %chunk_ib.i234.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %chunk_ib.i234.i, align 4
  %kdata.i217.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %kdata.i217.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %kdata.i217.i, align 4
  %tobool.not.i218.i = icmp eq ptr %91, null
  %spec.select251.i = select i1 %tobool.not.i218.i, ptr %25, ptr %91
  %retval.0.in.i222.i = getelementptr i32, ptr %spec.select251.i, i32 %add.i
  %92 = ptrtoint ptr %retval.0.in.i222.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %retval.0.i223.i = load i32, ptr %retval.0.in.i222.i, align 4
  %vap_vf_cntl58.i = getelementptr inbounds %struct.r100_cs_track, ptr %29, i32 0, i32 4
  %93 = ptrtoint ptr %vap_vf_cntl58.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %retval.0.i223.i, ptr %vap_vf_cntl58.i, align 4
  %94 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rdev, align 4
  %call60.i = call i32 @r100_cs_track_check(ptr noundef %95, ptr noundef %29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i)
  %tobool61.not.i = icmp eq i32 %call60.i, 0
  br i1 %tobool61.not.i, label %sw.bb56.i.sw.epilog.i_crit_edge, label %sw.bb56.i.r300_packet3_check.exit_crit_edge

sw.bb56.i.r300_packet3_check.exit_crit_edge:      ; preds = %sw.bb56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %r300_packet3_check.exit

sw.bb56.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb64.i:                                        ; preds = %sw.bb11
  %add65.i = add i32 %27, 2
  %96 = ptrtoint ptr %chunk_ib.i234.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %chunk_ib.i234.i, align 4
  %kdata.i226.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %kdata.i226.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %kdata.i226.i, align 4
  %tobool.not.i227.i = icmp eq ptr %99, null
  %spec.select252.i = select i1 %tobool.not.i227.i, ptr %25, ptr %99
  %retval.0.in.i231.i = getelementptr i32, ptr %spec.select252.i, i32 %add65.i
  %100 = ptrtoint ptr %retval.0.in.i231.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %retval.0.i232.i = load i32, ptr %retval.0.in.i231.i, align 4
  %vap_vf_cntl67.i = getelementptr inbounds %struct.r100_cs_track, ptr %29, i32 0, i32 4
  %101 = ptrtoint ptr %vap_vf_cntl67.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %retval.0.i232.i, ptr %vap_vf_cntl67.i, align 4
  %102 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %rdev, align 4
  %call69.i = call i32 @r100_cs_track_check(ptr noundef %103, ptr noundef %29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i)
  %tobool70.not.i = icmp eq i32 %call69.i, 0
  br i1 %tobool70.not.i, label %sw.bb64.i.sw.epilog.i_crit_edge, label %sw.bb64.i.r300_packet3_check.exit_crit_edge

sw.bb64.i.r300_packet3_check.exit_crit_edge:      ; preds = %sw.bb64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %r300_packet3_check.exit

sw.bb64.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb73.i:                                        ; preds = %sw.bb11
  %104 = ptrtoint ptr %chunk_ib.i234.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %chunk_ib.i234.i, align 4
  %kdata.i235.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %kdata.i235.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %kdata.i235.i, align 4
  %tobool.not.i236.i = icmp eq ptr %107, null
  %spec.select253.i = select i1 %tobool.not.i236.i, ptr %25, ptr %107
  %retval.0.in.i240.i = getelementptr i32, ptr %spec.select253.i, i32 %add.i
  %108 = ptrtoint ptr %retval.0.in.i240.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %retval.0.i241.i = load i32, ptr %retval.0.in.i240.i, align 4
  %vap_vf_cntl75.i = getelementptr inbounds %struct.r100_cs_track, ptr %29, i32 0, i32 4
  %109 = ptrtoint ptr %vap_vf_cntl75.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %retval.0.i241.i, ptr %vap_vf_cntl75.i, align 4
  %110 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %rdev, align 4
  %call77.i = call i32 @r100_cs_track_check(ptr noundef %111, ptr noundef %29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i)
  %tobool78.not.i = icmp eq i32 %call77.i, 0
  br i1 %tobool78.not.i, label %sw.bb73.i.sw.epilog.i_crit_edge, label %sw.bb73.i.r300_packet3_check.exit_crit_edge

sw.bb73.i.r300_packet3_check.exit_crit_edge:      ; preds = %sw.bb73.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %r300_packet3_check.exit

sw.bb73.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb73.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb81.i:                                        ; preds = %sw.bb11.sw.bb81.i_crit_edge, %sw.bb11.sw.bb81.i_crit_edge38
  %112 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %rdev, align 4
  %hyperz_filp.i = getelementptr inbounds %struct.radeon_device, ptr %113, i32 0, i32 97
  %114 = ptrtoint ptr %hyperz_filp.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %hyperz_filp.i, align 4
  %116 = ptrtoint ptr %filp89.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %filp89.i, align 8
  %cmp83.not.i = icmp eq ptr %115, %117
  br i1 %cmp83.not.i, label %sw.bb81.i.sw.epilog.i_crit_edge, label %sw.bb81.i.r300_packet3_check.exit_crit_edge

sw.bb81.i.r300_packet3_check.exit_crit_edge:      ; preds = %sw.bb81.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %r300_packet3_check.exit

sw.bb81.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb81.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb87.i:                                        ; preds = %sw.bb11
  %118 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %rdev, align 4
  %cmask_filp.i = getelementptr inbounds %struct.radeon_device, ptr %119, i32 0, i32 98
  %120 = ptrtoint ptr %cmask_filp.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %cmask_filp.i, align 8
  %122 = ptrtoint ptr %filp89.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %filp89.i, align 8
  %cmp90.not.i = icmp eq ptr %121, %123
  br i1 %cmp90.not.i, label %sw.bb87.i.sw.epilog.i_crit_edge, label %sw.bb87.i.r300_packet3_check.exit_crit_edge

sw.bb87.i.r300_packet3_check.exit_crit_edge:      ; preds = %sw.bb87.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %r300_packet3_check.exit

sw.bb87.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb87.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.55, i32 noundef %31) #8
  br label %r300_packet3_check.exit

sw.epilog.i:                                      ; preds = %sw.bb87.i.sw.epilog.i_crit_edge, %sw.bb81.i.sw.epilog.i_crit_edge, %sw.bb73.i.sw.epilog.i_crit_edge, %sw.bb64.i.sw.epilog.i_crit_edge, %sw.bb56.i.sw.epilog.i_crit_edge, %sw.bb47.i.sw.epilog.i_crit_edge, %radeon_get_ib_value.exit206.i.sw.epilog.i_crit_edge, %radeon_get_ib_value.exit188.i.sw.epilog.i_crit_edge, %radeon_get_ib_value.exit.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge, %sw.bb11.sw.epilog.i_crit_edge
  br label %r300_packet3_check.exit

r300_packet3_check.exit:                          ; preds = %sw.epilog.i, %sw.default.i, %sw.bb87.i.r300_packet3_check.exit_crit_edge, %sw.bb81.i.r300_packet3_check.exit_crit_edge, %sw.bb73.i.r300_packet3_check.exit_crit_edge, %sw.bb64.i.r300_packet3_check.exit_crit_edge, %sw.bb56.i.r300_packet3_check.exit_crit_edge, %sw.bb47.i.r300_packet3_check.exit_crit_edge, %radeon_get_ib_value.exit206.i.r300_packet3_check.exit_crit_edge, %if.then36.i, %radeon_get_ib_value.exit188.i.r300_packet3_check.exit_crit_edge, %if.then22.i, %radeon_get_ib_value.exit.i.r300_packet3_check.exit_crit_edge, %if.then7.i, %sw.bb.i.r300_packet3_check.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %sw.default.i ], [ 0, %sw.epilog.i ], [ -22, %if.then36.i ], [ -22, %if.then22.i ], [ %call5.i, %if.then7.i ], [ %call.i, %sw.bb.i.r300_packet3_check.exit_crit_edge ], [ %call14.i, %radeon_get_ib_value.exit.i.r300_packet3_check.exit_crit_edge ], [ %call26.i, %radeon_get_ib_value.exit188.i.r300_packet3_check.exit_crit_edge ], [ %call43.i, %radeon_get_ib_value.exit206.i.r300_packet3_check.exit_crit_edge ], [ %call52.i, %sw.bb47.i.r300_packet3_check.exit_crit_edge ], [ %call60.i, %sw.bb56.i.r300_packet3_check.exit_crit_edge ], [ %call69.i, %sw.bb64.i.r300_packet3_check.exit_crit_edge ], [ %call77.i, %sw.bb73.i.r300_packet3_check.exit_crit_edge ], [ -22, %sw.bb81.i.r300_packet3_check.exit_crit_edge ], [ -22, %sw.bb87.i.r300_packet3_check.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reloc.i) #8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.22, i32 noundef %15) #8
  br label %cleanup

sw.epilog:                                        ; preds = %r300_packet3_check.exit, %sw.bb
  %r.0 = phi i32 [ %retval.0.i, %r300_packet3_check.exit ], [ %call10, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0)
  %tobool14.not = icmp eq i32 %r.0, 0
  br i1 %tobool14.not, label %sw.epilog.do.cond_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog.do.cond_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog.do.cond_crit_edge, %if.end4.do.cond_crit_edge
  %124 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %idx, align 8
  %126 = ptrtoint ptr %chunk_ib.i234.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %chunk_ib.i234.i, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %127, align 4
  %cmp18 = icmp ult i32 %125, %129
  br i1 %cmp18, label %do.cond.do.body_crit_edge, label %do.cond.cleanup_crit_edge

do.cond.cleanup_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

cleanup:                                          ; preds = %do.cond.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.default, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default ], [ -12, %entry.cleanup_crit_edge ], [ 0, %do.cond.cleanup_crit_edge ], [ %r.0, %sw.epilog.cleanup_crit_edge ], [ %call2, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pkt) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_cs_track_clear(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_cs_packet_parse(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_cs_parse_packet0(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r300_packet0_check(ptr noundef %p, ptr noundef %pkt, i32 noundef %idx, i32 noundef %reg) #0 align 64 {
entry:
  %reloc = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reloc) #8
  %0 = ptrtoint ptr %reloc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %reloc, align 4, !annotation !150
  %ptr = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 16, i32 3
  %1 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ptr, align 8
  %track2 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 18
  %3 = ptrtoint ptr %track2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %track2, align 8
  %chunk_ib.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %5 = ptrtoint ptr %chunk_ib.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chunk_ib.i, align 4
  %kdata.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %kdata.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %kdata.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  %spec.select842 = select i1 %tobool.not.i, ptr %2, ptr %8
  %retval.0.in.i = getelementptr i32, ptr %spec.select842, i32 %idx
  %9 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %retval.0.i = load i32, ptr %retval.0.in.i, align 4
  %10 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %reg, label %entry.do.end_crit_edge [
    i32 25912, label %entry.sw.bb_crit_edge
    i32 536, label %entry.sw.bb_crit_edge847
    i32 5164, label %entry.sw.bb4_crit_edge
    i32 5160, label %entry.sw.bb4_crit_edge848
    i32 20008, label %entry.sw.bb9_crit_edge
    i32 20012, label %entry.sw.bb9_crit_edge849
    i32 20016, label %entry.sw.bb9_crit_edge850
    i32 20020, label %entry.sw.bb9_crit_edge851
    i32 20256, label %sw.bb18
    i32 17728, label %entry.sw.bb31_crit_edge
    i32 17732, label %entry.sw.bb31_crit_edge852
    i32 17736, label %entry.sw.bb31_crit_edge853
    i32 17740, label %entry.sw.bb31_crit_edge854
    i32 17744, label %entry.sw.bb31_crit_edge855
    i32 17748, label %entry.sw.bb31_crit_edge856
    i32 17752, label %entry.sw.bb31_crit_edge857
    i32 17756, label %entry.sw.bb31_crit_edge858
    i32 17760, label %entry.sw.bb31_crit_edge859
    i32 17764, label %entry.sw.bb31_crit_edge860
    i32 17768, label %entry.sw.bb31_crit_edge861
    i32 17772, label %entry.sw.bb31_crit_edge862
    i32 17776, label %entry.sw.bb31_crit_edge863
    i32 17780, label %entry.sw.bb31_crit_edge864
    i32 17784, label %entry.sw.bb31_crit_edge865
    i32 17788, label %entry.sw.bb31_crit_edge866
    i32 8324, label %sw.bb73
    i32 8372, label %sw.bb74
    i32 8500, label %sw.bb76
    i32 8328, label %sw.bb78
    i32 17380, label %sw.bb83
    i32 19968, label %sw.bb97
    i32 20024, label %entry.sw.bb109_crit_edge
    i32 20028, label %entry.sw.bb109_crit_edge867
    i32 20032, label %entry.sw.bb109_crit_edge868
    i32 20036, label %entry.sw.bb109_crit_edge869
    i32 20224, label %sw.bb179
    i32 20240, label %sw.bb187
    i32 20260, label %sw.bb199
    i32 16644, label %for.body.preheader
    i32 17600, label %entry.sw.bb247_crit_edge
    i32 17604, label %entry.sw.bb247_crit_edge870
    i32 17608, label %entry.sw.bb247_crit_edge871
    i32 17612, label %entry.sw.bb247_crit_edge872
    i32 17616, label %entry.sw.bb247_crit_edge873
    i32 17620, label %entry.sw.bb247_crit_edge874
    i32 17624, label %entry.sw.bb247_crit_edge875
    i32 17628, label %entry.sw.bb247_crit_edge876
    i32 17632, label %entry.sw.bb247_crit_edge877
    i32 17636, label %entry.sw.bb247_crit_edge878
    i32 17640, label %entry.sw.bb247_crit_edge879
    i32 17644, label %entry.sw.bb247_crit_edge880
    i32 17648, label %entry.sw.bb247_crit_edge881
    i32 17652, label %entry.sw.bb247_crit_edge882
    i32 17656, label %entry.sw.bb247_crit_edge883
    i32 17660, label %entry.sw.bb247_crit_edge884
    i32 17408, label %entry.sw.bb315_crit_edge
    i32 17412, label %entry.sw.bb315_crit_edge885
    i32 17416, label %entry.sw.bb315_crit_edge886
    i32 17420, label %entry.sw.bb315_crit_edge887
    i32 17424, label %entry.sw.bb315_crit_edge888
    i32 17428, label %entry.sw.bb315_crit_edge889
    i32 17432, label %entry.sw.bb315_crit_edge890
    i32 17436, label %entry.sw.bb315_crit_edge891
    i32 17440, label %entry.sw.bb315_crit_edge892
    i32 17444, label %entry.sw.bb315_crit_edge893
    i32 17448, label %entry.sw.bb315_crit_edge894
    i32 17452, label %entry.sw.bb315_crit_edge895
    i32 17456, label %entry.sw.bb315_crit_edge896
    i32 17460, label %entry.sw.bb315_crit_edge897
    i32 17464, label %entry.sw.bb315_crit_edge898
    i32 17468, label %entry.sw.bb315_crit_edge899
    i32 17664, label %entry.sw.bb345_crit_edge
    i32 17668, label %entry.sw.bb345_crit_edge900
    i32 17672, label %entry.sw.bb345_crit_edge901
    i32 17676, label %entry.sw.bb345_crit_edge902
    i32 17680, label %entry.sw.bb345_crit_edge903
    i32 17684, label %entry.sw.bb345_crit_edge904
    i32 17688, label %entry.sw.bb345_crit_edge905
    i32 17692, label %entry.sw.bb345_crit_edge906
    i32 17696, label %entry.sw.bb345_crit_edge907
    i32 17700, label %entry.sw.bb345_crit_edge908
    i32 17704, label %entry.sw.bb345_crit_edge909
    i32 17708, label %entry.sw.bb345_crit_edge910
    i32 17712, label %entry.sw.bb345_crit_edge911
    i32 17716, label %entry.sw.bb345_crit_edge912
    i32 17720, label %entry.sw.bb345_crit_edge913
    i32 17724, label %entry.sw.bb345_crit_edge914
    i32 17536, label %entry.sw.bb382_crit_edge
    i32 17540, label %entry.sw.bb382_crit_edge915
    i32 17544, label %entry.sw.bb382_crit_edge916
    i32 17548, label %entry.sw.bb382_crit_edge917
    i32 17552, label %entry.sw.bb382_crit_edge918
    i32 17556, label %entry.sw.bb382_crit_edge919
    i32 17560, label %entry.sw.bb382_crit_edge920
    i32 17564, label %entry.sw.bb382_crit_edge921
    i32 17568, label %entry.sw.bb382_crit_edge922
    i32 17572, label %entry.sw.bb382_crit_edge923
    i32 17576, label %entry.sw.bb382_crit_edge924
    i32 17580, label %entry.sw.bb382_crit_edge925
    i32 17584, label %entry.sw.bb382_crit_edge926
    i32 17588, label %entry.sw.bb382_crit_edge927
    i32 17592, label %entry.sw.bb382_crit_edge928
    i32 17596, label %entry.sw.bb382_crit_edge929
    i32 20316, label %sw.bb410
    i32 19980, label %sw.bb419
    i32 17316, label %sw.bb421
    i32 20252, label %sw.bb434
    i32 19972, label %sw.bb453
    i32 20096, label %sw.bb460
    i32 20100, label %sw.bb473
    i32 20104, label %sw.bb478
    i32 20272, label %entry.sw.bb483_crit_edge
    i32 20276, label %entry.sw.bb483_crit_edge930
    i32 20292, label %entry.sw.bb483_crit_edge931
    i32 20308, label %entry.sw.bb483_crit_edge932
    i32 16424, label %sw.bb493
    i32 19432, label %sw.bb509
  ]

entry.sw.bb483_crit_edge932:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb483

entry.sw.bb483_crit_edge931:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb483

entry.sw.bb483_crit_edge930:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb483

entry.sw.bb483_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb483

entry.sw.bb382_crit_edge929:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb382

entry.sw.bb382_crit_edge928:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb382

entry.sw.bb382_crit_edge927:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb382

entry.sw.bb382_crit_edge926:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb382

entry.sw.bb382_crit_edge925:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb382

entry.sw.bb382_crit_edge924:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb382

entry.sw.bb382_crit_edge923:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb382

entry.sw.bb382_crit_edge922:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb382

entry.sw.bb382_crit_edge921:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb382

entry.sw.bb382_crit_edge920:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb382

entry.sw.bb382_crit_edge919:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb382

entry.sw.bb382_crit_edge918:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb382

entry.sw.bb382_crit_edge917:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb382

entry.sw.bb382_crit_edge916:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb382

entry.sw.bb382_crit_edge915:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb382

entry.sw.bb382_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb382

entry.sw.bb345_crit_edge914:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb345

entry.sw.bb345_crit_edge913:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb345

entry.sw.bb345_crit_edge912:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb345

entry.sw.bb345_crit_edge911:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb345

entry.sw.bb345_crit_edge910:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb345

entry.sw.bb345_crit_edge909:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb345

entry.sw.bb345_crit_edge908:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb345

entry.sw.bb345_crit_edge907:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb345

entry.sw.bb345_crit_edge906:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb345

entry.sw.bb345_crit_edge905:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb345

entry.sw.bb345_crit_edge904:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb345

entry.sw.bb345_crit_edge903:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb345

entry.sw.bb345_crit_edge902:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb345

entry.sw.bb345_crit_edge901:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb345

entry.sw.bb345_crit_edge900:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb345

entry.sw.bb345_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb345

entry.sw.bb315_crit_edge899:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb315

entry.sw.bb315_crit_edge898:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb315

entry.sw.bb315_crit_edge897:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb315

entry.sw.bb315_crit_edge896:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb315

entry.sw.bb315_crit_edge895:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb315

entry.sw.bb315_crit_edge894:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb315

entry.sw.bb315_crit_edge893:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb315

entry.sw.bb315_crit_edge892:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb315

entry.sw.bb315_crit_edge891:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb315

entry.sw.bb315_crit_edge890:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb315

entry.sw.bb315_crit_edge889:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb315

entry.sw.bb315_crit_edge888:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb315

entry.sw.bb315_crit_edge887:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb315

entry.sw.bb315_crit_edge886:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb315

entry.sw.bb315_crit_edge885:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb315

entry.sw.bb315_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb315

entry.sw.bb247_crit_edge884:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb247

entry.sw.bb247_crit_edge883:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb247

entry.sw.bb247_crit_edge882:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb247

entry.sw.bb247_crit_edge881:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb247

entry.sw.bb247_crit_edge880:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb247

entry.sw.bb247_crit_edge879:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb247

entry.sw.bb247_crit_edge878:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb247

entry.sw.bb247_crit_edge877:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb247

entry.sw.bb247_crit_edge876:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb247

entry.sw.bb247_crit_edge875:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb247

entry.sw.bb247_crit_edge874:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb247

entry.sw.bb247_crit_edge873:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb247

entry.sw.bb247_crit_edge872:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb247

entry.sw.bb247_crit_edge871:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb247

entry.sw.bb247_crit_edge870:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb247

entry.sw.bb247_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb247

entry.sw.bb109_crit_edge869:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb109

entry.sw.bb109_crit_edge868:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb109

entry.sw.bb109_crit_edge867:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb109

entry.sw.bb109_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb109

entry.sw.bb31_crit_edge866:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb31

entry.sw.bb31_crit_edge865:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb31

entry.sw.bb31_crit_edge864:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb31

entry.sw.bb31_crit_edge863:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb31

entry.sw.bb31_crit_edge862:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb31

entry.sw.bb31_crit_edge861:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb31

entry.sw.bb31_crit_edge860:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb31

entry.sw.bb31_crit_edge859:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb31

entry.sw.bb31_crit_edge858:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb31

entry.sw.bb31_crit_edge857:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb31

entry.sw.bb31_crit_edge856:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb31

entry.sw.bb31_crit_edge855:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb31

entry.sw.bb31_crit_edge854:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb31

entry.sw.bb31_crit_edge853:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb31

entry.sw.bb31_crit_edge852:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb31

entry.sw.bb31_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb31

entry.sw.bb9_crit_edge851:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb9

entry.sw.bb9_crit_edge850:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb9

entry.sw.bb9_crit_edge849:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb9

entry.sw.bb9_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb9

entry.sw.bb4_crit_edge848:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

entry.sw.bb_crit_edge847:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %11 = trunc i32 %retval.0.i to i8
  %12 = and i8 %11, 1
  %enabled244 = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 0, i32 12
  %13 = ptrtoint ptr %enabled244 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %enabled244, align 1
  %14 = trunc i32 %retval.0.i to i8
  %15 = lshr i8 %14, 1
  %16 = and i8 %15, 1
  %enabled244.1 = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 1, i32 12
  %17 = ptrtoint ptr %enabled244.1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %enabled244.1, align 1
  %18 = trunc i32 %retval.0.i to i8
  %19 = lshr i8 %18, 2
  %20 = and i8 %19, 1
  %enabled244.2 = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 2, i32 12
  %21 = ptrtoint ptr %enabled244.2 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %enabled244.2, align 1
  %22 = trunc i32 %retval.0.i to i8
  %23 = lshr i8 %22, 3
  %24 = and i8 %23, 1
  %enabled244.3 = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 3, i32 12
  %25 = ptrtoint ptr %enabled244.3 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %enabled244.3, align 1
  %26 = trunc i32 %retval.0.i to i8
  %27 = lshr i8 %26, 4
  %28 = and i8 %27, 1
  %enabled244.4 = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 4, i32 12
  %29 = ptrtoint ptr %enabled244.4 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %enabled244.4, align 1
  %30 = trunc i32 %retval.0.i to i8
  %31 = lshr i8 %30, 5
  %32 = and i8 %31, 1
  %enabled244.5 = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 5, i32 12
  %33 = ptrtoint ptr %enabled244.5 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %enabled244.5, align 1
  %34 = trunc i32 %retval.0.i to i8
  %35 = lshr i8 %34, 6
  %36 = and i8 %35, 1
  %enabled244.6 = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 6, i32 12
  %37 = ptrtoint ptr %enabled244.6 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %enabled244.6, align 1
  %38 = trunc i32 %retval.0.i to i8
  %39 = lshr i8 %38, 7
  %enabled244.7 = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 7, i32 12
  %40 = ptrtoint ptr %enabled244.7 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %enabled244.7, align 1
  %and238.8 = lshr i32 %retval.0.i, 8
  %41 = trunc i32 %and238.8 to i8
  %42 = and i8 %41, 1
  %enabled244.8 = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 8, i32 12
  %43 = ptrtoint ptr %enabled244.8 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %enabled244.8, align 1
  %and238.9 = lshr i32 %retval.0.i, 9
  %44 = trunc i32 %and238.9 to i8
  %45 = and i8 %44, 1
  %enabled244.9 = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 9, i32 12
  %46 = ptrtoint ptr %enabled244.9 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %enabled244.9, align 1
  %and238.10 = lshr i32 %retval.0.i, 10
  %47 = trunc i32 %and238.10 to i8
  %48 = and i8 %47, 1
  %enabled244.10 = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 10, i32 12
  %49 = ptrtoint ptr %enabled244.10 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %enabled244.10, align 1
  %and238.11 = lshr i32 %retval.0.i, 11
  %50 = trunc i32 %and238.11 to i8
  %51 = and i8 %50, 1
  %enabled244.11 = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 11, i32 12
  %52 = ptrtoint ptr %enabled244.11 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %enabled244.11, align 1
  %and238.12 = lshr i32 %retval.0.i, 12
  %53 = trunc i32 %and238.12 to i8
  %54 = and i8 %53, 1
  %enabled244.12 = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 12, i32 12
  %55 = ptrtoint ptr %enabled244.12 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %enabled244.12, align 1
  %and238.13 = lshr i32 %retval.0.i, 13
  %56 = trunc i32 %and238.13 to i8
  %57 = and i8 %56, 1
  %enabled244.13 = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 13, i32 12
  %58 = ptrtoint ptr %enabled244.13 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %enabled244.13, align 1
  %and238.14 = lshr i32 %retval.0.i, 14
  %59 = trunc i32 %and238.14 to i8
  %60 = and i8 %59, 1
  %enabled244.14 = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 14, i32 12
  %61 = ptrtoint ptr %enabled244.14 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %enabled244.14, align 1
  %and238.15 = lshr i32 %retval.0.i, 15
  %62 = trunc i32 %and238.15 to i8
  %63 = and i8 %62, 1
  %enabled244.15 = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 15, i32 12
  %64 = ptrtoint ptr %enabled244.15 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %enabled244.15, align 1
  %tex_dirty246 = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 21
  %65 = ptrtoint ptr %tex_dirty246 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %tex_dirty246, align 2
  br label %sw.epilog517

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge847
  %call3 = tail call i32 @r100_cs_packet_parse_vline(ptr noundef %p) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog517_crit_edge, label %if.then

sw.bb.sw.epilog517_crit_edge:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog517

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.44, i32 noundef %idx, i32 noundef %reg) #8
  tail call void @radeon_cs_dump_packet(ptr noundef %p, ptr noundef %pkt) #8
  br label %cleanup

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge848
  %call5 = tail call i32 @r100_reloc_pitch_offset(ptr noundef %p, ptr noundef %pkt, i32 noundef %idx, i32 noundef %reg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %sw.bb4.sw.epilog517_crit_edge, label %sw.bb4.cleanup_crit_edge

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb4.sw.epilog517_crit_edge:                    ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog517

sw.bb9:                                           ; preds = %entry.sw.bb9_crit_edge, %entry.sw.bb9_crit_edge849, %entry.sw.bb9_crit_edge850, %entry.sw.bb9_crit_edge851
  %call10 = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.44, i32 noundef %idx, i32 noundef %reg) #8
  call void @radeon_cs_dump_packet(ptr noundef %p, ptr noundef %pkt) #8
  br label %cleanup

if.end13:                                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add nsw i32 %reg, -20008
  %shr = lshr i32 %sub, 2
  %66 = ptrtoint ptr %reloc to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %reloc, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 8
  %arrayidx = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 11, i32 %shr
  %70 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %69, ptr %arrayidx, align 4
  %offset = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 11, i32 %shr, i32 3
  %71 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %retval.0.i, ptr %offset, align 4
  %cb_dirty = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 19
  %72 = ptrtoint ptr %cb_dirty to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 1, ptr %cb_dirty, align 4
  %73 = load ptr, ptr %reloc, align 4
  %gpu_offset = getelementptr inbounds %struct.radeon_bo_list, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %gpu_offset to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %gpu_offset, align 8
  %conv = trunc i64 %75 to i32
  %add = add i32 %retval.0.i, %conv
  %arrayidx17 = getelementptr i32, ptr %2, i32 %idx
  %76 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile i32 %add, ptr %arrayidx17, align 4
  br label %sw.epilog517

sw.bb18:                                          ; preds = %entry
  %call19 = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.then21

if.then21:                                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.44, i32 noundef %idx, i32 noundef 20256) #8
  call void @radeon_cs_dump_packet(ptr noundef %p, ptr noundef %pkt) #8
  br label %cleanup

if.end22:                                         ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %reloc to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %reloc, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 8
  %zb = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 12
  %81 = ptrtoint ptr %zb to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %80, ptr %zb, align 4
  %offset26 = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 12, i32 3
  %82 = ptrtoint ptr %offset26 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %retval.0.i, ptr %offset26, align 4
  %zb_dirty = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 20
  %83 = ptrtoint ptr %zb_dirty to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %zb_dirty, align 1
  %gpu_offset27 = getelementptr inbounds %struct.radeon_bo_list, ptr %78, i32 0, i32 2
  %84 = ptrtoint ptr %gpu_offset27 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %gpu_offset27, align 8
  %conv28 = trunc i64 %85 to i32
  %add29 = add i32 %retval.0.i, %conv28
  %arrayidx30 = getelementptr i32, ptr %2, i32 %idx
  %86 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile i32 %add29, ptr %arrayidx30, align 4
  br label %sw.epilog517

sw.bb31:                                          ; preds = %entry.sw.bb31_crit_edge, %entry.sw.bb31_crit_edge852, %entry.sw.bb31_crit_edge853, %entry.sw.bb31_crit_edge854, %entry.sw.bb31_crit_edge855, %entry.sw.bb31_crit_edge856, %entry.sw.bb31_crit_edge857, %entry.sw.bb31_crit_edge858, %entry.sw.bb31_crit_edge859, %entry.sw.bb31_crit_edge860, %entry.sw.bb31_crit_edge861, %entry.sw.bb31_crit_edge862, %entry.sw.bb31_crit_edge863, %entry.sw.bb31_crit_edge864, %entry.sw.bb31_crit_edge865, %entry.sw.bb31_crit_edge866
  %sub32 = add nsw i32 %reg, -17728
  %shr33 = lshr i32 %sub32, 2
  %call34 = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.then36

if.then36:                                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.44, i32 noundef %idx, i32 noundef %reg) #8
  call void @radeon_cs_dump_packet(ptr noundef %p, ptr noundef %pkt) #8
  br label %cleanup

if.end37:                                         ; preds = %sw.bb31
  %cs_flags = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 21
  %87 = ptrtoint ptr %cs_flags to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %cs_flags, align 4
  %and = and i32 %88, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool38.not = icmp eq i32 %and, 0
  br i1 %tobool38.not, label %if.else, label %if.then39

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %and40 = and i32 %retval.0.i, 31
  %and41 = and i32 %retval.0.i, -32
  %89 = ptrtoint ptr %reloc to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %reloc, align 4
  %gpu_offset42 = getelementptr inbounds %struct.radeon_bo_list, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %gpu_offset42 to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %gpu_offset42, align 8
  %conv43 = trunc i64 %92 to i32
  %add44 = add i32 %and41, %conv43
  br label %if.end69

if.else:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %93 = ptrtoint ptr %reloc to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %reloc, align 4
  %tiling_flags = getelementptr inbounds %struct.radeon_bo_list, ptr %94, i32 0, i32 5
  %95 = ptrtoint ptr %tiling_flags to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %tiling_flags, align 8
  %and46 = shl i32 %96, 2
  %97 = and i32 %and46, 4
  %and52 = and i32 %96, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  %and58 = lshr i32 %96, 1
  %98 = and i32 %and58, 16
  %tile_flags.1.v = select i1 %tobool53.not, i32 %98, i32 8
  %tile_flags.1 = or i32 %97, %tile_flags.1.v
  %gpu_offset64 = getelementptr inbounds %struct.radeon_bo_list, ptr %94, i32 0, i32 2
  %99 = ptrtoint ptr %gpu_offset64 to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %gpu_offset64, align 8
  %conv65 = trunc i64 %100 to i32
  %add66 = add i32 %retval.0.i, %conv65
  br label %if.end69

if.end69:                                         ; preds = %if.else, %if.then39
  %add66.sink = phi i32 [ %add66, %if.else ], [ %and40, %if.then39 ]
  %tile_flags.1.sink = phi i32 [ %tile_flags.1, %if.else ], [ %add44, %if.then39 ]
  %or67 = or i32 %tile_flags.1.sink, %add66.sink
  %arrayidx68 = getelementptr i32, ptr %2, i32 %idx
  %101 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile i32 %or67, ptr %arrayidx68, align 4
  %102 = ptrtoint ptr %reloc to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %reloc, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 8
  %arrayidx71 = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 %shr33
  %106 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %105, ptr %arrayidx71, align 4
  %tex_dirty = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 21
  %107 = ptrtoint ptr %tex_dirty to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 1, ptr %tex_dirty, align 2
  br label %sw.epilog517

sw.bb73:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %vap_vf_cntl = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 4
  %108 = ptrtoint ptr %vap_vf_cntl to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %retval.0.i, ptr %vap_vf_cntl, align 4
  br label %sw.epilog517

sw.bb74:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and75 = and i32 %retval.0.i, 127
  %vtx_size = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 3
  %109 = ptrtoint ptr %vtx_size to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %and75, ptr %vtx_size, align 4
  br label %sw.epilog517

sw.bb76:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and77 = and i32 %retval.0.i, 16777215
  %max_indx = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 8
  %110 = ptrtoint ptr %max_indx to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %and77, ptr %max_indx, align 4
  br label %sw.epilog517

sw.bb78:                                          ; preds = %entry
  %rdev = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 1
  %111 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %rdev, align 4
  %family = getelementptr inbounds %struct.radeon_device, ptr %112, i32 0, i32 6
  %113 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %114)
  %cmp = icmp ult i32 %114, 21
  br i1 %cmp, label %sw.bb78.do.end_crit_edge, label %if.end81

sw.bb78.do.end_crit_edge:                         ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end81:                                         ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #10
  %and82 = and i32 %retval.0.i, 16777215
  %vap_alt_nverts = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 5
  %115 = ptrtoint ptr %vap_alt_nverts to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %and82, ptr %vap_alt_nverts, align 4
  br label %sw.epilog517

sw.bb83:                                          ; preds = %entry
  %shr84 = lshr i32 %retval.0.i, 13
  %and85 = and i32 %shr84, 8191
  %add86 = add nuw nsw i32 %and85, 1
  %maxy = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 2
  %116 = ptrtoint ptr %maxy to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %add86, ptr %maxy, align 4
  %rdev87 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 1
  %117 = ptrtoint ptr %rdev87 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %rdev87, align 4
  %family88 = getelementptr inbounds %struct.radeon_device, ptr %118, i32 0, i32 6
  %119 = ptrtoint ptr %family88 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %family88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %120)
  %cmp89 = icmp ult i32 %120, 21
  br i1 %cmp89, label %if.then91, label %sw.bb83.if.end94_crit_edge

sw.bb83.if.end94_crit_edge:                       ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94

if.then91:                                        ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #10
  %sub93 = add nsw i32 %and85, -1439
  %121 = ptrtoint ptr %maxy to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %sub93, ptr %maxy, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.then91, %sw.bb83.if.end94_crit_edge
  %cb_dirty95 = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 19
  %122 = ptrtoint ptr %cb_dirty95 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 1, ptr %cb_dirty95, align 4
  %zb_dirty96 = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 20
  %123 = ptrtoint ptr %zb_dirty96 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 1, ptr %zb_dirty96, align 1
  br label %sw.epilog517

sw.bb97:                                          ; preds = %entry
  %and98 = and i32 %retval.0.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %sw.bb97.if.end104_crit_edge, label %land.lhs.true

sw.bb97.if.end104_crit_edge:                      ; preds = %sw.bb97
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104

land.lhs.true:                                    ; preds = %sw.bb97
  %rdev100 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 1
  %124 = ptrtoint ptr %rdev100 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %rdev100, align 4
  %cmask_filp = getelementptr inbounds %struct.radeon_device, ptr %125, i32 0, i32 98
  %126 = ptrtoint ptr %cmask_filp to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %cmask_filp, align 8
  %filp = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 2
  %128 = ptrtoint ptr %filp to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %filp, align 8
  %cmp101.not = icmp eq ptr %127, %129
  br i1 %cmp101.not, label %land.lhs.true.if.end104_crit_edge, label %if.then103

land.lhs.true.if.end104_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104

if.then103:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.45) #8
  br label %cleanup

if.end104:                                        ; preds = %land.lhs.true.if.end104_crit_edge, %sw.bb97.if.end104_crit_edge
  %shr105 = lshr i32 %retval.0.i, 5
  %and106 = and i32 %shr105, 3
  %add107 = add nuw nsw i32 %and106, 1
  %130 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %add107, ptr %4, align 4
  %cb_dirty108 = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 19
  %131 = ptrtoint ptr %cb_dirty108 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 1, ptr %cb_dirty108, align 4
  br label %sw.epilog517

sw.bb109:                                         ; preds = %entry.sw.bb109_crit_edge, %entry.sw.bb109_crit_edge867, %entry.sw.bb109_crit_edge868, %entry.sw.bb109_crit_edge869
  %cs_flags110 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 21
  %132 = ptrtoint ptr %cs_flags110 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %cs_flags110, align 4
  %and111 = and i32 %133, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %if.then113, label %sw.bb109.if.end140_crit_edge

sw.bb109.if.end140_crit_edge:                     ; preds = %sw.bb109
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end140

if.then113:                                       ; preds = %sw.bb109
  %call114 = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.end117, label %if.then116

if.then116:                                       ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.44, i32 noundef %idx, i32 noundef %reg) #8
  call void @radeon_cs_dump_packet(ptr noundef %p, ptr noundef %pkt) #8
  br label %cleanup

if.end117:                                        ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #10
  %134 = ptrtoint ptr %reloc to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %reloc, align 4
  %tiling_flags118 = getelementptr inbounds %struct.radeon_bo_list, ptr %135, i32 0, i32 5
  %136 = ptrtoint ptr %tiling_flags118 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %tiling_flags118, align 8
  %and119 = shl i32 %137, 16
  %138 = and i32 %and119, 65536
  %and125 = and i32 %137, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool126.not = icmp eq i32 %and125, 0
  %and131 = shl i32 %137, 13
  %139 = and i32 %and131, 262144
  %tile_flags.3.v = select i1 %tobool126.not, i32 %139, i32 131072
  %tile_flags.3 = or i32 %138, %tile_flags.3.v
  %and137 = and i32 %retval.0.i, -458753
  %or138 = or i32 %tile_flags.3, %and137
  %arrayidx139 = getelementptr i32, ptr %2, i32 %idx
  %140 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_store4_noabort(i32 %140)
  store volatile i32 %or138, ptr %arrayidx139, align 4
  br label %if.end140

if.end140:                                        ; preds = %if.end117, %sw.bb109.if.end140_crit_edge
  %sub141 = add nsw i32 %reg, -20024
  %shr142 = lshr i32 %sub141, 2
  %and143 = and i32 %retval.0.i, 16382
  %pitch = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 11, i32 %shr142, i32 1
  %141 = ptrtoint ptr %pitch to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %and143, ptr %pitch, align 4
  %shr146 = lshr i32 %retval.0.i, 21
  %and147 = and i32 %shr146, 15
  %142 = zext i32 %and147 to i64
  call void @__sanitizer_cov_trace_switch(i64 %142, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %and147, label %sw.default [
    i32 9, label %if.end140.sw.epilog_crit_edge
    i32 11, label %if.end140.sw.epilog_crit_edge933
    i32 12, label %if.end140.sw.epilog_crit_edge934
    i32 3, label %if.end140.sw.bb151_crit_edge
    i32 4, label %if.end140.sw.bb151_crit_edge935
    i32 13, label %if.end140.sw.bb151_crit_edge936
    i32 15, label %if.end140.sw.bb151_crit_edge937
    i32 5, label %sw.bb155
    i32 6, label %if.end140.sw.bb164_crit_edge
    i32 10, label %sw.bb168
    i32 7, label %sw.bb172
  ]

if.end140.sw.bb164_crit_edge:                     ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb164

if.end140.sw.bb151_crit_edge937:                  ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb151

if.end140.sw.bb151_crit_edge936:                  ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb151

if.end140.sw.bb151_crit_edge935:                  ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb151

if.end140.sw.bb151_crit_edge:                     ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb151

if.end140.sw.epilog_crit_edge934:                 ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end140.sw.epilog_crit_edge933:                 ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end140.sw.epilog_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb151:                                         ; preds = %if.end140.sw.bb151_crit_edge, %if.end140.sw.bb151_crit_edge935, %if.end140.sw.bb151_crit_edge936, %if.end140.sw.bb151_crit_edge937
  br label %sw.epilog

sw.bb155:                                         ; preds = %if.end140
  %rdev156 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 1
  %143 = ptrtoint ptr %rdev156 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %rdev156, align 4
  %family157 = getelementptr inbounds %struct.radeon_device, ptr %144, i32 0, i32 6
  %145 = ptrtoint ptr %family157 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %family157, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %146)
  %cmp158 = icmp ult i32 %146, 21
  br i1 %cmp158, label %if.then160, label %sw.bb155.sw.bb164_crit_edge

sw.bb155.sw.bb164_crit_edge:                      ; preds = %sw.bb155
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb164

if.then160:                                       ; preds = %sw.bb155
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.46, i32 noundef 5) #8
  br label %cleanup

sw.bb164:                                         ; preds = %sw.bb155.sw.bb164_crit_edge, %if.end140.sw.bb164_crit_edge
  br label %sw.epilog

sw.bb168:                                         ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb172:                                         ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.default:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.47, i32 noundef %and147) #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb172, %sw.bb168, %sw.bb164, %sw.bb151, %if.end140.sw.epilog_crit_edge, %if.end140.sw.epilog_crit_edge933, %if.end140.sw.epilog_crit_edge934
  %.sink844 = phi i32 [ 16, %sw.bb172 ], [ 8, %sw.bb168 ], [ 4, %sw.bb164 ], [ 2, %sw.bb151 ], [ 1, %if.end140.sw.epilog_crit_edge ], [ 1, %if.end140.sw.epilog_crit_edge933 ], [ 1, %if.end140.sw.epilog_crit_edge934 ]
  %cpp175 = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 11, i32 %shr142, i32 2
  %147 = ptrtoint ptr %cpp175 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %.sink844, ptr %cpp175, align 4
  %cb_dirty178 = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 19
  %148 = ptrtoint ptr %cb_dirty178 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 1, ptr %cb_dirty178, align 4
  br label %sw.epilog517

sw.bb179:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %149 = trunc i32 %retval.0.i to i8
  %150 = lshr i8 %149, 1
  %151 = and i8 %150, 1
  %152 = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 15
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %151, ptr %152, align 4
  %zb_dirty186 = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 20
  %154 = ptrtoint ptr %zb_dirty186 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 1, ptr %zb_dirty186, align 1
  br label %sw.epilog517

sw.bb187:                                         ; preds = %entry
  %and188 = and i32 %retval.0.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and188)
  %155 = icmp ult i32 %and188, 3
  br i1 %155, label %switch.lookup, label %sw.default195

sw.default195:                                    ; preds = %sw.bb187
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.48, i32 noundef %and188) #8
  br label %cleanup

switch.lookup:                                    ; preds = %sw.bb187
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.r300_packet0_check, i32 0, i32 %and188
  %156 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %156)
  %switch.load = load i32, ptr %switch.gep, align 4
  %cpp194 = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 12, i32 2
  %157 = ptrtoint ptr %cpp194 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %switch.load, ptr %cpp194, align 4
  %zb_dirty198 = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 20
  %158 = ptrtoint ptr %zb_dirty198 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 1, ptr %zb_dirty198, align 1
  br label %sw.epilog517

sw.bb199:                                         ; preds = %entry
  %cs_flags200 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 21
  %159 = ptrtoint ptr %cs_flags200 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %cs_flags200, align 4
  %and201 = and i32 %160, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and201)
  %tobool202.not = icmp eq i32 %and201, 0
  br i1 %tobool202.not, label %if.then203, label %sw.bb199.if.end230_crit_edge

sw.bb199.if.end230_crit_edge:                     ; preds = %sw.bb199
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end230

if.then203:                                       ; preds = %sw.bb199
  %call204 = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call204)
  %tobool205.not = icmp eq i32 %call204, 0
  br i1 %tobool205.not, label %if.end207, label %if.then206

if.then206:                                       ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.44, i32 noundef %idx, i32 noundef 20260) #8
  call void @radeon_cs_dump_packet(ptr noundef %p, ptr noundef %pkt) #8
  br label %cleanup

if.end207:                                        ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #10
  %161 = ptrtoint ptr %reloc to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %reloc, align 4
  %tiling_flags208 = getelementptr inbounds %struct.radeon_bo_list, ptr %162, i32 0, i32 5
  %163 = ptrtoint ptr %tiling_flags208 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %tiling_flags208, align 8
  %and209 = shl i32 %164, 16
  %165 = and i32 %and209, 65536
  %and215 = and i32 %164, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and215)
  %tobool216.not = icmp eq i32 %and215, 0
  %and221 = shl i32 %164, 13
  %166 = and i32 %and221, 262144
  %tile_flags.5.v = select i1 %tobool216.not, i32 %166, i32 131072
  %tile_flags.5 = or i32 %165, %tile_flags.5.v
  %and227 = and i32 %retval.0.i, -458753
  %or228 = or i32 %tile_flags.5, %and227
  %arrayidx229 = getelementptr i32, ptr %2, i32 %idx
  %167 = ptrtoint ptr %arrayidx229 to i32
  call void @__asan_store4_noabort(i32 %167)
  store volatile i32 %or228, ptr %arrayidx229, align 4
  br label %if.end230

if.end230:                                        ; preds = %if.end207, %sw.bb199.if.end230_crit_edge
  %and231 = and i32 %retval.0.i, 16380
  %pitch233 = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 12, i32 1
  %168 = ptrtoint ptr %pitch233 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %and231, ptr %pitch233, align 4
  %zb_dirty234 = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 20
  %169 = ptrtoint ptr %zb_dirty234 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 1, ptr %zb_dirty234, align 1
  br label %sw.epilog517

sw.bb247:                                         ; preds = %entry.sw.bb247_crit_edge, %entry.sw.bb247_crit_edge870, %entry.sw.bb247_crit_edge871, %entry.sw.bb247_crit_edge872, %entry.sw.bb247_crit_edge873, %entry.sw.bb247_crit_edge874, %entry.sw.bb247_crit_edge875, %entry.sw.bb247_crit_edge876, %entry.sw.bb247_crit_edge877, %entry.sw.bb247_crit_edge878, %entry.sw.bb247_crit_edge879, %entry.sw.bb247_crit_edge880, %entry.sw.bb247_crit_edge881, %entry.sw.bb247_crit_edge882, %entry.sw.bb247_crit_edge883, %entry.sw.bb247_crit_edge884
  %sub248 = add nsw i32 %reg, -17600
  %shr249 = lshr i32 %sub248, 2
  %shr250 = lshr i32 %retval.0.i, 25
  %and251 = and i32 %shr250, 3
  %tex_coord_type = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 %shr249, i32 7
  %170 = ptrtoint ptr %tex_coord_type to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %and251, ptr %tex_coord_type, align 4
  %and254 = and i32 %retval.0.i, 31
  %171 = zext i32 %and254 to i64
  call void @__sanitizer_cov_trace_switch(i64 %171, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %and254, label %sw.default311 [
    i32 0, label %sw.bb247.sw.epilog313_crit_edge
    i32 2, label %sw.bb247.sw.epilog313_crit_edge938
    i32 5, label %sw.bb247.sw.epilog313_crit_edge939
    i32 1, label %sw.bb247.sw.bb261_crit_edge
    i32 24, label %sw.bb247.sw.bb261_crit_edge940
    i32 3, label %sw.bb247.sw.bb261_crit_edge941
    i32 6, label %sw.bb247.sw.bb261_crit_edge942
    i32 7, label %sw.bb247.sw.bb261_crit_edge943
    i32 10, label %sw.bb247.sw.bb261_crit_edge944
    i32 11, label %sw.bb247.sw.bb261_crit_edge945
    i32 18, label %sw.bb247.sw.bb261_crit_edge946
    i32 20, label %sw.bb247.sw.bb261_crit_edge947
    i32 21, label %sw.bb247.sw.bb261_crit_edge948
    i32 4, label %sw.bb247.sw.bb268_crit_edge
    i32 25, label %sw.bb247.sw.bb268_crit_edge949
    i32 8, label %sw.bb247.sw.bb268_crit_edge950
    i32 9, label %sw.bb247.sw.bb268_crit_edge951
    i32 12, label %sw.bb247.sw.bb268_crit_edge952
    i32 13, label %sw.bb247.sw.bb268_crit_edge953
    i32 23, label %sw.bb247.sw.bb268_crit_edge954
    i32 27, label %sw.bb247.sw.bb268_crit_edge955
    i32 30, label %sw.bb247.sw.bb268_crit_edge956
    i32 14, label %sw.bb247.sw.bb275_crit_edge
    i32 26, label %sw.bb247.sw.bb275_crit_edge957
    i32 28, label %sw.bb247.sw.bb275_crit_edge958
    i32 29, label %sw.bb282
    i32 15, label %sw.bb289
    i32 31, label %sw.bb296
    i32 16, label %sw.bb247.sw.bb304_crit_edge
    i32 17, label %sw.bb247.sw.bb304_crit_edge959
  ]

sw.bb247.sw.bb304_crit_edge959:                   ; preds = %sw.bb247
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb304

sw.bb247.sw.bb304_crit_edge:                      ; preds = %sw.bb247
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb304

sw.bb247.sw.bb275_crit_edge958:                   ; preds = %sw.bb247
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb275

sw.bb247.sw.bb275_crit_edge957:                   ; preds = %sw.bb247
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb275

sw.bb247.sw.bb275_crit_edge:                      ; preds = %sw.bb247
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb275

sw.bb247.sw.bb268_crit_edge956:                   ; preds = %sw.bb247
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb268

sw.bb247.sw.bb268_crit_edge955:                   ; preds = %sw.bb247
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb268

sw.bb247.sw.bb268_crit_edge954:                   ; preds = %sw.bb247
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb268

sw.bb247.sw.bb268_crit_edge953:                   ; preds = %sw.bb247
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb268

sw.bb247.sw.bb268_crit_edge952:                   ; preds = %sw.bb247
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb268

sw.bb247.sw.bb268_crit_edge951:                   ; preds = %sw.bb247
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb268

sw.bb247.sw.bb268_crit_edge950:                   ; preds = %sw.bb247
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb268

sw.bb247.sw.bb268_crit_edge949:                   ; preds = %sw.bb247
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb268

sw.bb247.sw.bb268_crit_edge:                      ; preds = %sw.bb247
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb268

sw.bb247.sw.bb261_crit_edge948:                   ; preds = %sw.bb247
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb261

sw.bb247.sw.bb261_crit_edge947:                   ; preds = %sw.bb247
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb261

sw.bb247.sw.bb261_crit_edge946:                   ; preds = %sw.bb247
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb261

sw.bb247.sw.bb261_crit_edge945:                   ; preds = %sw.bb247
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb261

sw.bb247.sw.bb261_crit_edge944:                   ; preds = %sw.bb247
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb261

sw.bb247.sw.bb261_crit_edge943:                   ; preds = %sw.bb247
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb261

sw.bb247.sw.bb261_crit_edge942:                   ; preds = %sw.bb247
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb261

sw.bb247.sw.bb261_crit_edge941:                   ; preds = %sw.bb247
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb261

sw.bb247.sw.bb261_crit_edge940:                   ; preds = %sw.bb247
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb261

sw.bb247.sw.bb261_crit_edge:                      ; preds = %sw.bb247
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb261

sw.bb247.sw.epilog313_crit_edge939:               ; preds = %sw.bb247
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog313

sw.bb247.sw.epilog313_crit_edge938:               ; preds = %sw.bb247
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog313

sw.bb247.sw.epilog313_crit_edge:                  ; preds = %sw.bb247
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog313

sw.bb261:                                         ; preds = %sw.bb247.sw.bb261_crit_edge, %sw.bb247.sw.bb261_crit_edge940, %sw.bb247.sw.bb261_crit_edge941, %sw.bb247.sw.bb261_crit_edge942, %sw.bb247.sw.bb261_crit_edge943, %sw.bb247.sw.bb261_crit_edge944, %sw.bb247.sw.bb261_crit_edge945, %sw.bb247.sw.bb261_crit_edge946, %sw.bb247.sw.bb261_crit_edge947, %sw.bb247.sw.bb261_crit_edge948
  br label %sw.epilog313

sw.bb268:                                         ; preds = %sw.bb247.sw.bb268_crit_edge, %sw.bb247.sw.bb268_crit_edge949, %sw.bb247.sw.bb268_crit_edge950, %sw.bb247.sw.bb268_crit_edge951, %sw.bb247.sw.bb268_crit_edge952, %sw.bb247.sw.bb268_crit_edge953, %sw.bb247.sw.bb268_crit_edge954, %sw.bb247.sw.bb268_crit_edge955, %sw.bb247.sw.bb268_crit_edge956
  br label %sw.epilog313

sw.bb275:                                         ; preds = %sw.bb247.sw.bb275_crit_edge, %sw.bb247.sw.bb275_crit_edge957, %sw.bb247.sw.bb275_crit_edge958
  br label %sw.epilog313

sw.bb282:                                         ; preds = %sw.bb247
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog313

sw.bb289:                                         ; preds = %sw.bb247
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog313

sw.bb296:                                         ; preds = %sw.bb247
  %rdev297 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 1
  %172 = ptrtoint ptr %rdev297 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %rdev297, align 4
  %family298 = getelementptr inbounds %struct.radeon_device, ptr %173, i32 0, i32 6
  %174 = ptrtoint ptr %family298 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %family298, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %175)
  %cmp299 = icmp ult i32 %175, 13
  br i1 %cmp299, label %if.then301, label %sw.bb296.sw.bb304_crit_edge

sw.bb296.sw.bb304_crit_edge:                      ; preds = %sw.bb296
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb304

if.then301:                                       ; preds = %sw.bb296
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.49, i32 noundef 31) #8
  br label %cleanup

sw.bb304:                                         ; preds = %sw.bb296.sw.bb304_crit_edge, %sw.bb247.sw.bb304_crit_edge, %sw.bb247.sw.bb304_crit_edge959
  br label %sw.epilog313

sw.default311:                                    ; preds = %sw.bb247
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.49, i32 noundef %and254) #8
  br label %cleanup

sw.epilog313:                                     ; preds = %sw.bb304, %sw.bb289, %sw.bb282, %sw.bb275, %sw.bb268, %sw.bb261, %sw.bb247.sw.epilog313_crit_edge, %sw.bb247.sw.epilog313_crit_edge938, %sw.bb247.sw.epilog313_crit_edge939
  %.sink846 = phi i32 [ 1, %sw.bb304 ], [ 1, %sw.bb289 ], [ 16, %sw.bb282 ], [ 8, %sw.bb275 ], [ 4, %sw.bb268 ], [ 2, %sw.bb261 ], [ 1, %sw.bb247.sw.epilog313_crit_edge ], [ 1, %sw.bb247.sw.epilog313_crit_edge938 ], [ 1, %sw.bb247.sw.epilog313_crit_edge939 ]
  %.sink845 = phi i32 [ 2, %sw.bb304 ], [ 1, %sw.bb289 ], [ 0, %sw.bb282 ], [ 0, %sw.bb275 ], [ 0, %sw.bb268 ], [ 0, %sw.bb261 ], [ 0, %sw.bb247.sw.epilog313_crit_edge ], [ 0, %sw.bb247.sw.epilog313_crit_edge938 ], [ 0, %sw.bb247.sw.epilog313_crit_edge939 ]
  %cpp307 = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 %shr249, i32 6
  %176 = ptrtoint ptr %cpp307 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %.sink846, ptr %cpp307, align 4
  %compress_format310 = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 %shr249, i32 16
  %177 = ptrtoint ptr %compress_format310 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %.sink845, ptr %compress_format310, align 4
  %tex_dirty314 = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 21
  %178 = ptrtoint ptr %tex_dirty314 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 1, ptr %tex_dirty314, align 2
  br label %sw.epilog517

sw.bb315:                                         ; preds = %entry.sw.bb315_crit_edge, %entry.sw.bb315_crit_edge885, %entry.sw.bb315_crit_edge886, %entry.sw.bb315_crit_edge887, %entry.sw.bb315_crit_edge888, %entry.sw.bb315_crit_edge889, %entry.sw.bb315_crit_edge890, %entry.sw.bb315_crit_edge891, %entry.sw.bb315_crit_edge892, %entry.sw.bb315_crit_edge893, %entry.sw.bb315_crit_edge894, %entry.sw.bb315_crit_edge895, %entry.sw.bb315_crit_edge896, %entry.sw.bb315_crit_edge897, %entry.sw.bb315_crit_edge898, %entry.sw.bb315_crit_edge899
  %sub316 = add nsw i32 %reg, -17408
  %shr317 = lshr i32 %sub316, 2
  %and318 = and i32 %retval.0.i, 7
  %179 = zext i32 %and318 to i64
  call void @__sanitizer_cov_trace_switch(i64 %179, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %and318, label %sw.bb315.if.end329_crit_edge [
    i32 2, label %sw.bb315.if.then326_crit_edge
    i32 4, label %sw.bb315.if.then326_crit_edge960
    i32 6, label %sw.bb315.if.then326_crit_edge961
  ]

sw.bb315.if.then326_crit_edge961:                 ; preds = %sw.bb315
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then326

sw.bb315.if.then326_crit_edge960:                 ; preds = %sw.bb315
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then326

sw.bb315.if.then326_crit_edge:                    ; preds = %sw.bb315
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then326

sw.bb315.if.end329_crit_edge:                     ; preds = %sw.bb315
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end329

if.then326:                                       ; preds = %sw.bb315.if.then326_crit_edge, %sw.bb315.if.then326_crit_edge960, %sw.bb315.if.then326_crit_edge961
  %roundup_w = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 %shr317, i32 14
  %180 = ptrtoint ptr %roundup_w to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 0, ptr %roundup_w, align 1
  br label %if.end329

if.end329:                                        ; preds = %if.then326, %sw.bb315.if.end329_crit_edge
  %shr330 = lshr i32 %retval.0.i, 3
  %and331 = and i32 %shr330, 7
  %181 = zext i32 %and331 to i64
  call void @__sanitizer_cov_trace_switch(i64 %181, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %and331, label %if.end329.if.end343_crit_edge [
    i32 2, label %if.end329.if.then340_crit_edge
    i32 4, label %if.end329.if.then340_crit_edge962
    i32 6, label %if.end329.if.then340_crit_edge963
  ]

if.end329.if.then340_crit_edge963:                ; preds = %if.end329
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then340

if.end329.if.then340_crit_edge962:                ; preds = %if.end329
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then340

if.end329.if.then340_crit_edge:                   ; preds = %if.end329
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then340

if.end329.if.end343_crit_edge:                    ; preds = %if.end329
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end343

if.then340:                                       ; preds = %if.end329.if.then340_crit_edge, %if.end329.if.then340_crit_edge962, %if.end329.if.then340_crit_edge963
  %roundup_h = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 %shr317, i32 15
  %182 = ptrtoint ptr %roundup_h to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 0, ptr %roundup_h, align 4
  br label %if.end343

if.end343:                                        ; preds = %if.then340, %if.end329.if.end343_crit_edge
  %tex_dirty344 = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 21
  %183 = ptrtoint ptr %tex_dirty344 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 1, ptr %tex_dirty344, align 2
  br label %sw.epilog517

sw.bb345:                                         ; preds = %entry.sw.bb345_crit_edge, %entry.sw.bb345_crit_edge900, %entry.sw.bb345_crit_edge901, %entry.sw.bb345_crit_edge902, %entry.sw.bb345_crit_edge903, %entry.sw.bb345_crit_edge904, %entry.sw.bb345_crit_edge905, %entry.sw.bb345_crit_edge906, %entry.sw.bb345_crit_edge907, %entry.sw.bb345_crit_edge908, %entry.sw.bb345_crit_edge909, %entry.sw.bb345_crit_edge910, %entry.sw.bb345_crit_edge911, %entry.sw.bb345_crit_edge912, %entry.sw.bb345_crit_edge913, %entry.sw.bb345_crit_edge914
  %sub346 = add nsw i32 %reg, -17664
  %shr347 = lshr i32 %sub346, 2
  %and348 = and i32 %retval.0.i, 16383
  %add349 = add nuw nsw i32 %and348, 1
  %pitch352 = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 %shr347, i32 2
  %184 = ptrtoint ptr %pitch352 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %add349, ptr %pitch352, align 4
  %rdev353 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 1
  %185 = ptrtoint ptr %rdev353 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %rdev353, align 4
  %family354 = getelementptr inbounds %struct.radeon_device, ptr %186, i32 0, i32 6
  %187 = ptrtoint ptr %family354 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %family354, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %188)
  %cmp355 = icmp ugt i32 %188, 20
  br i1 %cmp355, label %if.then357, label %if.else375

if.then357:                                       ; preds = %sw.bb345
  %189 = lshr i32 %retval.0.i, 4
  %shl360 = and i32 %189, 2048
  %width_11 = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 %shr347, i32 9
  %190 = ptrtoint ptr %width_11 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %shl360, ptr %width_11, align 4
  %191 = lshr i32 %retval.0.i, 5
  %shl365 = and i32 %191, 2048
  %height_11 = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 %shr347, i32 10
  %192 = ptrtoint ptr %height_11 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %shl365, ptr %height_11, align 4
  %and368 = and i32 %retval.0.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and368)
  %tobool369.not = icmp eq i32 %and368, 0
  br i1 %tobool369.not, label %if.then357.if.end380_crit_edge, label %if.then370

if.then357.if.end380_crit_edge:                   ; preds = %if.then357
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end380

if.then370:                                       ; preds = %if.then357
  call void @__sanitizer_cov_trace_pc() #10
  %compress_format373 = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 %shr347, i32 16
  %193 = ptrtoint ptr %compress_format373 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 1, ptr %compress_format373, align 4
  br label %if.end380

if.else375:                                       ; preds = %sw.bb345
  %and376 = and i32 %retval.0.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and376)
  %tobool377.not = icmp eq i32 %and376, 0
  br i1 %tobool377.not, label %if.else375.if.end380_crit_edge, label %if.then378

if.else375.if.end380_crit_edge:                   ; preds = %if.else375
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end380

if.then378:                                       ; preds = %if.else375
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.50) #8
  br label %cleanup

if.end380:                                        ; preds = %if.else375.if.end380_crit_edge, %if.then370, %if.then357.if.end380_crit_edge
  %tex_dirty381 = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 21
  %194 = ptrtoint ptr %tex_dirty381 to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 1, ptr %tex_dirty381, align 2
  br label %sw.epilog517

sw.bb382:                                         ; preds = %entry.sw.bb382_crit_edge, %entry.sw.bb382_crit_edge915, %entry.sw.bb382_crit_edge916, %entry.sw.bb382_crit_edge917, %entry.sw.bb382_crit_edge918, %entry.sw.bb382_crit_edge919, %entry.sw.bb382_crit_edge920, %entry.sw.bb382_crit_edge921, %entry.sw.bb382_crit_edge922, %entry.sw.bb382_crit_edge923, %entry.sw.bb382_crit_edge924, %entry.sw.bb382_crit_edge925, %entry.sw.bb382_crit_edge926, %entry.sw.bb382_crit_edge927, %entry.sw.bb382_crit_edge928, %entry.sw.bb382_crit_edge929
  %sub383 = add nsw i32 %reg, -17536
  %shr384 = lshr i32 %sub383, 2
  %and385 = and i32 %retval.0.i, 2047
  %add386 = add nuw nsw i32 %and385, 1
  %width = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 %shr384, i32 3
  %195 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %add386, ptr %width, align 4
  %shr389 = lshr i32 %retval.0.i, 11
  %and390 = and i32 %shr389, 2047
  %add391 = add nuw nsw i32 %and390, 1
  %height = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 %shr384, i32 4
  %196 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %add391, ptr %height, align 4
  %shr394 = lshr i32 %retval.0.i, 26
  %and395 = and i32 %shr394, 15
  %num_levels = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 %shr384, i32 5
  %197 = ptrtoint ptr %num_levels to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %and395, ptr %num_levels, align 4
  %use_pitch = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 %shr384, i32 11
  %call.lobit = lshr i32 %retval.0.i, 31
  %198 = trunc i32 %call.lobit to i8
  %199 = ptrtoint ptr %use_pitch to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 %198, ptr %use_pitch, align 4
  %shr405 = lshr i32 %retval.0.i, 22
  %and406 = and i32 %shr405, 15
  %txdepth = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 %shr384, i32 8
  %200 = ptrtoint ptr %txdepth to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %and406, ptr %txdepth, align 4
  %tex_dirty409 = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 21
  %201 = ptrtoint ptr %tex_dirty409 to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 1, ptr %tex_dirty409, align 2
  br label %sw.epilog517

sw.bb410:                                         ; preds = %entry
  %call411 = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call411)
  %tobool412.not = icmp eq i32 %call411, 0
  br i1 %tobool412.not, label %if.end414, label %if.then413

if.then413:                                       ; preds = %sw.bb410
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.44, i32 noundef %idx, i32 noundef 20316) #8
  call void @radeon_cs_dump_packet(ptr noundef %p, ptr noundef %pkt) #8
  br label %cleanup

if.end414:                                        ; preds = %sw.bb410
  call void @__sanitizer_cov_trace_pc() #10
  %202 = ptrtoint ptr %reloc to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %reloc, align 4
  %gpu_offset415 = getelementptr inbounds %struct.radeon_bo_list, ptr %203, i32 0, i32 2
  %204 = ptrtoint ptr %gpu_offset415 to i32
  call void @__asan_load8_noabort(i32 %204)
  %205 = load i64, ptr %gpu_offset415, align 8
  %conv416 = trunc i64 %205 to i32
  %add417 = add i32 %retval.0.i, %conv416
  %arrayidx418 = getelementptr i32, ptr %2, i32 %idx
  %206 = ptrtoint ptr %arrayidx418 to i32
  call void @__asan_store4_noabort(i32 %206)
  store volatile i32 %add417, ptr %arrayidx418, align 4
  br label %sw.epilog517

sw.bb419:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %color_channel_mask = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 9
  %207 = ptrtoint ptr %color_channel_mask to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %retval.0.i, ptr %color_channel_mask, align 4
  %cb_dirty420 = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 19
  %208 = ptrtoint ptr %cb_dirty420 to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 1, ptr %cb_dirty420, align 4
  br label %sw.epilog517

sw.bb421:                                         ; preds = %entry
  %rdev422 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 1
  %209 = ptrtoint ptr %rdev422 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %rdev422, align 4
  %hyperz_filp = getelementptr inbounds %struct.radeon_device, ptr %210, i32 0, i32 97
  %211 = ptrtoint ptr %hyperz_filp to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %hyperz_filp, align 4
  %filp423 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 2
  %213 = ptrtoint ptr %filp423 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %filp423, align 8
  %cmp424.not = icmp eq ptr %212, %214
  %and427 = and i32 %retval.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and427)
  %tobool428.not = icmp eq i32 %and427, 0
  %or.cond = select i1 %cmp424.not, i1 true, i1 %tobool428.not
  br i1 %or.cond, label %sw.bb421.sw.epilog517_crit_edge, label %if.then429

sw.bb421.sw.epilog517_crit_edge:                  ; preds = %sw.bb421
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog517

if.then429:                                       ; preds = %sw.bb421
  call void @__sanitizer_cov_trace_pc() #10
  %and430 = and i32 %retval.0.i, -2
  %arrayidx431 = getelementptr i32, ptr %2, i32 %idx
  %215 = ptrtoint ptr %arrayidx431 to i32
  call void @__asan_store4_noabort(i32 %215)
  store volatile i32 %and430, ptr %arrayidx431, align 4
  br label %sw.epilog517

sw.bb434:                                         ; preds = %entry
  %zb_cb_clear = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 17
  %216 = trunc i32 %retval.0.i to i8
  %217 = lshr i8 %216, 5
  %218 = and i8 %217, 1
  %219 = ptrtoint ptr %zb_cb_clear to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %218, ptr %zb_cb_clear, align 2
  %cb_dirty440 = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 19
  %220 = ptrtoint ptr %cb_dirty440 to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 1, ptr %cb_dirty440, align 4
  %zb_dirty441 = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 20
  %221 = ptrtoint ptr %zb_dirty441 to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 1, ptr %zb_dirty441, align 1
  %rdev442 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 1
  %222 = ptrtoint ptr %rdev442 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %rdev442, align 4
  %hyperz_filp443 = getelementptr inbounds %struct.radeon_device, ptr %223, i32 0, i32 97
  %224 = ptrtoint ptr %hyperz_filp443 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %hyperz_filp443, align 4
  %filp444 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 2
  %226 = ptrtoint ptr %filp444 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %filp444, align 8
  %cmp445.not = icmp eq ptr %225, %227
  %and448 = and i32 %retval.0.i, 29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and448)
  %tobool449.not = icmp eq i32 %and448, 0
  %or.cond841 = select i1 %cmp445.not, i1 true, i1 %tobool449.not
  br i1 %or.cond841, label %sw.bb434.sw.epilog517_crit_edge, label %sw.bb434.do.end_crit_edge

sw.bb434.do.end_crit_edge:                        ; preds = %sw.bb434
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

sw.bb434.sw.epilog517_crit_edge:                  ; preds = %sw.bb434
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog517

sw.bb453:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %blend_read_enable = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 18
  %228 = trunc i32 %retval.0.i to i8
  %229 = lshr i8 %228, 2
  %230 = and i8 %229, 1
  %231 = ptrtoint ptr %blend_read_enable to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 %230, ptr %blend_read_enable, align 1
  %cb_dirty459 = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 19
  %232 = ptrtoint ptr %cb_dirty459 to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 1, ptr %cb_dirty459, align 4
  br label %sw.epilog517

sw.bb460:                                         ; preds = %entry
  %call461 = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call461)
  %tobool462.not = icmp eq i32 %call461, 0
  br i1 %tobool462.not, label %if.end464, label %if.then463

if.then463:                                       ; preds = %sw.bb460
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.44, i32 noundef %idx, i32 noundef 20096) #8
  call void @radeon_cs_dump_packet(ptr noundef %p, ptr noundef %pkt) #8
  br label %cleanup

if.end464:                                        ; preds = %sw.bb460
  call void @__sanitizer_cov_trace_pc() #10
  %233 = ptrtoint ptr %reloc to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %reloc, align 4
  %235 = ptrtoint ptr %234 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %234, align 8
  %aa = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 13
  %237 = ptrtoint ptr %aa to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr %236, ptr %aa, align 4
  %offset468 = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 13, i32 3
  %238 = ptrtoint ptr %offset468 to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %retval.0.i, ptr %offset468, align 4
  %aa_dirty = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 22
  %239 = ptrtoint ptr %aa_dirty to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 1, ptr %aa_dirty, align 1
  %gpu_offset469 = getelementptr inbounds %struct.radeon_bo_list, ptr %234, i32 0, i32 2
  %240 = ptrtoint ptr %gpu_offset469 to i32
  call void @__asan_load8_noabort(i32 %240)
  %241 = load i64, ptr %gpu_offset469, align 8
  %conv470 = trunc i64 %241 to i32
  %add471 = add i32 %retval.0.i, %conv470
  %arrayidx472 = getelementptr i32, ptr %2, i32 %idx
  %242 = ptrtoint ptr %arrayidx472 to i32
  call void @__asan_store4_noabort(i32 %242)
  store volatile i32 %add471, ptr %arrayidx472, align 4
  br label %sw.epilog517

sw.bb473:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and474 = and i32 %retval.0.i, 16382
  %pitch476 = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 13, i32 1
  %243 = ptrtoint ptr %pitch476 to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 %and474, ptr %pitch476, align 4
  %aa_dirty477 = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 22
  %244 = ptrtoint ptr %aa_dirty477 to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 1, ptr %aa_dirty477, align 1
  br label %sw.epilog517

sw.bb478:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %aaresolve = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 23
  %245 = trunc i32 %retval.0.i to i8
  %246 = and i8 %245, 1
  %247 = ptrtoint ptr %aaresolve to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 %246, ptr %aaresolve, align 4
  %aa_dirty482 = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 22
  %248 = ptrtoint ptr %aa_dirty482 to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 1, ptr %aa_dirty482, align 1
  br label %sw.epilog517

sw.bb483:                                         ; preds = %entry.sw.bb483_crit_edge, %entry.sw.bb483_crit_edge930, %entry.sw.bb483_crit_edge931, %entry.sw.bb483_crit_edge932
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool484.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool484.not, label %sw.bb483.sw.epilog517_crit_edge, label %land.lhs.true485

sw.bb483.sw.epilog517_crit_edge:                  ; preds = %sw.bb483
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog517

land.lhs.true485:                                 ; preds = %sw.bb483
  %rdev486 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 1
  %249 = ptrtoint ptr %rdev486 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %rdev486, align 4
  %hyperz_filp487 = getelementptr inbounds %struct.radeon_device, ptr %250, i32 0, i32 97
  %251 = ptrtoint ptr %hyperz_filp487 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %hyperz_filp487, align 4
  %filp488 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 2
  %253 = ptrtoint ptr %filp488 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %filp488, align 8
  %cmp489.not = icmp eq ptr %252, %254
  br i1 %cmp489.not, label %land.lhs.true485.sw.epilog517_crit_edge, label %land.lhs.true485.do.end_crit_edge

land.lhs.true485.do.end_crit_edge:                ; preds = %land.lhs.true485
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true485.sw.epilog517_crit_edge:          ; preds = %land.lhs.true485
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog517

sw.bb493:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool494.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool494.not, label %sw.bb493.if.end502_crit_edge, label %land.lhs.true495

sw.bb493.if.end502_crit_edge:                     ; preds = %sw.bb493
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end502

land.lhs.true495:                                 ; preds = %sw.bb493
  %rdev496 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 1
  %255 = ptrtoint ptr %rdev496 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %rdev496, align 4
  %hyperz_filp497 = getelementptr inbounds %struct.radeon_device, ptr %256, i32 0, i32 97
  %257 = ptrtoint ptr %hyperz_filp497 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %hyperz_filp497, align 4
  %filp498 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 2
  %259 = ptrtoint ptr %filp498 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %filp498, align 8
  %cmp499.not = icmp eq ptr %258, %260
  br i1 %cmp499.not, label %land.lhs.true495.if.end502_crit_edge, label %land.lhs.true495.do.end_crit_edge

land.lhs.true495.do.end_crit_edge:                ; preds = %land.lhs.true495
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true495.if.end502_crit_edge:             ; preds = %land.lhs.true495
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end502

if.end502:                                        ; preds = %land.lhs.true495.if.end502_crit_edge, %sw.bb493.if.end502_crit_edge
  %rdev503 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 1
  %261 = ptrtoint ptr %rdev503 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %rdev503, align 4
  %family504 = getelementptr inbounds %struct.radeon_device, ptr %262, i32 0, i32 6
  %263 = ptrtoint ptr %family504 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %family504, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %264)
  %cmp505 = icmp ugt i32 %264, 10
  br i1 %cmp505, label %if.end502.sw.epilog517_crit_edge, label %if.end502.do.end_crit_edge

if.end502.do.end_crit_edge:                       ; preds = %if.end502
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end502.sw.epilog517_crit_edge:                 ; preds = %if.end502
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog517

sw.bb509:                                         ; preds = %entry
  %rdev510 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 1
  %265 = ptrtoint ptr %rdev510 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %rdev510, align 4
  %family511 = getelementptr inbounds %struct.radeon_device, ptr %266, i32 0, i32 6
  %267 = ptrtoint ptr %family511 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %family511, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %268)
  %cmp512 = icmp eq i32 %268, 23
  br i1 %cmp512, label %sw.bb509.sw.epilog517_crit_edge, label %sw.bb509.do.end_crit_edge

sw.bb509.do.end_crit_edge:                        ; preds = %sw.bb509
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

sw.bb509.sw.epilog517_crit_edge:                  ; preds = %sw.bb509
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog517

sw.epilog517:                                     ; preds = %sw.bb509.sw.epilog517_crit_edge, %if.end502.sw.epilog517_crit_edge, %land.lhs.true485.sw.epilog517_crit_edge, %sw.bb483.sw.epilog517_crit_edge, %sw.bb478, %sw.bb473, %if.end464, %sw.bb453, %sw.bb434.sw.epilog517_crit_edge, %if.then429, %sw.bb421.sw.epilog517_crit_edge, %sw.bb419, %if.end414, %sw.bb382, %if.end380, %if.end343, %sw.epilog313, %if.end230, %switch.lookup, %sw.bb179, %sw.epilog, %if.end104, %if.end94, %if.end81, %sw.bb76, %sw.bb74, %sw.bb73, %if.end69, %if.end22, %if.end13, %sw.bb4.sw.epilog517_crit_edge, %sw.bb.sw.epilog517_crit_edge, %for.body.preheader
  br label %cleanup

do.end:                                           ; preds = %sw.bb509.do.end_crit_edge, %if.end502.do.end_crit_edge, %land.lhs.true495.do.end_crit_edge, %land.lhs.true485.do.end_crit_edge, %sw.bb434.do.end_crit_edge, %sw.bb78.do.end_crit_edge, %entry.do.end_crit_edge
  %call519 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %reg, i32 noundef %idx, i32 noundef %retval.0.i) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.epilog517, %if.then463, %if.then413, %if.then378, %sw.default311, %if.then301, %if.then206, %sw.default195, %sw.default, %if.then160, %if.then116, %if.then103, %if.then36, %if.then21, %if.then12, %sw.bb4.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.epilog517 ], [ %call461, %if.then463 ], [ %call411, %if.then413 ], [ -22, %if.then378 ], [ -22, %sw.default311 ], [ -22, %if.then301 ], [ %call204, %if.then206 ], [ -22, %sw.default195 ], [ -22, %sw.default ], [ -22, %if.then160 ], [ %call114, %if.then116 ], [ -22, %if.then103 ], [ %call34, %if.then36 ], [ %call19, %if.then21 ], [ %call10, %if.then12 ], [ %call3, %if.then ], [ %call5, %sw.bb4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reloc) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @r300_set_reg_safe(ptr nocapture noundef writeonly %rdev) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5
  %0 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @r300_reg_safe_bm, ptr %config, align 8
  %reg_safe_bm_size = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 1
  %1 = ptrtoint ptr %reg_safe_bm_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 159, ptr %reg_safe_bm_size, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r300_mc_program(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  %save = alloca %struct.r100_mc_save, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %save) #8
  %0 = call ptr @memset(ptr %save, i32 255, i32 24)
  tail call void @r100_debugfs_mc_info_init(ptr noundef %rdev) #8
  call void @r100_mc_stop(ptr noundef %rdev, ptr noundef nonnull %save) #8
  %flags = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 8
  %and = and i32 %2, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %gtt_start = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 6
  %3 = ptrtoint ptr %gtt_start to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %gtt_start, align 8
  %shr = lshr i64 %4, 16
  %and1 = and i64 %shr, 65535
  %gtt_end = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 7
  %5 = ptrtoint ptr %gtt_end to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %gtt_end, align 8
  %and4 = and i64 %6, 4294901760
  %or = or i64 %and1, %and4
  %conv = trunc i64 %or to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  call void @arm_heavy_mb() #8
  %7 = call i32 @llvm.bswap.i32(i32 %conv) #8
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %8 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 332
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #8, !srcloc !145
  %agp_base = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 2
  %10 = ptrtoint ptr %agp_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %agp_base, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  call void @arm_heavy_mb() #8
  %12 = call i32 @llvm.bswap.i32(i32 %11) #8
  %13 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i45 = getelementptr i8, ptr %14, i32 368
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 %12) #8, !srcloc !145
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  call void @arm_heavy_mb() #8
  %15 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i47 = getelementptr i8, ptr %16, i32 348
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 0) #8, !srcloc !145
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  call void @arm_heavy_mb() #8
  %rmmio.i48 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %17 = ptrtoint ptr %rmmio.i48 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmmio.i48, align 4
  %add.ptr.i49 = getelementptr i8, ptr %18, i32 332
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 -241) #8, !srcloc !145
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  call void @arm_heavy_mb() #8
  %19 = ptrtoint ptr %rmmio.i48 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rmmio.i48, align 4
  %add.ptr.i51 = getelementptr i8, ptr %20, i32 368
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 0) #8, !srcloc !145
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  call void @arm_heavy_mb() #8
  %21 = ptrtoint ptr %rmmio.i48 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rmmio.i48, align 4
  %add.ptr.i53 = getelementptr i8, ptr %22, i32 348
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 0) #8, !srcloc !145
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %usec_timeout.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %23 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %usec_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp4.not.i = icmp eq i32 %24, 0
  br i1 %cmp4.not.i, label %if.end.do.end_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %25 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 336
  %27 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !146
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  %28 = and i32 %27, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.if.end16_crit_edge

for.body.i.if.end16_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %29(i32 noundef 214748) #8
  %inc.i = add nuw i32 %i.05.i, 1
  %30 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %usec_timeout.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %31
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.do.end_crit_edge

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

do.end:                                           ; preds = %if.end.i.do.end_crit_edge, %if.end.do.end_crit_edge
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #11
  br label %if.end16

if.end16:                                         ; preds = %do.end, %for.body.i.if.end16_crit_edge
  %vram_start = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 8
  %32 = ptrtoint ptr %vram_start to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %vram_start, align 8
  %shr18 = lshr i64 %33, 16
  %and19 = and i64 %shr18, 65535
  %vram_end = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 9
  %34 = ptrtoint ptr %vram_end to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %vram_end, align 8
  %and23 = and i64 %35, 4294901760
  %or25 = or i64 %and19, %and23
  %conv26 = trunc i64 %or25 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  call void @arm_heavy_mb() #8
  %36 = call i32 @llvm.bswap.i32(i32 %conv26) #8
  %37 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i55 = getelementptr i8, ptr %38, i32 328
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55, i32 %36) #8, !srcloc !145
  call void @r100_mc_resume(ptr noundef %rdev, ptr noundef nonnull %save) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %save) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_debugfs_mc_info_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r300_clock_startup(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_dynclks to i32))
  %0 = load i32, ptr @radeon_dynclks, align 4
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %0, label %if.then [
    i32 -1, label %entry.if.end_crit_edge
    i32 0, label %entry.if.end_crit_edge16
  ]

entry.if.end_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_legacy_set_clock_gating(ptr noundef %rdev, i32 noundef 1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge, %entry.if.end_crit_edge16
  %pll_rreg = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 34
  %2 = ptrtoint ptr %pll_rreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pll_rreg, align 8
  %call = tail call i32 %3(ptr noundef %rdev, i32 noundef 13) #8
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %4 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %family, align 4
  %6 = add i32 %5, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %7 = icmp ult i32 %6, 2
  %tmp.0.v = select i1 %7, i32 10551296, i32 8454144
  %tmp.0 = or i32 %tmp.0.v, %call
  %pll_wreg = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 35
  %8 = ptrtoint ptr %pll_wreg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pll_wreg, align 4
  tail call void %9(ptr noundef %rdev, i32 noundef 13, i32 noundef %tmp.0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_legacy_set_clock_gating(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r300_resume(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rv370_pcie_gart_disable(ptr noundef %rdev)
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_pci_gart_disable(ptr noundef %rdev) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_dynclks to i32))
  %4 = load i32, ptr @radeon_dynclks, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %4, label %if.then.i [
    i32 -1, label %if.end5.r300_clock_startup.exit_crit_edge
    i32 0, label %if.end5.r300_clock_startup.exit_crit_edge42
  ]

if.end5.r300_clock_startup.exit_crit_edge42:      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %r300_clock_startup.exit

if.end5.r300_clock_startup.exit_crit_edge:        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %r300_clock_startup.exit

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_legacy_set_clock_gating(ptr noundef %rdev, i32 noundef 1) #8
  br label %r300_clock_startup.exit

r300_clock_startup.exit:                          ; preds = %if.then.i, %if.end5.r300_clock_startup.exit_crit_edge, %if.end5.r300_clock_startup.exit_crit_edge42
  %pll_rreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 34
  %6 = ptrtoint ptr %pll_rreg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pll_rreg.i, align 8
  %call.i = tail call i32 %7(ptr noundef %rdev, i32 noundef 13) #8
  %family.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %8 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %family.i, align 4
  %10 = add i32 %9, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %11 = icmp ult i32 %10, 2
  %tmp.0.v.i = select i1 %11, i32 10551296, i32 8454144
  %tmp.0.i = or i32 %tmp.0.v.i, %call.i
  %pll_wreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 35
  %12 = ptrtoint ptr %pll_wreg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pll_wreg.i, align 4
  tail call void %13(ptr noundef %rdev, i32 noundef 13, i32 noundef %tmp.0.i) #8
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %14 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %asic, align 8
  %asic_reset = getelementptr inbounds %struct.radeon_asic, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %asic_reset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %asic_reset, align 4
  %call = tail call i32 %17(ptr noundef %rdev, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %r300_clock_startup.exit.if.end10_crit_edge, label %do.end

r300_clock_startup.exit.if.end10_crit_edge:       ; preds = %r300_clock_startup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

do.end:                                           ; preds = %r300_clock_startup.exit
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rdev, align 8
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %20 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 3648
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #8
  %24 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %25, i32 1984
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.25, i32 noundef %23, i32 noundef %27) #11
  br label %if.end10

if.end10:                                         ; preds = %do.end, %r300_clock_startup.exit.if.end10_crit_edge
  %ddev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %28 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ddev, align 4
  tail call void @radeon_combios_asic_init(ptr noundef %29) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_dynclks to i32))
  %30 = load i32, ptr @radeon_dynclks, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %30, label %if.then.i34 [
    i32 -1, label %if.end10.r300_clock_startup.exit41_crit_edge
    i32 0, label %if.end10.r300_clock_startup.exit41_crit_edge43
  ]

if.end10.r300_clock_startup.exit41_crit_edge43:   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %r300_clock_startup.exit41

if.end10.r300_clock_startup.exit41_crit_edge:     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %r300_clock_startup.exit41

if.then.i34:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_legacy_set_clock_gating(ptr noundef %rdev, i32 noundef 1) #8
  br label %r300_clock_startup.exit41

r300_clock_startup.exit41:                        ; preds = %if.then.i34, %if.end10.r300_clock_startup.exit41_crit_edge, %if.end10.r300_clock_startup.exit41_crit_edge43
  %32 = ptrtoint ptr %pll_rreg.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pll_rreg.i, align 8
  %call.i36 = tail call i32 %33(ptr noundef %rdev, i32 noundef 13) #8
  %34 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %family.i, align 4
  %36 = add i32 %35, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %37 = icmp ult i32 %36, 2
  %tmp.0.v.i38 = select i1 %37, i32 10551296, i32 8454144
  %tmp.0.i39 = or i32 %tmp.0.v.i38, %call.i36
  %38 = ptrtoint ptr %pll_wreg.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pll_wreg.i, align 4
  tail call void %39(ptr noundef %rdev, i32 noundef 13, i32 noundef %tmp.0.i39) #8
  tail call void @radeon_surface_init(ptr noundef %rdev) #8
  %accel_working = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 66
  %40 = ptrtoint ptr %accel_working to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %accel_working, align 2
  %call11 = tail call fastcc i32 @r300_startup(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %r300_clock_startup.exit41.if.end15_crit_edge, label %if.then13

r300_clock_startup.exit41.if.end15_crit_edge:     ; preds = %r300_clock_startup.exit41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then13:                                        ; preds = %r300_clock_startup.exit41
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %accel_working to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %accel_working, align 2
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %r300_clock_startup.exit41.if.end15_crit_edge
  ret i32 %call11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_pci_gart_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_combios_asic_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_surface_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @r300_startup(ptr noundef %rdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @r100_set_common_regs(ptr noundef %rdev) #8
  tail call void @r300_mc_program(ptr noundef %rdev)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_dynclks to i32))
  %0 = load i32, ptr @radeon_dynclks, align 4
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %0, label %if.then.i [
    i32 -1, label %entry.r300_clock_startup.exit_crit_edge
    i32 0, label %entry.r300_clock_startup.exit_crit_edge99
  ]

entry.r300_clock_startup.exit_crit_edge99:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %r300_clock_startup.exit

entry.r300_clock_startup.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %r300_clock_startup.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_legacy_set_clock_gating(ptr noundef %rdev, i32 noundef 1) #8
  br label %r300_clock_startup.exit

r300_clock_startup.exit:                          ; preds = %if.then.i, %entry.r300_clock_startup.exit_crit_edge, %entry.r300_clock_startup.exit_crit_edge99
  %pll_rreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 34
  %2 = ptrtoint ptr %pll_rreg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pll_rreg.i, align 8
  %call.i = tail call i32 %3(ptr noundef %rdev, i32 noundef 13) #8
  %family.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %4 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %family.i, align 4
  %6 = add i32 %5, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %7 = icmp ult i32 %6, 2
  %tmp.0.v.i = select i1 %7, i32 10551296, i32 8454144
  %tmp.0.i = or i32 %tmp.0.v.i, %call.i
  %pll_wreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 35
  %8 = ptrtoint ptr %pll_wreg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pll_wreg.i, align 4
  tail call void %9(ptr noundef %rdev, i32 noundef 13, i32 noundef %tmp.0.i) #8
  %10 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %family.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %11, label %r300_clock_startup.exit.sw.bb18.i_crit_edge [
    i32 9, label %land.lhs.true.i
    i32 10, label %land.lhs.true6.i
  ]

r300_clock_startup.exit.sw.bb18.i_crit_edge:      ; preds = %r300_clock_startup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb18.i

land.lhs.true.i:                                  ; preds = %r300_clock_startup.exit
  %pdev.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 2
  %13 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev.i, align 8
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16708, i16 %16)
  %cmp1.not.i = icmp eq i16 %16, 16708
  br i1 %cmp1.not.i, label %land.lhs.true.i.sw.bb18.i_crit_edge, label %land.lhs.true.i.if.end.i.thread_crit_edge

land.lhs.true.i.if.end.i.thread_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.thread

land.lhs.true.i.sw.bb18.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb18.i

land.lhs.true6.i:                                 ; preds = %r300_clock_startup.exit
  %pdev7.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 2
  %17 = ptrtoint ptr %pdev7.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev7.i, align 8
  %device8.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %device8.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %device8.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16712, i16 %20)
  %cmp10.not.i = icmp eq i16 %20, 16712
  br i1 %cmp10.not.i, label %land.lhs.true6.i.sw.bb18.i_crit_edge, label %land.lhs.true6.i.if.end.i.thread_crit_edge

land.lhs.true6.i.if.end.i.thread_crit_edge:       ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.thread

land.lhs.true6.i.sw.bb18.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb18.i

if.end.i.thread:                                  ; preds = %land.lhs.true6.i.if.end.i.thread_crit_edge, %land.lhs.true.i.if.end.i.thread_crit_edge
  %num_gb_pipes12.i95 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 10
  %21 = ptrtoint ptr %num_gb_pipes12.i95 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %num_gb_pipes12.i95, align 4
  br label %sw.epilog.i

sw.bb18.i:                                        ; preds = %land.lhs.true6.i.sw.bb18.i_crit_edge, %land.lhs.true.i.sw.bb18.i_crit_edge, %r300_clock_startup.exit.sw.bb18.i_crit_edge
  %num_gb_pipes12.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 10
  %22 = ptrtoint ptr %num_gb_pipes12.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %num_gb_pipes12.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb18.i, %if.end.i.thread
  %num_gb_pipes12.i97 = phi ptr [ %num_gb_pipes12.i95, %if.end.i.thread ], [ %num_gb_pipes12.i, %sw.bb18.i ]
  %gb_tile_config.0.i = phi i32 [ 385875968, %if.end.i.thread ], [ 285212672, %sw.bb18.i ]
  %num_z_pipes.i96.sink = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 11
  %23 = ptrtoint ptr %num_z_pipes.i96.sink to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %num_z_pipes.i96.sink, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %24 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 16408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %gb_tile_config.0.i) #8, !srcloc !145
  %call.i93 = tail call i32 @r100_gui_wait_for_idle(ptr noundef %rdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %tobool.not.i = icmp eq i32 %call.i93, 0
  br i1 %tobool.not.i, label %sw.epilog.i.if.end23.i_crit_edge, label %do.end.i

sw.epilog.i.if.end23.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

do.end.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #11
  br label %if.end23.i

if.end23.i:                                       ; preds = %do.end.i, %sw.epilog.i.if.end23.i_crit_edge
  %26 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i72.i = getelementptr i8, ptr %27, i32 5900
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i72.i) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  %29 = or i32 %28, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %30 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i74.i = getelementptr i8, ptr %31, i32 5900
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74.i, i32 %29) #8, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %32 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i76.i = getelementptr i8, ptr %33, i32 13352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76.i, i32 66048) #8, !srcloc !145
  %call26.i = tail call i32 @r100_gui_wait_for_idle(ptr noundef %rdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end23.i.if.end34.i_crit_edge, label %do.end31.i

if.end23.i.if.end34.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

do.end31.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #11
  br label %if.end34.i

if.end34.i:                                       ; preds = %do.end31.i, %if.end23.i.if.end34.i_crit_edge
  %usec_timeout.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %34 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %usec_timeout.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp4.not.i.i = icmp eq i32 %35, 0
  br i1 %cmp4.not.i.i, label %if.end34.i.do.end40.i_crit_edge, label %if.end34.i.for.body.i.i_crit_edge

if.end34.i.for.body.i.i_crit_edge:                ; preds = %if.end34.i
  br label %for.body.i.i

if.end34.i.do.end40.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end40.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %if.end34.i.for.body.i.i_crit_edge
  %i.05.i.i = phi i32 [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ], [ 0, %if.end34.i.for.body.i.i_crit_edge ]
  %36 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %37, i32 336
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  %39 = and i32 %38, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.i.r300_gpu_init.exit_crit_edge

for.body.i.i.r300_gpu_init.exit_crit_edge:        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %r300_gpu_init.exit

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748) #8
  %inc.i.i = add nuw i32 %i.05.i.i, 1
  %41 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %usec_timeout.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %42
  br i1 %cmp.i.i, label %if.end.i.i.for.body.i.i_crit_edge, label %if.end.i.i.do.end40.i_crit_edge

if.end.i.i.do.end40.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end40.i

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

do.end40.i:                                       ; preds = %if.end.i.i.do.end40.i_crit_edge, %if.end34.i.do.end40.i_crit_edge
  %call42.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69) #11
  br label %r300_gpu_init.exit

r300_gpu_init.exit:                               ; preds = %do.end40.i, %for.body.i.i.r300_gpu_init.exit_crit_edge
  %43 = ptrtoint ptr %num_gb_pipes12.i97 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_gb_pipes12.i97, align 4
  %45 = ptrtoint ptr %num_z_pipes.i96.sink to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_z_pipes.i96.sink, align 8
  %call50.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef %44, i32 noundef %46) #11
  %flags = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %47 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags, align 8
  %and = and i32 %48, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %r300_gpu_init.exit.if.end3_crit_edge, label %if.then

r300_gpu_init.exit.if.end3_crit_edge:             ; preds = %r300_gpu_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then:                                          ; preds = %r300_gpu_init.exit
  %call = tail call i32 @rv370_pcie_gart_enable(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end3_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %r300_gpu_init.exit.if.end3_crit_edge
  %49 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %family.i, align 4
  %.off = add i32 %50, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.then9, label %if.end3.if.end10_crit_edge

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then9:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_enable_bm(ptr noundef %rdev) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end3.if.end10_crit_edge
  %51 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags, align 8
  %and12 = and i32 %52, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end10.if.end19_crit_edge, label %if.then14

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then14:                                        ; preds = %if.end10
  %call15 = tail call i32 @r100_pci_gart_enable(ptr noundef %rdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then14.if.end19_crit_edge, label %if.then14.cleanup_crit_edge

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then14.if.end19_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.end19:                                         ; preds = %if.then14.if.end19_crit_edge, %if.end10.if.end19_crit_edge
  %call20 = tail call i32 @radeon_wb_init(ptr noundef %rdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %call24 = tail call i32 @radeon_fence_driver_start_ring(ptr noundef %rdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %do.end

do.end:                                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.56, i32 noundef %call24) #11
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  %irq = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55
  %55 = ptrtoint ptr %irq to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %irq, align 8, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool28.not = icmp eq i8 %56, 0
  br i1 %tobool28.not, label %if.then29, label %if.end27.if.end34_crit_edge

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then29:                                        ; preds = %if.end27
  %call30 = tail call i32 @radeon_irq_kms_init(ptr noundef %rdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then29.if.end34_crit_edge, label %if.then29.cleanup_crit_edge

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then29.if.end34_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.end34:                                         ; preds = %if.then29.if.end34_crit_edge, %if.end27.if.end34_crit_edge
  %call35 = tail call i32 @r100_irq_set(ptr noundef %rdev) #8
  %57 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %58, i32 304
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #8
  %hdp_cntl = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 3
  %61 = ptrtoint ptr %hdp_cntl to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %hdp_cntl, align 4
  %call37 = tail call i32 @r100_cp_init(ptr noundef %rdev, i32 noundef 1048576) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end44, label %do.end42

do.end42:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.59, i32 noundef %call37) #11
  br label %cleanup

if.end44:                                         ; preds = %if.end34
  %call45 = tail call i32 @radeon_ib_pool_init(ptr noundef %rdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end44.cleanup_crit_edge, label %do.end50

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.62, i32 noundef %call45) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end50, %if.end44.cleanup_crit_edge, %do.end42, %if.then29.cleanup_crit_edge, %do.end, %if.end19.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call24, %do.end ], [ %call37, %do.end42 ], [ %call45, %do.end50 ], [ %call, %if.then.cleanup_crit_edge ], [ %call15, %if.then14.cleanup_crit_edge ], [ %call20, %if.end19.cleanup_crit_edge ], [ %call30, %if.then29.cleanup_crit_edge ], [ 0, %if.end44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r300_suspend(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @radeon_pm_suspend(ptr noundef %rdev) #8
  tail call void @r100_cp_disable(ptr noundef %rdev) #8
  tail call void @radeon_wb_disable(ptr noundef %rdev) #8
  tail call void @r100_irq_disable(ptr noundef %rdev) #8
  %flags = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rv370_pcie_gart_disable(ptr noundef %rdev)
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_pci_gart_disable(ptr noundef %rdev) #8
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
define dso_local void @r300_fini(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @radeon_pm_fini(ptr noundef %rdev) #8
  tail call void @r100_cp_fini(ptr noundef %rdev) #8
  tail call void @radeon_wb_fini(ptr noundef %rdev) #8
  tail call void @radeon_ib_pool_fini(ptr noundef %rdev) #8
  tail call void @radeon_gem_fini(ptr noundef %rdev) #8
  %flags = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_gart_fini(ptr noundef %rdev) #8
  tail call void @rv370_pcie_gart_disable(ptr noundef %rdev) #8
  tail call void @radeon_gart_table_vram_free(ptr noundef %rdev) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_pci_gart_fini(ptr noundef %rdev) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  tail call void @radeon_agp_fini(ptr noundef %rdev) #8
  tail call void @radeon_irq_kms_fini(ptr noundef %rdev) #8
  tail call void @radeon_fence_driver_fini(ptr noundef %rdev) #8
  tail call void @radeon_bo_fini(ptr noundef %rdev) #8
  tail call void @radeon_atombios_fini(ptr noundef %rdev) #8
  %bios = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 13
  %4 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bios, align 8
  tail call void @kfree(ptr noundef %5) #8
  %6 = ptrtoint ptr %bios to i32
  call void @__asan_store4_noabort(i32 %6)
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
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r300_init(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @r100_vga_render_disable(ptr noundef %rdev) #8
  tail call void @radeon_scratch_init(ptr noundef %rdev) #8
  tail call void @radeon_surface_init(ptr noundef %rdev) #8
  tail call void @r100_restore_sanity(ptr noundef %rdev) #8
  %call = tail call zeroext i1 @radeon_get_bios(ptr noundef %rdev) #8
  br i1 %call, label %entry.if.end2_crit_edge, label %if.then

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %if.then.if.end2_crit_edge, %entry.if.end2_crit_edge
  %is_atom_bios = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 14
  %2 = ptrtoint ptr %is_atom_bios to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_atom_bios, align 4, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.28) #11
  br label %cleanup

if.else:                                          ; preds = %if.end2
  %call4 = tail call i32 @radeon_combios_init(ptr noundef %rdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end8, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.else
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %6 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %asic, align 8
  %asic_reset = getelementptr inbounds %struct.radeon_asic, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %asic_reset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %asic_reset, align 4
  %call9 = tail call i32 %9(ptr noundef %rdev, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.if.end18_crit_edge, label %do.end14

if.end8.if.end18_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rdev, align 8
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %12 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 3648
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #8
  %16 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i124 = getelementptr i8, ptr %17, i32 1984
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i124) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.25, i32 noundef %15, i32 noundef %19) #11
  br label %if.end18

if.end18:                                         ; preds = %do.end14, %if.end8.if.end18_crit_edge
  %call19 = tail call zeroext i1 @radeon_boot_test_post_card(ptr noundef %rdev) #8
  br i1 %call19, label %if.end23, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %pll_errata.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 9
  %20 = ptrtoint ptr %pll_errata.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %pll_errata.i, align 8
  %family.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %21 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %22)
  %cmp.i = icmp eq i32 %22, 9
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end23.r300_errata.exit_crit_edge

if.end23.r300_errata.exit_crit_edge:              ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %r300_errata.exit

land.lhs.true.i:                                  ; preds = %if.end23
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %23 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 224
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  %26 = and i32 %25, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp1.i = icmp eq i32 %26, 0
  br i1 %cmp1.i, label %if.then.i, label %land.lhs.true.i.r300_errata.exit_crit_edge

land.lhs.true.i.r300_errata.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %r300_errata.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %pll_errata.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pll_errata.i, align 8
  %or.i = or i32 %28, 1
  store i32 %or.i, ptr %pll_errata.i, align 8
  br label %r300_errata.exit

r300_errata.exit:                                 ; preds = %if.then.i, %land.lhs.true.i.r300_errata.exit_crit_edge, %if.end23.r300_errata.exit_crit_edge
  %ddev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %29 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ddev, align 4
  tail call void @radeon_get_clock_info(ptr noundef %30) #8
  %flags = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags, align 8
  %and = and i32 %32, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %r300_errata.exit.if.end30_crit_edge, label %if.then25

r300_errata.exit.if.end30_crit_edge:              ; preds = %r300_errata.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then25:                                        ; preds = %r300_errata.exit
  %call26 = tail call i32 @radeon_agp_init(ptr noundef %rdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then25.if.end30_crit_edge, label %if.then28

if.then25.if.end30_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then28:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_agp_disable(ptr noundef %rdev) #8
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.then25.if.end30_crit_edge, %r300_errata.exit.if.end30_crit_edge
  tail call void @r300_mc_init(ptr noundef %rdev)
  tail call void @radeon_fence_driver_init(ptr noundef %rdev) #8
  %call31 = tail call i32 @radeon_bo_init(ptr noundef %rdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags, align 8
  %and36 = and i32 %34, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end34.if.end43_crit_edge, label %if.then38

if.end34.if.end43_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then38:                                        ; preds = %if.end34
  %call39 = tail call i32 @rv370_pcie_gart_init(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then38.if.end43_crit_edge, label %if.then38.cleanup_crit_edge

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then38.if.end43_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.end43:                                         ; preds = %if.then38.if.end43_crit_edge, %if.end34.if.end43_crit_edge
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags, align 8
  %and45 = and i32 %36, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end43.if.end52_crit_edge, label %if.then47

if.end43.if.end52_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then47:                                        ; preds = %if.end43
  %call48 = tail call i32 @r100_pci_gart_init(ptr noundef %rdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.then47.if.end52_crit_edge, label %if.then47.cleanup_crit_edge

if.then47.cleanup_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then47.if.end52_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.end52:                                         ; preds = %if.then47.if.end52_crit_edge, %if.end43.if.end52_crit_edge
  %config.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5
  %37 = ptrtoint ptr %config.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @r300_reg_safe_bm, ptr %config.i, align 8
  %reg_safe_bm_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 1
  %38 = ptrtoint ptr %reg_safe_bm_size.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 159, ptr %reg_safe_bm_size.i, align 4
  %call53 = tail call i32 @radeon_pm_init(ptr noundef %rdev) #8
  %accel_working = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 66
  %39 = ptrtoint ptr %accel_working to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %accel_working, align 2
  %call54 = tail call fastcc i32 @r300_startup(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end52.cleanup_crit_edge, label %do.end59

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end59:                                         ; preds = %if.end52
  %40 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.33) #11
  tail call void @r100_cp_fini(ptr noundef %rdev) #8
  tail call void @radeon_wb_fini(ptr noundef %rdev) #8
  tail call void @radeon_ib_pool_fini(ptr noundef %rdev) #8
  tail call void @radeon_irq_kms_fini(ptr noundef %rdev) #8
  %42 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags, align 8
  %and62 = and i32 %43, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %do.end59.if.end65_crit_edge, label %if.then64

do.end59.if.end65_crit_edge:                      ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then64:                                        ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rv370_pcie_gart_fini(ptr noundef %rdev)
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %do.end59.if.end65_crit_edge
  %44 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags, align 8
  %and67 = and i32 %45, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end65.if.end70_crit_edge, label %if.then69

if.end65.if.end70_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then69:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_pci_gart_fini(ptr noundef %rdev) #8
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %if.end65.if.end70_crit_edge
  tail call void @radeon_agp_fini(ptr noundef %rdev) #8
  %46 = ptrtoint ptr %accel_working to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %accel_working, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %if.end52.cleanup_crit_edge, %if.then47.cleanup_crit_edge, %if.then38.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.else.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %if.then.cleanup_crit_edge ], [ %call4, %if.else.cleanup_crit_edge ], [ -22, %if.end18.cleanup_crit_edge ], [ %call31, %if.end30.cleanup_crit_edge ], [ %call39, %if.then38.cleanup_crit_edge ], [ %call48, %if.then47.cleanup_crit_edge ], [ 0, %if.end70 ], [ 0, %if.end52.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_vga_render_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_scratch_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_restore_sanity(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_get_bios(ptr noundef) local_unnamed_addr #2

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
declare dso_local void @radeon_fence_driver_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_bo_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_pci_gart_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_pm_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rv370_debugfs_pcie_gart_info_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @rv370_debugfs_pcie_gart_info_show, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rv370_debugfs_pcie_gart_info_show(ptr noundef %m, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %pcie_idx_lock.i = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 23
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i) #8
  %pcie_reg_mask.i = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %pcie_reg_mask.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pcie_reg_mask.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %and.i = shl i32 %3, 24
  %4 = and i32 %and.i, 268435456
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 31
  %5 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %4) #8, !srcloc !145
  %7 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %8, i32 52
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i, i32 noundef %call2.i) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.37, i32 noundef %10) #8
  %call2.i27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i) #8
  %11 = ptrtoint ptr %pcie_reg_mask.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pcie_reg_mask.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %and.i29 = shl i32 %12, 24
  %13 = and i32 %and.i29, 318767104
  %14 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i31 = getelementptr i8, ptr %15, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i31, i32 %13) #8, !srcloc !145
  %16 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i12.i32 = getelementptr i8, ptr %17, i32 52
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i32) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i, i32 noundef %call2.i27) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.38, i32 noundef %19) #8
  %call2.i34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i) #8
  %20 = ptrtoint ptr %pcie_reg_mask.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pcie_reg_mask.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %and.i36 = shl i32 %21, 24
  %22 = and i32 %and.i36, 335544320
  %23 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i38 = getelementptr i8, ptr %24, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i38, i32 %22) #8, !srcloc !145
  %25 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i12.i39 = getelementptr i8, ptr %26, i32 52
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i39) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i, i32 noundef %call2.i34) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.39, i32 noundef %28) #8
  %call2.i41 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i) #8
  %29 = ptrtoint ptr %pcie_reg_mask.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pcie_reg_mask.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %and.i43 = shl i32 %30, 24
  %31 = and i32 %and.i43, 352321536
  %32 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i45 = getelementptr i8, ptr %33, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i45, i32 %31) #8, !srcloc !145
  %34 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i12.i46 = getelementptr i8, ptr %35, i32 52
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i46) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i, i32 noundef %call2.i41) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.40, i32 noundef %37) #8
  %call2.i48 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i) #8
  %38 = ptrtoint ptr %pcie_reg_mask.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pcie_reg_mask.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %and.i50 = shl i32 %39, 24
  %40 = and i32 %and.i50, 369098752
  %41 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i52 = getelementptr i8, ptr %42, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i52, i32 %40) #8, !srcloc !145
  %43 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i12.i53 = getelementptr i8, ptr %44, i32 52
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i53) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i, i32 noundef %call2.i48) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.41, i32 noundef %46) #8
  %call2.i55 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i) #8
  %47 = ptrtoint ptr %pcie_reg_mask.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pcie_reg_mask.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %and.i57 = shl i32 %48, 24
  %49 = and i32 %and.i57, 385875968
  %50 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i59 = getelementptr i8, ptr %51, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i59, i32 %49) #8, !srcloc !145
  %52 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i12.i60 = getelementptr i8, ptr %53, i32 52
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i60) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i, i32 noundef %call2.i55) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.42, i32 noundef %55) #8
  %call2.i62 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_idx_lock.i) #8
  %56 = ptrtoint ptr %pcie_reg_mask.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pcie_reg_mask.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %and.i64 = shl i32 %57, 24
  %58 = and i32 %and.i64, 402653184
  %59 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i66 = getelementptr i8, ptr %60, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i66, i32 %58) #8, !srcloc !145
  %61 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i12.i67 = getelementptr i8, ptr %62, i32 52
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i67) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_idx_lock.i, i32 noundef %call2.i62) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.43, i32 noundef %64) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_cs_packet_parse_vline(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_cs_dump_packet(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_reloc_pitch_offset(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_cs_packet_next_reloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_packet3_load_vbpntr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_cs_track_check_pkt3_indx_buffer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_cs_track_check(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_set_common_regs(ptr noundef) local_unnamed_addr #2

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
declare dso_local i32 @r100_gui_wait_for_idle(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !19, !20, !22, !23, !25, !26, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !41, !43, !44, !45, !46, !47, !49, !50, !51, !52, !54, !55, !57, !58, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !96, !97, !98, !100, !102, !104, !106, !108, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !124, !126, !127, !129, !130, !131, !133, !134}
!llvm.module.flags = !{!135, !136, !137, !138, !139, !140, !141, !142}
!llvm.ident = !{!143}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/r300.c", i32 135, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/radeon/r300.c", i32 158, i32 3}
!5 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @rv370_pcie_gart_enable._entry, !4, !"_entry", i1 false, i1 false}
!9 = !{ptr @rv370_pcie_gart_enable._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/radeon/r300.c", i32 184, i32 2}
!12 = !{ptr @rv370_pcie_gart_enable._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @rv370_pcie_gart_enable._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/radeon/r300.c", i32 426, i32 2}
!16 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.11, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @r300_asic_reset._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @r300_asic_reset._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @r300_asic_reset._entry.12, !21, !"_entry", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/radeon/r300.c", i32 445, i32 2}
!22 = !{ptr @r300_asic_reset._entry_ptr.13, !21, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @r300_asic_reset._entry.14, !24, !"_entry", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/radeon/r300.c", i32 457, i32 2}
!25 = !{ptr @r300_asic_reset._entry_ptr.15, !24, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/radeon/r300.c", i32 463, i32 3}
!28 = !{ptr @r300_asic_reset._entry.16, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @r300_asic_reset._entry_ptr.18, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.20, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/radeon/r300.c", i32 466, i32 3}
!32 = !{ptr @r300_asic_reset._entry.19, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @r300_asic_reset._entry_ptr.21, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.22, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/radeon/r300.c", i32 1310, i32 4}
!36 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/radeon/r300.c", i32 1348, i32 3}
!38 = !{ptr @.str.24, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @r300_mc_program._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @r300_mc_program._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/radeon/r300.c", i32 1450, i32 3}
!43 = !{ptr @.str.26, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.27, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @r300_resume._entry, !42, !"_entry", i1 false, i1 false}
!46 = !{ptr @r300_resume._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.28, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/radeon/r300.c", i32 1521, i32 3}
!49 = !{ptr @.str.29, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @r300_init._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @r300_init._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @r300_init._entry.30, !53, !"_entry", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/radeon/r300.c", i32 1530, i32 3}
!54 = !{ptr @r300_init._entry_ptr.31, !53, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.33, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/radeon/r300.c", i32 1576, i32 3}
!57 = !{ptr @r300_init._entry.32, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @r300_init._entry_ptr.34, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.35, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/radeon/radeon.h", i32 2721, i32 3}
!61 = !{ptr @.str.36, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/radeon/r300.c", i32 621, i32 22}
!63 = !{ptr @rv370_debugfs_pcie_gart_info_fops, !64, !"rv370_debugfs_pcie_gart_info_fops", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/radeon/r300.c", i32 613, i32 1}
!65 = !{ptr @.str.37, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/radeon/r300.c", i32 597, i32 16}
!67 = !{ptr @.str.38, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/radeon/r300.c", i32 599, i32 16}
!69 = !{ptr @.str.39, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/radeon/r300.c", i32 601, i32 16}
!71 = !{ptr @.str.40, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/radeon/r300.c", i32 603, i32 16}
!73 = !{ptr @.str.41, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/radeon/r300.c", i32 605, i32 16}
!75 = !{ptr @.str.42, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/radeon/r300.c", i32 607, i32 16}
!77 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/radeon/r300.c", i32 609, i32 16}
!79 = !{ptr @.str.44, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/radeon/r300.c", i32 647, i32 4}
!81 = !{ptr @.str.45, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/radeon/r300.c", i32 764, i32 4}
!83 = !{ptr @.str.46, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/radeon/r300.c", i32 814, i32 5}
!85 = !{ptr @.str.47, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/radeon/r300.c", i32 829, i32 4}
!87 = !{ptr @.str.48, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/radeon/r300.c", i32 855, i32 4}
!89 = !{ptr @.str.49, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/radeon/r300.c", i32 964, i32 5}
!91 = !{ptr @.str.50, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/radeon/r300.c", i32 1043, i32 4}
!93 = !{ptr @.str.51, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/radeon/r300.c", i32 1167, i32 2}
!95 = !{ptr @.str.52, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @r300_packet0_check._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @r300_packet0_check._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.53, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/radeon/r300.c", i32 1193, i32 4}
!100 = !{ptr @.str.54, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/radeon/r300.c", i32 1209, i32 4}
!102 = !{ptr @.str.55, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/radeon/r300.c", i32 1274, i32 3}
!104 = !{ptr @r300_reg_safe_bm, !105, !"r300_reg_safe_bm", i1 false, i1 false}
!105 = !{!"./drivers/gpu/drm/radeon/r300_reg_safe.h", i32 1, i32 23}
!106 = !{ptr @.str.56, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/radeon/r300.c", i32 1408, i32 3}
!108 = !{ptr @.str.57, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @r300_startup._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @r300_startup._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.59, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/radeon/r300.c", i32 1424, i32 3}
!113 = !{ptr @r300_startup._entry.58, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @r300_startup._entry_ptr.60, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.62, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/radeon/r300.c", i32 1430, i32 3}
!117 = !{ptr @r300_startup._entry.61, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @r300_startup._entry_ptr.63, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.64, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/radeon/r300.c", i32 394, i32 3}
!121 = !{ptr @.str.65, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @r300_gpu_init._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @r300_gpu_init._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @r300_gpu_init._entry.66, !125, !"_entry", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/radeon/r300.c", i32 405, i32 3}
!126 = !{ptr @r300_gpu_init._entry_ptr.67, !125, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.69, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/radeon/r300.c", i32 408, i32 3}
!129 = !{ptr @r300_gpu_init._entry.68, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @r300_gpu_init._entry_ptr.70, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.72, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/radeon/r300.c", i32 410, i32 2}
!133 = !{ptr @r300_gpu_init._entry.71, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @r300_gpu_init._entry_ptr.73, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{i32 1, !"wchar_size", i32 2}
!136 = !{i32 1, !"min_enum_size", i32 4}
!137 = !{i32 8, !"branch-target-enforcement", i32 0}
!138 = !{i32 8, !"sign-return-address", i32 0}
!139 = !{i32 8, !"sign-return-address-all", i32 0}
!140 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!141 = !{i32 7, !"uwtable", i32 1}
!142 = !{i32 7, !"frame-pointer", i32 2}
!143 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!144 = !{i64 2157878180}
!145 = !{i64 5020936}
!146 = !{i64 5021354}
!147 = !{i64 2157877773}
!148 = !{i64 2158063005}
!149 = !{i64 2158063352}
!150 = !{!"auto-init"}
!151 = !{i8 0, i8 2}
