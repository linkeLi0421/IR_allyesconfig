; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/r600_hdmi.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/r600_hdmi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.radeon_encoder_atom_dig = type { i8, i8, i32, i32, i16, i32, %struct.drm_display_mode, ptr, i32, i8, i32, ptr, ptr, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.radeon_afmt = type { i8, i32, i8, i32 }
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
%struct.radeon_encoder = type { %struct.drm_encoder, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_display_mode, ptr, i32, i8, i16, ptr, i32, i8, i32, i8 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.hdmi_audio_infoframe = type { i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.radeon_hdmi_acr = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.radeon_crtc = type { %struct.drm_crtc, i32, i8, i8, i8, i32, ptr, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, %union.dfixed, %union.dfixed, %struct.drm_display_mode, i32, ptr, ptr, i32, %struct.radeon_atom_ss, i8, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, %struct.drm_display_mode, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.radeon_atom_ss = type { i16, i16, i8, i16, i8, i8, i8, i16, i16 }

@.str = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s with %d channels, %d Hz sampling rate, %d bits per sample,\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"playing\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"stopped\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"0x%02X IEC60958 status bits and 0x%02X category code\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to setup audio infoframe\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to pack audio infoframe\0A\00", [32 x i8] zeroinitializer }, align 32
@r600_hdmi_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 516, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Invalid encoder for HDMI: 0x%X\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"r600_hdmi_enable\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/gpu/drm/radeon/r600_hdmi.c\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@r600_hdmi_enable._entry_ptr = internal global ptr @r600_hdmi_enable._entry, section ".printk_index", align 4
@.str.11 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%sabling HDMI interface @ 0x%04X for encoder 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"En\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Dis\00", [28 x i8] zeroinitializer }, align 32
@r600_audio_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.8, i32 89, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unknown bits per sample 0x%x, using 16\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"r600_audio_status\00", [46 x i8] zeroinitializer }, align 32
@r600_audio_status._entry_ptr = internal global ptr @r600_audio_status._entry, section ".printk_index", align 4
@switch.table.r600_audio_update_hdmi = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 8, i32 16, i32 20, i32 24, i32 32], [44 x i8] zeroinitializer }, align 32
@switch.table.r600_hdmi_update_audio_settings = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 8, i32 16, i32 20, i32 24, i32 32], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 15, i64 19, i64 20, i64 25]
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 429, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 432, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 437, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 445, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 515, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 533, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private constant [38 x i8] c"../drivers/gpu/drm/radeon/r600_hdmi.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 88, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [36 x i8] c"switch.table.r600_audio_update_hdmi\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [45 x i8] c"switch.table.r600_hdmi_update_audio_settings\00", align 1
@llvm.compiler.used = appending global [22 x ptr] [ptr @r600_audio_status._entry, ptr @r600_audio_status._entry_ptr, ptr @r600_hdmi_enable._entry, ptr @r600_hdmi_enable._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @switch.table.r600_audio_update_hdmi, ptr @switch.table.r600_hdmi_update_audio_settings], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_hdmi_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_audio_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.r600_audio_update_hdmi to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.r600_hdmi_update_audio_settings to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_audio_update_hdmi(ptr nocapture noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ddev = getelementptr i8, ptr %work, i32 -10732
  %0 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddev, align 4
  %rmmio.i.i = getelementptr i8, ptr %work, i32 -9756
  %2 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i.i, align 4, !noalias !36
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 29632
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !noalias !36, !srcloc !39
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !noalias !36, !srcloc !40
  %and.i = and i32 %5, 7
  %add.i = add nuw nsw i32 %and.i, 1
  %and1.i = lshr i32 %5, 4
  %shr.i = and i32 %and1.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %shr.i)
  %6 = icmp ult i32 %shr.i, 5
  br i1 %6, label %switch.lookup, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %work, i32 -10736
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 8, !noalias !36
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.14, i32 noundef %5) #9, !noalias !36
  br label %r600_audio_status.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.r600_audio_update_hdmi, i32 0, i32 %shr.i
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %r600_audio_status.exit

r600_audio_status.exit:                           ; preds = %switch.lookup, %do.end.i
  %.sink39.i = phi i32 [ 16, %do.end.i ], [ %switch.load, %switch.lookup ]
  %and11.i = and i32 %5, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool.not.i = icmp eq i32 %and11.i, 0
  %.sink.i = select i1 %tobool.not.i, i32 48000, i32 44100
  %shr13.i = lshr i32 %5, 11
  %and14.i = and i32 %shr13.i, 7
  %add15.i = add nuw nsw i32 %and14.i, 1
  %mul.i = mul nuw nsw i32 %.sink.i, %add15.i
  %shr17.i = lshr i32 %5, 8
  %and18.i = and i32 %shr17.i, 7
  %add19.i = add nuw nsw i32 %and18.i, 1
  %div.i = udiv i32 %mul.i, %add19.i
  %10 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i.i, align 4, !noalias !36
  %add.ptr.i38.i = getelementptr i8, ptr %11, i32 29656
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38.i) #6, !noalias !36, !srcloc !39
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !noalias !36, !srcloc !40
  %conv.i = trunc i32 %13 to i8
  %shr23.i = lshr i32 %13, 8
  %conv25.i = trunc i32 %shr23.i to i8
  %pin = getelementptr i8, ptr %work, i32 148
  %14 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pin, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %add.i)
  %cmp.not = icmp eq i32 %15, %add.i
  br i1 %cmp.not, label %lor.lhs.false, label %r600_audio_status.exit.if.then_crit_edge

r600_audio_status.exit.if.then_crit_edge:         ; preds = %r600_audio_status.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %r600_audio_status.exit
  %rate = getelementptr i8, ptr %work, i32 152
  %16 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %div.i)
  %cmp6.not = icmp eq i32 %17, %div.i
  br i1 %cmp6.not, label %lor.lhs.false7, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %bits_per_sample = getelementptr i8, ptr %work, i32 156
  %18 = ptrtoint ptr %bits_per_sample to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bits_per_sample, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %.sink39.i)
  %cmp12.not = icmp eq i32 %19, %.sink39.i
  br i1 %cmp12.not, label %lor.lhs.false13, label %lor.lhs.false7.if.then_crit_edge

lor.lhs.false7.if.then_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false13:                                  ; preds = %lor.lhs.false7
  %status_bits = getelementptr i8, ptr %work, i32 160
  %20 = ptrtoint ptr %status_bits to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %status_bits, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %conv.i)
  %cmp19.not = icmp eq i8 %21, %conv.i
  br i1 %cmp19.not, label %lor.lhs.false21, label %lor.lhs.false13.if.then_crit_edge

lor.lhs.false13.if.then_crit_edge:                ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false21:                                  ; preds = %lor.lhs.false13
  %category_code = getelementptr i8, ptr %work, i32 161
  %22 = ptrtoint ptr %category_code to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %category_code, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %conv25.i)
  %cmp28.not = icmp eq i8 %23, %conv25.i
  br i1 %cmp28.not, label %lor.lhs.false21.if.end_crit_edge, label %lor.lhs.false21.if.then_crit_edge

lor.lhs.false21.if.then_crit_edge:                ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false21.if.end_crit_edge:                 ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false21.if.then_crit_edge, %lor.lhs.false13.if.then_crit_edge, %lor.lhs.false7.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %r600_audio_status.exit.if.then_crit_edge
  %24 = ptrtoint ptr %pin to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add.i, ptr %pin, align 4
  %audio_status.sroa.6.0.pin.sroa_idx = getelementptr i8, ptr %work, i32 152
  %25 = ptrtoint ptr %audio_status.sroa.6.0.pin.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %div.i, ptr %audio_status.sroa.6.0.pin.sroa_idx, align 4
  %audio_status.sroa.8.0.pin.sroa_idx = getelementptr i8, ptr %work, i32 156
  %26 = ptrtoint ptr %audio_status.sroa.8.0.pin.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink39.i, ptr %audio_status.sroa.8.0.pin.sroa_idx, align 4
  %audio_status.sroa.11.0.pin.sroa_idx = getelementptr i8, ptr %work, i32 160
  %27 = ptrtoint ptr %audio_status.sroa.11.0.pin.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv.i, ptr %audio_status.sroa.11.0.pin.sroa_idx, align 4
  %audio_status.sroa.13.0.pin.sroa_idx = getelementptr i8, ptr %work, i32 161
  %28 = ptrtoint ptr %audio_status.sroa.13.0.pin.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv25.i, ptr %audio_status.sroa.13.0.pin.sroa_idx, align 1
  %audio_status.sroa.15.0.pin.sroa_idx = getelementptr i8, ptr %work, i32 162
  %29 = call ptr @memset(ptr %audio_status.sroa.15.0.pin.sroa_idx, i32 0, i32 14)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false21.if.end_crit_edge
  %changed.0.off0 = phi i1 [ true, %if.then ], [ false, %lor.lhs.false21.if.end_crit_edge ]
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 16
  %30 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn76 = load ptr, ptr %encoder_list, align 4
  %cmp38.not78 = icmp eq ptr %.pn76, %encoder_list
  br i1 %cmp38.not78, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn79 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn76, %if.end.for.body_crit_edge ]
  %encoder.080 = getelementptr i8, ptr %.pn79, i32 -4
  %call = tail call zeroext i1 @radeon_encoder_is_digital(ptr noundef %encoder.080) #6
  br i1 %call, label %if.end41, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end41:                                         ; preds = %for.body
  br i1 %changed.0.off0, label %if.end41.if.then46_crit_edge, label %lor.lhs.false43

if.end41.if.then46_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then46

lor.lhs.false43:                                  ; preds = %if.end41
  %enc_priv.i = getelementptr i8, ptr %.pn79, i32 220
  %31 = ptrtoint ptr %enc_priv.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %enc_priv.i, align 4
  %afmt.i = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %32, i32 0, i32 11
  %33 = ptrtoint ptr %afmt.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %afmt.i, align 4
  %tobool.not.i65 = icmp eq ptr %34, null
  br i1 %tobool.not.i65, label %lor.lhs.false43.for.inc_crit_edge, label %lor.lhs.false.i

lor.lhs.false43.for.inc_crit_edge:                ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.lhs.false.i:                                  ; preds = %lor.lhs.false43
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 4, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool2.not.i = icmp eq i8 %36, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.for.inc_crit_edge, label %if.end.i

lor.lhs.false.i.for.inc_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end.i:                                         ; preds = %lor.lhs.false.i
  %37 = ptrtoint ptr %encoder.080 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %encoder.080, align 4
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev_private.i.i, align 4
  %offset2.i.i = getelementptr inbounds %struct.radeon_afmt, ptr %34, i32 0, i32 1
  %41 = ptrtoint ptr %offset2.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %offset2.i.i, align 4
  %add.i.i = add i32 %42, 29700
  %rmmio_size.i.i.i = getelementptr inbounds %struct.radeon_device, ptr %40, i32 0, i32 18
  %43 = ptrtoint ptr %rmmio_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rmmio_size.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %add.i.i)
  %cmp.i.i.i = icmp ugt i32 %44, %add.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add.i.i)
  %cmp1.i.i.i = icmp ult i32 %add.i.i, 65536
  %or.cond.i.i.i = or i1 %cmp1.i.i.i, %cmp.i.i.i
  br i1 %or.cond.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %rmmio.i.i.i = getelementptr inbounds %struct.radeon_device, ptr %40, i32 0, i32 31
  %45 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %46, i32 %add.i.i
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !39
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  br label %r600_hdmi_buffer_status_changed.exit

if.else.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i.i.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %40, i32 noundef %add.i.i) #6
  br label %r600_hdmi_buffer_status_changed.exit

r600_hdmi_buffer_status_changed.exit:             ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %call3.i.i.i, %if.else.i.i.i ], [ %48, %if.then.i.i.i ]
  %49 = ptrtoint ptr %afmt.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %afmt.i, align 4
  %last_buffer_filled_status.i = getelementptr inbounds %struct.radeon_afmt, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %last_buffer_filled_status.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %last_buffer_filled_status.i, align 4, !range !41
  %53 = trunc i32 %retval.0.i.i.i to i8
  %54 = lshr i8 %53, 4
  %55 = and i8 %54, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %52, i8 %55)
  %cmp.i.not = icmp eq i8 %52, %55
  %56 = ptrtoint ptr %last_buffer_filled_status.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %last_buffer_filled_status.i, align 4
  br i1 %cmp.i.not, label %r600_hdmi_buffer_status_changed.exit.for.inc_crit_edge, label %r600_hdmi_buffer_status_changed.exit.if.then46_crit_edge

r600_hdmi_buffer_status_changed.exit.if.then46_crit_edge: ; preds = %r600_hdmi_buffer_status_changed.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then46

r600_hdmi_buffer_status_changed.exit.for.inc_crit_edge: ; preds = %r600_hdmi_buffer_status_changed.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then46:                                        ; preds = %r600_hdmi_buffer_status_changed.exit.if.then46_crit_edge, %if.end41.if.then46_crit_edge
  tail call void @r600_hdmi_update_audio_settings(ptr noundef %encoder.080)
  br label %for.inc

for.inc:                                          ; preds = %if.then46, %r600_hdmi_buffer_status_changed.exit.for.inc_crit_edge, %lor.lhs.false.i.for.inc_crit_edge, %lor.lhs.false43.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %57 = ptrtoint ptr %.pn79 to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pn = load ptr, ptr %.pn79, align 4
  %cmp38.not = icmp eq ptr %.pn, %encoder_list
  br i1 %cmp38.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_encoder_is_digital(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r600_hdmi_buffer_status_changed(ptr nocapture noundef readonly %encoder) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %enc_priv = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 12
  %0 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enc_priv, align 4
  %afmt = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %afmt, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %encoder, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_private.i, align 4
  %offset2.i = getelementptr inbounds %struct.radeon_afmt, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %offset2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset2.i, align 4
  %add.i = add i32 %11, 29700
  %rmmio_size.i.i = getelementptr inbounds %struct.radeon_device, ptr %9, i32 0, i32 18
  %12 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %add.i)
  %cmp.i.i = icmp ugt i32 %13, %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add.i)
  %cmp1.i.i = icmp ult i32 %add.i, 65536
  %or.cond.i.i = or i1 %cmp1.i.i, %cmp.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %9, i32 0, i32 31
  %14 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %add.i
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !39
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  br label %r600_hdmi_is_audio_buffer_filled.exit

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %9, i32 noundef %add.i) #6
  br label %r600_hdmi_is_audio_buffer_filled.exit

r600_hdmi_is_audio_buffer_filled.exit:            ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call3.i.i, %if.else.i.i ], [ %17, %if.then.i.i ]
  %18 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %afmt, align 4
  %last_buffer_filled_status = getelementptr inbounds %struct.radeon_afmt, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %last_buffer_filled_status to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %last_buffer_filled_status, align 4, !range !41
  %22 = trunc i32 %retval.0.i.i to i8
  %23 = lshr i8 %22, 4
  %24 = and i8 %23, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %24)
  %cmp = icmp ne i8 %21, %24
  %conv6 = zext i1 %cmp to i32
  %25 = ptrtoint ptr %last_buffer_filled_status to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %last_buffer_filled_status, align 4
  br label %cleanup

cleanup:                                          ; preds = %r600_hdmi_is_audio_buffer_filled.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv6, %r600_hdmi_is_audio_buffer_filled.exit ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_hdmi_update_audio_settings(ptr nocapture noundef readonly %encoder) local_unnamed_addr #0 align 64 {
entry:
  %buffer = alloca [14 x i8], align 1
  %frame = alloca %struct.hdmi_audio_infoframe, align 4
  call void @__sanitizer_cov_trace_pc() #8
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
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %6 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i.i, align 4, !noalias !42
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 29632
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !noalias !42, !srcloc !39
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !noalias !42, !srcloc !40
  %and.i = and i32 %9, 7
  %add.i = add nuw nsw i32 %and.i, 1
  %and1.i = lshr i32 %9, 4
  %shr.i = and i32 %and1.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %shr.i)
  %10 = icmp ult i32 %shr.i, 5
  br i1 %10, label %switch.lookup, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 8, !noalias !42
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.14, i32 noundef %9) #9, !noalias !42
  br label %r600_audio_status.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.r600_hdmi_update_audio_settings, i32 0, i32 %shr.i
  %13 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %r600_audio_status.exit

r600_audio_status.exit:                           ; preds = %switch.lookup, %do.end.i
  %.sink39.i = phi i32 [ 16, %do.end.i ], [ %switch.load, %switch.lookup ]
  %and11.i = and i32 %9, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool.not.i = icmp eq i32 %and11.i, 0
  %.sink.i = select i1 %tobool.not.i, i32 48000, i32 44100
  %shr13.i = lshr i32 %9, 11
  %and14.i = and i32 %shr13.i, 7
  %add15.i = add nuw nsw i32 %and14.i, 1
  %mul.i = mul nuw nsw i32 %.sink.i, %add15.i
  %shr17.i = lshr i32 %9, 8
  %and18.i = and i32 %shr17.i, 7
  %add19.i = add nuw nsw i32 %and18.i, 1
  %div.i = udiv i32 %mul.i, %add19.i
  %14 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmmio.i.i, align 4, !noalias !42
  %add.ptr.i38.i = getelementptr i8, ptr %15, i32 29656
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38.i) #6, !noalias !42, !srcloc !39
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !noalias !42, !srcloc !40
  %shr23.i = lshr i32 %17, 8
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %buffer) #6
  %18 = getelementptr inbounds [14 x i8], ptr %buffer, i32 0, i32 3
  %19 = getelementptr inbounds [14 x i8], ptr %buffer, i32 0, i32 4
  %20 = getelementptr inbounds [14 x i8], ptr %buffer, i32 0, i32 5
  %21 = getelementptr inbounds [14 x i8], ptr %buffer, i32 0, i32 6
  %22 = getelementptr inbounds [14 x i8], ptr %buffer, i32 0, i32 7
  %23 = getelementptr inbounds [14 x i8], ptr %buffer, i32 0, i32 8
  %24 = getelementptr inbounds [14 x i8], ptr %buffer, i32 0, i32 9
  %25 = getelementptr inbounds [14 x i8], ptr %buffer, i32 0, i32 11
  %26 = call ptr @memset(ptr %buffer, i32 255, i32 14)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %frame) #6
  %27 = call ptr @memset(ptr %frame, i32 255, i32 28)
  %afmt = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %5, i32 0, i32 11
  %28 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %afmt, align 4
  %tobool.not = icmp eq ptr %29, null
  br i1 %tobool.not, label %r600_audio_status.exit.cleanup_crit_edge, label %lor.lhs.false

r600_audio_status.exit.cleanup_crit_edge:         ; preds = %r600_audio_status.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %r600_audio_status.exit
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 4, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool3.not = icmp eq i8 %31, 0
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %offset5 = getelementptr inbounds %struct.radeon_afmt, ptr %29, i32 0, i32 1
  %32 = ptrtoint ptr %offset5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %offset5, align 4
  %34 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %encoder, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_private.i, align 4
  %38 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %enc_priv, align 4
  %afmt.i = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %39, i32 0, i32 11
  %40 = ptrtoint ptr %afmt.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %afmt.i, align 4
  %offset2.i = getelementptr inbounds %struct.radeon_afmt, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %offset2.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %offset2.i, align 4
  %add.i85 = add i32 %43, 29700
  %rmmio_size.i.i = getelementptr inbounds %struct.radeon_device, ptr %37, i32 0, i32 18
  %44 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %add.i85)
  %cmp.i.i = icmp ugt i32 %45, %add.i85
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add.i85)
  %cmp1.i.i = icmp ult i32 %add.i85, 65536
  %or.cond.i.i = or i1 %cmp1.i.i, %cmp.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %rmmio.i.i86 = getelementptr inbounds %struct.radeon_device, ptr %37, i32 0, i32 31
  %46 = ptrtoint ptr %rmmio.i.i86 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rmmio.i.i86, align 4
  %add.ptr.i.i87 = getelementptr i8, ptr %47, i32 %add.i85
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i87) #6, !srcloc !39
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  br label %r600_hdmi_is_audio_buffer_filled.exit

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %37, i32 noundef %add.i85) #6
  br label %r600_hdmi_is_audio_buffer_filled.exit

r600_hdmi_is_audio_buffer_filled.exit:            ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call3.i.i, %if.else.i.i ], [ %49, %if.then.i.i ]
  %and.i88 = and i32 %retval.0.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i88)
  %cmp.i.not = icmp eq i32 %and.i88, 0
  %cond = select i1 %cmp.i.not, ptr @.str.2, ptr @.str.1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull %cond, i32 noundef %add.i, i32 noundef %div.i, i32 noundef %.sink39.i) #6
  %conv = and i32 %17, 255
  %conv6 = and i32 %shr23.i, 255
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef %conv, i32 noundef %conv6) #6
  %call7 = call i32 @hdmi_audio_infoframe_init(ptr noundef nonnull %frame) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.then9, label %if.end10

if.then9:                                         ; preds = %r600_hdmi_is_audio_buffer_filled.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #6
  br label %cleanup

if.end10:                                         ; preds = %r600_hdmi_is_audio_buffer_filled.exit
  %conv12 = trunc i32 %add.i to i8
  %channels13 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %frame, i32 0, i32 3
  %50 = ptrtoint ptr %channels13 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv12, ptr %channels13, align 2
  %call14 = call i32 @hdmi_audio_infoframe_pack(ptr noundef nonnull %frame, ptr noundef nonnull %buffer, i32 noundef 14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #6
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  %add = add i32 %33, 29704
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 18
  %51 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %add)
  %cmp.i89 = icmp ugt i32 %52, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add)
  %cmp1.i = icmp ult i32 %add, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i89
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %54, i32 %add
  %55 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !39
  %56 = call i32 @llvm.bswap.i32(i32 %55) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add) #6
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i ], [ %56, %if.then.i ]
  %and = and i32 %retval.0.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %r100_mm_rreg.exit.do.body_crit_edge, label %if.then21

r100_mm_rreg.exit.do.body_crit_edge:              ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then21:                                        ; preds = %r100_mm_rreg.exit
  %and23 = and i32 %retval.0.i, -4097
  %57 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %add)
  %cmp.i91 = icmp ugt i32 %58, %add
  %or.cond.i93 = or i1 %cmp1.i, %cmp.i91
  br i1 %or.cond.i93, label %do.body.i, label %if.else.i96

do.body.i:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  call void @arm_heavy_mb() #6
  %59 = call i32 @llvm.bswap.i32(i32 %and23) #6
  %60 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i95 = getelementptr i8, ptr %61, i32 %add
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i95, i32 %59) #6, !srcloc !46
  br label %do.body

if.else.i96:                                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add, i32 noundef %and23) #6
  br label %do.body

do.body:                                          ; preds = %if.else.i96, %do.body.i, %r100_mm_rreg.exit.do.body_crit_edge
  %add25 = add i32 %33, 29696
  %62 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %add25)
  %cmp.i98 = icmp ugt i32 %63, %add25
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add25)
  %cmp1.i99 = icmp ult i32 %add25, 65536
  %or.cond.i100 = or i1 %cmp1.i99, %cmp.i98
  br i1 %or.cond.i100, label %if.then.i103, label %if.else.i105

if.then.i103:                                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i102 = getelementptr i8, ptr %65, i32 %add25
  %66 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i102) #6, !srcloc !39
  %67 = call i32 @llvm.bswap.i32(i32 %66) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  br label %r100_mm_rreg.exit107

if.else.i105:                                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i104 = call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add25) #6
  br label %r100_mm_rreg.exit107

r100_mm_rreg.exit107:                             ; preds = %if.else.i105, %if.then.i103
  %retval.0.i106 = phi i32 [ %call3.i104, %if.else.i105 ], [ %67, %if.then.i103 ]
  %or = or i32 %retval.0.i106, 256
  %68 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %add25)
  %cmp.i109 = icmp ugt i32 %69, %add25
  %or.cond.i111 = or i1 %cmp1.i99, %cmp.i109
  br i1 %or.cond.i111, label %do.body.i114, label %if.else.i115

do.body.i114:                                     ; preds = %r100_mm_rreg.exit107
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  call void @arm_heavy_mb() #6
  %70 = call i32 @llvm.bswap.i32(i32 %or) #6
  %71 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i113 = getelementptr i8, ptr %72, i32 %add25
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i113, i32 %70) #6, !srcloc !46
  br label %r100_mm_wreg.exit116

if.else.i115:                                     ; preds = %r100_mm_rreg.exit107
  call void @__sanitizer_cov_trace_pc() #8
  call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add25, i32 noundef %or) #6
  br label %r100_mm_wreg.exit116

r100_mm_wreg.exit116:                             ; preds = %if.else.i115, %do.body.i114
  %add31 = add i32 %33, 29716
  %73 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %add31)
  %cmp.i118 = icmp ugt i32 %74, %add31
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add31)
  %cmp1.i119 = icmp ult i32 %add31, 65536
  %or.cond.i120 = or i1 %cmp1.i119, %cmp.i118
  br i1 %or.cond.i120, label %if.then.i123, label %if.else.i125

if.then.i123:                                     ; preds = %r100_mm_wreg.exit116
  call void @__sanitizer_cov_trace_pc() #8
  %75 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i122 = getelementptr i8, ptr %76, i32 %add31
  %77 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i122) #6, !srcloc !39
  %78 = call i32 @llvm.bswap.i32(i32 %77) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  br label %r100_mm_rreg.exit127

if.else.i125:                                     ; preds = %r100_mm_wreg.exit116
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i124 = call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add31) #6
  br label %r100_mm_rreg.exit127

r100_mm_rreg.exit127:                             ; preds = %if.else.i125, %if.then.i123
  %retval.0.i126 = phi i32 [ %call3.i124, %if.else.i125 ], [ %78, %if.then.i123 ]
  %and33 = and i32 %retval.0.i126, -65
  %79 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %add31)
  %cmp.i129 = icmp ugt i32 %80, %add31
  %or.cond.i131 = or i1 %cmp1.i119, %cmp.i129
  br i1 %or.cond.i131, label %do.body.i134, label %if.else.i135

do.body.i134:                                     ; preds = %r100_mm_rreg.exit127
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  call void @arm_heavy_mb() #6
  %81 = call i32 @llvm.bswap.i32(i32 %and33) #6
  %82 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i133 = getelementptr i8, ptr %83, i32 %add31
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i133, i32 %81) #6, !srcloc !46
  br label %r100_mm_wreg.exit136

if.else.i135:                                     ; preds = %r100_mm_rreg.exit127
  call void @__sanitizer_cov_trace_pc() #8
  call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add31, i32 noundef %and33) #6
  br label %r100_mm_wreg.exit136

r100_mm_wreg.exit136:                             ; preds = %if.else.i135, %do.body.i134
  %84 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %encoder, align 4
  %dev_private.i137 = getelementptr inbounds %struct.drm_device, ptr %85, i32 0, i32 5
  %86 = ptrtoint ptr %dev_private.i137 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev_private.i137, align 4
  %88 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %enc_priv, align 4
  %afmt.i139 = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %89, i32 0, i32 11
  %90 = ptrtoint ptr %afmt.i139 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %afmt.i139, align 4
  %offset2.i140 = getelementptr inbounds %struct.radeon_afmt, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %offset2.i140 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %offset2.i140, align 4
  %add.i141 = add i32 %93, 29900
  %94 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %18, align 1
  %conv.i142 = zext i8 %95 to i32
  %96 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %19, align 1
  %conv5.i = zext i8 %97 to i32
  %shl.i = shl nuw nsw i32 %conv5.i, 8
  %or.i = or i32 %shl.i, %conv.i142
  %98 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %20, align 1
  %conv7.i = zext i8 %99 to i32
  %shl8.i = shl nuw nsw i32 %conv7.i, 16
  %or9.i = or i32 %or.i, %shl8.i
  %100 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %21, align 1
  %conv11.i = zext i8 %101 to i32
  %shl12.i = shl nuw i32 %conv11.i, 24
  %or13.i = or i32 %or9.i, %shl12.i
  %rmmio_size.i.i143 = getelementptr inbounds %struct.radeon_device, ptr %87, i32 0, i32 18
  %102 = ptrtoint ptr %rmmio_size.i.i143 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %rmmio_size.i.i143, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %add.i141)
  %cmp.i.i144 = icmp ugt i32 %103, %add.i141
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add.i141)
  %cmp1.i.i145 = icmp ult i32 %add.i141, 65536
  %or.cond.i.i146 = or i1 %cmp1.i.i145, %cmp.i.i144
  br i1 %or.cond.i.i146, label %do.body.i.i, label %if.else.i.i149

do.body.i.i:                                      ; preds = %r100_mm_wreg.exit136
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  call void @arm_heavy_mb() #6
  %104 = call i32 @llvm.bswap.i32(i32 %or13.i) #6
  %rmmio.i.i147 = getelementptr inbounds %struct.radeon_device, ptr %87, i32 0, i32 31
  %105 = ptrtoint ptr %rmmio.i.i147 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %rmmio.i.i147, align 4
  %add.ptr.i.i148 = getelementptr i8, ptr %106, i32 %add.i141
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i148, i32 %104) #6, !srcloc !46
  br label %r100_mm_wreg.exit.i

if.else.i.i149:                                   ; preds = %r100_mm_wreg.exit136
  call void @__sanitizer_cov_trace_pc() #8
  call void @r100_mm_wreg_slow(ptr noundef %87, i32 noundef %add.i141, i32 noundef %or13.i) #6
  br label %r100_mm_wreg.exit.i

r100_mm_wreg.exit.i:                              ; preds = %if.else.i.i149, %do.body.i.i
  %add14.i = add i32 %93, 29904
  %107 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %22, align 1
  %conv16.i = zext i8 %108 to i32
  %109 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %23, align 1
  %conv18.i = zext i8 %110 to i32
  %shl19.i = shl nuw nsw i32 %conv18.i, 8
  %or20.i = or i32 %shl19.i, %conv16.i
  %111 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %24, align 1
  %conv22.i = zext i8 %112 to i32
  %shl23.i = shl nuw nsw i32 %conv22.i, 16
  %or24.i = or i32 %or20.i, %shl23.i
  %113 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %25, align 1
  %conv26.i = zext i8 %114 to i32
  %shl27.i = shl nuw i32 %conv26.i, 24
  %or28.i = or i32 %or24.i, %shl27.i
  %115 = ptrtoint ptr %rmmio_size.i.i143 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %rmmio_size.i.i143, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %116, i32 %add14.i)
  %cmp.i2.i = icmp ugt i32 %116, %add14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add14.i)
  %cmp1.i3.i = icmp ult i32 %add14.i, 65536
  %or.cond.i4.i = or i1 %cmp1.i3.i, %cmp.i2.i
  br i1 %or.cond.i4.i, label %do.body.i7.i, label %if.else.i8.i

do.body.i7.i:                                     ; preds = %r100_mm_wreg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  call void @arm_heavy_mb() #6
  %117 = call i32 @llvm.bswap.i32(i32 %or28.i) #6
  %rmmio.i5.i = getelementptr inbounds %struct.radeon_device, ptr %87, i32 0, i32 31
  %118 = ptrtoint ptr %rmmio.i5.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %rmmio.i5.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %119, i32 %add14.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %117) #6, !srcloc !46
  br label %r600_hdmi_update_audio_infoframe.exit

if.else.i8.i:                                     ; preds = %r100_mm_wreg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @r100_mm_wreg_slow(ptr noundef %87, i32 noundef %add14.i, i32 noundef %or28.i) #6
  br label %r600_hdmi_update_audio_infoframe.exit

r600_hdmi_update_audio_infoframe.exit:            ; preds = %if.else.i8.i, %do.body.i7.i
  %120 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %121, i32 %add31)
  %cmp.i151 = icmp ugt i32 %121, %add31
  %or.cond.i153 = or i1 %cmp1.i119, %cmp.i151
  br i1 %or.cond.i153, label %if.then.i156, label %if.else.i158

if.then.i156:                                     ; preds = %r600_hdmi_update_audio_infoframe.exit
  call void @__sanitizer_cov_trace_pc() #8
  %122 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i155 = getelementptr i8, ptr %123, i32 %add31
  %124 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i155) #6, !srcloc !39
  %125 = call i32 @llvm.bswap.i32(i32 %124) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  br label %r100_mm_rreg.exit160

if.else.i158:                                     ; preds = %r600_hdmi_update_audio_infoframe.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i157 = call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add31) #6
  br label %r100_mm_rreg.exit160

r100_mm_rreg.exit160:                             ; preds = %if.else.i158, %if.then.i156
  %retval.0.i159 = phi i32 [ %call3.i157, %if.else.i158 ], [ %125, %if.then.i156 ]
  %or44 = or i32 %retval.0.i159, 160
  %126 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %127, i32 %add31)
  %cmp.i162 = icmp ugt i32 %127, %add31
  %or.cond.i164 = or i1 %cmp1.i119, %cmp.i162
  br i1 %or.cond.i164, label %do.body.i167, label %if.else.i168

do.body.i167:                                     ; preds = %r100_mm_rreg.exit160
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  call void @arm_heavy_mb() #6
  %128 = call i32 @llvm.bswap.i32(i32 %or44) #6
  %129 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i166 = getelementptr i8, ptr %130, i32 %add31
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i166, i32 %128) #6, !srcloc !46
  br label %cleanup

if.else.i168:                                     ; preds = %r100_mm_rreg.exit160
  call void @__sanitizer_cov_trace_pc() #8
  call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add31, i32 noundef %or44) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else.i168, %do.body.i167, %if.then17, %if.then9, %lor.lhs.false.cleanup_crit_edge, %r600_audio_status.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %frame) #6
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %buffer) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_audio_enable(ptr nocapture noundef readonly %rdev, ptr noundef readnone %pin, i8 noundef zeroext %enable_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 29440
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !39
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  %tobool.not = icmp eq ptr %pin, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable_mask)
  %tobool1.not = icmp eq i8 %enable_mask, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %enable_mask to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %spec.select.v = select i1 %tobool3.not, i32 -2147483648, i32 -2130706432
  %and8 = shl nuw i32 %conv, 24
  %4 = and i32 %and8, 234881024
  %5 = or i32 %4, %spec.select.v
  %6 = or i32 %5, %3
  br label %if.end26

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %and25 = and i32 %3, 1895825407
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then2
  %tmp.3 = phi i32 [ %and25, %if.else ], [ %6, %if.then2 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %7 = tail call i32 @llvm.bswap.i32(i32 %tmp.3) #6
  %8 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i42 = getelementptr i8, ptr %9, i32 29440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 %7) #6, !srcloc !46
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @r600_audio_get_pin(ptr noundef readnone %rdev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pin = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 95, i32 1
  ret ptr %pin
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_hdmi_update_acr(ptr nocapture noundef readonly %encoder, i32 noundef %offset, ptr nocapture noundef readonly %acr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %5)
  %cmp = icmp ugt i32 %5, 30
  %cond = select i1 %cmp, i32 29708, i32 29916
  %add = add i32 %cond, %offset
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 18
  %6 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add)
  %cmp.i = icmp ugt i32 %7, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add)
  %cmp1.i = icmp ult i32 %add, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %8 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %add
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !39
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add) #6
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i ], [ %11, %if.then.i ]
  %or = or i32 %retval.0.i, 4352
  %12 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %add)
  %cmp.i122 = icmp ugt i32 %13, %add
  %or.cond.i124 = or i1 %cmp1.i, %cmp.i122
  br i1 %or.cond.i124, label %do.body.i, label %if.else.i127

do.body.i:                                        ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %14 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %rmmio.i125 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %15 = ptrtoint ptr %rmmio.i125 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i125, align 4
  %add.ptr.i126 = getelementptr i8, ptr %16, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i126, i32 %14) #6, !srcloc !46
  br label %r100_mm_wreg.exit

if.else.i127:                                     ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add, i32 noundef %or) #6
  br label %r100_mm_wreg.exit

r100_mm_wreg.exit:                                ; preds = %if.else.i127, %do.body.i
  %add5 = add i32 %offset, 29868
  %17 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %add5)
  %cmp.i129 = icmp ugt i32 %18, %add5
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add5)
  %cmp1.i130 = icmp ult i32 %add5, 65536
  %or.cond.i131 = or i1 %cmp1.i130, %cmp.i129
  br i1 %or.cond.i131, label %if.then.i134, label %if.else.i136

if.then.i134:                                     ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %rmmio.i132 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %19 = ptrtoint ptr %rmmio.i132 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rmmio.i132, align 4
  %add.ptr.i133 = getelementptr i8, ptr %20, i32 %add5
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i133) #6, !srcloc !39
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  br label %r100_mm_rreg.exit138

if.else.i136:                                     ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i135 = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add5) #6
  br label %r100_mm_rreg.exit138

r100_mm_rreg.exit138:                             ; preds = %if.else.i136, %if.then.i134
  %retval.0.i137 = phi i32 [ %call3.i135, %if.else.i136 ], [ %22, %if.then.i134 ]
  %and7 = and i32 %retval.0.i137, 4095
  %cts_32khz = getelementptr inbounds %struct.radeon_hdmi_acr, ptr %acr, i32 0, i32 2
  %23 = ptrtoint ptr %cts_32khz to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cts_32khz, align 4
  %shl = shl i32 %24, 12
  %or10 = or i32 %shl, %and7
  %25 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %add5)
  %cmp.i140 = icmp ugt i32 %26, %add5
  %or.cond.i142 = or i1 %cmp1.i130, %cmp.i140
  br i1 %or.cond.i142, label %do.body.i145, label %if.else.i146

do.body.i145:                                     ; preds = %r100_mm_rreg.exit138
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %27 = tail call i32 @llvm.bswap.i32(i32 %or10) #6
  %rmmio.i143 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %28 = ptrtoint ptr %rmmio.i143 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmmio.i143, align 4
  %add.ptr.i144 = getelementptr i8, ptr %29, i32 %add5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i144, i32 %27) #6, !srcloc !46
  br label %r100_mm_wreg.exit147

if.else.i146:                                     ; preds = %r100_mm_rreg.exit138
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add5, i32 noundef %or10) #6
  br label %r100_mm_wreg.exit147

r100_mm_wreg.exit147:                             ; preds = %if.else.i146, %do.body.i145
  %add16 = add i32 %offset, 29872
  %30 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %add16)
  %cmp.i149 = icmp ugt i32 %31, %add16
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add16)
  %cmp1.i150 = icmp ult i32 %add16, 65536
  %or.cond.i151 = or i1 %cmp1.i150, %cmp.i149
  br i1 %or.cond.i151, label %if.then.i154, label %if.else.i156

if.then.i154:                                     ; preds = %r100_mm_wreg.exit147
  call void @__sanitizer_cov_trace_pc() #8
  %rmmio.i152 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %32 = ptrtoint ptr %rmmio.i152 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmmio.i152, align 4
  %add.ptr.i153 = getelementptr i8, ptr %33, i32 %add16
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i153) #6, !srcloc !39
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  br label %r100_mm_rreg.exit158

if.else.i156:                                     ; preds = %r100_mm_wreg.exit147
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i155 = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add16) #6
  br label %r100_mm_rreg.exit158

r100_mm_rreg.exit158:                             ; preds = %if.else.i156, %if.then.i154
  %retval.0.i157 = phi i32 [ %call3.i155, %if.else.i156 ], [ %35, %if.then.i154 ]
  %and18 = and i32 %retval.0.i157, -1048576
  %n_32khz = getelementptr inbounds %struct.radeon_hdmi_acr, ptr %acr, i32 0, i32 1
  %36 = ptrtoint ptr %n_32khz to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %n_32khz, align 4
  %and19 = and i32 %37, 1048575
  %or22 = or i32 %and19, %and18
  %38 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %add16)
  %cmp.i160 = icmp ugt i32 %39, %add16
  %or.cond.i162 = or i1 %cmp1.i150, %cmp.i160
  br i1 %or.cond.i162, label %do.body.i165, label %if.else.i166

do.body.i165:                                     ; preds = %r100_mm_rreg.exit158
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %40 = tail call i32 @llvm.bswap.i32(i32 %or22) #6
  %rmmio.i163 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %41 = ptrtoint ptr %rmmio.i163 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rmmio.i163, align 4
  %add.ptr.i164 = getelementptr i8, ptr %42, i32 %add16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i164, i32 %40) #6, !srcloc !46
  br label %r100_mm_wreg.exit167

if.else.i166:                                     ; preds = %r100_mm_rreg.exit158
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add16, i32 noundef %or22) #6
  br label %r100_mm_wreg.exit167

r100_mm_wreg.exit167:                             ; preds = %if.else.i166, %do.body.i165
  %add28 = add i32 %offset, 29876
  %43 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %add28)
  %cmp.i169 = icmp ugt i32 %44, %add28
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add28)
  %cmp1.i170 = icmp ult i32 %add28, 65536
  %or.cond.i171 = or i1 %cmp1.i170, %cmp.i169
  br i1 %or.cond.i171, label %if.then.i174, label %if.else.i176

if.then.i174:                                     ; preds = %r100_mm_wreg.exit167
  call void @__sanitizer_cov_trace_pc() #8
  %rmmio.i172 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %45 = ptrtoint ptr %rmmio.i172 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rmmio.i172, align 4
  %add.ptr.i173 = getelementptr i8, ptr %46, i32 %add28
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i173) #6, !srcloc !39
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  br label %r100_mm_rreg.exit178

if.else.i176:                                     ; preds = %r100_mm_wreg.exit167
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i175 = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add28) #6
  br label %r100_mm_rreg.exit178

r100_mm_rreg.exit178:                             ; preds = %if.else.i176, %if.then.i174
  %retval.0.i177 = phi i32 [ %call3.i175, %if.else.i176 ], [ %48, %if.then.i174 ]
  %and30 = and i32 %retval.0.i177, 4095
  %cts_44_1khz = getelementptr inbounds %struct.radeon_hdmi_acr, ptr %acr, i32 0, i32 4
  %49 = ptrtoint ptr %cts_44_1khz to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cts_44_1khz, align 4
  %shl32 = shl i32 %50, 12
  %or34 = or i32 %shl32, %and30
  %51 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %add28)
  %cmp.i180 = icmp ugt i32 %52, %add28
  %or.cond.i182 = or i1 %cmp1.i170, %cmp.i180
  br i1 %or.cond.i182, label %do.body.i185, label %if.else.i186

do.body.i185:                                     ; preds = %r100_mm_rreg.exit178
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %53 = tail call i32 @llvm.bswap.i32(i32 %or34) #6
  %rmmio.i183 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %54 = ptrtoint ptr %rmmio.i183 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rmmio.i183, align 4
  %add.ptr.i184 = getelementptr i8, ptr %55, i32 %add28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i184, i32 %53) #6, !srcloc !46
  br label %r100_mm_wreg.exit187

if.else.i186:                                     ; preds = %r100_mm_rreg.exit178
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add28, i32 noundef %or34) #6
  br label %r100_mm_wreg.exit187

r100_mm_wreg.exit187:                             ; preds = %if.else.i186, %do.body.i185
  %add40 = add i32 %offset, 29880
  %56 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %add40)
  %cmp.i189 = icmp ugt i32 %57, %add40
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add40)
  %cmp1.i190 = icmp ult i32 %add40, 65536
  %or.cond.i191 = or i1 %cmp1.i190, %cmp.i189
  br i1 %or.cond.i191, label %if.then.i194, label %if.else.i196

if.then.i194:                                     ; preds = %r100_mm_wreg.exit187
  call void @__sanitizer_cov_trace_pc() #8
  %rmmio.i192 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %58 = ptrtoint ptr %rmmio.i192 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rmmio.i192, align 4
  %add.ptr.i193 = getelementptr i8, ptr %59, i32 %add40
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i193) #6, !srcloc !39
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  br label %r100_mm_rreg.exit198

if.else.i196:                                     ; preds = %r100_mm_wreg.exit187
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i195 = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add40) #6
  br label %r100_mm_rreg.exit198

r100_mm_rreg.exit198:                             ; preds = %if.else.i196, %if.then.i194
  %retval.0.i197 = phi i32 [ %call3.i195, %if.else.i196 ], [ %61, %if.then.i194 ]
  %and42 = and i32 %retval.0.i197, -1048576
  %n_44_1khz = getelementptr inbounds %struct.radeon_hdmi_acr, ptr %acr, i32 0, i32 3
  %62 = ptrtoint ptr %n_44_1khz to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %n_44_1khz, align 4
  %and43 = and i32 %63, 1048575
  %or46 = or i32 %and43, %and42
  %64 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %add40)
  %cmp.i200 = icmp ugt i32 %65, %add40
  %or.cond.i202 = or i1 %cmp1.i190, %cmp.i200
  br i1 %or.cond.i202, label %do.body.i205, label %if.else.i206

do.body.i205:                                     ; preds = %r100_mm_rreg.exit198
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %66 = tail call i32 @llvm.bswap.i32(i32 %or46) #6
  %rmmio.i203 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %67 = ptrtoint ptr %rmmio.i203 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rmmio.i203, align 4
  %add.ptr.i204 = getelementptr i8, ptr %68, i32 %add40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i204, i32 %66) #6, !srcloc !46
  br label %r100_mm_wreg.exit207

if.else.i206:                                     ; preds = %r100_mm_rreg.exit198
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add40, i32 noundef %or46) #6
  br label %r100_mm_wreg.exit207

r100_mm_wreg.exit207:                             ; preds = %if.else.i206, %do.body.i205
  %add52 = add i32 %offset, 29884
  %69 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %add52)
  %cmp.i209 = icmp ugt i32 %70, %add52
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add52)
  %cmp1.i210 = icmp ult i32 %add52, 65536
  %or.cond.i211 = or i1 %cmp1.i210, %cmp.i209
  br i1 %or.cond.i211, label %if.then.i214, label %if.else.i216

if.then.i214:                                     ; preds = %r100_mm_wreg.exit207
  call void @__sanitizer_cov_trace_pc() #8
  %rmmio.i212 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %71 = ptrtoint ptr %rmmio.i212 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rmmio.i212, align 4
  %add.ptr.i213 = getelementptr i8, ptr %72, i32 %add52
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i213) #6, !srcloc !39
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  br label %r100_mm_rreg.exit218

if.else.i216:                                     ; preds = %r100_mm_wreg.exit207
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i215 = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add52) #6
  br label %r100_mm_rreg.exit218

r100_mm_rreg.exit218:                             ; preds = %if.else.i216, %if.then.i214
  %retval.0.i217 = phi i32 [ %call3.i215, %if.else.i216 ], [ %74, %if.then.i214 ]
  %and54 = and i32 %retval.0.i217, 4095
  %cts_48khz = getelementptr inbounds %struct.radeon_hdmi_acr, ptr %acr, i32 0, i32 6
  %75 = ptrtoint ptr %cts_48khz to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %cts_48khz, align 4
  %shl56 = shl i32 %76, 12
  %or58 = or i32 %shl56, %and54
  %77 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %add52)
  %cmp.i220 = icmp ugt i32 %78, %add52
  %or.cond.i222 = or i1 %cmp1.i210, %cmp.i220
  br i1 %or.cond.i222, label %do.body.i225, label %if.else.i226

do.body.i225:                                     ; preds = %r100_mm_rreg.exit218
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %79 = tail call i32 @llvm.bswap.i32(i32 %or58) #6
  %rmmio.i223 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %80 = ptrtoint ptr %rmmio.i223 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %rmmio.i223, align 4
  %add.ptr.i224 = getelementptr i8, ptr %81, i32 %add52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i224, i32 %79) #6, !srcloc !46
  br label %r100_mm_wreg.exit227

if.else.i226:                                     ; preds = %r100_mm_rreg.exit218
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add52, i32 noundef %or58) #6
  br label %r100_mm_wreg.exit227

r100_mm_wreg.exit227:                             ; preds = %if.else.i226, %do.body.i225
  %add64 = add i32 %offset, 29888
  %82 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %add64)
  %cmp.i229 = icmp ugt i32 %83, %add64
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add64)
  %cmp1.i230 = icmp ult i32 %add64, 65536
  %or.cond.i231 = or i1 %cmp1.i230, %cmp.i229
  br i1 %or.cond.i231, label %if.then.i234, label %if.else.i236

if.then.i234:                                     ; preds = %r100_mm_wreg.exit227
  call void @__sanitizer_cov_trace_pc() #8
  %rmmio.i232 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %84 = ptrtoint ptr %rmmio.i232 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rmmio.i232, align 4
  %add.ptr.i233 = getelementptr i8, ptr %85, i32 %add64
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i233) #6, !srcloc !39
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  br label %r100_mm_rreg.exit238

if.else.i236:                                     ; preds = %r100_mm_wreg.exit227
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i235 = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add64) #6
  br label %r100_mm_rreg.exit238

r100_mm_rreg.exit238:                             ; preds = %if.else.i236, %if.then.i234
  %retval.0.i237 = phi i32 [ %call3.i235, %if.else.i236 ], [ %87, %if.then.i234 ]
  %and66 = and i32 %retval.0.i237, -1048576
  %n_48khz = getelementptr inbounds %struct.radeon_hdmi_acr, ptr %acr, i32 0, i32 5
  %88 = ptrtoint ptr %n_48khz to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %n_48khz, align 4
  %and67 = and i32 %89, 1048575
  %or70 = or i32 %and67, %and66
  %90 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %add64)
  %cmp.i240 = icmp ugt i32 %91, %add64
  %or.cond.i242 = or i1 %cmp1.i230, %cmp.i240
  br i1 %or.cond.i242, label %do.body.i245, label %if.else.i246

do.body.i245:                                     ; preds = %r100_mm_rreg.exit238
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %92 = tail call i32 @llvm.bswap.i32(i32 %or70) #6
  %rmmio.i243 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %93 = ptrtoint ptr %rmmio.i243 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %rmmio.i243, align 4
  %add.ptr.i244 = getelementptr i8, ptr %94, i32 %add64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i244, i32 %92) #6, !srcloc !46
  br label %r100_mm_wreg.exit247

if.else.i246:                                     ; preds = %r100_mm_rreg.exit238
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add64, i32 noundef %or70) #6
  br label %r100_mm_wreg.exit247

r100_mm_wreg.exit247:                             ; preds = %if.else.i246, %do.body.i245
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_set_avi_packet(ptr noundef %rdev, i32 noundef %offset, ptr nocapture noundef readonly %buffer, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %buffer, i32 3
  %add = add i32 %offset, 29780
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %add.ptr, align 1
  %conv = zext i8 %1 to i32
  %arrayidx1 = getelementptr i8, ptr %buffer, i32 4
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv2, 8
  %or = or i32 %shl, %conv
  %arrayidx3 = getelementptr i8, ptr %buffer, i32 5
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %5 to i32
  %shl5 = shl nuw nsw i32 %conv4, 16
  %or6 = or i32 %or, %shl5
  %arrayidx7 = getelementptr i8, ptr %buffer, i32 6
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %7 to i32
  %shl9 = shl nuw i32 %conv8, 24
  %or10 = or i32 %or6, %shl9
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %8 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %add)
  %cmp.i = icmp ugt i32 %9, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add)
  %cmp1.i = icmp ult i32 %add, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %10 = tail call i32 @llvm.bswap.i32(i32 %or10) #6
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %11 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #6, !srcloc !46
  br label %r100_mm_wreg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef %or10) #6
  br label %r100_mm_wreg.exit

r100_mm_wreg.exit:                                ; preds = %if.else.i, %do.body.i
  %add11 = add i32 %offset, 29784
  %arrayidx12 = getelementptr i8, ptr %buffer, i32 7
  %13 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %14 to i32
  %arrayidx14 = getelementptr i8, ptr %buffer, i32 8
  %15 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %16 to i32
  %shl16 = shl nuw nsw i32 %conv15, 8
  %or17 = or i32 %shl16, %conv13
  %arrayidx18 = getelementptr i8, ptr %buffer, i32 9
  %17 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %18 to i32
  %shl20 = shl nuw nsw i32 %conv19, 16
  %or21 = or i32 %or17, %shl20
  %arrayidx22 = getelementptr i8, ptr %buffer, i32 10
  %19 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %20 to i32
  %shl24 = shl nuw i32 %conv23, 24
  %or25 = or i32 %or21, %shl24
  %21 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %add11)
  %cmp.i97 = icmp ugt i32 %22, %add11
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add11)
  %cmp1.i98 = icmp ult i32 %add11, 65536
  %or.cond.i99 = or i1 %cmp1.i98, %cmp.i97
  br i1 %or.cond.i99, label %do.body.i102, label %if.else.i103

do.body.i102:                                     ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %23 = tail call i32 @llvm.bswap.i32(i32 %or25) #6
  %rmmio.i100 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %24 = ptrtoint ptr %rmmio.i100 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmmio.i100, align 4
  %add.ptr.i101 = getelementptr i8, ptr %25, i32 %add11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101, i32 %23) #6, !srcloc !46
  br label %r100_mm_wreg.exit104

if.else.i103:                                     ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add11, i32 noundef %or25) #6
  br label %r100_mm_wreg.exit104

r100_mm_wreg.exit104:                             ; preds = %if.else.i103, %do.body.i102
  %add26 = add i32 %offset, 29788
  %arrayidx27 = getelementptr i8, ptr %buffer, i32 11
  %26 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %27 to i32
  %arrayidx29 = getelementptr i8, ptr %buffer, i32 12
  %28 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %29 to i32
  %shl31 = shl nuw nsw i32 %conv30, 8
  %or32 = or i32 %shl31, %conv28
  %arrayidx33 = getelementptr i8, ptr %buffer, i32 13
  %30 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %31 to i32
  %shl35 = shl nuw nsw i32 %conv34, 16
  %or36 = or i32 %or32, %shl35
  %arrayidx37 = getelementptr i8, ptr %buffer, i32 14
  %32 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %33 to i32
  %shl39 = shl nuw i32 %conv38, 24
  %or40 = or i32 %or36, %shl39
  %34 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %add26)
  %cmp.i106 = icmp ugt i32 %35, %add26
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add26)
  %cmp1.i107 = icmp ult i32 %add26, 65536
  %or.cond.i108 = or i1 %cmp1.i107, %cmp.i106
  br i1 %or.cond.i108, label %do.body.i111, label %if.else.i112

do.body.i111:                                     ; preds = %r100_mm_wreg.exit104
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %36 = tail call i32 @llvm.bswap.i32(i32 %or40) #6
  %rmmio.i109 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %37 = ptrtoint ptr %rmmio.i109 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rmmio.i109, align 4
  %add.ptr.i110 = getelementptr i8, ptr %38, i32 %add26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i110, i32 %36) #6, !srcloc !46
  br label %r100_mm_wreg.exit113

if.else.i112:                                     ; preds = %r100_mm_wreg.exit104
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add26, i32 noundef %or40) #6
  br label %r100_mm_wreg.exit113

r100_mm_wreg.exit113:                             ; preds = %if.else.i112, %do.body.i111
  %add41 = add i32 %offset, 29792
  %arrayidx42 = getelementptr i8, ptr %buffer, i32 15
  %39 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %40 to i32
  %arrayidx44 = getelementptr i8, ptr %buffer, i32 16
  %41 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %42 to i32
  %shl46 = shl nuw nsw i32 %conv45, 8
  %or47 = or i32 %shl46, %conv43
  %arrayidx48 = getelementptr i8, ptr %buffer, i32 1
  %43 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %44 to i32
  %shl50 = shl nuw i32 %conv49, 24
  %or51 = or i32 %or47, %shl50
  %45 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %add41)
  %cmp.i115 = icmp ugt i32 %46, %add41
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add41)
  %cmp1.i116 = icmp ult i32 %add41, 65536
  %or.cond.i117 = or i1 %cmp1.i116, %cmp.i115
  br i1 %or.cond.i117, label %do.body.i120, label %if.else.i121

do.body.i120:                                     ; preds = %r100_mm_wreg.exit113
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %47 = tail call i32 @llvm.bswap.i32(i32 %or51) #6
  %rmmio.i118 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %48 = ptrtoint ptr %rmmio.i118 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rmmio.i118, align 4
  %add.ptr.i119 = getelementptr i8, ptr %49, i32 %add41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119, i32 %47) #6, !srcloc !46
  br label %r100_mm_wreg.exit122

if.else.i121:                                     ; preds = %r100_mm_wreg.exit113
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add41, i32 noundef %or51) #6
  br label %r100_mm_wreg.exit122

r100_mm_wreg.exit122:                             ; preds = %if.else.i121, %do.body.i120
  %add52 = add i32 %offset, 29720
  %50 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %add52)
  %cmp.i124 = icmp ugt i32 %51, %add52
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add52)
  %cmp1.i125 = icmp ult i32 %add52, 65536
  %or.cond.i126 = or i1 %cmp1.i125, %cmp.i124
  br i1 %or.cond.i126, label %if.then.i, label %if.else.i129

if.then.i:                                        ; preds = %r100_mm_wreg.exit122
  call void @__sanitizer_cov_trace_pc() #8
  %rmmio.i127 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %52 = ptrtoint ptr %rmmio.i127 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rmmio.i127, align 4
  %add.ptr.i128 = getelementptr i8, ptr %53, i32 %add52
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i128) #6, !srcloc !39
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  br label %r100_mm_rreg.exit

if.else.i129:                                     ; preds = %r100_mm_wreg.exit122
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add52) #6
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i129, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i129 ], [ %55, %if.then.i ]
  %or53 = or i32 %retval.0.i, 2
  %56 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %add52)
  %cmp.i131 = icmp ugt i32 %57, %add52
  %or.cond.i133 = or i1 %cmp1.i125, %cmp.i131
  br i1 %or.cond.i133, label %do.body.i136, label %if.else.i137

do.body.i136:                                     ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %58 = tail call i32 @llvm.bswap.i32(i32 %or53) #6
  %rmmio.i134 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %59 = ptrtoint ptr %rmmio.i134 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rmmio.i134, align 4
  %add.ptr.i135 = getelementptr i8, ptr %60, i32 %add52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i135, i32 %58) #6, !srcloc !46
  br label %r100_mm_wreg.exit138

if.else.i137:                                     ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add52, i32 noundef %or53) #6
  br label %r100_mm_wreg.exit138

r100_mm_wreg.exit138:                             ; preds = %if.else.i137, %do.body.i136
  %add57 = add i32 %offset, 29716
  %61 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %add57)
  %cmp.i140 = icmp ugt i32 %62, %add57
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add57)
  %cmp1.i141 = icmp ult i32 %add57, 65536
  %or.cond.i142 = or i1 %cmp1.i141, %cmp.i140
  br i1 %or.cond.i142, label %if.then.i145, label %if.else.i147

if.then.i145:                                     ; preds = %r100_mm_wreg.exit138
  call void @__sanitizer_cov_trace_pc() #8
  %rmmio.i143 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %63 = ptrtoint ptr %rmmio.i143 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rmmio.i143, align 4
  %add.ptr.i144 = getelementptr i8, ptr %64, i32 %add57
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i144) #6, !srcloc !39
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  br label %r100_mm_rreg.exit149

if.else.i147:                                     ; preds = %r100_mm_wreg.exit138
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i146 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add57) #6
  br label %r100_mm_rreg.exit149

r100_mm_rreg.exit149:                             ; preds = %if.else.i147, %if.then.i145
  %retval.0.i148 = phi i32 [ %call3.i146, %if.else.i147 ], [ %66, %if.then.i145 ]
  %or60 = or i32 %retval.0.i148, 3
  %67 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %add57)
  %cmp.i151 = icmp ugt i32 %68, %add57
  %or.cond.i153 = or i1 %cmp1.i141, %cmp.i151
  br i1 %or.cond.i153, label %do.body.i156, label %if.else.i157

do.body.i156:                                     ; preds = %r100_mm_rreg.exit149
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %69 = tail call i32 @llvm.bswap.i32(i32 %or60) #6
  %rmmio.i154 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %70 = ptrtoint ptr %rmmio.i154 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rmmio.i154, align 4
  %add.ptr.i155 = getelementptr i8, ptr %71, i32 %add57
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i155, i32 %69) #6, !srcloc !46
  br label %r100_mm_wreg.exit158

if.else.i157:                                     ; preds = %r100_mm_rreg.exit149
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add57, i32 noundef %or60) #6
  br label %r100_mm_wreg.exit158

r100_mm_wreg.exit158:                             ; preds = %if.else.i157, %do.body.i156
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_hdmi_audio_workaround(ptr nocapture noundef readonly %encoder) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %afmt = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %afmt, align 4
  %offset2 = getelementptr inbounds %struct.radeon_afmt, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %offset2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset2, align 4
  %add = add i32 %9, 29704
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 18
  %10 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %add)
  %cmp.i = icmp ugt i32 %11, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add)
  %cmp1.i = icmp ult i32 %add, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %12 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %add
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !39
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add) #6
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i ], [ %15, %if.then.i ]
  %and = and i32 %retval.0.i, -4097
  %16 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %add)
  %cmp.i13 = icmp ugt i32 %17, %add
  %or.cond.i15 = or i1 %cmp1.i, %cmp.i13
  br i1 %or.cond.i15, label %do.body.i, label %if.else.i18

do.body.i:                                        ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %18 = tail call i32 @llvm.bswap.i32(i32 %and) #6
  %rmmio.i16 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %19 = ptrtoint ptr %rmmio.i16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rmmio.i16, align 4
  %add.ptr.i17 = getelementptr i8, ptr %20, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %18) #6, !srcloc !46
  br label %r100_mm_wreg.exit

if.else.i18:                                      ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add, i32 noundef %and) #6
  br label %r100_mm_wreg.exit

r100_mm_wreg.exit:                                ; preds = %if.else.i18, %do.body.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_hdmi_audio_set_dto(ptr nocapture noundef readonly %rdev, ptr noundef readonly %crtc, i32 noundef %clock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %crtc, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %encoder = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 34
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %enc_priv = getelementptr inbounds %struct.radeon_encoder, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enc_priv, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %dig_encoder = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dig_encoder to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dig_encoder, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %7, i32 1300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 10429440) #6, !srcloc !46
  %mul = mul i32 %clock, 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %mul) #6
  %9 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %10, i32 1304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %8) #6, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i23 = getelementptr i8, ptr %12, i32 1332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 0) #6, !srcloc !46
  br label %cleanup

if.else:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i27 = getelementptr i8, ptr %7, i32 1316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 10429440) #6, !srcloc !46
  %mul5 = mul i32 %clock, 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %13 = tail call i32 @llvm.bswap.i32(i32 %mul5) #6
  %14 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i31 = getelementptr i8, ptr %15, i32 1320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %13) #6, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %17, i32 1332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 16777216) #6, !srcloc !46
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_set_vbi_packet(ptr nocapture noundef readonly %encoder, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %add = add i32 %offset, 29712
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add)
  %cmp.i = icmp ugt i32 %5, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add)
  %cmp1.i = icmp ult i32 %add, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %add
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !39
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add) #6
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i ], [ %9, %if.then.i ]
  %or = or i32 %retval.0.i, 49
  %10 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %add)
  %cmp.i8 = icmp ugt i32 %11, %add
  %or.cond.i10 = or i1 %cmp1.i, %cmp.i8
  br i1 %or.cond.i10, label %do.body.i, label %if.else.i13

do.body.i:                                        ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %12 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %rmmio.i11 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %13 = ptrtoint ptr %rmmio.i11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rmmio.i11, align 4
  %add.ptr.i12 = getelementptr i8, ptr %14, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %12) #6, !srcloc !46
  br label %r100_mm_wreg.exit

if.else.i13:                                      ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add, i32 noundef %or) #6
  br label %r100_mm_wreg.exit

r100_mm_wreg.exit:                                ; preds = %if.else.i13, %do.body.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_set_audio_packet(ptr nocapture noundef readonly %encoder, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %add = add i32 %offset, 29704
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add)
  %cmp.i = icmp ugt i32 %5, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add)
  %cmp1.i = icmp ult i32 %add, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %add
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !39
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add) #6
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i ], [ %9, %if.then.i ]
  %and = and i32 %retval.0.i, -69140530
  %or = or i32 %and, 67305489
  %10 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %add)
  %cmp.i83 = icmp ugt i32 %11, %add
  %or.cond.i85 = or i1 %cmp1.i, %cmp.i83
  br i1 %or.cond.i85, label %do.body.i, label %if.else.i88

do.body.i:                                        ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %12 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %rmmio.i86 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %13 = ptrtoint ptr %rmmio.i86 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rmmio.i86, align 4
  %add.ptr.i87 = getelementptr i8, ptr %14, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87, i32 %12) #6, !srcloc !46
  br label %r100_mm_wreg.exit

if.else.i88:                                      ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add, i32 noundef %or) #6
  br label %r100_mm_wreg.exit

r100_mm_wreg.exit:                                ; preds = %if.else.i88, %do.body.i
  %add5 = add i32 %offset, 29716
  %15 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %add5)
  %cmp.i90 = icmp ugt i32 %16, %add5
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add5)
  %cmp1.i91 = icmp ult i32 %add5, 65536
  %or.cond.i92 = or i1 %cmp1.i91, %cmp.i90
  br i1 %or.cond.i92, label %if.then.i95, label %if.else.i97

if.then.i95:                                      ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %rmmio.i93 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %17 = ptrtoint ptr %rmmio.i93 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmmio.i93, align 4
  %add.ptr.i94 = getelementptr i8, ptr %18, i32 %add5
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i94) #6, !srcloc !39
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  br label %r100_mm_rreg.exit99

if.else.i97:                                      ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i96 = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add5) #6
  br label %r100_mm_rreg.exit99

r100_mm_rreg.exit99:                              ; preds = %if.else.i97, %if.then.i95
  %retval.0.i98 = phi i32 [ %call3.i96, %if.else.i97 ], [ %20, %if.then.i95 ]
  %or8 = or i32 %retval.0.i98, 144
  %21 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %add5)
  %cmp.i101 = icmp ugt i32 %22, %add5
  %or.cond.i103 = or i1 %cmp1.i91, %cmp.i101
  br i1 %or.cond.i103, label %do.body.i106, label %if.else.i107

do.body.i106:                                     ; preds = %r100_mm_rreg.exit99
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %23 = tail call i32 @llvm.bswap.i32(i32 %or8) #6
  %rmmio.i104 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %24 = ptrtoint ptr %rmmio.i104 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmmio.i104, align 4
  %add.ptr.i105 = getelementptr i8, ptr %25, i32 %add5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i105, i32 %23) #6, !srcloc !46
  br label %r100_mm_wreg.exit108

if.else.i107:                                     ; preds = %r100_mm_rreg.exit99
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add5, i32 noundef %or8) #6
  br label %r100_mm_wreg.exit108

r100_mm_wreg.exit108:                             ; preds = %if.else.i107, %do.body.i106
  %add14 = add i32 %offset, 29720
  %26 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %add14)
  %cmp.i110 = icmp ugt i32 %27, %add14
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add14)
  %cmp1.i111 = icmp ult i32 %add14, 65536
  %or.cond.i112 = or i1 %cmp1.i111, %cmp.i110
  br i1 %or.cond.i112, label %if.then.i115, label %if.else.i117

if.then.i115:                                     ; preds = %r100_mm_wreg.exit108
  call void @__sanitizer_cov_trace_pc() #8
  %rmmio.i113 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %28 = ptrtoint ptr %rmmio.i113 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmmio.i113, align 4
  %add.ptr.i114 = getelementptr i8, ptr %29, i32 %add14
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i114) #6, !srcloc !39
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  br label %r100_mm_rreg.exit119

if.else.i117:                                     ; preds = %r100_mm_wreg.exit108
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i116 = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add14) #6
  br label %r100_mm_rreg.exit119

r100_mm_rreg.exit119:                             ; preds = %if.else.i117, %if.then.i115
  %retval.0.i118 = phi i32 [ %call3.i116, %if.else.i117 ], [ %31, %if.then.i115 ]
  %and16 = and i32 %retval.0.i118, -16129
  %or17 = or i32 %and16, 512
  %32 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %add14)
  %cmp.i121 = icmp ugt i32 %33, %add14
  %or.cond.i123 = or i1 %cmp1.i111, %cmp.i121
  br i1 %or.cond.i123, label %do.body.i126, label %if.else.i127

do.body.i126:                                     ; preds = %r100_mm_rreg.exit119
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %34 = tail call i32 @llvm.bswap.i32(i32 %or17) #6
  %rmmio.i124 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %35 = ptrtoint ptr %rmmio.i124 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rmmio.i124, align 4
  %add.ptr.i125 = getelementptr i8, ptr %36, i32 %add14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i125, i32 %34) #6, !srcloc !46
  br label %r100_mm_wreg.exit128

if.else.i127:                                     ; preds = %r100_mm_rreg.exit119
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add14, i32 noundef %or17) #6
  br label %r100_mm_wreg.exit128

r100_mm_wreg.exit128:                             ; preds = %if.else.i127, %do.body.i126
  %add23 = add i32 %offset, 29724
  %37 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %add23)
  %cmp.i130 = icmp ugt i32 %38, %add23
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add23)
  %cmp1.i131 = icmp ult i32 %add23, 65536
  %or.cond.i132 = or i1 %cmp1.i131, %cmp.i130
  br i1 %or.cond.i132, label %if.then.i135, label %if.else.i137

if.then.i135:                                     ; preds = %r100_mm_wreg.exit128
  call void @__sanitizer_cov_trace_pc() #8
  %rmmio.i133 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %39 = ptrtoint ptr %rmmio.i133 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rmmio.i133, align 4
  %add.ptr.i134 = getelementptr i8, ptr %40, i32 %add23
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i134) #6, !srcloc !39
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  br label %r100_mm_rreg.exit139

if.else.i137:                                     ; preds = %r100_mm_wreg.exit128
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i136 = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add23) #6
  br label %r100_mm_rreg.exit139

r100_mm_rreg.exit139:                             ; preds = %if.else.i137, %if.then.i135
  %retval.0.i138 = phi i32 [ %call3.i136, %if.else.i137 ], [ %42, %if.then.i135 ]
  %and25 = and i32 %retval.0.i138, -1061093432
  %43 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %add23)
  %cmp.i141 = icmp ugt i32 %44, %add23
  %or.cond.i143 = or i1 %cmp1.i131, %cmp.i141
  br i1 %or.cond.i143, label %do.body.i146, label %if.else.i147

do.body.i146:                                     ; preds = %r100_mm_rreg.exit139
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %45 = tail call i32 @llvm.bswap.i32(i32 %and25) #6
  %rmmio.i144 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %46 = ptrtoint ptr %rmmio.i144 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rmmio.i144, align 4
  %add.ptr.i145 = getelementptr i8, ptr %47, i32 %add23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i145, i32 %45) #6, !srcloc !46
  br label %r100_mm_wreg.exit148

if.else.i147:                                     ; preds = %r100_mm_rreg.exit139
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add23, i32 noundef %and25) #6
  br label %r100_mm_wreg.exit148

r100_mm_wreg.exit148:                             ; preds = %if.else.i147, %do.body.i146
  %add32 = add i32 %offset, 29908
  %48 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %add32)
  %cmp.i150 = icmp ugt i32 %49, %add32
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add32)
  %cmp1.i151 = icmp ult i32 %add32, 65536
  %or.cond.i152 = or i1 %cmp1.i151, %cmp.i150
  br i1 %or.cond.i152, label %if.then.i155, label %if.else.i157

if.then.i155:                                     ; preds = %r100_mm_wreg.exit148
  call void @__sanitizer_cov_trace_pc() #8
  %rmmio.i153 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %50 = ptrtoint ptr %rmmio.i153 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rmmio.i153, align 4
  %add.ptr.i154 = getelementptr i8, ptr %51, i32 %add32
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i154) #6, !srcloc !39
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  br label %r100_mm_rreg.exit159

if.else.i157:                                     ; preds = %r100_mm_wreg.exit148
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i156 = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add32) #6
  br label %r100_mm_rreg.exit159

r100_mm_rreg.exit159:                             ; preds = %if.else.i157, %if.then.i155
  %retval.0.i158 = phi i32 [ %call3.i156, %if.else.i157 ], [ %53, %if.then.i155 ]
  %and34 = and i32 %retval.0.i158, -821035009
  %or35 = or i32 %and34, 1048576
  %54 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %add32)
  %cmp.i161 = icmp ugt i32 %55, %add32
  %or.cond.i163 = or i1 %cmp1.i151, %cmp.i161
  br i1 %or.cond.i163, label %do.body.i166, label %if.else.i167

do.body.i166:                                     ; preds = %r100_mm_rreg.exit159
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %56 = tail call i32 @llvm.bswap.i32(i32 %or35) #6
  %rmmio.i164 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %57 = ptrtoint ptr %rmmio.i164 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rmmio.i164, align 4
  %add.ptr.i165 = getelementptr i8, ptr %58, i32 %add32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i165, i32 %56) #6, !srcloc !46
  br label %r100_mm_wreg.exit168

if.else.i167:                                     ; preds = %r100_mm_rreg.exit159
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add32, i32 noundef %or35) #6
  br label %r100_mm_wreg.exit168

r100_mm_wreg.exit168:                             ; preds = %if.else.i167, %do.body.i166
  %add41 = add i32 %offset, 29912
  %59 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %add41)
  %cmp.i170 = icmp ugt i32 %60, %add41
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add41)
  %cmp1.i171 = icmp ult i32 %add41, 65536
  %or.cond.i172 = or i1 %cmp1.i171, %cmp.i170
  br i1 %or.cond.i172, label %if.then.i175, label %if.else.i177

if.then.i175:                                     ; preds = %r100_mm_wreg.exit168
  call void @__sanitizer_cov_trace_pc() #8
  %rmmio.i173 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %61 = ptrtoint ptr %rmmio.i173 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rmmio.i173, align 4
  %add.ptr.i174 = getelementptr i8, ptr %62, i32 %add41
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i174) #6, !srcloc !39
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  br label %r100_mm_rreg.exit179

if.else.i177:                                     ; preds = %r100_mm_wreg.exit168
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i176 = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add41) #6
  br label %r100_mm_rreg.exit179

r100_mm_rreg.exit179:                             ; preds = %if.else.i177, %if.then.i175
  %retval.0.i178 = phi i32 [ %call3.i176, %if.else.i177 ], [ %64, %if.then.i175 ]
  %and43 = and i32 %retval.0.i178, -15728641
  %or44 = or i32 %and43, 2097152
  %65 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %add41)
  %cmp.i181 = icmp ugt i32 %66, %add41
  %or.cond.i183 = or i1 %cmp1.i171, %cmp.i181
  br i1 %or.cond.i183, label %do.body.i186, label %if.else.i187

do.body.i186:                                     ; preds = %r100_mm_rreg.exit179
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %67 = tail call i32 @llvm.bswap.i32(i32 %or44) #6
  %rmmio.i184 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %68 = ptrtoint ptr %rmmio.i184 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rmmio.i184, align 4
  %add.ptr.i185 = getelementptr i8, ptr %69, i32 %add41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i185, i32 %67) #6, !srcloc !46
  br label %r100_mm_wreg.exit188

if.else.i187:                                     ; preds = %r100_mm_rreg.exit179
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add41, i32 noundef %or44) #6
  br label %r100_mm_wreg.exit188

r100_mm_wreg.exit188:                             ; preds = %if.else.i187, %do.body.i186
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_set_mute(ptr nocapture noundef readonly %encoder, i32 noundef %offset, i1 noundef zeroext %mute) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %add = add i32 %offset, 29736
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add)
  %cmp.i = icmp ugt i32 %5, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add)
  %cmp1.i = icmp ult i32 %add, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %mute, label %do.body, label %do.body3

do.body:                                          ; preds = %entry
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %add
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !39
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add) #6
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i ], [ %9, %if.then.i ]
  %or = or i32 %retval.0.i, 1
  %10 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %add)
  %cmp.i23 = icmp ugt i32 %11, %add
  %or.cond.i25 = or i1 %cmp1.i, %cmp.i23
  br i1 %or.cond.i25, label %do.body.i, label %if.else.i28

do.body.i:                                        ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %12 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %rmmio.i26 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %13 = ptrtoint ptr %rmmio.i26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rmmio.i26, align 4
  %add.ptr.i27 = getelementptr i8, ptr %14, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 %12) #6, !srcloc !46
  br label %if.end

if.else.i28:                                      ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add, i32 noundef %or) #6
  br label %if.end

do.body3:                                         ; preds = %entry
  br i1 %or.cond.i, label %if.then.i35, label %if.else.i37

if.then.i35:                                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  %rmmio.i33 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %15 = ptrtoint ptr %rmmio.i33 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i33, align 4
  %add.ptr.i34 = getelementptr i8, ptr %16, i32 %add
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i34) #6, !srcloc !39
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  br label %r100_mm_rreg.exit39

if.else.i37:                                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i36 = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add) #6
  br label %r100_mm_rreg.exit39

r100_mm_rreg.exit39:                              ; preds = %if.else.i37, %if.then.i35
  %retval.0.i38 = phi i32 [ %call3.i36, %if.else.i37 ], [ %18, %if.then.i35 ]
  %and7 = and i32 %retval.0.i38, -2
  %19 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %add)
  %cmp.i41 = icmp ugt i32 %20, %add
  %or.cond.i43 = or i1 %cmp1.i, %cmp.i41
  br i1 %or.cond.i43, label %do.body.i46, label %if.else.i47

do.body.i46:                                      ; preds = %r100_mm_rreg.exit39
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %21 = tail call i32 @llvm.bswap.i32(i32 %and7) #6
  %rmmio.i44 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %22 = ptrtoint ptr %rmmio.i44 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmmio.i44, align 4
  %add.ptr.i45 = getelementptr i8, ptr %23, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 %21) #6, !srcloc !46
  br label %if.end

if.else.i47:                                      ; preds = %r100_mm_rreg.exit39
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add, i32 noundef %and7) #6
  br label %if.end

if.end:                                           ; preds = %if.else.i47, %do.body.i46, %if.else.i28, %do.body.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_audio_infoframe_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_audio_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_hdmi_enable(ptr nocapture noundef readonly %encoder, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable to i8
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
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %afmt = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %afmt, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %9)
  %cmp = icmp ugt i32 %9, 30
  br i1 %cmp, label %if.end.if.end70_crit_edge, label %if.then3

if.end.if.end70_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

if.then3:                                         ; preds = %if.end
  %spec.select = select i1 %enable, i32 257, i32 256
  %encoder_id = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 2
  %10 = ptrtoint ptr %encoder_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %encoder_id, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %do.end66 [
    i32 19, label %sw.bb
    i32 15, label %sw.bb19
    i32 25, label %sw.bb39
    i32 20, label %sw.bb59
  ]

sw.bb:                                            ; preds = %if.then3
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %13 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 30848
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  br i1 %enable, label %do.body, label %do.body11

do.body:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %16 = or i32 %15, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %17 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i147 = getelementptr i8, ptr %18, i32 30848
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i147, i32 %16) #6, !srcloc !46
  br label %sw.epilog

do.body11:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %19 = and i32 %15, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i155 = getelementptr i8, ptr %21, i32 30848
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i155, i32 %19) #6, !srcloc !46
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.then3
  %rmmio.i158 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %22 = ptrtoint ptr %rmmio.i158 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmmio.i158, align 4
  %add.ptr.i159 = getelementptr i8, ptr %23, i32 31360
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i159) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  br i1 %enable, label %do.body22, label %do.body31

do.body22:                                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #8
  %25 = or i32 %24, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %26 = ptrtoint ptr %rmmio.i158 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmmio.i158, align 4
  %add.ptr.i163 = getelementptr i8, ptr %27, i32 31360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i163, i32 %25) #6, !srcloc !46
  %or29 = or i32 %spec.select, 4
  br label %sw.epilog

do.body31:                                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #8
  %28 = and i32 %24, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %29 = ptrtoint ptr %rmmio.i158 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rmmio.i158, align 4
  %add.ptr.i171 = getelementptr i8, ptr %30, i32 31360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i171, i32 %28) #6, !srcloc !46
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.then3
  %rmmio.i174 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %31 = ptrtoint ptr %rmmio.i174 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rmmio.i174, align 4
  %add.ptr.i175 = getelementptr i8, ptr %32, i32 29184
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i175) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  br i1 %enable, label %do.body42, label %do.body51

do.body42:                                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #8
  %34 = or i32 %33, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %35 = ptrtoint ptr %rmmio.i174 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rmmio.i174, align 4
  %add.ptr.i179 = getelementptr i8, ptr %36, i32 29184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i179, i32 %34) #6, !srcloc !46
  %or49 = or i32 %spec.select, 12
  br label %sw.epilog

do.body51:                                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #8
  %37 = and i32 %33, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %38 = ptrtoint ptr %rmmio.i174 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rmmio.i174, align 4
  %add.ptr.i187 = getelementptr i8, ptr %39, i32 29184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i187, i32 %37) #6, !srcloc !46
  br label %sw.epilog

sw.bb59:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %spec.select143 = select i1 %enable, i32 265, i32 256
  br label %sw.epilog

do.end66:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.6, i32 noundef %11) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end66, %sw.bb59, %do.body51, %do.body42, %do.body31, %do.body22, %do.body11, %do.body
  %hdmi.1 = phi i32 [ %spec.select, %do.end66 ], [ %or49, %do.body42 ], [ 256, %do.body51 ], [ %or29, %do.body22 ], [ 256, %do.body31 ], [ 257, %do.body ], [ 256, %do.body11 ], [ %spec.select143, %sw.bb59 ]
  %42 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %afmt, align 4
  %offset = getelementptr inbounds %struct.radeon_afmt, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %offset, align 4
  %add = add i32 %45, 29696
  %rmmio_size.i188 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 18
  %46 = ptrtoint ptr %rmmio_size.i188 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rmmio_size.i188, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %add)
  %cmp.i189 = icmp ugt i32 %47, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add)
  %cmp1.i = icmp ult i32 %add, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i189
  br i1 %or.cond.i, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %48 = tail call i32 @llvm.bswap.i32(i32 %hdmi.1) #6
  %rmmio.i190 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %49 = ptrtoint ptr %rmmio.i190 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rmmio.i190, align 4
  %add.ptr.i191 = getelementptr i8, ptr %50, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i191, i32 %48) #6, !srcloc !46
  br label %if.end70

if.else.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add, i32 noundef %hdmi.1) #6
  br label %if.end70

if.end70:                                         ; preds = %if.else.i, %do.body.i, %if.end.if.end70_crit_edge
  %irq = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 55
  %51 = ptrtoint ptr %irq to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %irq, align 8, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool71.not = icmp eq i8 %52, 0
  br i1 %tobool71.not, label %if.end70.if.end80_crit_edge, label %if.then72

if.end70.if.end80_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

if.then72:                                        ; preds = %if.end70
  %53 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %afmt, align 4
  %id = getelementptr inbounds %struct.radeon_afmt, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %id, align 4
  br i1 %enable, label %if.then74, label %if.else76

if.then74:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @radeon_irq_kms_enable_afmt(ptr noundef %3, i32 noundef %56) #6
  br label %if.end80

if.else76:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @radeon_irq_kms_disable_afmt(ptr noundef %3, i32 noundef %56) #6
  br label %if.end80

if.end80:                                         ; preds = %if.else76, %if.then74, %if.end70.if.end80_crit_edge
  %57 = ptrtoint ptr %afmt to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %afmt, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %frombool, ptr %58, align 4
  %cond = select i1 %enable, ptr @.str.12, ptr @.str.13
  %60 = load ptr, ptr %afmt, align 4
  %offset86 = getelementptr inbounds %struct.radeon_afmt, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %offset86 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %offset86, align 4
  %encoder_id87 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 2
  %63 = ptrtoint ptr %encoder_id87 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %encoder_id87, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.11, ptr noundef nonnull %cond, i32 noundef %62, i32 noundef %64) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_irq_kms_enable_afmt(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_irq_kms_disable_afmt(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_mm_rreg_slow(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_mm_wreg_slow(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/r600_hdmi.c", i32 429, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/radeon/r600_hdmi.c", i32 432, i32 2}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/radeon/r600_hdmi.c", i32 437, i32 3}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/radeon/r600_hdmi.c", i32 445, i32 3}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/radeon/r600_hdmi.c", i32 515, i32 4}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.9, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.10, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @r600_hdmi_enable._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @r600_hdmi_enable._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/radeon/r600_hdmi.c", i32 533, i32 2}
!20 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/radeon/r600_hdmi.c", i32 88, i32 3}
!24 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @r600_audio_status._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @r600_audio_status._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{!37}
!37 = distinct !{!37, !38, !"r600_audio_status: %agg.result"}
!38 = distinct !{!38, !"r600_audio_status"}
!39 = !{i64 6753129}
!40 = !{i64 2157460608}
!41 = !{i8 0, i8 2}
!42 = !{!43}
!43 = distinct !{!43, !44, !"r600_audio_status: %agg.result"}
!44 = distinct !{!44, !"r600_audio_status"}
!45 = !{i64 2157461015}
!46 = !{i64 6752711}
