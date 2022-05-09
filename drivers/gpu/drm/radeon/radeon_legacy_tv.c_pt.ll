; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/radeon_legacy_tv.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/radeon_legacy_tv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.radeon_tv_mode_constants = type { i16, i16, i32, i16, i16, i16, i16, i16, i32, i16, i8, i8, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.87, ptr, i32, ptr, i8, i32 }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.anon.87 = type { i32, ptr }
%struct.radeon_encoder = type { %struct.drm_encoder, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_display_mode, ptr, i32, i8, i16, ptr, i32, i8, i32, i8 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.radeon_crtc = type { %struct.drm_crtc, i32, i8, i8, i8, i32, ptr, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, %union.dfixed, %union.dfixed, %struct.drm_display_mode, i32, ptr, ptr, i32, %struct.radeon_atom_ss, i8, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, %struct.drm_display_mode, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%union.dfixed = type { i32 }
%struct.radeon_atom_ss = type { i16, i16, i8, i16, i8, i8, i8, i16, i16 }
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
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.90] }
%struct.anon.90 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.radeon_fence_driver = type { ptr, i32, i64, ptr, [8 x i64], %struct.atomic64_t, i8, i8, %struct.delayed_work }
%struct.radeon_ring = type { ptr, ptr, ptr, i32, i32, i64, ptr, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic64_t, i64, i32, i32, i8, i32, i32, i64, i64, i32, i32, i32, ptr, i32, i32 }
%struct.radeon_sa_manager = type { %struct.wait_queue_head, ptr, ptr, [8 x %struct.list_head], %struct.list_head, i32, i64, ptr, i32, i32 }
%struct.radeon_irq = type { i8, %struct.spinlock, [8 x %struct.atomic_t], [6 x i8], [6 x %struct.atomic_t], %struct.wait_queue_head, [7 x i8], [7 x i8], %union.radeon_irq_stat_regs, i8 }
%union.radeon_irq_stat_regs = type { %struct.evergreen_irq_stat_regs }
%struct.evergreen_irq_stat_regs = type { [6 x i32], [6 x i32], [6 x i32] }
%struct.radeon_gem = type { %struct.mutex, %struct.list_head }
%struct.radeon_pm = type { %struct.mutex, %struct.rw_semaphore, i32, i32, i32, i8, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, ptr, i32, %struct.delayed_work, i32, i32, i32, i8, i8, i32, i32, [7 x %struct.radeon_pm_profile], i32, ptr, i8, i8, i8, i8, i8, i8, %struct.radeon_dpm }
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
%struct.radeon_encoder_tv_dac = type { i32, i32, i32, i32, i32, i32, i32, i8, i32, %struct.radeon_tv_regs }
%struct.radeon_tv_regs = type { i32, i32, i32, i32, i32, [32 x i16], [32 x i16] }

@SLOPE_value = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 2, i32 2, i32 4, i32 8], [44 x i8] zeroinitializer }, align 32
@YCOEF_EN_value = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 1, i32 0, i32 1, i32 0], [44 x i8] zeroinitializer }, align 32
@YCOEF_value = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 2, i32 2, i32 0, i32 4, i32 0], [44 x i8] zeroinitializer }, align 32
@available_tv_modes = internal constant { [4 x %struct.radeon_tv_mode_constants], [32 x i8] } { [4 x %struct.radeon_tv_mode_constants] [%struct.radeon_tv_mode_constants { i16 800, i16 600, i32 0, i16 990, i16 740, i16 813, i16 824, i16 632, i32 625592, i16 592, i8 91, i8 4, i32 1022 }, %struct.radeon_tv_mode_constants { i16 800, i16 600, i32 1, i16 1144, i16 706, i16 812, i16 824, i16 669, i32 696700, i16 1382, i8 -25, i8 4, i32 759 }, %struct.radeon_tv_mode_constants { i16 800, i16 600, i32 0, i16 1018, i16 727, i16 813, i16 840, i16 633, i32 630627, i16 347, i8 14, i8 8, i32 1022 }, %struct.radeon_tv_mode_constants { i16 800, i16 600, i32 1, i16 1131, i16 742, i16 813, i16 840, i16 633, i32 708369, i16 211, i8 9, i8 8, i32 759 }], [32 x i8] zeroinitializer }, align 32
@hor_timing_NTSC = internal constant { <{ [17 x i16], [15 x i16] }>, [32 x i8] } { <{ [17 x i16], [15 x i16] }> <{ [17 x i16] [i16 7, i16 63, i16 611, i16 2596, i16 10859, i16 2614, i16 4717, i16 7166, i16 6799, i16 7879, i16 14435, i16 7166, i16 7166, i16 6698, i16 7829, i16 3633, i16 8219], [15 x i16] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@vert_timing_NTSC = internal constant { <{ [13 x i16], [19 x i16] }>, [32 x i8] } { <{ [13 x i16], [19 x i16] }> <{ [13 x i16] [i16 8193, i16 8205, i16 4102, i16 3078, i16 4102, i16 6168, i16 8675, i16 4102, i16 3078, i16 4102, i16 6167, i16 8660, i16 2], [19 x i16] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@hor_timing_PAL = internal constant { <{ [17 x i16], [15 x i16] }>, [32 x i8] } { <{ [17 x i16], [15 x i16] }> <{ [17 x i16] [i16 7, i16 88, i16 636, i16 2609, i16 10871, i16 2709, i16 4687, i16 7166, i16 6946, i16 7929, i16 14460, i16 7166, i16 7166, i16 6961, i16 7861, i16 3651, i16 8219], [15 x i16] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@vert_timing_PAL = internal constant { <{ [15 x i16], [17 x i16] }>, [32 x i8] } { <{ [15 x i16], [17 x i16] }> <{ [15 x i16] [i16 8193, i16 8204, i16 4101, i16 3077, i16 4101, i16 5121, i16 6177, i16 8768, i16 4101, i16 3077, i16 4101, i16 5121, i16 6178, i16 8752, i16 2], [17 x i16] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"compute_restarts: def = %u h = %d v = %d, p1 = %04x, p2 = %04x, restart = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"compute_restart: F/H/V=%u,%u,%u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"compute_restart: h_size = %d h_inc = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@switch.table.radeon_legacy_tv_mode_set = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 1623604108, i32 1622883276, i32 1622883276, i32 1622883276, i32 1623604108, i32 1619001548], [40 x i8] zeroinitializer }, align 32
@switch.table.radeon_legacy_tv_mode_set.7 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 401, i32 4063666, i32 4063666, i32 4063666, i32 401, i32 0], [40 x i8] zeroinitializer }, align 32
@switch.table.radeon_legacy_tv_mode_set.8 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 525, i32 625, i32 525, i32 525, i32 525], [44 x i8] zeroinitializer }, align 32
@switch.table.radeon_legacy_tv_mode_set.9 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 16777216, i32 50331648, i32 16777216, i32 16777216, i32 16777216], [44 x i8] zeroinitializer }, align 32
@switch.table.radeon_legacy_tv_mode_set.10 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @hor_timing_NTSC, ptr @hor_timing_PAL, ptr @hor_timing_NTSC, ptr @hor_timing_NTSC, ptr @hor_timing_NTSC], [44 x i8] zeroinitializer }, align 32
@switch.table.radeon_legacy_tv_mode_set.11 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @vert_timing_NTSC, ptr @vert_timing_PAL, ptr @vert_timing_NTSC, ptr @vert_timing_NTSC, ptr @vert_timing_NTSC], [44 x i8] zeroinitializer }, align 32
@switch.table.radeon_legacy_tv_mode_set.12 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 2, i32 4, i32 2, i32 2, i32 2], [44 x i8] zeroinitializer }, align 32
@switch.table.radeon_legacy_tv_mode_set.13 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 -525, i32 -625, i32 -525, i32 -525, i32 -525], [44 x i8] zeroinitializer }, align 32
@switch.table.radeon_legacy_tv_mode_set.14 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 954368, i32 770048, i32 954368, i32 770048, i32 954368], [44 x i8] zeroinitializer }, align 32
@switch.table.radeon_legacy_tv_mode_set.15 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 9478, i32 9360, i32 9478, i32 9360, i32 9478], [44 x i8] zeroinitializer }, align 32
@switch.table.radeon_legacy_tv_mode_set.16 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 479166, i32 473200, i32 479166, i32 473200, i32 479166], [44 x i8] zeroinitializer }, align 32
@switch.table.radeon_legacy_tv_adjust_pll1 = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 0, i32 65536, i32 262144, i32 131072, i32 327680, i32 393216, i32 327680, i32 196608, i32 327680, i32 327680, i32 327680, i32 458752], [48 x i8] zeroinitializer }, align 32
@switch.table.radeon_legacy_tv_adjust_pll2 = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 0, i32 65536, i32 262144, i32 131072, i32 327680, i32 393216, i32 327680, i32 196608, i32 327680, i32 327680, i32 327680, i32 458752], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 4]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.18 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.19 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 4]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 4]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 4]
@__sancov_gen_cov_switch_values.27 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 4]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 4]
@___asan_gen_.29 = private unnamed_addr constant [12 x i8] c"SLOPE_value\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 274, i32 13 }
@___asan_gen_.32 = private unnamed_addr constant [15 x i8] c"YCOEF_EN_value\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 273, i32 13 }
@___asan_gen_.35 = private unnamed_addr constant [12 x i8] c"YCOEF_value\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 272, i32 13 }
@___asan_gen_.38 = private unnamed_addr constant [19 x i8] c"available_tv_modes\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 172, i32 46 }
@___asan_gen_.41 = private unnamed_addr constant [16 x i8] c"hor_timing_NTSC\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 87, i32 23 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"vert_timing_NTSC\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 108, i32 23 }
@___asan_gen_.47 = private unnamed_addr constant [15 x i8] c"hor_timing_PAL\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 125, i32 23 }
@___asan_gen_.50 = private unnamed_addr constant [16 x i8] c"vert_timing_PAL\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 146, i32 23 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 492, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 501, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private constant [45 x i8] c"../drivers/gpu/drm/radeon/radeon_legacy_tv.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 519, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [39 x i8] c"switch.table.radeon_legacy_tv_mode_set\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [41 x i8] c"switch.table.radeon_legacy_tv_mode_set.7\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [41 x i8] c"switch.table.radeon_legacy_tv_mode_set.8\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [41 x i8] c"switch.table.radeon_legacy_tv_mode_set.9\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [42 x i8] c"switch.table.radeon_legacy_tv_mode_set.10\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [42 x i8] c"switch.table.radeon_legacy_tv_mode_set.11\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [42 x i8] c"switch.table.radeon_legacy_tv_mode_set.12\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [42 x i8] c"switch.table.radeon_legacy_tv_mode_set.13\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [42 x i8] c"switch.table.radeon_legacy_tv_mode_set.14\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [42 x i8] c"switch.table.radeon_legacy_tv_mode_set.15\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [42 x i8] c"switch.table.radeon_legacy_tv_mode_set.16\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [42 x i8] c"switch.table.radeon_legacy_tv_adjust_pll1\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [42 x i8] c"switch.table.radeon_legacy_tv_adjust_pll2\00", align 1
@llvm.compiler.used = appending global [24 x ptr] [ptr @SLOPE_value, ptr @YCOEF_EN_value, ptr @YCOEF_value, ptr @available_tv_modes, ptr @hor_timing_NTSC, ptr @vert_timing_NTSC, ptr @hor_timing_PAL, ptr @vert_timing_PAL, ptr @.str, ptr @.str.5, ptr @.str.6, ptr @switch.table.radeon_legacy_tv_mode_set, ptr @switch.table.radeon_legacy_tv_mode_set.7, ptr @switch.table.radeon_legacy_tv_mode_set.8, ptr @switch.table.radeon_legacy_tv_mode_set.9, ptr @switch.table.radeon_legacy_tv_mode_set.10, ptr @switch.table.radeon_legacy_tv_mode_set.11, ptr @switch.table.radeon_legacy_tv_mode_set.12, ptr @switch.table.radeon_legacy_tv_mode_set.13, ptr @switch.table.radeon_legacy_tv_mode_set.14, ptr @switch.table.radeon_legacy_tv_mode_set.15, ptr @switch.table.radeon_legacy_tv_mode_set.16, ptr @switch.table.radeon_legacy_tv_adjust_pll1, ptr @switch.table.radeon_legacy_tv_adjust_pll2], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SLOPE_value to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @YCOEF_EN_value to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @YCOEF_value to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @available_tv_modes to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hor_timing_NTSC to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vert_timing_NTSC to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hor_timing_PAL to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vert_timing_PAL to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.radeon_legacy_tv_mode_set to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.radeon_legacy_tv_mode_set.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.radeon_legacy_tv_mode_set.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.radeon_legacy_tv_mode_set.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.radeon_legacy_tv_mode_set.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.radeon_legacy_tv_mode_set.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.radeon_legacy_tv_mode_set.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.radeon_legacy_tv_mode_set.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.radeon_legacy_tv_mode_set.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.radeon_legacy_tv_mode_set.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.radeon_legacy_tv_mode_set.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.radeon_legacy_tv_adjust_pll1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.radeon_legacy_tv_adjust_pll2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_legacy_tv_mode_set(ptr nocapture noundef readonly %encoder, ptr nocapture noundef readnone %mode, ptr nocapture noundef readnone %adjusted_mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %enc_priv = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 12
  %4 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enc_priv, align 4
  %crtc.i = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %6 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc.i, align 4
  %crtc_id.i = getelementptr inbounds %struct.radeon_crtc, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %crtc_id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %crtc_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i = icmp eq i32 %9, 1
  %p2pll.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 41, i32 1
  %clock3.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 41
  %pll.0.i = select i1 %cmp.i, ptr %p2pll.i, ptr %clock3.i
  %10 = ptrtoint ptr %pll.0.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pll.0.i, align 4
  %conv.i = trunc i32 %11 to i16
  %tv_std.i = getelementptr inbounds %struct.radeon_encoder_tv_dac, ptr %5, i32 0, i32 8
  %12 = ptrtoint ptr %tv_std.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tv_std.i, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %if.else22.i [
    i32 0, label %entry.if.then15.i_crit_edge
    i32 4, label %entry.if.then15.i_crit_edge708
    i32 2, label %entry.if.then15.i_crit_edge709
  ]

entry.if.then15.i_crit_edge709:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15.i

entry.if.then15.i_crit_edge708:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15.i

entry.if.then15.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15.i

if.then15.i:                                      ; preds = %entry.if.then15.i_crit_edge, %entry.if.then15.i_crit_edge708, %entry.if.then15.i_crit_edge709
  call void @__sanitizer_cov_trace_const_cmp4(i32 2700, i32 %11)
  %cmp17.i = icmp eq i32 %11, 2700
  %available_tv_modes..i = select i1 %cmp17.i, ptr @available_tv_modes, ptr getelementptr inbounds ([4 x %struct.radeon_tv_mode_constants], ptr @available_tv_modes, i32 0, i32 2)
  br label %if.end

if.else22.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2700, i32 %11)
  %cmp24.i = icmp eq i32 %11, 2700
  %..i = select i1 %cmp24.i, ptr getelementptr inbounds ([4 x %struct.radeon_tv_mode_constants], ptr @available_tv_modes, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.radeon_tv_mode_constants], ptr @available_tv_modes, i32 0, i32 3)
  br label %if.end

if.end:                                           ; preds = %if.else22.i, %if.then15.i
  %const_ptr.0.i = phi ptr [ %available_tv_modes..i, %if.then15.i ], [ %..i, %if.else22.i ]
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %15 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %family, align 4
  %.off = add i32 %16, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %.off)
  %switch = icmp ult i32 %.off, 9
  %spec.select600 = select i1 %switch, i32 -2147482080, i32 -1073740256
  %17 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %13, label %if.end.if.end37_crit_edge [
    i32 0, label %if.end.if.then35_crit_edge
    i32 4, label %if.end.if.then35_crit_edge710
  ]

if.end.if.then35_crit_edge710:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then35

if.end.if.then35_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then35

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

if.then35:                                        ; preds = %if.end.if.then35_crit_edge, %if.end.if.then35_crit_edge710
  %or36 = or i32 %spec.select600, 8
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end.if.end37_crit_edge
  %tv_master_cntl.1 = phi i32 [ %or36, %if.then35 ], [ %spec.select600, %if.end.if.end37_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %13)
  %18 = icmp ult i32 %13, 6
  br i1 %18, label %switch.lookup, label %if.end37.if.end52_crit_edge

if.end37.if.end52_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end52

switch.lookup:                                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.radeon_legacy_tv_mode_set, i32 0, i32 %13
  %19 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %19)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep682 = getelementptr inbounds [6 x i32], ptr @switch.table.radeon_legacy_tv_mode_set.7, i32 0, i32 %13
  %20 = ptrtoint ptr %switch.gep682 to i32
  call void @__asan_load4_noabort(i32 %20)
  %switch.load683 = load i32, ptr %switch.gep682, align 4
  br label %if.end52

if.end52:                                         ; preds = %switch.lookup, %if.end37.if.end52_crit_edge
  %tv_modulator_cntl1.0 = phi i32 [ %switch.load, %switch.lookup ], [ 1622883276, %if.end37.if.end52_crit_edge ]
  %tv_modulator_cntl2.0 = phi i32 [ %switch.load683, %switch.lookup ], [ 4063666, %if.end37.if.end52_crit_edge ]
  br i1 %cmp.i, label %if.end52.if.end63_crit_edge, label %if.else56

if.end52.if.end63_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end63

if.else56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #6
  %rmx_type = getelementptr inbounds %struct.radeon_crtc, ptr %7, i32 0, i32 17
  %21 = ptrtoint ptr %rmx_type to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rmx_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp57.not = icmp eq i32 %22, 0
  %. = select i1 %cmp57.not, i32 -948240352, i32 -948240096
  br label %if.end63

if.end63:                                         ; preds = %if.else56, %if.end52.if.end63_crit_edge
  %tv_rgb_cntl.0 = phi i32 [ -948239840, %if.end52.if.end63_crit_edge ], [ %., %if.else56 ]
  %23 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %13, label %if.else77 [
    i32 0, label %if.end63.if.then75_crit_edge
    i32 4, label %if.end63.if.then75_crit_edge711
    i32 2, label %if.end63.if.then75_crit_edge712
    i32 3, label %if.end63.if.then75_crit_edge713
  ]

if.end63.if.then75_crit_edge713:                  ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then75

if.end63.if.then75_crit_edge712:                  ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then75

if.end63.if.then75_crit_edge711:                  ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then75

if.end63.if.then75_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then75

if.then75:                                        ; preds = %if.end63.if.then75_crit_edge, %if.end63.if.then75_crit_edge711, %if.end63.if.then75_crit_edge712, %if.end63.if.then75_crit_edge713
  %ver_total = getelementptr inbounds %struct.radeon_tv_mode_constants, ptr %const_ptr.0.i, i32 0, i32 4
  %24 = ptrtoint ptr %ver_total to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %ver_total, align 2
  %conv = zext i16 %25 to i32
  %mul76 = mul nuw nsw i32 %conv, 20000
  %div = udiv i32 %mul76, 525
  br label %if.end83

if.else77:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #6
  %ver_total78 = getelementptr inbounds %struct.radeon_tv_mode_constants, ptr %const_ptr.0.i, i32 0, i32 4
  %26 = ptrtoint ptr %ver_total78 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %ver_total78, align 2
  %conv79 = zext i16 %27 to i32
  %div82 = shl nuw nsw i32 %conv79, 5
  br label %if.end83

if.end83:                                         ; preds = %if.else77, %if.then75
  %vert_space.0 = phi i32 [ %div, %if.then75 ], [ %div82, %if.else77 ]
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %28 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %29, i32 2124
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %31 = and i32 %30, 65507
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %mul85 = shl i32 %vert_space.0, 14
  %div86 = udiv i32 %mul85, 10000
  %or87 = or i32 %32, %div86
  call void @__sanitizer_cov_trace_const_cmp2(i16 2700, i16 %conv.i)
  %cmp89 = icmp eq i16 %conv.i, 2700
  %or92 = or i32 %or87, 536870912
  %spec.select = select i1 %cmp89, i32 %or92, i32 %or87
  %33 = ptrtoint ptr %const_ptr.0.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %const_ptr.0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %34)
  %cmp95 = icmp eq i16 %34, 1024
  %tv_vscaler_cntl1.1.v = select i1 %cmp95, i32 268435456, i32 134217728
  %tv_vscaler_cntl1.1 = or i32 %spec.select, %tv_vscaler_cntl1.1.v
  %ver_total102 = getelementptr inbounds %struct.radeon_tv_mode_constants, ptr %const_ptr.0.i, i32 0, i32 4
  %35 = ptrtoint ptr %ver_total102 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %ver_total102, align 2
  %conv103 = zext i16 %36 to i32
  %mul105 = mul nuw nsw i32 %conv103, 2000
  %37 = ptrtoint ptr %tv_std.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tv_std.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %38)
  %39 = icmp ult i32 %38, 5
  br i1 %39, label %switch.lookup684, label %if.end83.if.end125_crit_edge

if.end83.if.end125_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end125

switch.lookup684:                                 ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep685 = getelementptr inbounds [5 x i32], ptr @switch.table.radeon_legacy_tv_mode_set.8, i32 0, i32 %38
  %40 = ptrtoint ptr %switch.gep685 to i32
  call void @__asan_load4_noabort(i32 %40)
  %switch.load686 = load i32, ptr %switch.gep685, align 4
  br label %if.end125

if.end125:                                        ; preds = %switch.lookup684, %if.end83.if.end125_crit_edge
  %.sink = phi i32 [ %switch.load686, %switch.lookup684 ], [ 625, %if.end83.if.end125_crit_edge ]
  %div124 = udiv i32 %mul105, %.sink
  %add = add nuw nsw i32 %div124, 500
  %div126 = udiv i32 %add, 1000
  %41 = tail call i32 @llvm.umax.i32(i32 %div126, i32 3)
  %switch.tableidx = add nsw i32 %41, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %42 = icmp ult i32 %switch.tableidx, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3500, i32 %div124)
  %cmp133.3 = icmp ult i32 %div124, 3500
  %spec.select680 = select i1 %cmp133.3, i32 3, i32 5
  %switch.offset = sub nsw i32 6, %41
  %i.0.lcssa = select i1 %42, i32 %switch.offset, i32 %spec.select680
  %arrayidx137 = getelementptr [5 x i32], ptr @SLOPE_value, i32 0, i32 %i.0.lcssa
  %43 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx137, align 4
  %mul138 = shl i32 %vert_space.0, 13
  %mul139 = mul i32 %mul138, %44
  %add140 = or i32 %mul139, 4992
  %div142 = udiv i32 %add140, 80000
  %mul144 = shl i32 %44, 13
  %div145 = sdiv i32 %mul144, 8
  %shl = shl i32 %div145, 16
  %or146 = or i32 %div142, %shl
  %arrayidx147 = getelementptr [5 x i32], ptr @YCOEF_EN_value, i32 0, i32 %i.0.lcssa
  %45 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx147, align 4
  %shl148 = shl i32 %46, 17
  %arrayidx149 = getelementptr [5 x i32], ptr @YCOEF_value, i32 0, i32 %i.0.lcssa
  %47 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx149, align 4
  %mul150 = shl i32 %48, 8
  %div151 = sdiv i32 %mul150, 8
  %shl152 = shl i32 %div151, 24
  %mul156 = mul i32 %44, 272
  %div157 = sdiv i32 %mul156, 8
  %mul158 = shl i32 %div157, 13
  %div159 = sdiv i32 %mul158, 1024
  %or153 = or i32 %shl148, %div159
  %or154 = or i32 %or153, %shl152
  %or160 = or i32 %or154, 65536
  %mul161 = shl nuw nsw i32 %41, 10
  %sub = add nuw nsw i32 %mul161, 4194032
  %mul163 = mul i32 %44, %sub
  %mul165 = and i32 %mul163, 4128752
  %or167 = or i32 %mul165, 65536
  %49 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i602 = getelementptr i8, ptr %50, i32 2132
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i602) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %52 = and i32 %51, -251658496
  %53 = or i32 %52, 251658256
  %and171 = and i32 %spec.select, 65535
  %div172 = udiv i32 41943040, %and171
  %add173 = add nuw nsw i32 %div172, 5
  %div174 = udiv i32 %add173, 10
  %shl175 = shl i32 %div174, 24
  %or176 = or i32 %shl175, 720896
  %tv = getelementptr inbounds %struct.radeon_encoder_tv_dac, ptr %5, i32 0, i32 9
  %timing_cntl = getelementptr inbounds %struct.radeon_encoder_tv_dac, ptr %5, i32 0, i32 9, i32 1
  %54 = ptrtoint ptr %timing_cntl to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %or176, ptr %timing_cntl, align 4
  %55 = ptrtoint ptr %tv_std.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tv_std.i, align 4
  %57 = zext i32 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %56, label %if.else193 [
    i32 0, label %if.end125.if.then192_crit_edge
    i32 4, label %if.end125.if.then192_crit_edge714
    i32 2, label %if.end125.if.then192_crit_edge715
    i32 3, label %if.end125.if.then192_crit_edge716
  ]

if.end125.if.then192_crit_edge716:                ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then192

if.end125.if.then192_crit_edge715:                ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then192

if.end125.if.then192_crit_edge714:                ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then192

if.end125.if.then192_crit_edge:                   ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then192

if.then192:                                       ; preds = %if.end125.if.then192_crit_edge, %if.end125.if.then192_crit_edge714, %if.end125.if.then192_crit_edge715, %if.end125.if.then192_crit_edge716
  %ntsc_tvdac_adj = getelementptr inbounds %struct.radeon_encoder_tv_dac, ptr %5, i32 0, i32 1
  br label %if.end194

if.else193:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #6
  %pal_tvdac_adj = getelementptr inbounds %struct.radeon_encoder_tv_dac, ptr %5, i32 0, i32 2
  br label %if.end194

if.end194:                                        ; preds = %if.else193, %if.then192
  %tv_dac_cntl.0.in = phi ptr [ %ntsc_tvdac_adj, %if.then192 ], [ %pal_tvdac_adj, %if.else193 ]
  %58 = ptrtoint ptr %tv_dac_cntl.0.in to i32
  call void @__asan_load4_noabort(i32 %58)
  %tv_dac_cntl.0 = load i32, ptr %tv_dac_cntl.0.in, align 4
  %or195 = or i32 %tv_dac_cntl.0, 3
  %59 = zext i32 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %56, label %if.end194.if.end207_crit_edge [
    i32 0, label %if.end194.if.then203_crit_edge
    i32 4, label %if.end194.if.then203_crit_edge717
  ]

if.end194.if.then203_crit_edge717:                ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then203

if.end194.if.then203_crit_edge:                   ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then203

if.end194.if.end207_crit_edge:                    ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end207

if.then203:                                       ; preds = %if.end194.if.then203_crit_edge, %if.end194.if.then203_crit_edge717
  %or204 = or i32 %tv_dac_cntl.0, 259
  br label %if.end207

if.end207:                                        ; preds = %if.then203, %if.end194.if.end207_crit_edge
  %tv_dac_cntl.1 = phi i32 [ %or204, %if.then203 ], [ %or195, %if.end194.if.end207_crit_edge ]
  %60 = zext i32 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %56, label %if.else222 [
    i32 0, label %if.end207.if.then215_crit_edge
    i32 4, label %if.end207.if.then215_crit_edge718
  ]

if.end207.if.then215_crit_edge718:                ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then215

if.end207.if.then215_crit_edge:                   ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then215

if.then215:                                       ; preds = %if.end207.if.then215_crit_edge, %if.end207.if.then215_crit_edge718
  %.594 = select i1 %cmp89, i32 22, i32 33
  %.595 = select i1 %cmp89, i32 175, i32 693
  %.596 = select i1 %cmp89, i32 83886080, i32 117440512
  br label %if.end229

if.else222:                                       ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #6
  %.597 = select i1 %cmp89, i32 113, i32 19
  %.598 = select i1 %cmp89, i32 668, i32 353
  %.599 = select i1 %cmp89, i32 50331648, i32 83886080
  br label %if.end229

if.end229:                                        ; preds = %if.else222, %if.then215
  %m.0 = phi i32 [ %.594, %if.then215 ], [ %.597, %if.else222 ]
  %n.0 = phi i32 [ %.595, %if.then215 ], [ %.598, %if.else222 ]
  %p.0 = phi i32 [ %.596, %if.then215 ], [ %.599, %if.else222 ]
  %and235 = shl nuw nsw i32 %n.0, 8
  %shl236 = and i32 %and235, 130816
  %61 = shl nuw nsw i32 %n.0, 12
  %shl240 = and i32 %61, 2097152
  %or237 = or i32 %p.0, %m.0
  %or241 = or i32 %or237, %shl236
  %or244 = or i32 %or241, %shl240
  %62 = ptrtoint ptr %tv to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 200, ptr %tv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %56)
  %63 = icmp ult i32 %56, 5
  br i1 %63, label %switch.lookup688, label %if.end229.if.end263_crit_edge

if.end229.if.end263_crit_edge:                    ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end263

switch.lookup688:                                 ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep689 = getelementptr inbounds [5 x i32], ptr @switch.table.radeon_legacy_tv_mode_set.9, i32 0, i32 %56
  %64 = ptrtoint ptr %switch.gep689 to i32
  call void @__asan_load4_noabort(i32 %64)
  %switch.load690 = load i32, ptr %switch.gep689, align 4
  %switch.gep691 = getelementptr inbounds [5 x ptr], ptr @switch.table.radeon_legacy_tv_mode_set.10, i32 0, i32 %56
  %65 = ptrtoint ptr %switch.gep691 to i32
  call void @__asan_load4_noabort(i32 %65)
  %switch.load692 = load ptr, ptr %switch.gep691, align 4
  %switch.gep693 = getelementptr inbounds [5 x ptr], ptr @switch.table.radeon_legacy_tv_mode_set.11, i32 0, i32 %56
  %66 = ptrtoint ptr %switch.gep693 to i32
  call void @__asan_load4_noabort(i32 %66)
  %switch.load694 = load ptr, ptr %switch.gep693, align 4
  br label %if.end263

if.end263:                                        ; preds = %switch.lookup688, %if.end229.if.end263_crit_edge
  %tv_ftotal.0 = phi i32 [ %switch.load690, %switch.lookup688 ], [ 50331648, %if.end229.if.end263_crit_edge ]
  %hor_timing.0 = phi ptr [ %switch.load692, %switch.lookup688 ], [ @hor_timing_PAL, %if.end229.if.end263_crit_edge ]
  %vert_timing.0 = phi ptr [ %switch.load694, %switch.lookup688 ], [ @vert_timing_PAL, %if.end229.if.end263_crit_edge ]
  br label %for.body267

for.body267:                                      ; preds = %for.body267.for.body267_crit_edge, %if.end263
  %i.1676 = phi i32 [ 0, %if.end263 ], [ %inc277, %for.body267.for.body267_crit_edge ]
  %arrayidx268 = getelementptr i16, ptr %hor_timing.0, i32 %i.1676
  %67 = ptrtoint ptr %arrayidx268 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %arrayidx268, align 2
  %arrayidx270 = getelementptr %struct.radeon_encoder_tv_dac, ptr %5, i32 0, i32 9, i32 5, i32 %i.1676
  %69 = ptrtoint ptr %arrayidx270 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %arrayidx270, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %cmp272 = icmp eq i16 %68, 0
  %inc277 = add nuw nsw i32 %i.1676, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %inc277)
  %exitcond.not = icmp eq i32 %inc277, 32
  %or.cond = select i1 %cmp272, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %for.body267.for.body282_crit_edge, label %for.body267.for.body267_crit_edge

for.body267.for.body267_crit_edge:                ; preds = %for.body267
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body267

for.body267.for.body282_crit_edge:                ; preds = %for.body267
  br label %for.body282

for.body282:                                      ; preds = %for.body282.for.body282_crit_edge, %for.body267.for.body282_crit_edge
  %i.2677 = phi i32 [ %inc292, %for.body282.for.body282_crit_edge ], [ 0, %for.body267.for.body282_crit_edge ]
  %arrayidx283 = getelementptr i16, ptr %vert_timing.0, i32 %i.2677
  %70 = ptrtoint ptr %arrayidx283 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %arrayidx283, align 2
  %arrayidx285 = getelementptr %struct.radeon_encoder_tv_dac, ptr %5, i32 0, i32 9, i32 6, i32 %i.2677
  %72 = ptrtoint ptr %arrayidx285 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %arrayidx285, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %cmp287 = icmp eq i16 %71, 0
  %inc292 = add nuw nsw i32 %i.2677, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %inc292)
  %exitcond678.not = icmp eq i32 %inc292, 32
  %or.cond681 = select i1 %cmp287, i1 true, i1 %exitcond678.not
  br i1 %or.cond681, label %for.end293, label %for.body282.for.body282_crit_edge

for.body282.for.body282_crit_edge:                ; preds = %for.body282
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body282

for.end293:                                       ; preds = %for.body282
  %73 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %enc_priv, align 4
  %75 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %encoder, align 4
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %76, i32 0, i32 5
  %77 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev_private.i.i, align 4
  %79 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %crtc.i, align 4
  %crtc_id.i.i = getelementptr inbounds %struct.radeon_crtc, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %crtc_id.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %crtc_id.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %82)
  %cmp.i.i = icmp eq i32 %82, 1
  %p2pll.i.i = getelementptr inbounds %struct.radeon_device, ptr %78, i32 0, i32 41, i32 1
  %clock3.i.i = getelementptr inbounds %struct.radeon_device, ptr %78, i32 0, i32 41
  %pll.0.i.i = select i1 %cmp.i.i, ptr %p2pll.i.i, ptr %clock3.i.i
  %tv_std.i.i = getelementptr inbounds %struct.radeon_encoder_tv_dac, ptr %74, i32 0, i32 8
  %83 = ptrtoint ptr %tv_std.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %tv_std.i.i, align 4
  %85 = zext i32 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %84, label %if.else22.i.i [
    i32 0, label %for.end293.if.then15.i.i_crit_edge
    i32 4, label %for.end293.if.then15.i.i_crit_edge719
    i32 2, label %for.end293.if.then15.i.i_crit_edge720
  ]

for.end293.if.then15.i.i_crit_edge720:            ; preds = %for.end293
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15.i.i

for.end293.if.then15.i.i_crit_edge719:            ; preds = %for.end293
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15.i.i

for.end293.if.then15.i.i_crit_edge:               ; preds = %for.end293
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15.i.i

if.then15.i.i:                                    ; preds = %for.end293.if.then15.i.i_crit_edge, %for.end293.if.then15.i.i_crit_edge719, %for.end293.if.then15.i.i_crit_edge720
  %86 = ptrtoint ptr %pll.0.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %pll.0.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2700, i32 %87)
  %cmp17.i.i = icmp eq i32 %87, 2700
  %available_tv_modes..i.i = select i1 %cmp17.i.i, ptr @available_tv_modes, ptr getelementptr inbounds ([4 x %struct.radeon_tv_mode_constants], ptr @available_tv_modes, i32 0, i32 2)
  br label %if.end.i

if.else22.i.i:                                    ; preds = %for.end293
  call void @__sanitizer_cov_trace_pc() #6
  %88 = ptrtoint ptr %pll.0.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %pll.0.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2700, i32 %89)
  %cmp24.i.i = icmp eq i32 %89, 2700
  %..i.i = select i1 %cmp24.i.i, ptr getelementptr inbounds ([4 x %struct.radeon_tv_mode_constants], ptr @available_tv_modes, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.radeon_tv_mode_constants], ptr @available_tv_modes, i32 0, i32 3)
  br label %if.end.i

if.end.i:                                         ; preds = %if.else22.i.i, %if.then15.i.i
  %const_ptr.0.i.i = phi ptr [ %available_tv_modes..i.i, %if.then15.i.i ], [ %..i.i, %if.else22.i.i ]
  %hor_total.i = getelementptr inbounds %struct.radeon_tv_mode_constants, ptr %const_ptr.0.i.i, i32 0, i32 3
  %90 = ptrtoint ptr %hor_total.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %hor_total.i, align 4
  %conv.i604 = zext i16 %91 to i32
  %ver_total.i = getelementptr inbounds %struct.radeon_tv_mode_constants, ptr %const_ptr.0.i.i, i32 0, i32 4
  %92 = ptrtoint ptr %ver_total.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %ver_total.i, align 2
  %conv1.i = zext i16 %93 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %84)
  %94 = icmp ult i32 %84, 5
  br i1 %94, label %switch.lookup695, label %if.end.i.if.end15.i_crit_edge

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.i

switch.lookup695:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep696 = getelementptr inbounds [5 x i32], ptr @switch.table.radeon_legacy_tv_mode_set.12, i32 0, i32 %84
  %95 = ptrtoint ptr %switch.gep696 to i32
  call void @__asan_load4_noabort(i32 %95)
  %switch.load697 = load i32, ptr %switch.gep696, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %switch.lookup695, %if.end.i.if.end15.i_crit_edge
  %f_total.0.i = phi i32 [ %switch.load697, %switch.lookup695 ], [ 4, %if.end.i.if.end15.i_crit_edge ]
  %h_pos.i = getelementptr inbounds %struct.radeon_encoder_tv_dac, ptr %74, i32 0, i32 3
  %96 = ptrtoint ptr %h_pos.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %h_pos.i, align 4
  %mul.i = mul i32 %97, 10
  %98 = zext i32 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %84, label %if.end15.i.if.end29.i_crit_edge [
    i32 0, label %if.end15.i.if.then27.i_crit_edge
    i32 4, label %if.end15.i.if.then27.i_crit_edge721
    i32 2, label %if.end15.i.if.then27.i_crit_edge722
  ]

if.end15.i.if.then27.i_crit_edge722:              ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then27.i

if.end15.i.if.then27.i_crit_edge721:              ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then27.i

if.end15.i.if.then27.i_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then27.i

if.end15.i.if.end29.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29.i

if.then27.i:                                      ; preds = %if.end15.i.if.then27.i_crit_edge, %if.end15.i.if.then27.i_crit_edge721, %if.end15.i.if.then27.i_crit_edge722
  %sub.i = add i32 %mul.i, -50
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then27.i, %if.end15.i.if.end29.i_crit_edge
  %h_offset.0.i = phi i32 [ %sub.i, %if.then27.i ], [ %mul.i, %if.end15.i.if.end29.i_crit_edge ]
  %p1.0.i = phi i32 [ 4717, %if.then27.i ], [ 4687, %if.end15.i.if.end29.i_crit_edge ]
  %p2.0.i = phi i32 [ 6799, %if.then27.i ], [ 6946, %if.end15.i.if.end29.i_crit_edge ]
  %add.i = add i32 %p1.0.i, %h_offset.0.i
  %conv31.i = trunc i32 %add.i to i16
  %sub33.i = sub i32 %p2.0.i, %h_offset.0.i
  %conv34.i = trunc i32 %sub33.i to i16
  %conv35.i = and i32 %add.i, 65535
  %arrayidx.i = getelementptr %struct.radeon_encoder_tv_dac, ptr %74, i32 0, i32 9, i32 5, i32 6
  %99 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %conv31.i, ptr %arrayidx.i, align 4
  %arrayidx51.i = getelementptr %struct.radeon_encoder_tv_dac, ptr %74, i32 0, i32 9, i32 5, i32 8
  %100 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %conv34.i, ptr %arrayidx51.i, align 4
  %pix_to_tv.i = getelementptr inbounds %struct.radeon_tv_mode_constants, ptr %const_ptr.0.i.i, i32 0, i32 12
  %101 = ptrtoint ptr %pix_to_tv.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %pix_to_tv.i, align 4
  %mul52.i = mul i32 %102, %h_offset.0.i
  %div.neg.i = sdiv i32 %mul52.i, -1000
  %def_restart.i = getelementptr inbounds %struct.radeon_tv_mode_constants, ptr %const_ptr.0.i.i, i32 0, i32 8
  %103 = ptrtoint ptr %def_restart.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %def_restart.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %84)
  %105 = icmp ult i32 %84, 5
  br i1 %105, label %switch.lookup698, label %if.end29.i.if.end79.i_crit_edge

if.end29.i.if.end79.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end79.i

switch.lookup698:                                 ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep699 = getelementptr inbounds [5 x i32], ptr @switch.table.radeon_legacy_tv_mode_set.13, i32 0, i32 %84
  %106 = ptrtoint ptr %switch.gep699 to i32
  call void @__asan_load4_noabort(i32 %106)
  %switch.load700 = load i32, ptr %switch.gep699, align 4
  br label %if.end79.i

if.end79.i:                                       ; preds = %switch.lookup698, %if.end29.i.if.end79.i_crit_edge
  %.sink.i = phi i32 [ %switch.load700, %switch.lookup698 ], [ -625, %if.end29.i.if.end79.i_crit_edge ]
  %v_pos76.i = getelementptr inbounds %struct.radeon_encoder_tv_dac, ptr %74, i32 0, i32 4
  %107 = ptrtoint ptr %v_pos76.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %v_pos76.i, align 4
  %mul74.i = shl nuw nsw i32 %conv.i604, 1
  %mul75.i = mul i32 %mul74.i, %conv1.i
  %mul77.i = mul i32 %mul75.i, %108
  %div78.neg.i = sdiv i32 %mul77.i, %.sink.i
  %add80.neg.i = add i32 %div.neg.i, %104
  %sub81.i = add i32 %add80.neg.i, %div78.neg.i
  %conv86.i = and i32 %sub33.i, 65535
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %104, i32 noundef %97, i32 noundef %108, i32 noundef %conv35.i, i32 noundef %conv86.i, i32 noundef %sub81.i) #4
  %conv.i604.frozen = freeze i32 %conv.i604
  %div88.i = udiv i32 %sub81.i, %conv.i604.frozen
  %109 = mul i32 %div88.i, %conv.i604.frozen
  %rem.i.decomposed = sub i32 %sub81.i, %109
  %hrestart.i = getelementptr inbounds %struct.radeon_encoder_tv_dac, ptr %74, i32 0, i32 9, i32 2
  %110 = ptrtoint ptr %hrestart.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %rem.i.decomposed, ptr %hrestart.i, align 4
  %conv1.i.frozen = freeze i32 %conv1.i
  %div91.i = udiv i32 %div88.i, %conv1.i.frozen
  %111 = mul i32 %div91.i, %conv1.i.frozen
  %rem89.i.decomposed = sub i32 %div88.i, %111
  %vrestart.i = getelementptr inbounds %struct.radeon_encoder_tv_dac, ptr %74, i32 0, i32 9, i32 3
  %112 = ptrtoint ptr %vrestart.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %rem89.i.decomposed, ptr %vrestart.i, align 4
  %rem92.i = urem i32 %div91.i, %f_total.0.i
  %frestart.i = getelementptr inbounds %struct.radeon_encoder_tv_dac, ptr %74, i32 0, i32 9, i32 4
  %113 = ptrtoint ptr %frestart.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %rem92.i, ptr %frestart.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.5, i32 noundef %rem92.i, i32 noundef %rem89.i.decomposed, i32 noundef %rem.i.decomposed) #4
  %114 = ptrtoint ptr %tv_std.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %tv_std.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %115)
  %116 = icmp ult i32 %115, 5
  br i1 %116, label %switch.lookup701, label %if.end79.i.radeon_legacy_tv_init_restarts.exit_crit_edge

if.end79.i.radeon_legacy_tv_init_restarts.exit_crit_edge: ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %radeon_legacy_tv_init_restarts.exit

switch.lookup701:                                 ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep702 = getelementptr inbounds [5 x i32], ptr @switch.table.radeon_legacy_tv_mode_set.14, i32 0, i32 %115
  %117 = ptrtoint ptr %switch.gep702 to i32
  call void @__asan_load4_noabort(i32 %117)
  %switch.load703 = load i32, ptr %switch.gep702, align 4
  %switch.gep704 = getelementptr inbounds [5 x i32], ptr @switch.table.radeon_legacy_tv_mode_set.15, i32 0, i32 %115
  %118 = ptrtoint ptr %switch.gep704 to i32
  call void @__asan_load4_noabort(i32 %118)
  %switch.load705 = load i32, ptr %switch.gep704, align 4
  %switch.gep706 = getelementptr inbounds [5 x i32], ptr @switch.table.radeon_legacy_tv_mode_set.16, i32 0, i32 %115
  %119 = ptrtoint ptr %switch.gep706 to i32
  call void @__asan_load4_noabort(i32 %119)
  %switch.load707 = load i32, ptr %switch.gep706, align 4
  br label %radeon_legacy_tv_init_restarts.exit

radeon_legacy_tv_init_restarts.exit:              ; preds = %switch.lookup701, %if.end79.i.radeon_legacy_tv_init_restarts.exit_crit_edge
  %.sink5.i = phi i32 [ %switch.load703, %switch.lookup701 ], [ 770048, %if.end79.i.radeon_legacy_tv_init_restarts.exit_crit_edge ]
  %.sink4.i = phi i32 [ %switch.load705, %switch.lookup701 ], [ 9360, %if.end79.i.radeon_legacy_tv_init_restarts.exit_crit_edge ]
  %.sink2.i = phi i32 [ %switch.load707, %switch.lookup701 ], [ 473200, %if.end79.i.radeon_legacy_tv_init_restarts.exit_crit_edge ]
  %120 = ptrtoint ptr %const_ptr.0.i.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %const_ptr.0.i.i, align 4
  %conv112.i = zext i16 %121 to i32
  %mul114.i = mul i32 %.sink5.i, %conv112.i
  %h_size.i = getelementptr inbounds %struct.radeon_encoder_tv_dac, ptr %74, i32 0, i32 5
  %122 = ptrtoint ptr %h_size.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %h_size.i, align 4
  %mul115.i = mul i32 %123, %.sink4.i
  %add116.i = add i32 %mul115.i, %.sink2.i
  %div117.i = sdiv i32 %mul114.i, %add116.i
  %timing_cntl.i = getelementptr inbounds %struct.radeon_encoder_tv_dac, ptr %74, i32 0, i32 9, i32 1
  %124 = ptrtoint ptr %timing_cntl.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %timing_cntl.i, align 4
  %and.i = and i32 %125, -4096
  %conv131.i = and i32 %div117.i, 65535
  %or.i = or i32 %and.i, %conv131.i
  store i32 %or.i, ptr %timing_cntl.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef %123, i32 noundef %conv131.i) #4
  %or296 = or i32 %tv_master_cntl.1, 3
  %or297 = or i32 %tv_master_cntl.1, 19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %126 = tail call i32 @llvm.bswap.i32(i32 %or297) #4
  %127 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i606 = getelementptr i8, ptr %128, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i606, i32 %126) #4, !srcloc !36
  %129 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i608 = getelementptr i8, ptr %130, i32 2188
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i608) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %132 = and i32 %131, -1090519048
  %133 = or i32 %132, 1073741831
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %134 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i610 = getelementptr i8, ptr %135, i32 2188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i610, i32 %133) #4, !srcloc !36
  %pll_rreg = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 34
  %136 = ptrtoint ptr %pll_rreg to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %pll_rreg, align 8
  %call301 = tail call i32 %137(ptr noundef %3, i32 noundef 34) #4
  %and302 = and i32 %call301, -1073741825
  %pll_wreg = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 35
  %138 = ptrtoint ptr %pll_wreg to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %pll_wreg, align 4
  tail call void %139(ptr noundef %3, i32 noundef 34, i32 noundef %and302) #4
  %140 = ptrtoint ptr %pll_wreg to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %pll_wreg, align 4
  tail call void %141(ptr noundef %3, i32 noundef 33, i32 noundef %or244) #4
  %142 = ptrtoint ptr %pll_rreg to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %pll_rreg, align 8
  %call308 = tail call i32 %143(ptr noundef %3, i32 noundef 34) #4
  %or310 = or i32 %call308, 2
  %144 = ptrtoint ptr %pll_wreg to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %pll_wreg, align 4
  tail call void %145(ptr noundef %3, i32 noundef 34, i32 noundef %or310) #4
  tail call fastcc void @radeon_wait_pll_lock(ptr noundef %encoder, i32 noundef 200, i32 noundef 800, i32 noundef 135)
  %146 = ptrtoint ptr %pll_rreg to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %pll_rreg, align 8
  %call317 = tail call i32 %147(ptr noundef %3, i32 noundef 34) #4
  %and318 = and i32 %call317, -3
  %148 = ptrtoint ptr %pll_wreg to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %pll_wreg, align 4
  tail call void %149(ptr noundef %3, i32 noundef 34, i32 noundef %and318) #4
  tail call fastcc void @radeon_wait_pll_lock(ptr noundef %encoder, i32 noundef 300, i32 noundef 160, i32 noundef 27)
  tail call fastcc void @radeon_wait_pll_lock(ptr noundef %encoder, i32 noundef 200, i32 noundef 800, i32 noundef 135)
  %150 = ptrtoint ptr %pll_rreg to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %pll_rreg, align 8
  %call326 = tail call i32 %151(ptr noundef %3, i32 noundef 34) #4
  %and327 = and i32 %call326, -16
  %152 = ptrtoint ptr %pll_wreg to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %pll_wreg, align 4
  tail call void %153(ptr noundef %3, i32 noundef 34, i32 noundef %and327) #4
  %154 = ptrtoint ptr %pll_rreg to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %pll_rreg, align 8
  %call335 = tail call i32 %155(ptr noundef %3, i32 noundef 34) #4
  %or337 = or i32 %call335, 1073741824
  %156 = ptrtoint ptr %pll_wreg to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %pll_wreg, align 4
  tail call void %157(ptr noundef %3, i32 noundef 34, i32 noundef %or337) #4
  %158 = ptrtoint ptr %pll_rreg to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %pll_rreg, align 8
  %call344 = tail call i32 %159(ptr noundef %3, i32 noundef 34) #4
  %and345 = and i32 %call344, -49153
  %or346 = or i32 %and345, 16384
  %160 = ptrtoint ptr %pll_wreg to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %pll_wreg, align 4
  tail call void %161(ptr noundef %3, i32 noundef 34, i32 noundef %or346) #4
  %162 = ptrtoint ptr %pll_rreg to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %pll_rreg, align 8
  %call353 = tail call i32 %163(ptr noundef %3, i32 noundef 34) #4
  %and354 = and i32 %call353, -9
  %164 = ptrtoint ptr %pll_wreg to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %pll_wreg, align 4
  tail call void %165(ptr noundef %3, i32 noundef 34, i32 noundef %and354) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %166 = tail call i32 @llvm.bswap.i32(i32 %tv_rgb_cntl.0) #4
  %167 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i612 = getelementptr i8, ptr %168, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i612, i32 %166) #4, !srcloc !36
  %hor_total = getelementptr inbounds %struct.radeon_tv_mode_constants, ptr %const_ptr.0.i, i32 0, i32 3
  %169 = ptrtoint ptr %hor_total to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %hor_total, align 4
  %conv359 = zext i16 %170 to i32
  %sub360 = add nsw i32 %conv359, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %171 = tail call i32 @llvm.bswap.i32(i32 %sub360) #4
  %172 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i614 = getelementptr i8, ptr %173, i32 2060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i614, i32 %171) #4, !srcloc !36
  %174 = ptrtoint ptr %const_ptr.0.i to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %const_ptr.0.i, align 4
  %conv362 = zext i16 %175 to i32
  %sub363 = add nsw i32 %conv362, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %176 = tail call i32 @llvm.bswap.i32(i32 %sub363) #4
  %177 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i616 = getelementptr i8, ptr %178, i32 2064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i616, i32 %176) #4, !srcloc !36
  %hor_start = getelementptr inbounds %struct.radeon_tv_mode_constants, ptr %const_ptr.0.i, i32 0, i32 5
  %179 = ptrtoint ptr %hor_start to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %hor_start, align 4
  %conv364 = zext i16 %180 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %181 = tail call i32 @llvm.bswap.i32(i32 %conv364) #4
  %182 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i618 = getelementptr i8, ptr %183, i32 2072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i618, i32 %181) #4, !srcloc !36
  %184 = ptrtoint ptr %ver_total102 to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %ver_total102, align 2
  %conv366 = zext i16 %185 to i32
  %sub367 = add nsw i32 %conv366, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %186 = tail call i32 @llvm.bswap.i32(i32 %sub367) #4
  %187 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i620 = getelementptr i8, ptr %188, i32 2080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i620, i32 %186) #4, !srcloc !36
  %ver_resolution = getelementptr inbounds %struct.radeon_tv_mode_constants, ptr %const_ptr.0.i, i32 0, i32 1
  %189 = ptrtoint ptr %ver_resolution to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %ver_resolution, align 2
  %conv368 = zext i16 %190 to i32
  %sub369 = add nsw i32 %conv368, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %191 = tail call i32 @llvm.bswap.i32(i32 %sub369) #4
  %192 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i622 = getelementptr i8, ptr %193, i32 2084
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i622, i32 %191) #4, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %194 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i624 = getelementptr i8, ptr %195, i32 2092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i624, i32 %tv_ftotal.0) #4, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %196 = tail call i32 @llvm.bswap.i32(i32 %tv_vscaler_cntl1.1) #4
  %197 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i626 = getelementptr i8, ptr %198, i32 2124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i626, i32 %196) #4, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %199 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i628 = getelementptr i8, ptr %200, i32 2132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i628, i32 %53) #4, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %201 = tail call i32 @llvm.bswap.i32(i32 %or160) #4
  %202 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i630 = getelementptr i8, ptr %203, i32 2136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i630, i32 %201) #4, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %204 = tail call i32 @llvm.bswap.i32(i32 %or167) #4
  %205 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i632 = getelementptr i8, ptr %206, i32 2140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i632, i32 %204) #4, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %207 = tail call i32 @llvm.bswap.i32(i32 %or146) #4
  %208 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i634 = getelementptr i8, ptr %209, i32 2144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i634, i32 %207) #4, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %210 = tail call i32 @llvm.bswap.i32(i32 %or296) #4
  %211 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i636 = getelementptr i8, ptr %212, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i636, i32 %210) #4, !srcloc !36
  %213 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %encoder, align 4
  %dev_private.i637 = getelementptr inbounds %struct.drm_device, ptr %214, i32 0, i32 5
  %215 = ptrtoint ptr %dev_private.i637 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %dev_private.i637, align 4
  %217 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %enc_priv, align 4
  %frestart.i639 = getelementptr inbounds %struct.radeon_encoder_tv_dac, ptr %218, i32 0, i32 9, i32 4
  %219 = ptrtoint ptr %frestart.i639 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %frestart.i639, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %221 = tail call i32 @llvm.bswap.i32(i32 %220) #4
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %216, i32 0, i32 31
  %222 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %223, i32 2100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %221) #4, !srcloc !36
  %hrestart.i640 = getelementptr inbounds %struct.radeon_encoder_tv_dac, ptr %218, i32 0, i32 9, i32 2
  %224 = ptrtoint ptr %hrestart.i640 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %hrestart.i640, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %226 = tail call i32 @llvm.bswap.i32(i32 %225) #4
  %227 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %228, i32 2104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 %226) #4, !srcloc !36
  %vrestart.i641 = getelementptr inbounds %struct.radeon_encoder_tv_dac, ptr %218, i32 0, i32 9, i32 3
  %229 = ptrtoint ptr %vrestart.i641 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %vrestart.i641, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %231 = tail call i32 @llvm.bswap.i32(i32 %230) #4
  %232 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %233, i32 2108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %231) #4, !srcloc !36
  %234 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %encoder, align 4
  %dev_private.i642 = getelementptr inbounds %struct.drm_device, ptr %235, i32 0, i32 5
  %236 = ptrtoint ptr %dev_private.i642 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %dev_private.i642, align 4
  %238 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %enc_priv, align 4
  %tv.i = getelementptr inbounds %struct.radeon_encoder_tv_dac, ptr %239, i32 0, i32 9
  %240 = ptrtoint ptr %tv.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %tv.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %242 = tail call i32 @llvm.bswap.i32(i32 %241) #4
  %rmmio.i.i644 = getelementptr inbounds %struct.radeon_device, ptr %237, i32 0, i32 31
  %243 = ptrtoint ptr %rmmio.i.i644 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %rmmio.i.i644, align 4
  %add.ptr.i.i645 = getelementptr i8, ptr %244, i32 2220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i645, i32 %242) #4, !srcloc !36
  %245 = ptrtoint ptr %tv.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %tv.i, align 4
  %and.i.i = lshr i32 %246, 25
  %shr.i.i = and i32 %and.i.i, 3
  %247 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %247, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %shr.i.i, label %sw.default.i.i [
    i32 0, label %radeon_legacy_tv_init_restarts.exit.radeon_get_htiming_tables_addr.exit.i_crit_edge
    i32 1, label %sw.bb1.i.i
    i32 2, label %sw.bb4.i.i
  ]

radeon_legacy_tv_init_restarts.exit.radeon_get_htiming_tables_addr.exit.i_crit_edge: ; preds = %radeon_legacy_tv_init_restarts.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %radeon_get_htiming_tables_addr.exit.i

sw.bb1.i.i:                                       ; preds = %radeon_legacy_tv_init_restarts.exit
  call void @__sanitizer_cov_trace_pc() #6
  %248 = trunc i32 %246 to i16
  %249 = lshr i16 %248, 7
  %conv.i.i = and i16 %249, 510
  br label %radeon_get_htiming_tables_addr.exit.i

sw.bb4.i.i:                                       ; preds = %radeon_legacy_tv_init_restarts.exit
  call void @__sanitizer_cov_trace_pc() #6
  %250 = lshr i32 %246, 15
  %251 = trunc i32 %250 to i16
  %conv8.i.i = and i16 %251, 510
  br label %radeon_get_htiming_tables_addr.exit.i

sw.default.i.i:                                   ; preds = %radeon_legacy_tv_init_restarts.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %radeon_get_htiming_tables_addr.exit.i

radeon_get_htiming_tables_addr.exit.i:            ; preds = %sw.default.i.i, %sw.bb4.i.i, %sw.bb1.i.i, %radeon_legacy_tv_init_restarts.exit.radeon_get_htiming_tables_addr.exit.i_crit_edge
  %h_table.0.i.i = phi i16 [ 0, %sw.default.i.i ], [ %conv8.i.i, %sw.bb4.i.i ], [ %conv.i.i, %sw.bb1.i.i ], [ 511, %radeon_legacy_tv_init_restarts.exit.radeon_get_htiming_tables_addr.exit.i_crit_edge ]
  %and.i86.i = lshr i32 %246, 27
  %shr.i87.i = and i32 %and.i86.i, 3
  %252 = zext i32 %shr.i87.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %252, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %shr.i87.i, label %radeon_get_htiming_tables_addr.exit.i.radeon_get_vtiming_tables_addr.exit.i_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb3.i.i
    i32 2, label %sw.bb9.i.i
  ]

radeon_get_htiming_tables_addr.exit.i.radeon_get_vtiming_tables_addr.exit.i_crit_edge: ; preds = %radeon_get_htiming_tables_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %radeon_get_vtiming_tables_addr.exit.i

sw.bb.i.i:                                        ; preds = %radeon_get_htiming_tables_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %tv_uv_adr.tr.i.i = trunc i32 %246 to i16
  %253 = shl i16 %tv_uv_adr.tr.i.i, 1
  %254 = and i16 %253, 510
  %conv.i88.i = or i16 %254, 1
  br label %radeon_get_vtiming_tables_addr.exit.i

sw.bb3.i.i:                                       ; preds = %radeon_get_htiming_tables_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %255 = trunc i32 %246 to i16
  %256 = lshr i16 %255, 7
  %conv8.i89.i = or i16 %256, 1
  br label %radeon_get_vtiming_tables_addr.exit.i

sw.bb9.i.i:                                       ; preds = %radeon_get_htiming_tables_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %257 = lshr i32 %246, 15
  %258 = trunc i32 %257 to i16
  %259 = and i16 %258, 510
  %conv14.i.i = or i16 %259, 1
  br label %radeon_get_vtiming_tables_addr.exit.i

radeon_get_vtiming_tables_addr.exit.i:            ; preds = %sw.bb9.i.i, %sw.bb3.i.i, %sw.bb.i.i, %radeon_get_htiming_tables_addr.exit.i.radeon_get_vtiming_tables_addr.exit.i_crit_edge
  %v_table.0.i.i = phi i16 [ %conv14.i.i, %sw.bb9.i.i ], [ %conv8.i89.i, %sw.bb3.i.i ], [ %conv.i88.i, %sw.bb.i.i ], [ 0, %radeon_get_htiming_tables_addr.exit.i.radeon_get_vtiming_tables_addr.exit.i_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %radeon_get_vtiming_tables_addr.exit.i
  %i.091.i = phi i32 [ 0, %radeon_get_vtiming_tables_addr.exit.i ], [ %add25.i, %for.inc.i.for.body.i_crit_edge ]
  %h_table.090.i = phi i16 [ %h_table.0.i.i, %radeon_get_vtiming_tables_addr.exit.i ], [ %dec.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i646 = getelementptr %struct.radeon_encoder_tv_dac, ptr %239, i32 0, i32 9, i32 5, i32 %i.091.i
  %260 = ptrtoint ptr %arrayidx.i646 to i32
  call void @__asan_load2_noabort(i32 %260)
  %261 = load i16, ptr %arrayidx.i646, align 2
  %conv.i647 = zext i16 %261 to i32
  %shl.i = shl nuw nsw i32 %conv.i647, 14
  %add.i648 = or i32 %i.091.i, 1
  %arrayidx10.i = getelementptr %struct.radeon_encoder_tv_dac, ptr %239, i32 0, i32 9, i32 5, i32 %add.i648
  %262 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load2_noabort(i32 %262)
  %263 = load i16, ptr %arrayidx10.i, align 2
  %conv11.i = zext i16 %263 to i32
  %or.i649 = or i32 %shl.i, %conv11.i
  tail call fastcc void @radeon_legacy_tv_write_fifo(ptr noundef %encoder, i16 noundef zeroext %h_table.090.i, i32 noundef %or.i649) #4
  %264 = ptrtoint ptr %arrayidx.i646 to i32
  call void @__asan_load2_noabort(i32 %264)
  %265 = load i16, ptr %arrayidx.i646, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %265)
  %cmp16.i = icmp eq i16 %265, 0
  br i1 %cmp16.i, label %for.body.i.for.body29.i.preheader_crit_edge, label %lor.lhs.false.i

for.body.i.for.body29.i.preheader_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body29.i.preheader

lor.lhs.false.i:                                  ; preds = %for.body.i
  %266 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load2_noabort(i32 %266)
  %267 = load i16, ptr %arrayidx10.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %267)
  %cmp23.i = icmp eq i16 %267, 0
  br i1 %cmp23.i, label %lor.lhs.false.i.for.body29.i.preheader_crit_edge, label %for.inc.i

lor.lhs.false.i.for.body29.i.preheader_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body29.i.preheader

for.inc.i:                                        ; preds = %lor.lhs.false.i
  %add25.i = add nuw nsw i32 %i.091.i, 2
  %dec.i = add nsw i16 %h_table.090.i, -1
  %cmp.i650 = icmp ult i32 %i.091.i, 30
  br i1 %cmp.i650, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.body29.i.preheader_crit_edge

for.inc.i.for.body29.i.preheader_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body29.i.preheader

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.body29.i.preheader:                           ; preds = %for.inc.i.for.body29.i.preheader_crit_edge, %lor.lhs.false.i.for.body29.i.preheader_crit_edge, %for.body.i.for.body29.i.preheader_crit_edge
  br label %for.body29.i

for.body29.i:                                     ; preds = %for.inc56.i.for.body29.i_crit_edge, %for.body29.i.preheader
  %i.193.i = phi i32 [ %add57.i, %for.inc56.i.for.body29.i_crit_edge ], [ 0, %for.body29.i.preheader ]
  %v_table.092.i = phi i16 [ %inc.i, %for.inc56.i.for.body29.i_crit_edge ], [ %v_table.0.i.i, %for.body29.i.preheader ]
  %add31.i = or i32 %i.193.i, 1
  %arrayidx32.i = getelementptr %struct.radeon_encoder_tv_dac, ptr %239, i32 0, i32 9, i32 6, i32 %add31.i
  %268 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load2_noabort(i32 %268)
  %269 = load i16, ptr %arrayidx32.i, align 2
  %conv33.i = zext i16 %269 to i32
  %shl34.i = shl nuw nsw i32 %conv33.i, 14
  %arrayidx37.i = getelementptr %struct.radeon_encoder_tv_dac, ptr %239, i32 0, i32 9, i32 6, i32 %i.193.i
  %270 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load2_noabort(i32 %270)
  %271 = load i16, ptr %arrayidx37.i, align 2
  %conv38.i = zext i16 %271 to i32
  %or39.i = or i32 %shl34.i, %conv38.i
  tail call fastcc void @radeon_legacy_tv_write_fifo(ptr noundef %encoder, i16 noundef zeroext %v_table.092.i, i32 noundef %or39.i) #4
  %272 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load2_noabort(i32 %272)
  %273 = load i16, ptr %arrayidx37.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %273)
  %cmp44.i = icmp eq i16 %273, 0
  br i1 %cmp44.i, label %for.body29.i.cleanup_crit_edge, label %lor.lhs.false46.i

for.body29.i.cleanup_crit_edge:                   ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false46.i:                                ; preds = %for.body29.i
  %274 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load2_noabort(i32 %274)
  %275 = load i16, ptr %arrayidx32.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %275)
  %cmp52.i = icmp eq i16 %275, 0
  br i1 %cmp52.i, label %lor.lhs.false46.i.cleanup_crit_edge, label %for.inc56.i

lor.lhs.false46.i.cleanup_crit_edge:              ; preds = %lor.lhs.false46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc56.i:                                      ; preds = %lor.lhs.false46.i
  %add57.i = add nuw nsw i32 %i.193.i, 2
  %inc.i = add nuw nsw i16 %v_table.092.i, 1
  %cmp27.i = icmp ult i32 %i.193.i, 30
  br i1 %cmp27.i, label %for.inc56.i.for.body29.i_crit_edge, label %for.inc56.i.cleanup_crit_edge

for.inc56.i.cleanup_crit_edge:                    ; preds = %for.inc56.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc56.i.for.body29.i_crit_edge:               ; preds = %for.inc56.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body29.i

cleanup:                                          ; preds = %for.inc56.i.cleanup_crit_edge, %lor.lhs.false46.i.cleanup_crit_edge, %for.body29.i.cleanup_crit_edge
  %or295 = or i32 %tv_master_cntl.1, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %276 = tail call i32 @llvm.bswap.i32(i32 %or295) #4
  %277 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i652 = getelementptr i8, ptr %278, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i652, i32 %276) #4, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %279 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i654 = getelementptr i8, ptr %280, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i654, i32 671088640) #4, !srcloc !36
  %281 = ptrtoint ptr %timing_cntl to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %timing_cntl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %283 = tail call i32 @llvm.bswap.i32(i32 %282) #4
  %284 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i656 = getelementptr i8, ptr %285, i32 2128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i656, i32 %283) #4, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %286 = tail call i32 @llvm.bswap.i32(i32 %tv_modulator_cntl1.0) #4
  %287 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i658 = getelementptr i8, ptr %288, i32 2160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i658, i32 %286) #4, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %289 = tail call i32 @llvm.bswap.i32(i32 %tv_modulator_cntl2.0) #4
  %290 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i660 = getelementptr i8, ptr %291, i32 2164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i660, i32 %289) #4, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %292 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i662 = getelementptr i8, ptr %293, i32 2184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i662, i32 251658240) #4, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %294 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i664 = getelementptr i8, ptr %295, i32 2192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i664, i32 0) #4, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %296 = tail call i32 @llvm.bswap.i32(i32 %tv_master_cntl.1) #4
  %297 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i666 = getelementptr i8, ptr %298, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i666, i32 %296) #4, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %299 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i668 = getelementptr i8, ptr %300, i32 2152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i668, i32 -16417023) #4, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %301 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i670 = getelementptr i8, ptr %302, i32 2156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i670, i32 65537) #4, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %303 = tail call i32 @llvm.bswap.i32(i32 %tv_dac_cntl.1) #4
  %304 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i672 = getelementptr i8, ptr %305, i32 2188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i672, i32 %303) #4, !srcloc !36
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_wait_pll_lock(ptr nocapture noundef readonly %encoder, i32 noundef %n_tests, i32 noundef %n_wait_loops, i32 noundef %cnt_threshold) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 292
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %7 = and i32 %6, -10420225
  %8 = or i32 %7, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %9 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i40 = getelementptr i8, ptr %10, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 %8) #4, !srcloc !36
  %pll_rreg = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 34
  %11 = ptrtoint ptr %pll_rreg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pll_rreg, align 8
  %call2 = tail call i32 %12(ptr noundef %3, i32 noundef 19) #4
  %pll_wreg = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 35
  %13 = ptrtoint ptr %pll_wreg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pll_wreg, align 4
  %and3 = and i32 %call2, -513
  tail call void %14(ptr noundef %3, i32 noundef 19, i32 noundef %and3) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  tail call void @arm_heavy_mb() #4
  %15 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 19) #4, !srcloc !38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_tests)
  %cmp47.not = icmp eq i32 %n_tests, 0
  br i1 %cmp47.not, label %entry.for.end20_crit_edge, label %do.body4.lr.ph

entry.for.end20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end20

do.body4.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_wait_loops)
  %cmp1045.not = icmp eq i32 %n_wait_loops, 0
  br label %do.body4

do.body4:                                         ; preds = %for.inc18.do.body4_crit_edge, %do.body4.lr.ph
  %i.048 = phi i32 [ 0, %do.body4.lr.ph ], [ %inc19, %for.inc18.do.body4_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  tail call void @arm_heavy_mb() #4
  %17 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmmio.i, align 4
  %add.ptr8 = getelementptr i8, ptr %18, i32 15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8, i8 0) #4, !srcloc !38
  br i1 %cmp1045.not, label %do.body4.for.inc18_crit_edge, label %do.body4.for.body11_crit_edge

do.body4.for.body11_crit_edge:                    ; preds = %do.body4
  br label %for.body11

do.body4.for.inc18_crit_edge:                     ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc18

for.body11:                                       ; preds = %for.body11.for.body11_crit_edge, %do.body4.for.body11_crit_edge
  %j.046 = phi i32 [ %inc, %for.body11.for.body11_crit_edge ], [ 0, %do.body4.for.body11_crit_edge ]
  %19 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rmmio.i, align 4
  %add.ptr13 = getelementptr i8, ptr %20, i32 15
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr13) #4, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !41
  %conv = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %cnt_threshold)
  %cmp16.not = icmp ult i32 %conv, %cnt_threshold
  %inc = add nuw i32 %j.046, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %n_wait_loops)
  %cmp10 = icmp ult i32 %inc, %n_wait_loops
  %or.cond = select i1 %cmp16.not, i1 %cmp10, i1 false
  br i1 %or.cond, label %for.body11.for.body11_crit_edge, label %for.body11.for.inc18_crit_edge

for.body11.for.inc18_crit_edge:                   ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc18

for.body11.for.body11_crit_edge:                  ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body11

for.inc18:                                        ; preds = %for.body11.for.inc18_crit_edge, %do.body4.for.inc18_crit_edge
  %inc19 = add nuw i32 %i.048, 1
  %exitcond.not = icmp eq i32 %inc19, %n_tests
  br i1 %exitcond.not, label %for.inc18.for.end20_crit_edge, label %for.inc18.do.body4_crit_edge

for.inc18.do.body4_crit_edge:                     ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body4

for.inc18.for.end20_crit_edge:                    ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end20

for.end20:                                        ; preds = %for.inc18.for.end20_crit_edge, %entry.for.end20_crit_edge
  %22 = ptrtoint ptr %pll_wreg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pll_wreg, align 4
  tail call void %23(ptr noundef %3, i32 noundef 19, i32 noundef %call2) #4
  %24 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i42 = getelementptr i8, ptr %25, i32 292
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %27 = and i32 %26, -2031617
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %28 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i44 = getelementptr i8, ptr %29, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 %27) #4, !srcloc !36
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @radeon_legacy_tv_adjust_crtc_reg(ptr nocapture noundef readonly %encoder, ptr nocapture noundef writeonly %h_total_disp, ptr nocapture noundef %h_sync_strt_wid, ptr nocapture noundef writeonly %v_total_disp, ptr nocapture noundef %v_sync_strt_wid) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %enc_priv.i = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 12
  %4 = ptrtoint ptr %enc_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enc_priv.i, align 4
  %crtc.i = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %6 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc.i, align 4
  %crtc_id.i = getelementptr inbounds %struct.radeon_crtc, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %crtc_id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %crtc_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i = icmp eq i32 %9, 1
  %p2pll.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 41, i32 1
  %clock3.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 41
  %pll.0.i = select i1 %cmp.i, ptr %p2pll.i, ptr %clock3.i
  %tv_std.i = getelementptr inbounds %struct.radeon_encoder_tv_dac, ptr %5, i32 0, i32 8
  %10 = ptrtoint ptr %tv_std.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tv_std.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %11, label %if.else22.i [
    i32 0, label %entry.if.then15.i_crit_edge
    i32 4, label %entry.if.then15.i_crit_edge44
    i32 2, label %entry.if.then15.i_crit_edge45
  ]

entry.if.then15.i_crit_edge45:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15.i

entry.if.then15.i_crit_edge44:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15.i

entry.if.then15.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15.i

if.then15.i:                                      ; preds = %entry.if.then15.i_crit_edge, %entry.if.then15.i_crit_edge44, %entry.if.then15.i_crit_edge45
  %13 = ptrtoint ptr %pll.0.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pll.0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2700, i32 %14)
  %cmp17.i = icmp eq i32 %14, 2700
  %available_tv_modes..i = select i1 %cmp17.i, ptr @available_tv_modes, ptr getelementptr inbounds ([4 x %struct.radeon_tv_mode_constants], ptr @available_tv_modes, i32 0, i32 2)
  br label %cleanup

if.else22.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %pll.0.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pll.0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2700, i32 %16)
  %cmp24.i = icmp eq i32 %16, 2700
  %..i = select i1 %cmp24.i, ptr getelementptr inbounds ([4 x %struct.radeon_tv_mode_constants], ptr @available_tv_modes, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.radeon_tv_mode_constants], ptr @available_tv_modes, i32 0, i32 3)
  br label %cleanup

cleanup:                                          ; preds = %if.else22.i, %if.then15.i
  %const_ptr.0.i = phi ptr [ %available_tv_modes..i, %if.then15.i ], [ %..i, %if.else22.i ]
  %17 = ptrtoint ptr %const_ptr.0.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %const_ptr.0.i, align 4
  %19 = lshr i16 %18, 3
  %div = zext i16 %19 to i32
  %sub = shl nuw nsw i32 %div, 16
  %shl = add nsw i32 %sub, -65536
  %hor_total = getelementptr inbounds %struct.radeon_tv_mode_constants, ptr %const_ptr.0.i, i32 0, i32 3
  %20 = ptrtoint ptr %hor_total to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %hor_total, align 4
  %22 = lshr i16 %21, 3
  %div3 = zext i16 %22 to i32
  %sub4 = add nsw i32 %div3, -1
  %or = or i32 %shl, %sub4
  %23 = ptrtoint ptr %h_total_disp to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or, ptr %h_total_disp, align 4
  %24 = ptrtoint ptr %h_sync_strt_wid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %h_sync_strt_wid, align 4
  %and = and i32 %25, -8192
  %hor_syncstart = getelementptr inbounds %struct.radeon_tv_mode_constants, ptr %const_ptr.0.i, i32 0, i32 6
  %26 = ptrtoint ptr %hor_syncstart to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %hor_syncstart, align 2
  %conv6 = zext i16 %27 to i32
  %div743 = and i32 %conv6, 65528
  %shl9 = add nsw i32 %div743, -8
  %and12 = and i32 %conv6, 7
  %or13 = or i32 %shl9, %and12
  %or14 = or i32 %or13, %and
  store i32 %or14, ptr %h_sync_strt_wid, align 4
  %ver_resolution = getelementptr inbounds %struct.radeon_tv_mode_constants, ptr %const_ptr.0.i, i32 0, i32 1
  %28 = ptrtoint ptr %ver_resolution to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %ver_resolution, align 2
  %conv15 = zext i16 %29 to i32
  %sub16 = shl nuw i32 %conv15, 16
  %shl17 = add i32 %sub16, -65536
  %ver_total = getelementptr inbounds %struct.radeon_tv_mode_constants, ptr %const_ptr.0.i, i32 0, i32 4
  %30 = ptrtoint ptr %ver_total to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %ver_total, align 2
  %conv18 = zext i16 %31 to i32
  %sub19 = add nsw i32 %conv18, -1
  %or21 = or i32 %shl17, %sub19
  %32 = ptrtoint ptr %v_total_disp to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or21, ptr %v_total_disp, align 4
  %33 = ptrtoint ptr %v_sync_strt_wid to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %v_sync_strt_wid, align 4
  %and22 = and i32 %34, -2048
  %ver_syncstart = getelementptr inbounds %struct.radeon_tv_mode_constants, ptr %const_ptr.0.i, i32 0, i32 7
  %35 = ptrtoint ptr %ver_syncstart to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %ver_syncstart, align 4
  %conv23 = zext i16 %36 to i32
  %sub24 = add nsw i32 %conv23, -1
  %or26 = or i32 %sub24, %and22
  store i32 %or26, ptr %v_sync_strt_wid, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @radeon_legacy_tv_adjust_pll1(ptr nocapture noundef readonly %encoder, ptr nocapture noundef writeonly %htotal_cntl, ptr nocapture noundef writeonly %ppll_ref_div, ptr nocapture noundef writeonly %ppll_div_3, ptr nocapture noundef %pixclks_cntl) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %enc_priv.i = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 12
  %4 = ptrtoint ptr %enc_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enc_priv.i, align 4
  %crtc.i = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %6 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc.i, align 4
  %crtc_id.i = getelementptr inbounds %struct.radeon_crtc, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %crtc_id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %crtc_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i = icmp eq i32 %9, 1
  %p2pll.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 41, i32 1
  %clock3.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 41
  %pll.0.i = select i1 %cmp.i, ptr %p2pll.i, ptr %clock3.i
  %tv_std.i = getelementptr inbounds %struct.radeon_encoder_tv_dac, ptr %5, i32 0, i32 8
  %10 = ptrtoint ptr %tv_std.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tv_std.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %11, label %if.else22.i [
    i32 0, label %entry.if.then15.i_crit_edge
    i32 4, label %entry.if.then15.i_crit_edge15
    i32 2, label %entry.if.then15.i_crit_edge16
  ]

entry.if.then15.i_crit_edge16:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15.i

entry.if.then15.i_crit_edge15:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15.i

entry.if.then15.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15.i

if.then15.i:                                      ; preds = %entry.if.then15.i_crit_edge, %entry.if.then15.i_crit_edge15, %entry.if.then15.i_crit_edge16
  %13 = ptrtoint ptr %pll.0.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pll.0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2700, i32 %14)
  %cmp17.i = icmp eq i32 %14, 2700
  %available_tv_modes..i = select i1 %cmp17.i, ptr @available_tv_modes, ptr getelementptr inbounds ([4 x %struct.radeon_tv_mode_constants], ptr @available_tv_modes, i32 0, i32 2)
  br label %if.end

if.else22.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %pll.0.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pll.0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2700, i32 %16)
  %cmp24.i = icmp eq i32 %16, 2700
  %..i = select i1 %cmp24.i, ptr getelementptr inbounds ([4 x %struct.radeon_tv_mode_constants], ptr @available_tv_modes, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.radeon_tv_mode_constants], ptr @available_tv_modes, i32 0, i32 3)
  br label %if.end

if.end:                                           ; preds = %if.else22.i, %if.then15.i
  %const_ptr.0.i = phi ptr [ %available_tv_modes..i, %if.then15.i ], [ %..i, %if.else22.i ]
  %hor_total = getelementptr inbounds %struct.radeon_tv_mode_constants, ptr %const_ptr.0.i, i32 0, i32 3
  %17 = ptrtoint ptr %hor_total to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %hor_total, align 4
  %19 = and i16 %18, 7
  %and = zext i16 %19 to i32
  %or = or i32 %and, 268435456
  %20 = ptrtoint ptr %htotal_cntl to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or, ptr %htotal_cntl, align 4
  %crtcPLL_M = getelementptr inbounds %struct.radeon_tv_mode_constants, ptr %const_ptr.0.i, i32 0, i32 10
  %21 = ptrtoint ptr %crtcPLL_M to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %crtcPLL_M, align 2
  %conv1 = zext i8 %22 to i32
  %23 = ptrtoint ptr %ppll_ref_div to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv1, ptr %ppll_ref_div, align 4
  %crtcPLL_N = getelementptr inbounds %struct.radeon_tv_mode_constants, ptr %const_ptr.0.i, i32 0, i32 9
  %24 = ptrtoint ptr %crtcPLL_N to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %crtcPLL_N, align 4
  %crtcPLL_post_div = getelementptr inbounds %struct.radeon_tv_mode_constants, ptr %const_ptr.0.i, i32 0, i32 11
  %26 = ptrtoint ptr %crtcPLL_post_div to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %crtcPLL_post_div, align 1
  %switch.tableidx = add i8 %27, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %switch.tableidx)
  %28 = icmp ult i8 %switch.tableidx, 12
  br i1 %28, label %switch.lookup, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %29 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [12 x i32], ptr @switch.table.radeon_legacy_tv_adjust_pll1, i32 0, i32 %29
  %30 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %30)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.end.cleanup_crit_edge
  %post_div.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 327680, %if.end.cleanup_crit_edge ]
  %31 = and i16 %25, 2047
  %and3 = zext i16 %31 to i32
  %or6 = or i32 %post_div.0.i, %and3
  %32 = ptrtoint ptr %ppll_div_3 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or6, ptr %ppll_div_3, align 4
  %33 = ptrtoint ptr %pixclks_cntl to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pixclks_cntl, align 4
  %and7 = and i32 %34, -260
  %or8 = or i32 %and7, 3
  store i32 %or8, ptr %pixclks_cntl, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @radeon_legacy_tv_adjust_pll2(ptr nocapture noundef readonly %encoder, ptr nocapture noundef writeonly %htotal2_cntl, ptr nocapture noundef writeonly %p2pll_ref_div, ptr nocapture noundef writeonly %p2pll_div_0, ptr nocapture noundef %pixclks_cntl) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %enc_priv.i = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 12
  %4 = ptrtoint ptr %enc_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enc_priv.i, align 4
  %crtc.i = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %6 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc.i, align 4
  %crtc_id.i = getelementptr inbounds %struct.radeon_crtc, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %crtc_id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %crtc_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i = icmp eq i32 %9, 1
  %p2pll.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 41, i32 1
  %clock3.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 41
  %pll.0.i = select i1 %cmp.i, ptr %p2pll.i, ptr %clock3.i
  %tv_std.i = getelementptr inbounds %struct.radeon_encoder_tv_dac, ptr %5, i32 0, i32 8
  %10 = ptrtoint ptr %tv_std.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tv_std.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %11, label %if.else22.i [
    i32 0, label %entry.if.then15.i_crit_edge
    i32 4, label %entry.if.then15.i_crit_edge14
    i32 2, label %entry.if.then15.i_crit_edge15
  ]

entry.if.then15.i_crit_edge15:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15.i

entry.if.then15.i_crit_edge14:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15.i

entry.if.then15.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15.i

if.then15.i:                                      ; preds = %entry.if.then15.i_crit_edge, %entry.if.then15.i_crit_edge14, %entry.if.then15.i_crit_edge15
  %13 = ptrtoint ptr %pll.0.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pll.0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2700, i32 %14)
  %cmp17.i = icmp eq i32 %14, 2700
  %available_tv_modes..i = select i1 %cmp17.i, ptr @available_tv_modes, ptr getelementptr inbounds ([4 x %struct.radeon_tv_mode_constants], ptr @available_tv_modes, i32 0, i32 2)
  br label %if.end

if.else22.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %pll.0.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pll.0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2700, i32 %16)
  %cmp24.i = icmp eq i32 %16, 2700
  %..i = select i1 %cmp24.i, ptr getelementptr inbounds ([4 x %struct.radeon_tv_mode_constants], ptr @available_tv_modes, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.radeon_tv_mode_constants], ptr @available_tv_modes, i32 0, i32 3)
  br label %if.end

if.end:                                           ; preds = %if.else22.i, %if.then15.i
  %const_ptr.0.i = phi ptr [ %available_tv_modes..i, %if.then15.i ], [ %..i, %if.else22.i ]
  %hor_total = getelementptr inbounds %struct.radeon_tv_mode_constants, ptr %const_ptr.0.i, i32 0, i32 3
  %17 = ptrtoint ptr %hor_total to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %hor_total, align 4
  %19 = and i16 %18, 7
  %and = zext i16 %19 to i32
  %20 = ptrtoint ptr %htotal2_cntl to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and, ptr %htotal2_cntl, align 4
  %crtcPLL_M = getelementptr inbounds %struct.radeon_tv_mode_constants, ptr %const_ptr.0.i, i32 0, i32 10
  %21 = ptrtoint ptr %crtcPLL_M to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %crtcPLL_M, align 2
  %conv1 = zext i8 %22 to i32
  %23 = ptrtoint ptr %p2pll_ref_div to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv1, ptr %p2pll_ref_div, align 4
  %crtcPLL_N = getelementptr inbounds %struct.radeon_tv_mode_constants, ptr %const_ptr.0.i, i32 0, i32 9
  %24 = ptrtoint ptr %crtcPLL_N to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %crtcPLL_N, align 4
  %crtcPLL_post_div = getelementptr inbounds %struct.radeon_tv_mode_constants, ptr %const_ptr.0.i, i32 0, i32 11
  %26 = ptrtoint ptr %crtcPLL_post_div to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %crtcPLL_post_div, align 1
  %switch.tableidx = add i8 %27, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %switch.tableidx)
  %28 = icmp ult i8 %switch.tableidx, 12
  br i1 %28, label %switch.lookup, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %29 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [12 x i32], ptr @switch.table.radeon_legacy_tv_adjust_pll2, i32 0, i32 %29
  %30 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %30)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.end.cleanup_crit_edge
  %post_div.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 327680, %if.end.cleanup_crit_edge ]
  %31 = and i16 %25, 2047
  %and3 = zext i16 %31 to i32
  %or = or i32 %post_div.0.i, %and3
  %32 = ptrtoint ptr %p2pll_div_0 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or, ptr %p2pll_div_0, align 4
  %33 = ptrtoint ptr %pixclks_cntl to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pixclks_cntl, align 4
  %or7 = or i32 %34, 259
  store i32 %or7, ptr %pixclks_cntl, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_legacy_tv_write_fifo(ptr nocapture noundef readonly %radeon_encoder, i16 noundef zeroext %addr, i32 noundef %value) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %radeon_encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %radeon_encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %4 = tail call i32 @llvm.bswap.i32(i32 %value) #4
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %5 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 2116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #4, !srcloc !36
  %conv = zext i16 %addr to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %7 = tail call i32 @llvm.bswap.i32(i32 %conv) #4
  %8 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %9, i32 2120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 %7) #4, !srcloc !36
  %or = or i32 %conv, 16384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %10 = tail call i32 @llvm.bswap.i32(i32 %or) #4
  %11 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %12, i32 2120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 %10) #4, !srcloc !36
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %do.body.do.body_crit_edge ]
  %13 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %14, i32 2120
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %16 = and i32 %15, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp = icmp ne i32 %16, 0
  %inc = add nuw nsw i32 %i.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9999, i32 %i.0)
  %cmp4 = icmp ult i32 %i.0, 9999
  %or.cond = select i1 %cmp, i1 %cmp4, i1 false
  br i1 %or.cond, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %17 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %18, i32 2120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 0) #4, !srcloc !36
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @available_tv_modes, !1, !"available_tv_modes", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/radeon_legacy_tv.c", i32 172, i32 46}
!2 = distinct !{null, !3, !"SLOPE_limit", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/radeon_legacy_tv.c", i32 275, i32 13}
!4 = !{ptr @SLOPE_value, !5, !"SLOPE_value", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/radeon/radeon_legacy_tv.c", i32 274, i32 13}
!6 = !{ptr @YCOEF_EN_value, !7, !"YCOEF_EN_value", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/radeon/radeon_legacy_tv.c", i32 273, i32 13}
!8 = !{ptr @YCOEF_value, !9, !"YCOEF_value", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/radeon/radeon_legacy_tv.c", i32 272, i32 13}
!10 = !{ptr @hor_timing_NTSC, !11, !"hor_timing_NTSC", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/radeon/radeon_legacy_tv.c", i32 87, i32 23}
!12 = !{ptr @vert_timing_NTSC, !13, !"vert_timing_NTSC", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/radeon/radeon_legacy_tv.c", i32 108, i32 23}
!14 = !{ptr @hor_timing_PAL, !15, !"hor_timing_PAL", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/radeon/radeon_legacy_tv.c", i32 125, i32 23}
!16 = !{ptr @vert_timing_PAL, !17, !"vert_timing_PAL", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/radeon/radeon_legacy_tv.c", i32 146, i32 23}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/radeon/radeon_legacy_tv.c", i32 492, i32 2}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/radeon/radeon_legacy_tv.c", i32 501, i32 2}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/radeon/radeon_legacy_tv.c", i32 519, i32 2}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 4512434}
!34 = !{i64 2157431652}
!35 = !{i64 2157432059}
!36 = !{i64 4512016}
!37 = !{i64 2157582418}
!38 = !{i64 4511819}
!39 = !{i64 2157582761}
!40 = !{i64 4512214}
!41 = !{i64 2157583130}
