; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/radeon_asic.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/radeon_asic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.radeon_asic_ring = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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

@radeon_agp_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016[drm] Forcing AGP to PCIE mode\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"radeon_agp_disable\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/gpu/drm/radeon/radeon_asic.c\00", [59 x i8] zeroinitializer }, align 32
@radeon_agp_disable._entry_ptr = internal global ptr @radeon_agp_disable._entry, section ".printk_index", align 4
@radeon_agp_disable._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@radeon_agp_disable._entry_ptr.4 = internal global ptr @radeon_agp_disable._entry.3, section ".printk_index", align 4
@radeon_agp_disable._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016[drm] Forcing AGP to PCI mode\0A\00", [63 x i8] zeroinitializer }, align 32
@radeon_agp_disable._entry_ptr.7 = internal global ptr @radeon_agp_disable._entry.5, section ".printk_index", align 4
@radeon_gart_size = external dso_local local_unnamed_addr global i32, align 4
@r100_asic = internal global { %struct.radeon_asic, [80 x i8] } { %struct.radeon_asic { ptr @r100_init, ptr @r100_fini, ptr @r100_resume, ptr @r100_suspend, ptr @r100_vga_set_state, ptr @r100_asic_reset, ptr null, ptr @r100_gui_idle, ptr @r100_mc_wait_for_idle, ptr null, ptr null, ptr @radeon_invalid_get_allowed_info_register, %struct.anon.95 { ptr @r100_pci_gart_tlb_flush, ptr @r100_pci_gart_get_page_entry, ptr @r100_pci_gart_set_page }, %struct.anon.96 zeroinitializer, [8 x ptr] [ptr @r100_gfx_ring, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], %struct.anon.97 { ptr @r100_irq_set, ptr @r100_irq_process }, %struct.anon.98 { ptr @r100_bandwidth_update, ptr @r100_get_vblank_counter, ptr @r100_wait_for_vblank, ptr @radeon_legacy_set_backlight_level, ptr @radeon_legacy_get_backlight_level, ptr null, ptr null }, %struct.anon.99 { ptr @r100_copy_blit, i32 0, ptr null, i32 0, ptr @r100_copy_blit, i32 0 }, %struct.anon.100 { ptr @r100_set_surface_reg, ptr @r100_clear_surface_reg }, %struct.anon.101 { ptr @r100_hpd_init, ptr @r100_hpd_fini, ptr @r100_hpd_sense, ptr @r100_hpd_set_polarity }, %struct.anon.102 { ptr @r100_pm_misc, ptr @r100_pm_prepare, ptr @r100_pm_finish, ptr @r100_pm_init_profile, ptr @r100_pm_get_dynpm_state, ptr @radeon_legacy_get_engine_clock, ptr @radeon_legacy_set_engine_clock, ptr @radeon_legacy_get_memory_clock, ptr null, ptr null, ptr null, ptr @radeon_legacy_set_clock_gating, ptr null, ptr null, ptr null }, %struct.anon.103 zeroinitializer, %struct.anon.104 { ptr @r100_page_flip, ptr @r100_page_flip_pending } }, [80 x i8] zeroinitializer }, align 32
@r200_asic = internal global { %struct.radeon_asic, [80 x i8] } { %struct.radeon_asic { ptr @r100_init, ptr @r100_fini, ptr @r100_resume, ptr @r100_suspend, ptr @r100_vga_set_state, ptr @r100_asic_reset, ptr null, ptr @r100_gui_idle, ptr @r100_mc_wait_for_idle, ptr null, ptr null, ptr @radeon_invalid_get_allowed_info_register, %struct.anon.95 { ptr @r100_pci_gart_tlb_flush, ptr @r100_pci_gart_get_page_entry, ptr @r100_pci_gart_set_page }, %struct.anon.96 zeroinitializer, [8 x ptr] [ptr @r100_gfx_ring, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], %struct.anon.97 { ptr @r100_irq_set, ptr @r100_irq_process }, %struct.anon.98 { ptr @r100_bandwidth_update, ptr @r100_get_vblank_counter, ptr @r100_wait_for_vblank, ptr @radeon_legacy_set_backlight_level, ptr @radeon_legacy_get_backlight_level, ptr null, ptr null }, %struct.anon.99 { ptr @r100_copy_blit, i32 0, ptr @r200_copy_dma, i32 0, ptr @r100_copy_blit, i32 0 }, %struct.anon.100 { ptr @r100_set_surface_reg, ptr @r100_clear_surface_reg }, %struct.anon.101 { ptr @r100_hpd_init, ptr @r100_hpd_fini, ptr @r100_hpd_sense, ptr @r100_hpd_set_polarity }, %struct.anon.102 { ptr @r100_pm_misc, ptr @r100_pm_prepare, ptr @r100_pm_finish, ptr @r100_pm_init_profile, ptr @r100_pm_get_dynpm_state, ptr @radeon_legacy_get_engine_clock, ptr @radeon_legacy_set_engine_clock, ptr @radeon_legacy_get_memory_clock, ptr null, ptr null, ptr null, ptr @radeon_legacy_set_clock_gating, ptr null, ptr null, ptr null }, %struct.anon.103 zeroinitializer, %struct.anon.104 { ptr @r100_page_flip, ptr @r100_page_flip_pending } }, [80 x i8] zeroinitializer }, align 32
@r300_asic_pcie = internal global { %struct.radeon_asic, [80 x i8] } { %struct.radeon_asic { ptr @r300_init, ptr @r300_fini, ptr @r300_resume, ptr @r300_suspend, ptr @r100_vga_set_state, ptr @r300_asic_reset, ptr null, ptr @r100_gui_idle, ptr @r300_mc_wait_for_idle, ptr null, ptr null, ptr @radeon_invalid_get_allowed_info_register, %struct.anon.95 { ptr @rv370_pcie_gart_tlb_flush, ptr @rv370_pcie_gart_get_page_entry, ptr @rv370_pcie_gart_set_page }, %struct.anon.96 zeroinitializer, [8 x ptr] [ptr @r300_gfx_ring, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], %struct.anon.97 { ptr @r100_irq_set, ptr @r100_irq_process }, %struct.anon.98 { ptr @r100_bandwidth_update, ptr @r100_get_vblank_counter, ptr @r100_wait_for_vblank, ptr @radeon_legacy_set_backlight_level, ptr @radeon_legacy_get_backlight_level, ptr null, ptr null }, %struct.anon.99 { ptr @r100_copy_blit, i32 0, ptr @r200_copy_dma, i32 0, ptr @r100_copy_blit, i32 0 }, %struct.anon.100 { ptr @r100_set_surface_reg, ptr @r100_clear_surface_reg }, %struct.anon.101 { ptr @r100_hpd_init, ptr @r100_hpd_fini, ptr @r100_hpd_sense, ptr @r100_hpd_set_polarity }, %struct.anon.102 { ptr @r100_pm_misc, ptr @r100_pm_prepare, ptr @r100_pm_finish, ptr @r100_pm_init_profile, ptr @r100_pm_get_dynpm_state, ptr @radeon_legacy_get_engine_clock, ptr @radeon_legacy_set_engine_clock, ptr @radeon_legacy_get_memory_clock, ptr null, ptr @rv370_get_pcie_lanes, ptr @rv370_set_pcie_lanes, ptr @radeon_legacy_set_clock_gating, ptr null, ptr null, ptr null }, %struct.anon.103 zeroinitializer, %struct.anon.104 { ptr @r100_page_flip, ptr @r100_page_flip_pending } }, [80 x i8] zeroinitializer }, align 32
@r300_asic = internal global { %struct.radeon_asic, [80 x i8] } { %struct.radeon_asic { ptr @r300_init, ptr @r300_fini, ptr @r300_resume, ptr @r300_suspend, ptr @r100_vga_set_state, ptr @r300_asic_reset, ptr null, ptr @r100_gui_idle, ptr @r300_mc_wait_for_idle, ptr null, ptr null, ptr @radeon_invalid_get_allowed_info_register, %struct.anon.95 { ptr @r100_pci_gart_tlb_flush, ptr @r100_pci_gart_get_page_entry, ptr @r100_pci_gart_set_page }, %struct.anon.96 zeroinitializer, [8 x ptr] [ptr @r300_gfx_ring, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], %struct.anon.97 { ptr @r100_irq_set, ptr @r100_irq_process }, %struct.anon.98 { ptr @r100_bandwidth_update, ptr @r100_get_vblank_counter, ptr @r100_wait_for_vblank, ptr @radeon_legacy_set_backlight_level, ptr @radeon_legacy_get_backlight_level, ptr null, ptr null }, %struct.anon.99 { ptr @r100_copy_blit, i32 0, ptr @r200_copy_dma, i32 0, ptr @r100_copy_blit, i32 0 }, %struct.anon.100 { ptr @r100_set_surface_reg, ptr @r100_clear_surface_reg }, %struct.anon.101 { ptr @r100_hpd_init, ptr @r100_hpd_fini, ptr @r100_hpd_sense, ptr @r100_hpd_set_polarity }, %struct.anon.102 { ptr @r100_pm_misc, ptr @r100_pm_prepare, ptr @r100_pm_finish, ptr @r100_pm_init_profile, ptr @r100_pm_get_dynpm_state, ptr @radeon_legacy_get_engine_clock, ptr @radeon_legacy_set_engine_clock, ptr @radeon_legacy_get_memory_clock, ptr null, ptr @rv370_get_pcie_lanes, ptr @rv370_set_pcie_lanes, ptr @radeon_legacy_set_clock_gating, ptr null, ptr null, ptr null }, %struct.anon.103 zeroinitializer, %struct.anon.104 { ptr @r100_page_flip, ptr @r100_page_flip_pending } }, [80 x i8] zeroinitializer }, align 32
@r420_asic = internal global { %struct.radeon_asic, [80 x i8] } { %struct.radeon_asic { ptr @r420_init, ptr @r420_fini, ptr @r420_resume, ptr @r420_suspend, ptr @r100_vga_set_state, ptr @r300_asic_reset, ptr null, ptr @r100_gui_idle, ptr @r300_mc_wait_for_idle, ptr null, ptr null, ptr @radeon_invalid_get_allowed_info_register, %struct.anon.95 { ptr @rv370_pcie_gart_tlb_flush, ptr @rv370_pcie_gart_get_page_entry, ptr @rv370_pcie_gart_set_page }, %struct.anon.96 zeroinitializer, [8 x ptr] [ptr @r300_gfx_ring, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], %struct.anon.97 { ptr @r100_irq_set, ptr @r100_irq_process }, %struct.anon.98 { ptr @r100_bandwidth_update, ptr @r100_get_vblank_counter, ptr @r100_wait_for_vblank, ptr @atombios_set_backlight_level, ptr @atombios_get_backlight_level, ptr null, ptr null }, %struct.anon.99 { ptr @r100_copy_blit, i32 0, ptr @r200_copy_dma, i32 0, ptr @r100_copy_blit, i32 0 }, %struct.anon.100 { ptr @r100_set_surface_reg, ptr @r100_clear_surface_reg }, %struct.anon.101 { ptr @r100_hpd_init, ptr @r100_hpd_fini, ptr @r100_hpd_sense, ptr @r100_hpd_set_polarity }, %struct.anon.102 { ptr @r100_pm_misc, ptr @r100_pm_prepare, ptr @r100_pm_finish, ptr @r420_pm_init_profile, ptr @r100_pm_get_dynpm_state, ptr @radeon_atom_get_engine_clock, ptr @radeon_atom_set_engine_clock, ptr @radeon_atom_get_memory_clock, ptr @radeon_atom_set_memory_clock, ptr @rv370_get_pcie_lanes, ptr @rv370_set_pcie_lanes, ptr @radeon_atom_set_clock_gating, ptr null, ptr null, ptr null }, %struct.anon.103 zeroinitializer, %struct.anon.104 { ptr @r100_page_flip, ptr @r100_page_flip_pending } }, [80 x i8] zeroinitializer }, align 32
@rs400_asic = internal global { %struct.radeon_asic, [80 x i8] } { %struct.radeon_asic { ptr @rs400_init, ptr @rs400_fini, ptr @rs400_resume, ptr @rs400_suspend, ptr @r100_vga_set_state, ptr @r300_asic_reset, ptr null, ptr @r100_gui_idle, ptr @rs400_mc_wait_for_idle, ptr null, ptr null, ptr @radeon_invalid_get_allowed_info_register, %struct.anon.95 { ptr @rs400_gart_tlb_flush, ptr @rs400_gart_get_page_entry, ptr @rs400_gart_set_page }, %struct.anon.96 zeroinitializer, [8 x ptr] [ptr @r300_gfx_ring, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], %struct.anon.97 { ptr @r100_irq_set, ptr @r100_irq_process }, %struct.anon.98 { ptr @r100_bandwidth_update, ptr @r100_get_vblank_counter, ptr @r100_wait_for_vblank, ptr @radeon_legacy_set_backlight_level, ptr @radeon_legacy_get_backlight_level, ptr null, ptr null }, %struct.anon.99 { ptr @r100_copy_blit, i32 0, ptr @r200_copy_dma, i32 0, ptr @r100_copy_blit, i32 0 }, %struct.anon.100 { ptr @r100_set_surface_reg, ptr @r100_clear_surface_reg }, %struct.anon.101 { ptr @r100_hpd_init, ptr @r100_hpd_fini, ptr @r100_hpd_sense, ptr @r100_hpd_set_polarity }, %struct.anon.102 { ptr @r100_pm_misc, ptr @r100_pm_prepare, ptr @r100_pm_finish, ptr @r100_pm_init_profile, ptr @r100_pm_get_dynpm_state, ptr @radeon_legacy_get_engine_clock, ptr @radeon_legacy_set_engine_clock, ptr @radeon_legacy_get_memory_clock, ptr null, ptr null, ptr null, ptr @radeon_legacy_set_clock_gating, ptr null, ptr null, ptr null }, %struct.anon.103 zeroinitializer, %struct.anon.104 { ptr @r100_page_flip, ptr @r100_page_flip_pending } }, [80 x i8] zeroinitializer }, align 32
@rs600_asic = internal global { %struct.radeon_asic, [80 x i8] } { %struct.radeon_asic { ptr @rs600_init, ptr @rs600_fini, ptr @rs600_resume, ptr @rs600_suspend, ptr @r100_vga_set_state, ptr @rs600_asic_reset, ptr null, ptr @r100_gui_idle, ptr @rs600_mc_wait_for_idle, ptr null, ptr null, ptr @radeon_invalid_get_allowed_info_register, %struct.anon.95 { ptr @rs600_gart_tlb_flush, ptr @rs600_gart_get_page_entry, ptr @rs600_gart_set_page }, %struct.anon.96 zeroinitializer, [8 x ptr] [ptr @r300_gfx_ring, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], %struct.anon.97 { ptr @rs600_irq_set, ptr @rs600_irq_process }, %struct.anon.98 { ptr @rs600_bandwidth_update, ptr @rs600_get_vblank_counter, ptr @avivo_wait_for_vblank, ptr @atombios_set_backlight_level, ptr @atombios_get_backlight_level, ptr null, ptr null }, %struct.anon.99 { ptr @r100_copy_blit, i32 0, ptr @r200_copy_dma, i32 0, ptr @r100_copy_blit, i32 0 }, %struct.anon.100 { ptr @r100_set_surface_reg, ptr @r100_clear_surface_reg }, %struct.anon.101 { ptr @rs600_hpd_init, ptr @rs600_hpd_fini, ptr @rs600_hpd_sense, ptr @rs600_hpd_set_polarity }, %struct.anon.102 { ptr @rs600_pm_misc, ptr @rs600_pm_prepare, ptr @rs600_pm_finish, ptr @r420_pm_init_profile, ptr @r100_pm_get_dynpm_state, ptr @radeon_atom_get_engine_clock, ptr @radeon_atom_set_engine_clock, ptr @radeon_atom_get_memory_clock, ptr @radeon_atom_set_memory_clock, ptr null, ptr null, ptr @radeon_atom_set_clock_gating, ptr null, ptr null, ptr null }, %struct.anon.103 zeroinitializer, %struct.anon.104 { ptr @rs600_page_flip, ptr @rs600_page_flip_pending } }, [80 x i8] zeroinitializer }, align 32
@rs690_asic = internal global { %struct.radeon_asic, [80 x i8] } { %struct.radeon_asic { ptr @rs690_init, ptr @rs690_fini, ptr @rs690_resume, ptr @rs690_suspend, ptr @r100_vga_set_state, ptr @rs600_asic_reset, ptr null, ptr @r100_gui_idle, ptr @rs690_mc_wait_for_idle, ptr null, ptr null, ptr @radeon_invalid_get_allowed_info_register, %struct.anon.95 { ptr @rs400_gart_tlb_flush, ptr @rs400_gart_get_page_entry, ptr @rs400_gart_set_page }, %struct.anon.96 zeroinitializer, [8 x ptr] [ptr @r300_gfx_ring, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], %struct.anon.97 { ptr @rs600_irq_set, ptr @rs600_irq_process }, %struct.anon.98 { ptr @rs690_bandwidth_update, ptr @rs600_get_vblank_counter, ptr @avivo_wait_for_vblank, ptr @atombios_set_backlight_level, ptr @atombios_get_backlight_level, ptr null, ptr null }, %struct.anon.99 { ptr @r100_copy_blit, i32 0, ptr @r200_copy_dma, i32 0, ptr @r200_copy_dma, i32 0 }, %struct.anon.100 { ptr @r100_set_surface_reg, ptr @r100_clear_surface_reg }, %struct.anon.101 { ptr @rs600_hpd_init, ptr @rs600_hpd_fini, ptr @rs600_hpd_sense, ptr @rs600_hpd_set_polarity }, %struct.anon.102 { ptr @rs600_pm_misc, ptr @rs600_pm_prepare, ptr @rs600_pm_finish, ptr @r420_pm_init_profile, ptr @r100_pm_get_dynpm_state, ptr @radeon_atom_get_engine_clock, ptr @radeon_atom_set_engine_clock, ptr @radeon_atom_get_memory_clock, ptr @radeon_atom_set_memory_clock, ptr null, ptr null, ptr @radeon_atom_set_clock_gating, ptr null, ptr null, ptr null }, %struct.anon.103 zeroinitializer, %struct.anon.104 { ptr @rs600_page_flip, ptr @rs600_page_flip_pending } }, [80 x i8] zeroinitializer }, align 32
@rv515_asic = internal global { %struct.radeon_asic, [80 x i8] } { %struct.radeon_asic { ptr @rv515_init, ptr @rv515_fini, ptr @rv515_resume, ptr @rv515_suspend, ptr @r100_vga_set_state, ptr @rs600_asic_reset, ptr null, ptr @r100_gui_idle, ptr @rv515_mc_wait_for_idle, ptr null, ptr null, ptr @radeon_invalid_get_allowed_info_register, %struct.anon.95 { ptr @rv370_pcie_gart_tlb_flush, ptr @rv370_pcie_gart_get_page_entry, ptr @rv370_pcie_gart_set_page }, %struct.anon.96 zeroinitializer, [8 x ptr] [ptr @rv515_gfx_ring, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], %struct.anon.97 { ptr @rs600_irq_set, ptr @rs600_irq_process }, %struct.anon.98 { ptr @rv515_bandwidth_update, ptr @rs600_get_vblank_counter, ptr @avivo_wait_for_vblank, ptr @atombios_set_backlight_level, ptr @atombios_get_backlight_level, ptr null, ptr null }, %struct.anon.99 { ptr @r100_copy_blit, i32 0, ptr @r200_copy_dma, i32 0, ptr @r100_copy_blit, i32 0 }, %struct.anon.100 { ptr @r100_set_surface_reg, ptr @r100_clear_surface_reg }, %struct.anon.101 { ptr @rs600_hpd_init, ptr @rs600_hpd_fini, ptr @rs600_hpd_sense, ptr @rs600_hpd_set_polarity }, %struct.anon.102 { ptr @rs600_pm_misc, ptr @rs600_pm_prepare, ptr @rs600_pm_finish, ptr @r420_pm_init_profile, ptr @r100_pm_get_dynpm_state, ptr @radeon_atom_get_engine_clock, ptr @radeon_atom_set_engine_clock, ptr @radeon_atom_get_memory_clock, ptr @radeon_atom_set_memory_clock, ptr @rv370_get_pcie_lanes, ptr @rv370_set_pcie_lanes, ptr @radeon_atom_set_clock_gating, ptr null, ptr null, ptr null }, %struct.anon.103 zeroinitializer, %struct.anon.104 { ptr @rs600_page_flip, ptr @rs600_page_flip_pending } }, [80 x i8] zeroinitializer }, align 32
@r520_asic = internal global { %struct.radeon_asic, [80 x i8] } { %struct.radeon_asic { ptr @r520_init, ptr @rv515_fini, ptr @r520_resume, ptr @rv515_suspend, ptr @r100_vga_set_state, ptr @rs600_asic_reset, ptr null, ptr @r100_gui_idle, ptr @r520_mc_wait_for_idle, ptr null, ptr null, ptr @radeon_invalid_get_allowed_info_register, %struct.anon.95 { ptr @rv370_pcie_gart_tlb_flush, ptr @rv370_pcie_gart_get_page_entry, ptr @rv370_pcie_gart_set_page }, %struct.anon.96 zeroinitializer, [8 x ptr] [ptr @rv515_gfx_ring, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], %struct.anon.97 { ptr @rs600_irq_set, ptr @rs600_irq_process }, %struct.anon.98 { ptr @rv515_bandwidth_update, ptr @rs600_get_vblank_counter, ptr @avivo_wait_for_vblank, ptr @atombios_set_backlight_level, ptr @atombios_get_backlight_level, ptr null, ptr null }, %struct.anon.99 { ptr @r100_copy_blit, i32 0, ptr @r200_copy_dma, i32 0, ptr @r100_copy_blit, i32 0 }, %struct.anon.100 { ptr @r100_set_surface_reg, ptr @r100_clear_surface_reg }, %struct.anon.101 { ptr @rs600_hpd_init, ptr @rs600_hpd_fini, ptr @rs600_hpd_sense, ptr @rs600_hpd_set_polarity }, %struct.anon.102 { ptr @rs600_pm_misc, ptr @rs600_pm_prepare, ptr @rs600_pm_finish, ptr @r420_pm_init_profile, ptr @r100_pm_get_dynpm_state, ptr @radeon_atom_get_engine_clock, ptr @radeon_atom_set_engine_clock, ptr @radeon_atom_get_memory_clock, ptr @radeon_atom_set_memory_clock, ptr @rv370_get_pcie_lanes, ptr @rv370_set_pcie_lanes, ptr @radeon_atom_set_clock_gating, ptr null, ptr null, ptr null }, %struct.anon.103 zeroinitializer, %struct.anon.104 { ptr @rs600_page_flip, ptr @rs600_page_flip_pending } }, [80 x i8] zeroinitializer }, align 32
@r600_asic = internal global { %struct.radeon_asic, [80 x i8] } { %struct.radeon_asic { ptr @r600_init, ptr @r600_fini, ptr @r600_resume, ptr @r600_suspend, ptr @r600_vga_set_state, ptr @r600_asic_reset, ptr @r600_mmio_hdp_flush, ptr @r600_gui_idle, ptr @r600_mc_wait_for_idle, ptr @r600_get_xclk, ptr @r600_get_gpu_clock_counter, ptr @r600_get_allowed_info_register, %struct.anon.95 { ptr @r600_pcie_gart_tlb_flush, ptr @rs600_gart_get_page_entry, ptr @rs600_gart_set_page }, %struct.anon.96 zeroinitializer, [8 x ptr] [ptr @r600_gfx_ring, ptr null, ptr null, ptr @r600_dma_ring, ptr null, ptr null, ptr null, ptr null], %struct.anon.97 { ptr @r600_irq_set, ptr @r600_irq_process }, %struct.anon.98 { ptr @rv515_bandwidth_update, ptr @rs600_get_vblank_counter, ptr @avivo_wait_for_vblank, ptr @atombios_set_backlight_level, ptr @atombios_get_backlight_level, ptr null, ptr null }, %struct.anon.99 { ptr @r600_copy_cpdma, i32 0, ptr @r600_copy_dma, i32 3, ptr @r600_copy_cpdma, i32 0 }, %struct.anon.100 { ptr @r600_set_surface_reg, ptr @r600_clear_surface_reg }, %struct.anon.101 { ptr @r600_hpd_init, ptr @r600_hpd_fini, ptr @r600_hpd_sense, ptr @r600_hpd_set_polarity }, %struct.anon.102 { ptr @r600_pm_misc, ptr @rs600_pm_prepare, ptr @rs600_pm_finish, ptr @r600_pm_init_profile, ptr @r600_pm_get_dynpm_state, ptr @radeon_atom_get_engine_clock, ptr @radeon_atom_set_engine_clock, ptr @radeon_atom_get_memory_clock, ptr @radeon_atom_set_memory_clock, ptr @r600_get_pcie_lanes, ptr @r600_set_pcie_lanes, ptr null, ptr null, ptr null, ptr @rv6xx_get_temp }, %struct.anon.103 zeroinitializer, %struct.anon.104 { ptr @rs600_page_flip, ptr @rs600_page_flip_pending } }, [80 x i8] zeroinitializer }, align 32
@rv6xx_asic = internal global { %struct.radeon_asic, [80 x i8] } { %struct.radeon_asic { ptr @r600_init, ptr @r600_fini, ptr @r600_resume, ptr @r600_suspend, ptr @r600_vga_set_state, ptr @r600_asic_reset, ptr @r600_mmio_hdp_flush, ptr @r600_gui_idle, ptr @r600_mc_wait_for_idle, ptr @r600_get_xclk, ptr @r600_get_gpu_clock_counter, ptr @r600_get_allowed_info_register, %struct.anon.95 { ptr @r600_pcie_gart_tlb_flush, ptr @rs600_gart_get_page_entry, ptr @rs600_gart_set_page }, %struct.anon.96 zeroinitializer, [8 x ptr] [ptr @r600_gfx_ring, ptr null, ptr null, ptr @r600_dma_ring, ptr null, ptr @rv6xx_uvd_ring, ptr null, ptr null], %struct.anon.97 { ptr @r600_irq_set, ptr @r600_irq_process }, %struct.anon.98 { ptr @rv515_bandwidth_update, ptr @rs600_get_vblank_counter, ptr @avivo_wait_for_vblank, ptr @atombios_set_backlight_level, ptr @atombios_get_backlight_level, ptr null, ptr null }, %struct.anon.99 { ptr @r600_copy_cpdma, i32 0, ptr @r600_copy_dma, i32 3, ptr @r600_copy_cpdma, i32 0 }, %struct.anon.100 { ptr @r600_set_surface_reg, ptr @r600_clear_surface_reg }, %struct.anon.101 { ptr @r600_hpd_init, ptr @r600_hpd_fini, ptr @r600_hpd_sense, ptr @r600_hpd_set_polarity }, %struct.anon.102 { ptr @r600_pm_misc, ptr @rs600_pm_prepare, ptr @rs600_pm_finish, ptr @r600_pm_init_profile, ptr @r600_pm_get_dynpm_state, ptr @radeon_atom_get_engine_clock, ptr @radeon_atom_set_engine_clock, ptr @radeon_atom_get_memory_clock, ptr @radeon_atom_set_memory_clock, ptr @r600_get_pcie_lanes, ptr @r600_set_pcie_lanes, ptr null, ptr @r600_set_uvd_clocks, ptr null, ptr @rv6xx_get_temp }, %struct.anon.103 { ptr @rv6xx_dpm_init, ptr @rv6xx_setup_asic, ptr @rv6xx_dpm_enable, ptr @r600_dpm_late_enable, ptr @rv6xx_dpm_disable, ptr @r600_dpm_pre_set_power_state, ptr @rv6xx_dpm_set_power_state, ptr @r600_dpm_post_set_power_state, ptr @rv6xx_dpm_display_configuration_changed, ptr @rv6xx_dpm_fini, ptr @rv6xx_dpm_get_sclk, ptr @rv6xx_dpm_get_mclk, ptr @rv6xx_dpm_print_power_state, ptr @rv6xx_dpm_debugfs_print_current_performance_level, ptr @rv6xx_dpm_force_performance_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rv6xx_dpm_get_current_sclk, ptr @rv6xx_dpm_get_current_mclk, ptr null }, %struct.anon.104 { ptr @rs600_page_flip, ptr @rs600_page_flip_pending } }, [80 x i8] zeroinitializer }, align 32
@rs780_asic = internal global { %struct.radeon_asic, [80 x i8] } { %struct.radeon_asic { ptr @r600_init, ptr @r600_fini, ptr @r600_resume, ptr @r600_suspend, ptr @r600_vga_set_state, ptr @r600_asic_reset, ptr @r600_mmio_hdp_flush, ptr @r600_gui_idle, ptr @r600_mc_wait_for_idle, ptr @r600_get_xclk, ptr @r600_get_gpu_clock_counter, ptr @r600_get_allowed_info_register, %struct.anon.95 { ptr @r600_pcie_gart_tlb_flush, ptr @rs600_gart_get_page_entry, ptr @rs600_gart_set_page }, %struct.anon.96 zeroinitializer, [8 x ptr] [ptr @r600_gfx_ring, ptr null, ptr null, ptr @r600_dma_ring, ptr null, ptr @rv6xx_uvd_ring, ptr null, ptr null], %struct.anon.97 { ptr @r600_irq_set, ptr @r600_irq_process }, %struct.anon.98 { ptr @rs690_bandwidth_update, ptr @rs600_get_vblank_counter, ptr @avivo_wait_for_vblank, ptr @atombios_set_backlight_level, ptr @atombios_get_backlight_level, ptr null, ptr null }, %struct.anon.99 { ptr @r600_copy_cpdma, i32 0, ptr @r600_copy_dma, i32 3, ptr @r600_copy_cpdma, i32 0 }, %struct.anon.100 { ptr @r600_set_surface_reg, ptr @r600_clear_surface_reg }, %struct.anon.101 { ptr @r600_hpd_init, ptr @r600_hpd_fini, ptr @r600_hpd_sense, ptr @r600_hpd_set_polarity }, %struct.anon.102 { ptr @r600_pm_misc, ptr @rs600_pm_prepare, ptr @rs600_pm_finish, ptr @rs780_pm_init_profile, ptr @r600_pm_get_dynpm_state, ptr @radeon_atom_get_engine_clock, ptr @radeon_atom_set_engine_clock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @r600_set_uvd_clocks, ptr null, ptr @rv6xx_get_temp }, %struct.anon.103 { ptr @rs780_dpm_init, ptr @rs780_dpm_setup_asic, ptr @rs780_dpm_enable, ptr @r600_dpm_late_enable, ptr @rs780_dpm_disable, ptr @r600_dpm_pre_set_power_state, ptr @rs780_dpm_set_power_state, ptr @r600_dpm_post_set_power_state, ptr @rs780_dpm_display_configuration_changed, ptr @rs780_dpm_fini, ptr @rs780_dpm_get_sclk, ptr @rs780_dpm_get_mclk, ptr @rs780_dpm_print_power_state, ptr @rs780_dpm_debugfs_print_current_performance_level, ptr @rs780_dpm_force_performance_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rs780_dpm_get_current_sclk, ptr @rs780_dpm_get_current_mclk, ptr null }, %struct.anon.104 { ptr @rs600_page_flip, ptr @rs600_page_flip_pending } }, [80 x i8] zeroinitializer }, align 32
@rv770_asic = internal global { %struct.radeon_asic, [80 x i8] } { %struct.radeon_asic { ptr @rv770_init, ptr @rv770_fini, ptr @rv770_resume, ptr @rv770_suspend, ptr @r600_vga_set_state, ptr @r600_asic_reset, ptr @r600_mmio_hdp_flush, ptr @r600_gui_idle, ptr @r600_mc_wait_for_idle, ptr @rv770_get_xclk, ptr @r600_get_gpu_clock_counter, ptr @r600_get_allowed_info_register, %struct.anon.95 { ptr @r600_pcie_gart_tlb_flush, ptr @rs600_gart_get_page_entry, ptr @rs600_gart_set_page }, %struct.anon.96 zeroinitializer, [8 x ptr] [ptr @r600_gfx_ring, ptr null, ptr null, ptr @r600_dma_ring, ptr null, ptr @rv770_uvd_ring, ptr null, ptr null], %struct.anon.97 { ptr @r600_irq_set, ptr @r600_irq_process }, %struct.anon.98 { ptr @rv515_bandwidth_update, ptr @rs600_get_vblank_counter, ptr @avivo_wait_for_vblank, ptr @atombios_set_backlight_level, ptr @atombios_get_backlight_level, ptr null, ptr null }, %struct.anon.99 { ptr @r600_copy_cpdma, i32 0, ptr @rv770_copy_dma, i32 3, ptr @rv770_copy_dma, i32 3 }, %struct.anon.100 { ptr @r600_set_surface_reg, ptr @r600_clear_surface_reg }, %struct.anon.101 { ptr @r600_hpd_init, ptr @r600_hpd_fini, ptr @r600_hpd_sense, ptr @r600_hpd_set_polarity }, %struct.anon.102 { ptr @rv770_pm_misc, ptr @rs600_pm_prepare, ptr @rs600_pm_finish, ptr @r600_pm_init_profile, ptr @r600_pm_get_dynpm_state, ptr @radeon_atom_get_engine_clock, ptr @radeon_atom_set_engine_clock, ptr @radeon_atom_get_memory_clock, ptr @radeon_atom_set_memory_clock, ptr @r600_get_pcie_lanes, ptr @r600_set_pcie_lanes, ptr @radeon_atom_set_clock_gating, ptr @rv770_set_uvd_clocks, ptr null, ptr @rv770_get_temp }, %struct.anon.103 { ptr @rv770_dpm_init, ptr @rv770_dpm_setup_asic, ptr @rv770_dpm_enable, ptr @rv770_dpm_late_enable, ptr @rv770_dpm_disable, ptr @r600_dpm_pre_set_power_state, ptr @rv770_dpm_set_power_state, ptr @r600_dpm_post_set_power_state, ptr @rv770_dpm_display_configuration_changed, ptr @rv770_dpm_fini, ptr @rv770_dpm_get_sclk, ptr @rv770_dpm_get_mclk, ptr @rv770_dpm_print_power_state, ptr @rv770_dpm_debugfs_print_current_performance_level, ptr @rv770_dpm_force_performance_level, ptr @rv770_dpm_vblank_too_short, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rv770_dpm_get_current_sclk, ptr @rv770_dpm_get_current_mclk, ptr null }, %struct.anon.104 { ptr @rv770_page_flip, ptr @rv770_page_flip_pending } }, [80 x i8] zeroinitializer }, align 32
@evergreen_asic = internal global { %struct.radeon_asic, [80 x i8] } { %struct.radeon_asic { ptr @evergreen_init, ptr @evergreen_fini, ptr @evergreen_resume, ptr @evergreen_suspend, ptr @r600_vga_set_state, ptr @evergreen_asic_reset, ptr @r600_mmio_hdp_flush, ptr @r600_gui_idle, ptr @evergreen_mc_wait_for_idle, ptr @rv770_get_xclk, ptr @r600_get_gpu_clock_counter, ptr @evergreen_get_allowed_info_register, %struct.anon.95 { ptr @evergreen_pcie_gart_tlb_flush, ptr @rs600_gart_get_page_entry, ptr @rs600_gart_set_page }, %struct.anon.96 zeroinitializer, [8 x ptr] [ptr @evergreen_gfx_ring, ptr null, ptr null, ptr @evergreen_dma_ring, ptr null, ptr @rv770_uvd_ring, ptr null, ptr null], %struct.anon.97 { ptr @evergreen_irq_set, ptr @evergreen_irq_process }, %struct.anon.98 { ptr @evergreen_bandwidth_update, ptr @evergreen_get_vblank_counter, ptr @dce4_wait_for_vblank, ptr @atombios_set_backlight_level, ptr @atombios_get_backlight_level, ptr null, ptr null }, %struct.anon.99 { ptr @r600_copy_cpdma, i32 0, ptr @evergreen_copy_dma, i32 3, ptr @evergreen_copy_dma, i32 3 }, %struct.anon.100 { ptr @r600_set_surface_reg, ptr @r600_clear_surface_reg }, %struct.anon.101 { ptr @evergreen_hpd_init, ptr @evergreen_hpd_fini, ptr @evergreen_hpd_sense, ptr @evergreen_hpd_set_polarity }, %struct.anon.102 { ptr @evergreen_pm_misc, ptr @evergreen_pm_prepare, ptr @evergreen_pm_finish, ptr @r600_pm_init_profile, ptr @r600_pm_get_dynpm_state, ptr @radeon_atom_get_engine_clock, ptr @radeon_atom_set_engine_clock, ptr @radeon_atom_get_memory_clock, ptr @radeon_atom_set_memory_clock, ptr @r600_get_pcie_lanes, ptr @r600_set_pcie_lanes, ptr null, ptr @evergreen_set_uvd_clocks, ptr null, ptr @evergreen_get_temp }, %struct.anon.103 { ptr @cypress_dpm_init, ptr @cypress_dpm_setup_asic, ptr @cypress_dpm_enable, ptr @rv770_dpm_late_enable, ptr @cypress_dpm_disable, ptr @r600_dpm_pre_set_power_state, ptr @cypress_dpm_set_power_state, ptr @r600_dpm_post_set_power_state, ptr @cypress_dpm_display_configuration_changed, ptr @cypress_dpm_fini, ptr @rv770_dpm_get_sclk, ptr @rv770_dpm_get_mclk, ptr @rv770_dpm_print_power_state, ptr @rv770_dpm_debugfs_print_current_performance_level, ptr @rv770_dpm_force_performance_level, ptr @cypress_dpm_vblank_too_short, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rv770_dpm_get_current_sclk, ptr @rv770_dpm_get_current_mclk, ptr null }, %struct.anon.104 { ptr @evergreen_page_flip, ptr @evergreen_page_flip_pending } }, [80 x i8] zeroinitializer }, align 32
@sumo_asic = internal global { %struct.radeon_asic, [80 x i8] } { %struct.radeon_asic { ptr @evergreen_init, ptr @evergreen_fini, ptr @evergreen_resume, ptr @evergreen_suspend, ptr @r600_vga_set_state, ptr @evergreen_asic_reset, ptr @r600_mmio_hdp_flush, ptr @r600_gui_idle, ptr @evergreen_mc_wait_for_idle, ptr @r600_get_xclk, ptr @r600_get_gpu_clock_counter, ptr @evergreen_get_allowed_info_register, %struct.anon.95 { ptr @evergreen_pcie_gart_tlb_flush, ptr @rs600_gart_get_page_entry, ptr @rs600_gart_set_page }, %struct.anon.96 zeroinitializer, [8 x ptr] [ptr @evergreen_gfx_ring, ptr null, ptr null, ptr @evergreen_dma_ring, ptr null, ptr @rv770_uvd_ring, ptr null, ptr null], %struct.anon.97 { ptr @evergreen_irq_set, ptr @evergreen_irq_process }, %struct.anon.98 { ptr @evergreen_bandwidth_update, ptr @evergreen_get_vblank_counter, ptr @dce4_wait_for_vblank, ptr @atombios_set_backlight_level, ptr @atombios_get_backlight_level, ptr null, ptr null }, %struct.anon.99 { ptr @r600_copy_cpdma, i32 0, ptr @evergreen_copy_dma, i32 3, ptr @evergreen_copy_dma, i32 3 }, %struct.anon.100 { ptr @r600_set_surface_reg, ptr @r600_clear_surface_reg }, %struct.anon.101 { ptr @evergreen_hpd_init, ptr @evergreen_hpd_fini, ptr @evergreen_hpd_sense, ptr @evergreen_hpd_set_polarity }, %struct.anon.102 { ptr @evergreen_pm_misc, ptr @evergreen_pm_prepare, ptr @evergreen_pm_finish, ptr @sumo_pm_init_profile, ptr @r600_pm_get_dynpm_state, ptr @radeon_atom_get_engine_clock, ptr @radeon_atom_set_engine_clock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sumo_set_uvd_clocks, ptr null, ptr @sumo_get_temp }, %struct.anon.103 { ptr @sumo_dpm_init, ptr @sumo_dpm_setup_asic, ptr @sumo_dpm_enable, ptr @sumo_dpm_late_enable, ptr @sumo_dpm_disable, ptr @sumo_dpm_pre_set_power_state, ptr @sumo_dpm_set_power_state, ptr @sumo_dpm_post_set_power_state, ptr @sumo_dpm_display_configuration_changed, ptr @sumo_dpm_fini, ptr @sumo_dpm_get_sclk, ptr @sumo_dpm_get_mclk, ptr @sumo_dpm_print_power_state, ptr @sumo_dpm_debugfs_print_current_performance_level, ptr @sumo_dpm_force_performance_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sumo_dpm_get_current_sclk, ptr @sumo_dpm_get_current_mclk, ptr @sumo_dpm_get_current_vddc }, %struct.anon.104 { ptr @evergreen_page_flip, ptr @evergreen_page_flip_pending } }, [80 x i8] zeroinitializer }, align 32
@btc_asic = internal global { %struct.radeon_asic, [80 x i8] } { %struct.radeon_asic { ptr @evergreen_init, ptr @evergreen_fini, ptr @evergreen_resume, ptr @evergreen_suspend, ptr @r600_vga_set_state, ptr @evergreen_asic_reset, ptr @r600_mmio_hdp_flush, ptr @r600_gui_idle, ptr @evergreen_mc_wait_for_idle, ptr @rv770_get_xclk, ptr @r600_get_gpu_clock_counter, ptr @evergreen_get_allowed_info_register, %struct.anon.95 { ptr @evergreen_pcie_gart_tlb_flush, ptr @rs600_gart_get_page_entry, ptr @rs600_gart_set_page }, %struct.anon.96 zeroinitializer, [8 x ptr] [ptr @evergreen_gfx_ring, ptr null, ptr null, ptr @evergreen_dma_ring, ptr null, ptr @rv770_uvd_ring, ptr null, ptr null], %struct.anon.97 { ptr @evergreen_irq_set, ptr @evergreen_irq_process }, %struct.anon.98 { ptr @evergreen_bandwidth_update, ptr @evergreen_get_vblank_counter, ptr @dce4_wait_for_vblank, ptr @atombios_set_backlight_level, ptr @atombios_get_backlight_level, ptr null, ptr null }, %struct.anon.99 { ptr @r600_copy_cpdma, i32 0, ptr @evergreen_copy_dma, i32 3, ptr @evergreen_copy_dma, i32 3 }, %struct.anon.100 { ptr @r600_set_surface_reg, ptr @r600_clear_surface_reg }, %struct.anon.101 { ptr @evergreen_hpd_init, ptr @evergreen_hpd_fini, ptr @evergreen_hpd_sense, ptr @evergreen_hpd_set_polarity }, %struct.anon.102 { ptr @evergreen_pm_misc, ptr @evergreen_pm_prepare, ptr @evergreen_pm_finish, ptr @btc_pm_init_profile, ptr @r600_pm_get_dynpm_state, ptr @radeon_atom_get_engine_clock, ptr @radeon_atom_set_engine_clock, ptr @radeon_atom_get_memory_clock, ptr @radeon_atom_set_memory_clock, ptr @r600_get_pcie_lanes, ptr @r600_set_pcie_lanes, ptr null, ptr @evergreen_set_uvd_clocks, ptr null, ptr @evergreen_get_temp }, %struct.anon.103 { ptr @btc_dpm_init, ptr @btc_dpm_setup_asic, ptr @btc_dpm_enable, ptr @rv770_dpm_late_enable, ptr @btc_dpm_disable, ptr @btc_dpm_pre_set_power_state, ptr @btc_dpm_set_power_state, ptr @btc_dpm_post_set_power_state, ptr @cypress_dpm_display_configuration_changed, ptr @btc_dpm_fini, ptr @btc_dpm_get_sclk, ptr @btc_dpm_get_mclk, ptr @rv770_dpm_print_power_state, ptr @btc_dpm_debugfs_print_current_performance_level, ptr @rv770_dpm_force_performance_level, ptr @btc_dpm_vblank_too_short, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @btc_dpm_get_current_sclk, ptr @btc_dpm_get_current_mclk, ptr null }, %struct.anon.104 { ptr @evergreen_page_flip, ptr @evergreen_page_flip_pending } }, [80 x i8] zeroinitializer }, align 32
@cayman_asic = internal global { %struct.radeon_asic, [80 x i8] } { %struct.radeon_asic { ptr @cayman_init, ptr @cayman_fini, ptr @cayman_resume, ptr @cayman_suspend, ptr @r600_vga_set_state, ptr @cayman_asic_reset, ptr @r600_mmio_hdp_flush, ptr @r600_gui_idle, ptr @evergreen_mc_wait_for_idle, ptr @rv770_get_xclk, ptr @r600_get_gpu_clock_counter, ptr @cayman_get_allowed_info_register, %struct.anon.95 { ptr @cayman_pcie_gart_tlb_flush, ptr @rs600_gart_get_page_entry, ptr @rs600_gart_set_page }, %struct.anon.96 { ptr @cayman_vm_init, ptr @cayman_vm_fini, ptr @cayman_dma_vm_copy_pages, ptr @cayman_dma_vm_write_pages, ptr @cayman_dma_vm_set_pages, ptr @cayman_dma_vm_pad_ib }, [8 x ptr] [ptr @cayman_gfx_ring, ptr @cayman_gfx_ring, ptr @cayman_gfx_ring, ptr @cayman_dma_ring, ptr @cayman_dma_ring, ptr @cayman_uvd_ring, ptr null, ptr null], %struct.anon.97 { ptr @evergreen_irq_set, ptr @evergreen_irq_process }, %struct.anon.98 { ptr @evergreen_bandwidth_update, ptr @evergreen_get_vblank_counter, ptr @dce4_wait_for_vblank, ptr @atombios_set_backlight_level, ptr @atombios_get_backlight_level, ptr null, ptr null }, %struct.anon.99 { ptr @r600_copy_cpdma, i32 0, ptr @evergreen_copy_dma, i32 3, ptr @evergreen_copy_dma, i32 3 }, %struct.anon.100 { ptr @r600_set_surface_reg, ptr @r600_clear_surface_reg }, %struct.anon.101 { ptr @evergreen_hpd_init, ptr @evergreen_hpd_fini, ptr @evergreen_hpd_sense, ptr @evergreen_hpd_set_polarity }, %struct.anon.102 { ptr @evergreen_pm_misc, ptr @evergreen_pm_prepare, ptr @evergreen_pm_finish, ptr @btc_pm_init_profile, ptr @r600_pm_get_dynpm_state, ptr @radeon_atom_get_engine_clock, ptr @radeon_atom_set_engine_clock, ptr @radeon_atom_get_memory_clock, ptr @radeon_atom_set_memory_clock, ptr @r600_get_pcie_lanes, ptr @r600_set_pcie_lanes, ptr null, ptr @evergreen_set_uvd_clocks, ptr null, ptr @evergreen_get_temp }, %struct.anon.103 { ptr @ni_dpm_init, ptr @ni_dpm_setup_asic, ptr @ni_dpm_enable, ptr @rv770_dpm_late_enable, ptr @ni_dpm_disable, ptr @ni_dpm_pre_set_power_state, ptr @ni_dpm_set_power_state, ptr @ni_dpm_post_set_power_state, ptr @cypress_dpm_display_configuration_changed, ptr @ni_dpm_fini, ptr @ni_dpm_get_sclk, ptr @ni_dpm_get_mclk, ptr @ni_dpm_print_power_state, ptr @ni_dpm_debugfs_print_current_performance_level, ptr @ni_dpm_force_performance_level, ptr @ni_dpm_vblank_too_short, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ni_dpm_get_current_sclk, ptr @ni_dpm_get_current_mclk, ptr null }, %struct.anon.104 { ptr @evergreen_page_flip, ptr @evergreen_page_flip_pending } }, [80 x i8] zeroinitializer }, align 32
@trinity_asic = internal global { %struct.radeon_asic, [80 x i8] } { %struct.radeon_asic { ptr @cayman_init, ptr @cayman_fini, ptr @cayman_resume, ptr @cayman_suspend, ptr @r600_vga_set_state, ptr @cayman_asic_reset, ptr @r600_mmio_hdp_flush, ptr @r600_gui_idle, ptr @evergreen_mc_wait_for_idle, ptr @r600_get_xclk, ptr @r600_get_gpu_clock_counter, ptr @cayman_get_allowed_info_register, %struct.anon.95 { ptr @cayman_pcie_gart_tlb_flush, ptr @rs600_gart_get_page_entry, ptr @rs600_gart_set_page }, %struct.anon.96 { ptr @cayman_vm_init, ptr @cayman_vm_fini, ptr @cayman_dma_vm_copy_pages, ptr @cayman_dma_vm_write_pages, ptr @cayman_dma_vm_set_pages, ptr @cayman_dma_vm_pad_ib }, [8 x ptr] [ptr @cayman_gfx_ring, ptr @cayman_gfx_ring, ptr @cayman_gfx_ring, ptr @cayman_dma_ring, ptr @cayman_dma_ring, ptr @cayman_uvd_ring, ptr @trinity_vce_ring, ptr @trinity_vce_ring], %struct.anon.97 { ptr @evergreen_irq_set, ptr @evergreen_irq_process }, %struct.anon.98 { ptr @dce6_bandwidth_update, ptr @evergreen_get_vblank_counter, ptr @dce4_wait_for_vblank, ptr @atombios_set_backlight_level, ptr @atombios_get_backlight_level, ptr null, ptr null }, %struct.anon.99 { ptr @r600_copy_cpdma, i32 0, ptr @evergreen_copy_dma, i32 3, ptr @evergreen_copy_dma, i32 3 }, %struct.anon.100 { ptr @r600_set_surface_reg, ptr @r600_clear_surface_reg }, %struct.anon.101 { ptr @evergreen_hpd_init, ptr @evergreen_hpd_fini, ptr @evergreen_hpd_sense, ptr @evergreen_hpd_set_polarity }, %struct.anon.102 { ptr @evergreen_pm_misc, ptr @evergreen_pm_prepare, ptr @evergreen_pm_finish, ptr @sumo_pm_init_profile, ptr @r600_pm_get_dynpm_state, ptr @radeon_atom_get_engine_clock, ptr @radeon_atom_set_engine_clock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sumo_set_uvd_clocks, ptr @tn_set_vce_clocks, ptr @tn_get_temp }, %struct.anon.103 { ptr @trinity_dpm_init, ptr @trinity_dpm_setup_asic, ptr @trinity_dpm_enable, ptr @trinity_dpm_late_enable, ptr @trinity_dpm_disable, ptr @trinity_dpm_pre_set_power_state, ptr @trinity_dpm_set_power_state, ptr @trinity_dpm_post_set_power_state, ptr @trinity_dpm_display_configuration_changed, ptr @trinity_dpm_fini, ptr @trinity_dpm_get_sclk, ptr @trinity_dpm_get_mclk, ptr @trinity_dpm_print_power_state, ptr @trinity_dpm_debugfs_print_current_performance_level, ptr @trinity_dpm_force_performance_level, ptr null, ptr null, ptr @trinity_dpm_enable_bapm, ptr null, ptr null, ptr null, ptr null, ptr @trinity_dpm_get_current_sclk, ptr @trinity_dpm_get_current_mclk, ptr null }, %struct.anon.104 { ptr @evergreen_page_flip, ptr @evergreen_page_flip_pending } }, [80 x i8] zeroinitializer }, align 32
@si_asic = internal global { %struct.radeon_asic, [80 x i8] } { %struct.radeon_asic { ptr @si_init, ptr @si_fini, ptr @si_resume, ptr @si_suspend, ptr @r600_vga_set_state, ptr @si_asic_reset, ptr @r600_mmio_hdp_flush, ptr @r600_gui_idle, ptr @evergreen_mc_wait_for_idle, ptr @si_get_xclk, ptr @si_get_gpu_clock_counter, ptr @si_get_allowed_info_register, %struct.anon.95 { ptr @si_pcie_gart_tlb_flush, ptr @rs600_gart_get_page_entry, ptr @rs600_gart_set_page }, %struct.anon.96 { ptr @si_vm_init, ptr @si_vm_fini, ptr @si_dma_vm_copy_pages, ptr @si_dma_vm_write_pages, ptr @si_dma_vm_set_pages, ptr @cayman_dma_vm_pad_ib }, [8 x ptr] [ptr @si_gfx_ring, ptr @si_gfx_ring, ptr @si_gfx_ring, ptr @si_dma_ring, ptr @si_dma_ring, ptr @cayman_uvd_ring, ptr @trinity_vce_ring, ptr @trinity_vce_ring], %struct.anon.97 { ptr @si_irq_set, ptr @si_irq_process }, %struct.anon.98 { ptr @dce6_bandwidth_update, ptr @evergreen_get_vblank_counter, ptr @dce4_wait_for_vblank, ptr @atombios_set_backlight_level, ptr @atombios_get_backlight_level, ptr null, ptr null }, %struct.anon.99 { ptr @r600_copy_cpdma, i32 0, ptr @si_copy_dma, i32 3, ptr @si_copy_dma, i32 3 }, %struct.anon.100 { ptr @r600_set_surface_reg, ptr @r600_clear_surface_reg }, %struct.anon.101 { ptr @evergreen_hpd_init, ptr @evergreen_hpd_fini, ptr @evergreen_hpd_sense, ptr @evergreen_hpd_set_polarity }, %struct.anon.102 { ptr @evergreen_pm_misc, ptr @evergreen_pm_prepare, ptr @evergreen_pm_finish, ptr @sumo_pm_init_profile, ptr @r600_pm_get_dynpm_state, ptr @radeon_atom_get_engine_clock, ptr @radeon_atom_set_engine_clock, ptr @radeon_atom_get_memory_clock, ptr @radeon_atom_set_memory_clock, ptr @r600_get_pcie_lanes, ptr @r600_set_pcie_lanes, ptr null, ptr @si_set_uvd_clocks, ptr @si_set_vce_clocks, ptr @si_get_temp }, %struct.anon.103 { ptr @si_dpm_init, ptr @si_dpm_setup_asic, ptr @si_dpm_enable, ptr @si_dpm_late_enable, ptr @si_dpm_disable, ptr @si_dpm_pre_set_power_state, ptr @si_dpm_set_power_state, ptr @si_dpm_post_set_power_state, ptr @si_dpm_display_configuration_changed, ptr @si_dpm_fini, ptr @ni_dpm_get_sclk, ptr @ni_dpm_get_mclk, ptr @ni_dpm_print_power_state, ptr @si_dpm_debugfs_print_current_performance_level, ptr @si_dpm_force_performance_level, ptr @ni_dpm_vblank_too_short, ptr null, ptr null, ptr @si_fan_ctrl_set_mode, ptr @si_fan_ctrl_get_mode, ptr @si_fan_ctrl_set_fan_speed_percent, ptr @si_fan_ctrl_get_fan_speed_percent, ptr @si_dpm_get_current_sclk, ptr @si_dpm_get_current_mclk, ptr null }, %struct.anon.104 { ptr @evergreen_page_flip, ptr @evergreen_page_flip_pending } }, [80 x i8] zeroinitializer }, align 32
@ci_asic = internal global { %struct.radeon_asic, [80 x i8] } { %struct.radeon_asic { ptr @cik_init, ptr @cik_fini, ptr @cik_resume, ptr @cik_suspend, ptr @r600_vga_set_state, ptr @cik_asic_reset, ptr @r600_mmio_hdp_flush, ptr @r600_gui_idle, ptr @evergreen_mc_wait_for_idle, ptr @cik_get_xclk, ptr @cik_get_gpu_clock_counter, ptr @cik_get_allowed_info_register, %struct.anon.95 { ptr @cik_pcie_gart_tlb_flush, ptr @rs600_gart_get_page_entry, ptr @rs600_gart_set_page }, %struct.anon.96 { ptr @cik_vm_init, ptr @cik_vm_fini, ptr @cik_sdma_vm_copy_pages, ptr @cik_sdma_vm_write_pages, ptr @cik_sdma_vm_set_pages, ptr @cik_sdma_vm_pad_ib }, [8 x ptr] [ptr @ci_gfx_ring, ptr @ci_cp_ring, ptr @ci_cp_ring, ptr @ci_dma_ring, ptr @ci_dma_ring, ptr @cayman_uvd_ring, ptr @ci_vce_ring, ptr @ci_vce_ring], %struct.anon.97 { ptr @cik_irq_set, ptr @cik_irq_process }, %struct.anon.98 { ptr @dce8_bandwidth_update, ptr @evergreen_get_vblank_counter, ptr @dce4_wait_for_vblank, ptr @atombios_set_backlight_level, ptr @atombios_get_backlight_level, ptr null, ptr null }, %struct.anon.99 { ptr @cik_copy_cpdma, i32 0, ptr @cik_copy_dma, i32 3, ptr @cik_copy_dma, i32 3 }, %struct.anon.100 { ptr @r600_set_surface_reg, ptr @r600_clear_surface_reg }, %struct.anon.101 { ptr @evergreen_hpd_init, ptr @evergreen_hpd_fini, ptr @evergreen_hpd_sense, ptr @evergreen_hpd_set_polarity }, %struct.anon.102 { ptr @evergreen_pm_misc, ptr @evergreen_pm_prepare, ptr @evergreen_pm_finish, ptr @sumo_pm_init_profile, ptr @r600_pm_get_dynpm_state, ptr @radeon_atom_get_engine_clock, ptr @radeon_atom_set_engine_clock, ptr @radeon_atom_get_memory_clock, ptr @radeon_atom_set_memory_clock, ptr null, ptr null, ptr null, ptr @cik_set_uvd_clocks, ptr @cik_set_vce_clocks, ptr @ci_get_temp }, %struct.anon.103 { ptr @ci_dpm_init, ptr @ci_dpm_setup_asic, ptr @ci_dpm_enable, ptr @ci_dpm_late_enable, ptr @ci_dpm_disable, ptr @ci_dpm_pre_set_power_state, ptr @ci_dpm_set_power_state, ptr @ci_dpm_post_set_power_state, ptr @ci_dpm_display_configuration_changed, ptr @ci_dpm_fini, ptr @ci_dpm_get_sclk, ptr @ci_dpm_get_mclk, ptr @ci_dpm_print_power_state, ptr @ci_dpm_debugfs_print_current_performance_level, ptr @ci_dpm_force_performance_level, ptr @ci_dpm_vblank_too_short, ptr @ci_dpm_powergate_uvd, ptr null, ptr @ci_fan_ctrl_set_mode, ptr @ci_fan_ctrl_get_mode, ptr @ci_fan_ctrl_set_fan_speed_percent, ptr @ci_fan_ctrl_get_fan_speed_percent, ptr @ci_dpm_get_current_sclk, ptr @ci_dpm_get_current_mclk, ptr null }, %struct.anon.104 { ptr @evergreen_page_flip, ptr @evergreen_page_flip_pending } }, [80 x i8] zeroinitializer }, align 32
@kv_asic = internal global { %struct.radeon_asic, [80 x i8] } { %struct.radeon_asic { ptr @cik_init, ptr @cik_fini, ptr @cik_resume, ptr @cik_suspend, ptr @r600_vga_set_state, ptr @cik_asic_reset, ptr @r600_mmio_hdp_flush, ptr @r600_gui_idle, ptr @evergreen_mc_wait_for_idle, ptr @cik_get_xclk, ptr @cik_get_gpu_clock_counter, ptr @cik_get_allowed_info_register, %struct.anon.95 { ptr @cik_pcie_gart_tlb_flush, ptr @rs600_gart_get_page_entry, ptr @rs600_gart_set_page }, %struct.anon.96 { ptr @cik_vm_init, ptr @cik_vm_fini, ptr @cik_sdma_vm_copy_pages, ptr @cik_sdma_vm_write_pages, ptr @cik_sdma_vm_set_pages, ptr @cik_sdma_vm_pad_ib }, [8 x ptr] [ptr @ci_gfx_ring, ptr @ci_cp_ring, ptr @ci_cp_ring, ptr @ci_dma_ring, ptr @ci_dma_ring, ptr @cayman_uvd_ring, ptr @ci_vce_ring, ptr @ci_vce_ring], %struct.anon.97 { ptr @cik_irq_set, ptr @cik_irq_process }, %struct.anon.98 { ptr @dce8_bandwidth_update, ptr @evergreen_get_vblank_counter, ptr @dce4_wait_for_vblank, ptr @atombios_set_backlight_level, ptr @atombios_get_backlight_level, ptr null, ptr null }, %struct.anon.99 { ptr @cik_copy_cpdma, i32 0, ptr @cik_copy_dma, i32 3, ptr @cik_copy_dma, i32 3 }, %struct.anon.100 { ptr @r600_set_surface_reg, ptr @r600_clear_surface_reg }, %struct.anon.101 { ptr @evergreen_hpd_init, ptr @evergreen_hpd_fini, ptr @evergreen_hpd_sense, ptr @evergreen_hpd_set_polarity }, %struct.anon.102 { ptr @evergreen_pm_misc, ptr @evergreen_pm_prepare, ptr @evergreen_pm_finish, ptr @sumo_pm_init_profile, ptr @r600_pm_get_dynpm_state, ptr @radeon_atom_get_engine_clock, ptr @radeon_atom_set_engine_clock, ptr @radeon_atom_get_memory_clock, ptr @radeon_atom_set_memory_clock, ptr null, ptr null, ptr null, ptr @cik_set_uvd_clocks, ptr @cik_set_vce_clocks, ptr @kv_get_temp }, %struct.anon.103 { ptr @kv_dpm_init, ptr @kv_dpm_setup_asic, ptr @kv_dpm_enable, ptr @kv_dpm_late_enable, ptr @kv_dpm_disable, ptr @kv_dpm_pre_set_power_state, ptr @kv_dpm_set_power_state, ptr @kv_dpm_post_set_power_state, ptr @kv_dpm_display_configuration_changed, ptr @kv_dpm_fini, ptr @kv_dpm_get_sclk, ptr @kv_dpm_get_mclk, ptr @kv_dpm_print_power_state, ptr @kv_dpm_debugfs_print_current_performance_level, ptr @kv_dpm_force_performance_level, ptr null, ptr @kv_dpm_powergate_uvd, ptr @kv_dpm_enable_bapm, ptr null, ptr null, ptr null, ptr null, ptr @kv_dpm_get_current_sclk, ptr @kv_dpm_get_current_mclk, ptr null }, %struct.anon.104 { ptr @evergreen_page_flip, ptr @evergreen_page_flip_pending } }, [80 x i8] zeroinitializer }, align 32
@radeon_uvd = external dso_local local_unnamed_addr global i32, align 4
@radeon_vce = external dso_local local_unnamed_addr global i32, align 4
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Invalid callback to read register 0x%04X\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Invalid callback to write register 0x%04X with 0x%08X\0A\00", [41 x i8] zeroinitializer }, align 32
@r100_gfx_ring = internal constant { %struct.radeon_asic_ring, [40 x i8] } { %struct.radeon_asic_ring { ptr @r100_gfx_get_rptr, ptr @r100_gfx_get_wptr, ptr @r100_gfx_set_wptr, ptr null, ptr @r100_cs_parse, ptr @r100_ring_ib_execute, ptr @r100_fence_ring_emit, ptr null, ptr @r100_semaphore_ring_emit, ptr null, ptr @r100_ring_test, ptr @r100_ib_test, ptr @r100_gpu_is_lockup, ptr @r100_ring_start }, [40 x i8] zeroinitializer }, align 32
@r300_gfx_ring = internal constant { %struct.radeon_asic_ring, [40 x i8] } { %struct.radeon_asic_ring { ptr @r100_gfx_get_rptr, ptr @r100_gfx_get_wptr, ptr @r100_gfx_set_wptr, ptr null, ptr @r300_cs_parse, ptr @r100_ring_ib_execute, ptr @r300_fence_ring_emit, ptr null, ptr @r100_semaphore_ring_emit, ptr null, ptr @r100_ring_test, ptr @r100_ib_test, ptr @r100_gpu_is_lockup, ptr @r300_ring_start }, [40 x i8] zeroinitializer }, align 32
@rv515_gfx_ring = internal constant { %struct.radeon_asic_ring, [40 x i8] } { %struct.radeon_asic_ring { ptr @r100_gfx_get_rptr, ptr @r100_gfx_get_wptr, ptr @r100_gfx_set_wptr, ptr null, ptr @r300_cs_parse, ptr @r100_ring_ib_execute, ptr @r300_fence_ring_emit, ptr null, ptr @r100_semaphore_ring_emit, ptr null, ptr @r100_ring_test, ptr @r100_ib_test, ptr @r100_gpu_is_lockup, ptr @rv515_ring_start }, [40 x i8] zeroinitializer }, align 32
@r600_gfx_ring = internal constant { %struct.radeon_asic_ring, [40 x i8] } { %struct.radeon_asic_ring { ptr @r600_gfx_get_rptr, ptr @r600_gfx_get_wptr, ptr @r600_gfx_set_wptr, ptr null, ptr @r600_cs_parse, ptr @r600_ring_ib_execute, ptr @r600_fence_ring_emit, ptr null, ptr @r600_semaphore_ring_emit, ptr null, ptr @r600_ring_test, ptr @r600_ib_test, ptr @r600_gfx_is_lockup, ptr null }, [40 x i8] zeroinitializer }, align 32
@r600_dma_ring = internal constant { %struct.radeon_asic_ring, [40 x i8] } { %struct.radeon_asic_ring { ptr @r600_dma_get_rptr, ptr @r600_dma_get_wptr, ptr @r600_dma_set_wptr, ptr null, ptr @r600_dma_cs_parse, ptr @r600_dma_ring_ib_execute, ptr @r600_dma_fence_ring_emit, ptr null, ptr @r600_dma_semaphore_ring_emit, ptr null, ptr @r600_dma_ring_test, ptr @r600_dma_ib_test, ptr @r600_dma_is_lockup, ptr null }, [40 x i8] zeroinitializer }, align 32
@rv6xx_uvd_ring = internal constant { %struct.radeon_asic_ring, [40 x i8] } { %struct.radeon_asic_ring { ptr @uvd_v1_0_get_rptr, ptr @uvd_v1_0_get_wptr, ptr @uvd_v1_0_set_wptr, ptr null, ptr @radeon_uvd_cs_parse, ptr @uvd_v1_0_ib_execute, ptr @uvd_v1_0_fence_emit, ptr null, ptr @uvd_v1_0_semaphore_emit, ptr null, ptr @uvd_v1_0_ring_test, ptr @uvd_v1_0_ib_test, ptr @radeon_ring_test_lockup, ptr null }, [40 x i8] zeroinitializer }, align 32
@rv770_uvd_ring = internal constant { %struct.radeon_asic_ring, [40 x i8] } { %struct.radeon_asic_ring { ptr @uvd_v1_0_get_rptr, ptr @uvd_v1_0_get_wptr, ptr @uvd_v1_0_set_wptr, ptr null, ptr @radeon_uvd_cs_parse, ptr @uvd_v1_0_ib_execute, ptr @uvd_v2_2_fence_emit, ptr null, ptr @uvd_v2_2_semaphore_emit, ptr null, ptr @uvd_v1_0_ring_test, ptr @uvd_v1_0_ib_test, ptr @radeon_ring_test_lockup, ptr null }, [40 x i8] zeroinitializer }, align 32
@evergreen_gfx_ring = internal constant { %struct.radeon_asic_ring, [40 x i8] } { %struct.radeon_asic_ring { ptr @r600_gfx_get_rptr, ptr @r600_gfx_get_wptr, ptr @r600_gfx_set_wptr, ptr null, ptr @evergreen_cs_parse, ptr @evergreen_ring_ib_execute, ptr @r600_fence_ring_emit, ptr null, ptr @r600_semaphore_ring_emit, ptr null, ptr @r600_ring_test, ptr @r600_ib_test, ptr @evergreen_gfx_is_lockup, ptr null }, [40 x i8] zeroinitializer }, align 32
@evergreen_dma_ring = internal constant { %struct.radeon_asic_ring, [40 x i8] } { %struct.radeon_asic_ring { ptr @r600_dma_get_rptr, ptr @r600_dma_get_wptr, ptr @r600_dma_set_wptr, ptr null, ptr @evergreen_dma_cs_parse, ptr @evergreen_dma_ring_ib_execute, ptr @evergreen_dma_fence_ring_emit, ptr null, ptr @r600_dma_semaphore_ring_emit, ptr null, ptr @r600_dma_ring_test, ptr @r600_dma_ib_test, ptr @evergreen_dma_is_lockup, ptr null }, [40 x i8] zeroinitializer }, align 32
@cayman_gfx_ring = internal constant { %struct.radeon_asic_ring, [40 x i8] } { %struct.radeon_asic_ring { ptr @cayman_gfx_get_rptr, ptr @cayman_gfx_get_wptr, ptr @cayman_gfx_set_wptr, ptr @evergreen_ib_parse, ptr @evergreen_cs_parse, ptr @cayman_ring_ib_execute, ptr @cayman_fence_ring_emit, ptr null, ptr @r600_semaphore_ring_emit, ptr @cayman_vm_flush, ptr @r600_ring_test, ptr @r600_ib_test, ptr @cayman_gfx_is_lockup, ptr null }, [40 x i8] zeroinitializer }, align 32
@cayman_dma_ring = internal constant { %struct.radeon_asic_ring, [40 x i8] } { %struct.radeon_asic_ring { ptr @cayman_dma_get_rptr, ptr @cayman_dma_get_wptr, ptr @cayman_dma_set_wptr, ptr @evergreen_dma_ib_parse, ptr @evergreen_dma_cs_parse, ptr @cayman_dma_ring_ib_execute, ptr @evergreen_dma_fence_ring_emit, ptr null, ptr @r600_dma_semaphore_ring_emit, ptr @cayman_dma_vm_flush, ptr @r600_dma_ring_test, ptr @r600_dma_ib_test, ptr @cayman_dma_is_lockup, ptr null }, [40 x i8] zeroinitializer }, align 32
@cayman_uvd_ring = internal constant { %struct.radeon_asic_ring, [40 x i8] } { %struct.radeon_asic_ring { ptr @uvd_v1_0_get_rptr, ptr @uvd_v1_0_get_wptr, ptr @uvd_v1_0_set_wptr, ptr null, ptr @radeon_uvd_cs_parse, ptr @uvd_v1_0_ib_execute, ptr @uvd_v2_2_fence_emit, ptr null, ptr @uvd_v3_1_semaphore_emit, ptr null, ptr @uvd_v1_0_ring_test, ptr @uvd_v1_0_ib_test, ptr @radeon_ring_test_lockup, ptr null }, [40 x i8] zeroinitializer }, align 32
@trinity_vce_ring = internal constant { %struct.radeon_asic_ring, [40 x i8] } { %struct.radeon_asic_ring { ptr @vce_v1_0_get_rptr, ptr @vce_v1_0_get_wptr, ptr @vce_v1_0_set_wptr, ptr null, ptr @radeon_vce_cs_parse, ptr @radeon_vce_ib_execute, ptr @radeon_vce_fence_emit, ptr null, ptr @radeon_vce_semaphore_emit, ptr null, ptr @radeon_vce_ring_test, ptr @radeon_vce_ib_test, ptr @radeon_ring_test_lockup, ptr null }, [40 x i8] zeroinitializer }, align 32
@si_gfx_ring = internal constant { %struct.radeon_asic_ring, [40 x i8] } { %struct.radeon_asic_ring { ptr @cayman_gfx_get_rptr, ptr @cayman_gfx_get_wptr, ptr @cayman_gfx_set_wptr, ptr @si_ib_parse, ptr null, ptr @si_ring_ib_execute, ptr @si_fence_ring_emit, ptr null, ptr @r600_semaphore_ring_emit, ptr @si_vm_flush, ptr @r600_ring_test, ptr @r600_ib_test, ptr @si_gfx_is_lockup, ptr null }, [40 x i8] zeroinitializer }, align 32
@si_dma_ring = internal constant { %struct.radeon_asic_ring, [40 x i8] } { %struct.radeon_asic_ring { ptr @cayman_dma_get_rptr, ptr @cayman_dma_get_wptr, ptr @cayman_dma_set_wptr, ptr @evergreen_dma_ib_parse, ptr null, ptr @cayman_dma_ring_ib_execute, ptr @evergreen_dma_fence_ring_emit, ptr null, ptr @r600_dma_semaphore_ring_emit, ptr @si_dma_vm_flush, ptr @r600_dma_ring_test, ptr @r600_dma_ib_test, ptr @si_dma_is_lockup, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_gfx_ring = internal constant { %struct.radeon_asic_ring, [40 x i8] } { %struct.radeon_asic_ring { ptr @cik_gfx_get_rptr, ptr @cik_gfx_get_wptr, ptr @cik_gfx_set_wptr, ptr @cik_ib_parse, ptr null, ptr @cik_ring_ib_execute, ptr @cik_fence_gfx_ring_emit, ptr null, ptr @cik_semaphore_ring_emit, ptr @cik_vm_flush, ptr @cik_ring_test, ptr @cik_ib_test, ptr @cik_gfx_is_lockup, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_cp_ring = internal constant { %struct.radeon_asic_ring, [40 x i8] } { %struct.radeon_asic_ring { ptr @cik_compute_get_rptr, ptr @cik_compute_get_wptr, ptr @cik_compute_set_wptr, ptr @cik_ib_parse, ptr null, ptr @cik_ring_ib_execute, ptr @cik_fence_compute_ring_emit, ptr null, ptr @cik_semaphore_ring_emit, ptr @cik_vm_flush, ptr @cik_ring_test, ptr @cik_ib_test, ptr @cik_gfx_is_lockup, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_dma_ring = internal constant { %struct.radeon_asic_ring, [40 x i8] } { %struct.radeon_asic_ring { ptr @cik_sdma_get_rptr, ptr @cik_sdma_get_wptr, ptr @cik_sdma_set_wptr, ptr @cik_ib_parse, ptr null, ptr @cik_sdma_ring_ib_execute, ptr @cik_sdma_fence_ring_emit, ptr null, ptr @cik_sdma_semaphore_ring_emit, ptr @cik_dma_vm_flush, ptr @cik_sdma_ring_test, ptr @cik_sdma_ib_test, ptr @cik_sdma_is_lockup, ptr null }, [40 x i8] zeroinitializer }, align 32
@ci_vce_ring = internal constant { %struct.radeon_asic_ring, [40 x i8] } { %struct.radeon_asic_ring { ptr @vce_v1_0_get_rptr, ptr @vce_v1_0_get_wptr, ptr @vce_v1_0_set_wptr, ptr null, ptr @radeon_vce_cs_parse, ptr @radeon_vce_ib_execute, ptr @radeon_vce_fence_emit, ptr null, ptr @radeon_vce_semaphore_emit, ptr null, ptr @radeon_vce_ring_test, ptr @radeon_vce_ib_test, ptr @radeon_ring_test_lockup, ptr null }, [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 12, i64 14, i64 15]
@__sancov_gen_cov_switch_values.10 = internal global [64 x i64] [i64 62, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61]
@__sancov_gen_cov_switch_values.11 = internal global [7 x i64] [i64 5, i64 16, i64 38417, i64 38419, i64 38422, i64 38673, i64 38675]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 55, i64 56]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 32, i64 52, i64 53, i64 54]
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 159, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 165, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 171, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant [10 x i8] c"r100_asic\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 198, i32 27 }
@___asan_gen_.38 = private unnamed_addr constant [10 x i8] c"r200_asic\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 266, i32 27 }
@___asan_gen_.41 = private unnamed_addr constant [15 x i8] c"r300_asic_pcie\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 430, i32 27 }
@___asan_gen_.44 = private unnamed_addr constant [10 x i8] c"r300_asic\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 362, i32 27 }
@___asan_gen_.47 = private unnamed_addr constant [10 x i8] c"r420_asic\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 498, i32 27 }
@___asan_gen_.50 = private unnamed_addr constant [11 x i8] c"rs400_asic\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 566, i32 27 }
@___asan_gen_.53 = private unnamed_addr constant [11 x i8] c"rs600_asic\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 634, i32 27 }
@___asan_gen_.56 = private unnamed_addr constant [11 x i8] c"rs690_asic\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 702, i32 27 }
@___asan_gen_.59 = private unnamed_addr constant [11 x i8] c"rv515_asic\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 770, i32 27 }
@___asan_gen_.62 = private unnamed_addr constant [10 x i8] c"r520_asic\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 838, i32 27 }
@___asan_gen_.65 = private unnamed_addr constant [10 x i8] c"r600_asic\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 932, i32 27 }
@___asan_gen_.68 = private unnamed_addr constant [11 x i8] c"rv6xx_asic\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 1017, i32 27 }
@___asan_gen_.71 = private unnamed_addr constant [11 x i8] c"rs780_asic\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 1110, i32 27 }
@___asan_gen_.74 = private unnamed_addr constant [11 x i8] c"rv770_asic\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 1216, i32 27 }
@___asan_gen_.77 = private unnamed_addr constant [15 x i8] c"evergreen_asic\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 1336, i32 27 }
@___asan_gen_.80 = private unnamed_addr constant [10 x i8] c"sumo_asic\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 1430, i32 27 }
@___asan_gen_.83 = private unnamed_addr constant [9 x i8] c"btc_asic\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 1524, i32 27 }
@___asan_gen_.86 = private unnamed_addr constant [12 x i8] c"cayman_asic\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 1661, i32 27 }
@___asan_gen_.89 = private unnamed_addr constant [13 x i8] c"trinity_asic\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 1779, i32 27 }
@___asan_gen_.92 = private unnamed_addr constant [8 x i8] c"si_asic\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 1917, i32 27 }
@___asan_gen_.95 = private unnamed_addr constant [8 x i8] c"ci_asic\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 2087, i32 27 }
@___asan_gen_.98 = private unnamed_addr constant [8 x i8] c"kv_asic\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 2200, i32 27 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 56, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 73, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [14 x i8] c"r100_gfx_ring\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 184, i32 38 }
@___asan_gen_.110 = private unnamed_addr constant [14 x i8] c"r300_gfx_ring\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 334, i32 38 }
@___asan_gen_.113 = private unnamed_addr constant [15 x i8] c"rv515_gfx_ring\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 348, i32 38 }
@___asan_gen_.116 = private unnamed_addr constant [14 x i8] c"r600_gfx_ring\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 906, i32 38 }
@___asan_gen_.119 = private unnamed_addr constant [14 x i8] c"r600_dma_ring\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 919, i32 38 }
@___asan_gen_.122 = private unnamed_addr constant [15 x i8] c"rv6xx_uvd_ring\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 1004, i32 38 }
@___asan_gen_.125 = private unnamed_addr constant [15 x i8] c"rv770_uvd_ring\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 1203, i32 38 }
@___asan_gen_.128 = private unnamed_addr constant [19 x i8] c"evergreen_gfx_ring\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 1310, i32 38 }
@___asan_gen_.131 = private unnamed_addr constant [19 x i8] c"evergreen_dma_ring\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 1323, i32 38 }
@___asan_gen_.134 = private unnamed_addr constant [16 x i8] c"cayman_gfx_ring\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 1618, i32 38 }
@___asan_gen_.137 = private unnamed_addr constant [16 x i8] c"cayman_dma_ring\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 1633, i32 38 }
@___asan_gen_.140 = private unnamed_addr constant [16 x i8] c"cayman_uvd_ring\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 1648, i32 38 }
@___asan_gen_.143 = private unnamed_addr constant [17 x i8] c"trinity_vce_ring\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 1766, i32 38 }
@___asan_gen_.146 = private unnamed_addr constant [12 x i8] c"si_gfx_ring\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 1887, i32 38 }
@___asan_gen_.149 = private unnamed_addr constant [12 x i8] c"si_dma_ring\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 1902, i32 38 }
@___asan_gen_.152 = private unnamed_addr constant [12 x i8] c"ci_gfx_ring\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 2029, i32 38 }
@___asan_gen_.155 = private unnamed_addr constant [11 x i8] c"ci_cp_ring\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 2044, i32 38 }
@___asan_gen_.158 = private unnamed_addr constant [12 x i8] c"ci_dma_ring\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 2059, i32 38 }
@___asan_gen_.161 = private unnamed_addr constant [12 x i8] c"ci_vce_ring\00", align 1
@___asan_gen_.162 = private constant [40 x i8] c"../drivers/gpu/drm/radeon/radeon_asic.c\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 2074, i32 38 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @radeon_agp_disable._entry, ptr @radeon_agp_disable._entry.3, ptr @radeon_agp_disable._entry.5, ptr @radeon_agp_disable._entry_ptr, ptr @radeon_agp_disable._entry_ptr.4, ptr @radeon_agp_disable._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, ptr @r100_asic, ptr @r200_asic, ptr @r300_asic_pcie, ptr @r300_asic, ptr @r420_asic, ptr @rs400_asic, ptr @rs600_asic, ptr @rs690_asic, ptr @rv515_asic, ptr @r520_asic, ptr @r600_asic, ptr @rv6xx_asic, ptr @rs780_asic, ptr @rv770_asic, ptr @evergreen_asic, ptr @sumo_asic, ptr @btc_asic, ptr @cayman_asic, ptr @trinity_asic, ptr @si_asic, ptr @ci_asic, ptr @kv_asic, ptr @.str.8, ptr @.str.9, ptr @r100_gfx_ring, ptr @r300_gfx_ring, ptr @rv515_gfx_ring, ptr @r600_gfx_ring, ptr @r600_dma_ring, ptr @rv6xx_uvd_ring, ptr @rv770_uvd_ring, ptr @evergreen_gfx_ring, ptr @evergreen_dma_ring, ptr @cayman_gfx_ring, ptr @cayman_dma_ring, ptr @cayman_uvd_ring, ptr @trinity_vce_ring, ptr @si_gfx_ring, ptr @si_dma_ring, ptr @ci_gfx_ring, ptr @ci_cp_ring, ptr @ci_dma_ring, ptr @ci_vce_ring], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_agp_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_agp_disable._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_agp_disable._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r100_asic to i32), i32 368, i32 448, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r200_asic to i32), i32 368, i32 448, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r300_asic_pcie to i32), i32 368, i32 448, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r300_asic to i32), i32 368, i32 448, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r420_asic to i32), i32 368, i32 448, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs400_asic to i32), i32 368, i32 448, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs600_asic to i32), i32 368, i32 448, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs690_asic to i32), i32 368, i32 448, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv515_asic to i32), i32 368, i32 448, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r520_asic to i32), i32 368, i32 448, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_asic to i32), i32 368, i32 448, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv6xx_asic to i32), i32 368, i32 448, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs780_asic to i32), i32 368, i32 448, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv770_asic to i32), i32 368, i32 448, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_asic to i32), i32 368, i32 448, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sumo_asic to i32), i32 368, i32 448, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btc_asic to i32), i32 368, i32 448, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_asic to i32), i32 368, i32 448, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trinity_asic to i32), i32 368, i32 448, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si_asic to i32), i32 368, i32 448, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_asic to i32), i32 368, i32 448, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kv_asic to i32), i32 368, i32 448, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r100_gfx_ring to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r300_gfx_ring to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv515_gfx_ring to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_gfx_ring to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_dma_ring to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv6xx_uvd_ring to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv770_uvd_ring to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_gfx_ring to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evergreen_dma_ring to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_gfx_ring to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_dma_ring to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_uvd_ring to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trinity_vce_ring to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si_gfx_ring to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si_dma_ring to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_gfx_ring to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_cp_ring to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_dma_ring to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_vce_ring to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_agp_disable(ptr nocapture noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, -524289
  store i32 %and, ptr %flags, align 8
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %2 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %3)
  %cmp = icmp ugt i32 %3, 26
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %or = or i32 %5, 2097152
  store i32 %or, ptr %flags, align 8
  br label %if.end39

if.else:                                          ; preds = %entry
  %.fr = freeze i32 %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %.fr)
  %cmp3 = icmp ugt i32 %.fr, 20
  br i1 %cmp3, label %if.else.do.end14_crit_edge, label %switch.early.test

if.else.do.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

switch.early.test:                                ; preds = %if.else
  %6 = zext i32 %.fr to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %.fr, label %do.end25 [
    i32 15, label %switch.early.test.do.end14_crit_edge
    i32 14, label %switch.early.test.do.end14_crit_edge58
    i32 12, label %switch.early.test.do.end14_crit_edge59
  ]

switch.early.test.do.end14_crit_edge59:           ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

switch.early.test.do.end14_crit_edge58:           ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

switch.early.test.do.end14_crit_edge:             ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

do.end14:                                         ; preds = %switch.early.test.do.end14_crit_edge, %switch.early.test.do.end14_crit_edge58, %switch.early.test.do.end14_crit_edge59, %if.else.do.end14_crit_edge
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 8
  %or18 = or i32 %8, 2097152
  store i32 %or18, ptr %flags, align 8
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %9 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %asic, align 8
  %gart = getelementptr inbounds %struct.radeon_asic, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %gart to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @rv370_pcie_gart_tlb_flush, ptr %gart, align 4
  %12 = load ptr, ptr %asic, align 8
  %get_page_entry = getelementptr inbounds %struct.radeon_asic, ptr %12, i32 0, i32 12, i32 1
  %13 = ptrtoint ptr %get_page_entry to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @rv370_pcie_gart_get_page_entry, ptr %get_page_entry, align 4
  %14 = load ptr, ptr %asic, align 8
  %set_page = getelementptr inbounds %struct.radeon_asic, ptr %14, i32 0, i32 12, i32 2
  %15 = ptrtoint ptr %set_page to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @rv370_pcie_gart_set_page, ptr %set_page, align 4
  br label %if.end39

do.end25:                                         ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #8
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #9
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 8
  %or29 = or i32 %17, 8388608
  store i32 %or29, ptr %flags, align 8
  %asic30 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %18 = ptrtoint ptr %asic30 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %asic30, align 8
  %gart31 = getelementptr inbounds %struct.radeon_asic, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %gart31 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @r100_pci_gart_tlb_flush, ptr %gart31, align 4
  %21 = load ptr, ptr %asic30, align 8
  %get_page_entry35 = getelementptr inbounds %struct.radeon_asic, ptr %21, i32 0, i32 12, i32 1
  %22 = ptrtoint ptr %get_page_entry35 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @r100_pci_gart_get_page_entry, ptr %get_page_entry35, align 4
  %23 = load ptr, ptr %asic30, align 8
  %set_page38 = getelementptr inbounds %struct.radeon_asic, ptr %23, i32 0, i32 12, i32 2
  %24 = ptrtoint ptr %set_page38 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @r100_pci_gart_set_page, ptr %set_page38, align 4
  br label %if.end39

if.end39:                                         ; preds = %do.end25, %do.end14, %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_gart_size to i32))
  %25 = load i32, ptr @radeon_gart_size, align 4
  %mul40 = shl i32 %25, 20
  %conv = sext i32 %mul40 to i64
  %gtt_size = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 5
  %26 = ptrtoint ptr %gtt_size to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %conv, ptr %gtt_size, align 8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv370_pcie_gart_tlb_flush(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rv370_pcie_gart_get_page_entry(i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv370_pcie_gart_set_page(ptr noundef, i32 noundef, i64 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_pci_gart_tlb_flush(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @r100_pci_gart_get_page_entry(i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_pci_gart_set_page(ptr noundef, i32 noundef, i64 noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @radeon_asic_init(ptr noundef %rdev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mc_rreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 32
  %0 = ptrtoint ptr %mc_rreg.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @radeon_invalid_rreg, ptr %mc_rreg.i, align 8
  %mc_wreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 33
  %1 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @radeon_invalid_wreg, ptr %mc_wreg.i, align 4
  %pll_rreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 34
  %2 = ptrtoint ptr %pll_rreg.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @radeon_invalid_rreg, ptr %pll_rreg.i, align 8
  %pll_wreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 35
  %3 = ptrtoint ptr %pll_wreg.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @radeon_invalid_wreg, ptr %pll_wreg.i, align 4
  %pciep_rreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 37
  %4 = ptrtoint ptr %pciep_rreg.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @radeon_invalid_rreg, ptr %pciep_rreg.i, align 4
  %pciep_wreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 38
  %5 = ptrtoint ptr %pciep_wreg.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @radeon_invalid_wreg, ptr %pciep_wreg.i, align 8
  %family.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %6 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %7)
  %cmp.i = icmp ult i32 %7, 21
  %pcie_reg_mask.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 36
  br i1 %cmp.i, label %if.end7.i, label %if.end.i

if.end.i:                                         ; preds = %entry
  %8 = ptrtoint ptr %pcie_reg_mask.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2047, ptr %pcie_reg_mask.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %7)
  %cmp3.i = icmp ult i32 %7, 27
  br i1 %cmp3.i, label %if.end42.thread134.i, label %if.end42.i

if.end42.thread134.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %pll_rreg.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @r100_pll_rreg, ptr %pll_rreg.i, align 8
  %10 = ptrtoint ptr %pll_wreg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @r100_pll_wreg, ptr %pll_wreg.i, align 4
  %11 = ptrtoint ptr %mc_rreg.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @rv515_mc_rreg, ptr %mc_rreg.i, align 8
  %12 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @rv515_mc_wreg, ptr %mc_wreg.i, align 4
  br label %radeon_register_accessor_init.exit

if.end7.i:                                        ; preds = %entry
  %13 = ptrtoint ptr %pcie_reg_mask.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 255, ptr %pcie_reg_mask.i, align 8
  %14 = ptrtoint ptr %pll_rreg.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @r100_pll_rreg, ptr %pll_rreg.i, align 8
  %15 = ptrtoint ptr %pll_wreg.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @r100_pll_wreg, ptr %pll_wreg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %7)
  %cmp9.i = icmp ugt i32 %7, 12
  br i1 %cmp9.i, label %if.end19.i, label %if.end7.i.radeon_register_accessor_init.exit_crit_edge

if.end7.i.radeon_register_accessor_init.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_register_accessor_init.exit

if.end19.i:                                       ; preds = %if.end7.i
  %16 = ptrtoint ptr %mc_rreg.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @r420_mc_rreg, ptr %mc_rreg.i, align 8
  %17 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @r420_mc_wreg, ptr %mc_wreg.i, align 4
  %18 = and i32 %7, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %18)
  %switch.i = icmp eq i32 %18, 16
  br i1 %switch.i, label %if.then24.i, label %if.end27.i

if.then24.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %mc_rreg.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @rs400_mc_rreg, ptr %mc_rreg.i, align 8
  %20 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @rs400_mc_wreg, ptr %mc_wreg.i, align 4
  br label %radeon_register_accessor_init.exit

if.end27.i:                                       ; preds = %if.end19.i
  %.off106.i = add nsw i32 %7, -19
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off106.i)
  %switch107.i = icmp ult i32 %.off106.i, 2
  br i1 %switch107.i, label %if.end36.thread.i, label %if.end36.i

if.end36.thread.i:                                ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %mc_rreg.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @rs690_mc_rreg, ptr %mc_rreg.i, align 8
  %22 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @rs690_mc_wreg, ptr %mc_wreg.i, align 4
  br label %radeon_register_accessor_init.exit

if.end36.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %7)
  %cmp38.i = icmp eq i32 %7, 18
  br i1 %cmp38.i, label %if.then39.i, label %if.end36.i.radeon_register_accessor_init.exit_crit_edge

if.end36.i.radeon_register_accessor_init.exit_crit_edge: ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_register_accessor_init.exit

if.then39.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %mc_rreg.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @rs600_mc_rreg, ptr %mc_rreg.i, align 8
  %24 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @rs600_mc_wreg, ptr %mc_wreg.i, align 4
  br label %radeon_register_accessor_init.exit

if.end42.i:                                       ; preds = %if.end.i
  %25 = ptrtoint ptr %mc_rreg.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @rv515_mc_rreg, ptr %mc_rreg.i, align 8
  %26 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @rv515_mc_wreg, ptr %mc_wreg.i, align 4
  %.off108.i = add i32 %7, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off108.i)
  %switch109.i = icmp ult i32 %.off108.i, 2
  br i1 %switch109.i, label %if.else57.thread141.i, label %if.end51.i

if.else57.thread141.i:                            ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %mc_rreg.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @rs780_mc_rreg, ptr %mc_rreg.i, align 8
  %28 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @rs780_mc_wreg, ptr %mc_wreg.i, align 4
  br label %if.then60.i

if.end51.i:                                       ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %7)
  %cmp53.i = icmp ugt i32 %7, 56
  br i1 %cmp53.i, label %if.then54.i, label %if.end51.i.if.then60.i_crit_edge

if.end51.i.if.then60.i_crit_edge:                 ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then60.i

if.then54.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %pciep_rreg.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @cik_pciep_rreg, ptr %pciep_rreg.i, align 4
  %30 = ptrtoint ptr %pciep_wreg.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @cik_pciep_wreg, ptr %pciep_wreg.i, align 8
  br label %radeon_register_accessor_init.exit

if.then60.i:                                      ; preds = %if.end51.i.if.then60.i_crit_edge, %if.else57.thread141.i
  %31 = ptrtoint ptr %pciep_rreg.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @r600_pciep_rreg, ptr %pciep_rreg.i, align 4
  %32 = ptrtoint ptr %pciep_wreg.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @r600_pciep_wreg, ptr %pciep_wreg.i, align 8
  br label %radeon_register_accessor_init.exit

radeon_register_accessor_init.exit:               ; preds = %if.then60.i, %if.then54.i, %if.then39.i, %if.end36.i.radeon_register_accessor_init.exit_crit_edge, %if.end36.thread.i, %if.then24.i, %if.end7.i.radeon_register_accessor_init.exit_crit_edge, %if.end42.thread134.i
  %flags = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags, align 8
  %and = and i32 %34, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 2, i32 1
  %35 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 91
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %spec.select, ptr %35, align 4
  %has_uvd = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 93
  %37 = ptrtoint ptr %has_uvd to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %has_uvd, align 4
  %has_vce = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 94
  %38 = ptrtoint ptr %has_vce to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %has_vce, align 1
  %39 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %7, label %radeon_register_accessor_init.exit.return_crit_edge [
    i32 0, label %radeon_register_accessor_init.exit.sw.bb_crit_edge
    i32 1, label %radeon_register_accessor_init.exit.sw.bb_crit_edge329
    i32 2, label %radeon_register_accessor_init.exit.sw.bb_crit_edge330
    i32 3, label %radeon_register_accessor_init.exit.sw.bb_crit_edge331
    i32 4, label %radeon_register_accessor_init.exit.sw.bb_crit_edge332
    i32 5, label %radeon_register_accessor_init.exit.sw.bb2_crit_edge
    i32 6, label %radeon_register_accessor_init.exit.sw.bb2_crit_edge333
    i32 7, label %radeon_register_accessor_init.exit.sw.bb2_crit_edge334
    i32 8, label %radeon_register_accessor_init.exit.sw.bb2_crit_edge335
    i32 9, label %radeon_register_accessor_init.exit.sw.bb4_crit_edge
    i32 10, label %radeon_register_accessor_init.exit.sw.bb4_crit_edge336
    i32 11, label %radeon_register_accessor_init.exit.sw.bb4_crit_edge337
    i32 12, label %radeon_register_accessor_init.exit.sw.bb4_crit_edge338
    i32 13, label %radeon_register_accessor_init.exit.sw.bb13_crit_edge
    i32 14, label %radeon_register_accessor_init.exit.sw.bb13_crit_edge339
    i32 15, label %radeon_register_accessor_init.exit.sw.bb13_crit_edge340
    i32 16, label %radeon_register_accessor_init.exit.sw.bb25_crit_edge
    i32 17, label %radeon_register_accessor_init.exit.sw.bb25_crit_edge341
    i32 18, label %sw.bb27
    i32 19, label %radeon_register_accessor_init.exit.sw.bb29_crit_edge
    i32 20, label %radeon_register_accessor_init.exit.sw.bb29_crit_edge342
    i32 21, label %sw.bb31
    i32 22, label %radeon_register_accessor_init.exit.sw.bb33_crit_edge
    i32 23, label %radeon_register_accessor_init.exit.sw.bb33_crit_edge343
    i32 24, label %radeon_register_accessor_init.exit.sw.bb33_crit_edge344
    i32 25, label %radeon_register_accessor_init.exit.sw.bb33_crit_edge345
    i32 26, label %radeon_register_accessor_init.exit.sw.bb33_crit_edge346
    i32 27, label %sw.bb35
    i32 28, label %radeon_register_accessor_init.exit.sw.bb37_crit_edge
    i32 29, label %radeon_register_accessor_init.exit.sw.bb37_crit_edge347
    i32 31, label %radeon_register_accessor_init.exit.sw.bb37_crit_edge348
    i32 32, label %radeon_register_accessor_init.exit.sw.bb37_crit_edge349
    i32 30, label %radeon_register_accessor_init.exit.sw.bb37_crit_edge350
    i32 33, label %radeon_register_accessor_init.exit.sw.bb40_crit_edge
    i32 34, label %radeon_register_accessor_init.exit.sw.bb40_crit_edge351
    i32 35, label %radeon_register_accessor_init.exit.sw.bb72_crit_edge
    i32 36, label %radeon_register_accessor_init.exit.sw.bb72_crit_edge352
    i32 37, label %radeon_register_accessor_init.exit.sw.bb72_crit_edge353
    i32 38, label %radeon_register_accessor_init.exit.sw.bb72_crit_edge354
    i32 39, label %radeon_register_accessor_init.exit.sw.bb75_crit_edge
    i32 40, label %radeon_register_accessor_init.exit.sw.bb75_crit_edge355
    i32 41, label %radeon_register_accessor_init.exit.sw.bb75_crit_edge356
    i32 42, label %radeon_register_accessor_init.exit.sw.bb75_crit_edge357
    i32 43, label %radeon_register_accessor_init.exit.sw.bb75_crit_edge358
    i32 44, label %radeon_register_accessor_init.exit.sw.bb86_crit_edge
    i32 45, label %radeon_register_accessor_init.exit.sw.bb86_crit_edge359
    i32 46, label %radeon_register_accessor_init.exit.sw.bb86_crit_edge360
    i32 47, label %radeon_register_accessor_init.exit.sw.bb89_crit_edge
    i32 48, label %radeon_register_accessor_init.exit.sw.bb89_crit_edge361
    i32 49, label %radeon_register_accessor_init.exit.sw.bb89_crit_edge362
    i32 50, label %sw.bb100
    i32 51, label %sw.bb104
    i32 52, label %radeon_register_accessor_init.exit.sw.bb109_crit_edge
    i32 53, label %radeon_register_accessor_init.exit.sw.bb109_crit_edge363
    i32 54, label %radeon_register_accessor_init.exit.sw.bb109_crit_edge364
    i32 55, label %radeon_register_accessor_init.exit.sw.bb109_crit_edge365
    i32 56, label %radeon_register_accessor_init.exit.sw.bb109_crit_edge366
    i32 57, label %radeon_register_accessor_init.exit.sw.bb161_crit_edge
    i32 60, label %radeon_register_accessor_init.exit.sw.bb161_crit_edge367
    i32 58, label %radeon_register_accessor_init.exit.sw.bb176_crit_edge
    i32 59, label %radeon_register_accessor_init.exit.sw.bb176_crit_edge368
    i32 61, label %radeon_register_accessor_init.exit.sw.bb176_crit_edge369
  ]

radeon_register_accessor_init.exit.sw.bb176_crit_edge369: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb176

radeon_register_accessor_init.exit.sw.bb176_crit_edge368: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb176

radeon_register_accessor_init.exit.sw.bb176_crit_edge: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb176

radeon_register_accessor_init.exit.sw.bb161_crit_edge367: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb161

radeon_register_accessor_init.exit.sw.bb161_crit_edge: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb161

radeon_register_accessor_init.exit.sw.bb109_crit_edge366: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb109

radeon_register_accessor_init.exit.sw.bb109_crit_edge365: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb109

radeon_register_accessor_init.exit.sw.bb109_crit_edge364: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb109

radeon_register_accessor_init.exit.sw.bb109_crit_edge363: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb109

radeon_register_accessor_init.exit.sw.bb109_crit_edge: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb109

radeon_register_accessor_init.exit.sw.bb89_crit_edge362: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb89

radeon_register_accessor_init.exit.sw.bb89_crit_edge361: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb89

radeon_register_accessor_init.exit.sw.bb89_crit_edge: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb89

radeon_register_accessor_init.exit.sw.bb86_crit_edge360: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb86

radeon_register_accessor_init.exit.sw.bb86_crit_edge359: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb86

radeon_register_accessor_init.exit.sw.bb86_crit_edge: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb86

radeon_register_accessor_init.exit.sw.bb75_crit_edge358: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb75

radeon_register_accessor_init.exit.sw.bb75_crit_edge357: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb75

radeon_register_accessor_init.exit.sw.bb75_crit_edge356: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb75

radeon_register_accessor_init.exit.sw.bb75_crit_edge355: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb75

radeon_register_accessor_init.exit.sw.bb75_crit_edge: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb75

radeon_register_accessor_init.exit.sw.bb72_crit_edge354: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb72

radeon_register_accessor_init.exit.sw.bb72_crit_edge353: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb72

radeon_register_accessor_init.exit.sw.bb72_crit_edge352: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb72

radeon_register_accessor_init.exit.sw.bb72_crit_edge: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb72

radeon_register_accessor_init.exit.sw.bb40_crit_edge351: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb40

radeon_register_accessor_init.exit.sw.bb40_crit_edge: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb40

radeon_register_accessor_init.exit.sw.bb37_crit_edge350: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb37

radeon_register_accessor_init.exit.sw.bb37_crit_edge349: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb37

radeon_register_accessor_init.exit.sw.bb37_crit_edge348: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb37

radeon_register_accessor_init.exit.sw.bb37_crit_edge347: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb37

radeon_register_accessor_init.exit.sw.bb37_crit_edge: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb37

radeon_register_accessor_init.exit.sw.bb33_crit_edge346: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb33

radeon_register_accessor_init.exit.sw.bb33_crit_edge345: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb33

radeon_register_accessor_init.exit.sw.bb33_crit_edge344: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb33

radeon_register_accessor_init.exit.sw.bb33_crit_edge343: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb33

radeon_register_accessor_init.exit.sw.bb33_crit_edge: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb33

radeon_register_accessor_init.exit.sw.bb29_crit_edge342: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb29

radeon_register_accessor_init.exit.sw.bb29_crit_edge: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb29

radeon_register_accessor_init.exit.sw.bb25_crit_edge341: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb25

radeon_register_accessor_init.exit.sw.bb25_crit_edge: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb25

radeon_register_accessor_init.exit.sw.bb13_crit_edge340: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb13

radeon_register_accessor_init.exit.sw.bb13_crit_edge339: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb13

radeon_register_accessor_init.exit.sw.bb13_crit_edge: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb13

radeon_register_accessor_init.exit.sw.bb4_crit_edge338: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

radeon_register_accessor_init.exit.sw.bb4_crit_edge337: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

radeon_register_accessor_init.exit.sw.bb4_crit_edge336: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

radeon_register_accessor_init.exit.sw.bb4_crit_edge: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

radeon_register_accessor_init.exit.sw.bb2_crit_edge335: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

radeon_register_accessor_init.exit.sw.bb2_crit_edge334: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

radeon_register_accessor_init.exit.sw.bb2_crit_edge333: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

radeon_register_accessor_init.exit.sw.bb2_crit_edge: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

radeon_register_accessor_init.exit.sw.bb_crit_edge332: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

radeon_register_accessor_init.exit.sw.bb_crit_edge331: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

radeon_register_accessor_init.exit.sw.bb_crit_edge330: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

radeon_register_accessor_init.exit.sw.bb_crit_edge329: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

radeon_register_accessor_init.exit.sw.bb_crit_edge: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

radeon_register_accessor_init.exit.return_crit_edge: ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %radeon_register_accessor_init.exit.sw.bb_crit_edge, %radeon_register_accessor_init.exit.sw.bb_crit_edge329, %radeon_register_accessor_init.exit.sw.bb_crit_edge330, %radeon_register_accessor_init.exit.sw.bb_crit_edge331, %radeon_register_accessor_init.exit.sw.bb_crit_edge332
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %40 = ptrtoint ptr %asic to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @r100_asic, ptr %asic, align 8
  br label %sw.epilog193

sw.bb2:                                           ; preds = %radeon_register_accessor_init.exit.sw.bb2_crit_edge, %radeon_register_accessor_init.exit.sw.bb2_crit_edge333, %radeon_register_accessor_init.exit.sw.bb2_crit_edge334, %radeon_register_accessor_init.exit.sw.bb2_crit_edge335
  %asic3 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %41 = ptrtoint ptr %asic3 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @r200_asic, ptr %asic3, align 8
  br label %sw.epilog193

sw.bb4:                                           ; preds = %radeon_register_accessor_init.exit.sw.bb4_crit_edge, %radeon_register_accessor_init.exit.sw.bb4_crit_edge336, %radeon_register_accessor_init.exit.sw.bb4_crit_edge337, %radeon_register_accessor_init.exit.sw.bb4_crit_edge338
  %and6 = and i32 %34, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %asic11 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  br i1 %tobool7.not, label %if.else10, label %if.then8

if.then8:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %asic11 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @r300_asic_pcie, ptr %asic11, align 8
  br label %sw.epilog193

if.else10:                                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %asic11 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @r300_asic, ptr %asic11, align 8
  br label %sw.epilog193

sw.bb13:                                          ; preds = %radeon_register_accessor_init.exit.sw.bb13_crit_edge, %radeon_register_accessor_init.exit.sw.bb13_crit_edge339, %radeon_register_accessor_init.exit.sw.bb13_crit_edge340
  %asic14 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %44 = ptrtoint ptr %asic14 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @r420_asic, ptr %asic14, align 8
  %bios = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 13
  %45 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bios, align 8
  %cmp = icmp eq ptr %46, null
  br i1 %cmp, label %if.then15, label %sw.bb13.sw.epilog193_crit_edge

sw.bb13.sw.epilog193_crit_edge:                   ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog193

if.then15:                                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #8
  store ptr @radeon_legacy_get_engine_clock, ptr getelementptr inbounds (%struct.radeon_asic, ptr @r420_asic, i32 0, i32 20, i32 5), align 4
  store ptr @radeon_legacy_set_engine_clock, ptr getelementptr inbounds (%struct.radeon_asic, ptr @r420_asic, i32 0, i32 20, i32 6), align 4
  store ptr @radeon_legacy_get_memory_clock, ptr getelementptr inbounds (%struct.radeon_asic, ptr @r420_asic, i32 0, i32 20, i32 7), align 4
  store ptr null, ptr getelementptr inbounds (%struct.radeon_asic, ptr @r420_asic, i32 0, i32 20, i32 8), align 4
  store ptr @radeon_legacy_set_backlight_level, ptr getelementptr inbounds (%struct.radeon_asic, ptr @r420_asic, i32 0, i32 16, i32 3), align 4
  br label %sw.epilog193

sw.bb25:                                          ; preds = %radeon_register_accessor_init.exit.sw.bb25_crit_edge, %radeon_register_accessor_init.exit.sw.bb25_crit_edge341
  %asic26 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %47 = ptrtoint ptr %asic26 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @rs400_asic, ptr %asic26, align 8
  br label %sw.epilog193

sw.bb27:                                          ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  %asic28 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %48 = ptrtoint ptr %asic28 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @rs600_asic, ptr %asic28, align 8
  br label %sw.epilog193

sw.bb29:                                          ; preds = %radeon_register_accessor_init.exit.sw.bb29_crit_edge, %radeon_register_accessor_init.exit.sw.bb29_crit_edge342
  %asic30 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %49 = ptrtoint ptr %asic30 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @rs690_asic, ptr %asic30, align 8
  br label %sw.epilog193

sw.bb31:                                          ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  %asic32 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %50 = ptrtoint ptr %asic32 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @rv515_asic, ptr %asic32, align 8
  br label %sw.epilog193

sw.bb33:                                          ; preds = %radeon_register_accessor_init.exit.sw.bb33_crit_edge, %radeon_register_accessor_init.exit.sw.bb33_crit_edge343, %radeon_register_accessor_init.exit.sw.bb33_crit_edge344, %radeon_register_accessor_init.exit.sw.bb33_crit_edge345, %radeon_register_accessor_init.exit.sw.bb33_crit_edge346
  %asic34 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %51 = ptrtoint ptr %asic34 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @r520_asic, ptr %asic34, align 8
  br label %sw.epilog193

sw.bb35:                                          ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  %asic36 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %52 = ptrtoint ptr %asic36 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @r600_asic, ptr %asic36, align 8
  br label %sw.epilog193

sw.bb37:                                          ; preds = %radeon_register_accessor_init.exit.sw.bb37_crit_edge, %radeon_register_accessor_init.exit.sw.bb37_crit_edge347, %radeon_register_accessor_init.exit.sw.bb37_crit_edge348, %radeon_register_accessor_init.exit.sw.bb37_crit_edge349, %radeon_register_accessor_init.exit.sw.bb37_crit_edge350
  %asic38 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %53 = ptrtoint ptr %asic38 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @rv6xx_asic, ptr %asic38, align 8
  %54 = ptrtoint ptr %has_uvd to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %has_uvd, align 4
  br label %sw.epilog193

sw.bb40:                                          ; preds = %radeon_register_accessor_init.exit.sw.bb40_crit_edge, %radeon_register_accessor_init.exit.sw.bb40_crit_edge351
  %asic41 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %55 = ptrtoint ptr %asic41 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @rs780_asic, ptr %asic41, align 8
  %pdev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 2
  %56 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pdev, align 8
  %device = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 8
  %58 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %device, align 2
  %60 = zext i16 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.11)
  switch i16 %59, label %if.else69 [
    i16 -27114, label %sw.bb40.sw.epilog193_crit_edge
    i16 -27119, label %sw.bb40.sw.epilog193_crit_edge370
    i16 -27117, label %sw.bb40.sw.epilog193_crit_edge371
    i16 -26863, label %sw.bb40.sw.epilog193_crit_edge372
    i16 -26861, label %sw.bb40.sw.epilog193_crit_edge373
  ]

sw.bb40.sw.epilog193_crit_edge373:                ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog193

sw.bb40.sw.epilog193_crit_edge372:                ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog193

sw.bb40.sw.epilog193_crit_edge371:                ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog193

sw.bb40.sw.epilog193_crit_edge370:                ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog193

sw.bb40.sw.epilog193_crit_edge:                   ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog193

if.else69:                                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %has_uvd to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %has_uvd, align 4
  br label %sw.epilog193

sw.bb72:                                          ; preds = %radeon_register_accessor_init.exit.sw.bb72_crit_edge, %radeon_register_accessor_init.exit.sw.bb72_crit_edge352, %radeon_register_accessor_init.exit.sw.bb72_crit_edge353, %radeon_register_accessor_init.exit.sw.bb72_crit_edge354
  %asic73 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %62 = ptrtoint ptr %asic73 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @rv770_asic, ptr %asic73, align 8
  %63 = ptrtoint ptr %has_uvd to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %has_uvd, align 4
  br label %sw.epilog193

sw.bb75:                                          ; preds = %radeon_register_accessor_init.exit.sw.bb75_crit_edge, %radeon_register_accessor_init.exit.sw.bb75_crit_edge355, %radeon_register_accessor_init.exit.sw.bb75_crit_edge356, %radeon_register_accessor_init.exit.sw.bb75_crit_edge357, %radeon_register_accessor_init.exit.sw.bb75_crit_edge358
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %7)
  %cmp77 = icmp eq i32 %7, 39
  %spec.select326 = select i1 %cmp77, i32 4, i32 6
  %64 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %spec.select326, ptr %35, align 4
  %asic84 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %65 = ptrtoint ptr %asic84 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @evergreen_asic, ptr %asic84, align 8
  %66 = ptrtoint ptr %has_uvd to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %has_uvd, align 4
  br label %sw.epilog193

sw.bb86:                                          ; preds = %radeon_register_accessor_init.exit.sw.bb86_crit_edge, %radeon_register_accessor_init.exit.sw.bb86_crit_edge359, %radeon_register_accessor_init.exit.sw.bb86_crit_edge360
  %asic87 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %67 = ptrtoint ptr %asic87 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @sumo_asic, ptr %asic87, align 8
  %68 = ptrtoint ptr %has_uvd to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %has_uvd, align 4
  br label %sw.epilog193

sw.bb89:                                          ; preds = %radeon_register_accessor_init.exit.sw.bb89_crit_edge, %radeon_register_accessor_init.exit.sw.bb89_crit_edge361, %radeon_register_accessor_init.exit.sw.bb89_crit_edge362
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %7)
  %cmp91 = icmp eq i32 %7, 49
  %spec.select327 = select i1 %cmp91, i32 4, i32 6
  %69 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %spec.select327, ptr %35, align 4
  %asic98 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %70 = ptrtoint ptr %asic98 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @btc_asic, ptr %asic98, align 8
  %71 = ptrtoint ptr %has_uvd to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %has_uvd, align 4
  br label %sw.epilog193

sw.bb100:                                         ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  %asic101 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %72 = ptrtoint ptr %asic101 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @cayman_asic, ptr %asic101, align 8
  %73 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 6, ptr %35, align 4
  %74 = ptrtoint ptr %has_uvd to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %has_uvd, align 4
  br label %sw.epilog193

sw.bb104:                                         ; preds = %radeon_register_accessor_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  %asic105 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %75 = ptrtoint ptr %asic105 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @trinity_asic, ptr %asic105, align 8
  %76 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 4, ptr %35, align 4
  %77 = ptrtoint ptr %has_uvd to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %has_uvd, align 4
  %78 = ptrtoint ptr %has_vce to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %has_vce, align 1
  %cg_flags = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 109
  %79 = ptrtoint ptr %cg_flags to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 16384, ptr %cg_flags, align 4
  br label %sw.epilog193

sw.bb109:                                         ; preds = %radeon_register_accessor_init.exit.sw.bb109_crit_edge, %radeon_register_accessor_init.exit.sw.bb109_crit_edge363, %radeon_register_accessor_init.exit.sw.bb109_crit_edge364, %radeon_register_accessor_init.exit.sw.bb109_crit_edge365, %radeon_register_accessor_init.exit.sw.bb109_crit_edge366
  %asic110 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %80 = ptrtoint ptr %asic110 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @si_asic, ptr %asic110, align 8
  %81 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %7, label %if.end125 [
    i32 56, label %if.end125.thread
    i32 55, label %if.end125.thread321
  ]

if.end125.thread:                                 ; preds = %sw.bb109
  call void @__sanitizer_cov_trace_pc() #8
  %82 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %35, align 4
  %83 = ptrtoint ptr %has_vce to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %has_vce, align 1
  %cg_flags157 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 109
  %84 = ptrtoint ptr %cg_flags157 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 105435, ptr %cg_flags157, align 4
  %pg_flags158 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 110
  %85 = ptrtoint ptr %pg_flags158 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %pg_flags158, align 8
  br label %sw.epilog193

if.end125.thread321:                              ; preds = %sw.bb109
  call void @__sanitizer_cov_trace_pc() #8
  %86 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 2, ptr %35, align 4
  %87 = ptrtoint ptr %has_uvd to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %has_uvd, align 4
  %cg_flags154 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 109
  %88 = ptrtoint ptr %cg_flags154 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 113627, ptr %cg_flags154, align 4
  %pg_flags155 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 110
  %89 = ptrtoint ptr %pg_flags155 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %pg_flags155, align 8
  br label %sw.epilog193

if.end125:                                        ; preds = %sw.bb109
  %90 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 6, ptr %35, align 4
  %91 = ptrtoint ptr %has_uvd to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %has_uvd, align 4
  %92 = ptrtoint ptr %has_vce to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 1, ptr %has_vce, align 1
  %93 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %7, label %sw.default [
    i32 52, label %sw.bb145
    i32 53, label %sw.bb147
    i32 54, label %sw.bb150
  ]

sw.bb145:                                         ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #8
  %cg_flags146 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 109
  %94 = ptrtoint ptr %cg_flags146 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 129627, ptr %cg_flags146, align 4
  %pg_flags = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 110
  %95 = ptrtoint ptr %pg_flags to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %pg_flags, align 8
  br label %sw.epilog193

sw.bb147:                                         ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #8
  %cg_flags148 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 109
  %96 = ptrtoint ptr %cg_flags148 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 130011, ptr %cg_flags148, align 4
  %pg_flags149 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 110
  %97 = ptrtoint ptr %pg_flags149 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %pg_flags149, align 8
  br label %sw.epilog193

sw.bb150:                                         ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #8
  %cg_flags151 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 109
  %98 = ptrtoint ptr %cg_flags151 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 130011, ptr %cg_flags151, align 4
  %pg_flags152 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 110
  %99 = ptrtoint ptr %pg_flags152 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 256, ptr %pg_flags152, align 8
  br label %sw.epilog193

sw.default:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #8
  %cg_flags159 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 109
  %100 = ptrtoint ptr %cg_flags159 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %cg_flags159, align 4
  %pg_flags160 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 110
  %101 = ptrtoint ptr %pg_flags160 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %pg_flags160, align 8
  br label %sw.epilog193

sw.bb161:                                         ; preds = %radeon_register_accessor_init.exit.sw.bb161_crit_edge, %radeon_register_accessor_init.exit.sw.bb161_crit_edge367
  %asic162 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %102 = ptrtoint ptr %asic162 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @ci_asic, ptr %asic162, align 8
  %103 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 6, ptr %35, align 4
  %104 = ptrtoint ptr %has_uvd to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 1, ptr %has_uvd, align 4
  %105 = ptrtoint ptr %has_vce to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 1, ptr %has_vce, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 57, i32 %7)
  %cmp167 = icmp eq i32 %7, 57
  %cg_flags170 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 109
  br i1 %cmp167, label %if.then169, label %if.else172

if.then169:                                       ; preds = %sw.bb161
  call void @__sanitizer_cov_trace_pc() #8
  %106 = ptrtoint ptr %cg_flags170 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 130939, ptr %cg_flags170, align 4
  %pg_flags171 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 110
  %107 = ptrtoint ptr %pg_flags171 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %pg_flags171, align 8
  br label %sw.epilog193

if.else172:                                       ; preds = %sw.bb161
  call void @__sanitizer_cov_trace_pc() #8
  %108 = ptrtoint ptr %cg_flags170 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 130907, ptr %cg_flags170, align 4
  %pg_flags174 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 110
  %109 = ptrtoint ptr %pg_flags174 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %pg_flags174, align 8
  br label %sw.epilog193

sw.bb176:                                         ; preds = %radeon_register_accessor_init.exit.sw.bb176_crit_edge, %radeon_register_accessor_init.exit.sw.bb176_crit_edge368, %radeon_register_accessor_init.exit.sw.bb176_crit_edge369
  %asic177 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %110 = ptrtoint ptr %asic177 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @kv_asic, ptr %asic177, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 58, i32 %7)
  %cmp179 = icmp eq i32 %7, 58
  %spec.select328 = select i1 %cmp179, i32 4, i32 2
  %111 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %spec.select328, ptr %35, align 4
  %112 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 109
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 130171, ptr %112, align 4
  %114 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 110
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %114, align 8
  %116 = ptrtoint ptr %has_uvd to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 1, ptr %has_uvd, align 4
  %117 = ptrtoint ptr %has_vce to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 1, ptr %has_vce, align 1
  br label %sw.epilog193

sw.epilog193:                                     ; preds = %sw.bb176, %if.else172, %if.then169, %sw.default, %sw.bb150, %sw.bb147, %sw.bb145, %if.end125.thread321, %if.end125.thread, %sw.bb104, %sw.bb100, %sw.bb89, %sw.bb86, %sw.bb75, %sw.bb72, %if.else69, %sw.bb40.sw.epilog193_crit_edge, %sw.bb40.sw.epilog193_crit_edge370, %sw.bb40.sw.epilog193_crit_edge371, %sw.bb40.sw.epilog193_crit_edge372, %sw.bb40.sw.epilog193_crit_edge373, %sw.bb37, %sw.bb35, %sw.bb33, %sw.bb31, %sw.bb29, %sw.bb27, %sw.bb25, %if.then15, %sw.bb13.sw.epilog193_crit_edge, %if.else10, %if.then8, %sw.bb2, %sw.bb
  %118 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %flags, align 8
  %and195 = and i32 %119, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and195)
  %tobool196.not = icmp eq i32 %and195, 0
  br i1 %tobool196.not, label %sw.epilog193.if.end204_crit_edge, label %if.then197

sw.epilog193.if.end204_crit_edge:                 ; preds = %sw.epilog193
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end204

if.then197:                                       ; preds = %sw.epilog193
  call void @__sanitizer_cov_trace_pc() #8
  %asic198 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %120 = ptrtoint ptr %asic198 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %asic198, align 8
  %get_memory_clock200 = getelementptr inbounds %struct.radeon_asic, ptr %121, i32 0, i32 20, i32 7
  %122 = ptrtoint ptr %get_memory_clock200 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr null, ptr %get_memory_clock200, align 4
  %123 = load ptr, ptr %asic198, align 8
  %set_memory_clock203 = getelementptr inbounds %struct.radeon_asic, ptr %123, i32 0, i32 20, i32 8
  %124 = ptrtoint ptr %set_memory_clock203 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr null, ptr %set_memory_clock203, align 4
  br label %if.end204

if.end204:                                        ; preds = %if.then197, %sw.epilog193.if.end204_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_uvd to i32))
  %125 = load i32, ptr @radeon_uvd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool205.not = icmp eq i32 %125, 0
  br i1 %tobool205.not, label %if.then206, label %if.end204.if.end208_crit_edge

if.end204.if.end208_crit_edge:                    ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end208

if.then206:                                       ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #8
  %126 = ptrtoint ptr %has_uvd to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 0, ptr %has_uvd, align 4
  br label %if.end208

if.end208:                                        ; preds = %if.then206, %if.end204.if.end208_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_vce to i32))
  %127 = load i32, ptr @radeon_vce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool209.not = icmp eq i32 %127, 0
  br i1 %tobool209.not, label %if.then210, label %if.end208.return_crit_edge

if.end208.return_crit_edge:                       ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then210:                                       ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #8
  %128 = ptrtoint ptr %has_vce to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 0, ptr %has_vce, align 1
  br label %return

return:                                           ; preds = %if.then210, %if.end208.return_crit_edge, %radeon_register_accessor_init.exit.return_crit_edge
  %retval.0 = phi i32 [ -22, %radeon_register_accessor_init.exit.return_crit_edge ], [ 0, %if.then210 ], [ 0, %if.end208.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_legacy_get_engine_clock(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_legacy_set_engine_clock(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_legacy_get_memory_clock(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_legacy_set_backlight_level(ptr noundef, i8 noundef zeroext) #2

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_invalid_rreg(ptr nocapture noundef readnone %rdev, i32 noundef %reg) #4 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8, i32 noundef %reg) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/radeon/radeon_asic.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 57, 0\0A.popsection", ""() #6, !srcloc !108
  unreachable
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_invalid_wreg(ptr nocapture noundef readnone %rdev, i32 noundef %reg, i32 noundef %v) #4 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9, i32 noundef %reg, i32 noundef %v) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/radeon/radeon_asic.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 75, 0\0A.popsection", ""() #6, !srcloc !109
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_pll_rreg(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_pll_wreg(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r420_mc_rreg(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r420_mc_wreg(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv515_mc_rreg(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv515_mc_wreg(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rs400_mc_rreg(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rs400_mc_wreg(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rs690_mc_rreg(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rs690_mc_wreg(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rs600_mc_rreg(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rs600_mc_wreg(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rs780_mc_rreg(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rs780_mc_wreg(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cik_pciep_rreg(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cik_pciep_wreg(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_pciep_rreg(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_pciep_wreg(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_resume(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_vga_set_state(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_asic_reset(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @r100_gui_idle(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_mc_wait_for_idle(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @radeon_invalid_get_allowed_info_register(ptr nocapture noundef readnone %rdev, i32 noundef %reg, ptr nocapture noundef readnone %val) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_irq_set(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_irq_process(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_bandwidth_update(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_get_vblank_counter(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_wait_for_vblank(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @radeon_legacy_get_backlight_level(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @r100_copy_blit(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_set_surface_reg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_clear_surface_reg(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_hpd_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_hpd_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @r100_hpd_sense(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_hpd_set_polarity(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_pm_misc(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_pm_prepare(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_pm_finish(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_pm_init_profile(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_pm_get_dynpm_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_legacy_set_clock_gating(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_page_flip(ptr noundef, i32 noundef, i64 noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @r100_page_flip_pending(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_gfx_get_rptr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_gfx_get_wptr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_gfx_set_wptr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_cs_parse(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_ring_ib_execute(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_fence_ring_emit(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @r100_semaphore_ring_emit(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_ring_test(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_ib_test(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @r100_gpu_is_lockup(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_ring_start(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @r200_copy_dma(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r300_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r300_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r300_resume(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r300_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r300_asic_reset(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r300_mc_wait_for_idle(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv370_get_pcie_lanes(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv370_set_pcie_lanes(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r300_cs_parse(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r300_fence_ring_emit(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r300_ring_start(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r420_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r420_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r420_resume(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r420_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @atombios_set_backlight_level(ptr noundef, i8 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @atombios_get_backlight_level(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r420_pm_init_profile(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_atom_get_engine_clock(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_atom_set_engine_clock(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_atom_get_memory_clock(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_atom_set_memory_clock(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_atom_set_clock_gating(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rs400_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rs400_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rs400_resume(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rs400_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rs400_mc_wait_for_idle(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rs400_gart_tlb_flush(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rs400_gart_get_page_entry(i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rs400_gart_set_page(ptr noundef, i32 noundef, i64 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rs600_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rs600_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rs600_resume(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rs600_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rs600_asic_reset(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rs600_mc_wait_for_idle(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rs600_gart_tlb_flush(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rs600_gart_get_page_entry(i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rs600_gart_set_page(ptr noundef, i32 noundef, i64 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rs600_irq_set(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rs600_irq_process(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rs600_bandwidth_update(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rs600_get_vblank_counter(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @avivo_wait_for_vblank(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rs600_hpd_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rs600_hpd_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rs600_hpd_sense(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rs600_hpd_set_polarity(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rs600_pm_misc(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rs600_pm_prepare(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rs600_pm_finish(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rs600_page_flip(ptr noundef, i32 noundef, i64 noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rs600_page_flip_pending(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rs690_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rs690_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rs690_resume(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rs690_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rs690_mc_wait_for_idle(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rs690_bandwidth_update(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv515_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv515_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv515_resume(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv515_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv515_mc_wait_for_idle(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv515_bandwidth_update(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv515_ring_start(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r520_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r520_resume(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r520_mc_wait_for_idle(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_resume(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_vga_set_state(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_asic_reset(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_mmio_hdp_flush(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @r600_gui_idle(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_mc_wait_for_idle(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_get_xclk(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @r600_get_gpu_clock_counter(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_get_allowed_info_register(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_pcie_gart_tlb_flush(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_irq_set(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_irq_process(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @r600_copy_cpdma(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @r600_copy_dma(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_set_surface_reg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_clear_surface_reg(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_hpd_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_hpd_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @r600_hpd_sense(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_hpd_set_polarity(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_pm_misc(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_pm_init_profile(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_pm_get_dynpm_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_get_pcie_lanes(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_set_pcie_lanes(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv6xx_get_temp(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_gfx_get_rptr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_gfx_get_wptr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_gfx_set_wptr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_cs_parse(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_ring_ib_execute(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_fence_ring_emit(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @r600_semaphore_ring_emit(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_ring_test(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_ib_test(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @r600_gfx_is_lockup(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_dma_get_rptr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_dma_get_wptr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_dma_set_wptr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_dma_cs_parse(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_dma_ring_ib_execute(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_dma_fence_ring_emit(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @r600_dma_semaphore_ring_emit(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_dma_ring_test(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_dma_ib_test(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @r600_dma_is_lockup(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_set_uvd_clocks(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv6xx_dpm_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv6xx_setup_asic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv6xx_dpm_enable(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_dpm_late_enable(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv6xx_dpm_disable(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_dpm_pre_set_power_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv6xx_dpm_set_power_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_dpm_post_set_power_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv6xx_dpm_display_configuration_changed(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv6xx_dpm_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv6xx_dpm_get_sclk(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv6xx_dpm_get_mclk(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv6xx_dpm_print_power_state(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv6xx_dpm_debugfs_print_current_performance_level(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv6xx_dpm_force_performance_level(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv6xx_dpm_get_current_sclk(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv6xx_dpm_get_current_mclk(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvd_v1_0_get_rptr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvd_v1_0_get_wptr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvd_v1_0_set_wptr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_uvd_cs_parse(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvd_v1_0_ib_execute(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvd_v1_0_fence_emit(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uvd_v1_0_semaphore_emit(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvd_v1_0_ring_test(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvd_v1_0_ib_test(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_ring_test_lockup(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rs780_pm_init_profile(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rs780_dpm_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rs780_dpm_setup_asic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rs780_dpm_enable(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rs780_dpm_disable(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rs780_dpm_set_power_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rs780_dpm_display_configuration_changed(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rs780_dpm_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rs780_dpm_get_sclk(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rs780_dpm_get_mclk(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rs780_dpm_print_power_state(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rs780_dpm_debugfs_print_current_performance_level(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rs780_dpm_force_performance_level(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rs780_dpm_get_current_sclk(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rs780_dpm_get_current_mclk(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_resume(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_get_xclk(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rv770_copy_dma(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_pm_misc(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_set_uvd_clocks(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_get_temp(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_dpm_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_dpm_setup_asic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_dpm_enable(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_dpm_late_enable(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_dpm_disable(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_dpm_set_power_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_dpm_display_configuration_changed(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_dpm_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_dpm_get_sclk(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_dpm_get_mclk(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_dpm_print_power_state(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_dpm_debugfs_print_current_performance_level(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_dpm_force_performance_level(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rv770_dpm_vblank_too_short(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_dpm_get_current_sclk(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_dpm_get_current_mclk(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_page_flip(ptr noundef, i32 noundef, i64 noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rv770_page_flip_pending(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvd_v2_2_fence_emit(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uvd_v2_2_semaphore_emit(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @evergreen_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @evergreen_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @evergreen_resume(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @evergreen_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @evergreen_asic_reset(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @evergreen_mc_wait_for_idle(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @evergreen_get_allowed_info_register(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @evergreen_pcie_gart_tlb_flush(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @evergreen_irq_set(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @evergreen_irq_process(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @evergreen_bandwidth_update(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @evergreen_get_vblank_counter(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce4_wait_for_vblank(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @evergreen_copy_dma(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @evergreen_hpd_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @evergreen_hpd_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @evergreen_hpd_sense(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @evergreen_hpd_set_polarity(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @evergreen_pm_misc(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @evergreen_pm_prepare(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @evergreen_pm_finish(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @evergreen_set_uvd_clocks(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @evergreen_get_temp(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cypress_dpm_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cypress_dpm_setup_asic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cypress_dpm_enable(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cypress_dpm_disable(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cypress_dpm_set_power_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cypress_dpm_display_configuration_changed(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cypress_dpm_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cypress_dpm_vblank_too_short(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @evergreen_page_flip(ptr noundef, i32 noundef, i64 noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @evergreen_page_flip_pending(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @evergreen_cs_parse(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @evergreen_ring_ib_execute(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @evergreen_gfx_is_lockup(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @evergreen_dma_cs_parse(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @evergreen_dma_ring_ib_execute(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @evergreen_dma_fence_ring_emit(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @evergreen_dma_is_lockup(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sumo_pm_init_profile(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sumo_set_uvd_clocks(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sumo_get_temp(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sumo_dpm_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sumo_dpm_setup_asic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sumo_dpm_enable(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sumo_dpm_late_enable(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sumo_dpm_disable(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sumo_dpm_pre_set_power_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sumo_dpm_set_power_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sumo_dpm_post_set_power_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sumo_dpm_display_configuration_changed(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sumo_dpm_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sumo_dpm_get_sclk(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sumo_dpm_get_mclk(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sumo_dpm_print_power_state(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sumo_dpm_debugfs_print_current_performance_level(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sumo_dpm_force_performance_level(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sumo_dpm_get_current_sclk(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sumo_dpm_get_current_mclk(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @sumo_dpm_get_current_vddc(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btc_pm_init_profile(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btc_dpm_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btc_dpm_setup_asic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btc_dpm_enable(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btc_dpm_disable(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btc_dpm_pre_set_power_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btc_dpm_set_power_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btc_dpm_post_set_power_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btc_dpm_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btc_dpm_get_sclk(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btc_dpm_get_mclk(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btc_dpm_debugfs_print_current_performance_level(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @btc_dpm_vblank_too_short(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btc_dpm_get_current_sclk(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btc_dpm_get_current_mclk(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cayman_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cayman_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cayman_resume(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cayman_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cayman_asic_reset(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cayman_get_allowed_info_register(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cayman_pcie_gart_tlb_flush(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cayman_vm_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cayman_vm_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cayman_dma_vm_copy_pages(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cayman_dma_vm_write_pages(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cayman_dma_vm_set_pages(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cayman_dma_vm_pad_ib(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_dpm_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ni_dpm_setup_asic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_dpm_enable(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ni_dpm_disable(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_dpm_pre_set_power_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_dpm_set_power_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ni_dpm_post_set_power_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ni_dpm_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_dpm_get_sclk(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_dpm_get_mclk(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ni_dpm_print_power_state(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ni_dpm_debugfs_print_current_performance_level(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_dpm_force_performance_level(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ni_dpm_vblank_too_short(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_dpm_get_current_sclk(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_dpm_get_current_mclk(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cayman_gfx_get_rptr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cayman_gfx_get_wptr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cayman_gfx_set_wptr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @evergreen_ib_parse(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cayman_ring_ib_execute(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cayman_fence_ring_emit(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cayman_vm_flush(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cayman_gfx_is_lockup(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cayman_dma_get_rptr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cayman_dma_get_wptr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cayman_dma_set_wptr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @evergreen_dma_ib_parse(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cayman_dma_ring_ib_execute(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cayman_dma_vm_flush(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cayman_dma_is_lockup(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uvd_v3_1_semaphore_emit(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce6_bandwidth_update(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tn_set_vce_clocks(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tn_get_temp(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trinity_dpm_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trinity_dpm_setup_asic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trinity_dpm_enable(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trinity_dpm_late_enable(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trinity_dpm_disable(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trinity_dpm_pre_set_power_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trinity_dpm_set_power_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trinity_dpm_post_set_power_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trinity_dpm_display_configuration_changed(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trinity_dpm_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trinity_dpm_get_sclk(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trinity_dpm_get_mclk(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trinity_dpm_print_power_state(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trinity_dpm_debugfs_print_current_performance_level(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trinity_dpm_force_performance_level(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trinity_dpm_enable_bapm(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trinity_dpm_get_current_sclk(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trinity_dpm_get_current_mclk(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vce_v1_0_get_rptr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vce_v1_0_get_wptr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vce_v1_0_set_wptr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_vce_cs_parse(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_vce_ib_execute(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_vce_fence_emit(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_vce_semaphore_emit(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_vce_ring_test(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_vce_ib_test(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @si_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si_resume(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si_asic_reset(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si_get_xclk(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @si_get_gpu_clock_counter(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si_get_allowed_info_register(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @si_pcie_gart_tlb_flush(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si_vm_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @si_vm_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @si_dma_vm_copy_pages(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @si_dma_vm_write_pages(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @si_dma_vm_set_pages(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si_irq_set(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si_irq_process(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @si_copy_dma(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si_set_uvd_clocks(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si_set_vce_clocks(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si_get_temp(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si_dpm_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @si_dpm_setup_asic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si_dpm_enable(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si_dpm_late_enable(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @si_dpm_disable(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si_dpm_pre_set_power_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si_dpm_set_power_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @si_dpm_post_set_power_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @si_dpm_display_configuration_changed(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @si_dpm_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @si_dpm_debugfs_print_current_performance_level(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si_dpm_force_performance_level(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @si_fan_ctrl_set_mode(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si_fan_ctrl_get_mode(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si_fan_ctrl_set_fan_speed_percent(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si_fan_ctrl_get_fan_speed_percent(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si_dpm_get_current_sclk(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si_dpm_get_current_mclk(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si_ib_parse(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @si_ring_ib_execute(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @si_fence_ring_emit(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @si_vm_flush(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @si_gfx_is_lockup(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @si_dma_vm_flush(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @si_dma_is_lockup(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cik_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cik_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cik_resume(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cik_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cik_asic_reset(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cik_get_xclk(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @cik_get_gpu_clock_counter(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cik_get_allowed_info_register(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cik_pcie_gart_tlb_flush(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cik_vm_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cik_vm_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cik_sdma_vm_copy_pages(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cik_sdma_vm_write_pages(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cik_sdma_vm_set_pages(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cik_sdma_vm_pad_ib(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cik_irq_set(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cik_irq_process(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce8_bandwidth_update(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cik_copy_cpdma(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cik_copy_dma(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cik_set_uvd_clocks(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cik_set_vce_clocks(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ci_get_temp(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ci_dpm_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ci_dpm_setup_asic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ci_dpm_enable(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ci_dpm_late_enable(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ci_dpm_disable(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ci_dpm_pre_set_power_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ci_dpm_set_power_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ci_dpm_post_set_power_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ci_dpm_display_configuration_changed(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ci_dpm_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ci_dpm_get_sclk(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ci_dpm_get_mclk(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ci_dpm_print_power_state(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ci_dpm_debugfs_print_current_performance_level(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ci_dpm_force_performance_level(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ci_dpm_vblank_too_short(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ci_dpm_powergate_uvd(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ci_fan_ctrl_set_mode(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ci_fan_ctrl_get_mode(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ci_fan_ctrl_set_fan_speed_percent(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ci_fan_ctrl_get_fan_speed_percent(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ci_dpm_get_current_sclk(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ci_dpm_get_current_mclk(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cik_gfx_get_rptr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cik_gfx_get_wptr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cik_gfx_set_wptr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cik_ib_parse(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cik_ring_ib_execute(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cik_fence_gfx_ring_emit(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cik_semaphore_ring_emit(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cik_vm_flush(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cik_ring_test(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cik_ib_test(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cik_gfx_is_lockup(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cik_compute_get_rptr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cik_compute_get_wptr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cik_compute_set_wptr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cik_fence_compute_ring_emit(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cik_sdma_get_rptr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cik_sdma_get_wptr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cik_sdma_set_wptr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cik_sdma_ring_ib_execute(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cik_sdma_fence_ring_emit(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cik_sdma_semaphore_ring_emit(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cik_dma_vm_flush(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cik_sdma_ring_test(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cik_sdma_ib_test(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cik_sdma_is_lockup(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kv_get_temp(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kv_dpm_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kv_dpm_setup_asic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kv_dpm_enable(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kv_dpm_late_enable(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kv_dpm_disable(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kv_dpm_pre_set_power_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kv_dpm_set_power_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kv_dpm_post_set_power_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kv_dpm_display_configuration_changed(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kv_dpm_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kv_dpm_get_sclk(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kv_dpm_get_mclk(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kv_dpm_print_power_state(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kv_dpm_debugfs_print_current_performance_level(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kv_dpm_force_performance_level(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kv_dpm_powergate_uvd(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kv_dpm_enable_bapm(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kv_dpm_get_current_sclk(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kv_dpm_get_current_mclk(ptr noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97}
!llvm.module.flags = !{!99, !100, !101, !102, !103, !104, !105, !106}
!llvm.ident = !{!107}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/radeon_asic.c", i32 159, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @radeon_agp_disable._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @radeon_agp_disable._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @radeon_agp_disable._entry.3, !7, !"_entry", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/radeon/radeon_asic.c", i32 165, i32 3}
!8 = !{ptr @radeon_agp_disable._entry_ptr.4, !7, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/radeon/radeon_asic.c", i32 171, i32 3}
!11 = !{ptr @radeon_agp_disable._entry.5, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @radeon_agp_disable._entry_ptr.7, !10, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/radeon/radeon_asic.c", i32 56, i32 2}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/radeon/radeon_asic.c", i32 73, i32 2}
!17 = !{ptr @r100_asic, !18, !"r100_asic", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/radeon/radeon_asic.c", i32 198, i32 27}
!19 = !{ptr @r100_gfx_ring, !20, !"r100_gfx_ring", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/radeon/radeon_asic.c", i32 184, i32 38}
!21 = !{ptr @r200_asic, !22, !"r200_asic", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/radeon/radeon_asic.c", i32 266, i32 27}
!23 = !{ptr @r300_asic_pcie, !24, !"r300_asic_pcie", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/radeon/radeon_asic.c", i32 430, i32 27}
!25 = !{ptr @r300_gfx_ring, !26, !"r300_gfx_ring", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/radeon/radeon_asic.c", i32 334, i32 38}
!27 = !{ptr @r300_asic, !28, !"r300_asic", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/radeon/radeon_asic.c", i32 362, i32 27}
!29 = !{ptr @r420_asic, !30, !"r420_asic", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/radeon/radeon_asic.c", i32 498, i32 27}
!31 = !{ptr @rs400_asic, !32, !"rs400_asic", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/radeon/radeon_asic.c", i32 566, i32 27}
!33 = !{ptr @rs600_asic, !34, !"rs600_asic", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/radeon/radeon_asic.c", i32 634, i32 27}
!35 = !{ptr @rs690_asic, !36, !"rs690_asic", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/radeon/radeon_asic.c", i32 702, i32 27}
!37 = !{ptr @rv515_asic, !38, !"rv515_asic", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/radeon/radeon_asic.c", i32 770, i32 27}
!39 = !{ptr @rv515_gfx_ring, !40, !"rv515_gfx_ring", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/radeon/radeon_asic.c", i32 348, i32 38}
!41 = !{ptr @r520_asic, !42, !"r520_asic", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/radeon/radeon_asic.c", i32 838, i32 27}
!43 = !{ptr @r600_asic, !44, !"r600_asic", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/radeon/radeon_asic.c", i32 932, i32 27}
!45 = !{ptr @r600_gfx_ring, !46, !"r600_gfx_ring", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/radeon/radeon_asic.c", i32 906, i32 38}
!47 = !{ptr @r600_dma_ring, !48, !"r600_dma_ring", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/radeon/radeon_asic.c", i32 919, i32 38}
!49 = !{ptr @rv6xx_asic, !50, !"rv6xx_asic", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/radeon/radeon_asic.c", i32 1017, i32 27}
!51 = !{ptr @rv6xx_uvd_ring, !52, !"rv6xx_uvd_ring", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/radeon/radeon_asic.c", i32 1004, i32 38}
!53 = !{ptr @rs780_asic, !54, !"rs780_asic", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/radeon/radeon_asic.c", i32 1110, i32 27}
!55 = !{ptr @rv770_asic, !56, !"rv770_asic", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/radeon/radeon_asic.c", i32 1216, i32 27}
!57 = !{ptr @rv770_uvd_ring, !58, !"rv770_uvd_ring", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/radeon/radeon_asic.c", i32 1203, i32 38}
!59 = !{ptr @evergreen_asic, !60, !"evergreen_asic", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/radeon/radeon_asic.c", i32 1336, i32 27}
!61 = !{ptr @evergreen_gfx_ring, !62, !"evergreen_gfx_ring", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/radeon/radeon_asic.c", i32 1310, i32 38}
!63 = !{ptr @evergreen_dma_ring, !64, !"evergreen_dma_ring", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/radeon/radeon_asic.c", i32 1323, i32 38}
!65 = !{ptr @sumo_asic, !66, !"sumo_asic", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/radeon/radeon_asic.c", i32 1430, i32 27}
!67 = !{ptr @btc_asic, !68, !"btc_asic", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/radeon/radeon_asic.c", i32 1524, i32 27}
!69 = !{ptr @cayman_asic, !70, !"cayman_asic", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/radeon/radeon_asic.c", i32 1661, i32 27}
!71 = !{ptr @cayman_gfx_ring, !72, !"cayman_gfx_ring", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/radeon/radeon_asic.c", i32 1618, i32 38}
!73 = !{ptr @cayman_dma_ring, !74, !"cayman_dma_ring", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/radeon/radeon_asic.c", i32 1633, i32 38}
!75 = !{ptr @cayman_uvd_ring, !76, !"cayman_uvd_ring", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/radeon/radeon_asic.c", i32 1648, i32 38}
!77 = !{ptr @trinity_asic, !78, !"trinity_asic", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/radeon/radeon_asic.c", i32 1779, i32 27}
!79 = !{ptr @trinity_vce_ring, !80, !"trinity_vce_ring", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/radeon/radeon_asic.c", i32 1766, i32 38}
!81 = !{ptr @si_asic, !82, !"si_asic", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/radeon/radeon_asic.c", i32 1917, i32 27}
!83 = !{ptr @si_gfx_ring, !84, !"si_gfx_ring", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/radeon/radeon_asic.c", i32 1887, i32 38}
!85 = !{ptr @si_dma_ring, !86, !"si_dma_ring", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/radeon/radeon_asic.c", i32 1902, i32 38}
!87 = !{ptr @ci_asic, !88, !"ci_asic", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/radeon/radeon_asic.c", i32 2087, i32 27}
!89 = !{ptr @ci_gfx_ring, !90, !"ci_gfx_ring", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/radeon/radeon_asic.c", i32 2029, i32 38}
!91 = !{ptr @ci_cp_ring, !92, !"ci_cp_ring", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/radeon/radeon_asic.c", i32 2044, i32 38}
!93 = !{ptr @ci_dma_ring, !94, !"ci_dma_ring", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/radeon/radeon_asic.c", i32 2059, i32 38}
!95 = !{ptr @ci_vce_ring, !96, !"ci_vce_ring", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/radeon/radeon_asic.c", i32 2074, i32 38}
!97 = !{ptr @kv_asic, !98, !"kv_asic", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/radeon/radeon_asic.c", i32 2200, i32 27}
!99 = !{i32 1, !"wchar_size", i32 2}
!100 = !{i32 1, !"min_enum_size", i32 4}
!101 = !{i32 8, !"branch-target-enforcement", i32 0}
!102 = !{i32 8, !"sign-return-address", i32 0}
!103 = !{i32 8, !"sign-return-address-all", i32 0}
!104 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!105 = !{i32 7, !"uwtable", i32 1}
!106 = !{i32 7, !"frame-pointer", i32 2}
!107 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!108 = !{i64 2158568328, i64 2158568828, i64 2158568365, i64 2158568421, i64 2158568455, i64 2158568479, i64 2158568520, i64 2158568541, i64 2158568569, i64 2158568603}
!109 = !{i64 2158570029, i64 2158570529, i64 2158570066, i64 2158570122, i64 2158570156, i64 2158570180, i64 2158570221, i64 2158570242, i64 2158570270, i64 2158570304}
