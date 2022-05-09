; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/ni.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/ni.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cs_section_def = type { ptr, i32 }
%struct.cs_extent_def = type { ptr, i32, i32 }
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
%struct.firmware = type { i32, ptr, ptr }
%struct.radeon_fence = type { %struct.dma_fence, ptr, i64, i32, i8, %struct.wait_queue_entry }
%struct.dma_fence = type { ptr, ptr, %union.anon.84, i64, i64, i32, %struct.kref, i32 }
%union.anon.84 = type { i64 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.radeon_ib = type { ptr, i32, i64, ptr, i32, ptr, ptr, i8, %struct.radeon_sync }
%struct.radeon_sync = type { [4 x ptr], [8 x ptr], ptr }
%struct.radeon_vm = type { %struct.mutex, %struct.rb_root_cached, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, ptr, ptr, [8 x %struct.radeon_vm_id] }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.radeon_vm_id = type { i32, i64, ptr, ptr }
%struct.evergreen_mc_save = type { i32, i32, [6 x i8] }
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
%struct.atom_clock_dividers = type { i32, %union.anon.109, i32, i8, i8, i32, i32, i32, i32 }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type { i32 }
%struct.radeon_asic_ring = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_firmware324 = internal constant [37 x i8] c"radeon.firmware=radeon/BARTS_pfp.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware325 = internal constant [36 x i8] c"radeon.firmware=radeon/BARTS_me.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware326 = internal constant [36 x i8] c"radeon.firmware=radeon/BARTS_mc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware327 = internal constant [37 x i8] c"radeon.firmware=radeon/BARTS_smc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware328 = internal constant [35 x i8] c"radeon.firmware=radeon/BTC_rlc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware329 = internal constant [37 x i8] c"radeon.firmware=radeon/TURKS_pfp.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware330 = internal constant [36 x i8] c"radeon.firmware=radeon/TURKS_me.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware331 = internal constant [36 x i8] c"radeon.firmware=radeon/TURKS_mc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware332 = internal constant [37 x i8] c"radeon.firmware=radeon/TURKS_smc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware333 = internal constant [38 x i8] c"radeon.firmware=radeon/CAICOS_pfp.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware334 = internal constant [37 x i8] c"radeon.firmware=radeon/CAICOS_me.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware335 = internal constant [37 x i8] c"radeon.firmware=radeon/CAICOS_mc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware336 = internal constant [38 x i8] c"radeon.firmware=radeon/CAICOS_smc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware337 = internal constant [38 x i8] c"radeon.firmware=radeon/CAYMAN_pfp.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware338 = internal constant [37 x i8] c"radeon.firmware=radeon/CAYMAN_me.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware339 = internal constant [37 x i8] c"radeon.firmware=radeon/CAYMAN_mc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware340 = internal constant [38 x i8] c"radeon.firmware=radeon/CAYMAN_rlc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware341 = internal constant [38 x i8] c"radeon.firmware=radeon/CAYMAN_smc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware342 = internal constant [37 x i8] c"radeon.firmware=radeon/ARUBA_pfp.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware343 = internal constant [36 x i8] c"radeon.firmware=radeon/ARUBA_me.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware344 = internal constant [37 x i8] c"radeon.firmware=radeon/ARUBA_rlc.bin\00", section ".modinfo", align 1
@barts_io_mc_regs = internal constant { [29 x [2 x i32]], [56 x i8] } { [29 x [2 x i32]] [[2 x i32] [i32 119, i32 -16711424], [2 x i32] [i32 120, i32 0], [2 x i32] [i32 121, i32 5172], [2 x i32] [i32 122, i32 -871830520], [2 x i32] [i32 123, i32 262144], [2 x i32] [i32 124, i32 32960], [2 x i32] [i32 125, i32 150994944], [2 x i32] [i32 126, i32 2163716], [2 x i32] [i32 129, i32 145287168], [2 x i32] [i32 130, i32 197700], [2 x i32] [i32 131, i32 0], [2 x i32] [i32 133, i32 1], [2 x i32] [i32 134, i32 2], [2 x i32] [i32 135, i32 1212743680], [2 x i32] [i32 136, i32 539248199], [2 x i32] [i32 137, i32 5], [2 x i32] [i32 139, i32 1711472640], [2 x i32] [i32 140, i32 26115], [2 x i32] [i32 141, i32 256], [2 x i32] [i32 143, i32 7178], [2 x i32] [i32 144, i32 -16777215], [2 x i32] [i32 148, i32 1052929], [2 x i32] [i32 149, i32 4095], [2 x i32] [i32 150, i32 1142783], [2 x i32] [i32 151, i32 1610678272], [2 x i32] [i32 152, i32 268500992], [2 x i32] [i32 153, i32 24576], [2 x i32] [i32 154, i32 4096], [2 x i32] [i32 159, i32 9726464]], [56 x i8] zeroinitializer }, align 32
@turks_io_mc_regs = internal constant { [29 x [2 x i32]], [56 x i8] } { [29 x [2 x i32]] [[2 x i32] [i32 119, i32 -16711424], [2 x i32] [i32 120, i32 0], [2 x i32] [i32 121, i32 5172], [2 x i32] [i32 122, i32 -871830520], [2 x i32] [i32 123, i32 262144], [2 x i32] [i32 124, i32 32960], [2 x i32] [i32 125, i32 150994944], [2 x i32] [i32 126, i32 2163716], [2 x i32] [i32 129, i32 145287168], [2 x i32] [i32 130, i32 197700], [2 x i32] [i32 131, i32 0], [2 x i32] [i32 133, i32 1], [2 x i32] [i32 134, i32 2], [2 x i32] [i32 135, i32 1212743680], [2 x i32] [i32 136, i32 539248199], [2 x i32] [i32 137, i32 5], [2 x i32] [i32 139, i32 1711472640], [2 x i32] [i32 140, i32 26115], [2 x i32] [i32 141, i32 256], [2 x i32] [i32 143, i32 7178], [2 x i32] [i32 144, i32 -16777215], [2 x i32] [i32 148, i32 1052929], [2 x i32] [i32 149, i32 4095], [2 x i32] [i32 150, i32 1142783], [2 x i32] [i32 151, i32 1610678272], [2 x i32] [i32 152, i32 268500992], [2 x i32] [i32 153, i32 24576], [2 x i32] [i32 154, i32 4096], [2 x i32] [i32 159, i32 9660928]], [56 x i8] zeroinitializer }, align 32
@caicos_io_mc_regs = internal constant { [29 x [2 x i32]], [56 x i8] } { [29 x [2 x i32]] [[2 x i32] [i32 119, i32 -16711424], [2 x i32] [i32 120, i32 0], [2 x i32] [i32 121, i32 5172], [2 x i32] [i32 122, i32 -871830520], [2 x i32] [i32 123, i32 262144], [2 x i32] [i32 124, i32 32960], [2 x i32] [i32 125, i32 150994944], [2 x i32] [i32 126, i32 2163716], [2 x i32] [i32 129, i32 145287168], [2 x i32] [i32 130, i32 197700], [2 x i32] [i32 131, i32 0], [2 x i32] [i32 133, i32 1], [2 x i32] [i32 134, i32 2], [2 x i32] [i32 135, i32 1212743680], [2 x i32] [i32 136, i32 539248199], [2 x i32] [i32 137, i32 5], [2 x i32] [i32 139, i32 1711472640], [2 x i32] [i32 140, i32 26115], [2 x i32] [i32 141, i32 256], [2 x i32] [i32 143, i32 7178], [2 x i32] [i32 144, i32 -16777215], [2 x i32] [i32 148, i32 1052929], [2 x i32] [i32 149, i32 4095], [2 x i32] [i32 150, i32 1142783], [2 x i32] [i32 151, i32 1610678272], [2 x i32] [i32 152, i32 268500992], [2 x i32] [i32 153, i32 24576], [2 x i32] [i32 154, i32 4096], [2 x i32] [i32 159, i32 9529856]], [56 x i8] zeroinitializer }, align 32
@cayman_io_mc_regs = internal constant { [29 x [2 x i32]], [56 x i8] } { [29 x [2 x i32]] [[2 x i32] [i32 119, i32 -16711424], [2 x i32] [i32 120, i32 0], [2 x i32] [i32 121, i32 5172], [2 x i32] [i32 122, i32 -871830520], [2 x i32] [i32 123, i32 262144], [2 x i32] [i32 124, i32 32960], [2 x i32] [i32 125, i32 150994944], [2 x i32] [i32 126, i32 2163716], [2 x i32] [i32 129, i32 145287168], [2 x i32] [i32 130, i32 197700], [2 x i32] [i32 131, i32 0], [2 x i32] [i32 133, i32 1], [2 x i32] [i32 134, i32 2], [2 x i32] [i32 135, i32 1212743680], [2 x i32] [i32 136, i32 539248199], [2 x i32] [i32 137, i32 5], [2 x i32] [i32 139, i32 1711472640], [2 x i32] [i32 140, i32 26115], [2 x i32] [i32 141, i32 256], [2 x i32] [i32 143, i32 7178], [2 x i32] [i32 144, i32 -16777215], [2 x i32] [i32 148, i32 1052929], [2 x i32] [i32 149, i32 4095], [2 x i32] [i32 150, i32 1142783], [2 x i32] [i32 151, i32 1610678272], [2 x i32] [i32 152, i32 268500992], [2 x i32] [i32 153, i32 24576], [2 x i32] [i32 154, i32 4096], [2 x i32] [i32 159, i32 9923328]], [56 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BARTS\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"BTC\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TURKS\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CAICOS\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CAYMAN\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ARUBA\00", [26 x i8] zeroinitializer }, align 32
@ni_init_microcode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 760, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016[drm] Loading %s Microcode\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ni_init_microcode\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/gpu/drm/radeon/ni.c\00", [36 x i8] zeroinitializer }, align 32
@ni_init_microcode._entry_ptr = internal global ptr @ni_init_microcode._entry, section ".printk_index", align 4
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"radeon/%s_pfp.bin\00", [46 x i8] zeroinitializer }, align 32
@ni_init_microcode._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.8, ptr @.str.9, i32 768, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013ni_cp: Bogus length %zu in firmware \22%s\22\0A\00", [52 x i8] zeroinitializer }, align 32
@ni_init_microcode._entry_ptr.13 = internal global ptr @ni_init_microcode._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"radeon/%s_me.bin\00", [47 x i8] zeroinitializer }, align 32
@ni_init_microcode._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.8, ptr @.str.9, i32 779, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ni_init_microcode._entry_ptr.16 = internal global ptr @ni_init_microcode._entry.15, section ".printk_index", align 4
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"radeon/%s_rlc.bin\00", [46 x i8] zeroinitializer }, align 32
@ni_init_microcode._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.8, ptr @.str.9, i32 789, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013ni_rlc: Bogus length %zu in firmware \22%s\22\0A\00", [51 x i8] zeroinitializer }, align 32
@ni_init_microcode._entry_ptr.20 = internal global ptr @ni_init_microcode._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"radeon/%s_mc.bin\00", [47 x i8] zeroinitializer }, align 32
@ni_init_microcode._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.8, ptr @.str.9, i32 801, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013ni_mc: Bogus length %zu in firmware \22%s\22\0A\00", [52 x i8] zeroinitializer }, align 32
@ni_init_microcode._entry_ptr.24 = internal global ptr @ni_init_microcode._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"radeon/%s_smc.bin\00", [46 x i8] zeroinitializer }, align 32
@ni_init_microcode._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.8, ptr @.str.9, i32 810, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013smc: error loading firmware \22%s\22\0A\00", [60 x i8] zeroinitializer }, align 32
@ni_init_microcode._entry_ptr.28 = internal global ptr @ni_init_microcode._entry.26, section ".printk_index", align 4
@ni_init_microcode._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.8, ptr @.str.9, i32 816, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ni_init_microcode._entry_ptr.30 = internal global ptr @ni_init_microcode._entry.29, section ".printk_index", align 4
@ni_init_microcode._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.8, ptr @.str.9, i32 825, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013ni_cp: Failed to load firmware \22%s\22\0A\00", [57 x i8] zeroinitializer }, align 32
@ni_init_microcode._entry_ptr.33 = internal global ptr @ni_init_microcode._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"MC busy: 0x%08X, clearing.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cayman startup failed on resume\0A\00", [63 x i8] zeroinitializer }, align 32
@cayman_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.9, i32 2353, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Expecting atombios for cayman GPU\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cayman_init\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cayman_init._entry_ptr = internal global ptr @cayman_init._entry, section ".printk_index", align 4
@cayman_init._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.37, ptr @.str.9, i32 2363, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Card not posted and no BIOS - ignoring\0A\00", [56 x i8] zeroinitializer }, align 32
@cayman_init._entry_ptr.42 = internal global ptr @cayman_init._entry.40, section ".printk_index", align 4
@cayman_init._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.37, ptr @.str.9, i32 2366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016[drm] GPU not posted. posting now...\0A\00", [56 x i8] zeroinitializer }, align 32
@cayman_init._entry_ptr.45 = internal global ptr @cayman_init._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to load firmware!\0A\00", [38 x i8] zeroinitializer }, align 32
@cayman_init._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.37, ptr @.str.9, i32 2433, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"disabling GPU acceleration\0A\00", [36 x i8] zeroinitializer }, align 32
@cayman_init._entry_ptr.49 = internal global ptr @cayman_init._entry.47, section ".printk_index", align 4
@.str.50 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"radeon: MC ucode required for NI+.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CB\00", [29 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CB_FMASK\00", [23 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CB_CMASK\00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CB_IMMED\00", [23 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"DB\00", [29 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DB_HTILE\00", [23 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"SX\00", [29 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DB_STEN\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"TC_TFETCH\00", [22 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"TC_VFETCH\00", [22 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"VC\00", [29 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CP\00", [29 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"SH\00", [29 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VGT\00", [28 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"IH\00", [29 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RLC\00", [28 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DMA\00", [28 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HDP\00", [28 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@cayman_vm_decode_fault._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.9, i32 2667, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"VM fault (0x%02x, vmid %d) at page %u, %s from %s (%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cayman_vm_decode_fault\00", [41 x i8] zeroinitializer }, align 32
@cayman_vm_decode_fault._entry_ptr = internal global ptr @cayman_vm_decode_fault._entry, section ".printk_index", align 4
@.str.72 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"radeon: writing more dwords to the ring than expected!\0A\00", [40 x i8] zeroinitializer }, align 32
@cayman_gpu_soft_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.9, i32 1820, ptr @.str.77, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"GPU softreset: 0x%08X\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cayman_gpu_soft_reset\00", [42 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cayman_gpu_soft_reset._entry_ptr = internal global ptr @cayman_gpu_soft_reset._entry, section ".printk_index", align 4
@cayman_gpu_soft_reset._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.76, ptr @.str.9, i32 1824, ptr @.str.77, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"  VM_CONTEXT0_PROTECTION_FAULT_ADDR   0x%08X\0A\00", [50 x i8] zeroinitializer }, align 32
@cayman_gpu_soft_reset._entry_ptr.80 = internal global ptr @cayman_gpu_soft_reset._entry.78, section ".printk_index", align 4
@cayman_gpu_soft_reset._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.76, ptr @.str.9, i32 1826, ptr @.str.77, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"  VM_CONTEXT0_PROTECTION_FAULT_STATUS 0x%08X\0A\00", [50 x i8] zeroinitializer }, align 32
@cayman_gpu_soft_reset._entry_ptr.83 = internal global ptr @cayman_gpu_soft_reset._entry.81, section ".printk_index", align 4
@cayman_gpu_soft_reset._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.76, ptr @.str.9, i32 1828, ptr @.str.77, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"  VM_CONTEXT1_PROTECTION_FAULT_ADDR   0x%08X\0A\00", [50 x i8] zeroinitializer }, align 32
@cayman_gpu_soft_reset._entry_ptr.86 = internal global ptr @cayman_gpu_soft_reset._entry.84, section ".printk_index", align 4
@cayman_gpu_soft_reset._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.76, ptr @.str.9, i32 1830, ptr @.str.77, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"  VM_CONTEXT1_PROTECTION_FAULT_STATUS 0x%08X\0A\00", [50 x i8] zeroinitializer }, align 32
@cayman_gpu_soft_reset._entry_ptr.89 = internal global ptr @cayman_gpu_soft_reset._entry.87, section ".printk_index", align 4
@cayman_gpu_soft_reset._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.76, ptr @.str.9, i32 1853, ptr @.str.92, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Wait for MC idle timedout !\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cayman_gpu_soft_reset._entry_ptr.93 = internal global ptr @cayman_gpu_soft_reset._entry.90, section ".printk_index", align 4
@cayman_gpu_soft_reset._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.76, ptr @.str.9, i32 1909, ptr @.str.77, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"GRBM_SOFT_RESET=0x%08X\0A\00", [40 x i8] zeroinitializer }, align 32
@cayman_gpu_soft_reset._entry_ptr.96 = internal global ptr @cayman_gpu_soft_reset._entry.94, section ".printk_index", align 4
@cayman_gpu_soft_reset._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.76, ptr @.str.9, i32 1923, ptr @.str.77, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SRBM_SOFT_RESET=0x%08X\0A\00", [40 x i8] zeroinitializer }, align 32
@cayman_gpu_soft_reset._entry_ptr.99 = internal global ptr @cayman_gpu_soft_reset._entry.97, section ".printk_index", align 4
@cayman_golden_registers = internal constant { [111 x i32], [100 x i8] } { [111 x i32] [i32 24244, i32 -1, i32 2, i32 24184, i32 -1892605967, i32 1048816, i32 16272, i32 -65536, i32 -16777216, i32 37192, i32 -65536, i32 -16777216, i32 16276, i32 -65536, i32 -16777216, i32 37196, i32 -65536, i32 -16777216, i32 3192, i32 128, i32 128, i32 3028, i32 1879521143, i32 69635, i32 53292, i32 -1073742049, i32 138547200, i32 53432, i32 1937192823, i32 33624067, i32 23488, i32 2097152, i32 1343225856, i32 39160, i32 863450999, i32 33624067, i32 39164, i32 -1, i32 1985220658, i32 28720, i32 822084369, i32 17, i32 12104, i32 863450999, i32 1107361793, i32 27432, i32 16, i32 18, i32 30504, i32 16, i32 18, i32 66344, i32 16, i32 18, i32 69416, i32 16, i32 18, i32 72488, i32 16, i32 18, i32 75560, i32 16, i32 18, i32 9228, i32 2047, i32 0, i32 35348, i32 -268435425, i32 7, i32 35620, i32 1073692671, i32 16715775, i32 35600, i32 65295, i32 0, i32 166476, i32 134217727, i32 100663296, i32 268, i32 1, i32 65539, i32 41004, i32 -1, i32 155, i32 37180, i32 271, i32 16777472, i32 35844, i32 -117505793, i32 1080033376, i32 164688, i32 3841, i32 0, i32 38152, i32 922746911, i32 2, i32 38412, i32 -1, i32 1417032208, i32 35012, i32 2046691, i32 130, i32 35024, i32 -1, i32 255909696, i32 35028, i32 31, i32 16, i32 35188, i32 -1, i32 0], [100 x i8] zeroinitializer }, align 32
@cayman_golden_registers2 = internal constant { [18 x i32], [56 x i8] } { [18 x i32] [i32 15964, i32 -1, i32 0, i32 15944, i32 -1, i32 0, i32 15948, i32 -1, i32 0, i32 15972, i32 -1, i32 0, i32 15952, i32 -1, i32 0, i32 15968, i32 -1, i32 0], [56 x i8] zeroinitializer }, align 32
@dvst_golden_registers = internal constant { [162 x i32], [184 x i8] } { [162 x i32] [i32 1680, i32 1073692671, i32 549453875, i32 37260, i32 268374015, i32 65542, i32 37288, i32 268374015, i32 65542, i32 37200, i32 -8193, i32 1855209536, i32 37244, i32 268374015, i32 196610, i32 37272, i32 268374015, i32 196610, i32 37212, i32 268374015, i32 65536, i32 16272, i32 -65535, i32 -16777216, i32 37240, i32 268374015, i32 458752, i32 37268, i32 268374015, i32 458752, i32 37192, i32 -65535, i32 -16777216, i32 37264, i32 268374015, i32 589832, i32 37292, i32 268374015, i32 589832, i32 16276, i32 -65536, i32 -16777216, i32 37196, i32 -65536, i32 -16777216, i32 37532, i32 4095, i32 1, i32 21988, i32 -10452993, i32 -67108608, i32 35352, i32 -16773121, i32 256, i32 35624, i32 -16773121, i32 256, i32 37188, i32 -258049, i32 256, i32 28376, i32 65793, i32 65536, i32 38960, i32 -1, i32 0, i32 38964, i32 -267386881, i32 1024, i32 38968, i32 -2, i32 0, i32 53440, i32 -16773121, i32 256, i32 53292, i32 -1073742049, i32 138547200, i32 53432, i32 1937192823, i32 302055425, i32 23472, i32 240, i32 112, i32 39160, i32 1937192823, i32 302055425, i32 39164, i32 -1, i32 16, i32 39804, i32 16711680, i32 16515072, i32 32816, i32 7951, i32 4106, i32 12104, i32 1937192823, i32 302055425, i32 9224, i32 196608, i32 786559, i32 35348, i32 -268435393, i32 7, i32 35620, i32 1073692671, i32 16715775, i32 35600, i32 65295, i32 0, i32 166476, i32 134217727, i32 100663296, i32 1240, i32 4095, i32 256, i32 40968, i32 -1, i32 65536, i32 37180, i32 -64513, i32 16777472, i32 35840, i32 255, i32 3, i32 35844, i32 -117505793, i32 1080033376, i32 36080, i32 536813567, i32 148898832, i32 164688, i32 3841, i32 0, i32 38152, i32 -150993121, i32 2, i32 38412, i32 -1, i32 1417032208, i32 134904, i32 33489407, i32 2, i32 134808, i32 -1025, i32 2097152, i32 131420, i32 -1, i32 3904, i32 35012, i32 2046691, i32 130, i32 35192, i32 1073741823, i32 67436864, i32 35028, i32 31, i32 16, i32 35188, i32 -1, i32 0], [184 x i8] zeroinitializer }, align 32
@dvst_golden_registers2 = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 2296, i32 -1, i32 0, i32 2300, i32 3670016, i32 0, i32 2296, i32 -1, i32 1, i32 2300, i32 234881024, i32 0], [48 x i8] zeroinitializer }, align 32
@scrapper_golden_registers = internal constant { [309 x i32], [300 x i8] } { [309 x i32] [i32 1680, i32 1073692671, i32 549453875, i32 37260, i32 268374015, i32 65542, i32 37260, i32 268374015, i32 65542, i32 37288, i32 268374015, i32 65542, i32 37288, i32 268374015, i32 65542, i32 37200, i32 -8193, i32 1855209536, i32 37200, i32 -8193, i32 1855209536, i32 37244, i32 268374015, i32 196610, i32 37244, i32 268374015, i32 196610, i32 37272, i32 268374015, i32 196610, i32 37272, i32 268374015, i32 196610, i32 37212, i32 268374015, i32 65536, i32 37212, i32 268374015, i32 65536, i32 16272, i32 -65535, i32 -16777216, i32 16272, i32 -65535, i32 -16777216, i32 37240, i32 268374015, i32 458752, i32 37240, i32 268374015, i32 458752, i32 37268, i32 268374015, i32 458752, i32 37268, i32 268374015, i32 458752, i32 37192, i32 -65535, i32 -16777216, i32 37192, i32 -65535, i32 -16777216, i32 37264, i32 268374015, i32 589832, i32 37264, i32 268374015, i32 589832, i32 37292, i32 268374015, i32 589832, i32 37292, i32 268374015, i32 589832, i32 16276, i32 -65536, i32 -16777216, i32 16276, i32 -65536, i32 -16777216, i32 37196, i32 -65536, i32 -16777216, i32 37196, i32 -65536, i32 -16777216, i32 37532, i32 4095, i32 1, i32 37532, i32 4095, i32 1, i32 21988, i32 -10452993, i32 -67108608, i32 35352, i32 -16773121, i32 256, i32 35352, i32 -16773121, i32 256, i32 35624, i32 -16773121, i32 256, i32 35624, i32 -16773121, i32 256, i32 37188, i32 -258049, i32 256, i32 37188, i32 -258049, i32 256, i32 28376, i32 65793, i32 65536, i32 38960, i32 -1, i32 0, i32 38960, i32 -1, i32 0, i32 38964, i32 -267386881, i32 1024, i32 38964, i32 -267386881, i32 1024, i32 38968, i32 -2, i32 0, i32 38968, i32 -2, i32 0, i32 53440, i32 -16773121, i32 256, i32 53292, i32 -1073742049, i32 138547200, i32 53292, i32 -1073742049, i32 138547200, i32 53432, i32 1937192823, i32 302055425, i32 53432, i32 1937192823, i32 302055425, i32 23472, i32 240, i32 112, i32 39160, i32 1937192823, i32 302055425, i32 39160, i32 1937192823, i32 302055425, i32 39164, i32 -1, i32 16, i32 39164, i32 -1, i32 16, i32 39804, i32 16711680, i32 16515072, i32 39804, i32 16711680, i32 16515072, i32 32816, i32 7951, i32 4106, i32 32816, i32 7951, i32 4106, i32 12104, i32 1937192823, i32 302055425, i32 12104, i32 1937192823, i32 302055425, i32 9224, i32 196608, i32 786559, i32 35348, i32 -268435393, i32 7, i32 35348, i32 -268435393, i32 7, i32 35620, i32 1073692671, i32 16715775, i32 35620, i32 1073692671, i32 16715775, i32 35600, i32 65295, i32 0, i32 35600, i32 65295, i32 0, i32 166476, i32 134217727, i32 100663296, i32 166476, i32 134217727, i32 100663296, i32 1240, i32 4095, i32 256, i32 1240, i32 4095, i32 256, i32 40968, i32 -1, i32 65536, i32 40968, i32 -1, i32 65536, i32 37180, i32 -64513, i32 16777472, i32 37180, i32 -64513, i32 16777472, i32 37096, i32 2097151, i32 17039552, i32 35840, i32 255, i32 3, i32 35840, i32 255, i32 3, i32 35844, i32 -117505793, i32 1080033376, i32 35844, i32 -117505793, i32 1080033376, i32 35888, i32 15, i32 262149, i32 36080, i32 536813567, i32 148898832, i32 36080, i32 536813567, i32 148898832, i32 36876, i32 16777215, i32 1509151, i32 164688, i32 3841, i32 0, i32 164688, i32 3841, i32 0, i32 38152, i32 -150993121, i32 2, i32 38152, i32 -150993121, i32 2, i32 38536, i32 3145728, i32 1507343, i32 38412, i32 -1, i32 1417032208, i32 38412, i32 -1, i32 1417032208, i32 134904, i32 33489407, i32 2, i32 134808, i32 -1025, i32 2097152, i32 131420, i32 -1, i32 3904, i32 35012, i32 2046691, i32 130, i32 35012, i32 2046691, i32 130, i32 35192, i32 1073741823, i32 67436864, i32 35192, i32 1073741823, i32 67436864, i32 35028, i32 31, i32 16, i32 35028, i32 31, i32 16, i32 35188, i32 -1, i32 0, i32 35188, i32 -1, i32 0], [300 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to load MC firmware!\0A\00", [35 x i8] zeroinitializer }, align 32
@tn_rlc_save_restore_register_list = internal constant { [122 x i32], [120 x i8] } { [122 x i32] [i32 39164, i32 39152, i32 38964, i32 38968, i32 39024, i32 39028, i32 35348, i32 35620, i32 35788, i32 35600, i32 35888, i32 36096, i32 36100, i32 35840, i32 35844, i32 35856, i32 35860, i32 36236, i32 36080, i32 36408, i32 38152, i32 38536, i32 38408, i32 38412, i32 38416, i32 38420, i32 35012, i32 35192, i32 35028, i32 36876, i32 37120, i32 37180, i32 37096, i32 37716, i32 40968, i32 39160, i32 37192, i32 37196, i32 16276, i32 39156, i32 39804, i32 16268, i32 35152, i32 35156, i32 35352, i32 35624, i32 37188, i32 16272, i32 37212, i32 37216, i32 37240, i32 37244, i32 37248, i32 37260, i32 37264, i32 37268, i32 37272, i32 37276, i32 37288, i32 37292, i32 37296, i32 37300, i32 37304, i32 37316, i32 37320, i32 37324, i32 37328, i32 37332, i32 37344, i32 37348, i32 37356, i32 37360, i32 37364, i32 37376, i32 37380, i32 37532, i32 32816, i32 37200, i32 39520, i32 37388, i32 37392, i32 37416, i32 37420, i32 37444, i32 37448, i32 37352, i32 37524, i32 37384, i32 37412, i32 37440, i32 37408, i32 37436, i32 37464, i32 38724, i32 41472, i32 41476, i32 41480, i32 41484, i32 36184, i32 36912, i32 36916, i32 36920, i32 36924, i32 36928, i32 38484, i32 35196, i32 41488, i32 41492, i32 39016, i32 41004, i32 38500, i32 38552, i32 38044, i32 36368, i32 36376, i32 35920, i32 35928, i32 35936, i32 35944, i32 35252, i32 38960, i32 32812], [120 x i8] zeroinitializer }, align 32
@cayman_cs_data = internal constant { [4 x %struct.cs_section_def], [32 x i8] } { [4 x %struct.cs_section_def] [%struct.cs_section_def { ptr @SECT_CONTEXT_defs, i32 1 }, %struct.cs_section_def { ptr @SECT_CLEAR_defs, i32 2 }, %struct.cs_section_def { ptr @SECT_CTRLCONST_defs, i32 3 }, %struct.cs_section_def zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to init rlc BOs!\0A\00", [39 x i8] zeroinitializer }, align 32
@cayman_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.9, i32 2195, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed initializing CP fences (%d).\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cayman_startup\00", [17 x i8] zeroinitializer }, align 32
@cayman_startup._entry_ptr = internal global ptr @cayman_startup._entry, section ".printk_index", align 4
@cayman_startup._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.9, i32 2204, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@cayman_startup._entry_ptr.105 = internal global ptr @cayman_startup._entry.104, section ".printk_index", align 4
@cayman_startup._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.9, i32 2210, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@cayman_startup._entry_ptr.107 = internal global ptr @cayman_startup._entry.106, section ".printk_index", align 4
@cayman_startup._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.103, ptr @.str.9, i32 2216, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed initializing DMA fences (%d).\0A\00", [58 x i8] zeroinitializer }, align 32
@cayman_startup._entry_ptr.110 = internal global ptr @cayman_startup._entry.108, section ".printk_index", align 4
@cayman_startup._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.103, ptr @.str.9, i32 2222, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@cayman_startup._entry_ptr.112 = internal global ptr @cayman_startup._entry.111, section ".printk_index", align 4
@.str.113 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"radeon: IH init failed (%d).\0A\00", [34 x i8] zeroinitializer }, align 32
@cayman_startup._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.103, ptr @.str.9, i32 2274, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"IB initialization failed (%d).\0A\00", [32 x i8] zeroinitializer }, align 32
@cayman_startup._entry_ptr.116 = internal global ptr @cayman_startup._entry.114, section ".printk_index", align 4
@cayman_startup._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.103, ptr @.str.9, i32 2280, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"vm manager initialization failed (%d).\0A\00", [56 x i8] zeroinitializer }, align 32
@cayman_startup._entry_ptr.119 = internal global ptr @cayman_startup._entry.117, section ".printk_index", align 4
@cayman_pcie_gart_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.9, i32 1266, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"No VRAM object for PCIE GART.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cayman_pcie_gart_enable\00", [40 x i8] zeroinitializer }, align 32
@cayman_pcie_gart_enable._entry_ptr = internal global ptr @cayman_pcie_gart_enable._entry, section ".printk_index", align 4
@radeon_vm_block_size = external dso_local local_unnamed_addr global i32, align 4
@cayman_pcie_gart_enable._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.121, ptr @.str.9, i32 1340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016[drm] PCIE GART of %uM enabled (table at 0x%016llX).\0A\00", [40 x i8] zeroinitializer }, align 32
@cayman_pcie_gart_enable._entry_ptr.124 = internal global ptr @cayman_pcie_gart_enable._entry.122, section ".printk_index", align 4
@SECT_CONTEXT_defs = internal constant { [8 x %struct.cs_extent_def], [32 x i8] } { [8 x %struct.cs_extent_def] [%struct.cs_extent_def { ptr @SECT_CONTEXT_def_1, i32 40960, i32 488 }, %struct.cs_extent_def { ptr @SECT_CONTEXT_def_2, i32 41461, i32 6 }, %struct.cs_extent_def { ptr @SECT_CONTEXT_def_3, i32 41472, i32 55 }, %struct.cs_extent_def { ptr @SECT_CONTEXT_def_4, i32 41530, i32 99 }, %struct.cs_extent_def { ptr @SECT_CONTEXT_def_5, i32 41630, i32 5 }, %struct.cs_extent_def { ptr @SECT_CONTEXT_def_6, i32 41637, i32 56 }, %struct.cs_extent_def { ptr @SECT_CONTEXT_def_7, i32 41694, i32 290 }, %struct.cs_extent_def zeroinitializer], [32 x i8] zeroinitializer }, align 32
@SECT_CLEAR_defs = internal constant { [2 x %struct.cs_extent_def], [40 x i8] } { [2 x %struct.cs_extent_def] [%struct.cs_extent_def { ptr @SECT_CLEAR_def_1, i32 65472, i32 3 }, %struct.cs_extent_def zeroinitializer], [40 x i8] zeroinitializer }, align 32
@SECT_CTRLCONST_defs = internal constant { [2 x %struct.cs_extent_def], [40 x i8] } { [2 x %struct.cs_extent_def] [%struct.cs_extent_def { ptr @SECT_CTRLCONST_def_1, i32 62460, i32 2 }, %struct.cs_extent_def zeroinitializer], [40 x i8] zeroinitializer }, align 32
@SECT_CONTEXT_def_2 = internal constant { [6 x i32], [40 x i8] } zeroinitializer, align 32
@SECT_CONTEXT_def_4 = internal constant { [99 x i32], [116 x i8] } { [99 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 256, i32 128, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0], [116 x i8] zeroinitializer }, align 32
@SECT_CONTEXT_def_5 = internal constant { [5 x i32], [44 x i8] } zeroinitializer, align 32
@SECT_CONTEXT_def_1 = internal constant { <{ [458 x i32], [30 x i32] }>, [480 x i8] } { <{ [458 x i32], [30 x i32] }> <{ [458 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1073758208, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -2147483648, i32 1073758208, i32 65535, i32 0, i32 1073758208, i32 0, i32 1073758208, i32 0, i32 1073758208, i32 0, i32 1073758208, i32 -1432769878, i32 0, i32 -1, i32 -1, i32 -2147483648, i32 1073758208, i32 0, i32 0, i32 -2147483648, i32 1073758208, i32 -2147483648, i32 1073758208, i32 -2147483648, i32 1073758208, i32 -2147483648, i32 1073758208, i32 -2147483648, i32 1073758208, i32 -2147483648, i32 1073758208, i32 -2147483648, i32 1073758208, i32 -2147483648, i32 1073758208, i32 -2147483648, i32 1073758208, i32 -2147483648, i32 1073758208, i32 -2147483648, i32 1073758208, i32 -2147483648, i32 1073758208, i32 -2147483648, i32 1073758208, i32 -2147483648, i32 1073758208, i32 -2147483648, i32 1073758208, i32 -2147483648, i32 1073758208, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 1065353216, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16383], [30 x i32] zeroinitializer }>, [480 x i8] zeroinitializer }, align 32
@SECT_CONTEXT_def_3 = internal constant { <{ i32, i32, i32, i32, [51 x i32] }>, [36 x i8] } { <{ i32, i32, i32, i32, [51 x i32] }> <{ i32 0, i32 0, i32 0, i32 512, [51 x i32] zeroinitializer }>, [36 x i8] zeroinitializer }, align 32
@SECT_CONTEXT_def_6 = internal constant { <{ i32, i32, i32, i32, i32, i32, [50 x i32] }>, [32 x i8] } { <{ i32, i32, i32, i32, i32, i32, [50 x i32] }> <{ i32 0, i32 0, i32 0, i32 0, i32 0, i32 255, [50 x i32] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@SECT_CONTEXT_def_7 = internal constant { <{ [58 x i32], [232 x i32] }>, [312 x i8] } { <{ [58 x i32], [232 x i32] }> <{ [58 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, i32 5, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 14, i32 16], [232 x i32] zeroinitializer }>, [312 x i8] zeroinitializer }, align 32
@SECT_CLEAR_def_1 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 -1, i32 -1, i32 -1], [20 x i8] zeroinitializer }, align 32
@SECT_CTRLCONST_def_1 = internal constant { [2 x i32], [24 x i8] } zeroinitializer, align 32
@cayman_uvd_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.9, i32 2023, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed UVD resume (%d).\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cayman_uvd_start\00", [47 x i8] zeroinitializer }, align 32
@cayman_uvd_start._entry_ptr = internal global ptr @cayman_uvd_start._entry, section ".printk_index", align 4
@cayman_uvd_start._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.130, ptr @.str.9, i32 2028, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed initializing UVD fences (%d).\0A\00", [58 x i8] zeroinitializer }, align 32
@cayman_uvd_start._entry_ptr.133 = internal global ptr @cayman_uvd_start._entry.131, section ".printk_index", align 4
@cayman_vce_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.135, ptr @.str.9, i32 2093, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed VCE resume (%d).\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cayman_vce_start\00", [47 x i8] zeroinitializer }, align 32
@cayman_vce_start._entry_ptr = internal global ptr @cayman_vce_start._entry, section ".printk_index", align 4
@cayman_vce_start._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.135, ptr @.str.9, i32 2098, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@cayman_vce_start._entry_ptr.137 = internal global ptr @cayman_vce_start._entry.136, section ".printk_index", align 4
@cayman_vce_start._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.135, ptr @.str.9, i32 2103, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed initializing VCE1 fences (%d).\0A\00", [57 x i8] zeroinitializer }, align 32
@cayman_vce_start._entry_ptr.140 = internal global ptr @cayman_vce_start._entry.138, section ".printk_index", align 4
@cayman_vce_start._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.135, ptr @.str.9, i32 2108, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed initializing VCE2 fences (%d).\0A\00", [57 x i8] zeroinitializer }, align 32
@cayman_vce_start._entry_ptr.143 = internal global ptr @cayman_vce_start._entry.141, section ".printk_index", align 4
@cayman_cp_resume.ridx = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 1, i32 2], [20 x i8] zeroinitializer }, align 32
@cayman_cp_resume.cp_rb_cntl = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 49412, i32 49540, i32 49560], [20 x i8] zeroinitializer }, align 32
@cayman_cp_resume.cp_rb_rptr_addr = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 49420, i32 49544, i32 49564], [20 x i8] zeroinitializer }, align 32
@cayman_cp_resume.cp_rb_rptr_addr_hi = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 49424, i32 49548, i32 49568], [20 x i8] zeroinitializer }, align 32
@cayman_cp_resume.cp_rb_rptr = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 34560, i32 34556, i32 34552], [20 x i8] zeroinitializer }, align 32
@cayman_cp_resume.cp_rb_wptr = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 49428, i32 49552, i32 49572], [20 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"radeon: cp failed to lock ring (%d).\0A\00", [58 x i8] zeroinitializer }, align 32
@cayman_default_size = external dso_local local_unnamed_addr constant i32, align 4
@cayman_default_state = external dso_local local_unnamed_addr constant [0 x i32], align 4
@cayman_uvd_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.146, ptr @.str.9, i32 2048, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed initializing UVD ring (%d).\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cayman_uvd_resume\00", [46 x i8] zeroinitializer }, align 32
@cayman_uvd_resume._entry_ptr = internal global ptr @cayman_uvd_resume._entry, section ".printk_index", align 4
@cayman_uvd_resume._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.146, ptr @.str.9, i32 2053, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed initializing UVD (%d).\0A\00", [33 x i8] zeroinitializer }, align 32
@cayman_uvd_resume._entry_ptr.149 = internal global ptr @cayman_uvd_resume._entry.147, section ".printk_index", align 4
@cayman_vce_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.151, ptr @.str.9, i32 2129, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed initializing VCE1 ring (%d).\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cayman_vce_resume\00", [46 x i8] zeroinitializer }, align 32
@cayman_vce_resume._entry_ptr = internal global ptr @cayman_vce_resume._entry, section ".printk_index", align 4
@cayman_vce_resume._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.151, ptr @.str.9, i32 2135, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@cayman_vce_resume._entry_ptr.153 = internal global ptr @cayman_vce_resume._entry.152, section ".printk_index", align 4
@cayman_vce_resume._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.151, ptr @.str.9, i32 2140, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed initializing VCE (%d).\0A\00", [33 x i8] zeroinitializer }, align 32
@cayman_vce_resume._entry_ptr.156 = internal global ptr @cayman_vce_resume._entry.154, section ".printk_index", align 4
@cayman_uvd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.158, ptr @.str.9, i32 2000, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed UVD (%d) init.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cayman_uvd_init\00", [16 x i8] zeroinitializer }, align 32
@cayman_uvd_init._entry_ptr = internal global ptr @cayman_uvd_init._entry, section ".printk_index", align 4
@cayman_vce_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.160, ptr @.str.9, i32 2068, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed VCE (%d) init.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cayman_vce_init\00", [16 x i8] zeroinitializer }, align 32
@cayman_vce_init._entry_ptr = internal global ptr @cayman_vce_init._entry, section ".printk_index", align 4
@switch.table.ni_mc_load_microcode = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @barts_io_mc_regs, ptr @turks_io_mc_regs, ptr @caicos_io_mc_regs, ptr @cayman_io_mc_regs], [16 x i8] zeroinitializer }, align 32
@switch.table.ni_mc_load_microcode.161 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 6024, i32 6024, i32 6024, i32 6037], [16 x i8] zeroinitializer }, align 32
@switch.table.ni_init_microcode = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 24840, i32 24668, i32 24512, i32 31212, i32 0], [44 x i8] zeroinitializer }, align 32
@switch.table.ni_init_microcode.162 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 24096, i32 24096, i32 24096, i32 24148, i32 0], [44 x i8] zeroinitializer }, align 32
@switch.table.ni_init_microcode.163 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 3072, i32 3072, i32 3072, i32 4096, i32 6144], [44 x i8] zeroinitializer }, align 32
@switch.table.ni_init_microcode.164 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 5504, i32 5504, i32 5504, i32 8704, i32 8704], [44 x i8] zeroinitializer }, align 32
@switch.table.ni_init_microcode.165 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 4480, i32 4480, i32 4480, i32 8704, i32 8704], [44 x i8] zeroinitializer }, align 32
@switch.table.ni_init_microcode.166 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.5, ptr @.str.6], [44 x i8] zeroinitializer }, align 32
@switch.table.ni_init_microcode.167 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], [44 x i8] zeroinitializer }, align 32
@switch.table.cayman_vm_decode_fault = internal constant { [228 x ptr], [240 x i8] } { [228 x ptr] [ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.65, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.66, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.62, ptr @.str.63, ptr @.str.63, ptr @.str.64], [240 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.168 = internal global [10 x i64] [i64 8, i64 32, i64 3664, i64 3780, i64 32784, i64 32788, i64 32792, i64 53300, i64 55348, i64 63164]
@__sancov_gen_cov_switch_values.169 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.170 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.171 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.172 = internal global [4 x i64] [i64 2, i64 32, i64 50, i64 51]
@__sancov_gen_cov_switch_values.173 = internal global [21 x i64] [i64 19, i64 16, i64 39168, i64 39169, i64 39171, i64 39172, i64 39173, i64 39174, i64 39175, i64 39176, i64 39177, i64 39178, i64 39179, i64 39180, i64 39181, i64 39182, i64 39183, i64 39184, i64 39187, i64 39191, i64 39192]
@__sancov_gen_cov_switch_values.174 = internal global [32 x i64] [i64 30, i64 16, i64 39168, i64 39169, i64 39171, i64 39172, i64 39173, i64 39174, i64 39175, i64 39176, i64 39177, i64 39178, i64 39179, i64 39180, i64 39181, i64 39182, i64 39183, i64 39184, i64 39187, i64 39191, i64 39192, i64 39193, i64 39312, i64 39313, i64 39316, i64 39317, i64 39318, i64 39321, i64 39322, i64 39324, i64 39325, i64 39328]
@__sancov_gen_cov_switch_values.175 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.176 = private unnamed_addr constant [17 x i8] c"barts_io_mc_regs\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 496, i32 18 }
@___asan_gen_.179 = private unnamed_addr constant [17 x i8] c"turks_io_mc_regs\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 528, i32 18 }
@___asan_gen_.182 = private unnamed_addr constant [18 x i8] c"caicos_io_mc_regs\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 560, i32 18 }
@___asan_gen_.185 = private unnamed_addr constant [18 x i8] c"cayman_io_mc_regs\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 592, i32 18 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 709, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 713, i32 15 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 714, i32 19 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 722, i32 15 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 731, i32 15 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 740, i32 15 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 749, i32 15 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 760, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 762, i32 37 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 767, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 773, i32 37 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 778, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 783, i32 37 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 788, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 795, i32 38 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 800, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 807, i32 38 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 810, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 815, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 824, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 1804, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2311, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2353, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2363, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2366, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2392, i32 5 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2433, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2455, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2535, i32 11 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2545, i32 11 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2555, i32 11 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2565, i32 11 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2575, i32 11 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2585, i32 11 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2595, i32 11 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2605, i32 11 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2615, i32 11 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2625, i32 11 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2635, i32 11 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2638, i32 11 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2642, i32 11 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2645, i32 11 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2648, i32 11 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2651, i32 11 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2654, i32 11 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2657, i32 11 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2660, i32 11 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2664, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant [35 x i8] c"../drivers/gpu/drm/radeon/radeon.h\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 2721, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 1820, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 1823, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 1825, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 1827, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 1829, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 1853, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 1909, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 1923, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant [24 x i8] c"cayman_golden_registers\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 229, i32 18 }
@___asan_gen_.452 = private unnamed_addr constant [25 x i8] c"cayman_golden_registers2\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 219, i32 18 }
@___asan_gen_.455 = private unnamed_addr constant [22 x i8] c"dvst_golden_registers\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 278, i32 18 }
@___asan_gen_.458 = private unnamed_addr constant [23 x i8] c"dvst_golden_registers2\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 270, i32 18 }
@___asan_gen_.461 = private unnamed_addr constant [26 x i8] c"scrapper_golden_registers\00", align 1
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 336, i32 18 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2165, i32 4 }
@___asan_gen_.467 = private unnamed_addr constant [34 x i8] c"tn_rlc_save_restore_register_list\00", align 1
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 69, i32 18 }
@___asan_gen_.470 = private unnamed_addr constant [15 x i8] c"cayman_cs_data\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 1078, i32 36 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2183, i32 4 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2195, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2204, i32 3 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2210, i32 3 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2216, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2222, i32 3 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2235, i32 3 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2274, i32 3 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2280, i32 3 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 1266, i32 3 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 1338, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant [18 x i8] c"SECT_CONTEXT_defs\00", align 1
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 1046, i32 35 }
@___asan_gen_.533 = private unnamed_addr constant [16 x i8] c"SECT_CLEAR_defs\00", align 1
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 1063, i32 35 }
@___asan_gen_.536 = private unnamed_addr constant [20 x i8] c"SECT_CTRLCONST_defs\00", align 1
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 1073, i32 35 }
@___asan_gen_.539 = private unnamed_addr constant [19 x i8] c"SECT_CONTEXT_def_2\00", align 1
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 517, i32 18 }
@___asan_gen_.542 = private unnamed_addr constant [19 x i8] c"SECT_CONTEXT_def_4\00", align 1
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 584, i32 18 }
@___asan_gen_.545 = private unnamed_addr constant [19 x i8] c"SECT_CONTEXT_def_5\00", align 1
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 686, i32 18 }
@___asan_gen_.548 = private unnamed_addr constant [19 x i8] c"SECT_CONTEXT_def_1\00", align 1
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 26, i32 18 }
@___asan_gen_.551 = private unnamed_addr constant [19 x i8] c"SECT_CONTEXT_def_3\00", align 1
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 526, i32 18 }
@___asan_gen_.554 = private unnamed_addr constant [19 x i8] c"SECT_CONTEXT_def_6\00", align 1
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 694, i32 18 }
@___asan_gen_.557 = private unnamed_addr constant [19 x i8] c"SECT_CONTEXT_def_7\00", align 1
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 753, i32 18 }
@___asan_gen_.560 = private unnamed_addr constant [17 x i8] c"SECT_CLEAR_def_1\00", align 1
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 1057, i32 18 }
@___asan_gen_.563 = private unnamed_addr constant [21 x i8] c"SECT_CTRLCONST_def_1\00", align 1
@___asan_gen_.564 = private unnamed_addr constant [46 x i8] c"../drivers/gpu/drm/radeon/clearstate_cayman.h\00", align 1
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.564, i32 1068, i32 18 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2023, i32 3 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2028, i32 3 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2093, i32 3 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2098, i32 3 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2103, i32 3 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2108, i32 3 }
@___asan_gen_.605 = private unnamed_addr constant [5 x i8] c"ridx\00", align 1
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 1613, i32 19 }
@___asan_gen_.608 = private unnamed_addr constant [11 x i8] c"cp_rb_cntl\00", align 1
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 1618, i32 24 }
@___asan_gen_.611 = private unnamed_addr constant [16 x i8] c"cp_rb_rptr_addr\00", align 1
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 1623, i32 24 }
@___asan_gen_.614 = private unnamed_addr constant [19 x i8] c"cp_rb_rptr_addr_hi\00", align 1
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 1628, i32 24 }
@___asan_gen_.617 = private unnamed_addr constant [11 x i8] c"cp_rb_rptr\00", align 1
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 1638, i32 24 }
@___asan_gen_.620 = private unnamed_addr constant [11 x i8] c"cp_rb_wptr\00", align 1
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 1643, i32 24 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 1544, i32 3 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2048, i32 3 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2053, i32 3 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2129, i32 3 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2135, i32 3 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2140, i32 3 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2000, i32 3 }
@___asan_gen_.668 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.674 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.675 = private constant [31 x i8] c"../drivers/gpu/drm/radeon/ni.c\00", align 1
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2068, i32 3 }
@___asan_gen_.677 = private unnamed_addr constant [34 x i8] c"switch.table.ni_mc_load_microcode\00", align 1
@___asan_gen_.678 = private unnamed_addr constant [38 x i8] c"switch.table.ni_mc_load_microcode.161\00", align 1
@___asan_gen_.679 = private unnamed_addr constant [31 x i8] c"switch.table.ni_init_microcode\00", align 1
@___asan_gen_.680 = private unnamed_addr constant [35 x i8] c"switch.table.ni_init_microcode.162\00", align 1
@___asan_gen_.681 = private unnamed_addr constant [35 x i8] c"switch.table.ni_init_microcode.163\00", align 1
@___asan_gen_.682 = private unnamed_addr constant [35 x i8] c"switch.table.ni_init_microcode.164\00", align 1
@___asan_gen_.683 = private unnamed_addr constant [35 x i8] c"switch.table.ni_init_microcode.165\00", align 1
@___asan_gen_.684 = private unnamed_addr constant [35 x i8] c"switch.table.ni_init_microcode.166\00", align 1
@___asan_gen_.685 = private unnamed_addr constant [35 x i8] c"switch.table.ni_init_microcode.167\00", align 1
@___asan_gen_.686 = private unnamed_addr constant [36 x i8] c"switch.table.cayman_vm_decode_fault\00", align 1
@llvm.compiler.used = appending global [241 x ptr] [ptr @__UNIQUE_ID_firmware324, ptr @__UNIQUE_ID_firmware325, ptr @__UNIQUE_ID_firmware326, ptr @__UNIQUE_ID_firmware327, ptr @__UNIQUE_ID_firmware328, ptr @__UNIQUE_ID_firmware329, ptr @__UNIQUE_ID_firmware330, ptr @__UNIQUE_ID_firmware331, ptr @__UNIQUE_ID_firmware332, ptr @__UNIQUE_ID_firmware333, ptr @__UNIQUE_ID_firmware334, ptr @__UNIQUE_ID_firmware335, ptr @__UNIQUE_ID_firmware336, ptr @__UNIQUE_ID_firmware337, ptr @__UNIQUE_ID_firmware338, ptr @__UNIQUE_ID_firmware339, ptr @__UNIQUE_ID_firmware340, ptr @__UNIQUE_ID_firmware341, ptr @__UNIQUE_ID_firmware342, ptr @__UNIQUE_ID_firmware343, ptr @__UNIQUE_ID_firmware344, ptr @cayman_gpu_soft_reset._entry, ptr @cayman_gpu_soft_reset._entry.78, ptr @cayman_gpu_soft_reset._entry.81, ptr @cayman_gpu_soft_reset._entry.84, ptr @cayman_gpu_soft_reset._entry.87, ptr @cayman_gpu_soft_reset._entry.90, ptr @cayman_gpu_soft_reset._entry.94, ptr @cayman_gpu_soft_reset._entry.97, ptr @cayman_gpu_soft_reset._entry_ptr, ptr @cayman_gpu_soft_reset._entry_ptr.80, ptr @cayman_gpu_soft_reset._entry_ptr.83, ptr @cayman_gpu_soft_reset._entry_ptr.86, ptr @cayman_gpu_soft_reset._entry_ptr.89, ptr @cayman_gpu_soft_reset._entry_ptr.93, ptr @cayman_gpu_soft_reset._entry_ptr.96, ptr @cayman_gpu_soft_reset._entry_ptr.99, ptr @cayman_init._entry, ptr @cayman_init._entry.40, ptr @cayman_init._entry.43, ptr @cayman_init._entry.47, ptr @cayman_init._entry_ptr, ptr @cayman_init._entry_ptr.42, ptr @cayman_init._entry_ptr.45, ptr @cayman_init._entry_ptr.49, ptr @cayman_pcie_gart_enable._entry, ptr @cayman_pcie_gart_enable._entry.122, ptr @cayman_pcie_gart_enable._entry_ptr, ptr @cayman_pcie_gart_enable._entry_ptr.124, ptr @cayman_startup._entry, ptr @cayman_startup._entry.104, ptr @cayman_startup._entry.106, ptr @cayman_startup._entry.108, ptr @cayman_startup._entry.111, ptr @cayman_startup._entry.114, ptr @cayman_startup._entry.117, ptr @cayman_startup._entry_ptr, ptr @cayman_startup._entry_ptr.105, ptr @cayman_startup._entry_ptr.107, ptr @cayman_startup._entry_ptr.110, ptr @cayman_startup._entry_ptr.112, ptr @cayman_startup._entry_ptr.116, ptr @cayman_startup._entry_ptr.119, ptr @cayman_uvd_init._entry, ptr @cayman_uvd_init._entry_ptr, ptr @cayman_uvd_resume._entry, ptr @cayman_uvd_resume._entry.147, ptr @cayman_uvd_resume._entry_ptr, ptr @cayman_uvd_resume._entry_ptr.149, ptr @cayman_uvd_start._entry, ptr @cayman_uvd_start._entry.131, ptr @cayman_uvd_start._entry_ptr, ptr @cayman_uvd_start._entry_ptr.133, ptr @cayman_vce_init._entry, ptr @cayman_vce_init._entry_ptr, ptr @cayman_vce_resume._entry, ptr @cayman_vce_resume._entry.152, ptr @cayman_vce_resume._entry.154, ptr @cayman_vce_resume._entry_ptr, ptr @cayman_vce_resume._entry_ptr.153, ptr @cayman_vce_resume._entry_ptr.156, ptr @cayman_vce_start._entry, ptr @cayman_vce_start._entry.136, ptr @cayman_vce_start._entry.138, ptr @cayman_vce_start._entry.141, ptr @cayman_vce_start._entry_ptr, ptr @cayman_vce_start._entry_ptr.137, ptr @cayman_vce_start._entry_ptr.140, ptr @cayman_vce_start._entry_ptr.143, ptr @cayman_vm_decode_fault._entry, ptr @cayman_vm_decode_fault._entry_ptr, ptr @ni_init_microcode._entry, ptr @ni_init_microcode._entry.11, ptr @ni_init_microcode._entry.15, ptr @ni_init_microcode._entry.18, ptr @ni_init_microcode._entry.22, ptr @ni_init_microcode._entry.26, ptr @ni_init_microcode._entry.29, ptr @ni_init_microcode._entry.31, ptr @ni_init_microcode._entry_ptr, ptr @ni_init_microcode._entry_ptr.13, ptr @ni_init_microcode._entry_ptr.16, ptr @ni_init_microcode._entry_ptr.20, ptr @ni_init_microcode._entry_ptr.24, ptr @ni_init_microcode._entry_ptr.28, ptr @ni_init_microcode._entry_ptr.30, ptr @ni_init_microcode._entry_ptr.33, ptr @barts_io_mc_regs, ptr @turks_io_mc_regs, ptr @caicos_io_mc_regs, ptr @cayman_io_mc_regs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.92, ptr @.str.95, ptr @.str.98, ptr @cayman_golden_registers, ptr @cayman_golden_registers2, ptr @dvst_golden_registers, ptr @dvst_golden_registers2, ptr @scrapper_golden_registers, ptr @.str.100, ptr @tn_rlc_save_restore_register_list, ptr @cayman_cs_data, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.109, ptr @.str.113, ptr @.str.115, ptr @.str.118, ptr @.str.120, ptr @.str.121, ptr @.str.123, ptr @SECT_CONTEXT_defs, ptr @SECT_CLEAR_defs, ptr @SECT_CTRLCONST_defs, ptr @SECT_CONTEXT_def_2, ptr @SECT_CONTEXT_def_4, ptr @SECT_CONTEXT_def_5, ptr @SECT_CONTEXT_def_1, ptr @SECT_CONTEXT_def_3, ptr @SECT_CONTEXT_def_6, ptr @SECT_CONTEXT_def_7, ptr @SECT_CLEAR_def_1, ptr @SECT_CTRLCONST_def_1, ptr @.str.129, ptr @.str.130, ptr @.str.132, ptr @.str.134, ptr @.str.135, ptr @.str.139, ptr @.str.142, ptr @cayman_cp_resume.ridx, ptr @cayman_cp_resume.cp_rb_cntl, ptr @cayman_cp_resume.cp_rb_rptr_addr, ptr @cayman_cp_resume.cp_rb_rptr_addr_hi, ptr @cayman_cp_resume.cp_rb_rptr, ptr @cayman_cp_resume.cp_rb_wptr, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.148, ptr @.str.150, ptr @.str.151, ptr @.str.155, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @switch.table.ni_mc_load_microcode, ptr @switch.table.ni_mc_load_microcode.161, ptr @switch.table.ni_init_microcode, ptr @switch.table.ni_init_microcode.162, ptr @switch.table.ni_init_microcode.163, ptr @switch.table.ni_init_microcode.164, ptr @switch.table.ni_init_microcode.165, ptr @switch.table.ni_init_microcode.166, ptr @switch.table.ni_init_microcode.167, ptr @switch.table.cayman_vm_decode_fault], section "llvm.metadata"
@0 = internal global [177 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @barts_io_mc_regs to i32), i32 232, i32 288, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @turks_io_mc_regs to i32), i32 232, i32 288, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caicos_io_mc_regs to i32), i32 232, i32 288, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_io_mc_regs to i32), i32 232, i32 288, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni_init_microcode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni_init_microcode._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni_init_microcode._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni_init_microcode._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni_init_microcode._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni_init_microcode._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni_init_microcode._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni_init_microcode._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_init._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_init._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_init._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_vm_decode_fault._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_gpu_soft_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_gpu_soft_reset._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_gpu_soft_reset._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_gpu_soft_reset._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_gpu_soft_reset._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_gpu_soft_reset._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_gpu_soft_reset._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_gpu_soft_reset._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_golden_registers to i32), i32 444, i32 544, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_golden_registers2 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvst_golden_registers to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvst_golden_registers2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scrapper_golden_registers to i32), i32 1236, i32 1536, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tn_rlc_save_restore_register_list to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_cs_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_startup._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_startup._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_startup._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_startup._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_startup._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_startup._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_pcie_gart_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_pcie_gart_enable._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SECT_CONTEXT_defs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SECT_CLEAR_defs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SECT_CTRLCONST_defs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SECT_CONTEXT_def_2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SECT_CONTEXT_def_4 to i32), i32 396, i32 512, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SECT_CONTEXT_def_5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SECT_CONTEXT_def_1 to i32), i32 1952, i32 2432, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SECT_CONTEXT_def_3 to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SECT_CONTEXT_def_6 to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SECT_CONTEXT_def_7 to i32), i32 1160, i32 1472, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SECT_CLEAR_def_1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SECT_CTRLCONST_def_1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_uvd_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_uvd_start._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_vce_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_vce_start._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_vce_start._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_vce_start._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_cp_resume.ridx to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_cp_resume.cp_rb_cntl to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_cp_resume.cp_rb_rptr_addr to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_cp_resume.cp_rb_rptr_addr_hi to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_cp_resume.cp_rb_rptr to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_cp_resume.cp_rb_wptr to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_uvd_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_uvd_resume._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_vce_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_vce_resume._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_vce_resume._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_uvd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_vce_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ni_mc_load_microcode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ni_mc_load_microcode.161 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ni_init_microcode to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ni_init_microcode.162 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ni_init_microcode.163 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ni_init_microcode.164 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ni_init_microcode.165 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ni_init_microcode.166 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ni_init_microcode.167 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cayman_vm_decode_fault to i32), i32 912, i32 1152, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %smc_idx_lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 20
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %smc_idx_lock) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %0 = tail call i32 @llvm.bswap.i32(i32 %reg) #7
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %1 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #7, !srcloc !376
  %3 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %4, i32 516
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13) #7, !srcloc !377
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %smc_idx_lock, i32 noundef %call2) #7
  ret i32 %6
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tn_smc_wreg(ptr noundef %rdev, i32 noundef %reg, i32 noundef %v) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %smc_idx_lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 20
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %smc_idx_lock) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %0 = tail call i32 @llvm.bswap.i32(i32 %reg) #7
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %1 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %3 = tail call i32 @llvm.bswap.i32(i32 %v) #7
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %5, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %3) #7, !srcloc !376
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %smc_idx_lock, i32 noundef %call2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ni_mc_load_microcode(ptr noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mc_fw = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 74
  %0 = ptrtoint ptr %mc_fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc_fw, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %2 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %family, align 4
  %switch.tableidx = add i32 %3, -47
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 4
  br i1 %4, label %switch.lookup, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.ni_mc_load_microcode, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %switch.gep118 = getelementptr inbounds [4 x i32], ptr @switch.table.ni_mc_load_microcode.161, i32 0, i32 %switch.tableidx
  %6 = ptrtoint ptr %switch.gep118 to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load119 = load i32, ptr %switch.gep118, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end.sw.epilog_crit_edge
  %io_mc_regs.0 = phi ptr [ %switch.load, %switch.lookup ], [ @caicos_io_mc_regs, %if.end.sw.epilog_crit_edge ]
  %ucode_size.0 = phi i32 [ %switch.load119, %switch.lookup ], [ 6024, %if.end.sw.epilog_crit_edge ]
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %7 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 10752
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !377
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  %10 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i75 = getelementptr i8, ptr %11, i32 10440
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i75) #7, !srcloc !377
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  %13 = and i32 %9, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %13)
  %cmp = icmp eq i32 %13, 80
  %14 = and i32 %12, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp6 = icmp eq i32 %14, 0
  %or.cond = select i1 %cmp, i1 %cmp6, i1 false
  br i1 %or.cond, label %if.end11, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %sw.epilog
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %15 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i79 = getelementptr i8, ptr %16, i32 10440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79, i32 134217728) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %17 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i83 = getelementptr i8, ptr %18, i32 10440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83, i32 268435456) #7, !srcloc !376
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end11
  %i.0112 = phi i32 [ 0, %if.end11 ], [ %inc, %for.body.for.body_crit_edge ]
  %shl = shl nuw i32 %i.0112, 1
  %arrayidx = getelementptr i32, ptr %io_mc_regs.0, i32 %shl
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #7
  %22 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i87 = getelementptr i8, ptr %23, i32 10820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87, i32 %21) #7, !srcloc !376
  %add = or i32 %shl, 1
  %arrayidx14 = getelementptr i32, ptr %io_mc_regs.0, i32 %add
  %24 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx14, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #7
  %27 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i91 = getelementptr i8, ptr %28, i32 10824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91, i32 %26) #7, !srcloc !376
  %inc = add nuw nsw i32 %i.0112, 1
  %exitcond.not = icmp eq i32 %inc, 29
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  %29 = ptrtoint ptr %mc_fw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mc_fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 4
  br label %for.body18

for.body18:                                       ; preds = %for.body18.for.body18_crit_edge, %for.end
  %i.1114 = phi i32 [ 0, %for.end ], [ %inc21, %for.body18.for.body18_crit_edge ]
  %fw_data.0113 = phi ptr [ %32, %for.end ], [ %incdec.ptr, %for.body18.for.body18_crit_edge ]
  %incdec.ptr = getelementptr i32, ptr %fw_data.0113, i32 1
  %33 = ptrtoint ptr %fw_data.0113 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fw_data.0113, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #7
  %36 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i95 = getelementptr i8, ptr %37, i32 10444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i95, i32 %35) #7, !srcloc !376
  %inc21 = add nuw nsw i32 %i.1114, 1
  %exitcond117.not = icmp eq i32 %inc21, %ucode_size.0
  br i1 %exitcond117.not, label %for.end22, label %for.body18.for.body18_crit_edge

for.body18.for.body18_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body18

for.end22:                                        ; preds = %for.body18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %38 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i99 = getelementptr i8, ptr %39, i32 10440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99, i32 134217728) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %40 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i103 = getelementptr i8, ptr %41, i32 10440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i103, i32 67108864) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %42 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i107 = getelementptr i8, ptr %43, i32 10440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107, i32 16777216) #7, !srcloc !376
  %usec_timeout = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %44 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %usec_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp24115 = icmp sgt i32 %45, 0
  br i1 %cmp24115, label %for.end22.for.body25_crit_edge, label %for.end22.cleanup_crit_edge

for.end22.cleanup_crit_edge:                      ; preds = %for.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end22.for.body25_crit_edge:                   ; preds = %for.end22
  br label %for.body25

for.body25:                                       ; preds = %if.end30.for.body25_crit_edge, %for.end22.for.body25_crit_edge
  %i.2116 = phi i32 [ %inc32, %if.end30.for.body25_crit_edge ], [ 0, %for.end22.for.body25_crit_edge ]
  %46 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i111 = getelementptr i8, ptr %47, i32 10704
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i111) #7, !srcloc !377
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  %49 = and i32 %48, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool28.not = icmp eq i32 %49, 0
  br i1 %tobool28.not, label %if.end30, label %for.body25.cleanup_crit_edge

for.body25.cleanup_crit_edge:                     ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end30:                                         ; preds = %for.body25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748) #7
  %inc32 = add nuw nsw i32 %i.2116, 1
  %51 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %usec_timeout, align 4
  %cmp24 = icmp slt i32 %inc32, %52
  br i1 %cmp24, label %if.end30.for.body25_crit_edge, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end30.for.body25_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body25

cleanup:                                          ; preds = %if.end30.cleanup_crit_edge, %for.body25.cleanup_crit_edge, %for.end22.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %for.end22.cleanup_crit_edge ], [ 0, %for.body25.cleanup_crit_edge ], [ 0, %if.end30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ni_init_microcode(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  %fw_name = alloca [30 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %fw_name) #7
  %0 = call ptr @memset(ptr %fw_name, i32 255, i32 30)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str) #7
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %1 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %family, align 4
  %switch.tableidx = add i32 %2, -47
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %3 = icmp ult i32 %switch.tableidx, 5
  br i1 %3, label %switch.lookup, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/radeon/ni.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 757, 0\0A.popsection", ""() #7, !srcloc !379
  unreachable

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.ni_init_microcode, i32 0, i32 %switch.tableidx
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep200 = getelementptr inbounds [5 x i32], ptr @switch.table.ni_init_microcode.162, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep200 to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load201 = load i32, ptr %switch.gep200, align 4
  %switch.gep202 = getelementptr inbounds [5 x i32], ptr @switch.table.ni_init_microcode.163, i32 0, i32 %switch.tableidx
  %6 = ptrtoint ptr %switch.gep202 to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load203 = load i32, ptr %switch.gep202, align 4
  %switch.gep204 = getelementptr inbounds [5 x i32], ptr @switch.table.ni_init_microcode.164, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep204 to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load205 = load i32, ptr %switch.gep204, align 4
  %switch.gep206 = getelementptr inbounds [5 x i32], ptr @switch.table.ni_init_microcode.165, i32 0, i32 %switch.tableidx
  %8 = ptrtoint ptr %switch.gep206 to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load207 = load i32, ptr %switch.gep206, align 4
  %switch.gep208 = getelementptr inbounds [5 x ptr], ptr @switch.table.ni_init_microcode.166, i32 0, i32 %switch.tableidx
  %9 = ptrtoint ptr %switch.gep208 to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load209 = load ptr, ptr %switch.gep208, align 4
  %switch.gep210 = getelementptr inbounds [5 x ptr], ptr @switch.table.ni_init_microcode.167, i32 0, i32 %switch.tableidx
  %10 = ptrtoint ptr %switch.gep210 to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load211 = load ptr, ptr %switch.gep210, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull %switch.load211) #10
  %call11 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fw_name, i32 noundef 30, ptr noundef nonnull @.str.10, ptr noundef nonnull %switch.load211)
  %pfp_fw = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 72
  %11 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rdev, align 8
  %call13 = call i32 @request_firmware(ptr noundef %pfp_fw, ptr noundef nonnull %fw_name, ptr noundef %12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %if.end, label %switch.lookup.out_crit_edge

switch.lookup.out_crit_edge:                      ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %switch.lookup
  %13 = ptrtoint ptr %pfp_fw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pfp_fw, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %switch.load207)
  %cmp.not = icmp eq i32 %16, %switch.load207
  br i1 %cmp.not, label %if.end24, label %do.end18

do.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %16, ptr noundef nonnull %fw_name) #10
  br label %if.end136

if.end24:                                         ; preds = %if.end
  %call26 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fw_name, i32 noundef 30, ptr noundef nonnull @.str.14, ptr noundef nonnull %switch.load211)
  %me_fw = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 71
  %17 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rdev, align 8
  %call29 = call i32 @request_firmware(ptr noundef %me_fw, ptr noundef nonnull %fw_name, ptr noundef %18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end24.out_crit_edge

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end32:                                         ; preds = %if.end24
  %19 = ptrtoint ptr %me_fw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %me_fw, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %switch.load205)
  %cmp35.not = icmp eq i32 %22, %switch.load205
  br i1 %cmp35.not, label %if.end32.if.end45_crit_edge, label %do.end39

if.end32.if.end45_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

do.end39:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %22, ptr noundef nonnull %fw_name) #10
  br label %if.end45

if.end45:                                         ; preds = %do.end39, %if.end32.if.end45_crit_edge
  %call47 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fw_name, i32 noundef 30, ptr noundef nonnull @.str.17, ptr noundef nonnull %switch.load209)
  %rlc_fw = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 73
  %23 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rdev, align 8
  %call50 = call i32 @request_firmware(ptr noundef %rlc_fw, ptr noundef nonnull %fw_name, ptr noundef %24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end45.out_crit_edge

if.end45.out_crit_edge:                           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end53:                                         ; preds = %if.end45
  %25 = ptrtoint ptr %rlc_fw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rlc_fw, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %switch.load203)
  %cmp56.not = icmp eq i32 %28, %switch.load203
  br i1 %cmp56.not, label %if.end53.if.end66_crit_edge, label %do.end60

if.end53.if.end66_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

do.end60:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  %call65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %28, ptr noundef nonnull %fw_name) #10
  br label %if.end66

if.end66:                                         ; preds = %do.end60, %if.end53.if.end66_crit_edge
  %err.0 = phi i32 [ -22, %do.end60 ], [ 0, %if.end53.if.end66_crit_edge ]
  %flags = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 8
  %and = and i32 %30, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool67.not = icmp eq i32 %and, 0
  br i1 %tobool67.not, label %if.then68, label %if.end66.if.end90_crit_edge

if.end66.if.end90_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90

if.then68:                                        ; preds = %if.end66
  %call70 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fw_name, i32 noundef 30, ptr noundef nonnull @.str.21, ptr noundef nonnull %switch.load211)
  %mc_fw = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 74
  %31 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rdev, align 8
  %call73 = call i32 @request_firmware(ptr noundef %mc_fw, ptr noundef nonnull %fw_name, ptr noundef %32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %if.then68.out_crit_edge

if.then68.out_crit_edge:                          ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end76:                                         ; preds = %if.then68
  %33 = ptrtoint ptr %mc_fw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mc_fw, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %switch.load201)
  %cmp79.not = icmp eq i32 %36, %switch.load201
  br i1 %cmp79.not, label %if.end76.if.end90_crit_edge, label %do.end83

if.end76.if.end90_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90

do.end83:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  %call88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %36, ptr noundef nonnull %fw_name) #10
  br label %if.end90

if.end90:                                         ; preds = %do.end83, %if.end76.if.end90_crit_edge, %if.end66.if.end90_crit_edge
  %err.1 = phi i32 [ %err.0, %if.end66.if.end90_crit_edge ], [ -22, %do.end83 ], [ 0, %if.end76.if.end90_crit_edge ]
  %37 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %family, align 4
  %39 = add i32 %38, -47
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %39)
  %40 = icmp ult i32 %39, 4
  br i1 %40, label %if.then95, label %if.end90.out_crit_edge

if.end90.out_crit_edge:                           ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then95:                                        ; preds = %if.end90
  %call97 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fw_name, i32 noundef 30, ptr noundef nonnull @.str.25, ptr noundef nonnull %switch.load211)
  %smc_fw = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 79
  %41 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rdev, align 8
  %call100 = call i32 @request_firmware(ptr noundef %smc_fw, ptr noundef nonnull %fw_name, ptr noundef %42) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.else, label %do.end105

do.end105:                                        ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #9
  %call108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull %fw_name) #10
  %43 = ptrtoint ptr %smc_fw to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %smc_fw, align 8
  call void @release_firmware(ptr noundef %44) #7
  %45 = ptrtoint ptr %smc_fw to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %smc_fw, align 8
  br label %if.end145

if.else:                                          ; preds = %if.then95
  %46 = ptrtoint ptr %smc_fw to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %smc_fw, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %switch.load)
  %cmp113.not = icmp eq i32 %49, %switch.load
  br i1 %cmp113.not, label %if.else.if.end145_crit_edge, label %do.end117

if.else.if.end145_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end145

do.end117:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %mc_fw119 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 74
  %50 = ptrtoint ptr %mc_fw119 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mc_fw119, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %call122 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %53, ptr noundef nonnull %fw_name) #10
  br label %if.end136

out:                                              ; preds = %if.end90.out_crit_edge, %if.then68.out_crit_edge, %if.end45.out_crit_edge, %if.end24.out_crit_edge, %switch.lookup.out_crit_edge
  %err.2 = phi i32 [ %call13, %switch.lookup.out_crit_edge ], [ %call29, %if.end24.out_crit_edge ], [ %call50, %if.end45.out_crit_edge ], [ %err.1, %if.end90.out_crit_edge ], [ %call73, %if.then68.out_crit_edge ]
  %54 = zext i32 %err.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values)
  switch i32 %err.2, label %do.end132 [
    i32 0, label %out.if.end145_crit_edge
    i32 -22, label %out.if.end136_crit_edge
  ]

out.if.end136_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end136

out.if.end145_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end145

do.end132:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  %call135 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull %fw_name) #10
  br label %if.end136

if.end136:                                        ; preds = %do.end132, %out.if.end136_crit_edge, %do.end117, %do.end18
  %err.2199 = phi i32 [ %err.2, %out.if.end136_crit_edge ], [ %err.2, %do.end132 ], [ -22, %do.end18 ], [ -22, %do.end117 ]
  %55 = ptrtoint ptr %pfp_fw to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pfp_fw, align 4
  call void @release_firmware(ptr noundef %56) #7
  %57 = ptrtoint ptr %pfp_fw to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %pfp_fw, align 4
  %me_fw139 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 71
  %58 = ptrtoint ptr %me_fw139 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %me_fw139, align 8
  call void @release_firmware(ptr noundef %59) #7
  %60 = ptrtoint ptr %me_fw139 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %me_fw139, align 8
  %rlc_fw141 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 73
  %61 = ptrtoint ptr %rlc_fw141 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rlc_fw141, align 8
  call void @release_firmware(ptr noundef %62) #7
  %63 = ptrtoint ptr %rlc_fw141 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %rlc_fw141, align 8
  %mc_fw143 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 74
  %64 = ptrtoint ptr %mc_fw143 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mc_fw143, align 4
  call void @release_firmware(ptr noundef %65) #7
  %66 = ptrtoint ptr %mc_fw143 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %mc_fw143, align 4
  br label %if.end145

if.end145:                                        ; preds = %if.end136, %out.if.end145_crit_edge, %if.else.if.end145_crit_edge, %do.end105
  %err.2195 = phi i32 [ %err.2, %out.if.end145_crit_edge ], [ %err.2199, %if.end136 ], [ 0, %do.end105 ], [ 0, %if.else.if.end145_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %fw_name) #7
  ret i32 %err.2195
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cayman_get_allowed_info_register(ptr noundef %rdev, i32 noundef %reg, ptr nocapture noundef writeonly %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.168)
  switch i32 %reg, label %entry.return_crit_edge [
    i32 32784, label %entry.r100_mm_rreg.exit_crit_edge
    i32 32788, label %entry.r100_mm_rreg.exit_crit_edge6
    i32 32792, label %entry.r100_mm_rreg.exit_crit_edge7
    i32 3664, label %entry.r100_mm_rreg.exit_crit_edge8
    i32 3780, label %entry.r100_mm_rreg.exit_crit_edge9
    i32 53300, label %entry.r100_mm_rreg.exit_crit_edge10
    i32 55348, label %entry.r100_mm_rreg.exit_crit_edge11
    i32 63164, label %entry.r100_mm_rreg.exit_crit_edge12
  ]

entry.r100_mm_rreg.exit_crit_edge12:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %r100_mm_rreg.exit

entry.r100_mm_rreg.exit_crit_edge11:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %r100_mm_rreg.exit

entry.r100_mm_rreg.exit_crit_edge10:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %r100_mm_rreg.exit

entry.r100_mm_rreg.exit_crit_edge9:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %r100_mm_rreg.exit

entry.r100_mm_rreg.exit_crit_edge8:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %r100_mm_rreg.exit

entry.r100_mm_rreg.exit_crit_edge7:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %r100_mm_rreg.exit

entry.r100_mm_rreg.exit_crit_edge6:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %r100_mm_rreg.exit

entry.r100_mm_rreg.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %r100_mm_rreg.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

r100_mm_rreg.exit:                                ; preds = %entry.r100_mm_rreg.exit_crit_edge, %entry.r100_mm_rreg.exit_crit_edge6, %entry.r100_mm_rreg.exit_crit_edge7, %entry.r100_mm_rreg.exit_crit_edge8, %entry.r100_mm_rreg.exit_crit_edge9, %entry.r100_mm_rreg.exit_crit_edge10, %entry.r100_mm_rreg.exit_crit_edge11, %entry.r100_mm_rreg.exit_crit_edge12
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %1 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 %reg
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !377
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %val, align 4
  br label %return

return:                                           ; preds = %r100_mm_rreg.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %r100_mm_rreg.exit ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tn_get_temp(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %smc_idx_lock.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 20
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %smc_idx_lock.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1863122688) #7, !srcloc !376
  %2 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %3, i32 516
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13.i) #7, !srcloc !377
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %smc_idx_lock.i, i32 noundef %call2.i) #7
  %and = lshr i32 %5, 3
  %div1 = and i32 %and, 255
  %6 = mul nuw nsw i32 %div1, 1000
  %mul = add nsw i32 %6, -49000
  ret i32 %mul
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cayman_pcie_gart_tlb_flush(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 21632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %2 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %3, i32 5240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 16777216) #7, !srcloc !376
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cayman_cp_int_cntl_setup(ptr nocapture noundef readonly %rdev, i32 noundef %ring, i32 noundef %cp_int_cntl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %and = shl i32 %ring, 24
  %0 = and i32 %and, 50331648
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %1 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 3652
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %3 = tail call i32 @llvm.bswap.i32(i32 %cp_int_cntl) #7
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %5, i32 49444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %3) #7, !srcloc !376
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cayman_fence_ring_emit(ptr noundef %rdev, ptr nocapture noundef readonly %fence) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
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
  store volatile i32 -1073528064, ptr %arrayidx.i, align 4
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i26 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i26, label %if.then.i27, label %radeon_ring_write.exit.radeon_ring_write.exit37_crit_edge

radeon_ring_write.exit.radeon_ring_write.exit37_crit_edge: ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit37

if.then.i27:                                      ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit37

radeon_ring_write.exit37:                         ; preds = %if.then.i27, %radeon_ring_write.exit.radeon_ring_write.exit37_crit_edge
  %18 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ring1.i, align 8
  %20 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %wptr.i, align 4
  %inc.i30 = add i32 %21, 1
  store i32 %inc.i30, ptr %wptr.i, align 4
  %arrayidx.i31 = getelementptr i32, ptr %19, i32 %21
  %22 = ptrtoint ptr %arrayidx.i31 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 -2003828736, ptr %arrayidx.i31, align 4
  %23 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ptr_mask.i, align 4
  %25 = load i32, ptr %wptr.i, align 4
  %and.i33 = and i32 %25, %24
  store i32 %and.i33, ptr %wptr.i, align 4
  %26 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count_dw.i, align 4
  %dec.i34 = add i32 %27, -1
  store i32 %dec.i34, ptr %count_dw.i, align 4
  %28 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i36 = add i32 %29, -1
  store i32 %dec4.i36, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i34)
  %cmp.i39 = icmp slt i32 %dec.i34, 1
  br i1 %cmp.i39, label %if.then.i40, label %radeon_ring_write.exit37.radeon_ring_write.exit50_crit_edge

radeon_ring_write.exit37.radeon_ring_write.exit50_crit_edge: ; preds = %radeon_ring_write.exit37
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit50

if.then.i40:                                      ; preds = %radeon_ring_write.exit37
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit50

radeon_ring_write.exit50:                         ; preds = %if.then.i40, %radeon_ring_write.exit37.radeon_ring_write.exit50_crit_edge
  %30 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ring1.i, align 8
  %32 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %wptr.i, align 4
  %inc.i43 = add i32 %33, 1
  store i32 %inc.i43, ptr %wptr.i, align 4
  %arrayidx.i44 = getelementptr i32, ptr %31, i32 %33
  %34 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 -1, ptr %arrayidx.i44, align 4
  %35 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ptr_mask.i, align 4
  %37 = load i32, ptr %wptr.i, align 4
  %and.i46 = and i32 %37, %36
  store i32 %and.i46, ptr %wptr.i, align 4
  %38 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %count_dw.i, align 4
  %dec.i47 = add i32 %39, -1
  store i32 %dec.i47, ptr %count_dw.i, align 4
  %40 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i49 = add i32 %41, -1
  store i32 %dec4.i49, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i47)
  %cmp.i52 = icmp slt i32 %dec.i47, 1
  br i1 %cmp.i52, label %if.then.i53, label %radeon_ring_write.exit50.radeon_ring_write.exit63_crit_edge

radeon_ring_write.exit50.radeon_ring_write.exit63_crit_edge: ; preds = %radeon_ring_write.exit50
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit63

if.then.i53:                                      ; preds = %radeon_ring_write.exit50
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit63

radeon_ring_write.exit63:                         ; preds = %if.then.i53, %radeon_ring_write.exit50.radeon_ring_write.exit63_crit_edge
  %42 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ring1.i, align 8
  %44 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %wptr.i, align 4
  %inc.i56 = add i32 %45, 1
  store i32 %inc.i56, ptr %wptr.i, align 4
  %arrayidx.i57 = getelementptr i32, ptr %43, i32 %45
  %46 = ptrtoint ptr %arrayidx.i57 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile i32 0, ptr %arrayidx.i57, align 4
  %47 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ptr_mask.i, align 4
  %49 = load i32, ptr %wptr.i, align 4
  %and.i59 = and i32 %49, %48
  store i32 %and.i59, ptr %wptr.i, align 4
  %50 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %count_dw.i, align 4
  %dec.i60 = add i32 %51, -1
  store i32 %dec.i60, ptr %count_dw.i, align 4
  %52 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i62 = add i32 %53, -1
  store i32 %dec4.i62, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i60)
  %cmp.i65 = icmp slt i32 %dec.i60, 1
  br i1 %cmp.i65, label %if.then.i66, label %radeon_ring_write.exit63.radeon_ring_write.exit76_crit_edge

radeon_ring_write.exit63.radeon_ring_write.exit76_crit_edge: ; preds = %radeon_ring_write.exit63
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit76

if.then.i66:                                      ; preds = %radeon_ring_write.exit63
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit76

radeon_ring_write.exit76:                         ; preds = %if.then.i66, %radeon_ring_write.exit63.radeon_ring_write.exit76_crit_edge
  %54 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ring1.i, align 8
  %56 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %wptr.i, align 4
  %inc.i69 = add i32 %57, 1
  store i32 %inc.i69, ptr %wptr.i, align 4
  %arrayidx.i70 = getelementptr i32, ptr %55, i32 %57
  %58 = ptrtoint ptr %arrayidx.i70 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile i32 10, ptr %arrayidx.i70, align 4
  %59 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ptr_mask.i, align 4
  %61 = load i32, ptr %wptr.i, align 4
  %and.i72 = and i32 %61, %60
  store i32 %and.i72, ptr %wptr.i, align 4
  %62 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %count_dw.i, align 4
  %dec.i73 = add i32 %63, -1
  store i32 %dec.i73, ptr %count_dw.i, align 4
  %64 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i75 = add i32 %65, -1
  store i32 %dec4.i75, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i73)
  %cmp.i78 = icmp slt i32 %dec.i73, 1
  br i1 %cmp.i78, label %if.then.i79, label %radeon_ring_write.exit76.radeon_ring_write.exit89_crit_edge

radeon_ring_write.exit76.radeon_ring_write.exit89_crit_edge: ; preds = %radeon_ring_write.exit76
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit89

if.then.i79:                                      ; preds = %radeon_ring_write.exit76
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit89

radeon_ring_write.exit89:                         ; preds = %if.then.i79, %radeon_ring_write.exit76.radeon_ring_write.exit89_crit_edge
  %66 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ring1.i, align 8
  %68 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %wptr.i, align 4
  %inc.i82 = add i32 %69, 1
  store i32 %inc.i82, ptr %wptr.i, align 4
  %arrayidx.i83 = getelementptr i32, ptr %67, i32 %69
  %70 = ptrtoint ptr %arrayidx.i83 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile i32 -1073461504, ptr %arrayidx.i83, align 4
  %71 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ptr_mask.i, align 4
  %73 = load i32, ptr %wptr.i, align 4
  %and.i85 = and i32 %73, %72
  store i32 %and.i85, ptr %wptr.i, align 4
  %74 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %count_dw.i, align 4
  %dec.i86 = add i32 %75, -1
  store i32 %dec.i86, ptr %count_dw.i, align 4
  %76 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i88 = add i32 %77, -1
  store i32 %dec4.i88, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i86)
  %cmp.i91 = icmp slt i32 %dec.i86, 1
  br i1 %cmp.i91, label %if.then.i92, label %radeon_ring_write.exit89.radeon_ring_write.exit102_crit_edge

radeon_ring_write.exit89.radeon_ring_write.exit102_crit_edge: ; preds = %radeon_ring_write.exit89
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit102

if.then.i92:                                      ; preds = %radeon_ring_write.exit89
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit102

radeon_ring_write.exit102:                        ; preds = %if.then.i92, %radeon_ring_write.exit89.radeon_ring_write.exit102_crit_edge
  %78 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ring1.i, align 8
  %80 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %wptr.i, align 4
  %inc.i95 = add i32 %81, 1
  store i32 %inc.i95, ptr %wptr.i, align 4
  %arrayidx.i96 = getelementptr i32, ptr %79, i32 %81
  %82 = ptrtoint ptr %arrayidx.i96 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile i32 1300, ptr %arrayidx.i96, align 4
  %83 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %ptr_mask.i, align 4
  %85 = load i32, ptr %wptr.i, align 4
  %and.i98 = and i32 %85, %84
  store i32 %and.i98, ptr %wptr.i, align 4
  %86 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %count_dw.i, align 4
  %dec.i99 = add i32 %87, -1
  store i32 %dec.i99, ptr %count_dw.i, align 4
  %88 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i101 = add i32 %89, -1
  store i32 %dec4.i101, ptr %ring_free_dw.i, align 8
  %conv = trunc i64 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i99)
  %cmp.i104 = icmp slt i32 %dec.i99, 1
  br i1 %cmp.i104, label %if.then.i105, label %radeon_ring_write.exit102.radeon_ring_write.exit115_crit_edge

radeon_ring_write.exit102.radeon_ring_write.exit115_crit_edge: ; preds = %radeon_ring_write.exit102
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit115

if.then.i105:                                     ; preds = %radeon_ring_write.exit102
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit115

radeon_ring_write.exit115:                        ; preds = %if.then.i105, %radeon_ring_write.exit102.radeon_ring_write.exit115_crit_edge
  %90 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ring1.i, align 8
  %92 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %wptr.i, align 4
  %inc.i108 = add i32 %93, 1
  store i32 %inc.i108, ptr %wptr.i, align 4
  %arrayidx.i109 = getelementptr i32, ptr %91, i32 %93
  %94 = ptrtoint ptr %arrayidx.i109 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile i32 %conv, ptr %arrayidx.i109, align 4
  %95 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %ptr_mask.i, align 4
  %97 = load i32, ptr %wptr.i, align 4
  %and.i111 = and i32 %97, %96
  store i32 %and.i111, ptr %wptr.i, align 4
  %98 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %count_dw.i, align 4
  %dec.i112 = add i32 %99, -1
  store i32 %dec.i112, ptr %count_dw.i, align 4
  %100 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i114 = add i32 %101, -1
  store i32 %dec4.i114, ptr %ring_free_dw.i, align 8
  %shr = lshr i64 %3, 32
  %conv6 = trunc i64 %shr to i32
  %and7 = and i32 %conv6, 255
  %or9 = or i32 %and7, 570425344
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i112)
  %cmp.i117 = icmp slt i32 %dec.i112, 1
  br i1 %cmp.i117, label %if.then.i118, label %radeon_ring_write.exit115.radeon_ring_write.exit128_crit_edge

radeon_ring_write.exit115.radeon_ring_write.exit128_crit_edge: ; preds = %radeon_ring_write.exit115
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit128

if.then.i118:                                     ; preds = %radeon_ring_write.exit115
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit128

radeon_ring_write.exit128:                        ; preds = %if.then.i118, %radeon_ring_write.exit115.radeon_ring_write.exit128_crit_edge
  %102 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ring1.i, align 8
  %104 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %wptr.i, align 4
  %inc.i121 = add i32 %105, 1
  store i32 %inc.i121, ptr %wptr.i, align 4
  %arrayidx.i122 = getelementptr i32, ptr %103, i32 %105
  %106 = ptrtoint ptr %arrayidx.i122 to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile i32 %or9, ptr %arrayidx.i122, align 4
  %107 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %ptr_mask.i, align 4
  %109 = load i32, ptr %wptr.i, align 4
  %and.i124 = and i32 %109, %108
  store i32 %and.i124, ptr %wptr.i, align 4
  %110 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %count_dw.i, align 4
  %dec.i125 = add i32 %111, -1
  store i32 %dec.i125, ptr %count_dw.i, align 4
  %112 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i127 = add i32 %113, -1
  store i32 %dec4.i127, ptr %ring_free_dw.i, align 8
  %seq = getelementptr inbounds %struct.radeon_fence, ptr %fence, i32 0, i32 2
  %114 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %seq, align 8
  %conv10 = trunc i64 %115 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i125)
  %cmp.i130 = icmp slt i32 %dec.i125, 1
  br i1 %cmp.i130, label %if.then.i131, label %radeon_ring_write.exit128.radeon_ring_write.exit141_crit_edge

radeon_ring_write.exit128.radeon_ring_write.exit141_crit_edge: ; preds = %radeon_ring_write.exit128
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit141

if.then.i131:                                     ; preds = %radeon_ring_write.exit128
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit141

radeon_ring_write.exit141:                        ; preds = %if.then.i131, %radeon_ring_write.exit128.radeon_ring_write.exit141_crit_edge
  %116 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ring1.i, align 8
  %118 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %wptr.i, align 4
  %inc.i134 = add i32 %119, 1
  store i32 %inc.i134, ptr %wptr.i, align 4
  %arrayidx.i135 = getelementptr i32, ptr %117, i32 %119
  %120 = ptrtoint ptr %arrayidx.i135 to i32
  call void @__asan_store4_noabort(i32 %120)
  store volatile i32 %conv10, ptr %arrayidx.i135, align 4
  %121 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %ptr_mask.i, align 4
  %123 = load i32, ptr %wptr.i, align 4
  %and.i137 = and i32 %123, %122
  store i32 %and.i137, ptr %wptr.i, align 4
  %124 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %count_dw.i, align 4
  %dec.i138 = add i32 %125, -1
  store i32 %dec.i138, ptr %count_dw.i, align 4
  %126 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i140 = add i32 %127, -1
  store i32 %dec4.i140, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i138)
  %cmp.i143 = icmp slt i32 %dec.i138, 1
  br i1 %cmp.i143, label %if.then.i144, label %radeon_ring_write.exit141.radeon_ring_write.exit154_crit_edge

radeon_ring_write.exit141.radeon_ring_write.exit154_crit_edge: ; preds = %radeon_ring_write.exit141
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit154

if.then.i144:                                     ; preds = %radeon_ring_write.exit141
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit154

radeon_ring_write.exit154:                        ; preds = %if.then.i144, %radeon_ring_write.exit141.radeon_ring_write.exit154_crit_edge
  %128 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ring1.i, align 8
  %130 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %wptr.i, align 4
  %inc.i147 = add i32 %131, 1
  store i32 %inc.i147, ptr %wptr.i, align 4
  %arrayidx.i148 = getelementptr i32, ptr %129, i32 %131
  %132 = ptrtoint ptr %arrayidx.i148 to i32
  call void @__asan_store4_noabort(i32 %132)
  store volatile i32 0, ptr %arrayidx.i148, align 4
  %133 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %ptr_mask.i, align 4
  %135 = load i32, ptr %wptr.i, align 4
  %and.i150 = and i32 %135, %134
  store i32 %and.i150, ptr %wptr.i, align 4
  %136 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %count_dw.i, align 4
  %dec.i151 = add i32 %137, -1
  store i32 %dec.i151, ptr %count_dw.i, align 4
  %138 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i153 = add i32 %139, -1
  store i32 %dec4.i153, ptr %ring_free_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cayman_ring_ib_execute(ptr noundef %rdev, ptr nocapture noundef readonly %ib) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ring2 = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 4
  %0 = ptrtoint ptr %ring2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ring2, align 4
  %vm = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 6
  %2 = ptrtoint ptr %vm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx5 = getelementptr %struct.radeon_vm, ptr %3, i32 0, i32 10, i32 %1
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx5, align 8
  %phi.bo = shl i32 %5, 24
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %phi.bo, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %count_dw.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 11
  %6 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count_dw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp slt i32 %7, 1
  br i1 %cmp.i, label %if.then.i, label %cond.end.radeon_ring_write.exit_crit_edge

cond.end.radeon_ring_write.exit_crit_edge:        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit

if.then.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit

radeon_ring_write.exit:                           ; preds = %if.then.i, %cond.end.radeon_ring_write.exit_crit_edge
  %ring1.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 2
  %8 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ring1.i, align 8
  %wptr.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 7
  %10 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wptr.i, align 4
  %inc.i = add i32 %11, 1
  store i32 %inc.i, ptr %wptr.i, align 4
  %arrayidx.i = getelementptr i32, ptr %9, i32 %11
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 -1073735680, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 16
  %13 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ptr_mask.i, align 4
  %15 = load i32, ptr %wptr.i, align 4
  %and.i = and i32 %15, %14
  store i32 %and.i, ptr %wptr.i, align 4
  %16 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count_dw.i, align 4
  %dec.i = add i32 %17, -1
  store i32 %dec.i, ptr %count_dw.i, align 4
  %ring_free_dw.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 10
  %18 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i = add i32 %19, -1
  store i32 %dec4.i, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i43 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i43, label %if.then.i44, label %radeon_ring_write.exit.radeon_ring_write.exit54_crit_edge

radeon_ring_write.exit.radeon_ring_write.exit54_crit_edge: ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit54

if.then.i44:                                      ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit54

radeon_ring_write.exit54:                         ; preds = %if.then.i44, %radeon_ring_write.exit.radeon_ring_write.exit54_crit_edge
  %20 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ring1.i, align 8
  %22 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %wptr.i, align 4
  %inc.i47 = add i32 %23, 1
  store i32 %inc.i47, ptr %wptr.i, align 4
  %arrayidx.i48 = getelementptr i32, ptr %21, i32 %23
  %24 = ptrtoint ptr %arrayidx.i48 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 1, ptr %arrayidx.i48, align 4
  %25 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ptr_mask.i, align 4
  %27 = load i32, ptr %wptr.i, align 4
  %and.i50 = and i32 %27, %26
  store i32 %and.i50, ptr %wptr.i, align 4
  %28 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %count_dw.i, align 4
  %dec.i51 = add i32 %29, -1
  store i32 %dec.i51, ptr %count_dw.i, align 4
  %30 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i53 = add i32 %31, -1
  store i32 %dec4.i53, ptr %ring_free_dw.i, align 8
  %rptr_save_reg = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 4
  %32 = ptrtoint ptr %rptr_save_reg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rptr_save_reg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool6.not = icmp eq i32 %33, 0
  br i1 %tobool6.not, label %if.endthread-pre-split, label %if.then

if.then:                                          ; preds = %radeon_ring_write.exit54
  %34 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %wptr.i, align 4
  %add8 = add i32 %35, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i51)
  %cmp.i56 = icmp slt i32 %dec.i51, 1
  br i1 %cmp.i56, label %if.then.i57, label %if.then.radeon_ring_write.exit67_crit_edge

if.then.radeon_ring_write.exit67_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit67

if.then.i57:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit67

radeon_ring_write.exit67:                         ; preds = %if.then.i57, %if.then.radeon_ring_write.exit67_crit_edge
  %36 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ring1.i, align 8
  %38 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %wptr.i, align 4
  %inc.i60 = add i32 %39, 1
  store i32 %inc.i60, ptr %wptr.i, align 4
  %arrayidx.i61 = getelementptr i32, ptr %37, i32 %39
  %40 = ptrtoint ptr %arrayidx.i61 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile i32 -1073649664, ptr %arrayidx.i61, align 4
  %41 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ptr_mask.i, align 4
  %43 = load i32, ptr %wptr.i, align 4
  %and.i63 = and i32 %43, %42
  store i32 %and.i63, ptr %wptr.i, align 4
  %44 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %count_dw.i, align 4
  %dec.i64 = add i32 %45, -1
  store i32 %dec.i64, ptr %count_dw.i, align 4
  %46 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i66 = add i32 %47, -1
  store i32 %dec4.i66, ptr %ring_free_dw.i, align 8
  %48 = ptrtoint ptr %rptr_save_reg to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rptr_save_reg, align 8
  %sub = add i32 %49, -32768
  %shr = lshr i32 %sub, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i64)
  %cmp.i69 = icmp slt i32 %dec.i64, 1
  br i1 %cmp.i69, label %if.then.i70, label %radeon_ring_write.exit67.radeon_ring_write.exit80_crit_edge

radeon_ring_write.exit67.radeon_ring_write.exit80_crit_edge: ; preds = %radeon_ring_write.exit67
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit80

if.then.i70:                                      ; preds = %radeon_ring_write.exit67
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit80

radeon_ring_write.exit80:                         ; preds = %if.then.i70, %radeon_ring_write.exit67.radeon_ring_write.exit80_crit_edge
  %50 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ring1.i, align 8
  %52 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %wptr.i, align 4
  %inc.i73 = add i32 %53, 1
  store i32 %inc.i73, ptr %wptr.i, align 4
  %arrayidx.i74 = getelementptr i32, ptr %51, i32 %53
  %54 = ptrtoint ptr %arrayidx.i74 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile i32 %shr, ptr %arrayidx.i74, align 4
  %55 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ptr_mask.i, align 4
  %57 = load i32, ptr %wptr.i, align 4
  %and.i76 = and i32 %57, %56
  store i32 %and.i76, ptr %wptr.i, align 4
  %58 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %count_dw.i, align 4
  %dec.i77 = add i32 %59, -1
  store i32 %dec.i77, ptr %count_dw.i, align 4
  %60 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i79 = add i32 %61, -1
  store i32 %dec4.i79, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i77)
  %cmp.i82 = icmp slt i32 %dec.i77, 1
  br i1 %cmp.i82, label %if.then.i83, label %radeon_ring_write.exit80.radeon_ring_write.exit93_crit_edge

radeon_ring_write.exit80.radeon_ring_write.exit93_crit_edge: ; preds = %radeon_ring_write.exit80
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit93

if.then.i83:                                      ; preds = %radeon_ring_write.exit80
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit93

radeon_ring_write.exit93:                         ; preds = %if.then.i83, %radeon_ring_write.exit80.radeon_ring_write.exit93_crit_edge
  %62 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ring1.i, align 8
  %64 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %wptr.i, align 4
  %inc.i86 = add i32 %65, 1
  store i32 %inc.i86, ptr %wptr.i, align 4
  %arrayidx.i87 = getelementptr i32, ptr %63, i32 %65
  %66 = ptrtoint ptr %arrayidx.i87 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile i32 %add8, ptr %arrayidx.i87, align 4
  %67 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ptr_mask.i, align 4
  %69 = load i32, ptr %wptr.i, align 4
  %and.i89 = and i32 %69, %68
  store i32 %and.i89, ptr %wptr.i, align 4
  %70 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %count_dw.i, align 4
  %dec.i90 = add i32 %71, -1
  store i32 %dec.i90, ptr %count_dw.i, align 4
  %72 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i92 = add i32 %73, -1
  store i32 %dec4.i92, ptr %ring_free_dw.i, align 8
  br label %if.end

if.endthread-pre-split:                           ; preds = %radeon_ring_write.exit54
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %.pr = load i32, ptr %count_dw.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.endthread-pre-split, %radeon_ring_write.exit93
  %75 = phi i32 [ %.pr, %if.endthread-pre-split ], [ %dec.i90, %radeon_ring_write.exit93 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %75)
  %cmp.i95 = icmp slt i32 %75, 1
  br i1 %cmp.i95, label %if.then.i96, label %if.end.radeon_ring_write.exit106_crit_edge

if.end.radeon_ring_write.exit106_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit106

if.then.i96:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit106

radeon_ring_write.exit106:                        ; preds = %if.then.i96, %if.end.radeon_ring_write.exit106_crit_edge
  %76 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ring1.i, align 8
  %78 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %wptr.i, align 4
  %inc.i99 = add i32 %79, 1
  store i32 %inc.i99, ptr %wptr.i, align 4
  %arrayidx.i100 = getelementptr i32, ptr %77, i32 %79
  %80 = ptrtoint ptr %arrayidx.i100 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile i32 -1073597952, ptr %arrayidx.i100, align 4
  %81 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %ptr_mask.i, align 4
  %83 = load i32, ptr %wptr.i, align 4
  %and.i102 = and i32 %83, %82
  store i32 %and.i102, ptr %wptr.i, align 4
  %84 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %count_dw.i, align 4
  %dec.i103 = add i32 %85, -1
  store i32 %dec.i103, ptr %count_dw.i, align 4
  %86 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i105 = add i32 %87, -1
  store i32 %dec4.i105, ptr %ring_free_dw.i, align 8
  %gpu_addr = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 2
  %88 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %gpu_addr, align 8
  %90 = trunc i64 %89 to i32
  %91 = and i32 %90, -4
  %conv = or i32 %91, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i103)
  %cmp.i108 = icmp slt i32 %dec.i103, 1
  br i1 %cmp.i108, label %if.then.i109, label %radeon_ring_write.exit106.radeon_ring_write.exit119_crit_edge

radeon_ring_write.exit106.radeon_ring_write.exit119_crit_edge: ; preds = %radeon_ring_write.exit106
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit119

if.then.i109:                                     ; preds = %radeon_ring_write.exit106
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit119

radeon_ring_write.exit119:                        ; preds = %if.then.i109, %radeon_ring_write.exit106.radeon_ring_write.exit119_crit_edge
  %92 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ring1.i, align 8
  %94 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %wptr.i, align 4
  %inc.i112 = add i32 %95, 1
  store i32 %inc.i112, ptr %wptr.i, align 4
  %arrayidx.i113 = getelementptr i32, ptr %93, i32 %95
  %96 = ptrtoint ptr %arrayidx.i113 to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile i32 %conv, ptr %arrayidx.i113, align 4
  %97 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %ptr_mask.i, align 4
  %99 = load i32, ptr %wptr.i, align 4
  %and.i115 = and i32 %99, %98
  store i32 %and.i115, ptr %wptr.i, align 4
  %100 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %count_dw.i, align 4
  %dec.i116 = add i32 %101, -1
  store i32 %dec.i116, ptr %count_dw.i, align 4
  %102 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i118 = add i32 %103, -1
  store i32 %dec4.i118, ptr %ring_free_dw.i, align 8
  %104 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %gpu_addr, align 8
  %shr11 = lshr i64 %105, 32
  %conv13 = trunc i64 %shr11 to i32
  %and14 = and i32 %conv13, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i116)
  %cmp.i121 = icmp slt i32 %dec.i116, 1
  br i1 %cmp.i121, label %if.then.i122, label %radeon_ring_write.exit119.radeon_ring_write.exit132_crit_edge

radeon_ring_write.exit119.radeon_ring_write.exit132_crit_edge: ; preds = %radeon_ring_write.exit119
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit132

if.then.i122:                                     ; preds = %radeon_ring_write.exit119
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit132

radeon_ring_write.exit132:                        ; preds = %if.then.i122, %radeon_ring_write.exit119.radeon_ring_write.exit132_crit_edge
  %106 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ring1.i, align 8
  %108 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %wptr.i, align 4
  %inc.i125 = add i32 %109, 1
  store i32 %inc.i125, ptr %wptr.i, align 4
  %arrayidx.i126 = getelementptr i32, ptr %107, i32 %109
  %110 = ptrtoint ptr %arrayidx.i126 to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile i32 %and14, ptr %arrayidx.i126, align 4
  %111 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %ptr_mask.i, align 4
  %113 = load i32, ptr %wptr.i, align 4
  %and.i128 = and i32 %113, %112
  store i32 %and.i128, ptr %wptr.i, align 4
  %114 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %count_dw.i, align 4
  %dec.i129 = add i32 %115, -1
  store i32 %dec.i129, ptr %count_dw.i, align 4
  %116 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i131 = add i32 %117, -1
  store i32 %dec4.i131, ptr %ring_free_dw.i, align 8
  %length_dw = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 1
  %118 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %length_dw, align 4
  %or15 = or i32 %119, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i129)
  %cmp.i134 = icmp slt i32 %dec.i129, 1
  br i1 %cmp.i134, label %if.then.i135, label %radeon_ring_write.exit132.radeon_ring_write.exit145_crit_edge

radeon_ring_write.exit132.radeon_ring_write.exit145_crit_edge: ; preds = %radeon_ring_write.exit132
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit145

if.then.i135:                                     ; preds = %radeon_ring_write.exit132
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit145

radeon_ring_write.exit145:                        ; preds = %if.then.i135, %radeon_ring_write.exit132.radeon_ring_write.exit145_crit_edge
  %120 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ring1.i, align 8
  %122 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %wptr.i, align 4
  %inc.i138 = add i32 %123, 1
  store i32 %inc.i138, ptr %wptr.i, align 4
  %arrayidx.i139 = getelementptr i32, ptr %121, i32 %123
  %124 = ptrtoint ptr %arrayidx.i139 to i32
  call void @__asan_store4_noabort(i32 %124)
  store volatile i32 %or15, ptr %arrayidx.i139, align 4
  %125 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %ptr_mask.i, align 4
  %127 = load i32, ptr %wptr.i, align 4
  %and.i141 = and i32 %127, %126
  store i32 %and.i141, ptr %wptr.i, align 4
  %128 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %count_dw.i, align 4
  %dec.i142 = add i32 %129, -1
  store i32 %dec.i142, ptr %count_dw.i, align 4
  %130 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i144 = add i32 %131, -1
  store i32 %dec4.i144, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i142)
  %cmp.i147 = icmp slt i32 %dec.i142, 1
  br i1 %cmp.i147, label %if.then.i148, label %radeon_ring_write.exit145.radeon_ring_write.exit158_crit_edge

radeon_ring_write.exit145.radeon_ring_write.exit158_crit_edge: ; preds = %radeon_ring_write.exit145
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit158

if.then.i148:                                     ; preds = %radeon_ring_write.exit145
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit158

radeon_ring_write.exit158:                        ; preds = %if.then.i148, %radeon_ring_write.exit145.radeon_ring_write.exit158_crit_edge
  %132 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %ring1.i, align 8
  %134 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %wptr.i, align 4
  %inc.i151 = add i32 %135, 1
  store i32 %inc.i151, ptr %wptr.i, align 4
  %arrayidx.i152 = getelementptr i32, ptr %133, i32 %135
  %136 = ptrtoint ptr %arrayidx.i152 to i32
  call void @__asan_store4_noabort(i32 %136)
  store volatile i32 -1073528064, ptr %arrayidx.i152, align 4
  %137 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %ptr_mask.i, align 4
  %139 = load i32, ptr %wptr.i, align 4
  %and.i154 = and i32 %139, %138
  store i32 %and.i154, ptr %wptr.i, align 4
  %140 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %count_dw.i, align 4
  %dec.i155 = add i32 %141, -1
  store i32 %dec.i155, ptr %count_dw.i, align 4
  %142 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i157 = add i32 %143, -1
  store i32 %dec4.i157, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i155)
  %cmp.i160 = icmp slt i32 %dec.i155, 1
  br i1 %cmp.i160, label %if.then.i161, label %radeon_ring_write.exit158.radeon_ring_write.exit171_crit_edge

radeon_ring_write.exit158.radeon_ring_write.exit171_crit_edge: ; preds = %radeon_ring_write.exit158
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit171

if.then.i161:                                     ; preds = %radeon_ring_write.exit158
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit171

radeon_ring_write.exit171:                        ; preds = %if.then.i161, %radeon_ring_write.exit158.radeon_ring_write.exit171_crit_edge
  %144 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %ring1.i, align 8
  %146 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %wptr.i, align 4
  %inc.i164 = add i32 %147, 1
  store i32 %inc.i164, ptr %wptr.i, align 4
  %arrayidx.i165 = getelementptr i32, ptr %145, i32 %147
  %148 = ptrtoint ptr %arrayidx.i165 to i32
  call void @__asan_store4_noabort(i32 %148)
  store volatile i32 -2003828736, ptr %arrayidx.i165, align 4
  %149 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %ptr_mask.i, align 4
  %151 = load i32, ptr %wptr.i, align 4
  %and.i167 = and i32 %151, %150
  store i32 %and.i167, ptr %wptr.i, align 4
  %152 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %count_dw.i, align 4
  %dec.i168 = add i32 %153, -1
  store i32 %dec.i168, ptr %count_dw.i, align 4
  %154 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i170 = add i32 %155, -1
  store i32 %dec4.i170, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i168)
  %cmp.i173 = icmp slt i32 %dec.i168, 1
  br i1 %cmp.i173, label %if.then.i174, label %radeon_ring_write.exit171.radeon_ring_write.exit184_crit_edge

radeon_ring_write.exit171.radeon_ring_write.exit184_crit_edge: ; preds = %radeon_ring_write.exit171
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit184

if.then.i174:                                     ; preds = %radeon_ring_write.exit171
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit184

radeon_ring_write.exit184:                        ; preds = %if.then.i174, %radeon_ring_write.exit171.radeon_ring_write.exit184_crit_edge
  %156 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %ring1.i, align 8
  %158 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %wptr.i, align 4
  %inc.i177 = add i32 %159, 1
  store i32 %inc.i177, ptr %wptr.i, align 4
  %arrayidx.i178 = getelementptr i32, ptr %157, i32 %159
  %160 = ptrtoint ptr %arrayidx.i178 to i32
  call void @__asan_store4_noabort(i32 %160)
  store volatile i32 -1, ptr %arrayidx.i178, align 4
  %161 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %ptr_mask.i, align 4
  %163 = load i32, ptr %wptr.i, align 4
  %and.i180 = and i32 %163, %162
  store i32 %and.i180, ptr %wptr.i, align 4
  %164 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %count_dw.i, align 4
  %dec.i181 = add i32 %165, -1
  store i32 %dec.i181, ptr %count_dw.i, align 4
  %166 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i183 = add i32 %167, -1
  store i32 %dec4.i183, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i181)
  %cmp.i186 = icmp slt i32 %dec.i181, 1
  br i1 %cmp.i186, label %if.then.i187, label %radeon_ring_write.exit184.radeon_ring_write.exit197_crit_edge

radeon_ring_write.exit184.radeon_ring_write.exit197_crit_edge: ; preds = %radeon_ring_write.exit184
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit197

if.then.i187:                                     ; preds = %radeon_ring_write.exit184
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit197

radeon_ring_write.exit197:                        ; preds = %if.then.i187, %radeon_ring_write.exit184.radeon_ring_write.exit197_crit_edge
  %168 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %ring1.i, align 8
  %170 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %wptr.i, align 4
  %inc.i190 = add i32 %171, 1
  store i32 %inc.i190, ptr %wptr.i, align 4
  %arrayidx.i191 = getelementptr i32, ptr %169, i32 %171
  %172 = ptrtoint ptr %arrayidx.i191 to i32
  call void @__asan_store4_noabort(i32 %172)
  store volatile i32 0, ptr %arrayidx.i191, align 4
  %173 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %ptr_mask.i, align 4
  %175 = load i32, ptr %wptr.i, align 4
  %and.i193 = and i32 %175, %174
  store i32 %and.i193, ptr %wptr.i, align 4
  %176 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %count_dw.i, align 4
  %dec.i194 = add i32 %177, -1
  store i32 %dec.i194, ptr %count_dw.i, align 4
  %178 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i196 = add i32 %179, -1
  store i32 %dec4.i196, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i194)
  %cmp.i199 = icmp slt i32 %dec.i194, 1
  br i1 %cmp.i199, label %if.then.i200, label %radeon_ring_write.exit197.radeon_ring_write.exit210_crit_edge

radeon_ring_write.exit197.radeon_ring_write.exit210_crit_edge: ; preds = %radeon_ring_write.exit197
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit210

if.then.i200:                                     ; preds = %radeon_ring_write.exit197
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit210

radeon_ring_write.exit210:                        ; preds = %if.then.i200, %radeon_ring_write.exit197.radeon_ring_write.exit210_crit_edge
  %or18 = or i32 %cond, 10
  %180 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %ring1.i, align 8
  %182 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %wptr.i, align 4
  %inc.i203 = add i32 %183, 1
  store i32 %inc.i203, ptr %wptr.i, align 4
  %arrayidx.i204 = getelementptr i32, ptr %181, i32 %183
  %184 = ptrtoint ptr %arrayidx.i204 to i32
  call void @__asan_store4_noabort(i32 %184)
  store volatile i32 %or18, ptr %arrayidx.i204, align 4
  %185 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %ptr_mask.i, align 4
  %187 = load i32, ptr %wptr.i, align 4
  %and.i206 = and i32 %187, %186
  store i32 %and.i206, ptr %wptr.i, align 4
  %188 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %count_dw.i, align 4
  %dec.i207 = add i32 %189, -1
  store i32 %dec.i207, ptr %count_dw.i, align 4
  %190 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i209 = add i32 %191, -1
  store i32 %dec4.i209, ptr %ring_free_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cayman_gfx_get_rptr(ptr nocapture noundef readonly %rdev, ptr nocapture noundef readonly %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 62, i32 3
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 8, !range !380
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %wb2 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 62, i32 1
  %2 = ptrtoint ptr %wb2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wb2, align 4
  %rptr_offs = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 3
  %4 = ptrtoint ptr %rptr_offs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rptr_offs, align 4
  %div19 = lshr i32 %5, 2
  %arrayidx = getelementptr i32, ptr %3, i32 %div19
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx, align 4
  br label %if.end12

if.else:                                          ; preds = %entry
  %idx = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 19
  %8 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idx, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.169)
  switch i32 %9, label %if.else9 [
    i32 0, label %if.then3
    i32 1, label %if.then7
  ]

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %11 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 34560
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !377
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  br label %if.end12

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %rmmio.i22 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %15 = ptrtoint ptr %rmmio.i22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i22, align 4
  %add.ptr.i23 = getelementptr i8, ptr %16, i32 34556
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23) #7, !srcloc !377
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  br label %if.end12

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %rmmio.i26 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %19 = ptrtoint ptr %rmmio.i26 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rmmio.i26, align 4
  %add.ptr.i27 = getelementptr i8, ptr %20, i32 34552
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27) #7, !srcloc !377
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  br label %if.end12

if.end12:                                         ; preds = %if.else9, %if.then7, %if.then3, %if.then
  %rptr.0 = phi i32 [ %7, %if.then ], [ %14, %if.then3 ], [ %18, %if.then7 ], [ %22, %if.else9 ]
  ret i32 %rptr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cayman_gfx_get_wptr(ptr nocapture noundef readonly %rdev, ptr nocapture noundef readonly %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idx = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 19
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.170)
  switch i32 %1, label %if.else5 [
    i32 0, label %if.then
    i32 1, label %if.then3
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %3 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 49428
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !377
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  br label %if.end7

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rmmio.i13 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %7 = ptrtoint ptr %rmmio.i13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmmio.i13, align 4
  %add.ptr.i14 = getelementptr i8, ptr %8, i32 49552
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14) #7, !srcloc !377
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  br label %if.end7

if.else5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rmmio.i17 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %11 = ptrtoint ptr %rmmio.i17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rmmio.i17, align 4
  %add.ptr.i18 = getelementptr i8, ptr %12, i32 49572
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18) #7, !srcloc !377
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  br label %if.end7

if.end7:                                          ; preds = %if.else5, %if.then3, %if.then
  %wptr.0 = phi i32 [ %6, %if.then ], [ %10, %if.then3 ], [ %14, %if.else5 ]
  ret i32 %wptr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cayman_gfx_set_wptr(ptr nocapture noundef readonly %rdev, ptr nocapture noundef readonly %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idx = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 19
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.171)
  switch i32 %1, label %if.else6 [
    i32 0, label %if.then
    i32 1, label %if.then3
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %wptr = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 7
  %3 = ptrtoint ptr %wptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wptr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 49428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #7, !srcloc !376
  %8 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i22 = getelementptr i8, ptr %9, i32 49428
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22) #7, !srcloc !377
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  br label %if.end9

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %wptr4 = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 7
  %11 = ptrtoint ptr %wptr4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wptr4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #7
  %rmmio.i25 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %14 = ptrtoint ptr %rmmio.i25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmmio.i25, align 4
  %add.ptr.i26 = getelementptr i8, ptr %15, i32 49552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 %13) #7, !srcloc !376
  %16 = ptrtoint ptr %rmmio.i25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio.i25, align 4
  %add.ptr.i30 = getelementptr i8, ptr %17, i32 49552
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30) #7, !srcloc !377
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  br label %if.end9

if.else6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %wptr7 = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 7
  %19 = ptrtoint ptr %wptr7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wptr7, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #7
  %rmmio.i33 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %22 = ptrtoint ptr %rmmio.i33 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmmio.i33, align 4
  %add.ptr.i34 = getelementptr i8, ptr %23, i32 49572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 %21) #7, !srcloc !376
  %24 = ptrtoint ptr %rmmio.i33 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmmio.i33, align 4
  %add.ptr.i38 = getelementptr i8, ptr %25, i32 49572
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38) #7, !srcloc !377
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  br label %if.end9

if.end9:                                          ; preds = %if.else6, %if.then3, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cayman_gpu_check_soft_reset(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 32784
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !377
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  %and = and i32 %3, 1199489024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %spec.select = zext i1 %tobool.not to i32
  %and1 = and i32 %3, 805306752
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %or4 = or i32 %spec.select, 8
  %reset_mask.1 = select i1 %tobool2.not, i32 %spec.select, i32 %or4
  %and6 = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %reset_mask.2 = select i1 %tobool7.not, i32 %reset_mask.1, i32 25
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i120 = getelementptr i8, ptr %5, i32 53300
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i120) #7, !srcloc !377
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  %7 = lshr i32 %6, 22
  %8 = and i32 %7, 4
  %9 = or i32 %reset_mask.2, %8
  %10 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i124 = getelementptr i8, ptr %11, i32 55348
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i124) #7, !srcloc !377
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  %13 = lshr i32 %12, 19
  %14 = and i32 %13, 32
  %15 = or i32 %9, %14
  %16 = xor i32 %15, 36
  %17 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i128 = getelementptr i8, ptr %18, i32 3780
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i128) #7, !srcloc !377
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  %and24 = lshr i32 %20, 3
  %21 = and i32 %and24, 4
  %22 = or i32 %21, %16
  %and29 = lshr i32 %20, 1
  %23 = and i32 %and29, 32
  %24 = or i32 %22, %23
  %25 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i132 = getelementptr i8, ptr %26, i32 3664
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i132) #7, !srcloc !377
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  %and35 = and i32 %28, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  %or38 = or i32 %24, 64
  %reset_mask.7 = select i1 %tobool36.not, i32 %24, i32 %or38
  %and40 = lshr i32 %28, 9
  %29 = and i32 %and40, 256
  %and45 = lshr i32 %28, 7
  %30 = and i32 %and45, 128
  %and50 = lshr i32 %28, 1
  %31 = and i32 %and50, 16
  %and55 = shl i32 %28, 1
  %32 = and i32 %and55, 512
  %33 = or i32 %30, %29
  %34 = or i32 %33, %31
  %35 = or i32 %34, %32
  %36 = or i32 %35, %reset_mask.7
  %and60 = and i32 %28, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  %or63 = or i32 %36, 1024
  %reset_mask.12 = select i1 %tobool61.not, i32 %36, i32 %or63
  %call65 = tail call zeroext i1 @evergreen_is_display_hung(ptr noundef %rdev) #7
  %or67 = or i32 %reset_mask.12, 2048
  %reset_mask.13 = select i1 %call65, i32 %or67, i32 %reset_mask.12
  %37 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i136 = getelementptr i8, ptr %38, i32 5132
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i136) #7, !srcloc !377
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  %40 = lshr i32 %39, 15
  %41 = and i32 %40, 512
  %42 = or i32 %reset_mask.13, %41
  %and75 = and i32 %reset_mask.13, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %entry.if.end79_crit_edge, label %if.then77

entry.if.end79_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79

if.then77:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.34, i32 noundef %42) #7
  %and78 = and i32 %42, -1025
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %entry.if.end79_crit_edge
  %reset_mask.15 = phi i32 [ %and78, %if.then77 ], [ %42, %entry.if.end79_crit_edge ]
  ret i32 %reset_mask.15
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @evergreen_is_display_hung(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cayman_asic_reset(ptr noundef %rdev, i1 noundef zeroext %hard) local_unnamed_addr #0 align 64 {
entry:
  %save.i = alloca %struct.evergreen_mc_save, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %hard, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @evergreen_gpu_pci_config_reset(ptr noundef %rdev) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @cayman_gpu_check_soft_reset(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3.thread, label %do.end.i

if.end3.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %save.i) #7
  br label %cayman_gpu_soft_reset.exit

do.end.i:                                         ; preds = %if.end
  tail call void @r600_set_bios_scratch_engine_hung(ptr noundef %rdev, i1 noundef zeroext true) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %save.i) #7
  %0 = call ptr @memset(ptr %save.i, i32 255, i32 16)
  %1 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.75, i32 noundef %call) #10
  tail call void @evergreen_print_gpu_status_regs(ptr noundef %rdev) #7
  %3 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rdev, align 8
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %5 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 5368
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !377
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.79, i32 noundef %8) #10
  %9 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rdev, align 8
  %11 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i201.i = getelementptr i8, ptr %12, i32 5336
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i201.i) #7, !srcloc !377
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.82, i32 noundef %14) #10
  %15 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rdev, align 8
  %17 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i205.i = getelementptr i8, ptr %18, i32 5372
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i205.i) #7, !srcloc !377
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.85, i32 noundef %20) #10
  %21 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rdev, align 8
  %23 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i209.i = getelementptr i8, ptr %24, i32 5340
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i209.i) #7, !srcloc !377
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str.88, i32 noundef %26) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %27 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i213.i = getelementptr i8, ptr %28, i32 34520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i213.i, i32 20) #7, !srcloc !376
  %and.i = and i32 %call, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.if.end23.i_crit_edge, label %if.then20.i

do.end.i.if.end23.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i

if.then20.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i217.i = getelementptr i8, ptr %30, i32 53248
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i217.i) #7, !srcloc !377
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  %32 = and i32 %31, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %33 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i221.i = getelementptr i8, ptr %34, i32 53248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i221.i, i32 %32) #7, !srcloc !376
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then20.i, %do.end.i.if.end23.i_crit_edge
  %and24.i = and i32 %call, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.end23.i.if.end29.i_crit_edge, label %if.then26.i

if.end23.i.if.end29.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i

if.then26.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i225.i = getelementptr i8, ptr %36, i32 55296
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i225.i) #7, !srcloc !377
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  %38 = and i32 %37, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %39 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i229.i = getelementptr i8, ptr %40, i32 55296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i229.i, i32 %38) #7, !srcloc !376
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then26.i, %if.end23.i.if.end29.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 10737400) #7
  call void @evergreen_mc_stop(ptr noundef %rdev, ptr noundef nonnull %save.i) #7
  %call30.i = call i32 @evergreen_mc_wait_for_idle(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end29.i.if.end37.i_crit_edge, label %do.end35.i

if.end29.i.if.end37.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.i

do.end35.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rdev, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %43, ptr noundef nonnull @.str.91) #10
  br label %if.end37.i

if.end37.i:                                       ; preds = %do.end35.i, %if.end29.i.if.end37.i_crit_edge
  %and42.i = and i32 %call, 8
  %44 = shl nuw nsw i32 %and42.i, 5
  %45 = shl nuw nsw i32 %and.i, 18
  %46 = or i32 %45, %44
  %47 = shl nuw nsw i32 %and24.i, 1
  %48 = or i32 %46, %47
  %and57.i = lshr i32 %call, 6
  %49 = and i32 %and57.i, 32
  %50 = or i32 %48, %49
  %and62.i = shl i32 %call, 7
  %51 = and i32 %and62.i, 8192
  %52 = or i32 %50, %51
  %and67.i = shl i32 %call, 8
  %53 = and i32 %and67.i, 32768
  %54 = or i32 %52, %53
  %and72.i = shl i32 %call, 2
  %55 = and i32 %and72.i, 1024
  %and77.i = shl i32 %call, 4
  %56 = and i32 %and77.i, 256
  %57 = and i32 %and67.i, 131072
  %58 = or i32 %56, %55
  %59 = or i32 %58, %57
  %60 = or i32 %59, %54
  %flags.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %61 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags.i, align 8
  %and87.i = and i32 %62, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87.i)
  %tobool88.not.i = icmp ne i32 %and87.i, 0
  %and90.i = and i32 %call, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90.i)
  %tobool91.not.i = icmp eq i32 %and90.i, 0
  %or.cond.i = or i1 %tobool91.not.i, %tobool88.not.i
  %or93.i = or i32 %60, 2048
  %srbm_soft_reset.9.i = select i1 %or.cond.i, i32 %60, i32 %or93.i
  %63 = and i32 %call, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %if.end37.i.if.end107.i_crit_edge, label %if.then97.i

if.end37.i.if.end107.i_crit_edge:                 ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end107.i

if.then97.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  %and38.i = and i32 %call, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i = icmp eq i32 %and42.i, 0
  %spec.select.i = select i1 %tobool39.not.i, i32 0, i32 57210
  %or.i = or i32 %spec.select.i, 16385
  %grbm_soft_reset.1.i = select i1 %tobool43.not.i, i32 %spec.select.i, i32 %or.i
  %65 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i233.i = getelementptr i8, ptr %66, i32 32800
  %67 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i233.i) #7, !srcloc !377
  %68 = call i32 @llvm.bswap.i32(i32 %67) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  %or99.i = or i32 %68, %grbm_soft_reset.1.i
  %69 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rdev, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %70, ptr noundef nonnull @.str.95, i32 noundef %or99.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  call void @arm_heavy_mb() #7
  %71 = call i32 @llvm.bswap.i32(i32 %or99.i) #7
  %72 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i237.i = getelementptr i8, ptr %73, i32 32800
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i237.i, i32 %71) #7, !srcloc !376
  %74 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i241.i = getelementptr i8, ptr %75, i32 32800
  %76 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i241.i) #7, !srcloc !377
  %77 = call i32 @llvm.bswap.i32(i32 %76) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %78(i32 noundef 10737400) #7
  %neg.i = xor i32 %grbm_soft_reset.1.i, -1
  %and105.i = and i32 %77, %neg.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  call void @arm_heavy_mb() #7
  %79 = call i32 @llvm.bswap.i32(i32 %and105.i) #7
  %80 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i245.i = getelementptr i8, ptr %81, i32 32800
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i245.i, i32 %79) #7, !srcloc !376
  %82 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i249.i = getelementptr i8, ptr %83, i32 32800
  %84 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i249.i) #7, !srcloc !377
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  br label %if.end107.i

if.end107.i:                                      ; preds = %if.then97.i, %if.end37.i.if.end107.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %srbm_soft_reset.9.i)
  %tobool108.not.i = icmp eq i32 %srbm_soft_reset.9.i, 0
  br i1 %tobool108.not.i, label %if.end107.i.if.end120.i_crit_edge, label %if.then109.i

if.end107.i.if.end120.i_crit_edge:                ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120.i

if.then109.i:                                     ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #9
  %85 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i253.i = getelementptr i8, ptr %86, i32 3680
  %87 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i253.i) #7, !srcloc !377
  %88 = call i32 @llvm.bswap.i32(i32 %87) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  %or111.i = or i32 %88, %srbm_soft_reset.9.i
  %89 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %rdev, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %90, ptr noundef nonnull @.str.98, i32 noundef %or111.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  call void @arm_heavy_mb() #7
  %91 = call i32 @llvm.bswap.i32(i32 %or111.i) #7
  %92 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i257.i = getelementptr i8, ptr %93, i32 3680
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i257.i, i32 %91) #7, !srcloc !376
  %94 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i261.i = getelementptr i8, ptr %95, i32 3680
  %96 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i261.i) #7, !srcloc !377
  %97 = call i32 @llvm.bswap.i32(i32 %96) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %98 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %98(i32 noundef 10737400) #7
  %neg117.i = xor i32 %srbm_soft_reset.9.i, -1
  %and118.i = and i32 %97, %neg117.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  call void @arm_heavy_mb() #7
  %99 = call i32 @llvm.bswap.i32(i32 %and118.i) #7
  %100 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i265.i = getelementptr i8, ptr %101, i32 3680
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i265.i, i32 %99) #7, !srcloc !376
  %102 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i269.i = getelementptr i8, ptr %103, i32 3680
  %104 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i269.i) #7, !srcloc !377
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  br label %if.end120.i

if.end120.i:                                      ; preds = %if.then109.i, %if.end107.i.if.end120.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %105 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %105(i32 noundef 10737400) #7
  call void @evergreen_mc_resume(ptr noundef %rdev, ptr noundef nonnull %save.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %106 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %106(i32 noundef 10737400) #7
  call void @evergreen_print_gpu_status_regs(ptr noundef %rdev) #7
  br label %cayman_gpu_soft_reset.exit

cayman_gpu_soft_reset.exit:                       ; preds = %if.end120.i, %if.end3.thread
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %save.i) #7
  %call4 = call i32 @cayman_gpu_check_soft_reset(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %cayman_gpu_soft_reset.exit.if.end7_crit_edge, label %if.then6

cayman_gpu_soft_reset.exit.if.end7_crit_edge:     ; preds = %cayman_gpu_soft_reset.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then6:                                         ; preds = %cayman_gpu_soft_reset.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @evergreen_gpu_pci_config_reset(ptr noundef %rdev) #7
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %cayman_gpu_soft_reset.exit.if.end7_crit_edge
  call void @r600_set_bios_scratch_engine_hung(ptr noundef %rdev, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @evergreen_gpu_pci_config_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_set_bios_scratch_engine_hung(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @cayman_gfx_is_lockup(ptr noundef %rdev, ptr noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cayman_gpu_check_soft_reset(ptr noundef %rdev)
  %and = and i32 %call, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @radeon_ring_lockup_update(ptr noundef %rdev, ptr noundef %ring) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call zeroext i1 @radeon_ring_test_lockup(ptr noundef %rdev, ptr noundef %ring) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i1 [ %call1, %if.end ], [ false, %if.then ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ring_lockup_update(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_ring_test_lockup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cayman_resume(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  %0 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mode_info, align 4
  %call = tail call i32 @atom_asic_init(ptr noundef %1) #7
  tail call fastcc void @ni_init_golden_registers(ptr noundef %rdev)
  %pm_method = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 34
  %2 = ptrtoint ptr %pm_method to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pm_method, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @radeon_pm_resume(ptr noundef %rdev) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %accel_working = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 66
  %4 = ptrtoint ptr %accel_working to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %accel_working, align 2
  %call1 = tail call fastcc i32 @cayman_startup(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #7
  %5 = ptrtoint ptr %accel_working to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %accel_working, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atom_asic_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ni_init_golden_registers(ptr noundef %rdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %family, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.172)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 50, label %sw.bb
    i32 51, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @radeon_program_register_sequence(ptr noundef %rdev, ptr noundef nonnull @cayman_golden_registers, i32 noundef 111) #7
  tail call void @radeon_program_register_sequence(ptr noundef %rdev, ptr noundef nonnull @cayman_golden_registers2, i32 noundef 18) #7
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %pdev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 2
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 8
  %device = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %device, align 2
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.173)
  switch i16 %6, label %if.else [
    i16 -26368, label %sw.bb1.if.then_crit_edge
    i16 -26367, label %sw.bb1.if.then_crit_edge135
    i16 -26365, label %sw.bb1.if.then_crit_edge136
    i16 -26364, label %sw.bb1.if.then_crit_edge137
    i16 -26363, label %sw.bb1.if.then_crit_edge138
    i16 -26362, label %sw.bb1.if.then_crit_edge139
    i16 -26361, label %sw.bb1.if.then_crit_edge140
    i16 -26360, label %sw.bb1.if.then_crit_edge141
    i16 -26359, label %sw.bb1.if.then_crit_edge142
    i16 -26358, label %sw.bb1.if.then_crit_edge143
    i16 -26357, label %sw.bb1.if.then_crit_edge144
    i16 -26356, label %sw.bb1.if.then_crit_edge145
    i16 -26355, label %sw.bb1.if.then_crit_edge146
    i16 -26354, label %sw.bb1.if.then_crit_edge147
    i16 -26353, label %sw.bb1.if.then_crit_edge148
    i16 -26352, label %sw.bb1.if.then_crit_edge149
    i16 -26349, label %sw.bb1.if.then_crit_edge150
    i16 -26345, label %sw.bb1.if.then_crit_edge151
    i16 -26344, label %sw.bb1.if.then_crit_edge152
  ]

sw.bb1.if.then_crit_edge152:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

sw.bb1.if.then_crit_edge151:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

sw.bb1.if.then_crit_edge150:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

sw.bb1.if.then_crit_edge149:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

sw.bb1.if.then_crit_edge148:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

sw.bb1.if.then_crit_edge147:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

sw.bb1.if.then_crit_edge146:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

sw.bb1.if.then_crit_edge145:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

sw.bb1.if.then_crit_edge144:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

sw.bb1.if.then_crit_edge143:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

sw.bb1.if.then_crit_edge142:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

sw.bb1.if.then_crit_edge141:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

sw.bb1.if.then_crit_edge140:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

sw.bb1.if.then_crit_edge139:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

sw.bb1.if.then_crit_edge138:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

sw.bb1.if.then_crit_edge137:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

sw.bb1.if.then_crit_edge136:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

sw.bb1.if.then_crit_edge135:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

sw.bb1.if.then_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %sw.bb1.if.then_crit_edge, %sw.bb1.if.then_crit_edge135, %sw.bb1.if.then_crit_edge136, %sw.bb1.if.then_crit_edge137, %sw.bb1.if.then_crit_edge138, %sw.bb1.if.then_crit_edge139, %sw.bb1.if.then_crit_edge140, %sw.bb1.if.then_crit_edge141, %sw.bb1.if.then_crit_edge142, %sw.bb1.if.then_crit_edge143, %sw.bb1.if.then_crit_edge144, %sw.bb1.if.then_crit_edge145, %sw.bb1.if.then_crit_edge146, %sw.bb1.if.then_crit_edge147, %sw.bb1.if.then_crit_edge148, %sw.bb1.if.then_crit_edge149, %sw.bb1.if.then_crit_edge150, %sw.bb1.if.then_crit_edge151, %sw.bb1.if.then_crit_edge152
  tail call void @radeon_program_register_sequence(ptr noundef %rdev, ptr noundef nonnull @dvst_golden_registers, i32 noundef 162) #7
  tail call void @radeon_program_register_sequence(ptr noundef %rdev, ptr noundef nonnull @dvst_golden_registers2, i32 noundef 12) #7
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @radeon_program_register_sequence(ptr noundef %rdev, ptr noundef nonnull @scrapper_golden_registers, i32 noundef 309) #7
  tail call void @radeon_program_register_sequence(ptr noundef %rdev, ptr noundef nonnull @dvst_golden_registers2, i32 noundef 12) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %if.then, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_pm_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cayman_startup(ptr noundef %rdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ring1 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 52
  tail call void @evergreen_pcie_gen2_enable(ptr noundef %rdev) #7
  tail call void @evergreen_program_aspm(ptr noundef %rdev) #7
  %call = tail call i32 @r600_vram_scratch_init(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @evergreen_mc_program(ptr noundef %rdev) #7
  %flags = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.lhs.true, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %dpm_enabled = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 50
  %2 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dpm_enabled, align 8, !range !380
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %if.then4, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then4:                                         ; preds = %land.lhs.true
  %call5 = tail call i32 @ni_mc_load_microcode(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then4.if.end9_crit_edge, label %if.then7

if.then4.if.end9_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.100) #7
  br label %cleanup

if.end9:                                          ; preds = %if.then4.if.end9_crit_edge, %land.lhs.true.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %gart.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43
  %robj.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 1
  %4 = ptrtoint ptr %robj.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %robj.i, align 4
  %cmp.i = icmp eq ptr %5, null
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.120) #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end9
  %call.i = tail call i32 @radeon_gart_table_vram_pin(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end2.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2.i:                                        ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %8 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 8292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1527054336) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i86.i = getelementptr i8, ptr %11, i32 5120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86.i, i32 63309056) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i90.i = getelementptr i8, ptr %13, i32 5124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90.i, i32 50331648) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i94.i = getelementptr i8, ptr %15, i32 5128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i94.i, i32 100668160) #7, !srcloc !376
  %gtt_start.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 6
  %16 = ptrtoint ptr %gtt_start.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %gtt_start.i, align 8
  %shr.i = lshr i64 %17, 12
  %conv.i = trunc i64 %shr.i to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %18 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #7
  %19 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i98.i = getelementptr i8, ptr %20, i32 5468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i98.i, i32 %18) #7, !srcloc !376
  %gtt_end.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 7
  %21 = ptrtoint ptr %gtt_end.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %gtt_end.i, align 8
  %shr4.i = lshr i64 %22, 12
  %conv5.i = trunc i64 %shr4.i to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %23 = tail call i32 @llvm.bswap.i32(i32 %conv5.i) #7
  %24 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i102.i = getelementptr i8, ptr %25, i32 5500
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i102.i, i32 %23) #7, !srcloc !376
  %26 = ptrtoint ptr %gart.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %gart.i, align 8
  %shr7.i = lshr i32 %27, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %28 = tail call i32 @llvm.bswap.i32(i32 %shr7.i) #7
  %29 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i106.i = getelementptr i8, ptr %30, i32 5436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i106.i, i32 %28) #7, !srcloc !376
  %addr.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 63, i32 2
  %31 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %addr.i, align 4
  %shr8.i = lshr i32 %32, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %33 = tail call i32 @llvm.bswap.i32(i32 %shr8.i) #7
  %34 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i110.i = getelementptr i8, ptr %35, i32 5400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i110.i, i32 %33) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %36 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i114.i = getelementptr i8, ptr %37, i32 5168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i114.i, i32 0) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %38 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i118.i = getelementptr i8, ptr %39, i32 5136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i118.i, i32 285212672) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %40 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i122.i = getelementptr i8, ptr %41, i32 5588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i122.i, i32 0) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %42 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i126.i = getelementptr i8, ptr %43, i32 5592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i126.i, i32 0) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %44 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i130.i = getelementptr i8, ptr %45, i32 5596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130.i, i32 0) #7, !srcloc !376
  %max_pfn.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 100, i32 1
  br label %r100_mm_wreg.exit152.i

r100_mm_wreg.exit152.i:                           ; preds = %r100_mm_wreg.exit152.i.r100_mm_wreg.exit152.i_crit_edge, %if.end2.i
  %i.0168.i = phi i32 [ 1, %if.end2.i ], [ %inc.i, %r100_mm_wreg.exit152.i.r100_mm_wreg.exit152.i_crit_edge ]
  %shl.i = shl i32 %i.0168.i, 2
  %add.i = add nuw nsw i32 %shl.i, 5468
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %46 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i134.i = getelementptr i8, ptr %47, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i134.i, i32 0) #7, !srcloc !376
  %48 = ptrtoint ptr %max_pfn.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %max_pfn.i, align 8
  %sub.i = add i32 %49, -1
  %add12.i = add nuw nsw i32 %shl.i, 5500
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %50 = tail call i32 @llvm.bswap.i32(i32 %sub.i) #7
  %51 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i140.i = getelementptr i8, ptr %52, i32 %add12.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i140.i, i32 %50) #7, !srcloc !376
  %arrayidx.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 100, i32 5, i32 %i.0168.i
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i, align 4
  %add14.i = add nuw nsw i32 %shl.i, 5436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #7
  %56 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i149.i = getelementptr i8, ptr %57, i32 %add14.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i149.i, i32 %55) #7, !srcloc !376
  %inc.i = add nuw nsw i32 %i.0168.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %if.end13, label %r100_mm_wreg.exit152.i.r100_mm_wreg.exit152.i_crit_edge

r100_mm_wreg.exit152.i.r100_mm_wreg.exit152.i_crit_edge: ; preds = %r100_mm_wreg.exit152.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %r100_mm_wreg.exit152.i

if.end13:                                         ; preds = %r100_mm_wreg.exit152.i
  %58 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %addr.i, align 4
  %shr18.i = lshr i32 %59, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %60 = tail call i32 @llvm.bswap.i32(i32 %shr18.i) #7
  %61 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i156.i = getelementptr i8, ptr %62, i32 5404
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i156.i, i32 %60) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %63 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i161.i = getelementptr i8, ptr %64, i32 5172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i161.i, i32 67108864) #7, !srcloc !376
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_vm_block_size to i32))
  %65 = load i32, ptr @radeon_vm_block_size, align 4
  %sub19.i = shl i32 %65, 24
  %and.i = add i32 %sub19.i, 117440512
  %shl20.i = and i32 %and.i, 251658240
  %or32.i = or i32 %shl20.i, 898779
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %66 = tail call i32 @llvm.bswap.i32(i32 %or32.i) #7
  %67 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i166.i = getelementptr i8, ptr %68, i32 5140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i166.i, i32 %66) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %69 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %70, i32 21632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 16777216) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %71 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %72, i32 5240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i, i32 16777216) #7, !srcloc !376
  %gtt_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 5
  %73 = ptrtoint ptr %gtt_size.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %gtt_size.i, align 8
  %shr37.i = lshr i64 %74, 20
  %conv38.i = trunc i64 %shr37.i to i32
  %75 = ptrtoint ptr %gart.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %gart.i, align 8
  %conv41.i = zext i32 %76 to i64
  %call42.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, i32 noundef %conv38.i, i64 noundef %conv41.i) #10
  %ready.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 8
  %77 = ptrtoint ptr %ready.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %ready.i, align 8
  %family.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %78 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %79)
  %cond873.i = icmp eq i32 %79, 50
  %config.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5
  br i1 %cond873.i, label %sw.bb.i, label %sw.default.i

sw.bb.i:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %config.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 2, ptr %config.i, align 8
  %max_pipes_per_simd.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 1
  %81 = ptrtoint ptr %max_pipes_per_simd.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 4, ptr %max_pipes_per_simd.i, align 4
  %max_tile_pipes.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 2
  %82 = ptrtoint ptr %max_tile_pipes.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 8, ptr %max_tile_pipes.i, align 8
  %max_simds_per_se.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 3
  %83 = ptrtoint ptr %max_simds_per_se.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 12, ptr %max_simds_per_se.i, align 4
  %max_backends_per_se.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 4
  %84 = ptrtoint ptr %max_backends_per_se.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 4, ptr %max_backends_per_se.i, align 8
  %max_texture_channel_caches.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 5
  %85 = ptrtoint ptr %max_texture_channel_caches.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 8, ptr %max_texture_channel_caches.i, align 4
  %max_gprs.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 6
  %86 = ptrtoint ptr %max_gprs.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 256, ptr %max_gprs.i, align 8
  %max_threads.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 7
  %87 = ptrtoint ptr %max_threads.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 256, ptr %max_threads.i, align 4
  %max_gs_threads.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 8
  %88 = ptrtoint ptr %max_gs_threads.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 32, ptr %max_gs_threads.i, align 8
  %max_stack_entries.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 9
  %89 = ptrtoint ptr %max_stack_entries.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 512, ptr %max_stack_entries.i, align 4
  %sx_num_of_sets.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 10
  %90 = ptrtoint ptr %sx_num_of_sets.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 8, ptr %sx_num_of_sets.i, align 8
  %sx_max_export_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 11
  %91 = ptrtoint ptr %sx_max_export_size.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 256, ptr %sx_max_export_size.i, align 4
  %sx_max_export_pos_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 12
  %92 = ptrtoint ptr %sx_max_export_pos_size.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 64, ptr %sx_max_export_pos_size.i, align 8
  %sx_max_export_smx_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 13
  %93 = ptrtoint ptr %sx_max_export_smx_size.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 192, ptr %sx_max_export_smx_size.i, align 4
  %max_hw_contexts.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 14
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end13
  %94 = ptrtoint ptr %config.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 1, ptr %config.i, align 8
  %max_pipes_per_simd23.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 1
  %95 = ptrtoint ptr %max_pipes_per_simd23.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 4, ptr %max_pipes_per_simd23.i, align 4
  %max_tile_pipes25.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 2
  %96 = ptrtoint ptr %max_tile_pipes25.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 2, ptr %max_tile_pipes25.i, align 8
  %pdev.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 2
  %97 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pdev.i, align 8
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %98, i32 0, i32 8
  %99 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %device.i, align 2
  %101 = zext i16 %100 to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.174)
  switch i16 %100, label %if.else237.i [
    i16 -26368, label %sw.default.i.if.end251.i_crit_edge
    i16 -26367, label %sw.default.i.if.end251.i_crit_edge253
    i16 -26363, label %sw.default.i.if.end251.i_crit_edge254
    i16 -26362, label %sw.default.i.if.end251.i_crit_edge255
    i16 -26361, label %sw.default.i.if.end251.i_crit_edge256
    i16 -26360, label %sw.default.i.if.end251.i_crit_edge257
    i16 -26359, label %sw.default.i.if.end251.i_crit_edge258
    i16 -26357, label %sw.default.i.if.end251.i_crit_edge259
    i16 -26356, label %sw.default.i.if.end251.i_crit_edge260
    i16 -26353, label %sw.default.i.if.end251.i_crit_edge261
    i16 -26352, label %sw.default.i.if.end251.i_crit_edge262
    i16 -26345, label %sw.default.i.if.end251.i_crit_edge263
    i16 -26215, label %sw.default.i.if.end251.i_crit_edge264
    i16 -26212, label %sw.default.i.if.end251.i_crit_edge265
    i16 -26365, label %sw.default.i.if.then163.i_crit_edge
    i16 -26364, label %sw.default.i.if.then163.i_crit_edge266
    i16 -26358, label %sw.default.i.if.then163.i_crit_edge267
    i16 -26355, label %sw.default.i.if.then163.i_crit_edge268
    i16 -26354, label %sw.default.i.if.then163.i_crit_edge269
    i16 -26349, label %sw.default.i.if.then163.i_crit_edge270
    i16 -26344, label %sw.default.i.if.then163.i_crit_edge271
    i16 -26211, label %sw.default.i.if.then163.i_crit_edge272
    i16 -26343, label %sw.default.i.if.then224.i_crit_edge
    i16 -26224, label %sw.default.i.if.then224.i_crit_edge273
    i16 -26223, label %sw.default.i.if.then224.i_crit_edge274
    i16 -26220, label %sw.default.i.if.then224.i_crit_edge275
    i16 -26219, label %sw.default.i.if.then224.i_crit_edge276
    i16 -26218, label %sw.default.i.if.then224.i_crit_edge277
    i16 -26214, label %sw.default.i.if.then224.i_crit_edge278
    i16 -26208, label %sw.default.i.if.then224.i_crit_edge279
  ]

sw.default.i.if.then224.i_crit_edge279:           ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then224.i

sw.default.i.if.then224.i_crit_edge278:           ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then224.i

sw.default.i.if.then224.i_crit_edge277:           ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then224.i

sw.default.i.if.then224.i_crit_edge276:           ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then224.i

sw.default.i.if.then224.i_crit_edge275:           ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then224.i

sw.default.i.if.then224.i_crit_edge274:           ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then224.i

sw.default.i.if.then224.i_crit_edge273:           ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then224.i

sw.default.i.if.then224.i_crit_edge:              ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then224.i

sw.default.i.if.then163.i_crit_edge272:           ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then163.i

sw.default.i.if.then163.i_crit_edge271:           ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then163.i

sw.default.i.if.then163.i_crit_edge270:           ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then163.i

sw.default.i.if.then163.i_crit_edge269:           ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then163.i

sw.default.i.if.then163.i_crit_edge268:           ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then163.i

sw.default.i.if.then163.i_crit_edge267:           ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then163.i

sw.default.i.if.then163.i_crit_edge266:           ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then163.i

sw.default.i.if.then163.i_crit_edge:              ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then163.i

sw.default.i.if.end251.i_crit_edge265:            ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end251.i

sw.default.i.if.end251.i_crit_edge264:            ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end251.i

sw.default.i.if.end251.i_crit_edge263:            ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end251.i

sw.default.i.if.end251.i_crit_edge262:            ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end251.i

sw.default.i.if.end251.i_crit_edge261:            ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end251.i

sw.default.i.if.end251.i_crit_edge260:            ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end251.i

sw.default.i.if.end251.i_crit_edge259:            ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end251.i

sw.default.i.if.end251.i_crit_edge258:            ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end251.i

sw.default.i.if.end251.i_crit_edge257:            ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end251.i

sw.default.i.if.end251.i_crit_edge256:            ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end251.i

sw.default.i.if.end251.i_crit_edge255:            ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end251.i

sw.default.i.if.end251.i_crit_edge254:            ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end251.i

sw.default.i.if.end251.i_crit_edge253:            ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end251.i

sw.default.i.if.end251.i_crit_edge:               ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end251.i

if.then163.i:                                     ; preds = %sw.default.i.if.then163.i_crit_edge, %sw.default.i.if.then163.i_crit_edge266, %sw.default.i.if.then163.i_crit_edge267, %sw.default.i.if.then163.i_crit_edge268, %sw.default.i.if.then163.i_crit_edge269, %sw.default.i.if.then163.i_crit_edge270, %sw.default.i.if.then163.i_crit_edge271, %sw.default.i.if.then163.i_crit_edge272
  br label %if.end251.i

if.then224.i:                                     ; preds = %sw.default.i.if.then224.i_crit_edge, %sw.default.i.if.then224.i_crit_edge273, %sw.default.i.if.then224.i_crit_edge274, %sw.default.i.if.then224.i_crit_edge275, %sw.default.i.if.then224.i_crit_edge276, %sw.default.i.if.then224.i_crit_edge277, %sw.default.i.if.then224.i_crit_edge278, %sw.default.i.if.then224.i_crit_edge279
  br label %if.end251.i

if.else237.i:                                     ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end251.i

if.end251.i:                                      ; preds = %if.else237.i, %if.then224.i, %if.then163.i, %sw.default.i.if.end251.i_crit_edge, %sw.default.i.if.end251.i_crit_edge253, %sw.default.i.if.end251.i_crit_edge254, %sw.default.i.if.end251.i_crit_edge255, %sw.default.i.if.end251.i_crit_edge256, %sw.default.i.if.end251.i_crit_edge257, %sw.default.i.if.end251.i_crit_edge258, %sw.default.i.if.end251.i_crit_edge259, %sw.default.i.if.end251.i_crit_edge260, %sw.default.i.if.end251.i_crit_edge261, %sw.default.i.if.end251.i_crit_edge262, %sw.default.i.if.end251.i_crit_edge263, %sw.default.i.if.end251.i_crit_edge264, %sw.default.i.if.end251.i_crit_edge265
  %.sink1616.i = phi i32 [ 4, %if.then163.i ], [ 2, %if.else237.i ], [ 3, %if.then224.i ], [ 6, %sw.default.i.if.end251.i_crit_edge ], [ 6, %sw.default.i.if.end251.i_crit_edge253 ], [ 6, %sw.default.i.if.end251.i_crit_edge254 ], [ 6, %sw.default.i.if.end251.i_crit_edge255 ], [ 6, %sw.default.i.if.end251.i_crit_edge256 ], [ 6, %sw.default.i.if.end251.i_crit_edge257 ], [ 6, %sw.default.i.if.end251.i_crit_edge258 ], [ 6, %sw.default.i.if.end251.i_crit_edge259 ], [ 6, %sw.default.i.if.end251.i_crit_edge260 ], [ 6, %sw.default.i.if.end251.i_crit_edge261 ], [ 6, %sw.default.i.if.end251.i_crit_edge262 ], [ 6, %sw.default.i.if.end251.i_crit_edge263 ], [ 6, %sw.default.i.if.end251.i_crit_edge264 ], [ 6, %sw.default.i.if.end251.i_crit_edge265 ]
  %.sink1615.i = phi i32 [ 2, %if.then163.i ], [ 1, %if.else237.i ], [ 1, %if.then224.i ], [ 2, %sw.default.i.if.end251.i_crit_edge ], [ 2, %sw.default.i.if.end251.i_crit_edge253 ], [ 2, %sw.default.i.if.end251.i_crit_edge254 ], [ 2, %sw.default.i.if.end251.i_crit_edge255 ], [ 2, %sw.default.i.if.end251.i_crit_edge256 ], [ 2, %sw.default.i.if.end251.i_crit_edge257 ], [ 2, %sw.default.i.if.end251.i_crit_edge258 ], [ 2, %sw.default.i.if.end251.i_crit_edge259 ], [ 2, %sw.default.i.if.end251.i_crit_edge260 ], [ 2, %sw.default.i.if.end251.i_crit_edge261 ], [ 2, %sw.default.i.if.end251.i_crit_edge262 ], [ 2, %sw.default.i.if.end251.i_crit_edge263 ], [ 2, %sw.default.i.if.end251.i_crit_edge264 ], [ 2, %sw.default.i.if.end251.i_crit_edge265 ]
  %.sink1614.i = phi i32 [ 8, %if.then163.i ], [ 4, %if.else237.i ], [ 4, %if.then224.i ], [ 8, %sw.default.i.if.end251.i_crit_edge ], [ 8, %sw.default.i.if.end251.i_crit_edge253 ], [ 8, %sw.default.i.if.end251.i_crit_edge254 ], [ 8, %sw.default.i.if.end251.i_crit_edge255 ], [ 8, %sw.default.i.if.end251.i_crit_edge256 ], [ 8, %sw.default.i.if.end251.i_crit_edge257 ], [ 8, %sw.default.i.if.end251.i_crit_edge258 ], [ 8, %sw.default.i.if.end251.i_crit_edge259 ], [ 8, %sw.default.i.if.end251.i_crit_edge260 ], [ 8, %sw.default.i.if.end251.i_crit_edge261 ], [ 8, %sw.default.i.if.end251.i_crit_edge262 ], [ 8, %sw.default.i.if.end251.i_crit_edge263 ], [ 8, %sw.default.i.if.end251.i_crit_edge264 ], [ 8, %sw.default.i.if.end251.i_crit_edge265 ]
  %.sink1613.i = phi i32 [ 256, %if.then163.i ], [ 128, %if.else237.i ], [ 128, %if.then224.i ], [ 256, %sw.default.i.if.end251.i_crit_edge ], [ 256, %sw.default.i.if.end251.i_crit_edge253 ], [ 256, %sw.default.i.if.end251.i_crit_edge254 ], [ 256, %sw.default.i.if.end251.i_crit_edge255 ], [ 256, %sw.default.i.if.end251.i_crit_edge256 ], [ 256, %sw.default.i.if.end251.i_crit_edge257 ], [ 256, %sw.default.i.if.end251.i_crit_edge258 ], [ 256, %sw.default.i.if.end251.i_crit_edge259 ], [ 256, %sw.default.i.if.end251.i_crit_edge260 ], [ 256, %sw.default.i.if.end251.i_crit_edge261 ], [ 256, %sw.default.i.if.end251.i_crit_edge262 ], [ 256, %sw.default.i.if.end251.i_crit_edge263 ], [ 256, %sw.default.i.if.end251.i_crit_edge264 ], [ 256, %sw.default.i.if.end251.i_crit_edge265 ]
  %.sink1612.i = phi i32 [ 64, %if.then163.i ], [ 32, %if.else237.i ], [ 32, %if.then224.i ], [ 64, %sw.default.i.if.end251.i_crit_edge ], [ 64, %sw.default.i.if.end251.i_crit_edge253 ], [ 64, %sw.default.i.if.end251.i_crit_edge254 ], [ 64, %sw.default.i.if.end251.i_crit_edge255 ], [ 64, %sw.default.i.if.end251.i_crit_edge256 ], [ 64, %sw.default.i.if.end251.i_crit_edge257 ], [ 64, %sw.default.i.if.end251.i_crit_edge258 ], [ 64, %sw.default.i.if.end251.i_crit_edge259 ], [ 64, %sw.default.i.if.end251.i_crit_edge260 ], [ 64, %sw.default.i.if.end251.i_crit_edge261 ], [ 64, %sw.default.i.if.end251.i_crit_edge262 ], [ 64, %sw.default.i.if.end251.i_crit_edge263 ], [ 64, %sw.default.i.if.end251.i_crit_edge264 ], [ 64, %sw.default.i.if.end251.i_crit_edge265 ]
  %.sink.i = phi i32 [ 192, %if.then163.i ], [ 96, %if.else237.i ], [ 96, %if.then224.i ], [ 192, %sw.default.i.if.end251.i_crit_edge ], [ 192, %sw.default.i.if.end251.i_crit_edge253 ], [ 192, %sw.default.i.if.end251.i_crit_edge254 ], [ 192, %sw.default.i.if.end251.i_crit_edge255 ], [ 192, %sw.default.i.if.end251.i_crit_edge256 ], [ 192, %sw.default.i.if.end251.i_crit_edge257 ], [ 192, %sw.default.i.if.end251.i_crit_edge258 ], [ 192, %sw.default.i.if.end251.i_crit_edge259 ], [ 192, %sw.default.i.if.end251.i_crit_edge260 ], [ 192, %sw.default.i.if.end251.i_crit_edge261 ], [ 192, %sw.default.i.if.end251.i_crit_edge262 ], [ 192, %sw.default.i.if.end251.i_crit_edge263 ], [ 192, %sw.default.i.if.end251.i_crit_edge264 ], [ 192, %sw.default.i.if.end251.i_crit_edge265 ]
  %max_simds_per_se165.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 3
  %102 = ptrtoint ptr %max_simds_per_se165.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %.sink1616.i, ptr %max_simds_per_se165.i, align 4
  %max_backends_per_se167.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 4
  %103 = ptrtoint ptr %max_backends_per_se167.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %.sink1615.i, ptr %max_backends_per_se167.i, align 8
  %max_hw_contexts169.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 14
  %104 = ptrtoint ptr %max_hw_contexts169.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %.sink1614.i, ptr %max_hw_contexts169.i, align 8
  %sx_max_export_size171.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 11
  %105 = ptrtoint ptr %sx_max_export_size171.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %.sink1613.i, ptr %sx_max_export_size171.i, align 4
  %sx_max_export_pos_size173.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 12
  %106 = ptrtoint ptr %sx_max_export_pos_size173.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %.sink1612.i, ptr %sx_max_export_pos_size173.i, align 8
  %sx_max_export_smx_size175.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 13
  %107 = ptrtoint ptr %sx_max_export_smx_size175.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %.sink.i, ptr %sx_max_export_smx_size175.i, align 4
  %max_texture_channel_caches253.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 5
  %108 = ptrtoint ptr %max_texture_channel_caches253.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 2, ptr %max_texture_channel_caches253.i, align 4
  %max_gprs255.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 6
  %109 = ptrtoint ptr %max_gprs255.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 256, ptr %max_gprs255.i, align 8
  %max_threads257.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 7
  %110 = ptrtoint ptr %max_threads257.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 256, ptr %max_threads257.i, align 4
  %max_gs_threads259.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 8
  %111 = ptrtoint ptr %max_gs_threads259.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 32, ptr %max_gs_threads259.i, align 8
  %max_stack_entries261.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 9
  %112 = ptrtoint ptr %max_stack_entries261.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 512, ptr %max_stack_entries261.i, align 4
  %sx_num_of_sets263.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 10
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end251.i, %sw.bb.i
  %sx_num_of_sets263.sink.i = phi ptr [ %sx_num_of_sets263.i, %if.end251.i ], [ %max_hw_contexts.i, %sw.bb.i ]
  %.sink1617.i = phi i32 [ 64, %if.end251.i ], [ 256, %sw.bb.i ]
  %gb_addr_config.0.i = phi i32 [ 302055425, %if.end251.i ], [ 33624067, %sw.bb.i ]
  %113 = ptrtoint ptr %sx_num_of_sets263.sink.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 8, ptr %sx_num_of_sets263.sink.i, align 8
  %sq_num_cf_insts265.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 15
  %114 = ptrtoint ptr %sq_num_cf_insts265.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 2, ptr %sq_num_cf_insts265.i, align 4
  %sc_prim_fifo_size267.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 16
  %115 = ptrtoint ptr %sc_prim_fifo_size267.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %.sink1617.i, ptr %sc_prim_fifo_size267.i, align 8
  %sc_hiz_tile_fifo_size269.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 17
  %116 = ptrtoint ptr %sc_hiz_tile_fifo_size269.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 48, ptr %sc_hiz_tile_fifo_size269.i, align 4
  %sc_earlyz_tile_fifo_size271.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 18
  %117 = ptrtoint ptr %sc_earlyz_tile_fifo_size271.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 304, ptr %sc_earlyz_tile_fifo_size271.i, align 8
  br label %r100_mm_wreg.exit1241.i

r100_mm_wreg.exit1241.i:                          ; preds = %r100_mm_wreg.exit1241.i.r100_mm_wreg.exit1241.i_crit_edge, %sw.epilog.i
  %j.01579.i = phi i32 [ 0, %sw.epilog.i ], [ %add278.i, %r100_mm_wreg.exit1241.i.r100_mm_wreg.exit1241.i_crit_edge ]
  %i.01578.i = phi i32 [ 0, %sw.epilog.i ], [ %inc.i232, %r100_mm_wreg.exit1241.i.r100_mm_wreg.exit1241.i_crit_edge ]
  %add.i230 = add nuw nsw i32 %j.01579.i, 11284
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %118 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i231 = getelementptr i8, ptr %119, i32 %add.i230
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i231, i32 0) #7, !srcloc !376
  %add274.i = add nuw nsw i32 %j.01579.i, 11288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %120 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1211.i = getelementptr i8, ptr %121, i32 %add274.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1211.i, i32 0) #7, !srcloc !376
  %add275.i = add nuw nsw i32 %j.01579.i, 11292
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %122 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1220.i = getelementptr i8, ptr %123, i32 %add275.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1220.i, i32 0) #7, !srcloc !376
  %add276.i = add nuw nsw i32 %j.01579.i, 11296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %124 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1229.i = getelementptr i8, ptr %125, i32 %add276.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1229.i, i32 0) #7, !srcloc !376
  %add277.i = add nuw nsw i32 %j.01579.i, 11300
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %126 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1238.i = getelementptr i8, ptr %127, i32 %add277.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1238.i, i32 0) #7, !srcloc !376
  %inc.i232 = add nuw nsw i32 %i.01578.i, 1
  %add278.i = add nuw nsw i32 %j.01579.i, 24
  %exitcond.not.i233 = icmp eq i32 %inc.i232, 32
  br i1 %exitcond.not.i233, label %for.end.i235, label %r100_mm_wreg.exit1241.i.r100_mm_wreg.exit1241.i_crit_edge

r100_mm_wreg.exit1241.i.r100_mm_wreg.exit1241.i_crit_edge: ; preds = %r100_mm_wreg.exit1241.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %r100_mm_wreg.exit1241.i

for.end.i235:                                     ; preds = %r100_mm_wreg.exit1241.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %128 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1245.i = getelementptr i8, ptr %129, i32 32768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1245.i, i32 -16777216) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %130 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1250.i = getelementptr i8, ptr %131, i32 3744
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1250.i, i32 16777216) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %132 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1255.i = getelementptr i8, ptr %133, i32 3752
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1255.i, i32 16777216) #7, !srcloc !376
  tail call void @evergreen_fix_pci_max_read_req_size(ptr noundef %rdev) #7
  %134 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1260.i = getelementptr i8, ptr %135, i32 8196
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1260.i) #7, !srcloc !377
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  %137 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1264.i = getelementptr i8, ptr %138, i32 10080
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1264.i) #7, !srcloc !377
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  %mem_row_size_in_kb.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 24, i32 4
  %shader_engine_tile_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 24, i32 5
  %140 = ptrtoint ptr %shader_engine_tile_size.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 32, ptr %shader_engine_tile_size.i, align 4
  %num_gpus.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 24, i32 6
  %multi_gpu_tile_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 24, i32 7
  %and293.i = and i32 %gb_addr_config.0.i, 3
  %shl295.i = shl nuw nsw i32 1, %and293.i
  %num_tile_pipes.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 21
  %141 = ptrtoint ptr %num_tile_pipes.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %shl295.i, ptr %num_tile_pipes.i, align 4
  %mem_max_burst_length_bytes.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 24, i32 3
  %142 = ptrtoint ptr %mem_max_burst_length_bytes.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 256, ptr %mem_max_burst_length_bytes.i, align 4
  %and302.i = lshr i32 %gb_addr_config.0.i, 12
  %shr303.i = and i32 %and302.i, 1
  %add304.i = add nuw nsw i32 %shr303.i, 1
  %num_shader_engines.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 19
  %143 = ptrtoint ptr %num_shader_engines.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %add304.i, ptr %num_shader_engines.i, align 4
  %144 = ptrtoint ptr %num_gpus.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 1, ptr %num_gpus.i, align 8
  %145 = ptrtoint ptr %multi_gpu_tile_size.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 4, ptr %multi_gpu_tile_size.i, align 4
  %shr317.i = lshr i32 %gb_addr_config.0.i, 28
  %shl318.i = shl nuw nsw i32 1, %shr317.i
  %146 = ptrtoint ptr %mem_row_size_in_kb.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %shl318.i, ptr %mem_row_size_in_kb.i, align 8
  %tile_config.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 24, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and293.i)
  %switch.selectcmp.i = icmp eq i32 %and293.i, 1
  %switch.select.i = zext i1 %switch.selectcmp.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and293.i)
  %switch.selectcmp1621.i = icmp eq i32 %and293.i, 3
  %switch.select1622.i = select i1 %switch.selectcmp1621.i, i32 3, i32 %switch.select.i
  %147 = ptrtoint ptr %tile_config.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %switch.select1622.i, ptr %tile_config.i, align 8
  %148 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %flags, align 8
  %and341.i = and i32 %149, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and341.i)
  %tobool.not.i234 = icmp eq i32 %and341.i, 0
  br i1 %tobool.not.i234, label %if.else346.i, label %for.end.i235.if.end363.sink.split.i_crit_edge

for.end.i235.if.end363.sink.split.i_crit_edge:    ; preds = %for.end.i235
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end363.sink.split.i

if.else346.i:                                     ; preds = %for.end.i235
  %150 = lshr i32 %139, 24
  %and347.i = and i32 %150, 3
  %151 = zext i32 %and347.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %151, ptr @__sancov_gen_cov_switch_values.175)
  switch i32 %and347.i, label %sw.default358.i [
    i32 0, label %if.else346.i.if.end363.i_crit_edge
    i32 1, label %if.else346.i.if.end363.sink.split.i_crit_edge
  ]

if.else346.i.if.end363.sink.split.i_crit_edge:    ; preds = %if.else346.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end363.sink.split.i

if.else346.i.if.end363.i_crit_edge:               ; preds = %if.else346.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end363.i

sw.default358.i:                                  ; preds = %if.else346.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end363.sink.split.i

if.end363.sink.split.i:                           ; preds = %sw.default358.i, %if.else346.i.if.end363.sink.split.i_crit_edge, %for.end.i235.if.end363.sink.split.i_crit_edge
  %.sink1620.i = phi i32 [ 32, %sw.default358.i ], [ 16, %for.end.i235.if.end363.sink.split.i_crit_edge ], [ 16, %if.else346.i.if.end363.sink.split.i_crit_edge ]
  %or356.i = or i32 %.sink1620.i, %switch.select1622.i
  %152 = ptrtoint ptr %tile_config.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %or356.i, ptr %tile_config.i, align 8
  br label %if.end363.i

if.end363.i:                                      ; preds = %if.end363.sink.split.i, %if.else346.i.if.end363.i_crit_edge
  %153 = ptrtoint ptr %tile_config.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %tile_config.i, align 8
  %shl372.i = shl nuw nsw i32 %shr317.i, 12
  %or375.i = or i32 %154, %shl372.i
  store i32 %or375.i, ptr %tile_config.i, align 8
  %155 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %config.i, align 8
  %i.11580.i = add i32 %156, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.11580.i)
  %cmp3791581.i = icmp sgt i32 %i.11580.i, -1
  br i1 %cmp3791581.i, label %if.end363.i.for.body381.i_crit_edge, label %if.end363.i.for.cond393.preheader.i_crit_edge

if.end363.i.for.cond393.preheader.i_crit_edge:    ; preds = %if.end363.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond393.preheader.i

if.end363.i.for.body381.i_crit_edge:              ; preds = %if.end363.i
  br label %for.body381.i

for.cond393.preheader.ithread-pre-split:          ; preds = %for.body381.i
  call void @__sanitizer_cov_trace_pc() #9
  %157 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %.pr = load i32, ptr %config.i, align 8
  br label %for.cond393.preheader.i

for.cond393.preheader.i:                          ; preds = %for.cond393.preheader.ithread-pre-split, %if.end363.i.for.cond393.preheader.i_crit_edge
  %158 = phi i32 [ %.pr, %for.cond393.preheader.ithread-pre-split ], [ %156, %if.end363.i.for.cond393.preheader.i_crit_edge ]
  %tmp.0.lcssa.i = phi i32 [ %or390.i, %for.cond393.preheader.ithread-pre-split ], [ 0, %if.end363.i.for.cond393.preheader.i_crit_edge ]
  %max_backends_per_se395.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 4
  %159 = ptrtoint ptr %max_backends_per_se395.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %max_backends_per_se395.i, align 8
  %mul398.i = mul i32 %158, %160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul398.i)
  %cmp3991584.not.i = icmp eq i32 %mul398.i, 0
  br i1 %cmp3991584.not.i, label %for.cond393.preheader.i.if.end425.i_crit_edge, label %for.cond393.preheader.i.for.body401.i_crit_edge

for.cond393.preheader.i.for.body401.i_crit_edge:  ; preds = %for.cond393.preheader.i
  br label %for.body401.i

for.cond393.preheader.i.if.end425.i_crit_edge:    ; preds = %for.cond393.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end425.i

for.body381.i:                                    ; preds = %for.body381.i.for.body381.i_crit_edge, %if.end363.i.for.body381.i_crit_edge
  %i.11583.i = phi i32 [ %i.1.i, %for.body381.i.for.body381.i_crit_edge ], [ %i.11580.i, %if.end363.i.for.body381.i_crit_edge ]
  %tmp.01582.i = phi i32 [ %or390.i, %for.body381.i.for.body381.i_crit_edge ], [ 0, %if.end363.i.for.body381.i_crit_edge ]
  %shl382.i = shl i32 %i.11583.i, 16
  %or383.i = or i32 %shl382.i, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %161 = tail call i32 @llvm.bswap.i32(i32 %or383.i) #7
  %162 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1268.i = getelementptr i8, ptr %163, i32 32812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1268.i, i32 %161) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %164 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1273.i = getelementptr i8, ptr %165, i32 16324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1273.i, i32 %161) #7, !srcloc !376
  %166 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1278.i = getelementptr i8, ptr %167, i32 39156
  %168 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1278.i) #7, !srcloc !377
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  %169 = lshr i32 %168, 8
  %shr388.i = and i32 %169, 255
  %shl389.i = shl i32 %tmp.01582.i, 4
  %or390.i = or i32 %shr388.i, %shl389.i
  %i.1.i = add nsw i32 %i.11583.i, -1
  %cmp379.i.not = icmp eq i32 %i.11583.i, 0
  br i1 %cmp379.i.not, label %for.cond393.preheader.ithread-pre-split, label %for.body381.i.for.body381.i_crit_edge

for.body381.i.for.body381.i_crit_edge:            ; preds = %for.body381.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body381.i

for.body401.i:                                    ; preds = %for.body401.i.for.body401.i_crit_edge, %for.cond393.preheader.i.for.body401.i_crit_edge
  %i.21586.i = phi i32 [ %inc405.i, %for.body401.i.for.body401.i_crit_edge ], [ 0, %for.cond393.preheader.i.for.body401.i_crit_edge ]
  %tmp.11585.i = phi i32 [ %or403.i, %for.body401.i.for.body401.i_crit_edge ], [ 0, %for.cond393.preheader.i.for.body401.i_crit_edge ]
  %shl402.i = shl nuw i32 1, %i.21586.i
  %or403.i = or i32 %shl402.i, %tmp.11585.i
  %inc405.i = add nuw i32 %i.21586.i, 1
  %exitcond1602.not.i = icmp eq i32 %inc405.i, %mul398.i
  br i1 %exitcond1602.not.i, label %for.end406.i, label %for.body401.i.for.body401.i_crit_edge

for.body401.i.for.body401.i_crit_edge:            ; preds = %for.body401.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body401.i

for.end406.i:                                     ; preds = %for.body401.i
  %and407.i = and i32 %or403.i, %tmp.0.lcssa.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and407.i, i32 %or403.i)
  %cmp408.i = icmp eq i32 %and407.i, %or403.i
  br i1 %cmp408.i, label %for.end406.i.for.body419.i_crit_edge, label %for.end406.i.if.end425.i_crit_edge

for.end406.i.if.end425.i_crit_edge:               ; preds = %for.end406.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end425.i

for.end406.i.for.body419.i_crit_edge:             ; preds = %for.end406.i
  br label %for.body419.i

for.body419.i:                                    ; preds = %for.body419.i.for.body419.i_crit_edge, %for.end406.i.for.body419.i_crit_edge
  %i.31591.i = phi i32 [ %inc423.i, %for.body419.i.for.body419.i_crit_edge ], [ 0, %for.end406.i.for.body419.i_crit_edge ]
  %disabled_rb_mask.01590.i = phi i32 [ %and421.i, %for.body419.i.for.body419.i_crit_edge ], [ %tmp.0.lcssa.i, %for.end406.i.for.body419.i_crit_edge ]
  %shl420.i = shl nuw i32 1, %i.31591.i
  %neg.i = xor i32 %shl420.i, -1
  %and421.i = and i32 %disabled_rb_mask.01590.i, %neg.i
  %inc423.i = add nuw i32 %i.31591.i, 1
  %exitcond1603.not.i = icmp eq i32 %inc423.i, %mul398.i
  br i1 %exitcond1603.not.i, label %for.body419.i.if.end425.i_crit_edge, label %for.body419.i.for.body419.i_crit_edge

for.body419.i.for.body419.i_crit_edge:            ; preds = %for.body419.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body419.i

for.body419.i.if.end425.i_crit_edge:              ; preds = %for.body419.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end425.i

if.end425.i:                                      ; preds = %for.body419.i.if.end425.i_crit_edge, %for.end406.i.if.end425.i_crit_edge, %for.cond393.preheader.i.if.end425.i_crit_edge
  %tmp.1.lcssa1611.i = phi i32 [ 0, %for.cond393.preheader.i.if.end425.i_crit_edge ], [ %or403.i, %for.end406.i.if.end425.i_crit_edge ], [ %or403.i, %for.body419.i.if.end425.i_crit_edge ]
  %disabled_rb_mask.1.i = phi i32 [ %tmp.0.lcssa.i, %for.cond393.preheader.i.if.end425.i_crit_edge ], [ %tmp.0.lcssa.i, %for.end406.i.if.end425.i_crit_edge ], [ %and421.i, %for.body419.i.if.end425.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %cmp4291593.not.i = icmp eq i32 %158, 0
  br i1 %cmp4291593.not.i, label %if.end425.i.cond.false.i_crit_edge, label %for.body431.lr.ph.i

if.end425.i.cond.false.i_crit_edge:               ; preds = %if.end425.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false.i

for.body431.lr.ph.i:                              ; preds = %if.end425.i
  %max_simds_per_se440.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 3
  br label %for.body431.i

for.body431.i:                                    ; preds = %for.body431.i.for.body431.i_crit_edge, %for.body431.lr.ph.i
  %i.41595.i = phi i32 [ 0, %for.body431.lr.ph.i ], [ %inc446.i, %for.body431.i.for.body431.i_crit_edge ]
  %tmp.21594.i = phi i32 [ %tmp.1.lcssa1611.i, %for.body431.lr.ph.i ], [ %or444.i, %for.body431.i.for.body431.i_crit_edge ]
  %shl432.i = shl i32 %i.41595.i, 16
  %or433.i = or i32 %shl432.i, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %170 = tail call i32 @llvm.bswap.i32(i32 %or433.i) #7
  %171 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1282.i = getelementptr i8, ptr %172, i32 32812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1282.i, i32 %170) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %173 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1287.i = getelementptr i8, ptr %174, i32 16324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1287.i, i32 %170) #7, !srcloc !376
  %175 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1292.i = getelementptr i8, ptr %176, i32 35152
  %177 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1292.i) #7, !srcloc !377
  %178 = tail call i32 @llvm.bswap.i32(i32 %177) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  %179 = ptrtoint ptr %max_simds_per_se440.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %max_simds_per_se440.i, align 4
  %shl441.i = shl nsw i32 -1, %180
  %or442.i = tail call i32 @llvm.fshl.i32(i32 %tmp.21594.i, i32 %178, i32 16) #7
  %or444.i = or i32 %shl441.i, %or442.i
  %inc446.i = add nuw i32 %i.41595.i, 1
  %181 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %config.i, align 8
  %cmp429.i = icmp ult i32 %inc446.i, %182
  br i1 %cmp429.i, label %for.body431.i.for.body431.i_crit_edge, label %for.body431.i.cond.false.i_crit_edge

for.body431.i.cond.false.i_crit_edge:             ; preds = %for.body431.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false.i

for.body431.i.for.body431.i_crit_edge:            ; preds = %for.body431.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body431.i

cond.false.i:                                     ; preds = %for.body431.i.cond.false.i_crit_edge, %if.end425.i.cond.false.i_crit_edge
  %tmp.2.lcssa.i = phi i32 [ %tmp.1.lcssa1611.i, %if.end425.i.cond.false.i_crit_edge ], [ %or444.i, %for.body431.i.cond.false.i_crit_edge ]
  %neg448.i = xor i32 %tmp.2.lcssa.i, -1
  %call.i.i = tail call i32 @__sw_hweight32(i32 noundef %neg448.i) #7
  %active_simds.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 24, i32 9
  %183 = ptrtoint ptr %active_simds.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %call.i.i, ptr %active_simds.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %184 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1296.i = getelementptr i8, ptr %185, i32 32812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1296.i, i32 192) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %186 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1301.i = getelementptr i8, ptr %187, i32 16324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1301.i, i32 192) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %188 = tail call i32 @llvm.bswap.i32(i32 %gb_addr_config.0.i) #7
  %189 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1306.i = getelementptr i8, ptr %190, i32 39160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1306.i, i32 %188) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %191 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1311.i = getelementptr i8, ptr %192, i32 3028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1311.i, i32 %188) #7, !srcloc !376
  %193 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %194)
  %cmp769.i = icmp ugt i32 %194, 50
  br i1 %cmp769.i, label %if.then771.i, label %cond.false.i.if.end772.i_crit_edge

cond.false.i.if.end772.i_crit_edge:               ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end772.i

if.then771.i:                                     ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %195 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1316.i = getelementptr i8, ptr %196, i32 3072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1316.i, i32 %188) #7, !srcloc !376
  br label %if.end772.i

if.end772.i:                                      ; preds = %if.then771.i, %cond.false.i.if.end772.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %197 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1321.i = getelementptr i8, ptr %198, i32 12104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1321.i, i32 %188) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %199 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1326.i = getelementptr i8, ptr %200, i32 53432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1326.i, i32 %188) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %201 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1331.i = getelementptr i8, ptr %202, i32 55480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1331.i, i32 %188) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %203 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1336.i = getelementptr i8, ptr %204, i32 61260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1336.i, i32 %188) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %205 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1341.i = getelementptr i8, ptr %206, i32 61264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1341.i, i32 %188) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %207 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1346.i = getelementptr i8, ptr %208, i32 61268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1346.i, i32 %188) #7, !srcloc !376
  %209 = ptrtoint ptr %max_backends_per_se395.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %max_backends_per_se395.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %210)
  %cmp775.i = icmp eq i32 %210, 1
  br i1 %cmp775.i, label %land.lhs.true.i, label %if.end772.i.if.else787.i_crit_edge

if.end772.i.if.else787.i_crit_edge:               ; preds = %if.end772.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else787.i

land.lhs.true.i:                                  ; preds = %if.end772.i
  %211 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %flags, align 8
  %and778.i = and i32 %212, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and778.i)
  %tobool779.not.i = icmp eq i32 %and778.i, 0
  br i1 %tobool779.not.i, label %land.lhs.true.i.if.else787.i_crit_edge, label %if.then780.i

land.lhs.true.i.if.else787.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else787.i

if.then780.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %and781.i = and i32 %disabled_rb_mask.1.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and781.i)
  %cmp782.i = icmp eq i32 %and781.i, 2
  %..i = select i1 %cmp782.i, i32 0, i32 286331153
  br label %if.end795.i

if.else787.i:                                     ; preds = %land.lhs.true.i.if.else787.i_crit_edge, %if.end772.i.if.else787.i_crit_edge
  %213 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %config.i, align 8
  %mul793.i = mul i32 %214, %210
  %call794.i = tail call i32 @r6xx_remap_render_backend(ptr noundef %rdev, i32 noundef %and293.i, i32 noundef %mul793.i, i32 noundef 8, i32 noundef %disabled_rb_mask.1.i) #7
  br label %if.end795.i

if.end795.i:                                      ; preds = %if.else787.i, %if.then780.i
  %tmp.3.i = phi i32 [ %call794.i, %if.else787.i ], [ %..i, %if.then780.i ]
  %backend_map.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 24, i32 1
  %215 = ptrtoint ptr %backend_map.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %tmp.3.i, ptr %backend_map.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %216 = tail call i32 @llvm.bswap.i32(i32 %tmp.3.i) #7
  %217 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1351.i = getelementptr i8, ptr %218, i32 39164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1351.i, i32 %216) #7, !srcloc !376
  %max_texture_channel_caches799.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 5
  %219 = ptrtoint ptr %max_texture_channel_caches799.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %max_texture_channel_caches799.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %220)
  %cmp8001597.not.i = icmp eq i32 %220, 0
  br i1 %cmp8001597.not.i, label %if.end795.i.for.end809.i_crit_edge, label %if.end795.i.for.body802.i_crit_edge

if.end795.i.for.body802.i_crit_edge:              ; preds = %if.end795.i
  br label %for.body802.i

if.end795.i.for.end809.i_crit_edge:               ; preds = %if.end795.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end809.i

for.body802.i:                                    ; preds = %for.body802.i.for.body802.i_crit_edge, %if.end795.i.for.body802.i_crit_edge
  %i.51599.i = phi i32 [ %inc808.i, %for.body802.i.for.body802.i_crit_edge ], [ 0, %if.end795.i.for.body802.i_crit_edge ]
  %cgts_tcc_disable.01598.i = phi i32 [ %and806.i, %for.body802.i.for.body802.i_crit_edge ], [ -65536, %if.end795.i.for.body802.i_crit_edge ]
  %add803.i = add i32 %i.51599.i, 16
  %shl804.i = shl nuw i32 1, %add803.i
  %neg805.i = xor i32 %shl804.i, -1
  %and806.i = and i32 %cgts_tcc_disable.01598.i, %neg805.i
  %inc808.i = add nuw i32 %i.51599.i, 1
  %exitcond1604.not.i = icmp eq i32 %inc808.i, %220
  br i1 %exitcond1604.not.i, label %for.body802.i.for.end809.i_crit_edge, label %for.body802.i.for.body802.i_crit_edge

for.body802.i.for.body802.i_crit_edge:            ; preds = %for.body802.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body802.i

for.body802.i.for.end809.i_crit_edge:             ; preds = %for.body802.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end809.i

for.end809.i:                                     ; preds = %for.body802.i.for.end809.i_crit_edge, %if.end795.i.for.end809.i_crit_edge
  %cgts_tcc_disable.0.lcssa.i = phi i32 [ -65536, %if.end795.i.for.end809.i_crit_edge ], [ %and806.i, %for.body802.i.for.end809.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %221 = tail call i32 @llvm.bswap.i32(i32 %cgts_tcc_disable.0.lcssa.i) #7
  %222 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1356.i = getelementptr i8, ptr %223, i32 37192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1356.i, i32 %221) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %224 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1361.i = getelementptr i8, ptr %225, i32 16272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1361.i, i32 %221) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %226 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1366.i = getelementptr i8, ptr %227, i32 16276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1366.i, i32 %221) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %228 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1371.i = getelementptr i8, ptr %229, i32 37196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1371.i, i32 %221) #7, !srcloc !376
  %230 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1376.i = getelementptr i8, ptr %231, i32 37200
  %232 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1376.i) #7, !srcloc !377
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %233 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1380.i = getelementptr i8, ptr %234, i32 37200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1380.i, i32 8192) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %235 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1380.1.i = getelementptr i8, ptr %236, i32 37200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1380.1.i, i32 8192) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %237 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1380.2.i = getelementptr i8, ptr %238, i32 37200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1380.2.i, i32 8192) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %239 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1380.3.i = getelementptr i8, ptr %240, i32 37200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1380.3.i, i32 8192) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %241 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1380.4.i = getelementptr i8, ptr %242, i32 37200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1380.4.i, i32 8192) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %243 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1380.5.i = getelementptr i8, ptr %244, i32 37200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1380.5.i, i32 8192) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %245 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1380.6.i = getelementptr i8, ptr %246, i32 37200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1380.6.i, i32 8192) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %247 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1380.7.i = getelementptr i8, ptr %248, i32 37200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1380.7.i, i32 8192) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %249 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1380.8.i = getelementptr i8, ptr %250, i32 37200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1380.8.i, i32 8192) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %251 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1380.9.i = getelementptr i8, ptr %252, i32 37200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1380.9.i, i32 8192) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %253 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1380.10.i = getelementptr i8, ptr %254, i32 37200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1380.10.i, i32 8192) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %255 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1380.11.i = getelementptr i8, ptr %256, i32 37200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1380.11.i, i32 8192) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %257 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1380.12.i = getelementptr i8, ptr %258, i32 37200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1380.12.i, i32 8192) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %259 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1380.13.i = getelementptr i8, ptr %260, i32 37200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1380.13.i, i32 8192) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %261 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1380.14.i = getelementptr i8, ptr %262, i32 37200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1380.14.i, i32 8192) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %263 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1380.15.i = getelementptr i8, ptr %264, i32 37200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1380.15.i, i32 8192) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %265 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1385.i = getelementptr i8, ptr %266, i32 37200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1385.i, i32 %232) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %267 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1390.i = getelementptr i8, ptr %268, i32 34660
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1390.i, i32 811597824) #7, !srcloc !376
  %269 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1395.i = getelementptr i8, ptr %270, i32 36952
  %271 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1395.i) #7, !srcloc !377
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  %272 = or i32 %271, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %273 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1399.i = getelementptr i8, ptr %274, i32 36952
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1399.i, i32 %272) #7, !srcloc !376
  %275 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1404.i = getelementptr i8, ptr %276, i32 40992
  %277 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1404.i) #7, !srcloc !377
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  %278 = and i32 %277, 33357823
  %279 = tail call i32 @llvm.bswap.i32(i32 %278) #7
  %sx_num_of_sets823.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 10
  %280 = ptrtoint ptr %sx_num_of_sets823.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %sx_num_of_sets823.i, align 8
  %shl824.i = shl i32 %281, 1
  %or825.i = or i32 %shl824.i, %279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %282 = tail call i32 @llvm.bswap.i32(i32 %or825.i) #7
  %283 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1408.i = getelementptr i8, ptr %284, i32 40992
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1408.i, i32 %282) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %285 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1413.i = getelementptr i8, ptr %286, i32 37180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1413.i, i32 67174400) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %287 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1418.i = getelementptr i8, ptr %288, i32 35252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1418.i, i32 0) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %289 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1423.i = getelementptr i8, ptr %290, i32 36368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1423.i, i32 0) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %291 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1428.i = getelementptr i8, ptr %292, i32 36376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1428.i, i32 0) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %293 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1433.i = getelementptr i8, ptr %294, i32 35920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1433.i, i32 0) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %295 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1438.i = getelementptr i8, ptr %296, i32 35928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1438.i, i32 0) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %297 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1443.i = getelementptr i8, ptr %298, i32 35936
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1443.i, i32 0) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %299 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1448.i = getelementptr i8, ptr %300, i32 35944
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1448.i, i32 0) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %301 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1453.i = getelementptr i8, ptr %302, i32 38152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1453.i, i32 33554432) #7, !srcloc !376
  %sx_max_export_size827.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 11
  %303 = ptrtoint ptr %sx_max_export_size827.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %sx_max_export_size827.i, align 4
  %div8281201.i = lshr i32 %304, 2
  %sub829.i = add nsw i32 %div8281201.i, -1
  %sx_max_export_pos_size832.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 12
  %305 = ptrtoint ptr %sx_max_export_pos_size832.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %sx_max_export_pos_size832.i, align 8
  %307 = shl i32 %306, 6
  %308 = add i32 %307, -256
  %shl835.i = and i32 %308, -256
  %or836.i = or i32 %shl835.i, %sub829.i
  %sx_max_export_smx_size838.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 13
  %309 = ptrtoint ptr %sx_max_export_smx_size838.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %sx_max_export_smx_size838.i, align 4
  %311 = shl i32 %310, 14
  %312 = add i32 %311, -65536
  %shl841.i = and i32 %312, -65536
  %or842.i = or i32 %or836.i, %shl841.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %313 = tail call i32 @llvm.bswap.i32(i32 %or842.i) #7
  %314 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1458.i = getelementptr i8, ptr %315, i32 36876
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1458.i, i32 %313) #7, !srcloc !376
  %316 = ptrtoint ptr %sc_prim_fifo_size267.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %sc_prim_fifo_size267.i, align 8
  %318 = ptrtoint ptr %sc_hiz_tile_fifo_size269.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %sc_hiz_tile_fifo_size269.i, align 4
  %shl848.i = shl i32 %319, 12
  %or849.i = or i32 %shl848.i, %317
  %320 = ptrtoint ptr %sc_earlyz_tile_fifo_size271.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %sc_earlyz_tile_fifo_size271.i, align 8
  %shl852.i = shl i32 %321, 20
  %or853.i = or i32 %or849.i, %shl852.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %322 = tail call i32 @llvm.bswap.i32(i32 %or853.i) #7
  %323 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1463.i = getelementptr i8, ptr %324, i32 35788
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1463.i, i32 %322) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %325 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1468.i = getelementptr i8, ptr %326, i32 35188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1468.i, i32 16777216) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %327 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1473.i = getelementptr i8, ptr %328, i32 34812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1473.i, i32 0) #7, !srcloc !376
  %329 = ptrtoint ptr %sq_num_cf_insts265.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %sq_num_cf_insts265.i, align 4
  %mul856.i = shl i32 %330, 4
  %or860.i = or i32 %mul856.i, 148898816
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %331 = tail call i32 @llvm.bswap.i32(i32 %or860.i) #7
  %332 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1478.i = getelementptr i8, ptr %333, i32 36080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1478.i, i32 %331) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %334 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1483.i = getelementptr i8, ptr %335, i32 35844
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1483.i, i32 64) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %336 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1488.i = getelementptr i8, ptr %337, i32 35840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1488.i, i32 1124073472) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %338 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1493.i = getelementptr i8, ptr %339, i32 36236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1493.i, i32 65536) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %340 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1498.i = getelementptr i8, ptr %341, i32 35620
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1498.i, i32 -15728896) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %342 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1503.i = getelementptr i8, ptr %343, i32 35012
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1503.i, i32 -1040187392) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %344 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1508.i = getelementptr i8, ptr %345, i32 35028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1508.i, i32 268435456) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %346 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1513.i = getelementptr i8, ptr %347, i32 35600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1513.i, i32 0) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %348 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1518.i = getelementptr i8, ptr %349, i32 39456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1518.i, i32 0) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %350 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1523.i = getelementptr i8, ptr %351, i32 39460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1523.i, i32 0) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %352 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1528.i = getelementptr i8, ptr %353, i32 39464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1528.i, i32 0) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %354 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1533.i = getelementptr i8, ptr %355, i32 39468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1533.i, i32 0) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %356 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1538.i = getelementptr i8, ptr %357, i32 39472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1538.i, i32 0) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %358 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1543.i = getelementptr i8, ptr %359, i32 39476
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1543.i, i32 0) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %360 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1548.i = getelementptr i8, ptr %361, i32 39480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1548.i, i32 0) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %362 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1553.i = getelementptr i8, ptr %363, i32 39484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1553.i, i32 0) #7, !srcloc !376
  %364 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1558.i = getelementptr i8, ptr %365, i32 12108
  %366 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1558.i) #7, !srcloc !377
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  %367 = or i32 %366, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %368 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1562.i = getelementptr i8, ptr %369, i32 12108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1562.i, i32 %367) #7, !srcloc !376
  %370 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1567.i = getelementptr i8, ptr %371, i32 11264
  %372 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1567.i) #7, !srcloc !377
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %373 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1571.i = getelementptr i8, ptr %374, i32 11264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1571.i, i32 %372) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %375 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i1576.i = getelementptr i8, ptr %376, i32 35348
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1576.i, i32 117440512) #7, !srcloc !376
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %377 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %377(i32 noundef 10737400) #7
  %378 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %379)
  %cmp865.i = icmp eq i32 %379, 51
  br i1 %cmp865.i, label %if.then867.i, label %for.end809.i.cayman_gpu_init.exit_crit_edge

for.end809.i.cayman_gpu_init.exit_crit_edge:      ; preds = %for.end809.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cayman_gpu_init.exit

if.then867.i:                                     ; preds = %for.end809.i
  call void @__sanitizer_cov_trace_pc() #9
  %call868.i = tail call i32 @eg_cg_rreg(ptr noundef %rdev, i32 noundef 0) #7
  %and869.i = and i32 %call868.i, -3670017
  tail call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 0, i32 noundef %and869.i) #7
  %call870.i = tail call i32 @eg_cg_rreg(ptr noundef %rdev, i32 noundef 1) #7
  %and871.i = and i32 %call870.i, -234881025
  tail call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 1, i32 noundef %and871.i) #7
  br label %cayman_gpu_init.exit

cayman_gpu_init.exit:                             ; preds = %if.then867.i, %for.end809.i.cayman_gpu_init.exit_crit_edge
  %380 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %flags, align 8
  %and15 = and i32 %381, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %cayman_gpu_init.exit.if.end24_crit_edge, label %if.then17

cayman_gpu_init.exit.if.end24_crit_edge:          ; preds = %cayman_gpu_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then17:                                        ; preds = %cayman_gpu_init.exit
  %reg_list = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 86, i32 3
  %382 = ptrtoint ptr %reg_list to i32
  call void @__asan_store4_noabort(i32 %382)
  store ptr @tn_rlc_save_restore_register_list, ptr %reg_list, align 4
  %reg_list_size = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 86, i32 4
  %383 = ptrtoint ptr %reg_list_size to i32
  call void @__asan_store4_noabort(i32 %383)
  store i32 122, ptr %reg_list_size, align 8
  %cs_data = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 86, i32 8
  %384 = ptrtoint ptr %cs_data to i32
  call void @__asan_store4_noabort(i32 %384)
  store ptr @cayman_cs_data, ptr %cs_data, align 4
  %call20 = tail call i32 @sumo_rlc_init(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then17.if.end24_crit_edge, label %if.then22

if.then17.if.end24_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then22:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.101) #7
  br label %cleanup

if.end24:                                         ; preds = %if.then17.if.end24_crit_edge, %cayman_gpu_init.exit.if.end24_crit_edge
  %call25 = tail call i32 @radeon_wb_init(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %call29 = tail call i32 @radeon_fence_driver_start_ring(ptr noundef %rdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %do.end

do.end:                                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %385 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %386, ptr noundef nonnull @.str.102, i32 noundef %call29) #10
  br label %cleanup

if.end32:                                         ; preds = %if.end28
  %has_uvd.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 93
  %387 = ptrtoint ptr %has_uvd.i to i32
  call void @__asan_load1_noabort(i32 %387)
  %388 = load i8, ptr %has_uvd.i, align 4, !range !380
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %388)
  %tobool.not.i236 = icmp eq i8 %388, 0
  br i1 %tobool.not.i236, label %if.end32.cayman_uvd_start.exit_crit_edge, label %if.end.i238

if.end32.cayman_uvd_start.exit_crit_edge:         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cayman_uvd_start.exit

if.end.i238:                                      ; preds = %if.end32
  %call.i237 = tail call i32 @uvd_v2_2_resume(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i237)
  %tobool1.not.i = icmp eq i32 %call.i237, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %do.end.i239

do.end.i239:                                      ; preds = %if.end.i238
  call void @__sanitizer_cov_trace_pc() #9
  %389 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %390, ptr noundef nonnull @.str.129, i32 noundef %call.i237) #10
  br label %error.i

if.end3.i:                                        ; preds = %if.end.i238
  %call4.i = tail call i32 @radeon_fence_driver_start_ring(ptr noundef %rdev, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end3.i.cayman_uvd_start.exit_crit_edge, label %do.end9.i

if.end3.i.cayman_uvd_start.exit_crit_edge:        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cayman_uvd_start.exit

do.end9.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %391 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %392, ptr noundef nonnull @.str.132, i32 noundef %call4.i) #10
  br label %error.i

error.i:                                          ; preds = %do.end9.i, %do.end.i239
  %ring_size.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 5, i32 9
  %393 = ptrtoint ptr %ring_size.i to i32
  call void @__asan_store4_noabort(i32 %393)
  store i32 0, ptr %ring_size.i, align 4
  br label %cayman_uvd_start.exit

cayman_uvd_start.exit:                            ; preds = %error.i, %if.end3.i.cayman_uvd_start.exit_crit_edge, %if.end32.cayman_uvd_start.exit_crit_edge
  %has_vce.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 94
  %394 = ptrtoint ptr %has_vce.i to i32
  call void @__asan_load1_noabort(i32 %394)
  %395 = load i8, ptr %has_vce.i, align 1, !range !380
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %395)
  %tobool.not.i240 = icmp eq i8 %395, 0
  br i1 %tobool.not.i240, label %cayman_uvd_start.exit.cayman_vce_start.exit_crit_edge, label %if.end.i243

cayman_uvd_start.exit.cayman_vce_start.exit_crit_edge: ; preds = %cayman_uvd_start.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cayman_vce_start.exit

if.end.i243:                                      ; preds = %cayman_uvd_start.exit
  %call.i241 = tail call i32 @radeon_vce_resume(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i241)
  %tobool1.not.i242 = icmp eq i32 %call.i241, 0
  br i1 %tobool1.not.i242, label %if.end3.i247, label %do.end.i244

do.end.i244:                                      ; preds = %if.end.i243
  call void @__sanitizer_cov_trace_pc() #9
  %396 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %397, ptr noundef nonnull @.str.134, i32 noundef %call.i241) #10
  br label %error.i250

if.end3.i247:                                     ; preds = %if.end.i243
  %call4.i245 = tail call i32 @vce_v1_0_resume(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i245)
  %tobool5.not.i246 = icmp eq i32 %call4.i245, 0
  br i1 %tobool5.not.i246, label %if.end11.i, label %do.end9.i248

do.end9.i248:                                     ; preds = %if.end3.i247
  call void @__sanitizer_cov_trace_pc() #9
  %398 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %399, ptr noundef nonnull @.str.134, i32 noundef %call4.i245) #10
  br label %error.i250

if.end11.i:                                       ; preds = %if.end3.i247
  %call12.i = tail call i32 @radeon_fence_driver_start_ring(ptr noundef %rdev, i32 noundef 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end19.i, label %do.end17.i

do.end17.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %400 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %401, ptr noundef nonnull @.str.139, i32 noundef %call12.i) #10
  br label %error.i250

if.end19.i:                                       ; preds = %if.end11.i
  %call20.i = tail call i32 @radeon_fence_driver_start_ring(ptr noundef %rdev, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end19.i.cayman_vce_start.exit_crit_edge, label %do.end25.i

if.end19.i.cayman_vce_start.exit_crit_edge:       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cayman_vce_start.exit

do.end25.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  %402 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %403, ptr noundef nonnull @.str.142, i32 noundef %call20.i) #10
  br label %error.i250

error.i250:                                       ; preds = %do.end25.i, %do.end17.i, %do.end9.i248, %do.end.i244
  %ring_size.i249 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 6, i32 9
  %404 = ptrtoint ptr %ring_size.i249 to i32
  call void @__asan_store4_noabort(i32 %404)
  store i32 0, ptr %ring_size.i249, align 4
  %ring_size30.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 7, i32 9
  %405 = ptrtoint ptr %ring_size30.i to i32
  call void @__asan_store4_noabort(i32 %405)
  store i32 0, ptr %ring_size30.i, align 4
  br label %cayman_vce_start.exit

cayman_vce_start.exit:                            ; preds = %error.i250, %if.end19.i.cayman_vce_start.exit_crit_edge, %cayman_uvd_start.exit.cayman_vce_start.exit_crit_edge
  %call33 = tail call i32 @radeon_fence_driver_start_ring(ptr noundef %rdev, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end40, label %do.end38

do.end38:                                         ; preds = %cayman_vce_start.exit
  call void @__sanitizer_cov_trace_pc() #9
  %406 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %407, ptr noundef nonnull @.str.102, i32 noundef %call33) #10
  br label %cleanup

if.end40:                                         ; preds = %cayman_vce_start.exit
  %call41 = tail call i32 @radeon_fence_driver_start_ring(ptr noundef %rdev, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end48, label %do.end46

do.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %408 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %409, ptr noundef nonnull @.str.102, i32 noundef %call41) #10
  br label %cleanup

if.end48:                                         ; preds = %if.end40
  %call49 = tail call i32 @radeon_fence_driver_start_ring(ptr noundef %rdev, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end56, label %do.end54

do.end54:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %410 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %411, ptr noundef nonnull @.str.109, i32 noundef %call49) #10
  br label %cleanup

if.end56:                                         ; preds = %if.end48
  %call57 = tail call i32 @radeon_fence_driver_start_ring(ptr noundef %rdev, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end64, label %do.end62

do.end62:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  %412 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %413, ptr noundef nonnull @.str.109, i32 noundef %call57) #10
  br label %cleanup

if.end64:                                         ; preds = %if.end56
  %irq = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55
  %414 = ptrtoint ptr %irq to i32
  call void @__asan_load1_noabort(i32 %414)
  %415 = load i8, ptr %irq, align 8, !range !380
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %415)
  %tobool65.not = icmp eq i8 %415, 0
  br i1 %tobool65.not, label %if.then66, label %if.end64.if.end71_crit_edge

if.end64.if.end71_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

if.then66:                                        ; preds = %if.end64
  %call67 = tail call i32 @radeon_irq_kms_init(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.then66.if.end71_crit_edge, label %if.then66.cleanup_crit_edge

if.then66.cleanup_crit_edge:                      ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then66.if.end71_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

if.end71:                                         ; preds = %if.then66.if.end71_crit_edge, %if.end64.if.end71_crit_edge
  %call72 = tail call i32 @r600_irq_init(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %if.then74

if.then74:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.113, i32 noundef %call72) #7
  tail call void @radeon_irq_kms_fini(ptr noundef %rdev) #7
  br label %cleanup

if.end75:                                         ; preds = %if.end71
  %call76 = tail call i32 @evergreen_irq_set(ptr noundef %rdev) #7
  %ring_size = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 0, i32 9
  %416 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %ring_size, align 4
  %call77 = tail call i32 @radeon_ring_init(ptr noundef %rdev, ptr noundef %ring1, i32 noundef %417, i32 noundef 1024, i32 noundef -2147483648) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %if.end75.cleanup_crit_edge

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end80:                                         ; preds = %if.end75
  %arrayidx82 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 3
  %ring_size83 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 3, i32 9
  %418 = ptrtoint ptr %ring_size83 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %ring_size83, align 4
  %call84 = tail call i32 @radeon_ring_init(ptr noundef %rdev, ptr noundef %arrayidx82, i32 noundef %419, i32 noundef 1792, i32 noundef -268435456) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end87, label %if.end80.cleanup_crit_edge

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end87:                                         ; preds = %if.end80
  %arrayidx89 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 4
  %ring_size90 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 4, i32 9
  %420 = ptrtoint ptr %ring_size90 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %ring_size90, align 4
  %call91 = tail call i32 @radeon_ring_init(ptr noundef %rdev, ptr noundef %arrayidx89, i32 noundef %421, i32 noundef 2304, i32 noundef -268435456) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end94, label %if.end87.cleanup_crit_edge

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end94:                                         ; preds = %if.end87
  %call95 = tail call fastcc i32 @cayman_cp_load_microcode(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end98, label %if.end94.cleanup_crit_edge

if.end94.cleanup_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end98:                                         ; preds = %if.end94
  %call99 = tail call fastcc i32 @cayman_cp_resume(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.end102, label %if.end98.cleanup_crit_edge

if.end98.cleanup_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end102:                                        ; preds = %if.end98
  %call103 = tail call i32 @cayman_dma_resume(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end106, label %if.end102.cleanup_crit_edge

if.end102.cleanup_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end106:                                        ; preds = %if.end102
  tail call fastcc void @cayman_uvd_resume(ptr noundef %rdev)
  tail call fastcc void @cayman_vce_resume(ptr noundef %rdev)
  %call107 = tail call i32 @radeon_ib_pool_init(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.end114, label %do.end112

do.end112:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  %422 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %423, ptr noundef nonnull @.str.115, i32 noundef %call107) #10
  br label %cleanup

if.end114:                                        ; preds = %if.end106
  %call115 = tail call i32 @radeon_vm_manager_init(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.end122, label %do.end120

do.end120:                                        ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  %424 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %425, ptr noundef nonnull @.str.118, i32 noundef %call115) #10
  br label %cleanup

if.end122:                                        ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  %call123 = tail call i32 @radeon_audio_init(ptr noundef %rdev) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end122, %do.end120, %do.end112, %if.end102.cleanup_crit_edge, %if.end98.cleanup_crit_edge, %if.end94.cleanup_crit_edge, %if.end87.cleanup_crit_edge, %if.end80.cleanup_crit_edge, %if.end75.cleanup_crit_edge, %if.then74, %if.then66.cleanup_crit_edge, %do.end62, %do.end54, %do.end46, %do.end38, %do.end, %if.end24.cleanup_crit_edge, %if.then22, %if.end.i.cleanup_crit_edge, %do.end.i, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %if.then22 ], [ %call29, %do.end ], [ %call33, %do.end38 ], [ %call41, %do.end46 ], [ %call49, %do.end54 ], [ %call57, %do.end62 ], [ %call72, %if.then74 ], [ %call107, %do.end112 ], [ %call115, %do.end120 ], [ %call5, %if.then7 ], [ %call, %entry.cleanup_crit_edge ], [ %call25, %if.end24.cleanup_crit_edge ], [ %call67, %if.then66.cleanup_crit_edge ], [ %call77, %if.end75.cleanup_crit_edge ], [ %call84, %if.end80.cleanup_crit_edge ], [ %call91, %if.end87.cleanup_crit_edge ], [ %call95, %if.end94.cleanup_crit_edge ], [ %call99, %if.end98.cleanup_crit_edge ], [ %call103, %if.end102.cleanup_crit_edge ], [ %call123, %if.end122 ], [ %call.i, %if.end.i.cleanup_crit_edge ], [ -22, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cayman_suspend(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @radeon_pm_suspend(ptr noundef %rdev) #7
  tail call void @radeon_audio_fini(ptr noundef %rdev) #7
  tail call void @radeon_vm_manager_fini(ptr noundef %rdev) #7
  %asic.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %0 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asic.i, align 8
  %copy_ring_index.i = getelementptr inbounds %struct.radeon_asic, ptr %1, i32 0, i32 17, i32 5
  %2 = ptrtoint ptr %copy_ring_index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %copy_ring_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %if.then1.i, label %entry.cayman_cp_enable.exit_crit_edge

entry.cayman_cp_enable.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cayman_cp_enable.exit

if.then1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %visible_vram_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 4
  %4 = ptrtoint ptr %visible_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %visible_vram_size.i, align 8
  tail call void @radeon_ttm_set_active_vram_size(ptr noundef %rdev, i64 noundef %5) #7
  br label %cayman_cp_enable.exit

cayman_cp_enable.exit:                            ; preds = %if.then1.i, %entry.cayman_cp_enable.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %rmmio.i11.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %6 = ptrtoint ptr %rmmio.i11.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i11.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %7, i32 34520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 20) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %rmmio.i11.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i11.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %9, i32 34112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i, i32 0) #7, !srcloc !376
  %ready.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 0, i32 17
  %10 = ptrtoint ptr %ready.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %ready.i, align 8
  tail call void @cayman_dma_stop(ptr noundef %rdev) #7
  %has_uvd = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 93
  %11 = ptrtoint ptr %has_uvd to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %has_uvd, align 4, !range !380
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %cayman_cp_enable.exit.if.end_crit_edge, label %if.then

cayman_cp_enable.exit.if.end_crit_edge:           ; preds = %cayman_cp_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %cayman_cp_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @uvd_v1_0_fini(ptr noundef %rdev) #7
  %call = tail call i32 @radeon_uvd_suspend(ptr noundef %rdev) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %cayman_cp_enable.exit.if.end_crit_edge
  tail call void @evergreen_irq_suspend(ptr noundef %rdev) #7
  tail call void @radeon_wb_disable(ptr noundef %rdev) #7
  tail call fastcc void @cayman_pcie_gart_disable(ptr noundef %rdev)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_pm_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_audio_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_vm_manager_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cayman_dma_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvd_v1_0_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_uvd_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @evergreen_irq_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_wb_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cayman_pcie_gart_disable(ptr noundef %rdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 5440
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !377
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 100, i32 5, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %arrayidx, align 4
  %5 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %6, i32 5444
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1) #7, !srcloc !377
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  %arrayidx.1 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 100, i32 5, i32 2
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx.1, align 4
  %10 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %11, i32 5448
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2) #7, !srcloc !377
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  %arrayidx.2 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 100, i32 5, i32 3
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx.2, align 4
  %15 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %16, i32 5452
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3) #7, !srcloc !377
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  %arrayidx.3 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 100, i32 5, i32 4
  %19 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx.3, align 4
  %20 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i.4 = getelementptr i8, ptr %21, i32 5456
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4) #7, !srcloc !377
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  %arrayidx.4 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 100, i32 5, i32 5
  %24 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx.4, align 4
  %25 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i.5 = getelementptr i8, ptr %26, i32 5460
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.5) #7, !srcloc !377
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  %arrayidx.5 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 100, i32 5, i32 6
  %29 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx.5, align 4
  %30 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i.6 = getelementptr i8, ptr %31, i32 5464
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.6) #7, !srcloc !377
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  %arrayidx.6 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 100, i32 5, i32 7
  %34 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx.6, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %35 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %36, i32 5136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 0) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %37 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %38, i32 5140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 0) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %39 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i23 = getelementptr i8, ptr %40, i32 8292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 436207616) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %41 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i27 = getelementptr i8, ptr %42, i32 5120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 12977408) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %43 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i31 = getelementptr i8, ptr %44, i32 5124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 0) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %45 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %46, i32 5128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 4864) #7, !srcloc !376
  tail call void @radeon_gart_table_vram_unpin(ptr noundef %rdev) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cayman_init(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ring1 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 52
  %call = tail call zeroext i1 @radeon_get_bios(ptr noundef %rdev) #7
  br i1 %call, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then:                                          ; preds = %entry
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %1)
  %cmp = icmp ugt i32 %1, 17
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %is_atom_bios = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 14
  %2 = ptrtoint ptr %is_atom_bios to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_atom_bios, align 4, !range !380
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.36) #10
  br label %cleanup

if.end5:                                          ; preds = %if.end3
  %call6 = tail call i32 @radeon_atombios_init(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %call10 = tail call zeroext i1 @radeon_card_posted(ptr noundef %rdev) #7
  br i1 %call10, label %if.end9.if.end24_crit_edge, label %if.then11

if.end9.if.end24_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then11:                                        ; preds = %if.end9
  %bios = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 13
  %6 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bios, align 8
  %tobool12.not = icmp eq ptr %7, null
  br i1 %tobool12.not, label %do.end16, label %do.end21

do.end16:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.41) #10
  br label %cleanup

do.end21:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #10
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  %10 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mode_info, align 4
  %call23 = tail call i32 @atom_asic_init(ptr noundef %11) #7
  br label %if.end24

if.end24:                                         ; preds = %do.end21, %if.end9.if.end24_crit_edge
  tail call fastcc void @ni_init_golden_registers(ptr noundef %rdev)
  tail call void @r600_scratch_init(ptr noundef %rdev) #7
  tail call void @radeon_surface_init(ptr noundef %rdev) #7
  %ddev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %12 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ddev, align 4
  tail call void @radeon_get_clock_info(ptr noundef %13) #7
  tail call void @radeon_fence_driver_init(ptr noundef %rdev) #7
  %call25 = tail call i32 @evergreen_mc_init(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %call29 = tail call i32 @radeon_bo_init(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end32:                                         ; preds = %if.end28
  %flags = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 8
  %and = and i32 %15, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool33.not = icmp eq i32 %and, 0
  %me_fw45 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 71
  %16 = ptrtoint ptr %me_fw45 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %me_fw45, align 8
  %tobool46.not = icmp eq ptr %17, null
  br i1 %tobool33.not, label %if.else, label %if.then34

if.then34:                                        ; preds = %if.end32
  br i1 %tobool46.not, label %if.then34.if.then39_crit_edge, label %lor.lhs.false

if.then34.if.then39_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then39

lor.lhs.false:                                    ; preds = %if.then34
  %pfp_fw = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 72
  %18 = ptrtoint ptr %pfp_fw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pfp_fw, align 4
  %tobool36.not = icmp eq ptr %19, null
  br i1 %tobool36.not, label %lor.lhs.false.if.then39_crit_edge, label %lor.lhs.false37

lor.lhs.false.if.then39_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then39

lor.lhs.false37:                                  ; preds = %lor.lhs.false
  %rlc_fw = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 73
  %20 = ptrtoint ptr %rlc_fw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rlc_fw, align 8
  %tobool38.not = icmp eq ptr %21, null
  br i1 %tobool38.not, label %lor.lhs.false37.if.then39_crit_edge, label %lor.lhs.false37.if.end61_crit_edge

lor.lhs.false37.if.end61_crit_edge:               ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

lor.lhs.false37.if.then39_crit_edge:              ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then39

if.then39:                                        ; preds = %lor.lhs.false37.if.then39_crit_edge, %lor.lhs.false.if.then39_crit_edge, %if.then34.if.then39_crit_edge
  %call40 = tail call i32 @ni_init_microcode(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then39.if.end61_crit_edge, label %if.then42

if.then39.if.end61_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.then42:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.46) #7
  br label %cleanup

if.else:                                          ; preds = %if.end32
  br i1 %tobool46.not, label %if.else.if.then55_crit_edge, label %lor.lhs.false47

if.else.if.then55_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then55

lor.lhs.false47:                                  ; preds = %if.else
  %pfp_fw48 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 72
  %22 = ptrtoint ptr %pfp_fw48 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pfp_fw48, align 4
  %tobool49.not = icmp eq ptr %23, null
  br i1 %tobool49.not, label %lor.lhs.false47.if.then55_crit_edge, label %lor.lhs.false50

lor.lhs.false47.if.then55_crit_edge:              ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then55

lor.lhs.false50:                                  ; preds = %lor.lhs.false47
  %rlc_fw51 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 73
  %24 = ptrtoint ptr %rlc_fw51 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rlc_fw51, align 8
  %tobool52.not = icmp eq ptr %25, null
  br i1 %tobool52.not, label %lor.lhs.false50.if.then55_crit_edge, label %lor.lhs.false53

lor.lhs.false50.if.then55_crit_edge:              ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then55

lor.lhs.false53:                                  ; preds = %lor.lhs.false50
  %mc_fw = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 74
  %26 = ptrtoint ptr %mc_fw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mc_fw, align 4
  %tobool54.not = icmp eq ptr %27, null
  br i1 %tobool54.not, label %lor.lhs.false53.if.then55_crit_edge, label %lor.lhs.false53.if.end61_crit_edge

lor.lhs.false53.if.end61_crit_edge:               ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

lor.lhs.false53.if.then55_crit_edge:              ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then55

if.then55:                                        ; preds = %lor.lhs.false53.if.then55_crit_edge, %lor.lhs.false50.if.then55_crit_edge, %lor.lhs.false47.if.then55_crit_edge, %if.else.if.then55_crit_edge
  %call56 = tail call i32 @ni_init_microcode(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.then55.if.end61_crit_edge, label %if.then58

if.then55.if.end61_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.then58:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.46) #7
  br label %cleanup

if.end61:                                         ; preds = %if.then55.if.end61_crit_edge, %lor.lhs.false53.if.end61_crit_edge, %if.then39.if.end61_crit_edge, %lor.lhs.false37.if.end61_crit_edge
  %call62 = tail call i32 @radeon_pm_init(ptr noundef %rdev) #7
  %ring_obj = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 0, i32 1
  %28 = ptrtoint ptr %ring_obj to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %ring_obj, align 4
  tail call void @r600_ring_init(ptr noundef %rdev, ptr noundef %ring1, i32 noundef 1048576) #7
  %arrayidx64 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 3
  %ring_obj65 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 3, i32 1
  %29 = ptrtoint ptr %ring_obj65 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %ring_obj65, align 4
  tail call void @r600_ring_init(ptr noundef %rdev, ptr noundef %arrayidx64, i32 noundef 65536) #7
  %arrayidx67 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 4
  %ring_obj68 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 4, i32 1
  %30 = ptrtoint ptr %ring_obj68 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %ring_obj68, align 4
  tail call void @r600_ring_init(ptr noundef %rdev, ptr noundef %arrayidx67, i32 noundef 65536) #7
  tail call fastcc void @cayman_uvd_init(ptr noundef %rdev)
  tail call fastcc void @cayman_vce_init(ptr noundef %rdev)
  %ih = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 85
  %31 = ptrtoint ptr %ih to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %ih, align 8
  tail call void @r600_ih_ring_init(ptr noundef %rdev, i32 noundef 65536) #7
  %call70 = tail call i32 @r600_pcie_gart_init(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end73, label %if.end61.cleanup_crit_edge

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end73:                                         ; preds = %if.end61
  %accel_working = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 66
  %32 = ptrtoint ptr %accel_working to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %accel_working, align 2
  %call74 = tail call fastcc i32 @cayman_startup(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end73.if.end87_crit_edge, label %do.end79

if.end73.if.end87_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87

do.end79:                                         ; preds = %if.end73
  %33 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.48) #10
  tail call fastcc void @cayman_cp_fini(ptr noundef %rdev)
  tail call void @cayman_dma_fini(ptr noundef %rdev) #7
  tail call void @r600_irq_fini(ptr noundef %rdev) #7
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags, align 8
  %and82 = and i32 %36, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %do.end79.if.end85_crit_edge, label %if.then84

do.end79.if.end85_crit_edge:                      ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

if.then84:                                        ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @sumo_rlc_fini(ptr noundef %rdev) #7
  br label %if.end85

if.end85:                                         ; preds = %if.then84, %do.end79.if.end85_crit_edge
  tail call void @radeon_wb_fini(ptr noundef %rdev) #7
  tail call void @radeon_ib_pool_fini(ptr noundef %rdev) #7
  tail call void @radeon_vm_manager_fini(ptr noundef %rdev) #7
  tail call void @radeon_irq_kms_fini(ptr noundef %rdev) #7
  tail call fastcc void @cayman_pcie_gart_fini(ptr noundef %rdev)
  %37 = ptrtoint ptr %accel_working to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %accel_working, align 2
  br label %if.end87

if.end87:                                         ; preds = %if.end85, %if.end73.if.end87_crit_edge
  %mc_fw88 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 74
  %38 = ptrtoint ptr %mc_fw88 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mc_fw88, align 4
  %tobool89.not = icmp eq ptr %39, null
  br i1 %tobool89.not, label %land.lhs.true, label %if.end87.cleanup_crit_edge

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end87
  %40 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags, align 8
  %and91 = and i32 %41, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.then93, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then93:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.50) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then93, %land.lhs.true.cleanup_crit_edge, %if.end87.cleanup_crit_edge, %if.end61.cleanup_crit_edge, %if.then58, %if.then42, %if.end28.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %do.end16, %if.end5.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then93 ], [ %call40, %if.then42 ], [ %call56, %if.then58 ], [ -22, %do.end16 ], [ -22, %do.end ], [ -22, %if.then.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ %call25, %if.end24.cleanup_crit_edge ], [ %call29, %if.end28.cleanup_crit_edge ], [ %call70, %if.end61.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end87.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_get_bios(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_atombios_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_card_posted(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_scratch_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_surface_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_get_clock_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_fence_driver_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @evergreen_mc_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_bo_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_pm_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_ring_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cayman_uvd_init(ptr noundef %rdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %has_uvd = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 93
  %0 = ptrtoint ptr %has_uvd to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %has_uvd, align 4, !range !380
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @radeon_uvd_init(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.157, i32 noundef %call) #10
  %4 = ptrtoint ptr %has_uvd to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %has_uvd, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 5
  %ring_obj = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 5, i32 1
  %5 = ptrtoint ptr %ring_obj to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %ring_obj, align 4
  tail call void @r600_ring_init(ptr noundef %rdev, ptr noundef %arrayidx, i32 noundef 4096) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cayman_vce_init(ptr noundef %rdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %has_vce = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 94
  %0 = ptrtoint ptr %has_vce to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %has_vce, align 1, !range !380
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @radeon_vce_init(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.159, i32 noundef %call) #10
  %4 = ptrtoint ptr %has_vce to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %has_vce, align 1
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 6
  %ring_obj = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 6, i32 1
  %5 = ptrtoint ptr %ring_obj to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %ring_obj, align 4
  tail call void @r600_ring_init(ptr noundef %rdev, ptr noundef %arrayidx, i32 noundef 4096) #7
  %arrayidx8 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 7
  %ring_obj9 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 7, i32 1
  %6 = ptrtoint ptr %ring_obj9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %ring_obj9, align 4
  tail call void @r600_ring_init(ptr noundef %rdev, ptr noundef %arrayidx8, i32 noundef 4096) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_ih_ring_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_pcie_gart_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cayman_cp_fini(ptr noundef %rdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %asic.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %0 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asic.i, align 8
  %copy_ring_index.i = getelementptr inbounds %struct.radeon_asic, ptr %1, i32 0, i32 17, i32 5
  %2 = ptrtoint ptr %copy_ring_index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %copy_ring_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %if.then1.i, label %entry.cayman_cp_enable.exit_crit_edge

entry.cayman_cp_enable.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cayman_cp_enable.exit

if.then1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %visible_vram_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 4
  %4 = ptrtoint ptr %visible_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %visible_vram_size.i, align 8
  tail call void @radeon_ttm_set_active_vram_size(ptr noundef %rdev, i64 noundef %5) #7
  br label %cayman_cp_enable.exit

cayman_cp_enable.exit:                            ; preds = %if.then1.i, %entry.cayman_cp_enable.exit_crit_edge
  %ring1 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %rmmio.i11.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %6 = ptrtoint ptr %rmmio.i11.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i11.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %7, i32 34520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 20) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %rmmio.i11.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i11.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %9, i32 34112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i, i32 0) #7, !srcloc !376
  %ready.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 0, i32 17
  %10 = ptrtoint ptr %ready.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %ready.i, align 8
  tail call void @radeon_ring_fini(ptr noundef %rdev, ptr noundef %ring1) #7
  %rptr_save_reg = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 0, i32 4
  %11 = ptrtoint ptr %rptr_save_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rptr_save_reg, align 8
  tail call void @radeon_scratch_free(ptr noundef %rdev, i32 noundef %12) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cayman_dma_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_irq_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sumo_rlc_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_wb_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ib_pool_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_irq_kms_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cayman_pcie_gart_fini(ptr noundef %rdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @cayman_pcie_gart_disable(ptr noundef %rdev)
  tail call void @radeon_gart_table_vram_free(ptr noundef %rdev) #7
  tail call void @radeon_gart_fini(ptr noundef %rdev) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cayman_fini(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @radeon_pm_fini(ptr noundef %rdev) #7
  tail call fastcc void @cayman_cp_fini(ptr noundef %rdev)
  tail call void @cayman_dma_fini(ptr noundef %rdev) #7
  tail call void @r600_irq_fini(ptr noundef %rdev) #7
  %flags = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @sumo_rlc_fini(ptr noundef %rdev) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @radeon_wb_fini(ptr noundef %rdev) #7
  tail call void @radeon_vm_manager_fini(ptr noundef %rdev) #7
  tail call void @radeon_ib_pool_fini(ptr noundef %rdev) #7
  tail call void @radeon_irq_kms_fini(ptr noundef %rdev) #7
  tail call void @uvd_v1_0_fini(ptr noundef %rdev) #7
  tail call void @radeon_uvd_fini(ptr noundef %rdev) #7
  %has_vce = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 94
  %2 = ptrtoint ptr %has_vce to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %has_vce, align 1, !range !380
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @radeon_vce_fini(ptr noundef %rdev) #7
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  tail call fastcc void @cayman_pcie_gart_disable(ptr noundef %rdev) #7
  tail call void @radeon_gart_table_vram_free(ptr noundef %rdev) #7
  tail call void @radeon_gart_fini(ptr noundef %rdev) #7
  tail call void @r600_vram_scratch_fini(ptr noundef %rdev) #7
  tail call void @radeon_gem_fini(ptr noundef %rdev) #7
  tail call void @radeon_fence_driver_fini(ptr noundef %rdev) #7
  tail call void @radeon_bo_fini(ptr noundef %rdev) #7
  tail call void @radeon_atombios_fini(ptr noundef %rdev) #7
  %bios = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 13
  %4 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bios, align 8
  tail call void @kfree(ptr noundef %5) #7
  %6 = ptrtoint ptr %bios to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %bios, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_pm_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_uvd_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_vce_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_vram_scratch_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_gem_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_fence_driver_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_bo_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_atombios_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cayman_vm_init(ptr nocapture noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nvm = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 100, i32 2
  %0 = ptrtoint ptr %nvm to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 8, ptr %nvm, align 4
  %flags = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 8
  %and = and i32 %2, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %3 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 8296
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !377
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  %conv = zext i32 %6 to i64
  %shl = shl nuw nsw i64 %conv, 22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %shl.sink = phi i64 [ %shl, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %7 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 100, i32 3
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %shl.sink, ptr %7, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @cayman_vm_fini(ptr nocapture noundef %rdev) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cayman_vm_decode_fault(ptr nocapture noundef readnone %rdev, i32 noundef %status, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = lshr i32 %status, 12
  %trunc = trunc i32 %and to i8
  %switch.tableidx = add i8 %trunc, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 -28, i8 %switch.tableidx)
  %0 = icmp ult i8 %switch.tableidx, -28
  br i1 %0, label %switch.lookup, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = zext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [228 x ptr], ptr @switch.table.cayman_vm_decode_fault, i32 0, i32 %1
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %do.end

do.end:                                           ; preds = %switch.lookup, %entry.do.end_crit_edge
  %block.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.69, %entry.do.end_crit_edge ]
  %shr = and i32 %and, 255
  %and3 = and i32 %status, 15
  %and1 = lshr i32 %status, 25
  %shr2 = and i32 %and1, 7
  %and22 = and i32 %status, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool.not = icmp eq i32 %and22, 0
  %cond = select i1 %tobool.not, ptr @.str.73, ptr @.str.72
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %and3, i32 noundef %shr2, i32 noundef %addr, ptr noundef nonnull %cond, ptr noundef nonnull %block.0, i32 noundef %shr) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cayman_vm_flush(ptr nocapture noundef readnone %rdev, ptr noundef %ring, i32 noundef %vm_id, i64 noundef %pd_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %vm_id, 1359
  %and = and i32 %0, 65535
  %count_dw.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 11
  %1 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %count_dw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.i = icmp slt i32 %2, 1
  br i1 %cmp.i, label %if.then.i, label %entry.radeon_ring_write.exit_crit_edge

entry.radeon_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit

radeon_ring_write.exit:                           ; preds = %if.then.i, %entry.radeon_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 2
  %3 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ring1.i, align 8
  %wptr.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 7
  %5 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %wptr.i, align 4
  %inc.i = add i32 %6, 1
  store i32 %inc.i, ptr %wptr.i, align 4
  %arrayidx.i = getelementptr i32, ptr %4, i32 %6
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 %and, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 16
  %8 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ptr_mask.i, align 4
  %10 = load i32, ptr %wptr.i, align 4
  %and.i = and i32 %10, %9
  store i32 %and.i, ptr %wptr.i, align 4
  %11 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count_dw.i, align 4
  %dec.i = add i32 %12, -1
  store i32 %dec.i, ptr %count_dw.i, align 4
  %ring_free_dw.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 10
  %13 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i = add i32 %14, -1
  store i32 %dec4.i, ptr %ring_free_dw.i, align 8
  %shr2 = lshr i64 %pd_addr, 12
  %conv = trunc i64 %shr2 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i20 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i20, label %if.then.i21, label %radeon_ring_write.exit.radeon_ring_write.exit31_crit_edge

radeon_ring_write.exit.radeon_ring_write.exit31_crit_edge: ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit31

if.then.i21:                                      ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit31

radeon_ring_write.exit31:                         ; preds = %if.then.i21, %radeon_ring_write.exit.radeon_ring_write.exit31_crit_edge
  %15 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ring1.i, align 8
  %17 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wptr.i, align 4
  %inc.i24 = add i32 %18, 1
  store i32 %inc.i24, ptr %wptr.i, align 4
  %arrayidx.i25 = getelementptr i32, ptr %16, i32 %18
  %19 = ptrtoint ptr %arrayidx.i25 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 %conv, ptr %arrayidx.i25, align 4
  %20 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ptr_mask.i, align 4
  %22 = load i32, ptr %wptr.i, align 4
  %and.i27 = and i32 %22, %21
  store i32 %and.i27, ptr %wptr.i, align 4
  %23 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %count_dw.i, align 4
  %dec.i28 = add i32 %24, -1
  store i32 %dec.i28, ptr %count_dw.i, align 4
  %25 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i30 = add i32 %26, -1
  store i32 %dec4.i30, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i28)
  %cmp.i33 = icmp slt i32 %dec.i28, 1
  br i1 %cmp.i33, label %if.then.i34, label %radeon_ring_write.exit31.radeon_ring_write.exit44_crit_edge

radeon_ring_write.exit31.radeon_ring_write.exit44_crit_edge: ; preds = %radeon_ring_write.exit31
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit44

if.then.i34:                                      ; preds = %radeon_ring_write.exit31
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit44

radeon_ring_write.exit44:                         ; preds = %if.then.i34, %radeon_ring_write.exit31.radeon_ring_write.exit44_crit_edge
  %27 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ring1.i, align 8
  %29 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %wptr.i, align 4
  %inc.i37 = add i32 %30, 1
  store i32 %inc.i37, ptr %wptr.i, align 4
  %arrayidx.i38 = getelementptr i32, ptr %28, i32 %30
  %31 = ptrtoint ptr %arrayidx.i38 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 5408, ptr %arrayidx.i38, align 4
  %32 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ptr_mask.i, align 4
  %34 = load i32, ptr %wptr.i, align 4
  %and.i40 = and i32 %34, %33
  store i32 %and.i40, ptr %wptr.i, align 4
  %35 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %count_dw.i, align 4
  %dec.i41 = add i32 %36, -1
  store i32 %dec.i41, ptr %count_dw.i, align 4
  %37 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i43 = add i32 %38, -1
  store i32 %dec4.i43, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i41)
  %cmp.i46 = icmp slt i32 %dec.i41, 1
  br i1 %cmp.i46, label %if.then.i47, label %radeon_ring_write.exit44.radeon_ring_write.exit57_crit_edge

radeon_ring_write.exit44.radeon_ring_write.exit57_crit_edge: ; preds = %radeon_ring_write.exit44
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit57

if.then.i47:                                      ; preds = %radeon_ring_write.exit44
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit57

radeon_ring_write.exit57:                         ; preds = %if.then.i47, %radeon_ring_write.exit44.radeon_ring_write.exit57_crit_edge
  %39 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ring1.i, align 8
  %41 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %wptr.i, align 4
  %inc.i50 = add i32 %42, 1
  store i32 %inc.i50, ptr %wptr.i, align 4
  %arrayidx.i51 = getelementptr i32, ptr %40, i32 %42
  %43 = ptrtoint ptr %arrayidx.i51 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile i32 1, ptr %arrayidx.i51, align 4
  %44 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ptr_mask.i, align 4
  %46 = load i32, ptr %wptr.i, align 4
  %and.i53 = and i32 %46, %45
  store i32 %and.i53, ptr %wptr.i, align 4
  %47 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %count_dw.i, align 4
  %dec.i54 = add i32 %48, -1
  store i32 %dec.i54, ptr %count_dw.i, align 4
  %49 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i56 = add i32 %50, -1
  store i32 %dec4.i56, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i54)
  %cmp.i59 = icmp slt i32 %dec.i54, 1
  br i1 %cmp.i59, label %if.then.i60, label %radeon_ring_write.exit57.radeon_ring_write.exit70_crit_edge

radeon_ring_write.exit57.radeon_ring_write.exit70_crit_edge: ; preds = %radeon_ring_write.exit57
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit70

if.then.i60:                                      ; preds = %radeon_ring_write.exit57
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit70

radeon_ring_write.exit70:                         ; preds = %if.then.i60, %radeon_ring_write.exit57.radeon_ring_write.exit70_crit_edge
  %51 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ring1.i, align 8
  %53 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %wptr.i, align 4
  %inc.i63 = add i32 %54, 1
  store i32 %inc.i63, ptr %wptr.i, align 4
  %arrayidx.i64 = getelementptr i32, ptr %52, i32 %54
  %55 = ptrtoint ptr %arrayidx.i64 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile i32 1310, ptr %arrayidx.i64, align 4
  %56 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ptr_mask.i, align 4
  %58 = load i32, ptr %wptr.i, align 4
  %and.i66 = and i32 %58, %57
  store i32 %and.i66, ptr %wptr.i, align 4
  %59 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %count_dw.i, align 4
  %dec.i67 = add i32 %60, -1
  store i32 %dec.i67, ptr %count_dw.i, align 4
  %61 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i69 = add i32 %62, -1
  store i32 %dec4.i69, ptr %ring_free_dw.i, align 8
  %shl3 = shl nuw i32 1, %vm_id
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i67)
  %cmp.i72 = icmp slt i32 %dec.i67, 1
  br i1 %cmp.i72, label %if.then.i73, label %radeon_ring_write.exit70.radeon_ring_write.exit83_crit_edge

radeon_ring_write.exit70.radeon_ring_write.exit83_crit_edge: ; preds = %radeon_ring_write.exit70
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit83

if.then.i73:                                      ; preds = %radeon_ring_write.exit70
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit83

radeon_ring_write.exit83:                         ; preds = %if.then.i73, %radeon_ring_write.exit70.radeon_ring_write.exit83_crit_edge
  %63 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ring1.i, align 8
  %65 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %wptr.i, align 4
  %inc.i76 = add i32 %66, 1
  store i32 %inc.i76, ptr %wptr.i, align 4
  %arrayidx.i77 = getelementptr i32, ptr %64, i32 %66
  %67 = ptrtoint ptr %arrayidx.i77 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile i32 %shl3, ptr %arrayidx.i77, align 4
  %68 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ptr_mask.i, align 4
  %70 = load i32, ptr %wptr.i, align 4
  %and.i79 = and i32 %70, %69
  store i32 %and.i79, ptr %wptr.i, align 4
  %71 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %count_dw.i, align 4
  %dec.i80 = add i32 %72, -1
  store i32 %dec.i80, ptr %count_dw.i, align 4
  %73 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i82 = add i32 %74, -1
  store i32 %dec4.i82, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i80)
  %cmp.i85 = icmp slt i32 %dec.i80, 1
  br i1 %cmp.i85, label %if.then.i86, label %radeon_ring_write.exit83.radeon_ring_write.exit96_crit_edge

radeon_ring_write.exit83.radeon_ring_write.exit96_crit_edge: ; preds = %radeon_ring_write.exit83
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit96

if.then.i86:                                      ; preds = %radeon_ring_write.exit83
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit96

radeon_ring_write.exit96:                         ; preds = %if.then.i86, %radeon_ring_write.exit83.radeon_ring_write.exit96_crit_edge
  %75 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ring1.i, align 8
  %77 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %wptr.i, align 4
  %inc.i89 = add i32 %78, 1
  store i32 %inc.i89, ptr %wptr.i, align 4
  %arrayidx.i90 = getelementptr i32, ptr %76, i32 %78
  %79 = ptrtoint ptr %arrayidx.i90 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile i32 -1073398784, ptr %arrayidx.i90, align 4
  %80 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %ptr_mask.i, align 4
  %82 = load i32, ptr %wptr.i, align 4
  %and.i92 = and i32 %82, %81
  store i32 %and.i92, ptr %wptr.i, align 4
  %83 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %count_dw.i, align 4
  %dec.i93 = add i32 %84, -1
  store i32 %dec.i93, ptr %count_dw.i, align 4
  %85 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i95 = add i32 %86, -1
  store i32 %dec4.i95, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i93)
  %cmp.i98 = icmp slt i32 %dec.i93, 1
  br i1 %cmp.i98, label %if.then.i99, label %radeon_ring_write.exit96.radeon_ring_write.exit109_crit_edge

radeon_ring_write.exit96.radeon_ring_write.exit109_crit_edge: ; preds = %radeon_ring_write.exit96
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit109

if.then.i99:                                      ; preds = %radeon_ring_write.exit96
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit109

radeon_ring_write.exit109:                        ; preds = %if.then.i99, %radeon_ring_write.exit96.radeon_ring_write.exit109_crit_edge
  %87 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ring1.i, align 8
  %89 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %wptr.i, align 4
  %inc.i102 = add i32 %90, 1
  store i32 %inc.i102, ptr %wptr.i, align 4
  %arrayidx.i103 = getelementptr i32, ptr %88, i32 %90
  %91 = ptrtoint ptr %arrayidx.i103 to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile i32 0, ptr %arrayidx.i103, align 4
  %92 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %ptr_mask.i, align 4
  %94 = load i32, ptr %wptr.i, align 4
  %and.i105 = and i32 %94, %93
  store i32 %and.i105, ptr %wptr.i, align 4
  %95 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %count_dw.i, align 4
  %dec.i106 = add i32 %96, -1
  store i32 %dec.i106, ptr %count_dw.i, align 4
  %97 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i108 = add i32 %98, -1
  store i32 %dec4.i108, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i106)
  %cmp.i111 = icmp slt i32 %dec.i106, 1
  br i1 %cmp.i111, label %if.then.i112, label %radeon_ring_write.exit109.radeon_ring_write.exit122_crit_edge

radeon_ring_write.exit109.radeon_ring_write.exit122_crit_edge: ; preds = %radeon_ring_write.exit109
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit122

if.then.i112:                                     ; preds = %radeon_ring_write.exit109
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit122

radeon_ring_write.exit122:                        ; preds = %if.then.i112, %radeon_ring_write.exit109.radeon_ring_write.exit122_crit_edge
  %99 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ring1.i, align 8
  %101 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %wptr.i, align 4
  %inc.i115 = add i32 %102, 1
  store i32 %inc.i115, ptr %wptr.i, align 4
  %arrayidx.i116 = getelementptr i32, ptr %100, i32 %102
  %103 = ptrtoint ptr %arrayidx.i116 to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile i32 1310, ptr %arrayidx.i116, align 4
  %104 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %ptr_mask.i, align 4
  %106 = load i32, ptr %wptr.i, align 4
  %and.i118 = and i32 %106, %105
  store i32 %and.i118, ptr %wptr.i, align 4
  %107 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %count_dw.i, align 4
  %dec.i119 = add i32 %108, -1
  store i32 %dec.i119, ptr %count_dw.i, align 4
  %109 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i121 = add i32 %110, -1
  store i32 %dec4.i121, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i119)
  %cmp.i124 = icmp slt i32 %dec.i119, 1
  br i1 %cmp.i124, label %if.then.i125, label %radeon_ring_write.exit122.radeon_ring_write.exit135_crit_edge

radeon_ring_write.exit122.radeon_ring_write.exit135_crit_edge: ; preds = %radeon_ring_write.exit122
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit135

if.then.i125:                                     ; preds = %radeon_ring_write.exit122
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit135

radeon_ring_write.exit135:                        ; preds = %if.then.i125, %radeon_ring_write.exit122.radeon_ring_write.exit135_crit_edge
  %111 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ring1.i, align 8
  %113 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %wptr.i, align 4
  %inc.i128 = add i32 %114, 1
  store i32 %inc.i128, ptr %wptr.i, align 4
  %arrayidx.i129 = getelementptr i32, ptr %112, i32 %114
  %115 = ptrtoint ptr %arrayidx.i129 to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile i32 0, ptr %arrayidx.i129, align 4
  %116 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %ptr_mask.i, align 4
  %118 = load i32, ptr %wptr.i, align 4
  %and.i131 = and i32 %118, %117
  store i32 %and.i131, ptr %wptr.i, align 4
  %119 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %count_dw.i, align 4
  %dec.i132 = add i32 %120, -1
  store i32 %dec.i132, ptr %count_dw.i, align 4
  %121 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i134 = add i32 %122, -1
  store i32 %dec4.i134, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i132)
  %cmp.i137 = icmp slt i32 %dec.i132, 1
  br i1 %cmp.i137, label %if.then.i138, label %radeon_ring_write.exit135.radeon_ring_write.exit148_crit_edge

radeon_ring_write.exit135.radeon_ring_write.exit148_crit_edge: ; preds = %radeon_ring_write.exit135
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit148

if.then.i138:                                     ; preds = %radeon_ring_write.exit135
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit148

radeon_ring_write.exit148:                        ; preds = %if.then.i138, %radeon_ring_write.exit135.radeon_ring_write.exit148_crit_edge
  %123 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ring1.i, align 8
  %125 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %wptr.i, align 4
  %inc.i141 = add i32 %126, 1
  store i32 %inc.i141, ptr %wptr.i, align 4
  %arrayidx.i142 = getelementptr i32, ptr %124, i32 %126
  %127 = ptrtoint ptr %arrayidx.i142 to i32
  call void @__asan_store4_noabort(i32 %127)
  store volatile i32 0, ptr %arrayidx.i142, align 4
  %128 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %ptr_mask.i, align 4
  %130 = load i32, ptr %wptr.i, align 4
  %and.i144 = and i32 %130, %129
  store i32 %and.i144, ptr %wptr.i, align 4
  %131 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %count_dw.i, align 4
  %dec.i145 = add i32 %132, -1
  store i32 %dec.i145, ptr %count_dw.i, align 4
  %133 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i147 = add i32 %134, -1
  store i32 %dec4.i147, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i145)
  %cmp.i150 = icmp slt i32 %dec.i145, 1
  br i1 %cmp.i150, label %if.then.i151, label %radeon_ring_write.exit148.radeon_ring_write.exit161_crit_edge

radeon_ring_write.exit148.radeon_ring_write.exit161_crit_edge: ; preds = %radeon_ring_write.exit148
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit161

if.then.i151:                                     ; preds = %radeon_ring_write.exit148
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit161

radeon_ring_write.exit161:                        ; preds = %if.then.i151, %radeon_ring_write.exit148.radeon_ring_write.exit161_crit_edge
  %135 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %ring1.i, align 8
  %137 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %wptr.i, align 4
  %inc.i154 = add i32 %138, 1
  store i32 %inc.i154, ptr %wptr.i, align 4
  %arrayidx.i155 = getelementptr i32, ptr %136, i32 %138
  %139 = ptrtoint ptr %arrayidx.i155 to i32
  call void @__asan_store4_noabort(i32 %139)
  store volatile i32 0, ptr %arrayidx.i155, align 4
  %140 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %ptr_mask.i, align 4
  %142 = load i32, ptr %wptr.i, align 4
  %and.i157 = and i32 %142, %141
  store i32 %and.i157, ptr %wptr.i, align 4
  %143 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %count_dw.i, align 4
  %dec.i158 = add i32 %144, -1
  store i32 %dec.i158, ptr %count_dw.i, align 4
  %145 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i160 = add i32 %146, -1
  store i32 %dec4.i160, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i158)
  %cmp.i163 = icmp slt i32 %dec.i158, 1
  br i1 %cmp.i163, label %if.then.i164, label %radeon_ring_write.exit161.radeon_ring_write.exit174_crit_edge

radeon_ring_write.exit161.radeon_ring_write.exit174_crit_edge: ; preds = %radeon_ring_write.exit161
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit174

if.then.i164:                                     ; preds = %radeon_ring_write.exit161
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit174

radeon_ring_write.exit174:                        ; preds = %if.then.i164, %radeon_ring_write.exit161.radeon_ring_write.exit174_crit_edge
  %147 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %ring1.i, align 8
  %149 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %wptr.i, align 4
  %inc.i167 = add i32 %150, 1
  store i32 %inc.i167, ptr %wptr.i, align 4
  %arrayidx.i168 = getelementptr i32, ptr %148, i32 %150
  %151 = ptrtoint ptr %arrayidx.i168 to i32
  call void @__asan_store4_noabort(i32 %151)
  store volatile i32 32, ptr %arrayidx.i168, align 4
  %152 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %ptr_mask.i, align 4
  %154 = load i32, ptr %wptr.i, align 4
  %and.i170 = and i32 %154, %153
  store i32 %and.i170, ptr %wptr.i, align 4
  %155 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %count_dw.i, align 4
  %dec.i171 = add i32 %156, -1
  store i32 %dec.i171, ptr %count_dw.i, align 4
  %157 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i173 = add i32 %158, -1
  store i32 %dec4.i173, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i171)
  %cmp.i176 = icmp slt i32 %dec.i171, 1
  br i1 %cmp.i176, label %if.then.i177, label %radeon_ring_write.exit174.radeon_ring_write.exit187_crit_edge

radeon_ring_write.exit174.radeon_ring_write.exit187_crit_edge: ; preds = %radeon_ring_write.exit174
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit187

if.then.i177:                                     ; preds = %radeon_ring_write.exit174
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit187

radeon_ring_write.exit187:                        ; preds = %if.then.i177, %radeon_ring_write.exit174.radeon_ring_write.exit187_crit_edge
  %159 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %ring1.i, align 8
  %161 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %wptr.i, align 4
  %inc.i180 = add i32 %162, 1
  store i32 %inc.i180, ptr %wptr.i, align 4
  %arrayidx.i181 = getelementptr i32, ptr %160, i32 %162
  %163 = ptrtoint ptr %arrayidx.i181 to i32
  call void @__asan_store4_noabort(i32 %163)
  store volatile i32 -1073724928, ptr %arrayidx.i181, align 4
  %164 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %ptr_mask.i, align 4
  %166 = load i32, ptr %wptr.i, align 4
  %and.i183 = and i32 %166, %165
  store i32 %and.i183, ptr %wptr.i, align 4
  %167 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %count_dw.i, align 4
  %dec.i184 = add i32 %168, -1
  store i32 %dec.i184, ptr %count_dw.i, align 4
  %169 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i186 = add i32 %170, -1
  store i32 %dec4.i186, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i184)
  %cmp.i189 = icmp slt i32 %dec.i184, 1
  br i1 %cmp.i189, label %if.then.i190, label %radeon_ring_write.exit187.radeon_ring_write.exit200_crit_edge

radeon_ring_write.exit187.radeon_ring_write.exit200_crit_edge: ; preds = %radeon_ring_write.exit187
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit200

if.then.i190:                                     ; preds = %radeon_ring_write.exit187
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit200

radeon_ring_write.exit200:                        ; preds = %if.then.i190, %radeon_ring_write.exit187.radeon_ring_write.exit200_crit_edge
  %171 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %ring1.i, align 8
  %173 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %wptr.i, align 4
  %inc.i193 = add i32 %174, 1
  store i32 %inc.i193, ptr %wptr.i, align 4
  %arrayidx.i194 = getelementptr i32, ptr %172, i32 %174
  %175 = ptrtoint ptr %arrayidx.i194 to i32
  call void @__asan_store4_noabort(i32 %175)
  store volatile i32 0, ptr %arrayidx.i194, align 4
  %176 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %ptr_mask.i, align 4
  %178 = load i32, ptr %wptr.i, align 4
  %and.i196 = and i32 %178, %177
  store i32 %and.i196, ptr %wptr.i, align 4
  %179 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %count_dw.i, align 4
  %dec.i197 = add i32 %180, -1
  store i32 %dec.i197, ptr %count_dw.i, align 4
  %181 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i199 = add i32 %182, -1
  store i32 %dec4.i199, ptr %ring_free_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tn_set_vce_clocks(ptr noundef %rdev, i32 noundef %evclk, i32 noundef %ecclk) local_unnamed_addr #0 align 64 {
entry:
  %dividers = alloca %struct.atom_clock_dividers, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dividers) #7
  %0 = call ptr @memset(ptr %dividers, i32 255, i32 32)
  %call = call i32 @radeon_atom_get_clock_dividers(ptr noundef %rdev, i8 noundef zeroext 2, i32 noundef %ecclk, i1 noundef zeroext false, ptr noundef nonnull %dividers) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  br label %for.body

for.body:                                         ; preds = %while.body.preheader.for.body_crit_edge, %for.cond.preheader
  %i.061 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %while.body.preheader.for.body_crit_edge ]
  %1 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 1572
  %3 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !377
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %while.body.preheader, label %do.body

while.body.preheader:                             ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %5(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %6(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %7(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %8(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %9(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %10(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %11(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %12(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %13(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %14(i32 noundef 214748000) #7
  %inc = add nuw nsw i32 %i.061, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %while.body.preheader.cleanup_crit_edge, label %while.body.preheader.for.body_crit_edge

while.body.preheader.for.body_crit_edge:          ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

while.body.preheader.cleanup_crit_edge:           ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %for.body
  %15 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i49 = getelementptr i8, ptr %16, i32 1568
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49) #7, !srcloc !377
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  %18 = and i32 %17, -2130771969
  %19 = call i32 @llvm.bswap.i32(i32 %18)
  %20 = ptrtoint ptr %dividers to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dividers, align 4
  %and11 = and i32 %21, 383
  %or = or i32 %and11, %19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  call void @arm_heavy_mb() #7
  %22 = call i32 @llvm.bswap.i32(i32 %or) #7
  %23 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i53 = getelementptr i8, ptr %24, i32 1568
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 %22) #7, !srcloc !376
  br label %for.body14

for.body14:                                       ; preds = %while.body24.preheader.for.body14_crit_edge, %do.body
  %i.163 = phi i32 [ 0, %do.body ], [ %inc27, %while.body24.preheader.for.body14_crit_edge ]
  %25 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i57 = getelementptr i8, ptr %26, i32 1572
  %27 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i57) #7, !srcloc !377
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  %28 = and i32 %27, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool17.not = icmp eq i32 %28, 0
  br i1 %tobool17.not, label %while.body24.preheader, label %for.end28

while.body24.preheader:                           ; preds = %for.body14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %29(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %30(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %31(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %32(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %33(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %34(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %35(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %36(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %37(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %38(i32 noundef 214748000) #7
  %inc27 = add nuw nsw i32 %i.163, 1
  %exitcond64.not = icmp eq i32 %inc27, 100
  br i1 %exitcond64.not, label %while.body24.preheader.for.end28.thread_crit_edge, label %while.body24.preheader.for.body14_crit_edge

while.body24.preheader.for.body14_crit_edge:      ; preds = %while.body24.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body14

while.body24.preheader.for.end28.thread_crit_edge: ; preds = %while.body24.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end28.thread

for.end28:                                        ; preds = %for.body14
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %i.163)
  %cmp29 = icmp eq i32 %i.163, 100
  br i1 %cmp29, label %for.end28.for.end28.thread_crit_edge, label %for.end28.cleanup_crit_edge

for.end28.cleanup_crit_edge:                      ; preds = %for.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end28.for.end28.thread_crit_edge:             ; preds = %for.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end28.thread

for.end28.thread:                                 ; preds = %for.end28.for.end28.thread_crit_edge, %while.body24.preheader.for.end28.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.end28.thread, %for.end28.cleanup_crit_edge, %while.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -110, %for.end28.thread ], [ 0, %for.end28.cleanup_crit_edge ], [ -110, %while.body.preheader.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dividers) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_atom_get_clock_dividers(ptr noundef, i8 noundef zeroext, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @evergreen_print_gpu_status_regs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @evergreen_mc_stop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @evergreen_mc_wait_for_idle(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @evergreen_mc_resume(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_program_register_sequence(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @evergreen_pcie_gen2_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @evergreen_program_aspm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_vram_scratch_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @evergreen_mc_program(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sumo_rlc_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_wb_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_fence_driver_start_ring(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_irq_kms_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_irq_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @evergreen_irq_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_ring_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cayman_cp_load_microcode(ptr noundef %rdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %me_fw = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 71
  %0 = ptrtoint ptr %me_fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %me_fw, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pfp_fw = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 72
  %2 = ptrtoint ptr %pfp_fw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pfp_fw, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %asic.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %4 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %asic.i, align 8
  %copy_ring_index.i = getelementptr inbounds %struct.radeon_asic, ptr %5, i32 0, i32 17, i32 5
  %6 = ptrtoint ptr %copy_ring_index.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %copy_ring_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  br i1 %cmp.i, label %if.then1.i, label %if.end.cayman_cp_enable.exit_crit_edge

if.end.cayman_cp_enable.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cayman_cp_enable.exit

if.then1.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %visible_vram_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 4
  %8 = ptrtoint ptr %visible_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %visible_vram_size.i, align 8
  tail call void @radeon_ttm_set_active_vram_size(ptr noundef %rdev, i64 noundef %9) #7
  br label %cayman_cp_enable.exit

cayman_cp_enable.exit:                            ; preds = %if.then1.i, %if.end.cayman_cp_enable.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %rmmio.i11.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %10 = ptrtoint ptr %rmmio.i11.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i11.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %11, i32 34520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 20) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %rmmio.i11.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i11.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %13, i32 34112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i, i32 0) #7, !srcloc !376
  %ready.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 0, i32 17
  %14 = ptrtoint ptr %ready.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %ready.i, align 8
  %15 = ptrtoint ptr %pfp_fw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pfp_fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %19 = ptrtoint ptr %rmmio.i11.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rmmio.i11.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 49488
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !376
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %cayman_cp_enable.exit
  %i.060 = phi i32 [ 0, %cayman_cp_enable.exit ], [ %inc, %for.body.for.body_crit_edge ]
  %fw_data.059 = phi ptr [ %18, %cayman_cp_enable.exit ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %incdec.ptr = getelementptr i32, ptr %fw_data.059, i32 1
  %21 = ptrtoint ptr %fw_data.059 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fw_data.059, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #7
  %24 = ptrtoint ptr %rmmio.i11.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmmio.i11.i, align 4
  %add.ptr.i34 = getelementptr i8, ptr %25, i32 49492
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 %23) #7, !srcloc !376
  %inc = add nuw nsw i32 %i.060, 1
  %exitcond.not = icmp eq i32 %inc, 2176
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %26 = ptrtoint ptr %rmmio.i11.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmmio.i11.i, align 4
  %add.ptr.i38 = getelementptr i8, ptr %27, i32 49488
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 0) #7, !srcloc !376
  %28 = ptrtoint ptr %me_fw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %me_fw, align 8
  %data4 = getelementptr inbounds %struct.firmware, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %data4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %32 = ptrtoint ptr %rmmio.i11.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmmio.i11.i, align 4
  %add.ptr.i42 = getelementptr i8, ptr %33, i32 49500
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 0) #7, !srcloc !376
  br label %for.body7

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %for.end
  %i.162 = phi i32 [ 0, %for.end ], [ %inc11, %for.body7.for.body7_crit_edge ]
  %fw_data.161 = phi ptr [ %31, %for.end ], [ %incdec.ptr8, %for.body7.for.body7_crit_edge ]
  %incdec.ptr8 = getelementptr i32, ptr %fw_data.161, i32 1
  %34 = ptrtoint ptr %fw_data.161 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fw_data.161, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #7
  %37 = ptrtoint ptr %rmmio.i11.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rmmio.i11.i, align 4
  %add.ptr.i46 = getelementptr i8, ptr %38, i32 49504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 %36) #7, !srcloc !376
  %inc11 = add nuw nsw i32 %i.162, 1
  %exitcond63.not = icmp eq i32 %inc11, 2176
  br i1 %exitcond63.not, label %for.end12, label %for.body7.for.body7_crit_edge

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body7

for.end12:                                        ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %39 = ptrtoint ptr %rmmio.i11.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rmmio.i11.i, align 4
  %add.ptr.i50 = getelementptr i8, ptr %40, i32 49488
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 0) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %41 = ptrtoint ptr %rmmio.i11.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rmmio.i11.i, align 4
  %add.ptr.i54 = getelementptr i8, ptr %42, i32 49500
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54, i32 0) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %43 = ptrtoint ptr %rmmio.i11.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rmmio.i11.i, align 4
  %add.ptr.i58 = getelementptr i8, ptr %44, i32 49496
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 0) #7, !srcloc !376
  br label %cleanup

cleanup:                                          ; preds = %for.end12, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end12 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cayman_cp_resume(ptr noundef %rdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 32800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 558301184) #7, !srcloc !376
  %2 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i207 = getelementptr i8, ptr %3, i32 32800
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i207) #7, !srcloc !377
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i211 = getelementptr i8, ptr %21, i32 32800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i211, i32 0) #7, !srcloc !376
  %22 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i215 = getelementptr i8, ptr %23, i32 32800
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i215) #7, !srcloc !377
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %25 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i219 = getelementptr i8, ptr %26, i32 34236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i219, i32 0) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %27 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i223 = getelementptr i8, ptr %28, i32 34248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i223, i32 0) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %29 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i227 = getelementptr i8, ptr %30, i32 34564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i227, i32 0) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %31 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i231 = getelementptr i8, ptr %32, i32 49660
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i231, i32 8) #7, !srcloc !376
  %gpu_addr = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 62, i32 2
  %33 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %gpu_addr, align 8
  %shr = lshr i64 %34, 8
  %conv = trunc i64 %shr to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %35 = tail call i32 @llvm.bswap.i32(i32 %conv) #7
  %36 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i235 = getelementptr i8, ptr %37, i32 34116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i235, i32 %35) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %38 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i239 = getelementptr i8, ptr %39, i32 34112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i239, i32 -16777216) #7, !srcloc !376
  %ring_size = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 0, i32 9
  %40 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ring_size, align 4
  %div203 = lshr i32 %41, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %41)
  %cmp.i240 = icmp ugt i32 %41, 15
  %sub.i241 = add nsw i32 %div203, -1
  %42 = tail call i32 @llvm.ctlz.i32(i32 %sub.i241, i1 false) #7, !range !381
  %add.i = sub nuw nsw i32 32, %42
  %add.i.op = or i32 %add.i, 133376
  %or45 = select i1 %cmp.i240, i32 %add.i.op, i32 133376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %43 = tail call i32 @llvm.bswap.i32(i32 %or45) #7
  %44 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i245 = getelementptr i8, ptr %45, i32 49412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i245, i32 %43) #7, !srcloc !376
  %46 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %gpu_addr, align 8
  %add49 = add i64 %47, 1024
  %48 = trunc i64 %add49 to i32
  %conv52 = and i32 %48, -4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %49 = tail call i32 @llvm.bswap.i32(i32 %conv52) #7
  %50 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i251 = getelementptr i8, ptr %51, i32 49420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i251, i32 %49) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %sh.diff = lshr i64 %add49, 8
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %and57 = and i32 %tr.sh.diff, -16777216
  %52 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i260 = getelementptr i8, ptr %53, i32 49424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i260, i32 %and57) #7, !srcloc !376
  %ring_size.1 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 1, i32 9
  %54 = ptrtoint ptr %ring_size.1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ring_size.1, align 4
  %div203.1 = lshr i32 %55, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %55)
  %cmp.i240.1 = icmp ugt i32 %55, 15
  %sub.i241.1 = add nsw i32 %div203.1, -1
  %56 = tail call i32 @llvm.ctlz.i32(i32 %sub.i241.1, i1 false) #7, !range !381
  %add.i.1 = sub nuw nsw i32 32, %56
  %add.i.op.1 = or i32 %add.i.1, 133376
  %or45.1 = select i1 %cmp.i240.1, i32 %add.i.op.1, i32 133376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %57 = tail call i32 @llvm.bswap.i32(i32 %or45.1) #7
  %58 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i245.1 = getelementptr i8, ptr %59, i32 49540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i245.1, i32 %57) #7, !srcloc !376
  %60 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %gpu_addr, align 8
  %add49.1 = add i64 %61, 1024
  %62 = trunc i64 %add49.1 to i32
  %conv52.1 = and i32 %62, -4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %63 = tail call i32 @llvm.bswap.i32(i32 %conv52.1) #7
  %64 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i251.1 = getelementptr i8, ptr %65, i32 49544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i251.1, i32 %63) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %sh.diff.1 = lshr i64 %add49.1, 8
  %tr.sh.diff.1 = trunc i64 %sh.diff.1 to i32
  %and57.1 = and i32 %tr.sh.diff.1, -16777216
  %66 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i260.1 = getelementptr i8, ptr %67, i32 49548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i260.1, i32 %and57.1) #7, !srcloc !376
  %ring_size.2 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 2, i32 9
  %68 = ptrtoint ptr %ring_size.2 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ring_size.2, align 4
  %div203.2 = lshr i32 %69, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %69)
  %cmp.i240.2 = icmp ugt i32 %69, 15
  %sub.i241.2 = add nsw i32 %div203.2, -1
  %70 = tail call i32 @llvm.ctlz.i32(i32 %sub.i241.2, i1 false) #7, !range !381
  %add.i.2 = sub nuw nsw i32 32, %70
  %add.i.op.2 = or i32 %add.i.2, 133376
  %or45.2 = select i1 %cmp.i240.2, i32 %add.i.op.2, i32 133376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %71 = tail call i32 @llvm.bswap.i32(i32 %or45.2) #7
  %72 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i245.2 = getelementptr i8, ptr %73, i32 49560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i245.2, i32 %71) #7, !srcloc !376
  %74 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %gpu_addr, align 8
  %add49.2 = add i64 %75, 1024
  %76 = trunc i64 %add49.2 to i32
  %conv52.2 = and i32 %76, -4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %77 = tail call i32 @llvm.bswap.i32(i32 %conv52.2) #7
  %78 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i251.2 = getelementptr i8, ptr %79, i32 49564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i251.2, i32 %77) #7, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %sh.diff.2 = lshr i64 %add49.2, 8
  %tr.sh.diff.2 = trunc i64 %sh.diff.2 to i32
  %and57.2 = and i32 %tr.sh.diff.2, -16777216
  %80 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i260.2 = getelementptr i8, ptr %81, i32 49568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i260.2, i32 %and57.2) #7, !srcloc !376
  %gpu_addr66 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 0, i32 14
  %82 = ptrtoint ptr %gpu_addr66 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %gpu_addr66, align 8
  %shr67 = lshr i64 %83, 8
  %conv68 = trunc i64 %shr67 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %84 = tail call i32 @llvm.bswap.i32(i32 %conv68) #7
  %85 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i269 = getelementptr i8, ptr %86, i32 49408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i269, i32 %84) #7, !srcloc !376
  %gpu_addr66.1 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 1, i32 14
  %87 = ptrtoint ptr %gpu_addr66.1 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %gpu_addr66.1, align 8
  %shr67.1 = lshr i64 %88, 8
  %conv68.1 = trunc i64 %shr67.1 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %89 = tail call i32 @llvm.bswap.i32(i32 %conv68.1) #7
  %90 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i269.1 = getelementptr i8, ptr %91, i32 49536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i269.1, i32 %89) #7, !srcloc !376
  %gpu_addr66.2 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 2, i32 14
  %92 = ptrtoint ptr %gpu_addr66.2 to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %gpu_addr66.2, align 8
  %shr67.2 = lshr i64 %93, 8
  %conv68.2 = trunc i64 %shr67.2 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %94 = tail call i32 @llvm.bswap.i32(i32 %conv68.2) #7
  %95 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i269.2 = getelementptr i8, ptr %96, i32 49556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i269.2, i32 %94) #7, !srcloc !376
  br label %for.body75

for.body75:                                       ; preds = %for.body75.for.body75_crit_edge, %entry
  %i.2333 = phi i32 [ %inc97, %for.body75.for.body75_crit_edge ], [ 0, %entry ]
  %arrayidx77 = getelementptr [3 x i32], ptr @cayman_cp_resume.ridx, i32 0, i32 %i.2333
  %97 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx77, align 4
  %arrayidx79 = getelementptr [3 x i32], ptr @cayman_cp_resume.cp_rb_cntl, i32 0, i32 %i.2333
  %99 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx79, align 4
  %101 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i278 = getelementptr i8, ptr %102, i32 %100
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i278) #7, !srcloc !377
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  %104 = or i32 %103, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %105 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i285 = getelementptr i8, ptr %106, i32 %100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i285, i32 %104) #7, !srcloc !376
  %wptr = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %98, i32 7
  %107 = ptrtoint ptr %wptr to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %wptr, align 4
  %arrayidx84 = getelementptr [3 x i32], ptr @cayman_cp_resume.cp_rb_rptr, i32 0, i32 %i.2333
  %108 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx84, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %110 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i294 = getelementptr i8, ptr %111, i32 %109
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i294, i32 0) #7, !srcloc !376
  %112 = ptrtoint ptr %wptr to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %wptr, align 4
  %arrayidx85 = getelementptr [3 x i32], ptr @cayman_cp_resume.cp_rb_wptr, i32 0, i32 %i.2333
  %114 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx85, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %116 = tail call i32 @llvm.bswap.i32(i32 %113) #7
  %117 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i303 = getelementptr i8, ptr %118, i32 %115
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i303, i32 %116) #7, !srcloc !376
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %119 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %119(i32 noundef 214748000) #7
  %120 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i312 = getelementptr i8, ptr %121, i32 %100
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i312) #7, !srcloc !377
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !378
  %123 = and i32 %122, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %124 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i323 = getelementptr i8, ptr %125, i32 %100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i323, i32 %123) #7, !srcloc !376
  %inc97 = add nuw nsw i32 %i.2333, 1
  %exitcond335.not = icmp eq i32 %inc97, 3
  br i1 %exitcond335.not, label %for.end98, label %for.body75.for.body75_crit_edge

for.body75.for.body75_crit_edge:                  ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body75

for.end98:                                        ; preds = %for.body75
  %ring1.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 52
  %call.i = tail call i32 @radeon_ring_lock(ptr noundef %rdev, ptr noundef %ring1.i, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i327

if.then.i327:                                     ; preds = %for.end98
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.144, i32 noundef %call.i) #7
  br label %cayman_cp_start.exit

if.end.i:                                         ; preds = %for.end98
  %count_dw.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 0, i32 11
  %126 = ptrtoint ptr %count_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %count_dw.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %127)
  %cmp.i.i = icmp slt i32 %127, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.radeon_ring_write.exit.i_crit_edge

if.end.i.radeon_ring_write.exit.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit.i

radeon_ring_write.exit.i:                         ; preds = %if.then.i.i, %if.end.i.radeon_ring_write.exit.i_crit_edge
  %ring1.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 0, i32 2
  %128 = ptrtoint ptr %ring1.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ring1.i.i, align 8
  %wptr.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 0, i32 7
  %130 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %wptr.i.i, align 4
  %inc.i.i = add i32 %131, 1
  store i32 %inc.i.i, ptr %wptr.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %129, i32 %131
  %132 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store volatile i32 -1073396736, ptr %arrayidx.i.i, align 4
  %ptr_mask.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 0, i32 16
  %133 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %ptr_mask.i.i, align 4
  %135 = load i32, ptr %wptr.i.i, align 4
  %and.i.i = and i32 %135, %134
  store i32 %and.i.i, ptr %wptr.i.i, align 4
  %136 = ptrtoint ptr %count_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %count_dw.i.i, align 4
  %dec.i.i = add i32 %137, -1
  store i32 %dec.i.i, ptr %count_dw.i.i, align 4
  %ring_free_dw.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 0, i32 10
  %138 = ptrtoint ptr %ring_free_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %ring_free_dw.i.i, align 8
  %dec4.i.i = add i32 %139, -1
  store i32 %dec4.i.i, ptr %ring_free_dw.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i.i)
  %cmp.i2.i = icmp slt i32 %dec.i.i, 1
  br i1 %cmp.i2.i, label %if.then.i3.i, label %radeon_ring_write.exit.i.radeon_ring_write.exit13.i_crit_edge

radeon_ring_write.exit.i.radeon_ring_write.exit13.i_crit_edge: ; preds = %radeon_ring_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit13.i

if.then.i3.i:                                     ; preds = %radeon_ring_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit13.i

radeon_ring_write.exit13.i:                       ; preds = %if.then.i3.i, %radeon_ring_write.exit.i.radeon_ring_write.exit13.i_crit_edge
  %140 = ptrtoint ptr %ring1.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %ring1.i.i, align 8
  %142 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %wptr.i.i, align 4
  %inc.i6.i = add i32 %143, 1
  store i32 %inc.i6.i, ptr %wptr.i.i, align 4
  %arrayidx.i7.i = getelementptr i32, ptr %141, i32 %143
  %144 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store volatile i32 1, ptr %arrayidx.i7.i, align 4
  %145 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %ptr_mask.i.i, align 4
  %147 = load i32, ptr %wptr.i.i, align 4
  %and.i9.i = and i32 %147, %146
  store i32 %and.i9.i, ptr %wptr.i.i, align 4
  %148 = ptrtoint ptr %count_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %count_dw.i.i, align 4
  %dec.i10.i = add i32 %149, -1
  store i32 %dec.i10.i, ptr %count_dw.i.i, align 4
  %150 = ptrtoint ptr %ring_free_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %ring_free_dw.i.i, align 8
  %dec4.i12.i = add i32 %151, -1
  store i32 %dec4.i12.i, ptr %ring_free_dw.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i10.i)
  %cmp.i15.i = icmp slt i32 %dec.i10.i, 1
  br i1 %cmp.i15.i, label %if.then.i16.i, label %radeon_ring_write.exit13.i.radeon_ring_write.exit26.i_crit_edge

radeon_ring_write.exit13.i.radeon_ring_write.exit26.i_crit_edge: ; preds = %radeon_ring_write.exit13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit26.i

if.then.i16.i:                                    ; preds = %radeon_ring_write.exit13.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit26.i

radeon_ring_write.exit26.i:                       ; preds = %if.then.i16.i, %radeon_ring_write.exit13.i.radeon_ring_write.exit26.i_crit_edge
  %152 = ptrtoint ptr %ring1.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ring1.i.i, align 8
  %154 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %wptr.i.i, align 4
  %inc.i19.i = add i32 %155, 1
  store i32 %inc.i19.i, ptr %wptr.i.i, align 4
  %arrayidx.i20.i = getelementptr i32, ptr %153, i32 %155
  %156 = ptrtoint ptr %arrayidx.i20.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store volatile i32 0, ptr %arrayidx.i20.i, align 4
  %157 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %ptr_mask.i.i, align 4
  %159 = load i32, ptr %wptr.i.i, align 4
  %and.i22.i = and i32 %159, %158
  store i32 %and.i22.i, ptr %wptr.i.i, align 4
  %160 = ptrtoint ptr %count_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %count_dw.i.i, align 4
  %dec.i23.i = add i32 %161, -1
  store i32 %dec.i23.i, ptr %count_dw.i.i, align 4
  %162 = ptrtoint ptr %ring_free_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %ring_free_dw.i.i, align 8
  %dec4.i25.i = add i32 %163, -1
  store i32 %dec4.i25.i, ptr %ring_free_dw.i.i, align 8
  %max_hw_contexts.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 14
  %164 = ptrtoint ptr %max_hw_contexts.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %max_hw_contexts.i, align 8
  %sub.i328 = add i32 %165, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i23.i)
  %cmp.i28.i = icmp slt i32 %dec.i23.i, 1
  br i1 %cmp.i28.i, label %if.then.i29.i, label %radeon_ring_write.exit26.i.radeon_ring_write.exit39.i_crit_edge

radeon_ring_write.exit26.i.radeon_ring_write.exit39.i_crit_edge: ; preds = %radeon_ring_write.exit26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit39.i

if.then.i29.i:                                    ; preds = %radeon_ring_write.exit26.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit39.i

radeon_ring_write.exit39.i:                       ; preds = %if.then.i29.i, %radeon_ring_write.exit26.i.radeon_ring_write.exit39.i_crit_edge
  %166 = ptrtoint ptr %ring1.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %ring1.i.i, align 8
  %168 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %wptr.i.i, align 4
  %inc.i32.i = add i32 %169, 1
  store i32 %inc.i32.i, ptr %wptr.i.i, align 4
  %arrayidx.i33.i = getelementptr i32, ptr %167, i32 %169
  %170 = ptrtoint ptr %arrayidx.i33.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store volatile i32 %sub.i328, ptr %arrayidx.i33.i, align 4
  %171 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %ptr_mask.i.i, align 4
  %173 = load i32, ptr %wptr.i.i, align 4
  %and.i35.i = and i32 %173, %172
  store i32 %and.i35.i, ptr %wptr.i.i, align 4
  %174 = ptrtoint ptr %count_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %count_dw.i.i, align 4
  %dec.i36.i = add i32 %175, -1
  store i32 %dec.i36.i, ptr %count_dw.i.i, align 4
  %176 = ptrtoint ptr %ring_free_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %ring_free_dw.i.i, align 8
  %dec4.i38.i = add i32 %177, -1
  store i32 %dec4.i38.i, ptr %ring_free_dw.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i36.i)
  %cmp.i41.i = icmp slt i32 %dec.i36.i, 1
  br i1 %cmp.i41.i, label %if.then.i42.i, label %radeon_ring_write.exit39.i.radeon_ring_write.exit52.i_crit_edge

radeon_ring_write.exit39.i.radeon_ring_write.exit52.i_crit_edge: ; preds = %radeon_ring_write.exit39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit52.i

if.then.i42.i:                                    ; preds = %radeon_ring_write.exit39.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit52.i

radeon_ring_write.exit52.i:                       ; preds = %if.then.i42.i, %radeon_ring_write.exit39.i.radeon_ring_write.exit52.i_crit_edge
  %178 = ptrtoint ptr %ring1.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %ring1.i.i, align 8
  %180 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %wptr.i.i, align 4
  %inc.i45.i = add i32 %181, 1
  store i32 %inc.i45.i, ptr %wptr.i.i, align 4
  %arrayidx.i46.i = getelementptr i32, ptr %179, i32 %181
  %182 = ptrtoint ptr %arrayidx.i46.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store volatile i32 65536, ptr %arrayidx.i46.i, align 4
  %183 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %ptr_mask.i.i, align 4
  %185 = load i32, ptr %wptr.i.i, align 4
  %and.i48.i = and i32 %185, %184
  store i32 %and.i48.i, ptr %wptr.i.i, align 4
  %186 = ptrtoint ptr %count_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %count_dw.i.i, align 4
  %dec.i49.i = add i32 %187, -1
  store i32 %dec.i49.i, ptr %count_dw.i.i, align 4
  %188 = ptrtoint ptr %ring_free_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %ring_free_dw.i.i, align 8
  %dec4.i51.i = add i32 %189, -1
  store i32 %dec4.i51.i, ptr %ring_free_dw.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i49.i)
  %cmp.i54.i = icmp slt i32 %dec.i49.i, 1
  br i1 %cmp.i54.i, label %if.then.i55.i, label %radeon_ring_write.exit52.i.radeon_ring_write.exit65.i_crit_edge

radeon_ring_write.exit52.i.radeon_ring_write.exit65.i_crit_edge: ; preds = %radeon_ring_write.exit52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit65.i

if.then.i55.i:                                    ; preds = %radeon_ring_write.exit52.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit65.i

radeon_ring_write.exit65.i:                       ; preds = %if.then.i55.i, %radeon_ring_write.exit52.i.radeon_ring_write.exit65.i_crit_edge
  %190 = ptrtoint ptr %ring1.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %ring1.i.i, align 8
  %192 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %wptr.i.i, align 4
  %inc.i58.i = add i32 %193, 1
  store i32 %inc.i58.i, ptr %wptr.i.i, align 4
  %arrayidx.i59.i = getelementptr i32, ptr %191, i32 %193
  %194 = ptrtoint ptr %arrayidx.i59.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store volatile i32 0, ptr %arrayidx.i59.i, align 4
  %195 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %ptr_mask.i.i, align 4
  %197 = load i32, ptr %wptr.i.i, align 4
  %and.i61.i = and i32 %197, %196
  store i32 %and.i61.i, ptr %wptr.i.i, align 4
  %198 = ptrtoint ptr %count_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %count_dw.i.i, align 4
  %dec.i62.i = add i32 %199, -1
  store i32 %dec.i62.i, ptr %count_dw.i.i, align 4
  %200 = ptrtoint ptr %ring_free_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %ring_free_dw.i.i, align 8
  %dec4.i64.i = add i32 %201, -1
  store i32 %dec4.i64.i, ptr %ring_free_dw.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i62.i)
  %cmp.i67.i = icmp slt i32 %dec.i62.i, 1
  br i1 %cmp.i67.i, label %if.then.i68.i, label %radeon_ring_write.exit65.i.radeon_ring_write.exit78.i_crit_edge

radeon_ring_write.exit65.i.radeon_ring_write.exit78.i_crit_edge: ; preds = %radeon_ring_write.exit65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit78.i

if.then.i68.i:                                    ; preds = %radeon_ring_write.exit65.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit78.i

radeon_ring_write.exit78.i:                       ; preds = %if.then.i68.i, %radeon_ring_write.exit65.i.radeon_ring_write.exit78.i_crit_edge
  %202 = ptrtoint ptr %ring1.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %ring1.i.i, align 8
  %204 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %wptr.i.i, align 4
  %inc.i71.i = add i32 %205, 1
  store i32 %inc.i71.i, ptr %wptr.i.i, align 4
  %arrayidx.i72.i = getelementptr i32, ptr %203, i32 %205
  %206 = ptrtoint ptr %arrayidx.i72.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store volatile i32 0, ptr %arrayidx.i72.i, align 4
  %207 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %ptr_mask.i.i, align 4
  %209 = load i32, ptr %wptr.i.i, align 4
  %and.i74.i = and i32 %209, %208
  store i32 %and.i74.i, ptr %wptr.i.i, align 4
  %210 = ptrtoint ptr %count_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %count_dw.i.i, align 4
  %dec.i75.i = add i32 %211, -1
  store i32 %dec.i75.i, ptr %count_dw.i.i, align 4
  %212 = ptrtoint ptr %ring_free_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %ring_free_dw.i.i, align 8
  %dec4.i77.i = add i32 %213, -1
  store i32 %dec4.i77.i, ptr %ring_free_dw.i.i, align 8
  tail call void @radeon_ring_unlock_commit(ptr noundef %rdev, ptr noundef %ring1.i, i1 noundef zeroext false) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !375
  tail call void @arm_heavy_mb() #7
  %214 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %215, i32 34520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #7, !srcloc !376
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cayman_default_size to i32))
  %216 = load i32, ptr @cayman_default_size, align 4
  %add.i329 = add i32 %216, 19
  %call2.i = tail call i32 @radeon_ring_lock(ptr noundef %rdev, ptr noundef %ring1.i, i32 noundef %add.i329) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.then4.i

if.then4.i:                                       ; preds = %radeon_ring_write.exit78.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.144, i32 noundef %call2.i) #7
  br label %cayman_cp_start.exit

if.end5.i:                                        ; preds = %radeon_ring_write.exit78.i
  %217 = ptrtoint ptr %count_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %count_dw.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %218)
  %cmp.i81.i = icmp slt i32 %218, 1
  br i1 %cmp.i81.i, label %if.then.i82.i, label %if.end5.i.radeon_ring_write.exit92.i_crit_edge

if.end5.i.radeon_ring_write.exit92.i_crit_edge:   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit92.i

if.then.i82.i:                                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit92.i

radeon_ring_write.exit92.i:                       ; preds = %if.then.i82.i, %if.end5.i.radeon_ring_write.exit92.i_crit_edge
  %219 = ptrtoint ptr %ring1.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %ring1.i.i, align 8
  %221 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %wptr.i.i, align 4
  %inc.i85.i = add i32 %222, 1
  store i32 %inc.i85.i, ptr %wptr.i.i, align 4
  %arrayidx.i86.i = getelementptr i32, ptr %220, i32 %222
  %223 = ptrtoint ptr %arrayidx.i86.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store volatile i32 -1073722880, ptr %arrayidx.i86.i, align 4
  %224 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %ptr_mask.i.i, align 4
  %226 = load i32, ptr %wptr.i.i, align 4
  %and.i88.i = and i32 %226, %225
  store i32 %and.i88.i, ptr %wptr.i.i, align 4
  %227 = ptrtoint ptr %count_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %count_dw.i.i, align 4
  %dec.i89.i = add i32 %228, -1
  store i32 %dec.i89.i, ptr %count_dw.i.i, align 4
  %229 = ptrtoint ptr %ring_free_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %ring_free_dw.i.i, align 8
  %dec4.i91.i = add i32 %230, -1
  store i32 %dec4.i91.i, ptr %ring_free_dw.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i89.i)
  %cmp.i94.i = icmp slt i32 %dec.i89.i, 1
  br i1 %cmp.i94.i, label %if.then.i95.i, label %radeon_ring_write.exit92.i.radeon_ring_write.exit105.i_crit_edge

radeon_ring_write.exit92.i.radeon_ring_write.exit105.i_crit_edge: ; preds = %radeon_ring_write.exit92.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit105.i

if.then.i95.i:                                    ; preds = %radeon_ring_write.exit92.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit105.i

radeon_ring_write.exit105.i:                      ; preds = %if.then.i95.i, %radeon_ring_write.exit92.i.radeon_ring_write.exit105.i_crit_edge
  %231 = ptrtoint ptr %ring1.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %ring1.i.i, align 8
  %233 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %wptr.i.i, align 4
  %inc.i98.i = add i32 %234, 1
  store i32 %inc.i98.i, ptr %wptr.i.i, align 4
  %arrayidx.i99.i = getelementptr i32, ptr %232, i32 %234
  %235 = ptrtoint ptr %arrayidx.i99.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store volatile i32 536870912, ptr %arrayidx.i99.i, align 4
  %236 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %ptr_mask.i.i, align 4
  %238 = load i32, ptr %wptr.i.i, align 4
  %and.i101.i = and i32 %238, %237
  store i32 %and.i101.i, ptr %wptr.i.i, align 4
  %239 = ptrtoint ptr %count_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %count_dw.i.i, align 4
  %dec.i102.i = add i32 %240, -1
  store i32 %dec.i102.i, ptr %count_dw.i.i, align 4
  %241 = ptrtoint ptr %ring_free_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %ring_free_dw.i.i, align 8
  %dec4.i104.i = add i32 %242, -1
  store i32 %dec4.i104.i, ptr %ring_free_dw.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %216)
  %cmp340.not.i = icmp eq i32 %216, 0
  br i1 %cmp340.not.i, label %radeon_ring_write.exit105.i.for.end.i_crit_edge, label %radeon_ring_write.exit105.i.for.body.i_crit_edge

radeon_ring_write.exit105.i.for.body.i_crit_edge: ; preds = %radeon_ring_write.exit105.i
  br label %for.body.i

radeon_ring_write.exit105.i.for.end.i_crit_edge:  ; preds = %radeon_ring_write.exit105.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.ithread-pre-split:                       ; preds = %radeon_ring_write.exit118.i
  call void @__sanitizer_cov_trace_pc() #9
  %243 = ptrtoint ptr %count_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %.pr = load i32, ptr %count_dw.i.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.ithread-pre-split, %radeon_ring_write.exit105.i.for.body.i_crit_edge
  %244 = phi i32 [ %.pr, %for.body.ithread-pre-split ], [ %dec.i102.i, %radeon_ring_write.exit105.i.for.body.i_crit_edge ]
  %i.0341.i = phi i32 [ %inc.i, %for.body.ithread-pre-split ], [ 0, %radeon_ring_write.exit105.i.for.body.i_crit_edge ]
  %arrayidx6.i = getelementptr [0 x i32], ptr @cayman_default_state, i32 0, i32 %i.0341.i
  %245 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %arrayidx6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %244)
  %cmp.i107.i = icmp slt i32 %244, 1
  br i1 %cmp.i107.i, label %if.then.i108.i, label %for.body.i.radeon_ring_write.exit118.i_crit_edge

for.body.i.radeon_ring_write.exit118.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit118.i

if.then.i108.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit118.i

radeon_ring_write.exit118.i:                      ; preds = %if.then.i108.i, %for.body.i.radeon_ring_write.exit118.i_crit_edge
  %247 = ptrtoint ptr %ring1.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %ring1.i.i, align 8
  %249 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %wptr.i.i, align 4
  %inc.i111.i = add i32 %250, 1
  store i32 %inc.i111.i, ptr %wptr.i.i, align 4
  %arrayidx.i112.i = getelementptr i32, ptr %248, i32 %250
  %251 = ptrtoint ptr %arrayidx.i112.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store volatile i32 %246, ptr %arrayidx.i112.i, align 4
  %252 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %ptr_mask.i.i, align 4
  %254 = load i32, ptr %wptr.i.i, align 4
  %and.i114.i = and i32 %254, %253
  store i32 %and.i114.i, ptr %wptr.i.i, align 4
  %255 = ptrtoint ptr %count_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %count_dw.i.i, align 4
  %dec.i115.i = add i32 %256, -1
  store i32 %dec.i115.i, ptr %count_dw.i.i, align 4
  %257 = ptrtoint ptr %ring_free_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %ring_free_dw.i.i, align 8
  %dec4.i117.i = add i32 %258, -1
  store i32 %dec4.i117.i, ptr %ring_free_dw.i.i, align 8
  %inc.i = add nuw i32 %i.0341.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %216
  br i1 %exitcond.not.i, label %radeon_ring_write.exit118.i.for.end.i_crit_edge, label %for.body.ithread-pre-split

radeon_ring_write.exit118.i.for.end.i_crit_edge:  ; preds = %radeon_ring_write.exit118.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %radeon_ring_write.exit118.i.for.end.i_crit_edge, %radeon_ring_write.exit105.i.for.end.i_crit_edge
  %259 = phi i32 [ %dec.i102.i, %radeon_ring_write.exit105.i.for.end.i_crit_edge ], [ %dec.i115.i, %radeon_ring_write.exit118.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %259)
  %cmp.i120.i = icmp slt i32 %259, 1
  br i1 %cmp.i120.i, label %if.then.i121.i, label %for.end.i.radeon_ring_write.exit131.i_crit_edge

for.end.i.radeon_ring_write.exit131.i_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit131.i

if.then.i121.i:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit131.i

radeon_ring_write.exit131.i:                      ; preds = %if.then.i121.i, %for.end.i.radeon_ring_write.exit131.i_crit_edge
  %260 = ptrtoint ptr %ring1.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %ring1.i.i, align 8
  %262 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %wptr.i.i, align 4
  %inc.i124.i = add i32 %263, 1
  store i32 %inc.i124.i, ptr %wptr.i.i, align 4
  %arrayidx.i125.i = getelementptr i32, ptr %261, i32 %263
  %264 = ptrtoint ptr %arrayidx.i125.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store volatile i32 -1073722880, ptr %arrayidx.i125.i, align 4
  %265 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %ptr_mask.i.i, align 4
  %267 = load i32, ptr %wptr.i.i, align 4
  %and.i127.i = and i32 %267, %266
  store i32 %and.i127.i, ptr %wptr.i.i, align 4
  %268 = ptrtoint ptr %count_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %count_dw.i.i, align 4
  %dec.i128.i = add i32 %269, -1
  store i32 %dec.i128.i, ptr %count_dw.i.i, align 4
  %270 = ptrtoint ptr %ring_free_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %ring_free_dw.i.i, align 8
  %dec4.i130.i = add i32 %271, -1
  store i32 %dec4.i130.i, ptr %ring_free_dw.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i128.i)
  %cmp.i133.i = icmp slt i32 %dec.i128.i, 1
  br i1 %cmp.i133.i, label %if.then.i134.i, label %radeon_ring_write.exit131.i.radeon_ring_write.exit144.i_crit_edge

radeon_ring_write.exit131.i.radeon_ring_write.exit144.i_crit_edge: ; preds = %radeon_ring_write.exit131.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit144.i

if.then.i134.i:                                   ; preds = %radeon_ring_write.exit131.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit144.i

radeon_ring_write.exit144.i:                      ; preds = %if.then.i134.i, %radeon_ring_write.exit131.i.radeon_ring_write.exit144.i_crit_edge
  %272 = ptrtoint ptr %ring1.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %ring1.i.i, align 8
  %274 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %wptr.i.i, align 4
  %inc.i137.i = add i32 %275, 1
  store i32 %inc.i137.i, ptr %wptr.i.i, align 4
  %arrayidx.i138.i = getelementptr i32, ptr %273, i32 %275
  %276 = ptrtoint ptr %arrayidx.i138.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store volatile i32 805306368, ptr %arrayidx.i138.i, align 4
  %277 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %ptr_mask.i.i, align 4
  %279 = load i32, ptr %wptr.i.i, align 4
  %and.i140.i = and i32 %279, %278
  store i32 %and.i140.i, ptr %wptr.i.i, align 4
  %280 = ptrtoint ptr %count_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %count_dw.i.i, align 4
  %dec.i141.i = add i32 %281, -1
  store i32 %dec.i141.i, ptr %count_dw.i.i, align 4
  %282 = ptrtoint ptr %ring_free_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %ring_free_dw.i.i, align 8
  %dec4.i143.i = add i32 %283, -1
  store i32 %dec4.i143.i, ptr %ring_free_dw.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i141.i)
  %cmp.i146.i = icmp slt i32 %dec.i141.i, 1
  br i1 %cmp.i146.i, label %if.then.i147.i, label %radeon_ring_write.exit144.i.radeon_ring_write.exit157.i_crit_edge

radeon_ring_write.exit144.i.radeon_ring_write.exit157.i_crit_edge: ; preds = %radeon_ring_write.exit144.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit157.i

if.then.i147.i:                                   ; preds = %radeon_ring_write.exit144.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit157.i

radeon_ring_write.exit157.i:                      ; preds = %if.then.i147.i, %radeon_ring_write.exit144.i.radeon_ring_write.exit157.i_crit_edge
  %284 = ptrtoint ptr %ring1.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %ring1.i.i, align 8
  %286 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %wptr.i.i, align 4
  %inc.i150.i = add i32 %287, 1
  store i32 %inc.i150.i, ptr %wptr.i.i, align 4
  %arrayidx.i151.i = getelementptr i32, ptr %285, i32 %287
  %288 = ptrtoint ptr %arrayidx.i151.i to i32
  call void @__asan_store4_noabort(i32 %288)
  store volatile i32 -1073737216, ptr %arrayidx.i151.i, align 4
  %289 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %ptr_mask.i.i, align 4
  %291 = load i32, ptr %wptr.i.i, align 4
  %and.i153.i = and i32 %291, %290
  store i32 %and.i153.i, ptr %wptr.i.i, align 4
  %292 = ptrtoint ptr %count_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %count_dw.i.i, align 4
  %dec.i154.i = add i32 %293, -1
  store i32 %dec.i154.i, ptr %count_dw.i.i, align 4
  %294 = ptrtoint ptr %ring_free_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %ring_free_dw.i.i, align 8
  %dec4.i156.i = add i32 %295, -1
  store i32 %dec4.i156.i, ptr %ring_free_dw.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i154.i)
  %cmp.i159.i = icmp slt i32 %dec.i154.i, 1
  br i1 %cmp.i159.i, label %if.then.i160.i, label %radeon_ring_write.exit157.i.radeon_ring_write.exit170.i_crit_edge

radeon_ring_write.exit157.i.radeon_ring_write.exit170.i_crit_edge: ; preds = %radeon_ring_write.exit157.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit170.i

if.then.i160.i:                                   ; preds = %radeon_ring_write.exit157.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit170.i

radeon_ring_write.exit170.i:                      ; preds = %if.then.i160.i, %radeon_ring_write.exit157.i.radeon_ring_write.exit170.i_crit_edge
  %296 = ptrtoint ptr %ring1.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %ring1.i.i, align 8
  %298 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %wptr.i.i, align 4
  %inc.i163.i = add i32 %299, 1
  store i32 %inc.i163.i, ptr %wptr.i.i, align 4
  %arrayidx.i164.i = getelementptr i32, ptr %297, i32 %299
  %300 = ptrtoint ptr %arrayidx.i164.i to i32
  call void @__asan_store4_noabort(i32 %300)
  store volatile i32 0, ptr %arrayidx.i164.i, align 4
  %301 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %ptr_mask.i.i, align 4
  %303 = load i32, ptr %wptr.i.i, align 4
  %and.i166.i = and i32 %303, %302
  store i32 %and.i166.i, ptr %wptr.i.i, align 4
  %304 = ptrtoint ptr %count_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %count_dw.i.i, align 4
  %dec.i167.i = add i32 %305, -1
  store i32 %dec.i167.i, ptr %count_dw.i.i, align 4
  %306 = ptrtoint ptr %ring_free_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %ring_free_dw.i.i, align 8
  %dec4.i169.i = add i32 %307, -1
  store i32 %dec4.i169.i, ptr %ring_free_dw.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i167.i)
  %cmp.i172.i = icmp slt i32 %dec.i167.i, 1
  br i1 %cmp.i172.i, label %if.then.i173.i, label %radeon_ring_write.exit170.i.radeon_ring_write.exit183.i_crit_edge

radeon_ring_write.exit170.i.radeon_ring_write.exit183.i_crit_edge: ; preds = %radeon_ring_write.exit170.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit183.i

if.then.i173.i:                                   ; preds = %radeon_ring_write.exit170.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit183.i

radeon_ring_write.exit183.i:                      ; preds = %if.then.i173.i, %radeon_ring_write.exit170.i.radeon_ring_write.exit183.i_crit_edge
  %308 = ptrtoint ptr %ring1.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %ring1.i.i, align 8
  %310 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %wptr.i.i, align 4
  %inc.i176.i = add i32 %311, 1
  store i32 %inc.i176.i, ptr %wptr.i.i, align 4
  %arrayidx.i177.i = getelementptr i32, ptr %309, i32 %311
  %312 = ptrtoint ptr %arrayidx.i177.i to i32
  call void @__asan_store4_noabort(i32 %312)
  store volatile i32 -1073582336, ptr %arrayidx.i177.i, align 4
  %313 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %ptr_mask.i.i, align 4
  %315 = load i32, ptr %wptr.i.i, align 4
  %and.i179.i = and i32 %315, %314
  store i32 %and.i179.i, ptr %wptr.i.i, align 4
  %316 = ptrtoint ptr %count_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %count_dw.i.i, align 4
  %dec.i180.i = add i32 %317, -1
  store i32 %dec.i180.i, ptr %count_dw.i.i, align 4
  %318 = ptrtoint ptr %ring_free_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %ring_free_dw.i.i, align 8
  %dec4.i182.i = add i32 %319, -1
  store i32 %dec4.i182.i, ptr %ring_free_dw.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i180.i)
  %cmp.i185.i = icmp slt i32 %dec.i180.i, 1
  br i1 %cmp.i185.i, label %if.then.i186.i, label %radeon_ring_write.exit183.i.radeon_ring_write.exit196.i_crit_edge

radeon_ring_write.exit183.i.radeon_ring_write.exit196.i_crit_edge: ; preds = %radeon_ring_write.exit183.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit196.i

if.then.i186.i:                                   ; preds = %radeon_ring_write.exit183.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit196.i

radeon_ring_write.exit196.i:                      ; preds = %if.then.i186.i, %radeon_ring_write.exit183.i.radeon_ring_write.exit196.i_crit_edge
  %320 = ptrtoint ptr %ring1.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %ring1.i.i, align 8
  %322 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %wptr.i.i, align 4
  %inc.i189.i = add i32 %323, 1
  store i32 %inc.i189.i, ptr %wptr.i.i, align 4
  %arrayidx.i190.i = getelementptr i32, ptr %321, i32 %323
  %324 = ptrtoint ptr %arrayidx.i190.i to i32
  call void @__asan_store4_noabort(i32 %324)
  store volatile i32 0, ptr %arrayidx.i190.i, align 4
  %325 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %ptr_mask.i.i, align 4
  %327 = load i32, ptr %wptr.i.i, align 4
  %and.i192.i = and i32 %327, %326
  store i32 %and.i192.i, ptr %wptr.i.i, align 4
  %328 = ptrtoint ptr %count_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %count_dw.i.i, align 4
  %dec.i193.i = add i32 %329, -1
  store i32 %dec.i193.i, ptr %count_dw.i.i, align 4
  %330 = ptrtoint ptr %ring_free_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %ring_free_dw.i.i, align 8
  %dec4.i195.i = add i32 %331, -1
  store i32 %dec4.i195.i, ptr %ring_free_dw.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i193.i)
  %cmp.i198.i = icmp slt i32 %dec.i193.i, 1
  br i1 %cmp.i198.i, label %if.then.i199.i, label %radeon_ring_write.exit196.i.radeon_ring_write.exit209.i_crit_edge

radeon_ring_write.exit196.i.radeon_ring_write.exit209.i_crit_edge: ; preds = %radeon_ring_write.exit196.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit209.i

if.then.i199.i:                                   ; preds = %radeon_ring_write.exit196.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit209.i

radeon_ring_write.exit209.i:                      ; preds = %if.then.i199.i, %radeon_ring_write.exit196.i.radeon_ring_write.exit209.i_crit_edge
  %332 = ptrtoint ptr %ring1.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %ring1.i.i, align 8
  %334 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %wptr.i.i, align 4
  %inc.i202.i = add i32 %335, 1
  store i32 %inc.i202.i, ptr %wptr.i.i, align 4
  %arrayidx.i203.i = getelementptr i32, ptr %333, i32 %335
  %336 = ptrtoint ptr %arrayidx.i203.i to i32
  call void @__asan_store4_noabort(i32 %336)
  store volatile i32 0, ptr %arrayidx.i203.i, align 4
  %337 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %ptr_mask.i.i, align 4
  %339 = load i32, ptr %wptr.i.i, align 4
  %and.i205.i = and i32 %339, %338
  store i32 %and.i205.i, ptr %wptr.i.i, align 4
  %340 = ptrtoint ptr %count_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %count_dw.i.i, align 4
  %dec.i206.i = add i32 %341, -1
  store i32 %dec.i206.i, ptr %count_dw.i.i, align 4
  %342 = ptrtoint ptr %ring_free_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %ring_free_dw.i.i, align 8
  %dec4.i208.i = add i32 %343, -1
  store i32 %dec4.i208.i, ptr %ring_free_dw.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i206.i)
  %cmp.i211.i = icmp slt i32 %dec.i206.i, 1
  br i1 %cmp.i211.i, label %if.then.i212.i, label %radeon_ring_write.exit209.i.radeon_ring_write.exit222.i_crit_edge

radeon_ring_write.exit209.i.radeon_ring_write.exit222.i_crit_edge: ; preds = %radeon_ring_write.exit209.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit222.i

if.then.i212.i:                                   ; preds = %radeon_ring_write.exit209.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit222.i

radeon_ring_write.exit222.i:                      ; preds = %if.then.i212.i, %radeon_ring_write.exit209.i.radeon_ring_write.exit222.i_crit_edge
  %344 = ptrtoint ptr %ring1.i.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %ring1.i.i, align 8
  %346 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %wptr.i.i, align 4
  %inc.i215.i = add i32 %347, 1
  store i32 %inc.i215.i, ptr %wptr.i.i, align 4
  %arrayidx.i216.i = getelementptr i32, ptr %345, i32 %347
  %348 = ptrtoint ptr %arrayidx.i216.i to i32
  call void @__asan_store4_noabort(i32 %348)
  store volatile i32 0, ptr %arrayidx.i216.i, align 4
  %349 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %ptr_mask.i.i, align 4
  %351 = load i32, ptr %wptr.i.i, align 4
  %and.i218.i = and i32 %351, %350
  store i32 %and.i218.i, ptr %wptr.i.i, align 4
  %352 = ptrtoint ptr %count_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %count_dw.i.i, align 4
  %dec.i219.i = add i32 %353, -1
  store i32 %dec.i219.i, ptr %count_dw.i.i, align 4
  %354 = ptrtoint ptr %ring_free_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %ring_free_dw.i.i, align 8
  %dec4.i221.i = add i32 %355, -1
  store i32 %dec4.i221.i, ptr %ring_free_dw.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i219.i)
  %cmp.i224.i = icmp slt i32 %dec.i219.i, 1
  br i1 %cmp.i224.i, label %if.then.i225.i, label %radeon_ring_write.exit222.i.radeon_ring_write.exit235.i_crit_edge

radeon_ring_write.exit222.i.radeon_ring_write.exit235.i_crit_edge: ; preds = %radeon_ring_write.exit222.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit235.i

if.then.i225.i:                                   ; preds = %radeon_ring_write.exit222.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit235.i

radeon_ring_write.exit235.i:                      ; preds = %if.then.i225.i, %radeon_ring_write.exit222.i.radeon_ring_write.exit235.i_crit_edge
  %356 = ptrtoint ptr %ring1.i.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %ring1.i.i, align 8
  %358 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %wptr.i.i, align 4
  %inc.i228.i = add i32 %359, 1
  store i32 %inc.i228.i, ptr %wptr.i.i, align 4
  %arrayidx.i229.i = getelementptr i32, ptr %357, i32 %359
  %360 = ptrtoint ptr %arrayidx.i229.i to i32
  call void @__asan_store4_noabort(i32 %360)
  store volatile i32 -1073516800, ptr %arrayidx.i229.i, align 4
  %361 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %ptr_mask.i.i, align 4
  %363 = load i32, ptr %wptr.i.i, align 4
  %and.i231.i = and i32 %363, %362
  store i32 %and.i231.i, ptr %wptr.i.i, align 4
  %364 = ptrtoint ptr %count_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %count_dw.i.i, align 4
  %dec.i232.i = add i32 %365, -1
  store i32 %dec.i232.i, ptr %count_dw.i.i, align 4
  %366 = ptrtoint ptr %ring_free_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %ring_free_dw.i.i, align 8
  %dec4.i234.i = add i32 %367, -1
  store i32 %dec4.i234.i, ptr %ring_free_dw.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i232.i)
  %cmp.i237.i = icmp slt i32 %dec.i232.i, 1
  br i1 %cmp.i237.i, label %if.then.i238.i, label %radeon_ring_write.exit235.i.radeon_ring_write.exit248.i_crit_edge

radeon_ring_write.exit235.i.radeon_ring_write.exit248.i_crit_edge: ; preds = %radeon_ring_write.exit235.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit248.i

if.then.i238.i:                                   ; preds = %radeon_ring_write.exit235.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit248.i

radeon_ring_write.exit248.i:                      ; preds = %if.then.i238.i, %radeon_ring_write.exit235.i.radeon_ring_write.exit248.i_crit_edge
  %368 = ptrtoint ptr %ring1.i.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %ring1.i.i, align 8
  %370 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %wptr.i.i, align 4
  %inc.i241.i = add i32 %371, 1
  store i32 %inc.i241.i, ptr %wptr.i.i, align 4
  %arrayidx.i242.i = getelementptr i32, ptr %369, i32 %371
  %372 = ptrtoint ptr %arrayidx.i242.i to i32
  call void @__asan_store4_noabort(i32 %372)
  store volatile i32 3012, ptr %arrayidx.i242.i, align 4
  %373 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %ptr_mask.i.i, align 4
  %375 = load i32, ptr %wptr.i.i, align 4
  %and.i244.i = and i32 %375, %374
  store i32 %and.i244.i, ptr %wptr.i.i, align 4
  %376 = ptrtoint ptr %count_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %count_dw.i.i, align 4
  %dec.i245.i = add i32 %377, -1
  store i32 %dec.i245.i, ptr %count_dw.i.i, align 4
  %378 = ptrtoint ptr %ring_free_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %ring_free_dw.i.i, align 8
  %dec4.i247.i = add i32 %379, -1
  store i32 %dec4.i247.i, ptr %ring_free_dw.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i245.i)
  %cmp.i250.i = icmp slt i32 %dec.i245.i, 1
  br i1 %cmp.i250.i, label %if.then.i251.i, label %radeon_ring_write.exit248.i.radeon_ring_write.exit261.i_crit_edge

radeon_ring_write.exit248.i.radeon_ring_write.exit261.i_crit_edge: ; preds = %radeon_ring_write.exit248.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit261.i

if.then.i251.i:                                   ; preds = %radeon_ring_write.exit248.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit261.i

radeon_ring_write.exit261.i:                      ; preds = %if.then.i251.i, %radeon_ring_write.exit248.i.radeon_ring_write.exit261.i_crit_edge
  %380 = ptrtoint ptr %ring1.i.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %ring1.i.i, align 8
  %382 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %wptr.i.i, align 4
  %inc.i254.i = add i32 %383, 1
  store i32 %inc.i254.i, ptr %wptr.i.i, align 4
  %arrayidx.i255.i = getelementptr i32, ptr %381, i32 %383
  %384 = ptrtoint ptr %arrayidx.i255.i to i32
  call void @__asan_store4_noabort(i32 %384)
  store volatile i32 -1, ptr %arrayidx.i255.i, align 4
  %385 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %ptr_mask.i.i, align 4
  %387 = load i32, ptr %wptr.i.i, align 4
  %and.i257.i = and i32 %387, %386
  store i32 %and.i257.i, ptr %wptr.i.i, align 4
  %388 = ptrtoint ptr %count_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %count_dw.i.i, align 4
  %dec.i258.i = add i32 %389, -1
  store i32 %dec.i258.i, ptr %count_dw.i.i, align 4
  %390 = ptrtoint ptr %ring_free_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %ring_free_dw.i.i, align 8
  %dec4.i260.i = add i32 %391, -1
  store i32 %dec4.i260.i, ptr %ring_free_dw.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i258.i)
  %cmp.i263.i = icmp slt i32 %dec.i258.i, 1
  br i1 %cmp.i263.i, label %if.then.i264.i, label %radeon_ring_write.exit261.i.radeon_ring_write.exit274.i_crit_edge

radeon_ring_write.exit261.i.radeon_ring_write.exit274.i_crit_edge: ; preds = %radeon_ring_write.exit261.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit274.i

if.then.i264.i:                                   ; preds = %radeon_ring_write.exit261.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit274.i

radeon_ring_write.exit274.i:                      ; preds = %if.then.i264.i, %radeon_ring_write.exit261.i.radeon_ring_write.exit274.i_crit_edge
  %392 = ptrtoint ptr %ring1.i.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %ring1.i.i, align 8
  %394 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %wptr.i.i, align 4
  %inc.i267.i = add i32 %395, 1
  store i32 %inc.i267.i, ptr %wptr.i.i, align 4
  %arrayidx.i268.i = getelementptr i32, ptr %393, i32 %395
  %396 = ptrtoint ptr %arrayidx.i268.i to i32
  call void @__asan_store4_noabort(i32 %396)
  store volatile i32 -1, ptr %arrayidx.i268.i, align 4
  %397 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %ptr_mask.i.i, align 4
  %399 = load i32, ptr %wptr.i.i, align 4
  %and.i270.i = and i32 %399, %398
  store i32 %and.i270.i, ptr %wptr.i.i, align 4
  %400 = ptrtoint ptr %count_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %count_dw.i.i, align 4
  %dec.i271.i = add i32 %401, -1
  store i32 %dec.i271.i, ptr %count_dw.i.i, align 4
  %402 = ptrtoint ptr %ring_free_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %ring_free_dw.i.i, align 8
  %dec4.i273.i = add i32 %403, -1
  store i32 %dec4.i273.i, ptr %ring_free_dw.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i271.i)
  %cmp.i276.i = icmp slt i32 %dec.i271.i, 1
  br i1 %cmp.i276.i, label %if.then.i277.i, label %radeon_ring_write.exit274.i.radeon_ring_write.exit287.i_crit_edge

radeon_ring_write.exit274.i.radeon_ring_write.exit287.i_crit_edge: ; preds = %radeon_ring_write.exit274.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit287.i

if.then.i277.i:                                   ; preds = %radeon_ring_write.exit274.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit287.i

radeon_ring_write.exit287.i:                      ; preds = %if.then.i277.i, %radeon_ring_write.exit274.i.radeon_ring_write.exit287.i_crit_edge
  %404 = ptrtoint ptr %ring1.i.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %ring1.i.i, align 8
  %406 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %wptr.i.i, align 4
  %inc.i280.i = add i32 %407, 1
  store i32 %inc.i280.i, ptr %wptr.i.i, align 4
  %arrayidx.i281.i = getelementptr i32, ptr %405, i32 %407
  %408 = ptrtoint ptr %arrayidx.i281.i to i32
  call void @__asan_store4_noabort(i32 %408)
  store volatile i32 -1, ptr %arrayidx.i281.i, align 4
  %409 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %ptr_mask.i.i, align 4
  %411 = load i32, ptr %wptr.i.i, align 4
  %and.i283.i = and i32 %411, %410
  store i32 %and.i283.i, ptr %wptr.i.i, align 4
  %412 = ptrtoint ptr %count_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %count_dw.i.i, align 4
  %dec.i284.i = add i32 %413, -1
  store i32 %dec.i284.i, ptr %count_dw.i.i, align 4
  %414 = ptrtoint ptr %ring_free_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %ring_free_dw.i.i, align 8
  %dec4.i286.i = add i32 %415, -1
  store i32 %dec4.i286.i, ptr %ring_free_dw.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i284.i)
  %cmp.i289.i = icmp slt i32 %dec.i284.i, 1
  br i1 %cmp.i289.i, label %if.then.i290.i, label %radeon_ring_write.exit287.i.radeon_ring_write.exit300.i_crit_edge

radeon_ring_write.exit287.i.radeon_ring_write.exit300.i_crit_edge: ; preds = %radeon_ring_write.exit287.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit300.i

if.then.i290.i:                                   ; preds = %radeon_ring_write.exit287.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit300.i

radeon_ring_write.exit300.i:                      ; preds = %if.then.i290.i, %radeon_ring_write.exit287.i.radeon_ring_write.exit300.i_crit_edge
  %416 = ptrtoint ptr %ring1.i.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %ring1.i.i, align 8
  %418 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %wptr.i.i, align 4
  %inc.i293.i = add i32 %419, 1
  store i32 %inc.i293.i, ptr %wptr.i.i, align 4
  %arrayidx.i294.i = getelementptr i32, ptr %417, i32 %419
  %420 = ptrtoint ptr %arrayidx.i294.i to i32
  call void @__asan_store4_noabort(i32 %420)
  store volatile i32 -1073583872, ptr %arrayidx.i294.i, align 4
  %421 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %ptr_mask.i.i, align 4
  %423 = load i32, ptr %wptr.i.i, align 4
  %and.i296.i = and i32 %423, %422
  store i32 %and.i296.i, ptr %wptr.i.i, align 4
  %424 = ptrtoint ptr %count_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %count_dw.i.i, align 4
  %dec.i297.i = add i32 %425, -1
  store i32 %dec.i297.i, ptr %count_dw.i.i, align 4
  %426 = ptrtoint ptr %ring_free_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %ring_free_dw.i.i, align 8
  %dec4.i299.i = add i32 %427, -1
  store i32 %dec4.i299.i, ptr %ring_free_dw.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i297.i)
  %cmp.i302.i = icmp slt i32 %dec.i297.i, 1
  br i1 %cmp.i302.i, label %if.then.i303.i, label %radeon_ring_write.exit300.i.radeon_ring_write.exit313.i_crit_edge

radeon_ring_write.exit300.i.radeon_ring_write.exit313.i_crit_edge: ; preds = %radeon_ring_write.exit300.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit313.i

if.then.i303.i:                                   ; preds = %radeon_ring_write.exit300.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit313.i

radeon_ring_write.exit313.i:                      ; preds = %if.then.i303.i, %radeon_ring_write.exit300.i.radeon_ring_write.exit313.i_crit_edge
  %428 = ptrtoint ptr %ring1.i.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %ring1.i.i, align 8
  %430 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %wptr.i.i, align 4
  %inc.i306.i = add i32 %431, 1
  store i32 %inc.i306.i, ptr %wptr.i.i, align 4
  %arrayidx.i307.i = getelementptr i32, ptr %429, i32 %431
  %432 = ptrtoint ptr %arrayidx.i307.i to i32
  call void @__asan_store4_noabort(i32 %432)
  store volatile i32 790, ptr %arrayidx.i307.i, align 4
  %433 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %ptr_mask.i.i, align 4
  %435 = load i32, ptr %wptr.i.i, align 4
  %and.i309.i = and i32 %435, %434
  store i32 %and.i309.i, ptr %wptr.i.i, align 4
  %436 = ptrtoint ptr %count_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %count_dw.i.i, align 4
  %dec.i310.i = add i32 %437, -1
  store i32 %dec.i310.i, ptr %count_dw.i.i, align 4
  %438 = ptrtoint ptr %ring_free_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %ring_free_dw.i.i, align 8
  %dec4.i312.i = add i32 %439, -1
  store i32 %dec4.i312.i, ptr %ring_free_dw.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i310.i)
  %cmp.i315.i = icmp slt i32 %dec.i310.i, 1
  br i1 %cmp.i315.i, label %if.then.i316.i, label %radeon_ring_write.exit313.i.radeon_ring_write.exit326.i_crit_edge

radeon_ring_write.exit313.i.radeon_ring_write.exit326.i_crit_edge: ; preds = %radeon_ring_write.exit313.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit326.i

if.then.i316.i:                                   ; preds = %radeon_ring_write.exit313.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit326.i

radeon_ring_write.exit326.i:                      ; preds = %if.then.i316.i, %radeon_ring_write.exit313.i.radeon_ring_write.exit326.i_crit_edge
  %440 = ptrtoint ptr %ring1.i.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %ring1.i.i, align 8
  %442 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load i32, ptr %wptr.i.i, align 4
  %inc.i319.i = add i32 %443, 1
  store i32 %inc.i319.i, ptr %wptr.i.i, align 4
  %arrayidx.i320.i = getelementptr i32, ptr %441, i32 %443
  %444 = ptrtoint ptr %arrayidx.i320.i to i32
  call void @__asan_store4_noabort(i32 %444)
  store volatile i32 14, ptr %arrayidx.i320.i, align 4
  %445 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load i32, ptr %ptr_mask.i.i, align 4
  %447 = load i32, ptr %wptr.i.i, align 4
  %and.i322.i = and i32 %447, %446
  store i32 %and.i322.i, ptr %wptr.i.i, align 4
  %448 = ptrtoint ptr %count_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %count_dw.i.i, align 4
  %dec.i323.i = add i32 %449, -1
  store i32 %dec.i323.i, ptr %count_dw.i.i, align 4
  %450 = ptrtoint ptr %ring_free_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %ring_free_dw.i.i, align 8
  %dec4.i325.i = add i32 %451, -1
  store i32 %dec4.i325.i, ptr %ring_free_dw.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i323.i)
  %cmp.i328.i = icmp slt i32 %dec.i323.i, 1
  br i1 %cmp.i328.i, label %if.then.i329.i, label %radeon_ring_write.exit326.i.radeon_ring_write.exit339.i_crit_edge

radeon_ring_write.exit326.i.radeon_ring_write.exit339.i_crit_edge: ; preds = %radeon_ring_write.exit326.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit339.i

if.then.i329.i:                                   ; preds = %radeon_ring_write.exit326.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74) #7
  br label %radeon_ring_write.exit339.i

radeon_ring_write.exit339.i:                      ; preds = %if.then.i329.i, %radeon_ring_write.exit326.i.radeon_ring_write.exit339.i_crit_edge
  %452 = ptrtoint ptr %ring1.i.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %ring1.i.i, align 8
  %454 = ptrtoint ptr %wptr.i.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %wptr.i.i, align 4
  %inc.i332.i = add i32 %455, 1
  store i32 %inc.i332.i, ptr %wptr.i.i, align 4
  %arrayidx.i333.i = getelementptr i32, ptr %453, i32 %455
  %456 = ptrtoint ptr %arrayidx.i333.i to i32
  call void @__asan_store4_noabort(i32 %456)
  store volatile i32 16, ptr %arrayidx.i333.i, align 4
  %457 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load i32, ptr %ptr_mask.i.i, align 4
  %459 = load i32, ptr %wptr.i.i, align 4
  %and.i335.i = and i32 %459, %458
  store i32 %and.i335.i, ptr %wptr.i.i, align 4
  %460 = ptrtoint ptr %count_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load i32, ptr %count_dw.i.i, align 4
  %dec.i336.i = add i32 %461, -1
  store i32 %dec.i336.i, ptr %count_dw.i.i, align 4
  %462 = ptrtoint ptr %ring_free_dw.i.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load i32, ptr %ring_free_dw.i.i, align 8
  %dec4.i338.i = add i32 %463, -1
  store i32 %dec4.i338.i, ptr %ring_free_dw.i.i, align 8
  tail call void @radeon_ring_unlock_commit(ptr noundef %rdev, ptr noundef %ring1.i, i1 noundef zeroext false) #7
  br label %cayman_cp_start.exit

cayman_cp_start.exit:                             ; preds = %radeon_ring_write.exit339.i, %if.then4.i, %if.then.i327
  %ready = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 0, i32 17
  %464 = ptrtoint ptr %ready to i32
  call void @__asan_store1_noabort(i32 %464)
  store i8 1, ptr %ready, align 8
  %ready104 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 1, i32 17
  %465 = ptrtoint ptr %ready104 to i32
  call void @__asan_store1_noabort(i32 %465)
  store i8 0, ptr %ready104, align 8
  %ready107 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 2, i32 17
  %466 = ptrtoint ptr %ready107 to i32
  call void @__asan_store1_noabort(i32 %466)
  store i8 0, ptr %ready107, align 8
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %467 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %asic, align 8
  %ring108 = getelementptr inbounds %struct.radeon_asic, ptr %468, i32 0, i32 14
  %469 = ptrtoint ptr %ring108 to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %ring108, align 4
  %ring_test = getelementptr inbounds %struct.radeon_asic_ring, ptr %470, i32 0, i32 10
  %471 = ptrtoint ptr %ring_test to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %ring_test, align 4
  %call112 = tail call i32 %472(ptr noundef %rdev, ptr noundef %ring1.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.end, label %if.then

if.then:                                          ; preds = %cayman_cp_start.exit
  call void @__sanitizer_cov_trace_pc() #9
  %473 = ptrtoint ptr %ready to i32
  call void @__asan_store1_noabort(i32 %473)
  store i8 0, ptr %ready, align 8
  %474 = ptrtoint ptr %ready104 to i32
  call void @__asan_store1_noabort(i32 %474)
  store i8 0, ptr %ready104, align 8
  %475 = ptrtoint ptr %ready107 to i32
  call void @__asan_store1_noabort(i32 %475)
  store i8 0, ptr %ready107, align 8
  br label %cleanup

if.end:                                           ; preds = %cayman_cp_start.exit
  %476 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %asic, align 8
  %copy_ring_index = getelementptr inbounds %struct.radeon_asic, ptr %477, i32 0, i32 17, i32 5
  %478 = ptrtoint ptr %copy_ring_index to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load i32, ptr %copy_ring_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %479)
  %cmp124 = icmp eq i32 %479, 0
  br i1 %cmp124, label %if.then126, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then126:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %real_vram_size = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 11
  %480 = ptrtoint ptr %real_vram_size to i32
  call void @__asan_load8_noabort(i32 %480)
  %481 = load i64, ptr %real_vram_size, align 8
  tail call void @radeon_ttm_set_active_vram_size(ptr noundef %rdev, i64 noundef %481) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then126, %if.end.cleanup_crit_edge, %if.then
  ret i32 %call112
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cayman_dma_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cayman_uvd_resume(ptr noundef %rdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %has_uvd = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 93
  %0 = ptrtoint ptr %has_uvd to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %has_uvd, align 4, !range !380
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ring_size = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 5, i32 9
  %2 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ring_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 5
  %call = tail call i32 @radeon_ring_init(ptr noundef %rdev, ptr noundef %arrayidx, i32 noundef %3, i32 noundef 0, i32 noundef 15359) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.145, i32 noundef %call) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @uvd_v1_0_init(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %do.end14

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.148, i32 noundef %call9) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %if.end8.cleanup_crit_edge, %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cayman_vce_resume(ptr noundef %rdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %has_vce = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 94
  %0 = ptrtoint ptr %has_vce to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %has_vce, align 1, !range !380
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ring_size = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 6, i32 9
  %2 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ring_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 6
  %call = tail call i32 @radeon_ring_init(ptr noundef %rdev, ptr noundef %arrayidx, i32 noundef %3, i32 noundef 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.150, i32 noundef %call) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %arrayidx10 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 7
  %ring_size11 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 7, i32 9
  %6 = ptrtoint ptr %ring_size11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ring_size11, align 4
  %call12 = tail call i32 @radeon_ring_init(ptr noundef %rdev, ptr noundef %arrayidx10, i32 noundef %7, i32 noundef 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end19, label %do.end17

do.end17:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.150, i32 noundef %call12) #10
  br label %cleanup

if.end19:                                         ; preds = %if.end8
  %call20 = tail call i32 @vce_v1_0_init(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end19.cleanup_crit_edge, label %do.end25

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.155, i32 noundef %call20) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %if.end19.cleanup_crit_edge, %do.end17, %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_ib_pool_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_vm_manager_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_audio_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_gart_table_vram_pin(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @evergreen_fix_pci_max_read_req_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r6xx_remap_render_backend(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eg_cg_rreg(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @eg_cg_wreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvd_v2_2_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_vce_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vce_v1_0_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ttm_set_active_vram_size(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_ring_lock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ring_unlock_commit(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvd_v1_0_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vce_v1_0_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_gart_table_vram_unpin(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_uvd_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_vce_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ring_fini(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_scratch_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_gart_table_vram_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_gart_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 177)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 177)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !59, !60, !61, !62, !64, !66, !67, !68, !70, !72, !73, !75, !77, !78, !79, !81, !83, !84, !85, !87, !89, !90, !91, !93, !94, !96, !97, !98, !100, !102, !104, !105, !106, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !121, !122, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !166, !167, !168, !169, !170, !172, !174, !176, !178, !180, !182, !183, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !200, !201, !202, !204, !205, !206, !207, !209, !210, !211, !213, !214, !215, !217, !219, !221, !223, !225, !227, !229, !231, !232, !233, !234, !236, !237, !239, !240, !242, !243, !244, !246, !247, !249, !251, !252, !253, !255, !256, !257, !259, !260, !261, !262, !264, !265, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !297, !298, !299, !301, !302, !303, !305, !306, !307, !308, !310, !311, !313, !314, !315, !317, !318, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !338, !339, !340, !342, !343, !344, !346, !347, !348, !349, !351, !352, !354, !355, !356, !358, !359, !360, !361, !363, !364, !365}
!llvm.module.flags = !{!366, !367, !368, !369, !370, !371, !372, !373}
!llvm.ident = !{!374}

!0 = !{ptr @__UNIQUE_ID_firmware324, !1, !"__UNIQUE_ID_firmware324", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 196, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware325, !3, !"__UNIQUE_ID_firmware325", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 197, i32 1}
!4 = !{ptr @__UNIQUE_ID_firmware326, !5, !"__UNIQUE_ID_firmware326", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 198, i32 1}
!6 = !{ptr @__UNIQUE_ID_firmware327, !7, !"__UNIQUE_ID_firmware327", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 199, i32 1}
!8 = !{ptr @__UNIQUE_ID_firmware328, !9, !"__UNIQUE_ID_firmware328", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 200, i32 1}
!10 = !{ptr @__UNIQUE_ID_firmware329, !11, !"__UNIQUE_ID_firmware329", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 201, i32 1}
!12 = !{ptr @__UNIQUE_ID_firmware330, !13, !"__UNIQUE_ID_firmware330", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 202, i32 1}
!14 = !{ptr @__UNIQUE_ID_firmware331, !15, !"__UNIQUE_ID_firmware331", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 203, i32 1}
!16 = !{ptr @__UNIQUE_ID_firmware332, !17, !"__UNIQUE_ID_firmware332", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 204, i32 1}
!18 = !{ptr @__UNIQUE_ID_firmware333, !19, !"__UNIQUE_ID_firmware333", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 205, i32 1}
!20 = !{ptr @__UNIQUE_ID_firmware334, !21, !"__UNIQUE_ID_firmware334", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 206, i32 1}
!22 = !{ptr @__UNIQUE_ID_firmware335, !23, !"__UNIQUE_ID_firmware335", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 207, i32 1}
!24 = !{ptr @__UNIQUE_ID_firmware336, !25, !"__UNIQUE_ID_firmware336", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 208, i32 1}
!26 = !{ptr @__UNIQUE_ID_firmware337, !27, !"__UNIQUE_ID_firmware337", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 209, i32 1}
!28 = !{ptr @__UNIQUE_ID_firmware338, !29, !"__UNIQUE_ID_firmware338", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 210, i32 1}
!30 = !{ptr @__UNIQUE_ID_firmware339, !31, !"__UNIQUE_ID_firmware339", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 211, i32 1}
!32 = !{ptr @__UNIQUE_ID_firmware340, !33, !"__UNIQUE_ID_firmware340", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 212, i32 1}
!34 = !{ptr @__UNIQUE_ID_firmware341, !35, !"__UNIQUE_ID_firmware341", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 213, i32 1}
!36 = !{ptr @__UNIQUE_ID_firmware342, !37, !"__UNIQUE_ID_firmware342", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 214, i32 1}
!38 = !{ptr @__UNIQUE_ID_firmware343, !39, !"__UNIQUE_ID_firmware343", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 215, i32 1}
!40 = !{ptr @__UNIQUE_ID_firmware344, !41, !"__UNIQUE_ID_firmware344", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 216, i32 1}
!42 = !{ptr @.str, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 709, i32 2}
!44 = !{ptr @.str.1, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 713, i32 15}
!46 = !{ptr @.str.2, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 714, i32 19}
!48 = !{ptr @.str.3, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 722, i32 15}
!50 = !{ptr @.str.4, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 731, i32 15}
!52 = !{ptr @.str.5, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 740, i32 15}
!54 = !{ptr @.str.6, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 749, i32 15}
!56 = !{ptr @.str.7, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 760, i32 2}
!58 = !{ptr @.str.8, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.9, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @ni_init_microcode._entry, !57, !"_entry", i1 false, i1 false}
!61 = !{ptr @ni_init_microcode._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.10, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 762, i32 37}
!64 = !{ptr @.str.12, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 767, i32 3}
!66 = !{ptr @ni_init_microcode._entry.11, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @ni_init_microcode._entry_ptr.13, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.14, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 773, i32 37}
!70 = !{ptr @ni_init_microcode._entry.15, !71, !"_entry", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 778, i32 3}
!72 = !{ptr @ni_init_microcode._entry_ptr.16, !71, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.17, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 783, i32 37}
!75 = !{ptr @.str.19, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 788, i32 3}
!77 = !{ptr @ni_init_microcode._entry.18, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @ni_init_microcode._entry_ptr.20, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.21, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 795, i32 38}
!81 = !{ptr @.str.23, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 800, i32 4}
!83 = !{ptr @ni_init_microcode._entry.22, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @ni_init_microcode._entry_ptr.24, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.25, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 807, i32 38}
!87 = !{ptr @.str.27, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 810, i32 4}
!89 = !{ptr @ni_init_microcode._entry.26, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @ni_init_microcode._entry_ptr.28, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @ni_init_microcode._entry.29, !92, !"_entry", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 815, i32 4}
!93 = !{ptr @ni_init_microcode._entry_ptr.30, !92, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.32, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 824, i32 4}
!96 = !{ptr @ni_init_microcode._entry.31, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @ni_init_microcode._entry_ptr.33, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.34, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 1804, i32 3}
!100 = !{ptr @.str.35, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 2311, i32 3}
!102 = !{ptr @.str.36, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 2353, i32 3}
!104 = !{ptr @.str.37, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.38, !103, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.39, !103, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @cayman_init._entry, !103, !"_entry", i1 false, i1 false}
!108 = !{ptr @cayman_init._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.41, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 2363, i32 4}
!111 = !{ptr @cayman_init._entry.40, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @cayman_init._entry_ptr.42, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.44, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 2366, i32 3}
!115 = !{ptr @cayman_init._entry.43, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @cayman_init._entry_ptr.45, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.46, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 2392, i32 5}
!119 = !{ptr @.str.48, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 2433, i32 3}
!121 = !{ptr @cayman_init._entry.47, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @cayman_init._entry_ptr.49, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.50, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 2455, i32 3}
!125 = !{ptr @.str.51, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 2535, i32 11}
!127 = !{ptr @.str.52, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 2545, i32 11}
!129 = !{ptr @.str.53, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 2555, i32 11}
!131 = !{ptr @.str.54, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 2565, i32 11}
!133 = !{ptr @.str.55, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 2575, i32 11}
!135 = !{ptr @.str.56, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 2585, i32 11}
!137 = !{ptr @.str.57, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 2595, i32 11}
!139 = !{ptr @.str.58, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 2605, i32 11}
!141 = !{ptr @.str.59, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 2615, i32 11}
!143 = !{ptr @.str.60, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 2625, i32 11}
!145 = !{ptr @.str.61, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 2635, i32 11}
!147 = !{ptr @.str.62, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 2638, i32 11}
!149 = !{ptr @.str.63, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 2642, i32 11}
!151 = !{ptr @.str.64, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 2645, i32 11}
!153 = !{ptr @.str.65, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 2648, i32 11}
!155 = !{ptr @.str.66, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 2651, i32 11}
!157 = !{ptr @.str.67, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 2654, i32 11}
!159 = !{ptr @.str.68, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 2657, i32 11}
!161 = !{ptr @.str.69, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 2660, i32 11}
!163 = !{ptr @.str.70, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 2664, i32 2}
!165 = !{ptr @.str.71, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @cayman_vm_decode_fault._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @cayman_vm_decode_fault._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.72, !164, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.73, !164, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @barts_io_mc_regs, !171, !"barts_io_mc_regs", i1 false, i1 false}
!171 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 496, i32 18}
!172 = !{ptr @turks_io_mc_regs, !173, !"turks_io_mc_regs", i1 false, i1 false}
!173 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 528, i32 18}
!174 = !{ptr @caicos_io_mc_regs, !175, !"caicos_io_mc_regs", i1 false, i1 false}
!175 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 560, i32 18}
!176 = !{ptr @cayman_io_mc_regs, !177, !"cayman_io_mc_regs", i1 false, i1 false}
!177 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 592, i32 18}
!178 = !{ptr @.str.74, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/gpu/drm/radeon/radeon.h", i32 2721, i32 3}
!180 = !{ptr @.str.75, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 1820, i32 2}
!182 = !{ptr @.str.76, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.77, !181, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @cayman_gpu_soft_reset._entry, !181, !"_entry", i1 false, i1 false}
!185 = !{ptr @cayman_gpu_soft_reset._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.79, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 1823, i32 2}
!188 = !{ptr @cayman_gpu_soft_reset._entry.78, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @cayman_gpu_soft_reset._entry_ptr.80, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.82, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 1825, i32 2}
!192 = !{ptr @cayman_gpu_soft_reset._entry.81, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @cayman_gpu_soft_reset._entry_ptr.83, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.85, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 1827, i32 2}
!196 = !{ptr @cayman_gpu_soft_reset._entry.84, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @cayman_gpu_soft_reset._entry_ptr.86, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.88, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 1829, i32 2}
!200 = !{ptr @cayman_gpu_soft_reset._entry.87, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @cayman_gpu_soft_reset._entry_ptr.89, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.91, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 1853, i32 3}
!204 = !{ptr @.str.92, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @cayman_gpu_soft_reset._entry.90, !203, !"_entry", i1 false, i1 false}
!206 = !{ptr @cayman_gpu_soft_reset._entry_ptr.93, !203, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.95, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 1909, i32 3}
!209 = !{ptr @cayman_gpu_soft_reset._entry.94, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @cayman_gpu_soft_reset._entry_ptr.96, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.98, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 1923, i32 3}
!213 = !{ptr @cayman_gpu_soft_reset._entry.97, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @cayman_gpu_soft_reset._entry_ptr.99, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @cayman_golden_registers, !216, !"cayman_golden_registers", i1 false, i1 false}
!216 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 229, i32 18}
!217 = !{ptr @cayman_golden_registers2, !218, !"cayman_golden_registers2", i1 false, i1 false}
!218 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 219, i32 18}
!219 = !{ptr @dvst_golden_registers, !220, !"dvst_golden_registers", i1 false, i1 false}
!220 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 278, i32 18}
!221 = !{ptr @dvst_golden_registers2, !222, !"dvst_golden_registers2", i1 false, i1 false}
!222 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 270, i32 18}
!223 = !{ptr @scrapper_golden_registers, !224, !"scrapper_golden_registers", i1 false, i1 false}
!224 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 336, i32 18}
!225 = !{ptr @.str.100, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 2165, i32 4}
!227 = !{ptr @.str.101, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 2183, i32 4}
!229 = !{ptr @.str.102, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 2195, i32 3}
!231 = !{ptr @.str.103, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @cayman_startup._entry, !230, !"_entry", i1 false, i1 false}
!233 = !{ptr @cayman_startup._entry_ptr, !230, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @cayman_startup._entry.104, !235, !"_entry", i1 false, i1 false}
!235 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 2204, i32 3}
!236 = !{ptr @cayman_startup._entry_ptr.105, !235, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @cayman_startup._entry.106, !238, !"_entry", i1 false, i1 false}
!238 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 2210, i32 3}
!239 = !{ptr @cayman_startup._entry_ptr.107, !238, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.109, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 2216, i32 3}
!242 = !{ptr @cayman_startup._entry.108, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @cayman_startup._entry_ptr.110, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @cayman_startup._entry.111, !245, !"_entry", i1 false, i1 false}
!245 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 2222, i32 3}
!246 = !{ptr @cayman_startup._entry_ptr.112, !245, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.113, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 2235, i32 3}
!249 = !{ptr @.str.115, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 2274, i32 3}
!251 = !{ptr @cayman_startup._entry.114, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @cayman_startup._entry_ptr.116, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.118, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 2280, i32 3}
!255 = !{ptr @cayman_startup._entry.117, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @cayman_startup._entry_ptr.119, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.120, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 1266, i32 3}
!259 = !{ptr @.str.121, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @cayman_pcie_gart_enable._entry, !258, !"_entry", i1 false, i1 false}
!261 = !{ptr @cayman_pcie_gart_enable._entry_ptr, !258, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.123, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 1338, i32 2}
!264 = !{ptr @cayman_pcie_gart_enable._entry.122, !263, !"_entry", i1 false, i1 false}
!265 = !{ptr @cayman_pcie_gart_enable._entry_ptr.124, !263, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @tn_rlc_save_restore_register_list, !267, !"tn_rlc_save_restore_register_list", i1 false, i1 false}
!267 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 69, i32 18}
!268 = !{ptr @cayman_cs_data, !269, !"cayman_cs_data", i1 false, i1 false}
!269 = !{!"../drivers/gpu/drm/radeon/clearstate_cayman.h", i32 1078, i32 36}
!270 = !{ptr @SECT_CONTEXT_defs, !271, !"SECT_CONTEXT_defs", i1 false, i1 false}
!271 = !{!"../drivers/gpu/drm/radeon/clearstate_cayman.h", i32 1046, i32 35}
!272 = !{ptr @SECT_CONTEXT_def_1, !273, !"SECT_CONTEXT_def_1", i1 false, i1 false}
!273 = !{!"../drivers/gpu/drm/radeon/clearstate_cayman.h", i32 26, i32 18}
!274 = !{ptr @SECT_CONTEXT_def_2, !275, !"SECT_CONTEXT_def_2", i1 false, i1 false}
!275 = !{!"../drivers/gpu/drm/radeon/clearstate_cayman.h", i32 517, i32 18}
!276 = !{ptr @SECT_CONTEXT_def_3, !277, !"SECT_CONTEXT_def_3", i1 false, i1 false}
!277 = !{!"../drivers/gpu/drm/radeon/clearstate_cayman.h", i32 526, i32 18}
!278 = !{ptr @SECT_CONTEXT_def_4, !279, !"SECT_CONTEXT_def_4", i1 false, i1 false}
!279 = !{!"../drivers/gpu/drm/radeon/clearstate_cayman.h", i32 584, i32 18}
!280 = !{ptr @SECT_CONTEXT_def_5, !281, !"SECT_CONTEXT_def_5", i1 false, i1 false}
!281 = !{!"../drivers/gpu/drm/radeon/clearstate_cayman.h", i32 686, i32 18}
!282 = !{ptr @SECT_CONTEXT_def_6, !283, !"SECT_CONTEXT_def_6", i1 false, i1 false}
!283 = !{!"../drivers/gpu/drm/radeon/clearstate_cayman.h", i32 694, i32 18}
!284 = !{ptr @SECT_CONTEXT_def_7, !285, !"SECT_CONTEXT_def_7", i1 false, i1 false}
!285 = !{!"../drivers/gpu/drm/radeon/clearstate_cayman.h", i32 753, i32 18}
!286 = !{ptr @SECT_CLEAR_defs, !287, !"SECT_CLEAR_defs", i1 false, i1 false}
!287 = !{!"../drivers/gpu/drm/radeon/clearstate_cayman.h", i32 1063, i32 35}
!288 = !{ptr @SECT_CLEAR_def_1, !289, !"SECT_CLEAR_def_1", i1 false, i1 false}
!289 = !{!"../drivers/gpu/drm/radeon/clearstate_cayman.h", i32 1057, i32 18}
!290 = !{ptr @SECT_CTRLCONST_defs, !291, !"SECT_CTRLCONST_defs", i1 false, i1 false}
!291 = !{!"../drivers/gpu/drm/radeon/clearstate_cayman.h", i32 1073, i32 35}
!292 = !{ptr @SECT_CTRLCONST_def_1, !293, !"SECT_CTRLCONST_def_1", i1 false, i1 false}
!293 = !{!"../drivers/gpu/drm/radeon/clearstate_cayman.h", i32 1068, i32 18}
!294 = !{ptr @.str.129, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 2023, i32 3}
!296 = !{ptr @.str.130, !295, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @cayman_uvd_start._entry, !295, !"_entry", i1 false, i1 false}
!298 = !{ptr @cayman_uvd_start._entry_ptr, !295, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.132, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 2028, i32 3}
!301 = !{ptr @cayman_uvd_start._entry.131, !300, !"_entry", i1 false, i1 false}
!302 = !{ptr @cayman_uvd_start._entry_ptr.133, !300, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.134, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 2093, i32 3}
!305 = !{ptr @.str.135, !304, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @cayman_vce_start._entry, !304, !"_entry", i1 false, i1 false}
!307 = !{ptr @cayman_vce_start._entry_ptr, !304, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @cayman_vce_start._entry.136, !309, !"_entry", i1 false, i1 false}
!309 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 2098, i32 3}
!310 = !{ptr @cayman_vce_start._entry_ptr.137, !309, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.139, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 2103, i32 3}
!313 = !{ptr @cayman_vce_start._entry.138, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @cayman_vce_start._entry_ptr.140, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.142, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 2108, i32 3}
!317 = !{ptr @cayman_vce_start._entry.141, !316, !"_entry", i1 false, i1 false}
!318 = !{ptr @cayman_vce_start._entry_ptr.143, !316, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @cayman_cp_resume.ridx, !320, !"ridx", i1 false, i1 false}
!320 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 1613, i32 19}
!321 = !{ptr @cayman_cp_resume.cp_rb_cntl, !322, !"cp_rb_cntl", i1 false, i1 false}
!322 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 1618, i32 24}
!323 = !{ptr @cayman_cp_resume.cp_rb_rptr_addr, !324, !"cp_rb_rptr_addr", i1 false, i1 false}
!324 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 1623, i32 24}
!325 = !{ptr @cayman_cp_resume.cp_rb_rptr_addr_hi, !326, !"cp_rb_rptr_addr_hi", i1 false, i1 false}
!326 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 1628, i32 24}
!327 = distinct !{null, !328, !"cp_rb_base", i1 false, i1 false}
!328 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 1633, i32 24}
!329 = !{ptr @cayman_cp_resume.cp_rb_rptr, !330, !"cp_rb_rptr", i1 false, i1 false}
!330 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 1638, i32 24}
!331 = !{ptr @cayman_cp_resume.cp_rb_wptr, !332, !"cp_rb_wptr", i1 false, i1 false}
!332 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 1643, i32 24}
!333 = !{ptr @.str.144, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 1544, i32 3}
!335 = !{ptr @.str.145, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 2048, i32 3}
!337 = !{ptr @.str.146, !336, !"<string literal>", i1 false, i1 false}
!338 = !{ptr @cayman_uvd_resume._entry, !336, !"_entry", i1 false, i1 false}
!339 = !{ptr @cayman_uvd_resume._entry_ptr, !336, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.148, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 2053, i32 3}
!342 = !{ptr @cayman_uvd_resume._entry.147, !341, !"_entry", i1 false, i1 false}
!343 = !{ptr @cayman_uvd_resume._entry_ptr.149, !341, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @.str.150, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 2129, i32 3}
!346 = !{ptr @.str.151, !345, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @cayman_vce_resume._entry, !345, !"_entry", i1 false, i1 false}
!348 = !{ptr @cayman_vce_resume._entry_ptr, !345, !"_entry_ptr", i1 false, i1 false}
!349 = !{ptr @cayman_vce_resume._entry.152, !350, !"_entry", i1 false, i1 false}
!350 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 2135, i32 3}
!351 = !{ptr @cayman_vce_resume._entry_ptr.153, !350, !"_entry_ptr", i1 false, i1 false}
!352 = !{ptr @.str.155, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 2140, i32 3}
!354 = !{ptr @cayman_vce_resume._entry.154, !353, !"_entry", i1 false, i1 false}
!355 = !{ptr @cayman_vce_resume._entry_ptr.156, !353, !"_entry_ptr", i1 false, i1 false}
!356 = !{ptr @.str.157, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 2000, i32 3}
!358 = !{ptr @.str.158, !357, !"<string literal>", i1 false, i1 false}
!359 = !{ptr @cayman_uvd_init._entry, !357, !"_entry", i1 false, i1 false}
!360 = !{ptr @cayman_uvd_init._entry_ptr, !357, !"_entry_ptr", i1 false, i1 false}
!361 = !{ptr @.str.159, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/gpu/drm/radeon/ni.c", i32 2068, i32 3}
!363 = !{ptr @.str.160, !362, !"<string literal>", i1 false, i1 false}
!364 = !{ptr @cayman_vce_init._entry, !362, !"_entry", i1 false, i1 false}
!365 = !{ptr @cayman_vce_init._entry_ptr, !362, !"_entry_ptr", i1 false, i1 false}
!366 = !{i32 1, !"wchar_size", i32 2}
!367 = !{i32 1, !"min_enum_size", i32 4}
!368 = !{i32 8, !"branch-target-enforcement", i32 0}
!369 = !{i32 8, !"sign-return-address", i32 0}
!370 = !{i32 8, !"sign-return-address-all", i32 0}
!371 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!372 = !{i32 7, !"uwtable", i32 1}
!373 = !{i32 7, !"frame-pointer", i32 2}
!374 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!375 = !{i64 2158466627}
!376 = !{i64 5053812}
!377 = !{i64 5054230}
!378 = !{i64 2158466220}
!379 = !{i64 2158657655, i64 2158658147, i64 2158657692, i64 2158657748, i64 2158657782, i64 2158657806, i64 2158657847, i64 2158657868, i64 2158657896, i64 2158657930}
!380 = !{i8 0, i8 2}
!381 = !{i32 0, i32 33}
