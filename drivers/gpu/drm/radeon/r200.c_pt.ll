; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/r200.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/r200.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.radeon_device = type { ptr, ptr, ptr, ptr, %struct.rw_semaphore, %union.radeon_asic_config, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i16, ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.radeon_clock, %struct.radeon_mc, %struct.radeon_gart, %struct.radeon_mode_info, %struct.radeon_scratch, %struct.radeon_doorbell, %struct.radeon_mman, [8 x %struct.radeon_fence_driver], %struct.wait_queue_head, i64, %struct.mutex, [8 x %struct.radeon_ring], i8, %struct.radeon_sa_manager, %struct.radeon_irq, ptr, %struct.radeon_gem, %struct.radeon_pm, %struct.radeon_uvd, %struct.radeon_vce, [8 x i32], %struct.radeon_wb, %struct.radeon_dummy_page, i8, i8, i8, i8, i8, i8, [8 x %struct.radeon_surface_reg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.r600_vram_scratch, i32, %struct.r600_ih, %struct.radeon_rlc, %struct.radeon_mec, %struct.delayed_work, %struct.work_struct, %struct.work_struct, i32, %struct.mutex, i8, i8, %struct.r600_audio, %struct.notifier_block, ptr, ptr, [16 x ptr], %struct.radeon_vm_manager, %struct.mutex, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.radeon_atif, %struct.radeon_atcs, %struct.mutex, i32, i32, %struct.dev_pm_domain, i8, i32, i64, i64 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.radeon_asic_config = type { %struct.cik_asic }
%struct.cik_asic = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i32], [16 x i32], i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
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
%struct.radeon_cs_parser = type { ptr, ptr, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, i32, ptr, ptr, ptr, ptr, %struct.radeon_ib, %struct.radeon_ib, ptr, i32, i32, i32, i32, i32, %struct.ww_acquire_ctx }
%struct.radeon_ib = type { ptr, i32, i64, ptr, i32, ptr, ptr, i8, %struct.radeon_sync }
%struct.radeon_sync = type { [4 x ptr], [8 x ptr], ptr }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16, i32, ptr, ptr, %struct.lockdep_map, i32, i32 }
%struct.radeon_cs_chunk = type { i32, ptr, ptr }
%struct.r100_cs_track = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x %struct.r100_cs_track_array], [4 x %struct.r100_cs_track_cb], %struct.r100_cs_track_cb, %struct.r100_cs_track_cb, [16 x %struct.r100_cs_track_texture], i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.r100_cs_track_array = type { ptr, i32 }
%struct.r100_cs_track_cb = type { ptr, i32, i32, i32 }
%struct.r100_cs_track_texture = type { ptr, [5 x %struct.r100_cs_cube_info], i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32 }
%struct.r100_cs_cube_info = type { ptr, i32, i32, i32 }
%struct.radeon_bo_list = type { ptr, %struct.ttm_validate_buffer, i64, i32, i32, i32 }
%struct.ttm_validate_buffer = type { %struct.list_head, ptr, i32 }

@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"radeon: moving bo (%d).\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"No reloc for ib[%d]=0x%04X\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Invalid color buffer format (%d) !\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"No support for depth xy offset in kms\0A\00", [57 x i8] zeroinitializer }, align 32
@r200_packet0_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 540, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013Forbidden register 0x%04X in cs at %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"r200_packet0_check\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/radeon/r200.c\00", [34 x i8] zeroinitializer }, align 32
@r200_packet0_check._entry_ptr = internal global ptr @r200_packet0_check._entry, section ".printk_index", align 4
@r200_reg_safe_bm = internal constant { [102 x i32], [104 x i8] } { [102 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 402595839, i32 -4, i32 -1, i32 -13566017, i32 -8, i32 -1008271361, i32 -2337, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1573345, i32 -268173313, i32 2130706431, i32 -32708, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -4146, i32 -65537, i32 -2, i32 34476016, i32 -3374083, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -262145, i32 -268632065, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -538976289, i32 1073602527, i32 -1, i32 -129, i32 -1, i32 16777215, i32 0, i32 0, i32 -1, i32 -1, i32 -1, i32 -1, i32 -449, i32 -17], [104 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"radeon: writing more dwords to the ring than expected!\0A\00", [40 x i8] zeroinitializer }, align 32
@switch.table.r200_packet0_check = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 2, i32 2, i32 1, i32 4, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2], [44 x i8] zeroinitializer }, align 32
@switch.table.r200_packet0_check.8 = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 2, i32 2, i32 4, i32 4, i32 4, i32 4, i32 2, i32 2, i32 2, i32 4, i32 2, i32 4], [48 x i8] zeroinitializer }, align 32
@switch.table.r200_packet0_check.9 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 2, i32 1, i32 0], [16 x i8] zeroinitializer }, align 32
@switch.table.r200_packet0_check.10 = internal constant { [24 x i32], [32 x i8] } { [24 x i32] [i32 1, i32 2, i32 1, i32 2, i32 2, i32 2, i32 4, i32 4, i32 1, i32 2, i32 2, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 4, i32 1, i32 4, i32 4], [32 x i8] zeroinitializer }, align 32
@switch.table.r200_packet0_check.11 = internal constant { [24 x i32], [32 x i8] } { [24 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [96 x i64] [i64 94, i64 32, i64 536, i64 5160, i64 5164, i64 7204, i64 7208, i64 7212, i64 7224, i64 7228, i64 7232, i64 7236, i64 7240, i64 8324, i64 8328, i64 8332, i64 8460, i64 11264, i64 11268, i64 11272, i64 11276, i64 11280, i64 11288, i64 11292, i64 11296, i64 11300, i64 11304, i64 11308, i64 11312, i64 11320, i64 11324, i64 11328, i64 11332, i64 11336, i64 11340, i64 11344, i64 11352, i64 11356, i64 11360, i64 11364, i64 11368, i64 11372, i64 11376, i64 11384, i64 11388, i64 11392, i64 11396, i64 11400, i64 11404, i64 11408, i64 11416, i64 11420, i64 11424, i64 11428, i64 11432, i64 11436, i64 11440, i64 11448, i64 11452, i64 11520, i64 11524, i64 11528, i64 11532, i64 11536, i64 11540, i64 11544, i64 11548, i64 11552, i64 11556, i64 11560, i64 11564, i64 11568, i64 11572, i64 11576, i64 11580, i64 11584, i64 11588, i64 11592, i64 11596, i64 11600, i64 11604, i64 11608, i64 11612, i64 11616, i64 11620, i64 11624, i64 11628, i64 11632, i64 11636, i64 11640, i64 11644, i64 11648, i64 11652, i64 11656, i64 11660, i64 12948]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 6]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 6]
@__sancov_gen_cov_switch_values.14 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 101, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 166, i32 4 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 329, i32 4 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 334, i32 4 }
@___asan_gen_.34 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.44 = private constant [33 x i8] c"../drivers/gpu/drm/radeon/r200.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 540, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"r200_reg_safe_bm\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [41 x i8] c"./drivers/gpu/drm/radeon/r200_reg_safe.h\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 1, i32 23 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [35 x i8] c"../drivers/gpu/drm/radeon/radeon.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 2721, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [32 x i8] c"switch.table.r200_packet0_check\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [34 x i8] c"switch.table.r200_packet0_check.8\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [34 x i8] c"switch.table.r200_packet0_check.9\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [35 x i8] c"switch.table.r200_packet0_check.10\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [35 x i8] c"switch.table.r200_packet0_check.11\00", align 1
@llvm.compiler.used = appending global [16 x ptr] [ptr @r200_packet0_check._entry, ptr @r200_packet0_check._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @r200_reg_safe_bm, ptr @.str.7, ptr @switch.table.r200_packet0_check, ptr @switch.table.r200_packet0_check.8, ptr @switch.table.r200_packet0_check.9, ptr @switch.table.r200_packet0_check.10, ptr @switch.table.r200_packet0_check.11], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r200_packet0_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r200_reg_safe_bm to i32), i32 408, i32 512, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.r200_packet0_check to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.r200_packet0_check.8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.r200_packet0_check.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.r200_packet0_check.10 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.r200_packet0_check.11 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @r200_copy_dma(ptr noundef %rdev, i64 noundef %src_offset, i64 noundef %dst_offset, i32 noundef %num_gpu_pages, ptr nocapture noundef readnone %resv) local_unnamed_addr #0 align 64 {
entry:
  %fence = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ring1 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fence) #7
  %0 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fence, align 4, !annotation !27
  %shl = shl i32 %num_gpu_pages, 12
  %sub = add i32 %shl, 2097150
  %div = udiv i32 %sub, 2097151
  %mul = shl nuw nsw i32 %div, 2
  %add2 = add nuw nsw i32 %mul, 64
  %call = tail call i32 @radeon_ring_lock(ptr noundef %rdev, ptr noundef %ring1, i32 noundef %add2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %call) #7
  %1 = inttoptr i32 %call to ptr
  br label %cleanup

if.end:                                           ; preds = %entry
  %count_dw.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 0, i32 11
  %2 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count_dw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp slt i32 %3, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.radeon_ring_write.exit_crit_edge

if.end.radeon_ring_write.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #7
  br label %radeon_ring_write.exit

radeon_ring_write.exit:                           ; preds = %if.then.i, %if.end.radeon_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 0, i32 2
  %4 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ring1.i, align 8
  %wptr.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 0, i32 7
  %6 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wptr.i, align 4
  %inc.i = add i32 %7, 1
  store i32 %inc.i, ptr %wptr.i, align 4
  %arrayidx.i = getelementptr i32, ptr %5, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 1480, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 0, i32 16
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
  %ring_free_dw.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 0, i32 10
  %14 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i = add i32 %15, -1
  store i32 %dec4.i, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i54 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i54, label %if.then.i55, label %radeon_ring_write.exit.radeon_ring_write.exit65_crit_edge

radeon_ring_write.exit.radeon_ring_write.exit65_crit_edge: ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit65

if.then.i55:                                      ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #7
  br label %radeon_ring_write.exit65

radeon_ring_write.exit65:                         ; preds = %if.then.i55, %radeon_ring_write.exit.radeon_ring_write.exit65_crit_edge
  %16 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ring1.i, align 8
  %18 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %wptr.i, align 4
  %inc.i58 = add i32 %19, 1
  store i32 %inc.i58, ptr %wptr.i, align 4
  %arrayidx.i59 = getelementptr i32, ptr %17, i32 %19
  %20 = ptrtoint ptr %arrayidx.i59 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 65536, ptr %arrayidx.i59, align 4
  %21 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ptr_mask.i, align 4
  %23 = load i32, ptr %wptr.i, align 4
  %and.i61 = and i32 %23, %22
  store i32 %and.i61, ptr %wptr.i, align 4
  %24 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %count_dw.i, align 4
  %dec.i62 = add i32 %25, -1
  store i32 %dec.i62, ptr %count_dw.i, align 4
  %26 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i64 = add i32 %27, -1
  store i32 %dec4.i64, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097151, i32 %sub)
  %28 = icmp ult i32 %sub, 2097151
  br i1 %28, label %radeon_ring_write.exit65.for.end_crit_edge, label %radeon_ring_write.exit65.for.body_crit_edge

radeon_ring_write.exit65.for.body_crit_edge:      ; preds = %radeon_ring_write.exit65
  br label %for.body

radeon_ring_write.exit65.for.end_crit_edge:       ; preds = %radeon_ring_write.exit65
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %radeon_ring_write.exit117.for.body_crit_edge, %radeon_ring_write.exit65.for.body_crit_edge
  %i.0148 = phi i32 [ %inc, %radeon_ring_write.exit117.for.body_crit_edge ], [ 0, %radeon_ring_write.exit65.for.body_crit_edge ]
  %size.0147 = phi i32 [ %sub7, %radeon_ring_write.exit117.for.body_crit_edge ], [ %shl, %radeon_ring_write.exit65.for.body_crit_edge ]
  %src_offset.addr.0146 = phi i64 [ %add11, %radeon_ring_write.exit117.for.body_crit_edge ], [ %src_offset, %radeon_ring_write.exit65.for.body_crit_edge ]
  %dst_offset.addr.0145 = phi i64 [ %add13, %radeon_ring_write.exit117.for.body_crit_edge ], [ %dst_offset, %radeon_ring_write.exit65.for.body_crit_edge ]
  %29 = tail call i32 @llvm.umin.i32(i32 %size.0147, i32 2097151)
  %sub7 = sub i32 %size.0147, %29
  %30 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %count_dw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp.i67 = icmp slt i32 %31, 1
  br i1 %cmp.i67, label %if.then.i68, label %for.body.radeon_ring_write.exit78_crit_edge

for.body.radeon_ring_write.exit78_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit78

if.then.i68:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #7
  br label %radeon_ring_write.exit78

radeon_ring_write.exit78:                         ; preds = %if.then.i68, %for.body.radeon_ring_write.exit78_crit_edge
  %32 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ring1.i, align 8
  %34 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %wptr.i, align 4
  %inc.i71 = add i32 %35, 1
  store i32 %inc.i71, ptr %wptr.i, align 4
  %arrayidx.i72 = getelementptr i32, ptr %33, i32 %35
  %36 = ptrtoint ptr %arrayidx.i72 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 131528, ptr %arrayidx.i72, align 4
  %37 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ptr_mask.i, align 4
  %39 = load i32, ptr %wptr.i, align 4
  %and.i74 = and i32 %39, %38
  store i32 %and.i74, ptr %wptr.i, align 4
  %40 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %count_dw.i, align 4
  %dec.i75 = add i32 %41, -1
  store i32 %dec.i75, ptr %count_dw.i, align 4
  %42 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i77 = add i32 %43, -1
  store i32 %dec4.i77, ptr %ring_free_dw.i, align 8
  %conv = trunc i64 %src_offset.addr.0146 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i75)
  %cmp.i80 = icmp slt i32 %dec.i75, 1
  br i1 %cmp.i80, label %if.then.i81, label %radeon_ring_write.exit78.radeon_ring_write.exit91_crit_edge

radeon_ring_write.exit78.radeon_ring_write.exit91_crit_edge: ; preds = %radeon_ring_write.exit78
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit91

if.then.i81:                                      ; preds = %radeon_ring_write.exit78
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #7
  br label %radeon_ring_write.exit91

radeon_ring_write.exit91:                         ; preds = %if.then.i81, %radeon_ring_write.exit78.radeon_ring_write.exit91_crit_edge
  %44 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ring1.i, align 8
  %46 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %wptr.i, align 4
  %inc.i84 = add i32 %47, 1
  store i32 %inc.i84, ptr %wptr.i, align 4
  %arrayidx.i85 = getelementptr i32, ptr %45, i32 %47
  %48 = ptrtoint ptr %arrayidx.i85 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 %conv, ptr %arrayidx.i85, align 4
  %49 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ptr_mask.i, align 4
  %51 = load i32, ptr %wptr.i, align 4
  %and.i87 = and i32 %51, %50
  store i32 %and.i87, ptr %wptr.i, align 4
  %52 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %count_dw.i, align 4
  %dec.i88 = add i32 %53, -1
  store i32 %dec.i88, ptr %count_dw.i, align 4
  %54 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i90 = add i32 %55, -1
  store i32 %dec4.i90, ptr %ring_free_dw.i, align 8
  %conv8 = trunc i64 %dst_offset.addr.0145 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i88)
  %cmp.i93 = icmp slt i32 %dec.i88, 1
  br i1 %cmp.i93, label %if.then.i94, label %radeon_ring_write.exit91.radeon_ring_write.exit104_crit_edge

radeon_ring_write.exit91.radeon_ring_write.exit104_crit_edge: ; preds = %radeon_ring_write.exit91
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit104

if.then.i94:                                      ; preds = %radeon_ring_write.exit91
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #7
  br label %radeon_ring_write.exit104

radeon_ring_write.exit104:                        ; preds = %if.then.i94, %radeon_ring_write.exit91.radeon_ring_write.exit104_crit_edge
  %56 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ring1.i, align 8
  %58 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %wptr.i, align 4
  %inc.i97 = add i32 %59, 1
  store i32 %inc.i97, ptr %wptr.i, align 4
  %arrayidx.i98 = getelementptr i32, ptr %57, i32 %59
  %60 = ptrtoint ptr %arrayidx.i98 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile i32 %conv8, ptr %arrayidx.i98, align 4
  %61 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ptr_mask.i, align 4
  %63 = load i32, ptr %wptr.i, align 4
  %and.i100 = and i32 %63, %62
  store i32 %and.i100, ptr %wptr.i, align 4
  %64 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %count_dw.i, align 4
  %dec.i101 = add i32 %65, -1
  store i32 %dec.i101, ptr %count_dw.i, align 4
  %66 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i103 = add i32 %67, -1
  store i32 %dec4.i103, ptr %ring_free_dw.i, align 8
  %or9 = or i32 %29, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i101)
  %cmp.i106 = icmp slt i32 %dec.i101, 1
  br i1 %cmp.i106, label %if.then.i107, label %radeon_ring_write.exit104.radeon_ring_write.exit117_crit_edge

radeon_ring_write.exit104.radeon_ring_write.exit117_crit_edge: ; preds = %radeon_ring_write.exit104
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit117

if.then.i107:                                     ; preds = %radeon_ring_write.exit104
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #7
  br label %radeon_ring_write.exit117

radeon_ring_write.exit117:                        ; preds = %if.then.i107, %radeon_ring_write.exit104.radeon_ring_write.exit117_crit_edge
  %68 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ring1.i, align 8
  %70 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %wptr.i, align 4
  %inc.i110 = add i32 %71, 1
  store i32 %inc.i110, ptr %wptr.i, align 4
  %arrayidx.i111 = getelementptr i32, ptr %69, i32 %71
  %72 = ptrtoint ptr %arrayidx.i111 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile i32 %or9, ptr %arrayidx.i111, align 4
  %73 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ptr_mask.i, align 4
  %75 = load i32, ptr %wptr.i, align 4
  %and.i113 = and i32 %75, %74
  store i32 %and.i113, ptr %wptr.i, align 4
  %76 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %count_dw.i, align 4
  %dec.i114 = add i32 %77, -1
  store i32 %dec.i114, ptr %count_dw.i, align 4
  %78 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i116 = add i32 %79, -1
  store i32 %dec4.i116, ptr %ring_free_dw.i, align 8
  %conv10 = zext i32 %29 to i64
  %add11 = add i64 %src_offset.addr.0146, %conv10
  %add13 = add i64 %dst_offset.addr.0145, %conv10
  %inc = add nuw nsw i32 %i.0148, 1
  %exitcond.not = icmp eq i32 %inc, %div
  br i1 %exitcond.not, label %for.endthread-pre-split, label %radeon_ring_write.exit117.for.body_crit_edge

radeon_ring_write.exit117.for.body_crit_edge:     ; preds = %radeon_ring_write.exit117
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.endthread-pre-split:                          ; preds = %radeon_ring_write.exit117
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %.pr = load i32, ptr %count_dw.i, align 4
  br label %for.end

for.end:                                          ; preds = %for.endthread-pre-split, %radeon_ring_write.exit65.for.end_crit_edge
  %81 = phi i32 [ %.pr, %for.endthread-pre-split ], [ %dec.i62, %radeon_ring_write.exit65.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %81)
  %cmp.i119 = icmp slt i32 %81, 1
  br i1 %cmp.i119, label %if.then.i120, label %for.end.radeon_ring_write.exit130_crit_edge

for.end.radeon_ring_write.exit130_crit_edge:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit130

if.then.i120:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #7
  br label %radeon_ring_write.exit130

radeon_ring_write.exit130:                        ; preds = %if.then.i120, %for.end.radeon_ring_write.exit130_crit_edge
  %82 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ring1.i, align 8
  %84 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %wptr.i, align 4
  %inc.i123 = add i32 %85, 1
  store i32 %inc.i123, ptr %wptr.i, align 4
  %arrayidx.i124 = getelementptr i32, ptr %83, i32 %85
  %86 = ptrtoint ptr %arrayidx.i124 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile i32 1480, ptr %arrayidx.i124, align 4
  %87 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %ptr_mask.i, align 4
  %89 = load i32, ptr %wptr.i, align 4
  %and.i126 = and i32 %89, %88
  store i32 %and.i126, ptr %wptr.i, align 4
  %90 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %count_dw.i, align 4
  %dec.i127 = add i32 %91, -1
  store i32 %dec.i127, ptr %count_dw.i, align 4
  %92 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i129 = add i32 %93, -1
  store i32 %dec4.i129, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i127)
  %cmp.i132 = icmp slt i32 %dec.i127, 1
  br i1 %cmp.i132, label %if.then.i133, label %radeon_ring_write.exit130.radeon_ring_write.exit143_crit_edge

radeon_ring_write.exit130.radeon_ring_write.exit143_crit_edge: ; preds = %radeon_ring_write.exit130
  call void @__sanitizer_cov_trace_pc() #9
  br label %radeon_ring_write.exit143

if.then.i133:                                     ; preds = %radeon_ring_write.exit130
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #7
  br label %radeon_ring_write.exit143

radeon_ring_write.exit143:                        ; preds = %if.then.i133, %radeon_ring_write.exit130.radeon_ring_write.exit143_crit_edge
  %94 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ring1.i, align 8
  %96 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %wptr.i, align 4
  %inc.i136 = add i32 %97, 1
  store i32 %inc.i136, ptr %wptr.i, align 4
  %arrayidx.i137 = getelementptr i32, ptr %95, i32 %97
  %98 = ptrtoint ptr %arrayidx.i137 to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile i32 512, ptr %arrayidx.i137, align 4
  %99 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %ptr_mask.i, align 4
  %101 = load i32, ptr %wptr.i, align 4
  %and.i139 = and i32 %101, %100
  store i32 %and.i139, ptr %wptr.i, align 4
  %102 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %count_dw.i, align 4
  %dec.i140 = add i32 %103, -1
  store i32 %dec.i140, ptr %count_dw.i, align 4
  %104 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i142 = add i32 %105, -1
  store i32 %dec4.i142, ptr %ring_free_dw.i, align 8
  %call14 = call i32 @radeon_fence_emit(ptr noundef %rdev, ptr noundef nonnull %fence, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end18, label %if.then16

if.then16:                                        ; preds = %radeon_ring_write.exit143
  call void @__sanitizer_cov_trace_pc() #9
  call void @radeon_ring_unlock_undo(ptr noundef %rdev, ptr noundef %ring1) #7
  %106 = inttoptr i32 %call14 to ptr
  br label %cleanup

if.end18:                                         ; preds = %radeon_ring_write.exit143
  call void @__sanitizer_cov_trace_pc() #9
  call void @radeon_ring_unlock_commit(ptr noundef %rdev, ptr noundef %ring1, i1 noundef zeroext false) #7
  %107 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %fence, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then16, %if.then
  %retval.0 = phi ptr [ %1, %if.then ], [ %106, %if.then16 ], [ %108, %if.end18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence) #7
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_ring_lock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_fence_emit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ring_unlock_undo(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ring_unlock_commit(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r200_packet0_check(ptr noundef %p, ptr noundef %pkt, i32 noundef %idx, i32 noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  %reloc = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reloc) #7
  %0 = ptrtoint ptr %reloc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %reloc, align 4, !annotation !27
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
  %spec.select653 = select i1 %tobool.not.i, ptr %2, ptr %8
  %retval.0.in.i = getelementptr i32, ptr %spec.select653, i32 %idx
  %9 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %retval.0.i = load i32, ptr %retval.0.in.i, align 4
  %10 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %do.end [
    i32 536, label %sw.bb
    i32 5164, label %entry.sw.bb4_crit_edge
    i32 5160, label %entry.sw.bb4_crit_edge682
    i32 7204, label %sw.bb9
    i32 7232, label %sw.bb16
    i32 11520, label %entry.sw.bb31_crit_edge
    i32 11544, label %entry.sw.bb31_crit_edge683
    i32 11568, label %entry.sw.bb31_crit_edge684
    i32 11592, label %entry.sw.bb31_crit_edge685
    i32 11616, label %entry.sw.bb31_crit_edge686
    i32 11640, label %entry.sw.bb31_crit_edge687
    i32 11524, label %entry.sw.bb62_crit_edge
    i32 11528, label %entry.sw.bb62_crit_edge688
    i32 11532, label %entry.sw.bb62_crit_edge689
    i32 11536, label %entry.sw.bb62_crit_edge690
    i32 11540, label %entry.sw.bb62_crit_edge691
    i32 11548, label %entry.sw.bb62_crit_edge692
    i32 11552, label %entry.sw.bb62_crit_edge693
    i32 11556, label %entry.sw.bb62_crit_edge694
    i32 11560, label %entry.sw.bb62_crit_edge695
    i32 11564, label %entry.sw.bb62_crit_edge696
    i32 11572, label %entry.sw.bb62_crit_edge697
    i32 11576, label %entry.sw.bb62_crit_edge698
    i32 11580, label %entry.sw.bb62_crit_edge699
    i32 11584, label %entry.sw.bb62_crit_edge700
    i32 11588, label %entry.sw.bb62_crit_edge701
    i32 11596, label %entry.sw.bb62_crit_edge702
    i32 11600, label %entry.sw.bb62_crit_edge703
    i32 11604, label %entry.sw.bb62_crit_edge704
    i32 11608, label %entry.sw.bb62_crit_edge705
    i32 11612, label %entry.sw.bb62_crit_edge706
    i32 11620, label %entry.sw.bb62_crit_edge707
    i32 11624, label %entry.sw.bb62_crit_edge708
    i32 11628, label %entry.sw.bb62_crit_edge709
    i32 11632, label %entry.sw.bb62_crit_edge710
    i32 11636, label %entry.sw.bb62_crit_edge711
    i32 11644, label %entry.sw.bb62_crit_edge712
    i32 11648, label %entry.sw.bb62_crit_edge713
    i32 11652, label %entry.sw.bb62_crit_edge714
    i32 11656, label %entry.sw.bb62_crit_edge715
    i32 11660, label %entry.sw.bb62_crit_edge716
    i32 7236, label %sw.bb89
    i32 7240, label %sw.bb93
    i32 7208, label %sw.bb124
    i32 7228, label %sw.bb129
    i32 7212, label %sw.bb154
    i32 12948, label %sw.bb165
    i32 7224, label %sw.bb174
    i32 8324, label %sw.bb185
    i32 8460, label %sw.bb186
    i32 8328, label %sw.bb188
    i32 8332, label %sw.bb190
    i32 11276, label %entry.sw.bb194_crit_edge
    i32 11308, label %entry.sw.bb194_crit_edge717
    i32 11340, label %entry.sw.bb194_crit_edge718
    i32 11372, label %entry.sw.bb194_crit_edge719
    i32 11404, label %entry.sw.bb194_crit_edge720
    i32 11436, label %entry.sw.bb194_crit_edge721
    i32 11280, label %entry.sw.bb207_crit_edge
    i32 11312, label %entry.sw.bb207_crit_edge722
    i32 11344, label %entry.sw.bb207_crit_edge723
    i32 11376, label %entry.sw.bb207_crit_edge724
    i32 11408, label %entry.sw.bb207_crit_edge725
    i32 11440, label %entry.sw.bb207_crit_edge726
    i32 11264, label %entry.sw.bb215_crit_edge
    i32 11296, label %entry.sw.bb215_crit_edge727
    i32 11328, label %entry.sw.bb215_crit_edge728
    i32 11360, label %entry.sw.bb215_crit_edge729
    i32 11392, label %entry.sw.bb215_crit_edge730
    i32 11424, label %entry.sw.bb215_crit_edge731
    i32 11292, label %entry.sw.epilog385_crit_edge
    i32 11324, label %entry.sw.epilog385_crit_edge732
    i32 11356, label %entry.sw.epilog385_crit_edge733
    i32 11388, label %entry.sw.epilog385_crit_edge734
    i32 11420, label %entry.sw.epilog385_crit_edge735
    i32 11452, label %entry.sw.epilog385_crit_edge736
    i32 11272, label %entry.sw.bb247_crit_edge
    i32 11304, label %entry.sw.bb247_crit_edge737
    i32 11336, label %entry.sw.bb247_crit_edge738
    i32 11368, label %entry.sw.bb247_crit_edge739
    i32 11400, label %entry.sw.bb247_crit_edge740
    i32 11432, label %entry.sw.bb247_crit_edge741
    i32 11268, label %entry.sw.bb268_crit_edge
    i32 11300, label %entry.sw.bb268_crit_edge742
    i32 11332, label %entry.sw.bb268_crit_edge743
    i32 11364, label %entry.sw.bb268_crit_edge744
    i32 11396, label %entry.sw.bb268_crit_edge745
    i32 11428, label %entry.sw.bb268_crit_edge746
    i32 11288, label %entry.sw.bb352_crit_edge
    i32 11320, label %entry.sw.bb352_crit_edge747
    i32 11352, label %entry.sw.bb352_crit_edge748
    i32 11384, label %entry.sw.bb352_crit_edge749
    i32 11416, label %entry.sw.bb352_crit_edge750
    i32 11448, label %entry.sw.bb352_crit_edge751
  ]

entry.sw.bb352_crit_edge751:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb352

entry.sw.bb352_crit_edge750:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb352

entry.sw.bb352_crit_edge749:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb352

entry.sw.bb352_crit_edge748:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb352

entry.sw.bb352_crit_edge747:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb352

entry.sw.bb352_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb352

entry.sw.bb268_crit_edge746:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb268

entry.sw.bb268_crit_edge745:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb268

entry.sw.bb268_crit_edge744:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb268

entry.sw.bb268_crit_edge743:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb268

entry.sw.bb268_crit_edge742:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb268

entry.sw.bb268_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb268

entry.sw.bb247_crit_edge741:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb247

entry.sw.bb247_crit_edge740:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb247

entry.sw.bb247_crit_edge739:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb247

entry.sw.bb247_crit_edge738:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb247

entry.sw.bb247_crit_edge737:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb247

entry.sw.bb247_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb247

entry.sw.epilog385_crit_edge736:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog385

entry.sw.epilog385_crit_edge735:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog385

entry.sw.epilog385_crit_edge734:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog385

entry.sw.epilog385_crit_edge733:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog385

entry.sw.epilog385_crit_edge732:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog385

entry.sw.epilog385_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog385

entry.sw.bb215_crit_edge731:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb215

entry.sw.bb215_crit_edge730:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb215

entry.sw.bb215_crit_edge729:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb215

entry.sw.bb215_crit_edge728:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb215

entry.sw.bb215_crit_edge727:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb215

entry.sw.bb215_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb215

entry.sw.bb207_crit_edge726:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb207

entry.sw.bb207_crit_edge725:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb207

entry.sw.bb207_crit_edge724:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb207

entry.sw.bb207_crit_edge723:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb207

entry.sw.bb207_crit_edge722:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb207

entry.sw.bb207_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb207

entry.sw.bb194_crit_edge721:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb194

entry.sw.bb194_crit_edge720:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb194

entry.sw.bb194_crit_edge719:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb194

entry.sw.bb194_crit_edge718:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb194

entry.sw.bb194_crit_edge717:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb194

entry.sw.bb194_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb194

entry.sw.bb62_crit_edge716:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb62

entry.sw.bb62_crit_edge715:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb62

entry.sw.bb62_crit_edge714:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb62

entry.sw.bb62_crit_edge713:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb62

entry.sw.bb62_crit_edge712:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb62

entry.sw.bb62_crit_edge711:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb62

entry.sw.bb62_crit_edge710:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb62

entry.sw.bb62_crit_edge709:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb62

entry.sw.bb62_crit_edge708:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb62

entry.sw.bb62_crit_edge707:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb62

entry.sw.bb62_crit_edge706:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb62

entry.sw.bb62_crit_edge705:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb62

entry.sw.bb62_crit_edge704:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb62

entry.sw.bb62_crit_edge703:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb62

entry.sw.bb62_crit_edge702:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb62

entry.sw.bb62_crit_edge701:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb62

entry.sw.bb62_crit_edge700:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb62

entry.sw.bb62_crit_edge699:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb62

entry.sw.bb62_crit_edge698:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb62

entry.sw.bb62_crit_edge697:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb62

entry.sw.bb62_crit_edge696:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb62

entry.sw.bb62_crit_edge695:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb62

entry.sw.bb62_crit_edge694:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb62

entry.sw.bb62_crit_edge693:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb62

entry.sw.bb62_crit_edge692:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb62

entry.sw.bb62_crit_edge691:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb62

entry.sw.bb62_crit_edge690:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb62

entry.sw.bb62_crit_edge689:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb62

entry.sw.bb62_crit_edge688:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb62

entry.sw.bb62_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb62

entry.sw.bb31_crit_edge687:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb31

entry.sw.bb31_crit_edge686:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb31

entry.sw.bb31_crit_edge685:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb31

entry.sw.bb31_crit_edge684:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb31

entry.sw.bb31_crit_edge683:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb31

entry.sw.bb31_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb31

entry.sw.bb4_crit_edge682:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

sw.bb:                                            ; preds = %entry
  %call3 = tail call i32 @r100_cs_packet_parse_vline(ptr noundef %p) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog385_crit_edge, label %if.then

sw.bb.sw.epilog385_crit_edge:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog385

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, i32 noundef %idx, i32 noundef 536) #7
  tail call void @radeon_cs_dump_packet(ptr noundef %p, ptr noundef %pkt) #7
  br label %cleanup

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge682
  %call5 = tail call i32 @r100_reloc_pitch_offset(ptr noundef %p, ptr noundef %pkt, i32 noundef %idx, i32 noundef %reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %sw.bb4.sw.epilog385_crit_edge, label %sw.bb4.cleanup_crit_edge

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb4.sw.epilog385_crit_edge:                    ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog385

sw.bb9:                                           ; preds = %entry
  %call10 = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, i32 noundef %idx, i32 noundef 7204) #7
  call void @radeon_cs_dump_packet(ptr noundef %p, ptr noundef %pkt) #7
  br label %cleanup

if.end13:                                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %reloc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reloc, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %zb = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 12
  %15 = ptrtoint ptr %zb to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %zb, align 4
  %offset = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 12, i32 3
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %retval.0.i, ptr %offset, align 4
  %zb_dirty = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 20
  %17 = ptrtoint ptr %zb_dirty to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %zb_dirty, align 1
  %gpu_offset = getelementptr inbounds %struct.radeon_bo_list, ptr %12, i32 0, i32 2
  %18 = ptrtoint ptr %gpu_offset to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %gpu_offset, align 8
  %conv = trunc i64 %19 to i32
  %add = add i32 %retval.0.i, %conv
  %arrayidx = getelementptr i32, ptr %2, i32 %idx
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 %add, ptr %arrayidx, align 4
  br label %sw.epilog385

sw.bb16:                                          ; preds = %entry
  %call17 = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, i32 noundef %idx, i32 noundef 7232) #7
  call void @radeon_cs_dump_packet(ptr noundef %p, ptr noundef %pkt) #7
  br label %cleanup

if.end20:                                         ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %reloc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reloc, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %cb = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 11
  %25 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %cb, align 4
  %offset26 = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 11, i32 0, i32 3
  %26 = ptrtoint ptr %offset26 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %retval.0.i, ptr %offset26, align 4
  %cb_dirty = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 19
  %27 = ptrtoint ptr %cb_dirty to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %cb_dirty, align 4
  %gpu_offset27 = getelementptr inbounds %struct.radeon_bo_list, ptr %22, i32 0, i32 2
  %28 = ptrtoint ptr %gpu_offset27 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %gpu_offset27, align 8
  %conv28 = trunc i64 %29 to i32
  %add29 = add i32 %retval.0.i, %conv28
  %arrayidx30 = getelementptr i32, ptr %2, i32 %idx
  %30 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 %add29, ptr %arrayidx30, align 4
  br label %sw.epilog385

sw.bb31:                                          ; preds = %entry.sw.bb31_crit_edge, %entry.sw.bb31_crit_edge683, %entry.sw.bb31_crit_edge684, %entry.sw.bb31_crit_edge685, %entry.sw.bb31_crit_edge686, %entry.sw.bb31_crit_edge687
  %div.lhs.trunc = trunc i32 %reg to i8
  %div651 = udiv i8 %div.lhs.trunc, 24
  %div.zext = zext i8 %div651 to i32
  %call32 = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.then34

if.then34:                                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, i32 noundef %idx, i32 noundef %reg) #7
  call void @radeon_cs_dump_packet(ptr noundef %p, ptr noundef %pkt) #7
  br label %cleanup

if.end35:                                         ; preds = %sw.bb31
  %cs_flags = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 21
  %31 = ptrtoint ptr %cs_flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cs_flags, align 4
  %and = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool36.not = icmp eq i32 %and, 0
  %33 = ptrtoint ptr %reloc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reloc, align 4
  br i1 %tobool36.not, label %if.then37, label %if.else

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %tiling_flags = getelementptr inbounds %struct.radeon_bo_list, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %tiling_flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tiling_flags, align 8
  %and38 = shl i32 %36, 2
  %37 = and i32 %and38, 12
  %and48 = and i32 %retval.0.i, -29
  %gpu_offset50 = getelementptr inbounds %struct.radeon_bo_list, ptr %34, i32 0, i32 2
  %38 = ptrtoint ptr %gpu_offset50 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %gpu_offset50, align 8
  %conv51 = trunc i64 %39 to i32
  %or49 = add i32 %and48, %conv51
  %add52 = add i32 %or49, %37
  br label %if.end58

if.else:                                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %gpu_offset54 = getelementptr inbounds %struct.radeon_bo_list, ptr %34, i32 0, i32 2
  %40 = ptrtoint ptr %gpu_offset54 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %gpu_offset54, align 8
  %conv55 = trunc i64 %41 to i32
  %add56 = add i32 %retval.0.i, %conv55
  br label %if.end58

if.end58:                                         ; preds = %if.else, %if.then37
  %add56.sink = phi i32 [ %add56, %if.else ], [ %add52, %if.then37 ]
  %arrayidx57 = getelementptr i32, ptr %2, i32 %idx
  %42 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile i32 %add56.sink, ptr %arrayidx57, align 4
  %43 = ptrtoint ptr %reloc to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reloc, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 8
  %arrayidx60 = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 %div.zext
  %47 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %arrayidx60, align 4
  %tex_dirty = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 21
  %48 = ptrtoint ptr %tex_dirty to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %tex_dirty, align 2
  br label %sw.epilog385

sw.bb62:                                          ; preds = %entry.sw.bb62_crit_edge, %entry.sw.bb62_crit_edge688, %entry.sw.bb62_crit_edge689, %entry.sw.bb62_crit_edge690, %entry.sw.bb62_crit_edge691, %entry.sw.bb62_crit_edge692, %entry.sw.bb62_crit_edge693, %entry.sw.bb62_crit_edge694, %entry.sw.bb62_crit_edge695, %entry.sw.bb62_crit_edge696, %entry.sw.bb62_crit_edge697, %entry.sw.bb62_crit_edge698, %entry.sw.bb62_crit_edge699, %entry.sw.bb62_crit_edge700, %entry.sw.bb62_crit_edge701, %entry.sw.bb62_crit_edge702, %entry.sw.bb62_crit_edge703, %entry.sw.bb62_crit_edge704, %entry.sw.bb62_crit_edge705, %entry.sw.bb62_crit_edge706, %entry.sw.bb62_crit_edge707, %entry.sw.bb62_crit_edge708, %entry.sw.bb62_crit_edge709, %entry.sw.bb62_crit_edge710, %entry.sw.bb62_crit_edge711, %entry.sw.bb62_crit_edge712, %entry.sw.bb62_crit_edge713, %entry.sw.bb62_crit_edge714, %entry.sw.bb62_crit_edge715, %entry.sw.bb62_crit_edge716
  %call68 = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %if.then70

if.then70:                                        ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, i32 noundef %idx, i32 noundef %reg) #7
  call void @radeon_cs_dump_packet(ptr noundef %p, ptr noundef %pkt) #7
  br label %cleanup

if.end71:                                         ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #9
  %div64.lhs.trunc = trunc i32 %reg to i8
  %div64652 = udiv i8 %div64.lhs.trunc, 24
  %div64.zext = zext i8 %div64652 to i32
  %mul.neg = mul nsw i32 %div64.zext, -24
  %add65.neg = add nsw i32 %reg, -11520
  %sub66 = add nsw i32 %add65.neg, %mul.neg
  %div67649 = lshr i32 %sub66, 2
  %sub74 = add nsw i32 %div67649, -1
  %arrayidx75 = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 %div64.zext, i32 1, i32 %sub74
  %offset76 = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 %div64.zext, i32 1, i32 %sub74, i32 1
  %49 = ptrtoint ptr %offset76 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %retval.0.i, ptr %offset76, align 4
  %50 = ptrtoint ptr %reloc to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reloc, align 4
  %gpu_offset77 = getelementptr inbounds %struct.radeon_bo_list, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %gpu_offset77 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %gpu_offset77, align 8
  %conv78 = trunc i64 %53 to i32
  %add79 = add i32 %retval.0.i, %conv78
  %arrayidx80 = getelementptr i32, ptr %2, i32 %idx
  %54 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile i32 %add79, ptr %arrayidx80, align 4
  %55 = load ptr, ptr %reloc, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 8
  %58 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %arrayidx75, align 4
  %tex_dirty88 = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 21
  %59 = ptrtoint ptr %tex_dirty88 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %tex_dirty88, align 2
  br label %sw.epilog385

sw.bb89:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %shr = lshr i32 %retval.0.i, 16
  %and90 = and i32 %shr, 2047
  %maxy = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 2
  %60 = ptrtoint ptr %maxy to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %and90, ptr %maxy, align 4
  %cb_dirty91 = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 19
  %61 = ptrtoint ptr %cb_dirty91 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %cb_dirty91, align 4
  %zb_dirty92 = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 20
  %62 = ptrtoint ptr %zb_dirty92 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %zb_dirty92, align 1
  br label %sw.epilog385

sw.bb93:                                          ; preds = %entry
  %call94 = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end97, label %if.then96

if.then96:                                        ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, i32 noundef %idx, i32 noundef 7240) #7
  call void @radeon_cs_dump_packet(ptr noundef %p, ptr noundef %pkt) #7
  br label %cleanup

if.end97:                                         ; preds = %sw.bb93
  %cs_flags98 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 21
  %63 = ptrtoint ptr %cs_flags98 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cs_flags98, align 4
  %and99 = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %if.then101, label %if.end97.if.end119_crit_edge

if.end97.if.end119_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end119

if.then101:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %reloc to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %reloc, align 4
  %tiling_flags102 = getelementptr inbounds %struct.radeon_bo_list, ptr %66, i32 0, i32 5
  %67 = ptrtoint ptr %tiling_flags102 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tiling_flags102, align 8
  %and103 = shl i32 %68, 16
  %69 = and i32 %and103, 65536
  %70 = and i32 %and103, 131072
  %and114 = and i32 %retval.0.i, -458753
  %71 = or i32 %69, %and114
  %or115 = or i32 %71, %70
  br label %if.end119

if.end119:                                        ; preds = %if.then101, %if.end97.if.end119_crit_edge
  %retval.0.i.sink = phi i32 [ %or115, %if.then101 ], [ %retval.0.i, %if.end97.if.end119_crit_edge ]
  %arrayidx118 = getelementptr i32, ptr %2, i32 %idx
  %72 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile i32 %retval.0.i.sink, ptr %arrayidx118, align 4
  %and120 = and i32 %retval.0.i, 8184
  %pitch = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 11, i32 0, i32 1
  %73 = ptrtoint ptr %pitch to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %and120, ptr %pitch, align 4
  %cb_dirty123 = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 19
  %74 = ptrtoint ptr %cb_dirty123 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %cb_dirty123, align 4
  br label %sw.epilog385

sw.bb124:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and125 = and i32 %retval.0.i, 8184
  %pitch127 = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 12, i32 1
  %75 = ptrtoint ptr %pitch127 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %and125, ptr %pitch127, align 4
  %zb_dirty128 = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 20
  %76 = ptrtoint ptr %zb_dirty128 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %zb_dirty128, align 1
  br label %sw.epilog385

sw.bb129:                                         ; preds = %entry
  %shr130 = lshr i32 %retval.0.i, 10
  %and131 = and i32 %shr130, 31
  %switch.tableidx = add nsw i32 %and131, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %77 = icmp ult i32 %switch.tableidx, 13
  br i1 %77, label %switch.hole_check, label %sw.bb129.sw.default_crit_edge

sw.bb129.sw.default_crit_edge:                    ; preds = %sw.bb129
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

sw.default:                                       ; preds = %switch.hole_check.sw.default_crit_edge, %sw.bb129.sw.default_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, i32 noundef %and131) #7
  br label %cleanup

switch.hole_check:                                ; preds = %sw.bb129
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 4987, %switch.maskindex
  %78 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %switch.lobit.not = icmp eq i16 %78, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.default_crit_edge, label %switch.lookup

switch.hole_check.sw.default_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.r200_packet0_check, i32 0, i32 %switch.tableidx
  %79 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %79)
  %switch.load = load i32, ptr %switch.gep, align 4
  %cpp142 = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 11, i32 0, i32 2
  %80 = ptrtoint ptr %cpp142 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %switch.load, ptr %cpp142, align 4
  %and145 = and i32 %retval.0.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145)
  %tobool146.not = icmp eq i32 %and145, 0
  br i1 %tobool146.not, label %if.end148, label %if.then147

if.then147:                                       ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #7
  br label %cleanup

if.end148:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %z_enabled = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 15
  %and149 = lshr i32 %retval.0.i, 8
  %81 = trunc i32 %and149 to i8
  %82 = and i8 %81, 1
  %83 = ptrtoint ptr %z_enabled to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %z_enabled, align 4
  %cb_dirty152 = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 19
  %84 = ptrtoint ptr %cb_dirty152 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %cb_dirty152, align 4
  %zb_dirty153 = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 20
  %85 = ptrtoint ptr %zb_dirty153 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 1, ptr %zb_dirty153, align 1
  br label %sw.epilog385

sw.bb154:                                         ; preds = %entry
  %and155 = and i32 %retval.0.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %and155)
  %86 = icmp ult i32 %and155, 12
  br i1 %86, label %switch.hole_check663, label %sw.bb154.sw.epilog163_crit_edge

sw.bb154.sw.epilog163_crit_edge:                  ; preds = %sw.bb154
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog163

switch.hole_check663:                             ; preds = %sw.bb154
  %switch.maskindex665 = trunc i32 %and155 to i16
  %switch.shifted666 = lshr i16 2621, %switch.maskindex665
  %87 = and i16 %switch.shifted666, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %87)
  %switch.lobit667.not = icmp eq i16 %87, 0
  br i1 %switch.lobit667.not, label %switch.hole_check663.sw.epilog163_crit_edge, label %switch.lookup664

switch.hole_check663.sw.epilog163_crit_edge:      ; preds = %switch.hole_check663
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog163

switch.lookup664:                                 ; preds = %switch.hole_check663
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep668 = getelementptr inbounds [12 x i32], ptr @switch.table.r200_packet0_check.8, i32 0, i32 %and155
  %88 = ptrtoint ptr %switch.gep668 to i32
  call void @__asan_load4_noabort(i32 %88)
  %switch.load669 = load i32, ptr %switch.gep668, align 4
  %cpp161 = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 12, i32 2
  %89 = ptrtoint ptr %cpp161 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %switch.load669, ptr %cpp161, align 4
  br label %sw.epilog163

sw.epilog163:                                     ; preds = %switch.lookup664, %switch.hole_check663.sw.epilog163_crit_edge, %sw.bb154.sw.epilog163_crit_edge
  %zb_dirty164 = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 20
  %90 = ptrtoint ptr %zb_dirty164 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %zb_dirty164, align 1
  br label %sw.epilog385

sw.bb165:                                         ; preds = %entry
  %call166 = call i32 @radeon_cs_packet_next_reloc(ptr noundef %p, ptr noundef nonnull %reloc, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call166)
  %tobool167.not = icmp eq i32 %call166, 0
  br i1 %tobool167.not, label %if.end169, label %if.then168

if.then168:                                       ; preds = %sw.bb165
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, i32 noundef %idx, i32 noundef 12948) #7
  call void @radeon_cs_dump_packet(ptr noundef %p, ptr noundef %pkt) #7
  br label %cleanup

if.end169:                                        ; preds = %sw.bb165
  call void @__sanitizer_cov_trace_pc() #9
  %91 = ptrtoint ptr %reloc to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %reloc, align 4
  %gpu_offset170 = getelementptr inbounds %struct.radeon_bo_list, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %gpu_offset170 to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %gpu_offset170, align 8
  %conv171 = trunc i64 %94 to i32
  %add172 = add i32 %retval.0.i, %conv171
  %arrayidx173 = getelementptr i32, ptr %2, i32 %idx
  %95 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile i32 %add172, ptr %arrayidx173, align 4
  br label %sw.epilog385

sw.bb174:                                         ; preds = %entry
  %shr175 = lshr i32 %retval.0.i, 4
  %num_texture = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 1
  %96 = ptrtoint ptr %num_texture to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %num_texture, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp655.not = icmp eq i32 %97, 0
  br i1 %cmp655.not, label %sw.bb174.for.end_crit_edge, label %sw.bb174.for.body_crit_edge

sw.bb174.for.body_crit_edge:                      ; preds = %sw.bb174
  br label %for.body

sw.bb174.for.end_crit_edge:                       ; preds = %sw.bb174
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sw.bb174.for.body_crit_edge
  %i.0656 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %sw.bb174.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.0656
  %and177 = and i32 %shl, %shr175
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and177)
  %tobool178 = icmp ne i32 %and177, 0
  %enabled = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 %i.0656, i32 12
  %frombool183 = zext i1 %tobool178 to i8
  %98 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %frombool183, ptr %enabled, align 1
  %inc = add nuw i32 %i.0656, 1
  %99 = ptrtoint ptr %num_texture to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %num_texture, align 4
  %cmp = icmp ult i32 %inc, %100
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %sw.bb174.for.end_crit_edge
  %tex_dirty184 = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 21
  %101 = ptrtoint ptr %tex_dirty184 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 1, ptr %tex_dirty184, align 2
  br label %sw.epilog385

sw.bb185:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %vap_vf_cntl = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 4
  %102 = ptrtoint ptr %vap_vf_cntl to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %retval.0.i, ptr %vap_vf_cntl, align 4
  br label %sw.epilog385

sw.bb186:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and187 = and i32 %retval.0.i, 16777215
  %max_indx = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 8
  %103 = ptrtoint ptr %max_indx to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %and187, ptr %max_indx, align 4
  br label %sw.epilog385

sw.bb188:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call189 = tail call fastcc i32 @r200_get_vtx_size_0(i32 noundef %retval.0.i)
  %vtx_size = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 3
  %104 = ptrtoint ptr %vtx_size to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %call189, ptr %vtx_size, align 4
  br label %sw.epilog385

sw.bb190:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call191 = tail call fastcc i32 @r200_get_vtx_size_1(i32 noundef %retval.0.i)
  %vtx_size192 = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 3
  %105 = ptrtoint ptr %vtx_size192 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %vtx_size192, align 4
  %add193 = add i32 %106, %call191
  store i32 %add193, ptr %vtx_size192, align 4
  br label %sw.epilog385

sw.bb194:                                         ; preds = %entry.sw.bb194_crit_edge, %entry.sw.bb194_crit_edge717, %entry.sw.bb194_crit_edge718, %entry.sw.bb194_crit_edge719, %entry.sw.bb194_crit_edge720, %entry.sw.bb194_crit_edge721
  %sub195 = add nsw i32 %reg, -11276
  %div196648 = lshr i32 %sub195, 5
  %and197 = and i32 %retval.0.i, 2047
  %add198 = add nuw nsw i32 %and197, 1
  %width = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 %div196648, i32 3
  %107 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %add198, ptr %width, align 4
  %and201 = lshr i32 %retval.0.i, 16
  %shr202 = and i32 %and201, 2047
  %add203 = add nuw nsw i32 %shr202, 1
  %height = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 %div196648, i32 4
  %108 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %add203, ptr %height, align 4
  %tex_dirty206 = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 21
  %109 = ptrtoint ptr %tex_dirty206 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 1, ptr %tex_dirty206, align 2
  br label %sw.epilog385

sw.bb207:                                         ; preds = %entry.sw.bb207_crit_edge, %entry.sw.bb207_crit_edge722, %entry.sw.bb207_crit_edge723, %entry.sw.bb207_crit_edge724, %entry.sw.bb207_crit_edge725, %entry.sw.bb207_crit_edge726
  %sub208 = add nsw i32 %reg, -11280
  %div209647 = lshr i32 %sub208, 5
  %add210 = add i32 %retval.0.i, 32
  %pitch213 = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 %div209647, i32 2
  %110 = ptrtoint ptr %pitch213 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %add210, ptr %pitch213, align 4
  %tex_dirty214 = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 21
  %111 = ptrtoint ptr %tex_dirty214 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 1, ptr %tex_dirty214, align 2
  br label %sw.epilog385

sw.bb215:                                         ; preds = %entry.sw.bb215_crit_edge, %entry.sw.bb215_crit_edge727, %entry.sw.bb215_crit_edge728, %entry.sw.bb215_crit_edge729, %entry.sw.bb215_crit_edge730, %entry.sw.bb215_crit_edge731
  %sub216 = add nsw i32 %reg, -11264
  %div217646 = lshr i32 %sub216, 5
  %and218 = lshr i32 %retval.0.i, 16
  %shr219 = and i32 %and218, 15
  %num_levels = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 %div217646, i32 5
  %112 = ptrtoint ptr %num_levels to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %shr219, ptr %num_levels, align 4
  %shr222 = lshr i32 %retval.0.i, 23
  %and223 = and i32 %shr222, 7
  %113 = zext i32 %and223 to i64
  call void @__sanitizer_cov_trace_switch(i64 %113, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %and223, label %sw.bb215.if.end231_crit_edge [
    i32 2, label %sw.bb215.if.then228_crit_edge
    i32 6, label %sw.bb215.if.then228_crit_edge752
  ]

sw.bb215.if.then228_crit_edge752:                 ; preds = %sw.bb215
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then228

sw.bb215.if.then228_crit_edge:                    ; preds = %sw.bb215
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then228

sw.bb215.if.end231_crit_edge:                     ; preds = %sw.bb215
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end231

if.then228:                                       ; preds = %sw.bb215.if.then228_crit_edge, %sw.bb215.if.then228_crit_edge752
  %roundup_w = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 %div217646, i32 14
  %114 = ptrtoint ptr %roundup_w to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 0, ptr %roundup_w, align 1
  br label %if.end231

if.end231:                                        ; preds = %if.then228, %sw.bb215.if.end231_crit_edge
  %shr232 = lshr i32 %retval.0.i, 27
  %and233 = and i32 %shr232, 7
  %115 = zext i32 %and233 to i64
  call void @__sanitizer_cov_trace_switch(i64 %115, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %and233, label %if.end231.if.end242_crit_edge [
    i32 2, label %if.end231.if.then239_crit_edge
    i32 6, label %if.end231.if.then239_crit_edge753
  ]

if.end231.if.then239_crit_edge753:                ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then239

if.end231.if.then239_crit_edge:                   ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then239

if.end231.if.end242_crit_edge:                    ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end242

if.then239:                                       ; preds = %if.end231.if.then239_crit_edge, %if.end231.if.then239_crit_edge753
  %roundup_h = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 %div217646, i32 15
  %116 = ptrtoint ptr %roundup_h to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %roundup_h, align 4
  br label %if.end242

if.end242:                                        ; preds = %if.then239, %if.end231.if.end242_crit_edge
  %tex_dirty243 = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 21
  %117 = ptrtoint ptr %tex_dirty243 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 1, ptr %tex_dirty243, align 2
  br label %sw.epilog385

sw.bb247:                                         ; preds = %entry.sw.bb247_crit_edge, %entry.sw.bb247_crit_edge737, %entry.sw.bb247_crit_edge738, %entry.sw.bb247_crit_edge739, %entry.sw.bb247_crit_edge740, %entry.sw.bb247_crit_edge741
  %sub248 = add nsw i32 %reg, -11272
  %div249645 = lshr i32 %sub248, 5
  %and250 = and i32 %retval.0.i, 7
  %txdepth = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 %div249645, i32 8
  %118 = ptrtoint ptr %txdepth to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %and250, ptr %txdepth, align 4
  %shr253 = lshr i32 %retval.0.i, 16
  %and254 = and i32 %shr253, 3
  %switch.gep671 = getelementptr inbounds [4 x i32], ptr @switch.table.r200_packet0_check.9, i32 0, i32 %and254
  %119 = ptrtoint ptr %switch.gep671 to i32
  call void @__asan_load4_noabort(i32 %119)
  %switch.load672 = load i32, ptr %switch.gep671, align 4
  %tex_coord_type265 = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 %div249645, i32 7
  %120 = ptrtoint ptr %tex_coord_type265 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %switch.load672, ptr %tex_coord_type265, align 4
  %tex_dirty267 = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 21
  %121 = ptrtoint ptr %tex_dirty267 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 1, ptr %tex_dirty267, align 2
  br label %sw.epilog385

sw.bb268:                                         ; preds = %entry.sw.bb268_crit_edge, %entry.sw.bb268_crit_edge742, %entry.sw.bb268_crit_edge743, %entry.sw.bb268_crit_edge744, %entry.sw.bb268_crit_edge745, %entry.sw.bb268_crit_edge746
  %sub269 = add nsw i32 %reg, -11268
  %div270644 = lshr i32 %sub269, 5
  %and271 = and i32 %retval.0.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and271)
  %tobool272.not = icmp eq i32 %and271, 0
  br i1 %tobool272.not, label %if.else276, label %sw.bb268.if.end292_crit_edge

sw.bb268.if.end292_crit_edge:                     ; preds = %sw.bb268
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end292

if.else276:                                       ; preds = %sw.bb268
  call void @__sanitizer_cov_trace_pc() #9
  %and280 = lshr i32 %retval.0.i, 8
  %shr281 = and i32 %and280, 15
  %shl282 = shl nuw nsw i32 1, %shr281
  %width285 = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 %div270644, i32 3
  %122 = ptrtoint ptr %width285 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %shl282, ptr %width285, align 4
  %and286 = lshr i32 %retval.0.i, 12
  %shr287 = and i32 %and286, 15
  %shl288 = shl nuw nsw i32 1, %shr287
  %height291 = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 %div270644, i32 4
  %123 = ptrtoint ptr %height291 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %shl288, ptr %height291, align 4
  br label %if.end292

if.end292:                                        ; preds = %if.else276, %sw.bb268.if.end292_crit_edge
  %.sink = phi i8 [ 0, %if.else276 ], [ 1, %sw.bb268.if.end292_crit_edge ]
  %124 = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 %div270644, i32 11
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %.sink, ptr %124, align 4
  %and293 = and i32 %retval.0.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and293)
  %tobool294.not = icmp eq i32 %and293, 0
  br i1 %tobool294.not, label %if.end292.if.end298_crit_edge, label %if.then295

if.end292.if.end298_crit_edge:                    ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end298

if.then295:                                       ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #9
  %lookup_disable = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 %div270644, i32 13
  %126 = ptrtoint ptr %lookup_disable to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 1, ptr %lookup_disable, align 2
  br label %if.end298

if.end298:                                        ; preds = %if.then295, %if.end292.if.end298_crit_edge
  %and299 = and i32 %retval.0.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %and299)
  %127 = icmp ult i32 %and299, 24
  br i1 %127, label %switch.hole_check674, label %if.end298.sw.epilog334_crit_edge

if.end298.sw.epilog334_crit_edge:                 ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog334

switch.hole_check674:                             ; preds = %if.end298
  %switch.shifted676 = lshr i32 14475263, %and299
  %128 = and i32 %switch.shifted676, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %switch.lobit677.not = icmp eq i32 %128, 0
  br i1 %switch.lobit677.not, label %switch.hole_check674.sw.epilog334_crit_edge, label %switch.lookup675

switch.hole_check674.sw.epilog334_crit_edge:      ; preds = %switch.hole_check674
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog334

switch.lookup675:                                 ; preds = %switch.hole_check674
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep678 = getelementptr inbounds [24 x i32], ptr @switch.table.r200_packet0_check.10, i32 0, i32 %and299
  %129 = ptrtoint ptr %switch.gep678 to i32
  call void @__asan_load4_noabort(i32 %129)
  %switch.load679 = load i32, ptr %switch.gep678, align 4
  %switch.gep680 = getelementptr inbounds [24 x i32], ptr @switch.table.r200_packet0_check.11, i32 0, i32 %and299
  %130 = ptrtoint ptr %switch.gep680 to i32
  call void @__asan_load4_noabort(i32 %130)
  %switch.load681 = load i32, ptr %switch.gep680, align 4
  %cpp330 = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 %div270644, i32 6
  %131 = ptrtoint ptr %cpp330 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %switch.load679, ptr %cpp330, align 4
  %compress_format333 = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 %div270644, i32 16
  %132 = ptrtoint ptr %compress_format333 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %switch.load681, ptr %compress_format333, align 4
  br label %sw.epilog334

sw.epilog334:                                     ; preds = %switch.lookup675, %switch.hole_check674.sw.epilog334_crit_edge, %if.end298.sw.epilog334_crit_edge
  %shr335 = lshr i32 %retval.0.i, 16
  %and336 = and i32 %shr335, 15
  %shl337 = shl nuw nsw i32 1, %and336
  %width342 = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 %div270644, i32 1, i32 4, i32 2
  %133 = ptrtoint ptr %width342 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %shl337, ptr %width342, align 4
  %shr343 = lshr i32 %retval.0.i, 20
  %and344 = and i32 %shr343, 15
  %shl345 = shl nuw nsw i32 1, %and344
  %height350 = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 %div270644, i32 1, i32 4, i32 3
  %134 = ptrtoint ptr %height350 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %shl345, ptr %height350, align 4
  %tex_dirty351 = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 21
  %135 = ptrtoint ptr %tex_dirty351 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 1, ptr %tex_dirty351, align 2
  br label %sw.epilog385

sw.bb352:                                         ; preds = %entry.sw.bb352_crit_edge, %entry.sw.bb352_crit_edge747, %entry.sw.bb352_crit_edge748, %entry.sw.bb352_crit_edge749, %entry.sw.bb352_crit_edge750, %entry.sw.bb352_crit_edge751
  %sub353 = add nsw i32 %reg, -11288
  %div354643 = lshr i32 %sub353, 5
  %and361 = and i32 %retval.0.i, 15
  %shl362 = shl nuw nsw i32 1, %and361
  %width367 = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 %div354643, i32 1, i32 0, i32 2
  %136 = ptrtoint ptr %width367 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %shl362, ptr %width367, align 4
  %shr370 = lshr i32 %retval.0.i, 4
  %and371 = and i32 %shr370, 15
  %shl372 = shl nuw nsw i32 1, %and371
  %height377 = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 %div354643, i32 1, i32 0, i32 3
  %137 = ptrtoint ptr %height377 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %shl372, ptr %height377, align 4
  %shr360.1 = lshr i32 %retval.0.i, 8
  %and361.1 = and i32 %shr360.1, 15
  %shl362.1 = shl nuw nsw i32 1, %and361.1
  %width367.1 = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 %div354643, i32 1, i32 1, i32 2
  %138 = ptrtoint ptr %width367.1 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %shl362.1, ptr %width367.1, align 4
  %shr370.1 = lshr i32 %retval.0.i, 12
  %and371.1 = and i32 %shr370.1, 15
  %shl372.1 = shl nuw nsw i32 1, %and371.1
  %height377.1 = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 %div354643, i32 1, i32 1, i32 3
  %139 = ptrtoint ptr %height377.1 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %shl372.1, ptr %height377.1, align 4
  %shr360.2 = lshr i32 %retval.0.i, 16
  %and361.2 = and i32 %shr360.2, 15
  %shl362.2 = shl nuw nsw i32 1, %and361.2
  %width367.2 = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 %div354643, i32 1, i32 2, i32 2
  %140 = ptrtoint ptr %width367.2 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %shl362.2, ptr %width367.2, align 4
  %shr370.2 = lshr i32 %retval.0.i, 20
  %and371.2 = and i32 %shr370.2, 15
  %shl372.2 = shl nuw nsw i32 1, %and371.2
  %height377.2 = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 %div354643, i32 1, i32 2, i32 3
  %141 = ptrtoint ptr %height377.2 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %shl372.2, ptr %height377.2, align 4
  %shr360.3 = lshr i32 %retval.0.i, 24
  %and361.3 = and i32 %shr360.3, 15
  %shl362.3 = shl nuw nsw i32 1, %and361.3
  %width367.3 = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 %div354643, i32 1, i32 3, i32 2
  %142 = ptrtoint ptr %width367.3 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %shl362.3, ptr %width367.3, align 4
  %shr370.3 = lshr i32 %retval.0.i, 28
  %shl372.3 = shl nuw nsw i32 1, %shr370.3
  %height377.3 = getelementptr %struct.r100_cs_track, ptr %4, i32 0, i32 14, i32 %div354643, i32 1, i32 3, i32 3
  %143 = ptrtoint ptr %height377.3 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %shl372.3, ptr %height377.3, align 4
  %tex_dirty381 = getelementptr inbounds %struct.r100_cs_track, ptr %4, i32 0, i32 21
  %144 = ptrtoint ptr %tex_dirty381 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 1, ptr %tex_dirty381, align 2
  br label %sw.epilog385

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call384 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %reg, i32 noundef %idx) #10
  br label %cleanup

sw.epilog385:                                     ; preds = %sw.bb352, %sw.epilog334, %sw.bb247, %if.end242, %sw.bb207, %sw.bb194, %sw.bb190, %sw.bb188, %sw.bb186, %sw.bb185, %for.end, %if.end169, %sw.epilog163, %if.end148, %sw.bb124, %if.end119, %sw.bb89, %if.end71, %if.end58, %if.end20, %if.end13, %sw.bb4.sw.epilog385_crit_edge, %sw.bb.sw.epilog385_crit_edge, %entry.sw.epilog385_crit_edge, %entry.sw.epilog385_crit_edge732, %entry.sw.epilog385_crit_edge733, %entry.sw.epilog385_crit_edge734, %entry.sw.epilog385_crit_edge735, %entry.sw.epilog385_crit_edge736
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog385, %do.end, %if.then168, %if.then147, %sw.default, %if.then96, %if.then70, %if.then34, %if.then19, %if.then12, %sw.bb4.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.epilog385 ], [ %call166, %if.then168 ], [ -22, %sw.default ], [ -22, %if.then147 ], [ %call94, %if.then96 ], [ %call68, %if.then70 ], [ %call32, %if.then34 ], [ %call17, %if.then19 ], [ %call10, %if.then12 ], [ %call3, %if.then ], [ %call5, %sw.bb4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reloc) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_cs_packet_parse_vline(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_cs_dump_packet(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_reloc_pitch_offset(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_cs_packet_next_reloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @r200_get_vtx_size_0(i32 noundef %vtx_fmt_0) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %vtx_fmt_0, 1
  %0 = or i32 %and, 2
  %and1 = and i32 %vtx_fmt_0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %inc4 = add nuw nsw i32 %and, 3
  %vtx_size.1 = select i1 %tobool2.not, i32 %0, i32 %inc4
  %and6 = and i32 %vtx_fmt_0, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %shr = lshr i32 %vtx_fmt_0, 2
  %and9 = and i32 %shr, 7
  %add = select i1 %tobool7.not, i32 0, i32 %and9
  %and11 = lshr i32 %vtx_fmt_0, 5
  %and11.lobit = and i32 %and11, 1
  %vtx_size.2 = add nuw nsw i32 %add, %and11.lobit
  %vtx_size.3 = add nuw nsw i32 %vtx_size.2, %vtx_size.1
  %and16 = and i32 %vtx_fmt_0, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %add19 = add nuw nsw i32 %vtx_size.3, 3
  %vtx_size.4 = select i1 %tobool17.not, i32 %vtx_size.3, i32 %add19
  %and21 = lshr i32 %vtx_fmt_0, 7
  %and21.lobit = and i32 %and21, 1
  %and26 = lshr i32 %vtx_fmt_0, 8
  %and26.lobit = and i32 %and26, 1
  %and31 = lshr i32 %vtx_fmt_0, 9
  %and31.lobit = and i32 %and31, 1
  %and36 = lshr i32 %vtx_fmt_0, 10
  %and36.lobit = and i32 %and36, 1
  %vtx_size.5 = add nuw nsw i32 %and26.lobit, %and21.lobit
  %vtx_size.6 = add nuw nsw i32 %vtx_size.5, %and31.lobit
  %vtx_size.7 = add nuw nsw i32 %vtx_size.6, %and36.lobit
  %vtx_size.8 = add nuw nsw i32 %vtx_size.7, %vtx_size.4
  %shr42 = lshr i32 %vtx_fmt_0, 11
  %and43 = and i32 %shr42, 3
  %1 = zext i32 %and43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %and43, label %entry.sw.epilog_crit_edge [
    i32 3, label %sw.bb47
    i32 1, label %sw.bb
    i32 2, label %sw.bb45
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %inc44 = add i32 %vtx_size.8, 1
  br label %sw.epilog

sw.bb45:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add46 = add i32 %vtx_size.8, 3
  br label %sw.epilog

sw.bb47:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add48 = add i32 %vtx_size.8, 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb47, %sw.bb45, %sw.bb, %entry.sw.epilog_crit_edge
  %vtx_size.10 = phi i32 [ %vtx_size.8, %entry.sw.epilog_crit_edge ], [ %add46, %sw.bb45 ], [ %inc44, %sw.bb ], [ %add48, %sw.bb47 ]
  %shr42.1 = lshr i32 %vtx_fmt_0, 13
  %and43.1 = and i32 %shr42.1, 3
  %2 = zext i32 %and43.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %and43.1, label %sw.epilog.sw.epilog.1_crit_edge [
    i32 3, label %sw.bb47.1
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb45.1
  ]

sw.epilog.sw.epilog.1_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.1

sw.bb45.1:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %add46.1 = add i32 %vtx_size.10, 3
  br label %sw.epilog.1

sw.bb.1:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %inc44.1 = add i32 %vtx_size.10, 1
  br label %sw.epilog.1

sw.bb47.1:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %add48.1 = add i32 %vtx_size.10, 4
  br label %sw.epilog.1

sw.epilog.1:                                      ; preds = %sw.bb47.1, %sw.bb.1, %sw.bb45.1, %sw.epilog.sw.epilog.1_crit_edge
  %vtx_size.10.1 = phi i32 [ %vtx_size.10, %sw.epilog.sw.epilog.1_crit_edge ], [ %add46.1, %sw.bb45.1 ], [ %inc44.1, %sw.bb.1 ], [ %add48.1, %sw.bb47.1 ]
  %shr42.2 = lshr i32 %vtx_fmt_0, 15
  %and43.2 = and i32 %shr42.2, 3
  %3 = zext i32 %and43.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %and43.2, label %sw.epilog.1.sw.epilog.2_crit_edge [
    i32 3, label %sw.bb47.2
    i32 1, label %sw.bb.2
    i32 2, label %sw.bb45.2
  ]

sw.epilog.1.sw.epilog.2_crit_edge:                ; preds = %sw.epilog.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.2

sw.bb45.2:                                        ; preds = %sw.epilog.1
  call void @__sanitizer_cov_trace_pc() #9
  %add46.2 = add i32 %vtx_size.10.1, 3
  br label %sw.epilog.2

sw.bb.2:                                          ; preds = %sw.epilog.1
  call void @__sanitizer_cov_trace_pc() #9
  %inc44.2 = add i32 %vtx_size.10.1, 1
  br label %sw.epilog.2

sw.bb47.2:                                        ; preds = %sw.epilog.1
  call void @__sanitizer_cov_trace_pc() #9
  %add48.2 = add i32 %vtx_size.10.1, 4
  br label %sw.epilog.2

sw.epilog.2:                                      ; preds = %sw.bb47.2, %sw.bb.2, %sw.bb45.2, %sw.epilog.1.sw.epilog.2_crit_edge
  %vtx_size.10.2 = phi i32 [ %vtx_size.10.1, %sw.epilog.1.sw.epilog.2_crit_edge ], [ %add46.2, %sw.bb45.2 ], [ %inc44.2, %sw.bb.2 ], [ %add48.2, %sw.bb47.2 ]
  %shr42.3 = lshr i32 %vtx_fmt_0, 17
  %and43.3 = and i32 %shr42.3, 3
  %4 = zext i32 %and43.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %and43.3, label %sw.epilog.2.sw.epilog.3_crit_edge [
    i32 3, label %sw.bb47.3
    i32 1, label %sw.bb.3
    i32 2, label %sw.bb45.3
  ]

sw.epilog.2.sw.epilog.3_crit_edge:                ; preds = %sw.epilog.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.3

sw.bb45.3:                                        ; preds = %sw.epilog.2
  call void @__sanitizer_cov_trace_pc() #9
  %add46.3 = add i32 %vtx_size.10.2, 3
  br label %sw.epilog.3

sw.bb.3:                                          ; preds = %sw.epilog.2
  call void @__sanitizer_cov_trace_pc() #9
  %inc44.3 = add i32 %vtx_size.10.2, 1
  br label %sw.epilog.3

sw.bb47.3:                                        ; preds = %sw.epilog.2
  call void @__sanitizer_cov_trace_pc() #9
  %add48.3 = add i32 %vtx_size.10.2, 4
  br label %sw.epilog.3

sw.epilog.3:                                      ; preds = %sw.bb47.3, %sw.bb.3, %sw.bb45.3, %sw.epilog.2.sw.epilog.3_crit_edge
  %vtx_size.10.3 = phi i32 [ %vtx_size.10.2, %sw.epilog.2.sw.epilog.3_crit_edge ], [ %add46.3, %sw.bb45.3 ], [ %inc44.3, %sw.bb.3 ], [ %add48.3, %sw.bb47.3 ]
  %shr42.4 = lshr i32 %vtx_fmt_0, 19
  %and43.4 = and i32 %shr42.4, 3
  %5 = zext i32 %and43.4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %and43.4, label %sw.epilog.3.sw.epilog.4_crit_edge [
    i32 3, label %sw.bb47.4
    i32 1, label %sw.bb.4
    i32 2, label %sw.bb45.4
  ]

sw.epilog.3.sw.epilog.4_crit_edge:                ; preds = %sw.epilog.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.4

sw.bb45.4:                                        ; preds = %sw.epilog.3
  call void @__sanitizer_cov_trace_pc() #9
  %add46.4 = add i32 %vtx_size.10.3, 3
  br label %sw.epilog.4

sw.bb.4:                                          ; preds = %sw.epilog.3
  call void @__sanitizer_cov_trace_pc() #9
  %inc44.4 = add i32 %vtx_size.10.3, 1
  br label %sw.epilog.4

sw.bb47.4:                                        ; preds = %sw.epilog.3
  call void @__sanitizer_cov_trace_pc() #9
  %add48.4 = add i32 %vtx_size.10.3, 4
  br label %sw.epilog.4

sw.epilog.4:                                      ; preds = %sw.bb47.4, %sw.bb.4, %sw.bb45.4, %sw.epilog.3.sw.epilog.4_crit_edge
  %vtx_size.10.4 = phi i32 [ %vtx_size.10.3, %sw.epilog.3.sw.epilog.4_crit_edge ], [ %add46.4, %sw.bb45.4 ], [ %inc44.4, %sw.bb.4 ], [ %add48.4, %sw.bb47.4 ]
  %shr42.5 = lshr i32 %vtx_fmt_0, 21
  %and43.5 = and i32 %shr42.5, 3
  %6 = zext i32 %and43.5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %and43.5, label %sw.epilog.4.sw.epilog.5_crit_edge [
    i32 3, label %sw.bb47.5
    i32 1, label %sw.bb.5
    i32 2, label %sw.bb45.5
  ]

sw.epilog.4.sw.epilog.5_crit_edge:                ; preds = %sw.epilog.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.5

sw.bb45.5:                                        ; preds = %sw.epilog.4
  call void @__sanitizer_cov_trace_pc() #9
  %add46.5 = add i32 %vtx_size.10.4, 3
  br label %sw.epilog.5

sw.bb.5:                                          ; preds = %sw.epilog.4
  call void @__sanitizer_cov_trace_pc() #9
  %inc44.5 = add i32 %vtx_size.10.4, 1
  br label %sw.epilog.5

sw.bb47.5:                                        ; preds = %sw.epilog.4
  call void @__sanitizer_cov_trace_pc() #9
  %add48.5 = add i32 %vtx_size.10.4, 4
  br label %sw.epilog.5

sw.epilog.5:                                      ; preds = %sw.bb47.5, %sw.bb.5, %sw.bb45.5, %sw.epilog.4.sw.epilog.5_crit_edge
  %vtx_size.10.5 = phi i32 [ %vtx_size.10.4, %sw.epilog.4.sw.epilog.5_crit_edge ], [ %add46.5, %sw.bb45.5 ], [ %inc44.5, %sw.bb.5 ], [ %add48.5, %sw.bb47.5 ]
  %shr42.6 = lshr i32 %vtx_fmt_0, 23
  %and43.6 = and i32 %shr42.6, 3
  %7 = zext i32 %and43.6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %and43.6, label %sw.epilog.5.sw.epilog.6_crit_edge [
    i32 3, label %sw.bb47.6
    i32 1, label %sw.bb.6
    i32 2, label %sw.bb45.6
  ]

sw.epilog.5.sw.epilog.6_crit_edge:                ; preds = %sw.epilog.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.6

sw.bb45.6:                                        ; preds = %sw.epilog.5
  call void @__sanitizer_cov_trace_pc() #9
  %add46.6 = add i32 %vtx_size.10.5, 3
  br label %sw.epilog.6

sw.bb.6:                                          ; preds = %sw.epilog.5
  call void @__sanitizer_cov_trace_pc() #9
  %inc44.6 = add i32 %vtx_size.10.5, 1
  br label %sw.epilog.6

sw.bb47.6:                                        ; preds = %sw.epilog.5
  call void @__sanitizer_cov_trace_pc() #9
  %add48.6 = add i32 %vtx_size.10.5, 4
  br label %sw.epilog.6

sw.epilog.6:                                      ; preds = %sw.bb47.6, %sw.bb.6, %sw.bb45.6, %sw.epilog.5.sw.epilog.6_crit_edge
  %vtx_size.10.6 = phi i32 [ %vtx_size.10.5, %sw.epilog.5.sw.epilog.6_crit_edge ], [ %add46.6, %sw.bb45.6 ], [ %inc44.6, %sw.bb.6 ], [ %add48.6, %sw.bb47.6 ]
  %shr42.7 = lshr i32 %vtx_fmt_0, 25
  %and43.7 = and i32 %shr42.7, 3
  %8 = zext i32 %and43.7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %and43.7, label %sw.epilog.6.sw.epilog.7_crit_edge [
    i32 3, label %sw.bb47.7
    i32 1, label %sw.bb.7
    i32 2, label %sw.bb45.7
  ]

sw.epilog.6.sw.epilog.7_crit_edge:                ; preds = %sw.epilog.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.7

sw.bb45.7:                                        ; preds = %sw.epilog.6
  call void @__sanitizer_cov_trace_pc() #9
  %add46.7 = add i32 %vtx_size.10.6, 3
  br label %sw.epilog.7

sw.bb.7:                                          ; preds = %sw.epilog.6
  call void @__sanitizer_cov_trace_pc() #9
  %inc44.7 = add i32 %vtx_size.10.6, 1
  br label %sw.epilog.7

sw.bb47.7:                                        ; preds = %sw.epilog.6
  call void @__sanitizer_cov_trace_pc() #9
  %add48.7 = add i32 %vtx_size.10.6, 4
  br label %sw.epilog.7

sw.epilog.7:                                      ; preds = %sw.bb47.7, %sw.bb.7, %sw.bb45.7, %sw.epilog.6.sw.epilog.7_crit_edge
  %vtx_size.10.7 = phi i32 [ %vtx_size.10.6, %sw.epilog.6.sw.epilog.7_crit_edge ], [ %add46.7, %sw.bb45.7 ], [ %inc44.7, %sw.bb.7 ], [ %add48.7, %sw.bb47.7 ]
  %and50 = and i32 %vtx_fmt_0, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  %add53 = add i32 %vtx_size.10.7, 2
  %spec.select102 = select i1 %tobool51.not, i32 %vtx_size.10.7, i32 %add53
  %and55 = lshr i32 %vtx_fmt_0, 29
  %and55.lobit = and i32 %and55, 1
  %and60 = lshr i32 %vtx_fmt_0, 30
  %and60.lobit = and i32 %and60, 1
  %vtx_size.12 = add nuw nsw i32 %and60.lobit, %and55.lobit
  %vtx_size.13 = add i32 %vtx_size.12, %spec.select102
  %add68 = add i32 %vtx_size.13, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vtx_fmt_0)
  %tobool66.not103 = icmp slt i32 %vtx_fmt_0, 0
  %vtx_size.14 = select i1 %tobool66.not103, i32 %add68, i32 %vtx_size.13
  ret i32 %vtx_size.14
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @r200_get_vtx_size_1(i32 noundef %vtx_fmt_1) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %vtx_fmt_1, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and)
  %cmp1 = icmp ugt i32 %and, 4
  %add = select i1 %cmp1, i32 0, i32 %and
  %shr.1 = lshr i32 %vtx_fmt_1, 3
  %and.1 = and i32 %shr.1, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.1)
  %cmp1.1 = icmp ugt i32 %and.1, 4
  %add.1 = select i1 %cmp1.1, i32 0, i32 %and.1
  %spec.select.1 = add nuw nsw i32 %add.1, %add
  %shr.2 = lshr i32 %vtx_fmt_1, 6
  %and.2 = and i32 %shr.2, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.2)
  %cmp1.2 = icmp ugt i32 %and.2, 4
  %add.2 = select i1 %cmp1.2, i32 0, i32 %and.2
  %spec.select.2 = add nuw nsw i32 %add.2, %spec.select.1
  %shr.3 = lshr i32 %vtx_fmt_1, 9
  %and.3 = and i32 %shr.3, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.3)
  %cmp1.3 = icmp ugt i32 %and.3, 4
  %add.3 = select i1 %cmp1.3, i32 0, i32 %and.3
  %spec.select.3 = add nuw nsw i32 %add.3, %spec.select.2
  %shr.4 = lshr i32 %vtx_fmt_1, 12
  %and.4 = and i32 %shr.4, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.4)
  %cmp1.4 = icmp ugt i32 %and.4, 4
  %add.4 = select i1 %cmp1.4, i32 0, i32 %and.4
  %spec.select.4 = add nuw nsw i32 %add.4, %spec.select.3
  %shr.5 = lshr i32 %vtx_fmt_1, 15
  %and.5 = and i32 %shr.5, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.5)
  %cmp1.5 = icmp ugt i32 %and.5, 4
  %add.5 = select i1 %cmp1.5, i32 0, i32 %and.5
  %spec.select.5 = add nuw nsw i32 %add.5, %spec.select.4
  ret i32 %spec.select.5
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @r200_set_safe_registers(ptr nocapture noundef writeonly %rdev) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5
  %0 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @r200_reg_safe_bm, ptr %config, align 8
  %reg_safe_bm_size = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 1
  %1 = ptrtoint ptr %reg_safe_bm_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 102, ptr %reg_safe_bm_size, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/r200.c", i32 101, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/r200.c", i32 166, i32 4}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/radeon/r200.c", i32 329, i32 4}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/radeon/r200.c", i32 334, i32 4}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/radeon/r200.c", i32 540, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @r200_packet0_check._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @r200_packet0_check._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/radeon/radeon.h", i32 2721, i32 3}
!16 = !{ptr @r200_reg_safe_bm, !17, !"r200_reg_safe_bm", i1 false, i1 false}
!17 = !{!"./drivers/gpu/drm/radeon/r200_reg_safe.h", i32 1, i32 23}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{!"auto-init"}
