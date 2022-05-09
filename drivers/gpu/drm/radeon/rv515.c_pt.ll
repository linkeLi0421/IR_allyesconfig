; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/rv515.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/rv515.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.radeon_ring = type { ptr, ptr, ptr, i32, i32, i64, ptr, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic64_t, i64, i32, i32, i8, i32, i32, i64, i64, i32, i32, i32, ptr, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.atomic64_t = type { i64 }
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
%struct.radeon_atif = type { %struct.radeon_atif_notifications, %struct.radeon_atif_functions, %struct.radeon_atif_notification_cfg, ptr }
%struct.radeon_atif_notifications = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.radeon_atif_functions = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.radeon_atif_notification_cfg = type { i8, i32 }
%struct.radeon_atcs = type { %struct.radeon_atcs_functions }
%struct.radeon_atcs_functions = type { i8, i8, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.87 = type { i32, ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.rv515_mc_save = type { i32, i32, [2 x i8] }
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
%struct.radeon_crtc = type { %struct.drm_crtc, i32, i8, i8, i8, i32, ptr, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, %union.dfixed, %union.dfixed, %struct.drm_display_mode, i32, ptr, ptr, i32, %struct.radeon_atom_ss, i8, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, %struct.drm_display_mode, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.radeon_atom_ss = type { i16, i16, i8, i16, i8, i8, i8, i16, i16 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.rv515_watermark = type { i32, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed }
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

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rv515_pipes_info\00", [47 x i8] zeroinitializer }, align 32
@rv515_debugfs_pipes_info_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rv515_debugfs_pipes_info_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rv515_ga_info\00", [18 x i8] zeroinitializer }, align 32
@rv515_debugfs_ga_info_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rv515_debugfs_ga_info_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@crtc_offsets = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 2048], [24 x i8] zeroinitializer }, align 32
@radeon_dynclks = external dso_local local_unnamed_addr global i32, align 4
@rv515_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 553, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"GPU reset failed ! (0xE40=0x%08X, 0x7C0=0x%08X)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rv515_resume\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/gpu/drm/radeon/rv515.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rv515_resume._entry_ptr = internal global ptr @rv515_resume._entry, section ".printk_index", align 4
@rv515_reg_safe_bm = internal constant { [219 x i32], [212 x i8] } { [219 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 402595839, i32 -4, i32 -1, i32 -13566017, i32 -8, i32 -1008271361, i32 -2337, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -4033, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -4154, i32 -267468801, i32 8126464, i32 -268435400, i32 -16777207, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -2049, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 536869960, i32 -8192, i32 -482, i32 -1, i32 948932432, i32 -491390, i32 -16776964, i32 -85980161, i32 65535, i32 -1, i32 -1, i32 0, i32 36092, i32 -212481, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -25100289, i32 0, i32 0, i32 0, i32 0, i32 261131, i32 1073741055, i32 -4195431, i32 -2097153, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [212 x i8] zeroinitializer }, align 32
@rv515_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 625, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Expecting atombios for RV515 GPU\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rv515_init\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@rv515_init._entry_ptr = internal global ptr @rv515_init._entry, section ".printk_index", align 4
@rv515_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.8, ptr @.str.4, i32 633, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@rv515_init._entry_ptr.11 = internal global ptr @rv515_init._entry.10, section ".printk_index", align 4
@rv515_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.4, i32 668, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Disabling GPU acceleration\0A\00", [36 x i8] zeroinitializer }, align 32
@rv515_init._entry_ptr.14 = internal global ptr @rv515_init._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"radeon: writing more dwords to the ring than expected!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"GB_PIPE_SELECT 0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SU_REG_DEST 0x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"GB_TILE_CONFIG 0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DST_PIPE_CONFIG 0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"VAP_CNTL_STATUS 0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GA_IDLE 0x%08x\0A\00", [16 x i8] zeroinitializer }, align 32
@rv515_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 511, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed initializing CP fences (%d).\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rv515_startup\00", [18 x i8] zeroinitializer }, align 32
@rv515_startup._entry_ptr = internal global ptr @rv515_startup._entry, section ".printk_index", align 4
@rv515_startup._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.4, i32 527, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed initializing CP (%d).\0A\00", [34 x i8] zeroinitializer }, align 32
@rv515_startup._entry_ptr.26 = internal global ptr @rv515_startup._entry.24, section ".printk_index", align 4
@rv515_startup._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.4, i32 533, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"IB initialization failed (%d).\0A\00", [32 x i8] zeroinitializer }, align 32
@rv515_startup._entry_ptr.29 = internal global ptr @rv515_startup._entry.27, section ".printk_index", align 4
@rv515_mc_program._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.4, i32 449, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Wait MC idle timeout before updating MC.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rv515_mc_program\00", [47 x i8] zeroinitializer }, align 32
@rv515_mc_program._entry_ptr = internal global ptr @rv515_mc_program._entry, section ".printk_index", align 4
@rv515_gpu_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.4, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\014Failed to wait GUI idle while resetting GPU. Bad things might happen.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rv515_gpu_init\00", [17 x i8] zeroinitializer }, align 32
@rv515_gpu_init._entry_ptr = internal global ptr @rv515_gpu_init._entry, section ".printk_index", align 4
@rv515_gpu_init._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.4, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rv515_gpu_init._entry_ptr.35 = internal global ptr @rv515_gpu_init._entry.34, section ".printk_index", align 4
@rv515_gpu_init._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.33, ptr @.str.4, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\014Failed to wait MC idle while programming pipes. Bad things might happen.\0A\00", [52 x i8] zeroinitializer }, align 32
@rv515_gpu_init._entry_ptr.38 = internal global ptr @rv515_gpu_init._entry.36, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 260, i32 22 }
@___asan_gen_.45 = private unnamed_addr constant [30 x i8] c"rv515_debugfs_pipes_info_fops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 251, i32 1 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 262, i32 22 }
@___asan_gen_.51 = private unnamed_addr constant [27 x i8] c"rv515_debugfs_ga_info_fops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 252, i32 1 }
@___asan_gen_.54 = private unnamed_addr constant [13 x i8] c"crtc_offsets\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 45, i32 18 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 551, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [18 x i8] c"rv515_reg_safe_bm\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [42 x i8] c"./drivers/gpu/drm/radeon/rv515_reg_safe.h\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 1, i32 23 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 625, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 630, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 668, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [35 x i8] c"../drivers/gpu/drm/radeon/radeon.h\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 2721, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 228, i32 16 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 230, i32 16 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 232, i32 16 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 234, i32 16 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 244, i32 16 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 247, i32 16 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 511, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 527, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 533, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 449, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 146, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 157, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.166 = private constant [34 x i8] c"../drivers/gpu/drm/radeon/rv515.c\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 160, i32 3 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @rv515_gpu_init._entry, ptr @rv515_gpu_init._entry.34, ptr @rv515_gpu_init._entry.36, ptr @rv515_gpu_init._entry_ptr, ptr @rv515_gpu_init._entry_ptr.35, ptr @rv515_gpu_init._entry_ptr.38, ptr @rv515_init._entry, ptr @rv515_init._entry.10, ptr @rv515_init._entry.12, ptr @rv515_init._entry_ptr, ptr @rv515_init._entry_ptr.11, ptr @rv515_init._entry_ptr.14, ptr @rv515_mc_program._entry, ptr @rv515_mc_program._entry_ptr, ptr @rv515_resume._entry, ptr @rv515_resume._entry_ptr, ptr @rv515_startup._entry, ptr @rv515_startup._entry.24, ptr @rv515_startup._entry.27, ptr @rv515_startup._entry_ptr, ptr @rv515_startup._entry_ptr.26, ptr @rv515_startup._entry_ptr.29, ptr @.str, ptr @rv515_debugfs_pipes_info_fops, ptr @.str.1, ptr @rv515_debugfs_ga_info_fops, ptr @crtc_offsets, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @rv515_reg_safe_bm, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.37], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv515_debugfs_pipes_info_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv515_debugfs_ga_info_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crtc_offsets to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv515_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv515_reg_safe_bm to i32), i32 876, i32 1088, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv515_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv515_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv515_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv515_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv515_startup._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv515_startup._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv515_mc_program._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv515_gpu_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv515_gpu_init._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv515_gpu_init._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv515_ring_start(ptr noundef %rdev, ptr noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @radeon_ring_lock(ptr noundef %rdev, ptr noundef %ring, i32 noundef 64) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %count_dw.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count_dw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp slt i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.radeon_ring_write.exit_crit_edge

if.end.radeon_ring_write.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #8
  br label %radeon_ring_write.exit

radeon_ring_write.exit:                           ; preds = %if.then.i, %if.end.radeon_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 2
  %2 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring1.i, align 8
  %wptr.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 7
  %4 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wptr.i, align 4
  %inc.i = add i32 %5, 1
  store i32 %inc.i, ptr %wptr.i, align 4
  %arrayidx.i = getelementptr i32, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1481, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 16
  %7 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ptr_mask.i, align 4
  %9 = load i32, ptr %wptr.i, align 4
  %and.i = and i32 %9, %8
  store i32 %and.i, ptr %wptr.i, align 4
  %10 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count_dw.i, align 4
  %dec.i = add i32 %11, -1
  store i32 %dec.i, ptr %count_dw.i, align 4
  %ring_free_dw.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 10
  %12 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i = add i32 %13, -1
  store i32 %dec4.i, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i43 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i43, label %if.then.i44, label %radeon_ring_write.exit.radeon_ring_write.exit54_crit_edge

radeon_ring_write.exit.radeon_ring_write.exit54_crit_edge: ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit54

if.then.i44:                                      ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #8
  br label %radeon_ring_write.exit54

radeon_ring_write.exit54:                         ; preds = %if.then.i44, %radeon_ring_write.exit.radeon_ring_write.exit54_crit_edge
  %14 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ring1.i, align 8
  %16 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wptr.i, align 4
  %inc.i47 = add i32 %17, 1
  store i32 %inc.i47, ptr %wptr.i, align 4
  %arrayidx.i48 = getelementptr i32, ptr %15, i32 %17
  %18 = ptrtoint ptr %arrayidx.i48 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 51, ptr %arrayidx.i48, align 4
  %19 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ptr_mask.i, align 4
  %21 = load i32, ptr %wptr.i, align 4
  %and.i50 = and i32 %21, %20
  store i32 %and.i50, ptr %wptr.i, align 4
  %22 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %count_dw.i, align 4
  %dec.i51 = add i32 %23, -1
  store i32 %dec.i51, ptr %count_dw.i, align 4
  %24 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i53 = add i32 %25, -1
  store i32 %dec4.i53, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i51)
  %cmp.i56 = icmp slt i32 %dec.i51, 1
  br i1 %cmp.i56, label %if.then.i57, label %radeon_ring_write.exit54.radeon_ring_write.exit67_crit_edge

radeon_ring_write.exit54.radeon_ring_write.exit67_crit_edge: ; preds = %radeon_ring_write.exit54
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit67

if.then.i57:                                      ; preds = %radeon_ring_write.exit54
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #8
  br label %radeon_ring_write.exit67

radeon_ring_write.exit67:                         ; preds = %if.then.i57, %radeon_ring_write.exit54.radeon_ring_write.exit67_crit_edge
  %26 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ring1.i, align 8
  %28 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %wptr.i, align 4
  %inc.i60 = add i32 %29, 1
  store i32 %inc.i60, ptr %wptr.i, align 4
  %arrayidx.i61 = getelementptr i32, ptr %27, i32 %29
  %30 = ptrtoint ptr %arrayidx.i61 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 1480, ptr %arrayidx.i61, align 4
  %31 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ptr_mask.i, align 4
  %33 = load i32, ptr %wptr.i, align 4
  %and.i63 = and i32 %33, %32
  store i32 %and.i63, ptr %wptr.i, align 4
  %34 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %count_dw.i, align 4
  %dec.i64 = add i32 %35, -1
  store i32 %dec.i64, ptr %count_dw.i, align 4
  %36 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i66 = add i32 %37, -1
  store i32 %dec4.i66, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i64)
  %cmp.i69 = icmp slt i32 %dec.i64, 1
  br i1 %cmp.i69, label %if.then.i70, label %radeon_ring_write.exit67.radeon_ring_write.exit80_crit_edge

radeon_ring_write.exit67.radeon_ring_write.exit80_crit_edge: ; preds = %radeon_ring_write.exit67
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit80

if.then.i70:                                      ; preds = %radeon_ring_write.exit67
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #8
  br label %radeon_ring_write.exit80

radeon_ring_write.exit80:                         ; preds = %if.then.i70, %radeon_ring_write.exit67.radeon_ring_write.exit80_crit_edge
  %38 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ring1.i, align 8
  %40 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %wptr.i, align 4
  %inc.i73 = add i32 %41, 1
  store i32 %inc.i73, ptr %wptr.i, align 4
  %arrayidx.i74 = getelementptr i32, ptr %39, i32 %41
  %42 = ptrtoint ptr %arrayidx.i74 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile i32 196608, ptr %arrayidx.i74, align 4
  %43 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ptr_mask.i, align 4
  %45 = load i32, ptr %wptr.i, align 4
  %and.i76 = and i32 %45, %44
  store i32 %and.i76, ptr %wptr.i, align 4
  %46 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %count_dw.i, align 4
  %dec.i77 = add i32 %47, -1
  store i32 %dec.i77, ptr %count_dw.i, align 4
  %48 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i79 = add i32 %49, -1
  store i32 %dec4.i79, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i77)
  %cmp.i82 = icmp slt i32 %dec.i77, 1
  br i1 %cmp.i82, label %if.then.i83, label %radeon_ring_write.exit80.radeon_ring_write.exit93_crit_edge

radeon_ring_write.exit80.radeon_ring_write.exit93_crit_edge: ; preds = %radeon_ring_write.exit80
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit93

if.then.i83:                                      ; preds = %radeon_ring_write.exit80
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #8
  br label %radeon_ring_write.exit93

radeon_ring_write.exit93:                         ; preds = %if.then.i83, %radeon_ring_write.exit80.radeon_ring_write.exit93_crit_edge
  %50 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ring1.i, align 8
  %52 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %wptr.i, align 4
  %inc.i86 = add i32 %53, 1
  store i32 %inc.i86, ptr %wptr.i, align 4
  %arrayidx.i87 = getelementptr i32, ptr %51, i32 %53
  %54 = ptrtoint ptr %arrayidx.i87 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile i32 1475, ptr %arrayidx.i87, align 4
  %55 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ptr_mask.i, align 4
  %57 = load i32, ptr %wptr.i, align 4
  %and.i89 = and i32 %57, %56
  store i32 %and.i89, ptr %wptr.i, align 4
  %58 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %count_dw.i, align 4
  %dec.i90 = add i32 %59, -1
  store i32 %dec.i90, ptr %count_dw.i, align 4
  %60 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i92 = add i32 %61, -1
  store i32 %dec4.i92, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i90)
  %cmp.i95 = icmp slt i32 %dec.i90, 1
  br i1 %cmp.i95, label %if.then.i96, label %radeon_ring_write.exit93.radeon_ring_write.exit106_crit_edge

radeon_ring_write.exit93.radeon_ring_write.exit106_crit_edge: ; preds = %radeon_ring_write.exit93
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit106

if.then.i96:                                      ; preds = %radeon_ring_write.exit93
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #8
  br label %radeon_ring_write.exit106

radeon_ring_write.exit106:                        ; preds = %if.then.i96, %radeon_ring_write.exit93.radeon_ring_write.exit106_crit_edge
  %62 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ring1.i, align 8
  %64 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %wptr.i, align 4
  %inc.i99 = add i32 %65, 1
  store i32 %inc.i99, ptr %wptr.i, align 4
  %arrayidx.i100 = getelementptr i32, ptr %63, i32 %65
  %66 = ptrtoint ptr %arrayidx.i100 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile i32 -2147483648, ptr %arrayidx.i100, align 4
  %67 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ptr_mask.i, align 4
  %69 = load i32, ptr %wptr.i, align 4
  %and.i102 = and i32 %69, %68
  store i32 %and.i102, ptr %wptr.i, align 4
  %70 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %count_dw.i, align 4
  %dec.i103 = add i32 %71, -1
  store i32 %dec.i103, ptr %count_dw.i, align 4
  %72 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i105 = add i32 %73, -1
  store i32 %dec4.i105, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i103)
  %cmp.i108 = icmp slt i32 %dec.i103, 1
  br i1 %cmp.i108, label %if.then.i109, label %radeon_ring_write.exit106.radeon_ring_write.exit119_crit_edge

radeon_ring_write.exit106.radeon_ring_write.exit119_crit_edge: ; preds = %radeon_ring_write.exit106
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit119

if.then.i109:                                     ; preds = %radeon_ring_write.exit106
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #8
  br label %radeon_ring_write.exit119

radeon_ring_write.exit119:                        ; preds = %if.then.i109, %radeon_ring_write.exit106.radeon_ring_write.exit119_crit_edge
  %74 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ring1.i, align 8
  %76 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %wptr.i, align 4
  %inc.i112 = add i32 %77, 1
  store i32 %inc.i112, ptr %wptr.i, align 4
  %arrayidx.i113 = getelementptr i32, ptr %75, i32 %77
  %78 = ptrtoint ptr %arrayidx.i113 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile i32 4103, ptr %arrayidx.i113, align 4
  %79 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %ptr_mask.i, align 4
  %81 = load i32, ptr %wptr.i, align 4
  %and.i115 = and i32 %81, %80
  store i32 %and.i115, ptr %wptr.i, align 4
  %82 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %count_dw.i, align 4
  %dec.i116 = add i32 %83, -1
  store i32 %dec.i116, ptr %count_dw.i, align 4
  %84 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i118 = add i32 %85, -1
  store i32 %dec4.i118, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i116)
  %cmp.i121 = icmp slt i32 %dec.i116, 1
  br i1 %cmp.i121, label %if.then.i122, label %radeon_ring_write.exit119.radeon_ring_write.exit132_crit_edge

radeon_ring_write.exit119.radeon_ring_write.exit132_crit_edge: ; preds = %radeon_ring_write.exit119
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit132

if.then.i122:                                     ; preds = %radeon_ring_write.exit119
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #8
  br label %radeon_ring_write.exit132

radeon_ring_write.exit132:                        ; preds = %if.then.i122, %radeon_ring_write.exit119.radeon_ring_write.exit132_crit_edge
  %86 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ring1.i, align 8
  %88 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %wptr.i, align 4
  %inc.i125 = add i32 %89, 1
  store i32 %inc.i125, ptr %wptr.i, align 4
  %arrayidx.i126 = getelementptr i32, ptr %87, i32 %89
  %90 = ptrtoint ptr %arrayidx.i126 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile i32 0, ptr %arrayidx.i126, align 4
  %91 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ptr_mask.i, align 4
  %93 = load i32, ptr %wptr.i, align 4
  %and.i128 = and i32 %93, %92
  store i32 %and.i128, ptr %wptr.i, align 4
  %94 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %count_dw.i, align 4
  %dec.i129 = add i32 %95, -1
  store i32 %dec.i129, ptr %count_dw.i, align 4
  %96 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i131 = add i32 %97, -1
  store i32 %dec4.i131, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i129)
  %cmp.i134 = icmp slt i32 %dec.i129, 1
  br i1 %cmp.i134, label %if.then.i135, label %radeon_ring_write.exit132.radeon_ring_write.exit145_crit_edge

radeon_ring_write.exit132.radeon_ring_write.exit145_crit_edge: ; preds = %radeon_ring_write.exit132
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit145

if.then.i135:                                     ; preds = %radeon_ring_write.exit132
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #8
  br label %radeon_ring_write.exit145

radeon_ring_write.exit145:                        ; preds = %if.then.i135, %radeon_ring_write.exit132.radeon_ring_write.exit145_crit_edge
  %98 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ring1.i, align 8
  %100 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %wptr.i, align 4
  %inc.i138 = add i32 %101, 1
  store i32 %inc.i138, ptr %wptr.i, align 4
  %arrayidx.i139 = getelementptr i32, ptr %99, i32 %101
  %102 = ptrtoint ptr %arrayidx.i139 to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile i32 4098, ptr %arrayidx.i139, align 4
  %103 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %ptr_mask.i, align 4
  %105 = load i32, ptr %wptr.i, align 4
  %and.i141 = and i32 %105, %104
  store i32 %and.i141, ptr %wptr.i, align 4
  %106 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %count_dw.i, align 4
  %dec.i142 = add i32 %107, -1
  store i32 %dec.i142, ptr %count_dw.i, align 4
  %108 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i144 = add i32 %109, -1
  store i32 %dec4.i144, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i142)
  %cmp.i147 = icmp slt i32 %dec.i142, 1
  br i1 %cmp.i147, label %if.then.i148, label %radeon_ring_write.exit145.radeon_ring_write.exit158_crit_edge

radeon_ring_write.exit145.radeon_ring_write.exit158_crit_edge: ; preds = %radeon_ring_write.exit145
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit158

if.then.i148:                                     ; preds = %radeon_ring_write.exit145
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #8
  br label %radeon_ring_write.exit158

radeon_ring_write.exit158:                        ; preds = %if.then.i148, %radeon_ring_write.exit145.radeon_ring_write.exit158_crit_edge
  %110 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ring1.i, align 8
  %112 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %wptr.i, align 4
  %inc.i151 = add i32 %113, 1
  store i32 %inc.i151, ptr %wptr.i, align 4
  %arrayidx.i152 = getelementptr i32, ptr %111, i32 %113
  %114 = ptrtoint ptr %arrayidx.i152 to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile i32 0, ptr %arrayidx.i152, align 4
  %115 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %ptr_mask.i, align 4
  %117 = load i32, ptr %wptr.i, align 4
  %and.i154 = and i32 %117, %116
  store i32 %and.i154, ptr %wptr.i, align 4
  %118 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %count_dw.i, align 4
  %dec.i155 = add i32 %119, -1
  store i32 %dec.i155, ptr %count_dw.i, align 4
  %120 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i157 = add i32 %121, -1
  store i32 %dec4.i157, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i155)
  %cmp.i160 = icmp slt i32 %dec.i155, 1
  br i1 %cmp.i160, label %if.then.i161, label %radeon_ring_write.exit158.radeon_ring_write.exit171_crit_edge

radeon_ring_write.exit158.radeon_ring_write.exit171_crit_edge: ; preds = %radeon_ring_write.exit158
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit171

if.then.i161:                                     ; preds = %radeon_ring_write.exit158
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #8
  br label %radeon_ring_write.exit171

radeon_ring_write.exit171:                        ; preds = %if.then.i161, %radeon_ring_write.exit158.radeon_ring_write.exit171_crit_edge
  %122 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ring1.i, align 8
  %124 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %wptr.i, align 4
  %inc.i164 = add i32 %125, 1
  store i32 %inc.i164, ptr %wptr.i, align 4
  %arrayidx.i165 = getelementptr i32, ptr %123, i32 %125
  %126 = ptrtoint ptr %arrayidx.i165 to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile i32 4274, ptr %arrayidx.i165, align 4
  %127 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %ptr_mask.i, align 4
  %129 = load i32, ptr %wptr.i, align 4
  %and.i167 = and i32 %129, %128
  store i32 %and.i167, ptr %wptr.i, align 4
  %130 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %count_dw.i, align 4
  %dec.i168 = add i32 %131, -1
  store i32 %dec.i168, ptr %count_dw.i, align 4
  %132 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i170 = add i32 %133, -1
  store i32 %dec4.i170, ptr %ring_free_dw.i, align 8
  %num_gb_pipes = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 10
  %134 = ptrtoint ptr %num_gb_pipes to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %num_gb_pipes, align 4
  %notmask = shl nsw i32 -1, %135
  %sub = xor i32 %notmask, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i168)
  %cmp.i173 = icmp slt i32 %dec.i168, 1
  br i1 %cmp.i173, label %if.then.i174, label %radeon_ring_write.exit171.radeon_ring_write.exit184_crit_edge

radeon_ring_write.exit171.radeon_ring_write.exit184_crit_edge: ; preds = %radeon_ring_write.exit171
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit184

if.then.i174:                                     ; preds = %radeon_ring_write.exit171
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #8
  br label %radeon_ring_write.exit184

radeon_ring_write.exit184:                        ; preds = %if.then.i174, %radeon_ring_write.exit171.radeon_ring_write.exit184_crit_edge
  %136 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %ring1.i, align 8
  %138 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %wptr.i, align 4
  %inc.i177 = add i32 %139, 1
  store i32 %inc.i177, ptr %wptr.i, align 4
  %arrayidx.i178 = getelementptr i32, ptr %137, i32 %139
  %140 = ptrtoint ptr %arrayidx.i178 to i32
  call void @__asan_store4_noabort(i32 %140)
  store volatile i32 %sub, ptr %arrayidx.i178, align 4
  %141 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %ptr_mask.i, align 4
  %143 = load i32, ptr %wptr.i, align 4
  %and.i180 = and i32 %143, %142
  store i32 %and.i180, ptr %wptr.i, align 4
  %144 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %count_dw.i, align 4
  %dec.i181 = add i32 %145, -1
  store i32 %dec.i181, ptr %count_dw.i, align 4
  %146 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i183 = add i32 %147, -1
  store i32 %dec4.i183, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i181)
  %cmp.i186 = icmp slt i32 %dec.i181, 1
  br i1 %cmp.i186, label %if.then.i187, label %radeon_ring_write.exit184.radeon_ring_write.exit197_crit_edge

radeon_ring_write.exit184.radeon_ring_write.exit197_crit_edge: ; preds = %radeon_ring_write.exit184
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit197

if.then.i187:                                     ; preds = %radeon_ring_write.exit184
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #8
  br label %radeon_ring_write.exit197

radeon_ring_write.exit197:                        ; preds = %if.then.i187, %radeon_ring_write.exit184.radeon_ring_write.exit197_crit_edge
  %148 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %ring1.i, align 8
  %150 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %wptr.i, align 4
  %inc.i190 = add i32 %151, 1
  store i32 %inc.i190, ptr %wptr.i, align 4
  %arrayidx.i191 = getelementptr i32, ptr %149, i32 %151
  %152 = ptrtoint ptr %arrayidx.i191 to i32
  call void @__asan_store4_noabort(i32 %152)
  store volatile i32 2083, ptr %arrayidx.i191, align 4
  %153 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %ptr_mask.i, align 4
  %155 = load i32, ptr %wptr.i, align 4
  %and.i193 = and i32 %155, %154
  store i32 %and.i193, ptr %wptr.i, align 4
  %156 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %count_dw.i, align 4
  %dec.i194 = add i32 %157, -1
  store i32 %dec.i194, ptr %count_dw.i, align 4
  %158 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i196 = add i32 %159, -1
  store i32 %dec4.i196, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i194)
  %cmp.i199 = icmp slt i32 %dec.i194, 1
  br i1 %cmp.i199, label %if.then.i200, label %radeon_ring_write.exit197.radeon_ring_write.exit210_crit_edge

radeon_ring_write.exit197.radeon_ring_write.exit210_crit_edge: ; preds = %radeon_ring_write.exit197
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit210

if.then.i200:                                     ; preds = %radeon_ring_write.exit197
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #8
  br label %radeon_ring_write.exit210

radeon_ring_write.exit210:                        ; preds = %if.then.i200, %radeon_ring_write.exit197.radeon_ring_write.exit210_crit_edge
  %160 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %ring1.i, align 8
  %162 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %wptr.i, align 4
  %inc.i203 = add i32 %163, 1
  store i32 %inc.i203, ptr %wptr.i, align 4
  %arrayidx.i204 = getelementptr i32, ptr %161, i32 %163
  %164 = ptrtoint ptr %arrayidx.i204 to i32
  call void @__asan_store4_noabort(i32 %164)
  store volatile i32 0, ptr %arrayidx.i204, align 4
  %165 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %ptr_mask.i, align 4
  %167 = load i32, ptr %wptr.i, align 4
  %and.i206 = and i32 %167, %166
  store i32 %and.i206, ptr %wptr.i, align 4
  %168 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %count_dw.i, align 4
  %dec.i207 = add i32 %169, -1
  store i32 %dec.i207, ptr %count_dw.i, align 4
  %170 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i209 = add i32 %171, -1
  store i32 %dec4.i209, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i207)
  %cmp.i212 = icmp slt i32 %dec.i207, 1
  br i1 %cmp.i212, label %if.then.i213, label %radeon_ring_write.exit210.radeon_ring_write.exit223_crit_edge

radeon_ring_write.exit210.radeon_ring_write.exit223_crit_edge: ; preds = %radeon_ring_write.exit210
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit223

if.then.i213:                                     ; preds = %radeon_ring_write.exit210
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #8
  br label %radeon_ring_write.exit223

radeon_ring_write.exit223:                        ; preds = %if.then.i213, %radeon_ring_write.exit210.radeon_ring_write.exit223_crit_edge
  %172 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %ring1.i, align 8
  %174 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %wptr.i, align 4
  %inc.i216 = add i32 %175, 1
  store i32 %inc.i216, ptr %wptr.i, align 4
  %arrayidx.i217 = getelementptr i32, ptr %173, i32 %175
  %176 = ptrtoint ptr %arrayidx.i217 to i32
  call void @__asan_store4_noabort(i32 %176)
  store volatile i32 5011, ptr %arrayidx.i217, align 4
  %177 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %ptr_mask.i, align 4
  %179 = load i32, ptr %wptr.i, align 4
  %and.i219 = and i32 %179, %178
  store i32 %and.i219, ptr %wptr.i, align 4
  %180 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %count_dw.i, align 4
  %dec.i220 = add i32 %181, -1
  store i32 %dec.i220, ptr %count_dw.i, align 4
  %182 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i222 = add i32 %183, -1
  store i32 %dec4.i222, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i220)
  %cmp.i225 = icmp slt i32 %dec.i220, 1
  br i1 %cmp.i225, label %if.then.i226, label %radeon_ring_write.exit223.radeon_ring_write.exit236_crit_edge

radeon_ring_write.exit223.radeon_ring_write.exit236_crit_edge: ; preds = %radeon_ring_write.exit223
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit236

if.then.i226:                                     ; preds = %radeon_ring_write.exit223
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #8
  br label %radeon_ring_write.exit236

radeon_ring_write.exit236:                        ; preds = %if.then.i226, %radeon_ring_write.exit223.radeon_ring_write.exit236_crit_edge
  %184 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %ring1.i, align 8
  %186 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %wptr.i, align 4
  %inc.i229 = add i32 %187, 1
  store i32 %inc.i229, ptr %wptr.i, align 4
  %arrayidx.i230 = getelementptr i32, ptr %185, i32 %187
  %188 = ptrtoint ptr %arrayidx.i230 to i32
  call void @__asan_store4_noabort(i32 %188)
  store volatile i32 10, ptr %arrayidx.i230, align 4
  %189 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %ptr_mask.i, align 4
  %191 = load i32, ptr %wptr.i, align 4
  %and.i232 = and i32 %191, %190
  store i32 %and.i232, ptr %wptr.i, align 4
  %192 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %count_dw.i, align 4
  %dec.i233 = add i32 %193, -1
  store i32 %dec.i233, ptr %count_dw.i, align 4
  %194 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i235 = add i32 %195, -1
  store i32 %dec4.i235, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i233)
  %cmp.i238 = icmp slt i32 %dec.i233, 1
  br i1 %cmp.i238, label %if.then.i239, label %radeon_ring_write.exit236.radeon_ring_write.exit249_crit_edge

radeon_ring_write.exit236.radeon_ring_write.exit249_crit_edge: ; preds = %radeon_ring_write.exit236
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit249

if.then.i239:                                     ; preds = %radeon_ring_write.exit236
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #8
  br label %radeon_ring_write.exit249

radeon_ring_write.exit249:                        ; preds = %if.then.i239, %radeon_ring_write.exit236.radeon_ring_write.exit249_crit_edge
  %196 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %ring1.i, align 8
  %198 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %wptr.i, align 4
  %inc.i242 = add i32 %199, 1
  store i32 %inc.i242, ptr %wptr.i, align 4
  %arrayidx.i243 = getelementptr i32, ptr %197, i32 %199
  %200 = ptrtoint ptr %arrayidx.i243 to i32
  call void @__asan_store4_noabort(i32 %200)
  store volatile i32 5062, ptr %arrayidx.i243, align 4
  %201 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %ptr_mask.i, align 4
  %203 = load i32, ptr %wptr.i, align 4
  %and.i245 = and i32 %203, %202
  store i32 %and.i245, ptr %wptr.i, align 4
  %204 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %count_dw.i, align 4
  %dec.i246 = add i32 %205, -1
  store i32 %dec.i246, ptr %count_dw.i, align 4
  %206 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i248 = add i32 %207, -1
  store i32 %dec4.i248, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i246)
  %cmp.i251 = icmp slt i32 %dec.i246, 1
  br i1 %cmp.i251, label %if.then.i252, label %radeon_ring_write.exit249.radeon_ring_write.exit262_crit_edge

radeon_ring_write.exit249.radeon_ring_write.exit262_crit_edge: ; preds = %radeon_ring_write.exit249
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit262

if.then.i252:                                     ; preds = %radeon_ring_write.exit249
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #8
  br label %radeon_ring_write.exit262

radeon_ring_write.exit262:                        ; preds = %if.then.i252, %radeon_ring_write.exit249.radeon_ring_write.exit262_crit_edge
  %208 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %ring1.i, align 8
  %210 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %wptr.i, align 4
  %inc.i255 = add i32 %211, 1
  store i32 %inc.i255, ptr %wptr.i, align 4
  %arrayidx.i256 = getelementptr i32, ptr %209, i32 %211
  %212 = ptrtoint ptr %arrayidx.i256 to i32
  call void @__asan_store4_noabort(i32 %212)
  store volatile i32 3, ptr %arrayidx.i256, align 4
  %213 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %ptr_mask.i, align 4
  %215 = load i32, ptr %wptr.i, align 4
  %and.i258 = and i32 %215, %214
  store i32 %and.i258, ptr %wptr.i, align 4
  %216 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %count_dw.i, align 4
  %dec.i259 = add i32 %217, -1
  store i32 %dec.i259, ptr %count_dw.i, align 4
  %218 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i261 = add i32 %219, -1
  store i32 %dec4.i261, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i259)
  %cmp.i264 = icmp slt i32 %dec.i259, 1
  br i1 %cmp.i264, label %if.then.i265, label %radeon_ring_write.exit262.radeon_ring_write.exit275_crit_edge

radeon_ring_write.exit262.radeon_ring_write.exit275_crit_edge: ; preds = %radeon_ring_write.exit262
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit275

if.then.i265:                                     ; preds = %radeon_ring_write.exit262
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #8
  br label %radeon_ring_write.exit275

radeon_ring_write.exit275:                        ; preds = %if.then.i265, %radeon_ring_write.exit262.radeon_ring_write.exit275_crit_edge
  %220 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %ring1.i, align 8
  %222 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %wptr.i, align 4
  %inc.i268 = add i32 %223, 1
  store i32 %inc.i268, ptr %wptr.i, align 4
  %arrayidx.i269 = getelementptr i32, ptr %221, i32 %223
  %224 = ptrtoint ptr %arrayidx.i269 to i32
  call void @__asan_store4_noabort(i32 %224)
  store volatile i32 1480, ptr %arrayidx.i269, align 4
  %225 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %ptr_mask.i, align 4
  %227 = load i32, ptr %wptr.i, align 4
  %and.i271 = and i32 %227, %226
  store i32 %and.i271, ptr %wptr.i, align 4
  %228 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %count_dw.i, align 4
  %dec.i272 = add i32 %229, -1
  store i32 %dec.i272, ptr %count_dw.i, align 4
  %230 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i274 = add i32 %231, -1
  store i32 %dec4.i274, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i272)
  %cmp.i277 = icmp slt i32 %dec.i272, 1
  br i1 %cmp.i277, label %if.then.i278, label %radeon_ring_write.exit275.radeon_ring_write.exit288_crit_edge

radeon_ring_write.exit275.radeon_ring_write.exit288_crit_edge: ; preds = %radeon_ring_write.exit275
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit288

if.then.i278:                                     ; preds = %radeon_ring_write.exit275
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #8
  br label %radeon_ring_write.exit288

radeon_ring_write.exit288:                        ; preds = %if.then.i278, %radeon_ring_write.exit275.radeon_ring_write.exit288_crit_edge
  %232 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %ring1.i, align 8
  %234 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %wptr.i, align 4
  %inc.i281 = add i32 %235, 1
  store i32 %inc.i281, ptr %wptr.i, align 4
  %arrayidx.i282 = getelementptr i32, ptr %233, i32 %235
  %236 = ptrtoint ptr %arrayidx.i282 to i32
  call void @__asan_store4_noabort(i32 %236)
  store volatile i32 196608, ptr %arrayidx.i282, align 4
  %237 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %ptr_mask.i, align 4
  %239 = load i32, ptr %wptr.i, align 4
  %and.i284 = and i32 %239, %238
  store i32 %and.i284, ptr %wptr.i, align 4
  %240 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %count_dw.i, align 4
  %dec.i285 = add i32 %241, -1
  store i32 %dec.i285, ptr %count_dw.i, align 4
  %242 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i287 = add i32 %243, -1
  store i32 %dec4.i287, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i285)
  %cmp.i290 = icmp slt i32 %dec.i285, 1
  br i1 %cmp.i290, label %if.then.i291, label %radeon_ring_write.exit288.radeon_ring_write.exit301_crit_edge

radeon_ring_write.exit288.radeon_ring_write.exit301_crit_edge: ; preds = %radeon_ring_write.exit288
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit301

if.then.i291:                                     ; preds = %radeon_ring_write.exit288
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #8
  br label %radeon_ring_write.exit301

radeon_ring_write.exit301:                        ; preds = %if.then.i291, %radeon_ring_write.exit288.radeon_ring_write.exit301_crit_edge
  %244 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %ring1.i, align 8
  %246 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %wptr.i, align 4
  %inc.i294 = add i32 %247, 1
  store i32 %inc.i294, ptr %wptr.i, align 4
  %arrayidx.i295 = getelementptr i32, ptr %245, i32 %247
  %248 = ptrtoint ptr %arrayidx.i295 to i32
  call void @__asan_store4_noabort(i32 %248)
  store volatile i32 4104, ptr %arrayidx.i295, align 4
  %249 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %ptr_mask.i, align 4
  %251 = load i32, ptr %wptr.i, align 4
  %and.i297 = and i32 %251, %250
  store i32 %and.i297, ptr %wptr.i, align 4
  %252 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %count_dw.i, align 4
  %dec.i298 = add i32 %253, -1
  store i32 %dec.i298, ptr %count_dw.i, align 4
  %254 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i300 = add i32 %255, -1
  store i32 %dec4.i300, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i298)
  %cmp.i303 = icmp slt i32 %dec.i298, 1
  br i1 %cmp.i303, label %if.then.i304, label %radeon_ring_write.exit301.radeon_ring_write.exit314_crit_edge

radeon_ring_write.exit301.radeon_ring_write.exit314_crit_edge: ; preds = %radeon_ring_write.exit301
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit314

if.then.i304:                                     ; preds = %radeon_ring_write.exit301
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #8
  br label %radeon_ring_write.exit314

radeon_ring_write.exit314:                        ; preds = %if.then.i304, %radeon_ring_write.exit301.radeon_ring_write.exit314_crit_edge
  %256 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %ring1.i, align 8
  %258 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %wptr.i, align 4
  %inc.i307 = add i32 %259, 1
  store i32 %inc.i307, ptr %wptr.i, align 4
  %arrayidx.i308 = getelementptr i32, ptr %257, i32 %259
  %260 = ptrtoint ptr %arrayidx.i308 to i32
  call void @__asan_store4_noabort(i32 %260)
  store volatile i32 0, ptr %arrayidx.i308, align 4
  %261 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %ptr_mask.i, align 4
  %263 = load i32, ptr %wptr.i, align 4
  %and.i310 = and i32 %263, %262
  store i32 %and.i310, ptr %wptr.i, align 4
  %264 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %count_dw.i, align 4
  %dec.i311 = add i32 %265, -1
  store i32 %dec.i311, ptr %count_dw.i, align 4
  %266 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i313 = add i32 %267, -1
  store i32 %dec4.i313, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i311)
  %cmp.i316 = icmp slt i32 %dec.i311, 1
  br i1 %cmp.i316, label %if.then.i317, label %radeon_ring_write.exit314.radeon_ring_write.exit327_crit_edge

radeon_ring_write.exit314.radeon_ring_write.exit327_crit_edge: ; preds = %radeon_ring_write.exit314
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit327

if.then.i317:                                     ; preds = %radeon_ring_write.exit314
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #8
  br label %radeon_ring_write.exit327

radeon_ring_write.exit327:                        ; preds = %if.then.i317, %radeon_ring_write.exit314.radeon_ring_write.exit327_crit_edge
  %268 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %ring1.i, align 8
  %270 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %wptr.i, align 4
  %inc.i320 = add i32 %271, 1
  store i32 %inc.i320, ptr %wptr.i, align 4
  %arrayidx.i321 = getelementptr i32, ptr %269, i32 %271
  %272 = ptrtoint ptr %arrayidx.i321 to i32
  call void @__asan_store4_noabort(i32 %272)
  store volatile i32 5011, ptr %arrayidx.i321, align 4
  %273 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %ptr_mask.i, align 4
  %275 = load i32, ptr %wptr.i, align 4
  %and.i323 = and i32 %275, %274
  store i32 %and.i323, ptr %wptr.i, align 4
  %276 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %count_dw.i, align 4
  %dec.i324 = add i32 %277, -1
  store i32 %dec.i324, ptr %count_dw.i, align 4
  %278 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i326 = add i32 %279, -1
  store i32 %dec4.i326, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i324)
  %cmp.i329 = icmp slt i32 %dec.i324, 1
  br i1 %cmp.i329, label %if.then.i330, label %radeon_ring_write.exit327.radeon_ring_write.exit340_crit_edge

radeon_ring_write.exit327.radeon_ring_write.exit340_crit_edge: ; preds = %radeon_ring_write.exit327
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit340

if.then.i330:                                     ; preds = %radeon_ring_write.exit327
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #8
  br label %radeon_ring_write.exit340

radeon_ring_write.exit340:                        ; preds = %if.then.i330, %radeon_ring_write.exit327.radeon_ring_write.exit340_crit_edge
  %280 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %ring1.i, align 8
  %282 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %wptr.i, align 4
  %inc.i333 = add i32 %283, 1
  store i32 %inc.i333, ptr %wptr.i, align 4
  %arrayidx.i334 = getelementptr i32, ptr %281, i32 %283
  %284 = ptrtoint ptr %arrayidx.i334 to i32
  call void @__asan_store4_noabort(i32 %284)
  store volatile i32 10, ptr %arrayidx.i334, align 4
  %285 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %ptr_mask.i, align 4
  %287 = load i32, ptr %wptr.i, align 4
  %and.i336 = and i32 %287, %286
  store i32 %and.i336, ptr %wptr.i, align 4
  %288 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %count_dw.i, align 4
  %dec.i337 = add i32 %289, -1
  store i32 %dec.i337, ptr %count_dw.i, align 4
  %290 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i339 = add i32 %291, -1
  store i32 %dec4.i339, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i337)
  %cmp.i342 = icmp slt i32 %dec.i337, 1
  br i1 %cmp.i342, label %if.then.i343, label %radeon_ring_write.exit340.radeon_ring_write.exit353_crit_edge

radeon_ring_write.exit340.radeon_ring_write.exit353_crit_edge: ; preds = %radeon_ring_write.exit340
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit353

if.then.i343:                                     ; preds = %radeon_ring_write.exit340
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #8
  br label %radeon_ring_write.exit353

radeon_ring_write.exit353:                        ; preds = %if.then.i343, %radeon_ring_write.exit340.radeon_ring_write.exit353_crit_edge
  %292 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %ring1.i, align 8
  %294 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %wptr.i, align 4
  %inc.i346 = add i32 %295, 1
  store i32 %inc.i346, ptr %wptr.i, align 4
  %arrayidx.i347 = getelementptr i32, ptr %293, i32 %295
  %296 = ptrtoint ptr %arrayidx.i347 to i32
  call void @__asan_store4_noabort(i32 %296)
  store volatile i32 5062, ptr %arrayidx.i347, align 4
  %297 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %ptr_mask.i, align 4
  %299 = load i32, ptr %wptr.i, align 4
  %and.i349 = and i32 %299, %298
  store i32 %and.i349, ptr %wptr.i, align 4
  %300 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %count_dw.i, align 4
  %dec.i350 = add i32 %301, -1
  store i32 %dec.i350, ptr %count_dw.i, align 4
  %302 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i352 = add i32 %303, -1
  store i32 %dec4.i352, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i350)
  %cmp.i355 = icmp slt i32 %dec.i350, 1
  br i1 %cmp.i355, label %if.then.i356, label %radeon_ring_write.exit353.radeon_ring_write.exit366_crit_edge

radeon_ring_write.exit353.radeon_ring_write.exit366_crit_edge: ; preds = %radeon_ring_write.exit353
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit366

if.then.i356:                                     ; preds = %radeon_ring_write.exit353
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #8
  br label %radeon_ring_write.exit366

radeon_ring_write.exit366:                        ; preds = %if.then.i356, %radeon_ring_write.exit353.radeon_ring_write.exit366_crit_edge
  %304 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %ring1.i, align 8
  %306 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %wptr.i, align 4
  %inc.i359 = add i32 %307, 1
  store i32 %inc.i359, ptr %wptr.i, align 4
  %arrayidx.i360 = getelementptr i32, ptr %305, i32 %307
  %308 = ptrtoint ptr %arrayidx.i360 to i32
  call void @__asan_store4_noabort(i32 %308)
  store volatile i32 3, ptr %arrayidx.i360, align 4
  %309 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %ptr_mask.i, align 4
  %311 = load i32, ptr %wptr.i, align 4
  %and.i362 = and i32 %311, %310
  store i32 %and.i362, ptr %wptr.i, align 4
  %312 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %count_dw.i, align 4
  %dec.i363 = add i32 %313, -1
  store i32 %dec.i363, ptr %count_dw.i, align 4
  %314 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i365 = add i32 %315, -1
  store i32 %dec4.i365, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i363)
  %cmp.i368 = icmp slt i32 %dec.i363, 1
  br i1 %cmp.i368, label %if.then.i369, label %radeon_ring_write.exit366.radeon_ring_write.exit379_crit_edge

radeon_ring_write.exit366.radeon_ring_write.exit379_crit_edge: ; preds = %radeon_ring_write.exit366
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit379

if.then.i369:                                     ; preds = %radeon_ring_write.exit366
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #8
  br label %radeon_ring_write.exit379

radeon_ring_write.exit379:                        ; preds = %if.then.i369, %radeon_ring_write.exit366.radeon_ring_write.exit379_crit_edge
  %316 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %ring1.i, align 8
  %318 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %wptr.i, align 4
  %inc.i372 = add i32 %319, 1
  store i32 %inc.i372, ptr %wptr.i, align 4
  %arrayidx.i373 = getelementptr i32, ptr %317, i32 %319
  %320 = ptrtoint ptr %arrayidx.i373 to i32
  call void @__asan_store4_noabort(i32 %320)
  store volatile i32 4100, ptr %arrayidx.i373, align 4
  %321 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %ptr_mask.i, align 4
  %323 = load i32, ptr %wptr.i, align 4
  %and.i375 = and i32 %323, %322
  store i32 %and.i375, ptr %wptr.i, align 4
  %324 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %count_dw.i, align 4
  %dec.i376 = add i32 %325, -1
  store i32 %dec.i376, ptr %count_dw.i, align 4
  %326 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i378 = add i32 %327, -1
  store i32 %dec4.i378, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i376)
  %cmp.i381 = icmp slt i32 %dec.i376, 1
  br i1 %cmp.i381, label %if.then.i382, label %radeon_ring_write.exit379.radeon_ring_write.exit392_crit_edge

radeon_ring_write.exit379.radeon_ring_write.exit392_crit_edge: ; preds = %radeon_ring_write.exit379
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit392

if.then.i382:                                     ; preds = %radeon_ring_write.exit379
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #8
  br label %radeon_ring_write.exit392

radeon_ring_write.exit392:                        ; preds = %if.then.i382, %radeon_ring_write.exit379.radeon_ring_write.exit392_crit_edge
  %328 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %ring1.i, align 8
  %330 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %wptr.i, align 4
  %inc.i385 = add i32 %331, 1
  store i32 %inc.i385, ptr %wptr.i, align 4
  %arrayidx.i386 = getelementptr i32, ptr %329, i32 %331
  %332 = ptrtoint ptr %arrayidx.i386 to i32
  call void @__asan_store4_noabort(i32 %332)
  store volatile i32 1717986918, ptr %arrayidx.i386, align 4
  %333 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %ptr_mask.i, align 4
  %335 = load i32, ptr %wptr.i, align 4
  %and.i388 = and i32 %335, %334
  store i32 %and.i388, ptr %wptr.i, align 4
  %336 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %count_dw.i, align 4
  %dec.i389 = add i32 %337, -1
  store i32 %dec.i389, ptr %count_dw.i, align 4
  %338 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i391 = add i32 %339, -1
  store i32 %dec4.i391, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i389)
  %cmp.i394 = icmp slt i32 %dec.i389, 1
  br i1 %cmp.i394, label %if.then.i395, label %radeon_ring_write.exit392.radeon_ring_write.exit405_crit_edge

radeon_ring_write.exit392.radeon_ring_write.exit405_crit_edge: ; preds = %radeon_ring_write.exit392
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit405

if.then.i395:                                     ; preds = %radeon_ring_write.exit392
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #8
  br label %radeon_ring_write.exit405

radeon_ring_write.exit405:                        ; preds = %if.then.i395, %radeon_ring_write.exit392.radeon_ring_write.exit405_crit_edge
  %340 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %ring1.i, align 8
  %342 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %wptr.i, align 4
  %inc.i398 = add i32 %343, 1
  store i32 %inc.i398, ptr %wptr.i, align 4
  %arrayidx.i399 = getelementptr i32, ptr %341, i32 %343
  %344 = ptrtoint ptr %arrayidx.i399 to i32
  call void @__asan_store4_noabort(i32 %344)
  store volatile i32 4101, ptr %arrayidx.i399, align 4
  %345 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %ptr_mask.i, align 4
  %347 = load i32, ptr %wptr.i, align 4
  %and.i401 = and i32 %347, %346
  store i32 %and.i401, ptr %wptr.i, align 4
  %348 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %count_dw.i, align 4
  %dec.i402 = add i32 %349, -1
  store i32 %dec.i402, ptr %count_dw.i, align 4
  %350 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i404 = add i32 %351, -1
  store i32 %dec4.i404, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i402)
  %cmp.i407 = icmp slt i32 %dec.i402, 1
  br i1 %cmp.i407, label %if.then.i408, label %radeon_ring_write.exit405.radeon_ring_write.exit418_crit_edge

radeon_ring_write.exit405.radeon_ring_write.exit418_crit_edge: ; preds = %radeon_ring_write.exit405
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit418

if.then.i408:                                     ; preds = %radeon_ring_write.exit405
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #8
  br label %radeon_ring_write.exit418

radeon_ring_write.exit418:                        ; preds = %if.then.i408, %radeon_ring_write.exit405.radeon_ring_write.exit418_crit_edge
  %352 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %ring1.i, align 8
  %354 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %wptr.i, align 4
  %inc.i411 = add i32 %355, 1
  store i32 %inc.i411, ptr %wptr.i, align 4
  %arrayidx.i412 = getelementptr i32, ptr %353, i32 %355
  %356 = ptrtoint ptr %arrayidx.i412 to i32
  call void @__asan_store4_noabort(i32 %356)
  store volatile i32 107374182, ptr %arrayidx.i412, align 4
  %357 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %ptr_mask.i, align 4
  %359 = load i32, ptr %wptr.i, align 4
  %and.i414 = and i32 %359, %358
  store i32 %and.i414, ptr %wptr.i, align 4
  %360 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %count_dw.i, align 4
  %dec.i415 = add i32 %361, -1
  store i32 %dec.i415, ptr %count_dw.i, align 4
  %362 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i417 = add i32 %363, -1
  store i32 %dec4.i417, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i415)
  %cmp.i420 = icmp slt i32 %dec.i415, 1
  br i1 %cmp.i420, label %if.then.i421, label %radeon_ring_write.exit418.radeon_ring_write.exit431_crit_edge

radeon_ring_write.exit418.radeon_ring_write.exit431_crit_edge: ; preds = %radeon_ring_write.exit418
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit431

if.then.i421:                                     ; preds = %radeon_ring_write.exit418
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #8
  br label %radeon_ring_write.exit431

radeon_ring_write.exit431:                        ; preds = %if.then.i421, %radeon_ring_write.exit418.radeon_ring_write.exit431_crit_edge
  %364 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %ring1.i, align 8
  %366 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %wptr.i, align 4
  %inc.i424 = add i32 %367, 1
  store i32 %inc.i424, ptr %wptr.i, align 4
  %arrayidx.i425 = getelementptr i32, ptr %365, i32 %367
  %368 = ptrtoint ptr %arrayidx.i425 to i32
  call void @__asan_store4_noabort(i32 %368)
  store volatile i32 4253, ptr %arrayidx.i425, align 4
  %369 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %ptr_mask.i, align 4
  %371 = load i32, ptr %wptr.i, align 4
  %and.i427 = and i32 %371, %370
  store i32 %and.i427, ptr %wptr.i, align 4
  %372 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %count_dw.i, align 4
  %dec.i428 = add i32 %373, -1
  store i32 %dec.i428, ptr %count_dw.i, align 4
  %374 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i430 = add i32 %375, -1
  store i32 %dec4.i430, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i428)
  %cmp.i433 = icmp slt i32 %dec.i428, 1
  br i1 %cmp.i433, label %if.then.i434, label %radeon_ring_write.exit431.radeon_ring_write.exit444_crit_edge

radeon_ring_write.exit431.radeon_ring_write.exit444_crit_edge: ; preds = %radeon_ring_write.exit431
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit444

if.then.i434:                                     ; preds = %radeon_ring_write.exit431
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #8
  br label %radeon_ring_write.exit444

radeon_ring_write.exit444:                        ; preds = %if.then.i434, %radeon_ring_write.exit431.radeon_ring_write.exit444_crit_edge
  %376 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %ring1.i, align 8
  %378 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %wptr.i, align 4
  %inc.i437 = add i32 %379, 1
  store i32 %inc.i437, ptr %wptr.i, align 4
  %arrayidx.i438 = getelementptr i32, ptr %377, i32 %379
  %380 = ptrtoint ptr %arrayidx.i438 to i32
  call void @__asan_store4_noabort(i32 %380)
  store volatile i32 3, ptr %arrayidx.i438, align 4
  %381 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %ptr_mask.i, align 4
  %383 = load i32, ptr %wptr.i, align 4
  %and.i440 = and i32 %383, %382
  store i32 %and.i440, ptr %wptr.i, align 4
  %384 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %count_dw.i, align 4
  %dec.i441 = add i32 %385, -1
  store i32 %dec.i441, ptr %count_dw.i, align 4
  %386 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i443 = add i32 %387, -1
  store i32 %dec4.i443, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i441)
  %cmp.i446 = icmp slt i32 %dec.i441, 1
  br i1 %cmp.i446, label %if.then.i447, label %radeon_ring_write.exit444.radeon_ring_write.exit457_crit_edge

radeon_ring_write.exit444.radeon_ring_write.exit457_crit_edge: ; preds = %radeon_ring_write.exit444
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit457

if.then.i447:                                     ; preds = %radeon_ring_write.exit444
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #8
  br label %radeon_ring_write.exit457

radeon_ring_write.exit457:                        ; preds = %if.then.i447, %radeon_ring_write.exit444.radeon_ring_write.exit457_crit_edge
  %388 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %ring1.i, align 8
  %390 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %wptr.i, align 4
  %inc.i450 = add i32 %391, 1
  store i32 %inc.i450, ptr %wptr.i, align 4
  %arrayidx.i451 = getelementptr i32, ptr %389, i32 %391
  %392 = ptrtoint ptr %arrayidx.i451 to i32
  call void @__asan_store4_noabort(i32 %392)
  store volatile i32 4258, ptr %arrayidx.i451, align 4
  %393 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %ptr_mask.i, align 4
  %395 = load i32, ptr %wptr.i, align 4
  %and.i453 = and i32 %395, %394
  store i32 %and.i453, ptr %wptr.i, align 4
  %396 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %count_dw.i, align 4
  %dec.i454 = add i32 %397, -1
  store i32 %dec.i454, ptr %count_dw.i, align 4
  %398 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i456 = add i32 %399, -1
  store i32 %dec4.i456, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i454)
  %cmp.i459 = icmp slt i32 %dec.i454, 1
  br i1 %cmp.i459, label %if.then.i460, label %radeon_ring_write.exit457.radeon_ring_write.exit470_crit_edge

radeon_ring_write.exit457.radeon_ring_write.exit470_crit_edge: ; preds = %radeon_ring_write.exit457
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit470

if.then.i460:                                     ; preds = %radeon_ring_write.exit457
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #8
  br label %radeon_ring_write.exit470

radeon_ring_write.exit470:                        ; preds = %if.then.i460, %radeon_ring_write.exit457.radeon_ring_write.exit470_crit_edge
  %400 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %ring1.i, align 8
  %402 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %wptr.i, align 4
  %inc.i463 = add i32 %403, 1
  store i32 %inc.i463, ptr %wptr.i, align 4
  %arrayidx.i464 = getelementptr i32, ptr %401, i32 %403
  %404 = ptrtoint ptr %arrayidx.i464 to i32
  call void @__asan_store4_noabort(i32 %404)
  store volatile i32 288, ptr %arrayidx.i464, align 4
  %405 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %ptr_mask.i, align 4
  %407 = load i32, ptr %wptr.i, align 4
  %and.i466 = and i32 %407, %406
  store i32 %and.i466, ptr %wptr.i, align 4
  %408 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %count_dw.i, align 4
  %dec.i467 = add i32 %409, -1
  store i32 %dec.i467, ptr %count_dw.i, align 4
  %410 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i469 = add i32 %411, -1
  store i32 %dec4.i469, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i467)
  %cmp.i472 = icmp slt i32 %dec.i467, 1
  br i1 %cmp.i472, label %if.then.i473, label %radeon_ring_write.exit470.radeon_ring_write.exit483_crit_edge

radeon_ring_write.exit470.radeon_ring_write.exit483_crit_edge: ; preds = %radeon_ring_write.exit470
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit483

if.then.i473:                                     ; preds = %radeon_ring_write.exit470
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #8
  br label %radeon_ring_write.exit483

radeon_ring_write.exit483:                        ; preds = %if.then.i473, %radeon_ring_write.exit470.radeon_ring_write.exit483_crit_edge
  %412 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %ring1.i, align 8
  %414 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %wptr.i, align 4
  %inc.i476 = add i32 %415, 1
  store i32 %inc.i476, ptr %wptr.i, align 4
  %arrayidx.i477 = getelementptr i32, ptr %413, i32 %415
  %416 = ptrtoint ptr %arrayidx.i477 to i32
  call void @__asan_store4_noabort(i32 %416)
  store volatile i32 4259, ptr %arrayidx.i477, align 4
  %417 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %ptr_mask.i, align 4
  %419 = load i32, ptr %wptr.i, align 4
  %and.i479 = and i32 %419, %418
  store i32 %and.i479, ptr %wptr.i, align 4
  %420 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %count_dw.i, align 4
  %dec.i480 = add i32 %421, -1
  store i32 %dec.i480, ptr %count_dw.i, align 4
  %422 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i482 = add i32 %423, -1
  store i32 %dec4.i482, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i480)
  %cmp.i485 = icmp slt i32 %dec.i480, 1
  br i1 %cmp.i485, label %if.then.i486, label %radeon_ring_write.exit483.radeon_ring_write.exit496_crit_edge

radeon_ring_write.exit483.radeon_ring_write.exit496_crit_edge: ; preds = %radeon_ring_write.exit483
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit496

if.then.i486:                                     ; preds = %radeon_ring_write.exit483
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #8
  br label %radeon_ring_write.exit496

radeon_ring_write.exit496:                        ; preds = %if.then.i486, %radeon_ring_write.exit483.radeon_ring_write.exit496_crit_edge
  %424 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %ring1.i, align 8
  %426 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %wptr.i, align 4
  %inc.i489 = add i32 %427, 1
  store i32 %inc.i489, ptr %wptr.i, align 4
  %arrayidx.i490 = getelementptr i32, ptr %425, i32 %427
  %428 = ptrtoint ptr %arrayidx.i490 to i32
  call void @__asan_store4_noabort(i32 %428)
  store volatile i32 5, ptr %arrayidx.i490, align 4
  %429 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %ptr_mask.i, align 4
  %431 = load i32, ptr %wptr.i, align 4
  %and.i492 = and i32 %431, %430
  store i32 %and.i492, ptr %wptr.i, align 4
  %432 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %count_dw.i, align 4
  %dec.i493 = add i32 %433, -1
  store i32 %dec.i493, ptr %count_dw.i, align 4
  %434 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i495 = add i32 %435, -1
  store i32 %dec4.i495, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i493)
  %cmp.i498 = icmp slt i32 %dec.i493, 1
  br i1 %cmp.i498, label %if.then.i499, label %radeon_ring_write.exit496.radeon_ring_write.exit509_crit_edge

radeon_ring_write.exit496.radeon_ring_write.exit509_crit_edge: ; preds = %radeon_ring_write.exit496
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit509

if.then.i499:                                     ; preds = %radeon_ring_write.exit496
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #8
  br label %radeon_ring_write.exit509

radeon_ring_write.exit509:                        ; preds = %if.then.i499, %radeon_ring_write.exit496.radeon_ring_write.exit509_crit_edge
  %436 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %ring1.i, align 8
  %438 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %wptr.i, align 4
  %inc.i502 = add i32 %439, 1
  store i32 %inc.i502, ptr %wptr.i, align 4
  %arrayidx.i503 = getelementptr i32, ptr %437, i32 %439
  %440 = ptrtoint ptr %arrayidx.i503 to i32
  call void @__asan_store4_noabort(i32 %440)
  store volatile i32 2098, ptr %arrayidx.i503, align 4
  %441 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load i32, ptr %ptr_mask.i, align 4
  %443 = load i32, ptr %wptr.i, align 4
  %and.i505 = and i32 %443, %442
  store i32 %and.i505, ptr %wptr.i, align 4
  %444 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %count_dw.i, align 4
  %dec.i506 = add i32 %445, -1
  store i32 %dec.i506, ptr %count_dw.i, align 4
  %446 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i508 = add i32 %447, -1
  store i32 %dec4.i508, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i506)
  %cmp.i511 = icmp slt i32 %dec.i506, 1
  br i1 %cmp.i511, label %if.then.i512, label %radeon_ring_write.exit509.radeon_ring_write.exit522_crit_edge

radeon_ring_write.exit509.radeon_ring_write.exit522_crit_edge: ; preds = %radeon_ring_write.exit509
  call void @__sanitizer_cov_trace_pc() #10
  br label %radeon_ring_write.exit522

if.then.i512:                                     ; preds = %radeon_ring_write.exit509
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #8
  br label %radeon_ring_write.exit522

radeon_ring_write.exit522:                        ; preds = %if.then.i512, %radeon_ring_write.exit509.radeon_ring_write.exit522_crit_edge
  %448 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %ring1.i, align 8
  %450 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %wptr.i, align 4
  %inc.i515 = add i32 %451, 1
  store i32 %inc.i515, ptr %wptr.i, align 4
  %arrayidx.i516 = getelementptr i32, ptr %449, i32 %451
  %452 = ptrtoint ptr %arrayidx.i516 to i32
  call void @__asan_store4_noabort(i32 %452)
  store volatile i32 0, ptr %arrayidx.i516, align 4
  %453 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load i32, ptr %ptr_mask.i, align 4
  %455 = load i32, ptr %wptr.i, align 4
  %and.i518 = and i32 %455, %454
  store i32 %and.i518, ptr %wptr.i, align 4
  %456 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load i32, ptr %count_dw.i, align 4
  %dec.i519 = add i32 %457, -1
  store i32 %dec.i519, ptr %count_dw.i, align 4
  %458 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i521 = add i32 %459, -1
  store i32 %dec4.i521, ptr %ring_free_dw.i, align 8
  tail call void @radeon_ring_unlock_commit(ptr noundef %rdev, ptr noundef %ring, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %radeon_ring_write.exit522, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_ring_lock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ring_unlock_commit(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv515_mc_wait_for_idle(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mc_rreg = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 32
  %usec_timeout = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %0 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usec_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5.not = icmp eq i32 %1, 0
  br i1 %cmp5.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %mc_rreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mc_rreg, align 8
  %call = tail call i32 %3(ptr noundef %rdev, i32 noundef 8) #8
  %and = and i32 %call, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #8
  %inc = add nuw i32 %i.06, 1
  %5 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %usec_timeout, align 4
  %cmp = icmp ult i32 %inc, %6
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
define dso_local void @rv515_vga_render_disable(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 768
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  %3 = and i32 %2, -769
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %5, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %3) #8, !srcloc !89
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv515_mc_rreg(ptr noundef %rdev, i32 noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mc_idx_lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 22
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mc_idx_lock) #8
  %and = and i32 %reg, 65535
  %or = or i32 %and, 8323072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %0 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %1 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #8, !srcloc !89
  %3 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %4, i32 116
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14) #8, !srcloc !86
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %7 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %8, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 0) #8, !srcloc !89
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mc_idx_lock, i32 noundef %call2) #8
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv515_mc_wreg(ptr noundef %rdev, i32 noundef %reg, i32 noundef %v) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mc_idx_lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 22
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mc_idx_lock) #8
  %and = and i32 %reg, 65535
  %or = or i32 %and, 16711680
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %0 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %1 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #8, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %3 = tail call i32 @llvm.bswap.i32(i32 %v) #8
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %5, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 %3) #8, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %7, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 0) #8, !srcloc !89
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mc_idx_lock, i32 noundef %call2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv515_debugfs(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ddev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %0 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddev, align 4
  %primary = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %primary, align 4
  %debugfs_root = getelementptr inbounds %struct.drm_minor, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debugfs_root, align 4
  %call = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str, i16 noundef zeroext 292, ptr noundef %5, ptr noundef %rdev, ptr noundef nonnull @rv515_debugfs_pipes_info_fops) #8
  %call1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext 292, ptr noundef %5, ptr noundef %rdev, ptr noundef nonnull @rv515_debugfs_ga_info_fops) #8
  tail call void @r100_debugfs_rbbm_init(ptr noundef %rdev) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_debugfs_rbbm_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv515_mc_stop(ptr noundef %rdev, ptr nocapture noundef %save) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 768
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !86
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  %4 = ptrtoint ptr %save to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %save, align 4
  %5 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i181 = getelementptr i8, ptr %6, i32 808
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i181) #8, !srcloc !86
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  %vga_hdp_control = getelementptr inbounds %struct.rv515_mc_save, ptr %save, i32 0, i32 1
  %9 = ptrtoint ptr %vga_hdp_control to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %vga_hdp_control, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %10 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i185 = getelementptr i8, ptr %11, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i185, i32 0) #8, !srcloc !89
  %num_crtc = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 91
  %12 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_crtc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp333 = icmp sgt i32 %13, 0
  br i1 %cmp333, label %for.body.lr.ph, label %entry.for.end47_crit_edge

entry.for.end47_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end47

for.body.lr.ph:                                   ; preds = %entry
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %usec_timeout = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc45.for.body_crit_edge, %for.body.lr.ph
  %i.0334 = phi i32 [ 0, %for.body.lr.ph ], [ %inc46, %for.inc45.for.body_crit_edge ]
  %arrayidx = getelementptr [2 x i32], ptr @crtc_offsets, i32 0, i32 %i.0334
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %add = add i32 %15, 24704
  %16 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %add)
  %cmp.i187 = icmp ugt i32 %17, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add)
  %cmp1.i = icmp ult i32 %add, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i187
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i189 = getelementptr i8, ptr %19, i32 %add
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i189) #8, !srcloc !86
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add) #8
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i ], [ %21, %if.then.i ]
  %and = and i32 %retval.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %arrayidx43 = getelementptr %struct.rv515_mc_save, ptr %save, i32 0, i32 2, i32 %i.0334
  br i1 %tobool.not, label %r100_mm_rreg.exit.for.inc45_crit_edge, label %if.then

r100_mm_rreg.exit.for.inc45_crit_edge:            ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc45

if.then:                                          ; preds = %r100_mm_rreg.exit
  %22 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %arrayidx43, align 1
  %23 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %add)
  %cmp.i191 = icmp ugt i32 %24, %add
  %or.cond.i193 = or i1 %cmp1.i, %cmp.i191
  br i1 %or.cond.i193, label %if.then.i196, label %if.else.i198

if.then.i196:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i195 = getelementptr i8, ptr %26, i32 %add
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i195) #8, !srcloc !86
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  br label %r100_mm_rreg.exit200

if.else.i198:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i197 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add) #8
  br label %r100_mm_rreg.exit200

r100_mm_rreg.exit200:                             ; preds = %if.else.i198, %if.then.i196
  %retval.0.i199 = phi i32 [ %call3.i197, %if.else.i198 ], [ %28, %if.then.i196 ]
  %and8 = and i32 %retval.0.i199, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.then10, label %r100_mm_rreg.exit200.if.end_crit_edge

r100_mm_rreg.exit200.if.end_crit_edge:            ; preds = %r100_mm_rreg.exit200
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then10:                                        ; preds = %r100_mm_rreg.exit200
  %29 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %asic, align 8
  %wait_for_vblank = getelementptr inbounds %struct.radeon_asic, ptr %30, i32 0, i32 16, i32 2
  %31 = ptrtoint ptr %wait_for_vblank to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wait_for_vblank, align 4
  tail call void %32(ptr noundef %rdev, i32 noundef %i.0334) #8
  %add12 = add i32 %15, 24808
  %33 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %add12)
  %cmp.i202 = icmp ugt i32 %34, %add12
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add12)
  %cmp1.i203 = icmp ult i32 %add12, 65536
  %or.cond.i204 = or i1 %cmp1.i203, %cmp.i202
  br i1 %or.cond.i204, label %do.body.i, label %if.else.i207

do.body.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %35 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i206 = getelementptr i8, ptr %36, i32 %add12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i206, i32 16777216) #8, !srcloc !89
  br label %r100_mm_wreg.exit

if.else.i207:                                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add12, i32 noundef 1) #8
  br label %r100_mm_wreg.exit

r100_mm_wreg.exit:                                ; preds = %if.else.i207, %do.body.i
  %or = or i32 %retval.0.i199, 16777216
  %37 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %add)
  %cmp.i209 = icmp ugt i32 %38, %add
  %or.cond.i211 = or i1 %cmp1.i, %cmp.i209
  br i1 %or.cond.i211, label %do.body.i214, label %if.else.i215

do.body.i214:                                     ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %39 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  %40 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i213 = getelementptr i8, ptr %41, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i213, i32 %39) #8, !srcloc !89
  br label %r100_mm_wreg.exit216

if.else.i215:                                     ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef %or) #8
  br label %r100_mm_wreg.exit216

r100_mm_wreg.exit216:                             ; preds = %if.else.i215, %do.body.i214
  %42 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %add12)
  %cmp.i218 = icmp ugt i32 %43, %add12
  %or.cond.i220 = or i1 %cmp1.i203, %cmp.i218
  br i1 %or.cond.i220, label %do.body.i223, label %if.else.i224

do.body.i223:                                     ; preds = %r100_mm_wreg.exit216
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %44 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i222 = getelementptr i8, ptr %45, i32 %add12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i222, i32 0) #8, !srcloc !89
  br label %if.end

if.else.i224:                                     ; preds = %r100_mm_wreg.exit216
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add12, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %if.else.i224, %do.body.i223, %r100_mm_rreg.exit200.if.end_crit_edge
  %46 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %asic, align 8
  %get_vblank_counter = getelementptr inbounds %struct.radeon_asic, ptr %47, i32 0, i32 16, i32 1
  %48 = ptrtoint ptr %get_vblank_counter to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %get_vblank_counter, align 4
  %call19 = tail call i32 %49(ptr noundef %rdev, i32 noundef %i.0334) #8
  %50 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %usec_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp21331 = icmp sgt i32 %51, 0
  br i1 %cmp21331, label %if.end.for.body22_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.for.body22_crit_edge:                      ; preds = %if.end
  br label %for.body22

for.body22:                                       ; preds = %if.end29.for.body22_crit_edge, %if.end.for.body22_crit_edge
  %j.0332 = phi i32 [ %inc, %if.end29.for.body22_crit_edge ], [ 0, %if.end.for.body22_crit_edge ]
  %52 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %asic, align 8
  %get_vblank_counter25 = getelementptr inbounds %struct.radeon_asic, ptr %53, i32 0, i32 16, i32 1
  %54 = ptrtoint ptr %get_vblank_counter25 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %get_vblank_counter25, align 4
  %call26 = tail call i32 %55(ptr noundef %rdev, i32 noundef %i.0334) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call26, i32 %call19)
  %cmp27.not = icmp eq i32 %call26, %call19
  br i1 %cmp27.not, label %if.end29, label %for.body22.for.end_crit_edge

for.body22.for.end_crit_edge:                     ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end29:                                         ; preds = %for.body22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748) #8
  %inc = add nuw nsw i32 %j.0332, 1
  %57 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %usec_timeout, align 4
  %cmp21 = icmp slt i32 %inc, %58
  br i1 %cmp21, label %if.end29.for.body22_crit_edge, label %if.end29.for.end_crit_edge

if.end29.for.end_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end29.for.body22_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body22

for.end:                                          ; preds = %if.end29.for.end_crit_edge, %for.body22.for.end_crit_edge, %if.end.for.end_crit_edge
  %add31 = add i32 %15, 24808
  %59 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %add31)
  %cmp.i227 = icmp ugt i32 %60, %add31
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add31)
  %cmp1.i228 = icmp ult i32 %add31, 65536
  %or.cond.i229 = or i1 %cmp1.i228, %cmp.i227
  br i1 %or.cond.i229, label %do.body.i232, label %if.else.i233

do.body.i232:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %61 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i231 = getelementptr i8, ptr %62, i32 %add31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i231, i32 16777216) #8, !srcloc !89
  br label %r100_mm_wreg.exit234

if.else.i233:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add31, i32 noundef 1) #8
  br label %r100_mm_wreg.exit234

r100_mm_wreg.exit234:                             ; preds = %if.else.i233, %do.body.i232
  %63 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %add)
  %cmp.i236 = icmp ugt i32 %64, %add
  %or.cond.i238 = or i1 %cmp1.i, %cmp.i236
  br i1 %or.cond.i238, label %if.then.i241, label %if.else.i243

if.then.i241:                                     ; preds = %r100_mm_wreg.exit234
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i240 = getelementptr i8, ptr %66, i32 %add
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i240) #8, !srcloc !86
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  br label %r100_mm_rreg.exit245

if.else.i243:                                     ; preds = %r100_mm_wreg.exit234
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i242 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add) #8
  br label %r100_mm_rreg.exit245

r100_mm_rreg.exit245:                             ; preds = %if.else.i243, %if.then.i241
  %retval.0.i244 = phi i32 [ %call3.i242, %if.else.i243 ], [ %68, %if.then.i241 ]
  %and35 = and i32 %retval.0.i244, -2
  %69 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %add)
  %cmp.i247 = icmp ugt i32 %70, %add
  %or.cond.i249 = or i1 %cmp1.i, %cmp.i247
  br i1 %or.cond.i249, label %do.body.i252, label %if.else.i253

do.body.i252:                                     ; preds = %r100_mm_rreg.exit245
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %71 = tail call i32 @llvm.bswap.i32(i32 %and35) #8
  %72 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i251 = getelementptr i8, ptr %73, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i251, i32 %71) #8, !srcloc !89
  br label %r100_mm_wreg.exit254

if.else.i253:                                     ; preds = %r100_mm_rreg.exit245
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef %and35) #8
  br label %r100_mm_wreg.exit254

r100_mm_wreg.exit254:                             ; preds = %if.else.i253, %do.body.i252
  %74 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %add31)
  %cmp.i256 = icmp ugt i32 %75, %add31
  %or.cond.i258 = or i1 %cmp1.i228, %cmp.i256
  br i1 %or.cond.i258, label %do.body.i261, label %if.else.i262

do.body.i261:                                     ; preds = %r100_mm_wreg.exit254
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %76 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i260 = getelementptr i8, ptr %77, i32 %add31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i260, i32 0) #8, !srcloc !89
  br label %for.inc45

if.else.i262:                                     ; preds = %r100_mm_wreg.exit254
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add31, i32 noundef 0) #8
  br label %for.inc45

for.inc45:                                        ; preds = %if.else.i262, %do.body.i261, %r100_mm_rreg.exit.for.inc45_crit_edge
  %78 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %arrayidx43, align 1
  %inc46 = add nuw nsw i32 %i.0334, 1
  %79 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %num_crtc, align 4
  %cmp = icmp slt i32 %inc46, %80
  br i1 %cmp, label %for.inc45.for.body_crit_edge, label %for.inc45.for.end47_crit_edge

for.inc45.for.end47_crit_edge:                    ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end47

for.inc45.for.body_crit_edge:                     ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end47:                                        ; preds = %for.inc45.for.end47_crit_edge, %entry.for.end47_crit_edge
  %asic48 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %81 = ptrtoint ptr %asic48 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %asic48, align 8
  %mc_wait_for_idle = getelementptr inbounds %struct.radeon_asic, ptr %82, i32 0, i32 8
  %83 = ptrtoint ptr %mc_wait_for_idle to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mc_wait_for_idle, align 4
  %call49 = tail call i32 %84(ptr noundef %rdev) #8
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %85 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %86)
  %cmp50 = icmp ugt i32 %86, 26
  br i1 %cmp50, label %if.then51, label %for.end47.if.end69_crit_edge

for.end47.if.end69_crit_edge:                     ; preds = %for.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then51:                                        ; preds = %for.end47
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %86)
  %cmp53 = icmp ugt i32 %86, 34
  %87 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %rmmio.i, align 4
  br i1 %cmp53, label %if.then54, label %if.else56

if.then54:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i267 = getelementptr i8, ptr %88, i32 9664
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i267) #8, !srcloc !86
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  br label %if.end58

if.else56:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i273 = getelementptr i8, ptr %88, i32 8204
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i273) #8, !srcloc !86
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  br label %if.end58

if.end58:                                         ; preds = %if.else56, %if.then54
  %blackout.0 = phi i32 [ %90, %if.then54 ], [ %92, %if.else56 ]
  %and59 = and i32 %blackout.0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and59)
  %cmp60.not = icmp eq i32 %and59, 3
  br i1 %cmp60.not, label %if.end58.if.end69_crit_edge, label %if.then61

if.end58.if.end69_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then61:                                        ; preds = %if.end58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %93 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i279 = getelementptr i8, ptr %94, i32 21648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i279, i32 0) #8, !srcloc !89
  %or62 = or i32 %blackout.0, 3
  %95 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %96)
  %cmp64 = icmp ugt i32 %96, 34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %97 = tail call i32 @llvm.bswap.i32(i32 %or62) #8
  %98 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %rmmio.i, align 4
  br i1 %cmp64, label %if.then65, label %if.else66

if.then65:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i284 = getelementptr i8, ptr %99, i32 9664
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i284, i32 %97) #8, !srcloc !89
  br label %if.end69

if.else66:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i289 = getelementptr i8, ptr %99, i32 8204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i289, i32 %97) #8, !srcloc !89
  br label %if.end69

if.end69:                                         ; preds = %if.else66, %if.then65, %if.end58.if.end69_crit_edge, %for.end47.if.end69_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %100 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %100(i32 noundef 21474800) #8
  %101 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %num_crtc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp72337 = icmp sgt i32 %102, 0
  br i1 %cmp72337, label %if.end69.for.body73_crit_edge, label %if.end69.for.end101_crit_edge

if.end69.for.end101_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end101

if.end69.for.body73_crit_edge:                    ; preds = %if.end69
  br label %for.body73

for.body73:                                       ; preds = %for.inc99.for.body73_crit_edge, %if.end69.for.body73_crit_edge
  %i.1338 = phi i32 [ %inc100, %for.inc99.for.body73_crit_edge ], [ 0, %if.end69.for.body73_crit_edge ]
  %arrayidx75 = getelementptr %struct.rv515_mc_save, ptr %save, i32 0, i32 2, i32 %i.1338
  %103 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx75, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool76.not = icmp eq i8 %104, 0
  br i1 %tobool76.not, label %for.body73.for.inc99_crit_edge, label %if.then77

for.body73.for.inc99_crit_edge:                   ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc99

if.then77:                                        ; preds = %for.body73
  %arrayidx78 = getelementptr [2 x i32], ptr @crtc_offsets, i32 0, i32 %i.1338
  %105 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx78, align 4
  %add79 = add i32 %106, 24900
  %107 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %108, i32 %add79)
  %cmp.i292 = icmp ugt i32 %108, %add79
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add79)
  %cmp1.i293 = icmp ult i32 %add79, 65536
  %or.cond.i294 = or i1 %cmp1.i293, %cmp.i292
  br i1 %or.cond.i294, label %if.then.i297, label %if.else.i299

if.then.i297:                                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  %109 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i296 = getelementptr i8, ptr %110, i32 %add79
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i296) #8, !srcloc !86
  %112 = tail call i32 @llvm.bswap.i32(i32 %111) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  br label %r100_mm_rreg.exit301

if.else.i299:                                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i298 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add79) #8
  br label %r100_mm_rreg.exit301

r100_mm_rreg.exit301:                             ; preds = %if.else.i299, %if.then.i297
  %retval.0.i300 = phi i32 [ %call3.i298, %if.else.i299 ], [ %112, %if.then.i297 ]
  %and81 = and i32 %retval.0.i300, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %if.then83, label %r100_mm_rreg.exit301.if.end87_crit_edge

r100_mm_rreg.exit301.if.end87_crit_edge:          ; preds = %r100_mm_rreg.exit301
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.then83:                                        ; preds = %r100_mm_rreg.exit301
  %or84 = or i32 %retval.0.i300, 65536
  %113 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %114, i32 %add79)
  %cmp.i303 = icmp ugt i32 %114, %add79
  %or.cond.i305 = or i1 %cmp1.i293, %cmp.i303
  br i1 %or.cond.i305, label %do.body.i308, label %if.else.i309

do.body.i308:                                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %115 = tail call i32 @llvm.bswap.i32(i32 %or84) #8
  %116 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i307 = getelementptr i8, ptr %117, i32 %add79
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i307, i32 %115) #8, !srcloc !89
  br label %if.end87

if.else.i309:                                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add79, i32 noundef %or84) #8
  br label %if.end87

if.end87:                                         ; preds = %if.else.i309, %do.body.i308, %r100_mm_rreg.exit301.if.end87_crit_edge
  %add89 = add i32 %106, 24800
  %118 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %119, i32 %add89)
  %cmp.i312 = icmp ugt i32 %119, %add89
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add89)
  %cmp1.i313 = icmp ult i32 %add89, 65536
  %or.cond.i314 = or i1 %cmp1.i313, %cmp.i312
  br i1 %or.cond.i314, label %if.then.i317, label %if.else.i319

if.then.i317:                                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  %120 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i316 = getelementptr i8, ptr %121, i32 %add89
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i316) #8, !srcloc !86
  %123 = tail call i32 @llvm.bswap.i32(i32 %122) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  br label %r100_mm_rreg.exit321

if.else.i319:                                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i318 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add89) #8
  br label %r100_mm_rreg.exit321

r100_mm_rreg.exit321:                             ; preds = %if.else.i319, %if.then.i317
  %retval.0.i320 = phi i32 [ %call3.i318, %if.else.i319 ], [ %123, %if.then.i317 ]
  %and91 = and i32 %retval.0.i320, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.then93, label %r100_mm_rreg.exit321.for.inc99_crit_edge

r100_mm_rreg.exit321.for.inc99_crit_edge:         ; preds = %r100_mm_rreg.exit321
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc99

if.then93:                                        ; preds = %r100_mm_rreg.exit321
  %or94 = or i32 %retval.0.i320, 1
  %124 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %125, i32 %add89)
  %cmp.i323 = icmp ugt i32 %125, %add89
  %or.cond.i325 = or i1 %cmp1.i313, %cmp.i323
  br i1 %or.cond.i325, label %do.body.i328, label %if.else.i329

do.body.i328:                                     ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %126 = tail call i32 @llvm.bswap.i32(i32 %or94) #8
  %127 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i327 = getelementptr i8, ptr %128, i32 %add89
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i327, i32 %126) #8, !srcloc !89
  br label %for.inc99

if.else.i329:                                     ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add89, i32 noundef %or94) #8
  br label %for.inc99

for.inc99:                                        ; preds = %if.else.i329, %do.body.i328, %r100_mm_rreg.exit321.for.inc99_crit_edge, %for.body73.for.inc99_crit_edge
  %inc100 = add nuw nsw i32 %i.1338, 1
  %129 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %num_crtc, align 4
  %cmp72 = icmp slt i32 %inc100, %130
  br i1 %cmp72, label %for.inc99.for.body73_crit_edge, label %for.inc99.for.end101_crit_edge

for.inc99.for.end101_crit_edge:                   ; preds = %for.inc99
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end101

for.inc99.for.body73_crit_edge:                   ; preds = %for.inc99
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body73

for.end101:                                       ; preds = %for.inc99.for.end101_crit_edge, %if.end69.for.end101_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv515_mc_resume(ptr noundef %rdev, ptr nocapture noundef readonly %save) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %num_crtc = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 91
  %0 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_crtc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp381 = icmp sgt i32 %1, 0
  br i1 %cmp381, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %vram_start11 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 8
  %rmmio.i233 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %rmmio_size.i239 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %r100_mm_wreg.exit251.for.body_crit_edge, %for.body.lr.ph
  %i.0382 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %r100_mm_wreg.exit251.for.body_crit_edge ]
  %2 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %3)
  %cmp1 = icmp ugt i32 %3, 34
  br i1 %cmp1, label %if.then, label %for.body.if.end20_crit_edge

for.body.if.end20_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0382)
  %cmp2 = icmp eq i32 %i.0382, 0
  %4 = ptrtoint ptr %vram_start11 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %vram_start11, align 8
  %shr = lshr i64 %5, 32
  %conv = trunc i64 %shr to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %6 = tail call i32 @llvm.bswap.i32(i32 %conv) #8
  %7 = ptrtoint ptr %rmmio.i233 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmmio.i233, align 4
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %8, i32 26900
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #8, !srcloc !89
  %9 = ptrtoint ptr %vram_start11 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %vram_start11, align 8
  %shr7 = lshr i64 %10, 32
  %conv9 = trunc i64 %shr7 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %11 = tail call i32 @llvm.bswap.i32(i32 %conv9) #8
  %12 = ptrtoint ptr %rmmio.i233 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i233, align 4
  %add.ptr.i230 = getelementptr i8, ptr %13, i32 26908
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i230, i32 %11) #8, !srcloc !89
  br label %if.end20

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i234 = getelementptr i8, ptr %8, i32 24852
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i234, i32 %6) #8, !srcloc !89
  %14 = ptrtoint ptr %vram_start11 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %vram_start11, align 8
  %shr17 = lshr i64 %15, 32
  %conv19 = trunc i64 %shr17 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %16 = tail call i32 @llvm.bswap.i32(i32 %conv19) #8
  %17 = ptrtoint ptr %rmmio.i233 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmmio.i233, align 4
  %add.ptr.i238 = getelementptr i8, ptr %18, i32 24860
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i238, i32 %16) #8, !srcloc !89
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then3, %for.body.if.end20_crit_edge
  %arrayidx = getelementptr [2 x i32], ptr @crtc_offsets, i32 0, i32 %i.0382
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %add = add i32 %20, 24848
  %21 = ptrtoint ptr %vram_start11 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %vram_start11, align 8
  %conv23 = trunc i64 %22 to i32
  %23 = ptrtoint ptr %rmmio_size.i239 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rmmio_size.i239, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %add)
  %cmp.i240 = icmp ugt i32 %24, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add)
  %cmp1.i = icmp ult i32 %add, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i240
  br i1 %or.cond.i, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %25 = tail call i32 @llvm.bswap.i32(i32 %conv23) #8
  %26 = ptrtoint ptr %rmmio.i233 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmmio.i233, align 4
  %add.ptr.i242 = getelementptr i8, ptr %27, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i242, i32 %25) #8, !srcloc !89
  br label %r100_mm_wreg.exit

if.else.i:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef %conv23) #8
  br label %r100_mm_wreg.exit

r100_mm_wreg.exit:                                ; preds = %if.else.i, %do.body.i
  %add25 = add i32 %20, 24856
  %28 = ptrtoint ptr %vram_start11 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %vram_start11, align 8
  %conv28 = trunc i64 %29 to i32
  %30 = ptrtoint ptr %rmmio_size.i239 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rmmio_size.i239, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %add25)
  %cmp.i244 = icmp ugt i32 %31, %add25
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add25)
  %cmp1.i245 = icmp ult i32 %add25, 65536
  %or.cond.i246 = or i1 %cmp1.i245, %cmp.i244
  br i1 %or.cond.i246, label %do.body.i249, label %if.else.i250

do.body.i249:                                     ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %32 = tail call i32 @llvm.bswap.i32(i32 %conv28) #8
  %33 = ptrtoint ptr %rmmio.i233 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rmmio.i233, align 4
  %add.ptr.i248 = getelementptr i8, ptr %34, i32 %add25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i248, i32 %32) #8, !srcloc !89
  br label %r100_mm_wreg.exit251

if.else.i250:                                     ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add25, i32 noundef %conv28) #8
  br label %r100_mm_wreg.exit251

r100_mm_wreg.exit251:                             ; preds = %if.else.i250, %do.body.i249
  %inc = add nuw nsw i32 %i.0382, 1
  %35 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_crtc, align 4
  %cmp = icmp slt i32 %inc, %36
  br i1 %cmp, label %r100_mm_wreg.exit251.for.body_crit_edge, label %r100_mm_wreg.exit251.for.end_crit_edge

r100_mm_wreg.exit251.for.end_crit_edge:           ; preds = %r100_mm_wreg.exit251
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

r100_mm_wreg.exit251.for.body_crit_edge:          ; preds = %r100_mm_wreg.exit251
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %r100_mm_wreg.exit251.for.end_crit_edge, %entry.for.end_crit_edge
  %vram_start30 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 8
  %37 = ptrtoint ptr %vram_start30 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %vram_start30, align 8
  %conv31 = trunc i64 %38 to i32
  %rmmio_size.i252 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %39 = tail call i32 @llvm.bswap.i32(i32 %conv31) #8
  %rmmio.i254 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %40 = ptrtoint ptr %rmmio.i254 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rmmio.i254, align 4
  %add.ptr.i255 = getelementptr i8, ptr %41, i32 784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i255, i32 %39) #8, !srcloc !89
  %42 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_crtc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp34386 = icmp sgt i32 %43, 0
  br i1 %cmp34386, label %for.body36.lr.ph, label %for.end.for.end86_crit_edge

for.end.for.end86_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end86

for.body36.lr.ph:                                 ; preds = %for.end
  %usec_timeout = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  br label %for.body36

for.body36:                                       ; preds = %for.inc84.for.body36_crit_edge, %for.body36.lr.ph
  %i.1387 = phi i32 [ 0, %for.body36.lr.ph ], [ %inc85, %for.inc84.for.body36_crit_edge ]
  %arrayidx37 = getelementptr %struct.rv515_mc_save, ptr %save, i32 0, i32 2, i32 %i.1387
  %44 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx37, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not = icmp eq i8 %45, 0
  br i1 %tobool.not, label %for.body36.for.inc84_crit_edge, label %if.then38

for.body36.for.inc84_crit_edge:                   ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc84

if.then38:                                        ; preds = %for.body36
  %arrayidx39 = getelementptr [2 x i32], ptr @crtc_offsets, i32 0, i32 %i.1387
  %46 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx39, align 4
  %add40 = add i32 %47, 24804
  %48 = ptrtoint ptr %rmmio_size.i252 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rmmio_size.i252, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %add40)
  %cmp.i258 = icmp ugt i32 %49, %add40
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add40)
  %cmp1.i259 = icmp ult i32 %add40, 65536
  %or.cond.i260 = or i1 %cmp1.i259, %cmp.i258
  br i1 %or.cond.i260, label %if.then.i, label %if.else.i263

if.then.i:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %rmmio.i254 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rmmio.i254, align 4
  %add.ptr.i262 = getelementptr i8, ptr %51, i32 %add40
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i262) #8, !srcloc !86
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  br label %r100_mm_rreg.exit

if.else.i263:                                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add40) #8
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i263, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i263 ], [ %53, %if.then.i ]
  %and = and i32 %retval.0.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp41.not = icmp eq i32 %and, 3
  br i1 %cmp41.not, label %r100_mm_rreg.exit.if.end47_crit_edge, label %if.then43

r100_mm_rreg.exit.if.end47_crit_edge:             ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then43:                                        ; preds = %r100_mm_rreg.exit
  %and44 = and i32 %retval.0.i, -8
  %or = or i32 %and44, 3
  %54 = ptrtoint ptr %rmmio_size.i252 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rmmio_size.i252, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %add40)
  %cmp.i265 = icmp ugt i32 %55, %add40
  %or.cond.i267 = or i1 %cmp1.i259, %cmp.i265
  br i1 %or.cond.i267, label %do.body.i270, label %if.else.i271

do.body.i270:                                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %56 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  %57 = ptrtoint ptr %rmmio.i254 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rmmio.i254, align 4
  %add.ptr.i269 = getelementptr i8, ptr %58, i32 %add40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i269, i32 %56) #8, !srcloc !89
  br label %if.end47

if.else.i271:                                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add40, i32 noundef %or) #8
  br label %if.end47

if.end47:                                         ; preds = %if.else.i271, %do.body.i270, %r100_mm_rreg.exit.if.end47_crit_edge
  %add49 = add i32 %47, 24900
  %59 = ptrtoint ptr %rmmio_size.i252 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rmmio_size.i252, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %add49)
  %cmp.i274 = icmp ugt i32 %60, %add49
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add49)
  %cmp1.i275 = icmp ult i32 %add49, 65536
  %or.cond.i276 = or i1 %cmp1.i275, %cmp.i274
  br i1 %or.cond.i276, label %if.then.i279, label %if.else.i281

if.then.i279:                                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %rmmio.i254 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rmmio.i254, align 4
  %add.ptr.i278 = getelementptr i8, ptr %62, i32 %add49
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i278) #8, !srcloc !86
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  br label %r100_mm_rreg.exit283

if.else.i281:                                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i280 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add49) #8
  br label %r100_mm_rreg.exit283

r100_mm_rreg.exit283:                             ; preds = %if.else.i281, %if.then.i279
  %retval.0.i282 = phi i32 [ %call3.i280, %if.else.i281 ], [ %64, %if.then.i279 ]
  %and51 = and i32 %retval.0.i282, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %r100_mm_rreg.exit283.if.end57_crit_edge, label %if.then53

r100_mm_rreg.exit283.if.end57_crit_edge:          ; preds = %r100_mm_rreg.exit283
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then53:                                        ; preds = %r100_mm_rreg.exit283
  %and54 = and i32 %retval.0.i282, -65537
  %65 = ptrtoint ptr %rmmio_size.i252 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rmmio_size.i252, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %add49)
  %cmp.i285 = icmp ugt i32 %66, %add49
  %or.cond.i287 = or i1 %cmp1.i275, %cmp.i285
  br i1 %or.cond.i287, label %do.body.i290, label %if.else.i291

do.body.i290:                                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %67 = tail call i32 @llvm.bswap.i32(i32 %and54) #8
  %68 = ptrtoint ptr %rmmio.i254 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rmmio.i254, align 4
  %add.ptr.i289 = getelementptr i8, ptr %69, i32 %add49
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i289, i32 %67) #8, !srcloc !89
  br label %if.end57

if.else.i291:                                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add49, i32 noundef %and54) #8
  br label %if.end57

if.end57:                                         ; preds = %if.else.i291, %do.body.i290, %r100_mm_rreg.exit283.if.end57_crit_edge
  %add59 = add i32 %47, 24800
  %70 = ptrtoint ptr %rmmio_size.i252 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rmmio_size.i252, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %add59)
  %cmp.i294 = icmp ugt i32 %71, %add59
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add59)
  %cmp1.i295 = icmp ult i32 %add59, 65536
  %or.cond.i296 = or i1 %cmp1.i295, %cmp.i294
  br i1 %or.cond.i296, label %if.then.i299, label %if.else.i301

if.then.i299:                                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %rmmio.i254 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rmmio.i254, align 4
  %add.ptr.i298 = getelementptr i8, ptr %73, i32 %add59
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i298) #8, !srcloc !86
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  br label %r100_mm_rreg.exit303

if.else.i301:                                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i300 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add59) #8
  br label %r100_mm_rreg.exit303

r100_mm_rreg.exit303:                             ; preds = %if.else.i301, %if.then.i299
  %retval.0.i302 = phi i32 [ %call3.i300, %if.else.i301 ], [ %75, %if.then.i299 ]
  %and61 = and i32 %retval.0.i302, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %r100_mm_rreg.exit303.if.end67_crit_edge, label %if.then63

r100_mm_rreg.exit303.if.end67_crit_edge:          ; preds = %r100_mm_rreg.exit303
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then63:                                        ; preds = %r100_mm_rreg.exit303
  %and64 = and i32 %retval.0.i302, -2
  %76 = ptrtoint ptr %rmmio_size.i252 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %rmmio_size.i252, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %add59)
  %cmp.i305 = icmp ugt i32 %77, %add59
  %or.cond.i307 = or i1 %cmp1.i295, %cmp.i305
  br i1 %or.cond.i307, label %do.body.i310, label %if.else.i311

do.body.i310:                                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %78 = tail call i32 @llvm.bswap.i32(i32 %and64) #8
  %79 = ptrtoint ptr %rmmio.i254 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rmmio.i254, align 4
  %add.ptr.i309 = getelementptr i8, ptr %80, i32 %add59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i309, i32 %78) #8, !srcloc !89
  br label %if.end67

if.else.i311:                                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add59, i32 noundef %and64) #8
  br label %if.end67

if.end67:                                         ; preds = %if.else.i311, %do.body.i310, %r100_mm_rreg.exit303.if.end67_crit_edge
  %81 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %usec_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp69384 = icmp sgt i32 %82, 0
  br i1 %cmp69384, label %if.end67.for.body71_crit_edge, label %if.end67.for.inc84_crit_edge

if.end67.for.inc84_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc84

if.end67.for.body71_crit_edge:                    ; preds = %if.end67
  br label %for.body71

for.body71:                                       ; preds = %if.end79.for.body71_crit_edge, %if.end67.for.body71_crit_edge
  %j.0385 = phi i32 [ %inc81, %if.end79.for.body71_crit_edge ], [ 0, %if.end67.for.body71_crit_edge ]
  %83 = ptrtoint ptr %rmmio_size.i252 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %rmmio_size.i252, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %add49)
  %cmp.i314 = icmp ugt i32 %84, %add49
  %or.cond.i316 = or i1 %cmp1.i275, %cmp.i314
  br i1 %or.cond.i316, label %if.then.i319, label %if.else.i321

if.then.i319:                                     ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #10
  %85 = ptrtoint ptr %rmmio.i254 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %rmmio.i254, align 4
  %add.ptr.i318 = getelementptr i8, ptr %86, i32 %add49
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i318) #8, !srcloc !86
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  br label %r100_mm_rreg.exit323

if.else.i321:                                     ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i320 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add49) #8
  br label %r100_mm_rreg.exit323

r100_mm_rreg.exit323:                             ; preds = %if.else.i321, %if.then.i319
  %retval.0.i322 = phi i32 [ %call3.i320, %if.else.i321 ], [ %88, %if.then.i319 ]
  %and75 = and i32 %retval.0.i322, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %cmp76 = icmp eq i32 %and75, 0
  br i1 %cmp76, label %r100_mm_rreg.exit323.for.inc84_crit_edge, label %if.end79

r100_mm_rreg.exit323.for.inc84_crit_edge:         ; preds = %r100_mm_rreg.exit323
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc84

if.end79:                                         ; preds = %r100_mm_rreg.exit323
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %89(i32 noundef 214748) #8
  %inc81 = add nuw nsw i32 %j.0385, 1
  %90 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %usec_timeout, align 4
  %cmp69 = icmp slt i32 %inc81, %91
  br i1 %cmp69, label %if.end79.for.body71_crit_edge, label %if.end79.for.inc84_crit_edge

if.end79.for.inc84_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc84

if.end79.for.body71_crit_edge:                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body71

for.inc84:                                        ; preds = %if.end79.for.inc84_crit_edge, %r100_mm_rreg.exit323.for.inc84_crit_edge, %if.end67.for.inc84_crit_edge, %for.body36.for.inc84_crit_edge
  %inc85 = add nuw nsw i32 %i.1387, 1
  %92 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %num_crtc, align 4
  %cmp34 = icmp slt i32 %inc85, %93
  br i1 %cmp34, label %for.inc84.for.body36_crit_edge, label %for.inc84.for.end86_crit_edge

for.inc84.for.end86_crit_edge:                    ; preds = %for.inc84
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end86

for.inc84.for.body36_crit_edge:                   ; preds = %for.inc84
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body36

for.end86:                                        ; preds = %for.inc84.for.end86_crit_edge, %for.end.for.end86_crit_edge
  %family87 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %94 = ptrtoint ptr %family87 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %family87, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %95)
  %cmp88 = icmp ugt i32 %95, 26
  br i1 %cmp88, label %if.then90, label %for.end86.if.end106_crit_edge

for.end86.if.end106_crit_edge:                    ; preds = %for.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end106

if.then90:                                        ; preds = %for.end86
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %95)
  %cmp92 = icmp ugt i32 %95, 34
  %96 = ptrtoint ptr %rmmio.i254 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rmmio.i254, align 4
  br i1 %cmp92, label %if.then94, label %if.else96

if.then94:                                        ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i327 = getelementptr i8, ptr %97, i32 9664
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i327) #8, !srcloc !86
  %99 = tail call i32 @llvm.bswap.i32(i32 %98) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  br label %if.end98

if.else96:                                        ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i333 = getelementptr i8, ptr %97, i32 8204
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i333) #8, !srcloc !86
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  br label %if.end98

if.end98:                                         ; preds = %if.else96, %if.then94
  %tmp.0 = phi i32 [ %99, %if.then94 ], [ %101, %if.else96 ]
  %and99 = and i32 %tmp.0, -4
  %102 = ptrtoint ptr %family87 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %family87, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %103)
  %cmp101 = icmp ugt i32 %103, 34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %104 = tail call i32 @llvm.bswap.i32(i32 %and99) #8
  %105 = ptrtoint ptr %rmmio.i254 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %rmmio.i254, align 4
  br i1 %cmp101, label %if.then103, label %if.else104

if.then103:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i339 = getelementptr i8, ptr %106, i32 9664
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i339, i32 %104) #8, !srcloc !89
  br label %if.end105

if.else104:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i344 = getelementptr i8, ptr %106, i32 8204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i344, i32 %104) #8, !srcloc !89
  br label %if.end105

if.end105:                                        ; preds = %if.else104, %if.then103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %107 = ptrtoint ptr %rmmio.i254 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %rmmio.i254, align 4
  %add.ptr.i349 = getelementptr i8, ptr %108, i32 21648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i349, i32 50331648) #8, !srcloc !89
  br label %if.end106

if.end106:                                        ; preds = %if.end105, %for.end86.if.end106_crit_edge
  %109 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %num_crtc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp109391 = icmp sgt i32 %110, 0
  br i1 %cmp109391, label %for.body111.lr.ph, label %if.end106.for.end142_crit_edge

if.end106.for.end142_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end142

for.body111.lr.ph:                                ; preds = %if.end106
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %usec_timeout124 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  br label %for.body111

for.body111:                                      ; preds = %for.inc140.for.body111_crit_edge, %for.body111.lr.ph
  %i.2392 = phi i32 [ 0, %for.body111.lr.ph ], [ %inc141, %for.inc140.for.body111_crit_edge ]
  %arrayidx113 = getelementptr %struct.rv515_mc_save, ptr %save, i32 0, i32 2, i32 %i.2392
  %111 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx113, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool114.not = icmp eq i8 %112, 0
  br i1 %tobool114.not, label %for.body111.for.inc140_crit_edge, label %if.then115

for.body111.for.inc140_crit_edge:                 ; preds = %for.body111
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc140

if.then115:                                       ; preds = %for.body111
  %arrayidx116 = getelementptr [2 x i32], ptr @crtc_offsets, i32 0, i32 %i.2392
  %113 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx116, align 4
  %add117 = add i32 %114, 24704
  %115 = ptrtoint ptr %rmmio_size.i252 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %rmmio_size.i252, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %116, i32 %add117)
  %cmp.i352 = icmp ugt i32 %116, %add117
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add117)
  %cmp1.i353 = icmp ult i32 %add117, 65536
  %or.cond.i354 = or i1 %cmp1.i353, %cmp.i352
  br i1 %or.cond.i354, label %if.then.i357, label %if.else.i359

if.then.i357:                                     ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #10
  %117 = ptrtoint ptr %rmmio.i254 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %rmmio.i254, align 4
  %add.ptr.i356 = getelementptr i8, ptr %118, i32 %add117
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i356) #8, !srcloc !86
  %120 = tail call i32 @llvm.bswap.i32(i32 %119) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  br label %r100_mm_rreg.exit361

if.else.i359:                                     ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i358 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add117) #8
  br label %r100_mm_rreg.exit361

r100_mm_rreg.exit361:                             ; preds = %if.else.i359, %if.then.i357
  %retval.0.i360 = phi i32 [ %call3.i358, %if.else.i359 ], [ %120, %if.then.i357 ]
  %and119 = and i32 %retval.0.i360, -16777217
  %121 = ptrtoint ptr %rmmio_size.i252 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %rmmio_size.i252, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %122, i32 %add117)
  %cmp.i363 = icmp ugt i32 %122, %add117
  %or.cond.i365 = or i1 %cmp1.i353, %cmp.i363
  br i1 %or.cond.i365, label %do.body.i368, label %if.else.i369

do.body.i368:                                     ; preds = %r100_mm_rreg.exit361
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %123 = tail call i32 @llvm.bswap.i32(i32 %and119) #8
  %124 = ptrtoint ptr %rmmio.i254 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %rmmio.i254, align 4
  %add.ptr.i367 = getelementptr i8, ptr %125, i32 %add117
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i367, i32 %123) #8, !srcloc !89
  br label %r100_mm_wreg.exit370

if.else.i369:                                     ; preds = %r100_mm_rreg.exit361
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add117, i32 noundef %and119) #8
  br label %r100_mm_wreg.exit370

r100_mm_wreg.exit370:                             ; preds = %if.else.i369, %do.body.i368
  %126 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %asic, align 8
  %get_vblank_counter = getelementptr inbounds %struct.radeon_asic, ptr %127, i32 0, i32 16, i32 1
  %128 = ptrtoint ptr %get_vblank_counter to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %get_vblank_counter, align 4
  %call122 = tail call i32 %129(ptr noundef %rdev, i32 noundef %i.2392) #8
  %130 = ptrtoint ptr %usec_timeout124 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %usec_timeout124, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %cmp125389 = icmp sgt i32 %131, 0
  br i1 %cmp125389, label %r100_mm_wreg.exit370.for.body127_crit_edge, label %r100_mm_wreg.exit370.for.inc140_crit_edge

r100_mm_wreg.exit370.for.inc140_crit_edge:        ; preds = %r100_mm_wreg.exit370
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc140

r100_mm_wreg.exit370.for.body127_crit_edge:       ; preds = %r100_mm_wreg.exit370
  br label %for.body127

for.body127:                                      ; preds = %if.end135.for.body127_crit_edge, %r100_mm_wreg.exit370.for.body127_crit_edge
  %j.1390 = phi i32 [ %inc137, %if.end135.for.body127_crit_edge ], [ 0, %r100_mm_wreg.exit370.for.body127_crit_edge ]
  %132 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %asic, align 8
  %get_vblank_counter130 = getelementptr inbounds %struct.radeon_asic, ptr %133, i32 0, i32 16, i32 1
  %134 = ptrtoint ptr %get_vblank_counter130 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %get_vblank_counter130, align 4
  %call131 = tail call i32 %135(ptr noundef %rdev, i32 noundef %i.2392) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call131, i32 %call122)
  %cmp132.not = icmp eq i32 %call131, %call122
  br i1 %cmp132.not, label %if.end135, label %for.body127.for.inc140_crit_edge

for.body127.for.inc140_crit_edge:                 ; preds = %for.body127
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc140

if.end135:                                        ; preds = %for.body127
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %136 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %136(i32 noundef 214748) #8
  %inc137 = add nuw nsw i32 %j.1390, 1
  %137 = ptrtoint ptr %usec_timeout124 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %usec_timeout124, align 4
  %cmp125 = icmp slt i32 %inc137, %138
  br i1 %cmp125, label %if.end135.for.body127_crit_edge, label %if.end135.for.inc140_crit_edge

if.end135.for.inc140_crit_edge:                   ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc140

if.end135.for.body127_crit_edge:                  ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body127

for.inc140:                                       ; preds = %if.end135.for.inc140_crit_edge, %for.body127.for.inc140_crit_edge, %r100_mm_wreg.exit370.for.inc140_crit_edge, %for.body111.for.inc140_crit_edge
  %inc141 = add nuw nsw i32 %i.2392, 1
  %139 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %num_crtc, align 4
  %cmp109 = icmp slt i32 %inc141, %140
  br i1 %cmp109, label %for.inc140.for.body111_crit_edge, label %for.inc140.for.end142_crit_edge

for.inc140.for.end142_crit_edge:                  ; preds = %for.inc140
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end142

for.inc140.for.body111_crit_edge:                 ; preds = %for.inc140
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body111

for.end142:                                       ; preds = %for.inc140.for.end142_crit_edge, %if.end106.for.end142_crit_edge
  %vga_hdp_control = getelementptr inbounds %struct.rv515_mc_save, ptr %save, i32 0, i32 1
  %141 = ptrtoint ptr %vga_hdp_control to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %vga_hdp_control, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %143 = tail call i32 @llvm.bswap.i32(i32 %142) #8
  %144 = ptrtoint ptr %rmmio.i254 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %rmmio.i254, align 4
  %add.ptr.i374 = getelementptr i8, ptr %145, i32 808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i374, i32 %143) #8, !srcloc !89
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %146 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %146(i32 noundef 214748000) #8
  %147 = ptrtoint ptr %save to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %save, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %149 = tail call i32 @llvm.bswap.i32(i32 %148) #8
  %150 = ptrtoint ptr %rmmio.i254 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %rmmio.i254, align 4
  %add.ptr.i379 = getelementptr i8, ptr %151, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i379, i32 %149) #8, !srcloc !89
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv515_clock_startup(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_dynclks to i32))
  %0 = load i32, ptr @radeon_dynclks, align 4
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %0, label %if.then [
    i32 -1, label %entry.if.end_crit_edge
    i32 0, label %entry.if.end_crit_edge21
  ]

entry.if.end_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_atom_set_clock_gating(ptr noundef %rdev, i32 noundef 1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge, %entry.if.end_crit_edge21
  %pll_wreg = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 35
  %2 = ptrtoint ptr %pll_wreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pll_wreg, align 4
  %pll_rreg = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 34
  %4 = ptrtoint ptr %pll_rreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pll_rreg, align 8
  %call = tail call i32 %5(ptr noundef %rdev, i32 noundef 15) #8
  %or = or i32 %call, 1
  tail call void %3(ptr noundef %rdev, i32 noundef 15, i32 noundef %or) #8
  %6 = ptrtoint ptr %pll_wreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pll_wreg, align 4
  %8 = ptrtoint ptr %pll_rreg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pll_rreg, align 8
  %call3 = tail call i32 %9(ptr noundef %rdev, i32 noundef 17) #8
  %or4 = or i32 %call3, 1
  tail call void %7(ptr noundef %rdev, i32 noundef 17, i32 noundef %or4) #8
  %10 = ptrtoint ptr %pll_wreg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pll_wreg, align 4
  %12 = ptrtoint ptr %pll_rreg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pll_rreg, align 8
  %call7 = tail call i32 %13(ptr noundef %rdev, i32 noundef 19) #8
  %or8 = or i32 %call7, 1
  tail call void %11(ptr noundef %rdev, i32 noundef 19, i32 noundef %or8) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_atom_set_clock_gating(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv515_resume(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
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
  tail call void @rv370_pcie_gart_disable(ptr noundef %rdev) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_dynclks to i32))
  %2 = load i32, ptr @radeon_dynclks, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %2, label %if.then.i [
    i32 -1, label %if.end.rv515_clock_startup.exit_crit_edge
    i32 0, label %if.end.rv515_clock_startup.exit_crit_edge42
  ]

if.end.rv515_clock_startup.exit_crit_edge42:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rv515_clock_startup.exit

if.end.rv515_clock_startup.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rv515_clock_startup.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_atom_set_clock_gating(ptr noundef %rdev, i32 noundef 1) #8
  br label %rv515_clock_startup.exit

rv515_clock_startup.exit:                         ; preds = %if.then.i, %if.end.rv515_clock_startup.exit_crit_edge, %if.end.rv515_clock_startup.exit_crit_edge42
  %pll_wreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 35
  %4 = ptrtoint ptr %pll_wreg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pll_wreg.i, align 4
  %pll_rreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 34
  %6 = ptrtoint ptr %pll_rreg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pll_rreg.i, align 8
  %call.i = tail call i32 %7(ptr noundef %rdev, i32 noundef 15) #8
  %or.i = or i32 %call.i, 1
  tail call void %5(ptr noundef %rdev, i32 noundef 15, i32 noundef %or.i) #8
  %8 = ptrtoint ptr %pll_wreg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pll_wreg.i, align 4
  %10 = ptrtoint ptr %pll_rreg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pll_rreg.i, align 8
  %call3.i = tail call i32 %11(ptr noundef %rdev, i32 noundef 17) #8
  %or4.i = or i32 %call3.i, 1
  tail call void %9(ptr noundef %rdev, i32 noundef 17, i32 noundef %or4.i) #8
  %12 = ptrtoint ptr %pll_wreg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pll_wreg.i, align 4
  %14 = ptrtoint ptr %pll_rreg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pll_rreg.i, align 8
  %call7.i = tail call i32 %15(ptr noundef %rdev, i32 noundef 19) #8
  %or8.i = or i32 %call7.i, 1
  tail call void %13(ptr noundef %rdev, i32 noundef 19, i32 noundef %or8.i) #8
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %16 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %asic, align 8
  %asic_reset = getelementptr inbounds %struct.radeon_asic, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %asic_reset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %asic_reset, align 4
  %call = tail call i32 %19(ptr noundef %rdev, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %rv515_clock_startup.exit.if.end5_crit_edge, label %do.end

rv515_clock_startup.exit.if.end5_crit_edge:       ; preds = %rv515_clock_startup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

do.end:                                           ; preds = %rv515_clock_startup.exit
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rdev, align 8
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %22 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 3648
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !86
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  %26 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i30 = getelementptr i8, ptr %27, i32 1984
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30) #8, !srcloc !86
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.2, i32 noundef %25, i32 noundef %29) #11
  br label %if.end5

if.end5:                                          ; preds = %do.end, %rv515_clock_startup.exit.if.end5_crit_edge
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  %30 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mode_info, align 4
  %call6 = tail call i32 @atom_asic_init(ptr noundef %31) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_dynclks to i32))
  %32 = load i32, ptr @radeon_dynclks, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %32, label %if.then.i32 [
    i32 -1, label %if.end5.rv515_clock_startup.exit41_crit_edge
    i32 0, label %if.end5.rv515_clock_startup.exit41_crit_edge43
  ]

if.end5.rv515_clock_startup.exit41_crit_edge43:   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %rv515_clock_startup.exit41

if.end5.rv515_clock_startup.exit41_crit_edge:     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %rv515_clock_startup.exit41

if.then.i32:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_atom_set_clock_gating(ptr noundef %rdev, i32 noundef 1) #8
  br label %rv515_clock_startup.exit41

rv515_clock_startup.exit41:                       ; preds = %if.then.i32, %if.end5.rv515_clock_startup.exit41_crit_edge, %if.end5.rv515_clock_startup.exit41_crit_edge43
  %34 = ptrtoint ptr %pll_wreg.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pll_wreg.i, align 4
  %36 = ptrtoint ptr %pll_rreg.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pll_rreg.i, align 8
  %call.i35 = tail call i32 %37(ptr noundef %rdev, i32 noundef 15) #8
  %or.i36 = or i32 %call.i35, 1
  tail call void %35(ptr noundef %rdev, i32 noundef 15, i32 noundef %or.i36) #8
  %38 = ptrtoint ptr %pll_wreg.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pll_wreg.i, align 4
  %40 = ptrtoint ptr %pll_rreg.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pll_rreg.i, align 8
  %call3.i37 = tail call i32 %41(ptr noundef %rdev, i32 noundef 17) #8
  %or4.i38 = or i32 %call3.i37, 1
  tail call void %39(ptr noundef %rdev, i32 noundef 17, i32 noundef %or4.i38) #8
  %42 = ptrtoint ptr %pll_wreg.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pll_wreg.i, align 4
  %44 = ptrtoint ptr %pll_rreg.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pll_rreg.i, align 8
  %call7.i39 = tail call i32 %45(ptr noundef %rdev, i32 noundef 19) #8
  %or8.i40 = or i32 %call7.i39, 1
  tail call void %43(ptr noundef %rdev, i32 noundef 19, i32 noundef %or8.i40) #8
  tail call void @radeon_surface_init(ptr noundef %rdev) #8
  %accel_working = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 66
  %46 = ptrtoint ptr %accel_working to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %accel_working, align 2
  %call7 = tail call fastcc i32 @rv515_startup(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %rv515_clock_startup.exit41.if.end11_crit_edge, label %if.then9

rv515_clock_startup.exit41.if.end11_crit_edge:    ; preds = %rv515_clock_startup.exit41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then9:                                         ; preds = %rv515_clock_startup.exit41
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %accel_working to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %accel_working, align 2
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %rv515_clock_startup.exit41.if.end11_crit_edge
  ret i32 %call7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv370_pcie_gart_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atom_asic_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_surface_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rv515_startup(ptr noundef %rdev) unnamed_addr #0 align 64 {
entry:
  %save.i = alloca %struct.rv515_mc_save, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %save.i) #8
  %0 = call ptr @memset(ptr %save.i, i32 255, i32 12)
  call void @rv515_mc_stop(ptr noundef %rdev, ptr noundef nonnull %save.i) #8
  %mc_rreg.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 32
  %usec_timeout.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %1 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %usec_timeout.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp5.not.i.i = icmp eq i32 %2, 0
  br i1 %cmp5.not.i.i, label %entry.do.end.i_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %i.06.i.i = phi i32 [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ], [ 0, %entry.for.body.i.i_crit_edge ]
  %3 = ptrtoint ptr %mc_rreg.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mc_rreg.i.i, align 8
  %call.i.i = tail call i32 %4(ptr noundef %rdev, i32 noundef 8) #8
  %and.i.i = and i32 %call.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.i.if.end.i_crit_edge

for.body.i.i.if.end.i_crit_edge:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #8
  %inc.i.i = add nuw i32 %i.06.i.i, 1
  %6 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %usec_timeout.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %7
  br i1 %cmp.i.i, label %if.end.i.i.for.body.i.i_crit_edge, label %if.end.i.i.do.end.i_crit_edge

if.end.i.i.do.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

do.end.i:                                         ; preds = %if.end.i.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %8 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.30) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %for.body.i.i.if.end.i_crit_edge
  %real_vram_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 11
  %10 = ptrtoint ptr %real_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %real_vram_size.i, align 8
  %conv.i = trunc i64 %11 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %12 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #8
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %13 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %12) #8, !srcloc !89
  %mc_wreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 33
  %15 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mc_wreg.i, align 4
  %vram_start.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 8
  %17 = ptrtoint ptr %vram_start.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %vram_start.i, align 8
  %shr.i = lshr i64 %18, 16
  %and.i = and i64 %shr.i, 65535
  %vram_end.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 9
  %19 = ptrtoint ptr %vram_end.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %vram_end.i, align 8
  %and4.i = and i64 %20, 4294901760
  %or.i = or i64 %and.i, %and4.i
  %conv6.i = trunc i64 %or.i to i32
  tail call void %16(ptr noundef %rdev, i32 noundef 1, i32 noundef %conv6.i) #8
  %21 = ptrtoint ptr %vram_start.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %vram_start.i, align 8
  %23 = trunc i64 %22 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #8
  %25 = shl i32 %24, 16
  %26 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i74.i = getelementptr i8, ptr %27, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74.i, i32 %25) #8, !srcloc !89
  %flags.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags.i, align 8
  %and13.i = and i32 %29, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  %30 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mc_wreg.i, align 4
  br i1 %tobool14.not.i, label %if.else.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %gtt_start.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 6
  %32 = ptrtoint ptr %gtt_start.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %gtt_start.i, align 8
  %shr18.i = lshr i64 %33, 16
  %and19.i = and i64 %shr18.i, 65535
  %gtt_end.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 7
  %34 = ptrtoint ptr %gtt_end.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %gtt_end.i, align 8
  %and23.i = and i64 %35, 4294901760
  %or25.i = or i64 %and19.i, %and23.i
  %conv26.i = trunc i64 %or25.i to i32
  tail call void %31(ptr noundef %rdev, i32 noundef 2, i32 noundef %conv26.i) #8
  %36 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mc_wreg.i, align 4
  %agp_base.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 2
  %38 = ptrtoint ptr %agp_base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %agp_base.i, align 8
  tail call void %37(ptr noundef %rdev, i32 noundef 3, i32 noundef %39) #8
  br label %rv515_mc_program.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %31(ptr noundef %rdev, i32 noundef 2, i32 noundef -1) #8
  %40 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mc_wreg.i, align 4
  tail call void %41(ptr noundef %rdev, i32 noundef 3, i32 noundef 0) #8
  br label %rv515_mc_program.exit

rv515_mc_program.exit:                            ; preds = %if.else.i, %if.then15.i
  %42 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mc_wreg.i, align 4
  tail call void %43(ptr noundef %rdev, i32 noundef 4, i32 noundef 0) #8
  call void @rv515_mc_resume(ptr noundef %rdev, ptr noundef nonnull %save.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %save.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_dynclks to i32))
  %44 = load i32, ptr @radeon_dynclks, align 4
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %44, label %if.then.i [
    i32 -1, label %rv515_mc_program.exit.rv515_clock_startup.exit_crit_edge
    i32 0, label %rv515_mc_program.exit.rv515_clock_startup.exit_crit_edge87
  ]

rv515_mc_program.exit.rv515_clock_startup.exit_crit_edge87: ; preds = %rv515_mc_program.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rv515_clock_startup.exit

rv515_mc_program.exit.rv515_clock_startup.exit_crit_edge: ; preds = %rv515_mc_program.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rv515_clock_startup.exit

if.then.i:                                        ; preds = %rv515_mc_program.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_atom_set_clock_gating(ptr noundef %rdev, i32 noundef 1) #8
  br label %rv515_clock_startup.exit

rv515_clock_startup.exit:                         ; preds = %if.then.i, %rv515_mc_program.exit.rv515_clock_startup.exit_crit_edge, %rv515_mc_program.exit.rv515_clock_startup.exit_crit_edge87
  %pll_wreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 35
  %46 = ptrtoint ptr %pll_wreg.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pll_wreg.i, align 4
  %pll_rreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 34
  %48 = ptrtoint ptr %pll_rreg.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pll_rreg.i, align 8
  %call.i = tail call i32 %49(ptr noundef %rdev, i32 noundef 15) #8
  %or.i67 = or i32 %call.i, 1
  tail call void %47(ptr noundef %rdev, i32 noundef 15, i32 noundef %or.i67) #8
  %50 = ptrtoint ptr %pll_wreg.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pll_wreg.i, align 4
  %52 = ptrtoint ptr %pll_rreg.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pll_rreg.i, align 8
  %call3.i = tail call i32 %53(ptr noundef %rdev, i32 noundef 17) #8
  %or4.i = or i32 %call3.i, 1
  tail call void %51(ptr noundef %rdev, i32 noundef 17, i32 noundef %or4.i) #8
  %54 = ptrtoint ptr %pll_wreg.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pll_wreg.i, align 4
  %56 = ptrtoint ptr %pll_rreg.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pll_rreg.i, align 8
  %call7.i = tail call i32 %57(ptr noundef %rdev, i32 noundef 19) #8
  %or8.i = or i32 %call7.i, 1
  tail call void %55(ptr noundef %rdev, i32 noundef 19, i32 noundef %or8.i) #8
  %call.i69 = tail call i32 @r100_gui_wait_for_idle(ptr noundef %rdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %tobool.not.i = icmp eq i32 %call.i69, 0
  br i1 %tobool.not.i, label %rv515_clock_startup.exit.if.end.i75_crit_edge, label %do.end.i70

rv515_clock_startup.exit.if.end.i75_crit_edge:    ; preds = %rv515_clock_startup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i75

do.end.i70:                                       ; preds = %rv515_clock_startup.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #11
  br label %if.end.i75

if.end.i75:                                       ; preds = %do.end.i70, %rv515_clock_startup.exit.if.end.i75_crit_edge
  %58 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %59, i32 768
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  %61 = and i32 %60, -769
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %62 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %63, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i, i32 %61) #8, !srcloc !89
  tail call void @r420_pipes_init(ptr noundef %rdev) #8
  %64 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i71 = getelementptr i8, ptr %65, i32 16428
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i71) #8, !srcloc !86
  %67 = lshr i32 %66, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  %68 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i38.i = getelementptr i8, ptr %69, i32 5900
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38.i) #8, !srcloc !86
  %71 = lshr i32 %70, 26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  %and.i72 = and i32 %71, 3
  %shl.i = shl nuw nsw i32 1, %and.i72
  %shl7.i = and i32 %67, 240
  %or.i73 = or i32 %shl.i, %shl7.i
  %72 = ptrtoint ptr %pll_wreg.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pll_wreg.i, align 4
  tail call void %73(ptr noundef %rdev, i32 noundef 13, i32 noundef %or.i73) #8
  %call8.i = tail call i32 @r100_gui_wait_for_idle(ptr noundef %rdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end.i75.if.end16.i_crit_edge, label %do.end13.i

if.end.i75.if.end16.i_crit_edge:                  ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

do.end13.i:                                       ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #10
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #11
  br label %if.end16.i

if.end16.i:                                       ; preds = %do.end13.i, %if.end.i75.if.end16.i_crit_edge
  %74 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %usec_timeout.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp5.not.i.i78 = icmp eq i32 %75, 0
  br i1 %cmp5.not.i.i78, label %if.end16.i.do.end22.i_crit_edge, label %if.end16.i.for.body.i.i83_crit_edge

if.end16.i.for.body.i.i83_crit_edge:              ; preds = %if.end16.i
  br label %for.body.i.i83

if.end16.i.do.end22.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22.i

for.body.i.i83:                                   ; preds = %if.end.i.i85.for.body.i.i83_crit_edge, %if.end16.i.for.body.i.i83_crit_edge
  %i.06.i.i79 = phi i32 [ %inc.i.i84, %if.end.i.i85.for.body.i.i83_crit_edge ], [ 0, %if.end16.i.for.body.i.i83_crit_edge ]
  %76 = ptrtoint ptr %mc_rreg.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mc_rreg.i.i, align 8
  %call.i.i80 = tail call i32 %77(ptr noundef %rdev, i32 noundef 8) #8
  %and.i.i81 = and i32 %call.i.i80, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i81)
  %tobool.not.i.i82 = icmp eq i32 %and.i.i81, 0
  br i1 %tobool.not.i.i82, label %if.end.i.i85, label %for.body.i.i83.rv515_gpu_init.exit_crit_edge

for.body.i.i83.rv515_gpu_init.exit_crit_edge:     ; preds = %for.body.i.i83
  call void @__sanitizer_cov_trace_pc() #10
  br label %rv515_gpu_init.exit

if.end.i.i85:                                     ; preds = %for.body.i.i83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %78(i32 noundef 214748) #8
  %inc.i.i84 = add nuw i32 %i.06.i.i79, 1
  %79 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %usec_timeout.i.i, align 4
  %cmp.i39.i = icmp ult i32 %inc.i.i84, %80
  br i1 %cmp.i39.i, label %if.end.i.i85.for.body.i.i83_crit_edge, label %if.end.i.i85.do.end22.i_crit_edge

if.end.i.i85.do.end22.i_crit_edge:                ; preds = %if.end.i.i85
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22.i

if.end.i.i85.for.body.i.i83_crit_edge:            ; preds = %if.end.i.i85
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i83

do.end22.i:                                       ; preds = %if.end.i.i85.do.end22.i_crit_edge, %if.end16.i.do.end22.i_crit_edge
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #11
  br label %rv515_gpu_init.exit

rv515_gpu_init.exit:                              ; preds = %do.end22.i, %for.body.i.i83.rv515_gpu_init.exit_crit_edge
  %81 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %flags.i, align 8
  %and = and i32 %82, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %rv515_gpu_init.exit.if.end3_crit_edge, label %if.then

rv515_gpu_init.exit.if.end3_crit_edge:            ; preds = %rv515_gpu_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then:                                          ; preds = %rv515_gpu_init.exit
  %call = tail call i32 @rv370_pcie_gart_enable(ptr noundef %rdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end3_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %rv515_gpu_init.exit.if.end3_crit_edge
  %call4 = tail call i32 @radeon_wb_init(ptr noundef %rdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %call8 = tail call i32 @radeon_fence_driver_start_ring(ptr noundef %rdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %do.end

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.22, i32 noundef %call8) #11
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %irq = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55
  %85 = ptrtoint ptr %irq to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %irq, align 8, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool12.not = icmp eq i8 %86, 0
  br i1 %tobool12.not, label %if.then13, label %if.end11.if.end18_crit_edge

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then13:                                        ; preds = %if.end11
  %call14 = tail call i32 @radeon_irq_kms_init(ptr noundef %rdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then13.if.end18_crit_edge, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then13.if.end18_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.end18:                                         ; preds = %if.then13.if.end18_crit_edge, %if.end11.if.end18_crit_edge
  %call19 = tail call i32 @rs600_irq_set(ptr noundef %rdev) #8
  %87 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %88, i32 304
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !86
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  %hdp_cntl = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 3
  %91 = ptrtoint ptr %hdp_cntl to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %hdp_cntl, align 4
  %call21 = tail call i32 @r100_cp_init(ptr noundef %rdev, i32 noundef 1048576) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end28, label %do.end26

do.end26:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.25, i32 noundef %call21) #11
  br label %cleanup

if.end28:                                         ; preds = %if.end18
  %call29 = tail call i32 @radeon_ib_pool_init(ptr noundef %rdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end28.cleanup_crit_edge, label %do.end34

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %94 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.28, i32 noundef %call29) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end34, %if.end28.cleanup_crit_edge, %do.end26, %if.then13.cleanup_crit_edge, %do.end, %if.end3.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %do.end ], [ %call21, %do.end26 ], [ %call29, %do.end34 ], [ %call, %if.then.cleanup_crit_edge ], [ %call4, %if.end3.cleanup_crit_edge ], [ %call14, %if.then13.cleanup_crit_edge ], [ 0, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv515_suspend(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @radeon_pm_suspend(ptr noundef %rdev) #8
  tail call void @r100_cp_disable(ptr noundef %rdev) #8
  tail call void @radeon_wb_disable(ptr noundef %rdev) #8
  tail call void @rs600_irq_disable(ptr noundef %rdev) #8
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
  tail call void @rv370_pcie_gart_disable(ptr noundef %rdev) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_pm_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_cp_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_wb_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rs600_irq_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @rv515_set_safe_registers(ptr nocapture noundef writeonly %rdev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5
  %0 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @rv515_reg_safe_bm, ptr %config, align 8
  %reg_safe_bm_size = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 1
  %1 = ptrtoint ptr %reg_safe_bm_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 219, ptr %reg_safe_bm_size, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv515_fini(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @radeon_pm_fini(ptr noundef %rdev) #8
  tail call void @r100_cp_fini(ptr noundef %rdev) #8
  tail call void @radeon_wb_fini(ptr noundef %rdev) #8
  tail call void @radeon_ib_pool_fini(ptr noundef %rdev) #8
  tail call void @radeon_gem_fini(ptr noundef %rdev) #8
  tail call void @rv370_pcie_gart_fini(ptr noundef %rdev) #8
  tail call void @radeon_agp_fini(ptr noundef %rdev) #8
  tail call void @radeon_irq_kms_fini(ptr noundef %rdev) #8
  tail call void @radeon_fence_driver_fini(ptr noundef %rdev) #8
  tail call void @radeon_bo_fini(ptr noundef %rdev) #8
  tail call void @radeon_atombios_fini(ptr noundef %rdev) #8
  %bios = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 13
  %0 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bios, align 8
  tail call void @kfree(ptr noundef %1) #8
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_store4_noabort(i32 %2)
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
declare dso_local void @rv370_pcie_gart_fini(ptr noundef) local_unnamed_addr #2

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
define dso_local i32 @rv515_init(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
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
  %3 = load i8, ptr %is_atom_bios, align 4, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.end, label %if.then3

if.then3:                                         ; preds = %if.end2
  %call4 = tail call i32 @radeon_atombios_init(ptr noundef %rdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end8, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.7) #11
  br label %cleanup

if.end8:                                          ; preds = %if.then3
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
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !86
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  %16 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i93 = getelementptr i8, ptr %17, i32 1984
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i93) #8, !srcloc !86
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.2, i32 noundef %15, i32 noundef %19) #11
  br label %if.end18

if.end18:                                         ; preds = %do.end14, %if.end8.if.end18_crit_edge
  %call19 = tail call zeroext i1 @radeon_boot_test_post_card(ptr noundef %rdev) #8
  br i1 %call19, label %if.end23, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %ddev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %20 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ddev, align 4
  tail call void @radeon_get_clock_info(ptr noundef %21) #8
  %flags = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 8
  %and = and i32 %23, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %if.end23.if.end30_crit_edge, label %if.then25

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then25:                                        ; preds = %if.end23
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

if.end30:                                         ; preds = %if.then28, %if.then25.if.end30_crit_edge, %if.end23.if.end30_crit_edge
  %vram_width.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 10
  %24 = ptrtoint ptr %vram_width.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 128, ptr %vram_width.i.i, align 8
  %vram_is_ddr.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 13
  %25 = ptrtoint ptr %vram_is_ddr.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %vram_is_ddr.i.i, align 4
  %mc_rreg.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 32
  %26 = ptrtoint ptr %mc_rreg.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mc_rreg.i.i, align 8
  %call.i.i = tail call i32 %27(ptr noundef %rdev, i32 noundef 5) #8
  %and.i.i = and i32 %call.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %switch.selectcmp15.i.i = icmp eq i32 %and.i.i, 0
  %switch.select16.i.i = select i1 %switch.selectcmp15.i.i, i32 64, i32 128
  %28 = ptrtoint ptr %vram_width.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %switch.select16.i.i, ptr %vram_width.i.i, align 8
  tail call void @r100_vram_init_sizes(ptr noundef %rdev) #8
  %mc.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42
  tail call void @radeon_vram_location(ptr noundef %rdev, ptr noundef %mc.i, i64 noundef 0) #8
  %gtt_base_align.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 15
  %29 = ptrtoint ptr %gtt_base_align.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 0, ptr %gtt_base_align.i, align 8
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags, align 8
  %and.i = and i32 %31, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end30.rv515_mc_init.exit_crit_edge

if.end30.rv515_mc_init.exit_crit_edge:            ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %rv515_mc_init.exit

if.then.i:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @radeon_gtt_location(ptr noundef %rdev, ptr noundef %mc.i) #8
  br label %rv515_mc_init.exit

rv515_mc_init.exit:                               ; preds = %if.then.i, %if.end30.rv515_mc_init.exit_crit_edge
  tail call void @radeon_update_bandwidth_info(ptr noundef %rdev) #8
  %32 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ddev, align 4
  %primary.i = getelementptr inbounds %struct.drm_device, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %primary.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %primary.i, align 4
  %debugfs_root.i = getelementptr inbounds %struct.drm_minor, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %debugfs_root.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %debugfs_root.i, align 4
  %call.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str, i16 noundef zeroext 292, ptr noundef %37, ptr noundef %rdev, ptr noundef nonnull @rv515_debugfs_pipes_info_fops) #8
  %call1.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext 292, ptr noundef %37, ptr noundef %rdev, ptr noundef nonnull @rv515_debugfs_ga_info_fops) #8
  tail call void @r100_debugfs_rbbm_init(ptr noundef %rdev) #8
  tail call void @radeon_fence_driver_init(ptr noundef %rdev) #8
  %call31 = tail call i32 @radeon_bo_init(ptr noundef %rdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %rv515_mc_init.exit.cleanup_crit_edge

rv515_mc_init.exit.cleanup_crit_edge:             ; preds = %rv515_mc_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end34:                                         ; preds = %rv515_mc_init.exit
  %call35 = tail call i32 @rv370_pcie_gart_init(ptr noundef %rdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end38:                                         ; preds = %if.end34
  %config.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5
  %38 = ptrtoint ptr %config.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @rv515_reg_safe_bm, ptr %config.i, align 8
  %reg_safe_bm_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 1
  %39 = ptrtoint ptr %reg_safe_bm_size.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 219, ptr %reg_safe_bm_size.i, align 4
  %call39 = tail call i32 @radeon_pm_init(ptr noundef %rdev) #8
  %accel_working = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 66
  %40 = ptrtoint ptr %accel_working to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %accel_working, align 2
  %call40 = tail call fastcc i32 @rv515_startup(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end38.cleanup_crit_edge, label %do.end45

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end45:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.13) #11
  tail call void @r100_cp_fini(ptr noundef %rdev) #8
  tail call void @radeon_wb_fini(ptr noundef %rdev) #8
  tail call void @radeon_ib_pool_fini(ptr noundef %rdev) #8
  tail call void @radeon_irq_kms_fini(ptr noundef %rdev) #8
  tail call void @rv370_pcie_gart_fini(ptr noundef %rdev) #8
  tail call void @radeon_agp_fini(ptr noundef %rdev) #8
  %43 = ptrtoint ptr %accel_working to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %accel_working, align 2
  br label %cleanup

cleanup:                                          ; preds = %do.end45, %if.end38.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %rv515_mc_init.exit.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %do.end, %if.then3.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %if.then.cleanup_crit_edge ], [ %call4, %if.then3.cleanup_crit_edge ], [ -22, %if.end18.cleanup_crit_edge ], [ %call31, %rv515_mc_init.exit.cleanup_crit_edge ], [ %call35, %if.end34.cleanup_crit_edge ], [ 0, %do.end45 ], [ 0, %if.end38.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_scratch_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_restore_sanity(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_get_bios(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_atombios_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

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
declare dso_local i32 @rv370_pcie_gart_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_pm_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @atom_rv515_force_tv_scaler(ptr noundef %rdev, ptr nocapture noundef readonly %crtc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %crtc_offset = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 5
  %0 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %crtc_offset, align 8
  %add = add i32 %1, 25976
  %add2 = add i32 %1, 25980
  %add4 = add i32 %1, 26012
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %2 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %add4)
  %cmp.i = icmp ugt i32 %3, %add4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add4)
  %cmp1.i = icmp ult i32 %add4, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !89
  br label %r100_mm_wreg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add4, i32 noundef 0) #8
  br label %r100_mm_wreg.exit

r100_mm_wreg.exit:                                ; preds = %if.else.i, %do.body.i
  %6 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %crtc_offset, align 8
  %add6 = add i32 %7, 26004
  %8 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %add6)
  %cmp.i462 = icmp ugt i32 %9, %add6
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add6)
  %cmp1.i463 = icmp ult i32 %add6, 65536
  %or.cond.i464 = or i1 %cmp1.i463, %cmp.i462
  br i1 %or.cond.i464, label %do.body.i467, label %if.else.i468

do.body.i467:                                     ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i465 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %10 = ptrtoint ptr %rmmio.i465 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i465, align 4
  %add.ptr.i466 = getelementptr i8, ptr %11, i32 %add6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i466, i32 84344832) #8, !srcloc !89
  br label %r100_mm_wreg.exit469

if.else.i468:                                     ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add6, i32 noundef 1797) #8
  br label %r100_mm_wreg.exit469

r100_mm_wreg.exit469:                             ; preds = %if.else.i468, %do.body.i467
  %12 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %crtc_offset, align 8
  %add8 = add i32 %13, 26020
  %14 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %add8)
  %cmp.i471 = icmp ugt i32 %15, %add8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add8)
  %cmp1.i472 = icmp ult i32 %add8, 65536
  %or.cond.i473 = or i1 %cmp1.i472, %cmp.i471
  br i1 %or.cond.i473, label %do.body.i476, label %if.else.i477

do.body.i476:                                     ; preds = %r100_mm_wreg.exit469
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i474 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %16 = ptrtoint ptr %rmmio.i474 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio.i474, align 4
  %add.ptr.i475 = getelementptr i8, ptr %17, i32 %add8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i475, i32 16777472) #8, !srcloc !89
  br label %r100_mm_wreg.exit478

if.else.i477:                                     ; preds = %r100_mm_wreg.exit469
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add8, i32 noundef 65537) #8
  br label %r100_mm_wreg.exit478

r100_mm_wreg.exit478:                             ; preds = %if.else.i477, %do.body.i476
  %18 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %crtc_offset, align 8
  %add10 = add i32 %19, 26072
  %20 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %add10)
  %cmp.i480 = icmp ugt i32 %21, %add10
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add10)
  %cmp1.i481 = icmp ult i32 %add10, 65536
  %or.cond.i482 = or i1 %cmp1.i481, %cmp.i480
  br i1 %or.cond.i482, label %do.body.i485, label %if.else.i486

do.body.i485:                                     ; preds = %r100_mm_wreg.exit478
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i483 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %22 = ptrtoint ptr %rmmio.i483 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmmio.i483, align 4
  %add.ptr.i484 = getelementptr i8, ptr %23, i32 %add10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i484, i32 0) #8, !srcloc !89
  br label %r100_mm_wreg.exit487

if.else.i486:                                     ; preds = %r100_mm_wreg.exit478
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add10, i32 noundef 0) #8
  br label %r100_mm_wreg.exit487

r100_mm_wreg.exit487:                             ; preds = %if.else.i486, %do.body.i485
  %24 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %crtc_offset, align 8
  %add12 = add i32 %25, 26032
  %26 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %add12)
  %cmp.i489 = icmp ugt i32 %27, %add12
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add12)
  %cmp1.i490 = icmp ult i32 %add12, 65536
  %or.cond.i491 = or i1 %cmp1.i490, %cmp.i489
  br i1 %or.cond.i491, label %do.body.i494, label %if.else.i495

do.body.i494:                                     ; preds = %r100_mm_wreg.exit487
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i492 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %28 = ptrtoint ptr %rmmio.i492 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmmio.i492, align 4
  %add.ptr.i493 = getelementptr i8, ptr %29, i32 %add12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i493, i32 0) #8, !srcloc !89
  br label %r100_mm_wreg.exit496

if.else.i495:                                     ; preds = %r100_mm_wreg.exit487
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add12, i32 noundef 0) #8
  br label %r100_mm_wreg.exit496

r100_mm_wreg.exit496:                             ; preds = %if.else.i495, %do.body.i494
  %30 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %crtc_offset, align 8
  %add14 = add i32 %31, 26048
  %32 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %add14)
  %cmp.i498 = icmp ugt i32 %33, %add14
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add14)
  %cmp1.i499 = icmp ult i32 %add14, 65536
  %or.cond.i500 = or i1 %cmp1.i499, %cmp.i498
  br i1 %or.cond.i500, label %do.body.i503, label %if.else.i504

do.body.i503:                                     ; preds = %r100_mm_wreg.exit496
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i501 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %34 = ptrtoint ptr %rmmio.i501 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rmmio.i501, align 4
  %add.ptr.i502 = getelementptr i8, ptr %35, i32 %add14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i502, i32 0) #8, !srcloc !89
  br label %r100_mm_wreg.exit505

if.else.i504:                                     ; preds = %r100_mm_wreg.exit496
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add14, i32 noundef 0) #8
  br label %r100_mm_wreg.exit505

r100_mm_wreg.exit505:                             ; preds = %if.else.i504, %do.body.i503
  %36 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %crtc_offset, align 8
  %add16 = add i32 %37, 26068
  %38 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %add16)
  %cmp.i507 = icmp ugt i32 %39, %add16
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add16)
  %cmp1.i508 = icmp ult i32 %add16, 65536
  %or.cond.i509 = or i1 %cmp1.i508, %cmp.i507
  br i1 %or.cond.i509, label %do.body.i512, label %if.else.i513

do.body.i512:                                     ; preds = %r100_mm_wreg.exit505
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i510 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %40 = ptrtoint ptr %rmmio.i510 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rmmio.i510, align 4
  %add.ptr.i511 = getelementptr i8, ptr %41, i32 %add16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i511, i32 0) #8, !srcloc !89
  br label %r100_mm_wreg.exit514

if.else.i513:                                     ; preds = %r100_mm_wreg.exit505
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add16, i32 noundef 0) #8
  br label %r100_mm_wreg.exit514

r100_mm_wreg.exit514:                             ; preds = %if.else.i513, %do.body.i512
  %42 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %add)
  %cmp.i516 = icmp ugt i32 %43, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add)
  %cmp1.i517 = icmp ult i32 %add, 65536
  %or.cond.i518 = or i1 %cmp1.i517, %cmp.i516
  br i1 %or.cond.i518, label %do.body.i521, label %if.else.i522

do.body.i521:                                     ; preds = %r100_mm_wreg.exit514
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i519 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %44 = ptrtoint ptr %rmmio.i519 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rmmio.i519, align 4
  %add.ptr.i520 = getelementptr i8, ptr %45, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i520, i32 0) #8, !srcloc !89
  br label %r100_mm_wreg.exit523

if.else.i522:                                     ; preds = %r100_mm_wreg.exit514
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 0) #8
  br label %r100_mm_wreg.exit523

r100_mm_wreg.exit523:                             ; preds = %if.else.i522, %do.body.i521
  %46 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %add2)
  %cmp.i525 = icmp ugt i32 %47, %add2
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add2)
  %cmp1.i526 = icmp ult i32 %add2, 65536
  %or.cond.i527 = or i1 %cmp1.i526, %cmp.i525
  br i1 %or.cond.i527, label %do.body.i530, label %if.else.i531

do.body.i530:                                     ; preds = %r100_mm_wreg.exit523
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i528 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %48 = ptrtoint ptr %rmmio.i528 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rmmio.i528, align 4
  %add.ptr.i529 = getelementptr i8, ptr %49, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i529, i32 -1468000124) #8, !srcloc !89
  br label %r100_mm_wreg.exit532

if.else.i531:                                     ; preds = %r100_mm_wreg.exit523
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2078768984) #8
  br label %r100_mm_wreg.exit532

r100_mm_wreg.exit532:                             ; preds = %if.else.i531, %do.body.i530
  %50 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %add)
  %cmp.i534 = icmp ugt i32 %51, %add
  %or.cond.i536 = or i1 %cmp1.i517, %cmp.i534
  br i1 %or.cond.i536, label %do.body.i539, label %if.else.i540

do.body.i539:                                     ; preds = %r100_mm_wreg.exit532
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i537 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %52 = ptrtoint ptr %rmmio.i537 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rmmio.i537, align 4
  %add.ptr.i538 = getelementptr i8, ptr %53, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i538, i32 16777216) #8, !srcloc !89
  br label %r100_mm_wreg.exit541

if.else.i540:                                     ; preds = %r100_mm_wreg.exit532
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 1) #8
  br label %r100_mm_wreg.exit541

r100_mm_wreg.exit541:                             ; preds = %if.else.i540, %do.body.i539
  %54 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %add2)
  %cmp.i543 = icmp ugt i32 %55, %add2
  %or.cond.i545 = or i1 %cmp1.i526, %cmp.i543
  br i1 %or.cond.i545, label %do.body.i548, label %if.else.i549

do.body.i548:                                     ; preds = %r100_mm_wreg.exit541
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i546 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %56 = ptrtoint ptr %rmmio.i546 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rmmio.i546, align 4
  %add.ptr.i547 = getelementptr i8, ptr %57, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i547, i32 -2138693500) #8, !srcloc !89
  br label %r100_mm_wreg.exit550

if.else.i549:                                     ; preds = %r100_mm_wreg.exit541
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2078243200) #8
  br label %r100_mm_wreg.exit550

r100_mm_wreg.exit550:                             ; preds = %if.else.i549, %do.body.i548
  %58 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %add)
  %cmp.i552 = icmp ugt i32 %59, %add
  %or.cond.i554 = or i1 %cmp1.i517, %cmp.i552
  br i1 %or.cond.i554, label %do.body.i557, label %if.else.i558

do.body.i557:                                     ; preds = %r100_mm_wreg.exit550
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i555 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %60 = ptrtoint ptr %rmmio.i555 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rmmio.i555, align 4
  %add.ptr.i556 = getelementptr i8, ptr %61, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i556, i32 33554432) #8, !srcloc !89
  br label %r100_mm_wreg.exit559

if.else.i558:                                     ; preds = %r100_mm_wreg.exit550
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 2) #8
  br label %r100_mm_wreg.exit559

r100_mm_wreg.exit559:                             ; preds = %if.else.i558, %do.body.i557
  %62 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %add2)
  %cmp.i561 = icmp ugt i32 %63, %add2
  %or.cond.i563 = or i1 %cmp1.i526, %cmp.i561
  br i1 %or.cond.i563, label %do.body.i566, label %if.else.i567

do.body.i566:                                     ; preds = %r100_mm_wreg.exit559
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i564 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %64 = ptrtoint ptr %rmmio.i564 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rmmio.i564, align 4
  %add.ptr.i565 = getelementptr i8, ptr %65, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i565, i32 -1333724993) #8, !srcloc !89
  br label %r100_mm_wreg.exit568

if.else.i567:                                     ; preds = %r100_mm_wreg.exit559
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -1074233168) #8
  br label %r100_mm_wreg.exit568

r100_mm_wreg.exit568:                             ; preds = %if.else.i567, %do.body.i566
  %66 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %add)
  %cmp.i570 = icmp ugt i32 %67, %add
  %or.cond.i572 = or i1 %cmp1.i517, %cmp.i570
  br i1 %or.cond.i572, label %do.body.i575, label %if.else.i576

do.body.i575:                                     ; preds = %r100_mm_wreg.exit568
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i573 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %68 = ptrtoint ptr %rmmio.i573 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rmmio.i573, align 4
  %add.ptr.i574 = getelementptr i8, ptr %69, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i574, i32 65536) #8, !srcloc !89
  br label %r100_mm_wreg.exit577

if.else.i576:                                     ; preds = %r100_mm_wreg.exit568
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 256) #8
  br label %r100_mm_wreg.exit577

r100_mm_wreg.exit577:                             ; preds = %if.else.i576, %do.body.i575
  %70 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %add2)
  %cmp.i579 = icmp ugt i32 %71, %add2
  %or.cond.i581 = or i1 %cmp1.i526, %cmp.i579
  br i1 %or.cond.i581, label %do.body.i584, label %if.else.i585

do.body.i584:                                     ; preds = %r100_mm_wreg.exit577
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i582 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %72 = ptrtoint ptr %rmmio.i582 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rmmio.i582, align 4
  %add.ptr.i583 = getelementptr i8, ptr %73, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i583, i32 -2004821885) #8, !srcloc !89
  br label %r100_mm_wreg.exit586

if.else.i585:                                     ; preds = %r100_mm_wreg.exit577
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2082963320) #8
  br label %r100_mm_wreg.exit586

r100_mm_wreg.exit586:                             ; preds = %if.else.i585, %do.body.i584
  %74 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %add)
  %cmp.i588 = icmp ugt i32 %75, %add
  %or.cond.i590 = or i1 %cmp1.i517, %cmp.i588
  br i1 %or.cond.i590, label %do.body.i593, label %if.else.i594

do.body.i593:                                     ; preds = %r100_mm_wreg.exit586
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i591 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %76 = ptrtoint ptr %rmmio.i591 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rmmio.i591, align 4
  %add.ptr.i592 = getelementptr i8, ptr %77, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i592, i32 16842752) #8, !srcloc !89
  br label %r100_mm_wreg.exit595

if.else.i594:                                     ; preds = %r100_mm_wreg.exit586
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 257) #8
  br label %r100_mm_wreg.exit595

r100_mm_wreg.exit595:                             ; preds = %if.else.i594, %do.body.i593
  %78 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %add2)
  %cmp.i597 = icmp ugt i32 %79, %add2
  %or.cond.i599 = or i1 %cmp1.i526, %cmp.i597
  br i1 %or.cond.i599, label %do.body.i602, label %if.else.i603

do.body.i602:                                     ; preds = %r100_mm_wreg.exit595
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i600 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %80 = ptrtoint ptr %rmmio.i600 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %rmmio.i600, align 4
  %add.ptr.i601 = getelementptr i8, ptr %81, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i601, i32 -2138677116) #8, !srcloc !89
  br label %r100_mm_wreg.exit604

if.else.i603:                                     ; preds = %r100_mm_wreg.exit595
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2074048896) #8
  br label %r100_mm_wreg.exit604

r100_mm_wreg.exit604:                             ; preds = %if.else.i603, %do.body.i602
  %82 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %add)
  %cmp.i606 = icmp ugt i32 %83, %add
  %or.cond.i608 = or i1 %cmp1.i517, %cmp.i606
  br i1 %or.cond.i608, label %do.body.i611, label %if.else.i612

do.body.i611:                                     ; preds = %r100_mm_wreg.exit604
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i609 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %84 = ptrtoint ptr %rmmio.i609 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rmmio.i609, align 4
  %add.ptr.i610 = getelementptr i8, ptr %85, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i610, i32 33619968) #8, !srcloc !89
  br label %r100_mm_wreg.exit613

if.else.i612:                                     ; preds = %r100_mm_wreg.exit604
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 258) #8
  br label %r100_mm_wreg.exit613

r100_mm_wreg.exit613:                             ; preds = %if.else.i612, %do.body.i611
  %86 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %add2)
  %cmp.i615 = icmp ugt i32 %87, %add2
  %or.cond.i617 = or i1 %cmp1.i526, %cmp.i615
  br i1 %or.cond.i617, label %do.body.i620, label %if.else.i621

do.body.i620:                                     ; preds = %r100_mm_wreg.exit613
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i618 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %88 = ptrtoint ptr %rmmio.i618 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %rmmio.i618, align 4
  %add.ptr.i619 = getelementptr i8, ptr %89, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i619, i32 -796856129) #8, !srcloc !89
  br label %r100_mm_wreg.exit622

if.else.i621:                                     ; preds = %r100_mm_wreg.exit613
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -1074757424) #8
  br label %r100_mm_wreg.exit622

r100_mm_wreg.exit622:                             ; preds = %if.else.i621, %do.body.i620
  %90 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %add)
  %cmp.i624 = icmp ugt i32 %91, %add
  %or.cond.i626 = or i1 %cmp1.i517, %cmp.i624
  br i1 %or.cond.i626, label %do.body.i629, label %if.else.i630

do.body.i629:                                     ; preds = %r100_mm_wreg.exit622
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i627 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %92 = ptrtoint ptr %rmmio.i627 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %rmmio.i627, align 4
  %add.ptr.i628 = getelementptr i8, ptr %93, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i628, i32 131072) #8, !srcloc !89
  br label %r100_mm_wreg.exit631

if.else.i630:                                     ; preds = %r100_mm_wreg.exit622
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 512) #8
  br label %r100_mm_wreg.exit631

r100_mm_wreg.exit631:                             ; preds = %if.else.i630, %do.body.i629
  %94 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %add2)
  %cmp.i633 = icmp ugt i32 %95, %add2
  %or.cond.i635 = or i1 %cmp1.i526, %cmp.i633
  br i1 %or.cond.i635, label %do.body.i638, label %if.else.i639

do.body.i638:                                     ; preds = %r100_mm_wreg.exit631
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i636 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %96 = ptrtoint ptr %rmmio.i636 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rmmio.i636, align 4
  %add.ptr.i637 = getelementptr i8, ptr %97, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i637, i32 1753258115) #8, !srcloc !89
  br label %r100_mm_wreg.exit640

if.else.i639:                                     ; preds = %r100_mm_wreg.exit631
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2087157656) #8
  br label %r100_mm_wreg.exit640

r100_mm_wreg.exit640:                             ; preds = %if.else.i639, %do.body.i638
  %98 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %add)
  %cmp.i642 = icmp ugt i32 %99, %add
  %or.cond.i644 = or i1 %cmp1.i517, %cmp.i642
  br i1 %or.cond.i644, label %do.body.i647, label %if.else.i648

do.body.i647:                                     ; preds = %r100_mm_wreg.exit640
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i645 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %100 = ptrtoint ptr %rmmio.i645 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %rmmio.i645, align 4
  %add.ptr.i646 = getelementptr i8, ptr %101, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i646, i32 16908288) #8, !srcloc !89
  br label %r100_mm_wreg.exit649

if.else.i648:                                     ; preds = %r100_mm_wreg.exit640
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 513) #8
  br label %r100_mm_wreg.exit649

r100_mm_wreg.exit649:                             ; preds = %if.else.i648, %do.body.i647
  %102 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %add2)
  %cmp.i651 = icmp ugt i32 %103, %add2
  %or.cond.i653 = or i1 %cmp1.i526, %cmp.i651
  br i1 %or.cond.i653, label %do.body.i656, label %if.else.i657

do.body.i656:                                     ; preds = %r100_mm_wreg.exit649
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i654 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %104 = ptrtoint ptr %rmmio.i654 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %rmmio.i654, align 4
  %add.ptr.i655 = getelementptr i8, ptr %105, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i655, i32 -2138660732) #8, !srcloc !89
  br label %r100_mm_wreg.exit658

if.else.i657:                                     ; preds = %r100_mm_wreg.exit649
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2069854592) #8
  br label %r100_mm_wreg.exit658

r100_mm_wreg.exit658:                             ; preds = %if.else.i657, %do.body.i656
  %106 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %107, i32 %add)
  %cmp.i660 = icmp ugt i32 %107, %add
  %or.cond.i662 = or i1 %cmp1.i517, %cmp.i660
  br i1 %or.cond.i662, label %do.body.i665, label %if.else.i666

do.body.i665:                                     ; preds = %r100_mm_wreg.exit658
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i663 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %108 = ptrtoint ptr %rmmio.i663 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %rmmio.i663, align 4
  %add.ptr.i664 = getelementptr i8, ptr %109, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i664, i32 33685504) #8, !srcloc !89
  br label %r100_mm_wreg.exit667

if.else.i666:                                     ; preds = %r100_mm_wreg.exit658
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 514) #8
  br label %r100_mm_wreg.exit667

r100_mm_wreg.exit667:                             ; preds = %if.else.i666, %do.body.i665
  %110 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %111, i32 %add2)
  %cmp.i669 = icmp ugt i32 %111, %add2
  %or.cond.i671 = or i1 %cmp1.i526, %cmp.i669
  br i1 %or.cond.i671, label %do.body.i674, label %if.else.i675

do.body.i674:                                     ; preds = %r100_mm_wreg.exit667
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i672 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %112 = ptrtoint ptr %rmmio.i672 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %rmmio.i672, align 4
  %add.ptr.i673 = getelementptr i8, ptr %113, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i673, i32 -125767489) #8, !srcloc !89
  br label %r100_mm_wreg.exit676

if.else.i675:                                     ; preds = %r100_mm_wreg.exit667
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -1074757384) #8
  br label %r100_mm_wreg.exit676

r100_mm_wreg.exit676:                             ; preds = %if.else.i675, %do.body.i674
  %114 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %115, i32 %add)
  %cmp.i678 = icmp ugt i32 %115, %add
  %or.cond.i680 = or i1 %cmp1.i517, %cmp.i678
  br i1 %or.cond.i680, label %do.body.i683, label %if.else.i684

do.body.i683:                                     ; preds = %r100_mm_wreg.exit676
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i681 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %116 = ptrtoint ptr %rmmio.i681 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %rmmio.i681, align 4
  %add.ptr.i682 = getelementptr i8, ptr %117, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i682, i32 196608) #8, !srcloc !89
  br label %r100_mm_wreg.exit685

if.else.i684:                                     ; preds = %r100_mm_wreg.exit676
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 768) #8
  br label %r100_mm_wreg.exit685

r100_mm_wreg.exit685:                             ; preds = %if.else.i684, %do.body.i683
  %118 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %119, i32 %add2)
  %cmp.i687 = icmp ugt i32 %119, %add2
  %or.cond.i689 = or i1 %cmp1.i526, %cmp.i687
  br i1 %or.cond.i689, label %do.body.i692, label %if.else.i693

do.body.i692:                                     ; preds = %r100_mm_wreg.exit685
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i690 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %120 = ptrtoint ptr %rmmio.i690 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %rmmio.i690, align 4
  %add.ptr.i691 = getelementptr i8, ptr %121, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i691, i32 1484806275) #8, !srcloc !89
  br label %r100_mm_wreg.exit694

if.else.i693:                                     ; preds = %r100_mm_wreg.exit685
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2091351976) #8
  br label %r100_mm_wreg.exit694

r100_mm_wreg.exit694:                             ; preds = %if.else.i693, %do.body.i692
  %122 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %123, i32 %add)
  %cmp.i696 = icmp ugt i32 %123, %add
  %or.cond.i698 = or i1 %cmp1.i517, %cmp.i696
  br i1 %or.cond.i698, label %do.body.i701, label %if.else.i702

do.body.i701:                                     ; preds = %r100_mm_wreg.exit694
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i699 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %124 = ptrtoint ptr %rmmio.i699 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %rmmio.i699, align 4
  %add.ptr.i700 = getelementptr i8, ptr %125, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i700, i32 16973824) #8, !srcloc !89
  br label %r100_mm_wreg.exit703

if.else.i702:                                     ; preds = %r100_mm_wreg.exit694
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 769) #8
  br label %r100_mm_wreg.exit703

r100_mm_wreg.exit703:                             ; preds = %if.else.i702, %do.body.i701
  %126 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %127, i32 %add2)
  %cmp.i705 = icmp ugt i32 %127, %add2
  %or.cond.i707 = or i1 %cmp1.i526, %cmp.i705
  br i1 %or.cond.i707, label %do.body.i710, label %if.else.i711

do.body.i710:                                     ; preds = %r100_mm_wreg.exit703
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i708 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %128 = ptrtoint ptr %rmmio.i708 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %rmmio.i708, align 4
  %add.ptr.i709 = getelementptr i8, ptr %129, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i709, i32 1619452036) #8, !srcloc !89
  br label %r100_mm_wreg.exit712

if.else.i711:                                     ; preds = %r100_mm_wreg.exit703
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2065660320) #8
  br label %r100_mm_wreg.exit712

r100_mm_wreg.exit712:                             ; preds = %if.else.i711, %do.body.i710
  %130 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %131, i32 %add)
  %cmp.i714 = icmp ugt i32 %131, %add
  %or.cond.i716 = or i1 %cmp1.i517, %cmp.i714
  br i1 %or.cond.i716, label %do.body.i719, label %if.else.i720

do.body.i719:                                     ; preds = %r100_mm_wreg.exit712
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i717 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %132 = ptrtoint ptr %rmmio.i717 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %rmmio.i717, align 4
  %add.ptr.i718 = getelementptr i8, ptr %133, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i718, i32 33751040) #8, !srcloc !89
  br label %r100_mm_wreg.exit721

if.else.i720:                                     ; preds = %r100_mm_wreg.exit712
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 770) #8
  br label %r100_mm_wreg.exit721

r100_mm_wreg.exit721:                             ; preds = %if.else.i720, %do.body.i719
  %134 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %135, i32 %add2)
  %cmp.i723 = icmp ugt i32 %135, %add2
  %or.cond.i725 = or i1 %cmp1.i526, %cmp.i723
  br i1 %or.cond.i725, label %do.body.i728, label %if.else.i729

do.body.i728:                                     ; preds = %r100_mm_wreg.exit721
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i726 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %136 = ptrtoint ptr %rmmio.i726 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %rmmio.i726, align 4
  %add.ptr.i727 = getelementptr i8, ptr %137, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i727, i32 545388735) #8, !srcloc !89
  br label %r100_mm_wreg.exit730

if.else.i729:                                     ; preds = %r100_mm_wreg.exit721
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -1074233056) #8
  br label %r100_mm_wreg.exit730

r100_mm_wreg.exit730:                             ; preds = %if.else.i729, %do.body.i728
  %138 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %139, i32 %add)
  %cmp.i732 = icmp ugt i32 %139, %add
  %or.cond.i734 = or i1 %cmp1.i517, %cmp.i732
  br i1 %or.cond.i734, label %do.body.i737, label %if.else.i738

do.body.i737:                                     ; preds = %r100_mm_wreg.exit730
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i735 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %140 = ptrtoint ptr %rmmio.i735 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %rmmio.i735, align 4
  %add.ptr.i736 = getelementptr i8, ptr %141, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i736, i32 262144) #8, !srcloc !89
  br label %r100_mm_wreg.exit739

if.else.i738:                                     ; preds = %r100_mm_wreg.exit730
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 1024) #8
  br label %r100_mm_wreg.exit739

r100_mm_wreg.exit739:                             ; preds = %if.else.i738, %do.body.i737
  %142 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %143, i32 %add2)
  %cmp.i741 = icmp ugt i32 %143, %add2
  %or.cond.i743 = or i1 %cmp1.i526, %cmp.i741
  br i1 %or.cond.i743, label %do.body.i746, label %if.else.i747

do.body.i746:                                     ; preds = %r100_mm_wreg.exit739
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i744 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %144 = ptrtoint ptr %rmmio.i744 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %rmmio.i744, align 4
  %add.ptr.i745 = getelementptr i8, ptr %145, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i745, i32 1082136707) #8, !srcloc !89
  br label %r100_mm_wreg.exit748

if.else.i747:                                     ; preds = %r100_mm_wreg.exit739
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2095546304) #8
  br label %r100_mm_wreg.exit748

r100_mm_wreg.exit748:                             ; preds = %if.else.i747, %do.body.i746
  %146 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %147, i32 %add)
  %cmp.i750 = icmp ugt i32 %147, %add
  %or.cond.i752 = or i1 %cmp1.i517, %cmp.i750
  br i1 %or.cond.i752, label %do.body.i755, label %if.else.i756

do.body.i755:                                     ; preds = %r100_mm_wreg.exit748
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i753 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %148 = ptrtoint ptr %rmmio.i753 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %rmmio.i753, align 4
  %add.ptr.i754 = getelementptr i8, ptr %149, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i754, i32 17039360) #8, !srcloc !89
  br label %r100_mm_wreg.exit757

if.else.i756:                                     ; preds = %r100_mm_wreg.exit748
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 1025) #8
  br label %r100_mm_wreg.exit757

r100_mm_wreg.exit757:                             ; preds = %if.else.i756, %do.body.i755
  %150 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %151, i32 %add2)
  %cmp.i759 = icmp ugt i32 %151, %add2
  %or.cond.i761 = or i1 %cmp1.i526, %cmp.i759
  br i1 %or.cond.i761, label %do.body.i764, label %if.else.i765

do.body.i764:                                     ; preds = %r100_mm_wreg.exit757
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i762 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %152 = ptrtoint ptr %rmmio.i762 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %rmmio.i762, align 4
  %add.ptr.i763 = getelementptr i8, ptr %153, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i763, i32 1619394693) #8, !srcloc !89
  br label %r100_mm_wreg.exit766

if.else.i765:                                     ; preds = %r100_mm_wreg.exit757
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2063563168) #8
  br label %r100_mm_wreg.exit766

r100_mm_wreg.exit766:                             ; preds = %if.else.i765, %do.body.i764
  %154 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %155, i32 %add)
  %cmp.i768 = icmp ugt i32 %155, %add
  %or.cond.i770 = or i1 %cmp1.i517, %cmp.i768
  br i1 %or.cond.i770, label %do.body.i773, label %if.else.i774

do.body.i773:                                     ; preds = %r100_mm_wreg.exit766
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i771 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %156 = ptrtoint ptr %rmmio.i771 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %rmmio.i771, align 4
  %add.ptr.i772 = getelementptr i8, ptr %157, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i772, i32 33816576) #8, !srcloc !89
  br label %r100_mm_wreg.exit775

if.else.i774:                                     ; preds = %r100_mm_wreg.exit766
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 1026) #8
  br label %r100_mm_wreg.exit775

r100_mm_wreg.exit775:                             ; preds = %if.else.i774, %do.body.i773
  %158 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %159, i32 %add2)
  %cmp.i777 = icmp ugt i32 %159, %add2
  %or.cond.i779 = or i1 %cmp1.i526, %cmp.i777
  br i1 %or.cond.i779, label %do.body.i782, label %if.else.i783

do.body.i782:                                     ; preds = %r100_mm_wreg.exit775
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i780 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %160 = ptrtoint ptr %rmmio.i780 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %rmmio.i780, align 4
  %add.ptr.i781 = getelementptr i8, ptr %161, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i781, i32 1350695103) #8, !srcloc !89
  br label %r100_mm_wreg.exit784

if.else.i783:                                     ; preds = %r100_mm_wreg.exit775
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -1074233008) #8
  br label %r100_mm_wreg.exit784

r100_mm_wreg.exit784:                             ; preds = %if.else.i783, %do.body.i782
  %162 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %163, i32 %add)
  %cmp.i786 = icmp ugt i32 %163, %add
  %or.cond.i788 = or i1 %cmp1.i517, %cmp.i786
  br i1 %or.cond.i788, label %do.body.i791, label %if.else.i792

do.body.i791:                                     ; preds = %r100_mm_wreg.exit784
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i789 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %164 = ptrtoint ptr %rmmio.i789 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %rmmio.i789, align 4
  %add.ptr.i790 = getelementptr i8, ptr %165, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i790, i32 327680) #8, !srcloc !89
  br label %r100_mm_wreg.exit793

if.else.i792:                                     ; preds = %r100_mm_wreg.exit784
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 1280) #8
  br label %r100_mm_wreg.exit793

r100_mm_wreg.exit793:                             ; preds = %if.else.i792, %do.body.i791
  %166 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %167, i32 %add2)
  %cmp.i795 = icmp ugt i32 %167, %add2
  %or.cond.i797 = or i1 %cmp1.i526, %cmp.i795
  br i1 %or.cond.i797, label %do.body.i800, label %if.else.i801

do.body.i800:                                     ; preds = %r100_mm_wreg.exit793
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i798 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %168 = ptrtoint ptr %rmmio.i798 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %rmmio.i798, align 4
  %add.ptr.i799 = getelementptr i8, ptr %169, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i799, i32 813750402) #8, !srcloc !89
  br label %r100_mm_wreg.exit802

if.else.i801:                                     ; preds = %r100_mm_wreg.exit793
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2099740624) #8
  br label %r100_mm_wreg.exit802

r100_mm_wreg.exit802:                             ; preds = %if.else.i801, %do.body.i800
  %170 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %171, i32 %add)
  %cmp.i804 = icmp ugt i32 %171, %add
  %or.cond.i806 = or i1 %cmp1.i517, %cmp.i804
  br i1 %or.cond.i806, label %do.body.i809, label %if.else.i810

do.body.i809:                                     ; preds = %r100_mm_wreg.exit802
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i807 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %172 = ptrtoint ptr %rmmio.i807 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %rmmio.i807, align 4
  %add.ptr.i808 = getelementptr i8, ptr %173, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i808, i32 17104896) #8, !srcloc !89
  br label %r100_mm_wreg.exit811

if.else.i810:                                     ; preds = %r100_mm_wreg.exit802
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 1281) #8
  br label %r100_mm_wreg.exit811

r100_mm_wreg.exit811:                             ; preds = %if.else.i810, %do.body.i809
  %174 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %175, i32 %add2)
  %cmp.i813 = icmp ugt i32 %175, %add2
  %or.cond.i815 = or i1 %cmp1.i526, %cmp.i813
  br i1 %or.cond.i815, label %do.body.i818, label %if.else.i819

do.body.i818:                                     ; preds = %r100_mm_wreg.exit811
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i816 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %176 = ptrtoint ptr %rmmio.i816 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %rmmio.i816, align 4
  %add.ptr.i817 = getelementptr i8, ptr %177, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i817, i32 1082540165) #8, !srcloc !89
  br label %r100_mm_wreg.exit820

if.else.i819:                                     ; preds = %r100_mm_wreg.exit811
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2059368896) #8
  br label %r100_mm_wreg.exit820

r100_mm_wreg.exit820:                             ; preds = %if.else.i819, %do.body.i818
  %178 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %179, i32 %add)
  %cmp.i822 = icmp ugt i32 %179, %add
  %or.cond.i824 = or i1 %cmp1.i517, %cmp.i822
  br i1 %or.cond.i824, label %do.body.i827, label %if.else.i828

do.body.i827:                                     ; preds = %r100_mm_wreg.exit820
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i825 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %180 = ptrtoint ptr %rmmio.i825 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %rmmio.i825, align 4
  %add.ptr.i826 = getelementptr i8, ptr %181, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i826, i32 33882112) #8, !srcloc !89
  br label %r100_mm_wreg.exit829

if.else.i828:                                     ; preds = %r100_mm_wreg.exit820
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 1282) #8
  br label %r100_mm_wreg.exit829

r100_mm_wreg.exit829:                             ; preds = %if.else.i828, %do.body.i827
  %182 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %183, i32 %add2)
  %cmp.i831 = icmp ugt i32 %183, %add2
  %or.cond.i833 = or i1 %cmp1.i526, %cmp.i831
  br i1 %or.cond.i833, label %do.body.i836, label %if.else.i837

do.body.i836:                                     ; preds = %r100_mm_wreg.exit829
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i834 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %184 = ptrtoint ptr %rmmio.i834 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %rmmio.i834, align 4
  %add.ptr.i835 = getelementptr i8, ptr %185, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i835, i32 -2138965825) #8, !srcloc !89
  br label %r100_mm_wreg.exit838

if.else.i837:                                     ; preds = %r100_mm_wreg.exit829
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -1074232960) #8
  br label %r100_mm_wreg.exit838

r100_mm_wreg.exit838:                             ; preds = %if.else.i837, %do.body.i836
  %186 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %187, i32 %add)
  %cmp.i840 = icmp ugt i32 %187, %add
  %or.cond.i842 = or i1 %cmp1.i517, %cmp.i840
  br i1 %or.cond.i842, label %do.body.i845, label %if.else.i846

do.body.i845:                                     ; preds = %r100_mm_wreg.exit838
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i843 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %188 = ptrtoint ptr %rmmio.i843 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %rmmio.i843, align 4
  %add.ptr.i844 = getelementptr i8, ptr %189, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i844, i32 393216) #8, !srcloc !89
  br label %r100_mm_wreg.exit847

if.else.i846:                                     ; preds = %r100_mm_wreg.exit838
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 1536) #8
  br label %r100_mm_wreg.exit847

r100_mm_wreg.exit847:                             ; preds = %if.else.i846, %do.body.i845
  %190 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %191, i32 %add2)
  %cmp.i849 = icmp ugt i32 %191, %add2
  %or.cond.i851 = or i1 %cmp1.i526, %cmp.i849
  br i1 %or.cond.i851, label %do.body.i854, label %if.else.i855

do.body.i854:                                     ; preds = %r100_mm_wreg.exit847
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i852 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %192 = ptrtoint ptr %rmmio.i852 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %rmmio.i852, align 4
  %add.ptr.i853 = getelementptr i8, ptr %193, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i853, i32 411082882) #8, !srcloc !89
  br label %r100_mm_wreg.exit856

if.else.i855:                                     ; preds = %r100_mm_wreg.exit847
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2103410664) #8
  br label %r100_mm_wreg.exit856

r100_mm_wreg.exit856:                             ; preds = %if.else.i855, %do.body.i854
  %194 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %195, i32 %add)
  %cmp.i858 = icmp ugt i32 %195, %add
  %or.cond.i860 = or i1 %cmp1.i517, %cmp.i858
  br i1 %or.cond.i860, label %do.body.i863, label %if.else.i864

do.body.i863:                                     ; preds = %r100_mm_wreg.exit856
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i861 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %196 = ptrtoint ptr %rmmio.i861 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %rmmio.i861, align 4
  %add.ptr.i862 = getelementptr i8, ptr %197, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i862, i32 17170432) #8, !srcloc !89
  br label %r100_mm_wreg.exit865

if.else.i864:                                     ; preds = %r100_mm_wreg.exit856
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 1537) #8
  br label %r100_mm_wreg.exit865

r100_mm_wreg.exit865:                             ; preds = %if.else.i864, %do.body.i863
  %198 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %199, i32 %add2)
  %cmp.i867 = icmp ugt i32 %199, %add2
  %or.cond.i869 = or i1 %cmp1.i526, %cmp.i867
  br i1 %or.cond.i869, label %do.body.i872, label %if.else.i873

do.body.i872:                                     ; preds = %r100_mm_wreg.exit865
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i870 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %200 = ptrtoint ptr %rmmio.i870 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %rmmio.i870, align 4
  %add.ptr.i871 = getelementptr i8, ptr %201, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i871, i32 545685637) #8, !srcloc !89
  br label %r100_mm_wreg.exit874

if.else.i873:                                     ; preds = %r100_mm_wreg.exit865
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2055174624) #8
  br label %r100_mm_wreg.exit874

r100_mm_wreg.exit874:                             ; preds = %if.else.i873, %do.body.i872
  %202 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %203, i32 %add)
  %cmp.i876 = icmp ugt i32 %203, %add
  %or.cond.i878 = or i1 %cmp1.i517, %cmp.i876
  br i1 %or.cond.i878, label %do.body.i881, label %if.else.i882

do.body.i881:                                     ; preds = %r100_mm_wreg.exit874
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i879 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %204 = ptrtoint ptr %rmmio.i879 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %rmmio.i879, align 4
  %add.ptr.i880 = getelementptr i8, ptr %205, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i880, i32 33947648) #8, !srcloc !89
  br label %r100_mm_wreg.exit883

if.else.i882:                                     ; preds = %r100_mm_wreg.exit874
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 1538) #8
  br label %r100_mm_wreg.exit883

r100_mm_wreg.exit883:                             ; preds = %if.else.i882, %do.body.i881
  %206 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %207, i32 %add2)
  %cmp.i885 = icmp ugt i32 %207, %add2
  %or.cond.i887 = or i1 %cmp1.i526, %cmp.i885
  br i1 %or.cond.i887, label %do.body.i890, label %if.else.i891

do.body.i890:                                     ; preds = %r100_mm_wreg.exit883
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i888 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %208 = ptrtoint ptr %rmmio.i888 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %rmmio.i888, align 4
  %add.ptr.i889 = getelementptr i8, ptr %209, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i889, i32 -1199443777) #8, !srcloc !89
  br label %r100_mm_wreg.exit892

if.else.i891:                                     ; preds = %r100_mm_wreg.exit883
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -1074757192) #8
  br label %r100_mm_wreg.exit892

r100_mm_wreg.exit892:                             ; preds = %if.else.i891, %do.body.i890
  %210 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %211, i32 %add)
  %cmp.i894 = icmp ugt i32 %211, %add
  %or.cond.i896 = or i1 %cmp1.i517, %cmp.i894
  br i1 %or.cond.i896, label %do.body.i899, label %if.else.i900

do.body.i899:                                     ; preds = %r100_mm_wreg.exit892
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i897 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %212 = ptrtoint ptr %rmmio.i897 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %rmmio.i897, align 4
  %add.ptr.i898 = getelementptr i8, ptr %213, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i898, i32 458752) #8, !srcloc !89
  br label %r100_mm_wreg.exit901

if.else.i900:                                     ; preds = %r100_mm_wreg.exit892
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 1792) #8
  br label %r100_mm_wreg.exit901

r100_mm_wreg.exit901:                             ; preds = %if.else.i900, %do.body.i899
  %214 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %215, i32 %add2)
  %cmp.i903 = icmp ugt i32 %215, %add2
  %or.cond.i905 = or i1 %cmp1.i526, %cmp.i903
  br i1 %or.cond.i905, label %do.body.i908, label %if.else.i909

do.body.i908:                                     ; preds = %r100_mm_wreg.exit901
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i906 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %216 = ptrtoint ptr %rmmio.i906 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %rmmio.i906, align 4
  %add.ptr.i907 = getelementptr i8, ptr %217, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i907, i32 276848770) #8, !srcloc !89
  br label %r100_mm_wreg.exit910

if.else.i909:                                     ; preds = %r100_mm_wreg.exit901
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2107604976) #8
  br label %r100_mm_wreg.exit910

r100_mm_wreg.exit910:                             ; preds = %if.else.i909, %do.body.i908
  %218 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %219, i32 %add)
  %cmp.i912 = icmp ugt i32 %219, %add
  %or.cond.i914 = or i1 %cmp1.i517, %cmp.i912
  br i1 %or.cond.i914, label %do.body.i917, label %if.else.i918

do.body.i917:                                     ; preds = %r100_mm_wreg.exit910
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i915 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %220 = ptrtoint ptr %rmmio.i915 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %rmmio.i915, align 4
  %add.ptr.i916 = getelementptr i8, ptr %221, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i916, i32 17235968) #8, !srcloc !89
  br label %r100_mm_wreg.exit919

if.else.i918:                                     ; preds = %r100_mm_wreg.exit910
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 1793) #8
  br label %r100_mm_wreg.exit919

r100_mm_wreg.exit919:                             ; preds = %if.else.i918, %do.body.i917
  %222 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %223, i32 %add2)
  %cmp.i921 = icmp ugt i32 %223, %add2
  %or.cond.i923 = or i1 %cmp1.i526, %cmp.i921
  br i1 %or.cond.i923, label %do.body.i926, label %if.else.i927

do.body.i926:                                     ; preds = %r100_mm_wreg.exit919
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i924 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %224 = ptrtoint ptr %rmmio.i924 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %rmmio.i924, align 4
  %add.ptr.i925 = getelementptr i8, ptr %225, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i925, i32 8822917) #8, !srcloc !89
  br label %r100_mm_wreg.exit928

if.else.i927:                                     ; preds = %r100_mm_wreg.exit919
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2053077504) #8
  br label %r100_mm_wreg.exit928

r100_mm_wreg.exit928:                             ; preds = %if.else.i927, %do.body.i926
  %226 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %227, i32 %add)
  %cmp.i930 = icmp ugt i32 %227, %add
  %or.cond.i932 = or i1 %cmp1.i517, %cmp.i930
  br i1 %or.cond.i932, label %do.body.i935, label %if.else.i936

do.body.i935:                                     ; preds = %r100_mm_wreg.exit928
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i933 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %228 = ptrtoint ptr %rmmio.i933 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %rmmio.i933, align 4
  %add.ptr.i934 = getelementptr i8, ptr %229, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i934, i32 34013184) #8, !srcloc !89
  br label %r100_mm_wreg.exit937

if.else.i936:                                     ; preds = %r100_mm_wreg.exit928
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 1794) #8
  br label %r100_mm_wreg.exit937

r100_mm_wreg.exit937:                             ; preds = %if.else.i936, %do.body.i935
  %230 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %231, i32 %add2)
  %cmp.i939 = icmp ugt i32 %231, %add2
  %or.cond.i941 = or i1 %cmp1.i526, %cmp.i939
  br i1 %or.cond.i941, label %do.body.i944, label %if.else.i945

do.body.i944:                                     ; preds = %r100_mm_wreg.exit937
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i942 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %232 = ptrtoint ptr %rmmio.i942 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %rmmio.i942, align 4
  %add.ptr.i943 = getelementptr i8, ptr %233, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i943, i32 -259981184) #8, !srcloc !89
  br label %r100_mm_wreg.exit946

if.else.i945:                                     ; preds = %r100_mm_wreg.exit937
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2147450384) #8
  br label %r100_mm_wreg.exit946

r100_mm_wreg.exit946:                             ; preds = %if.else.i945, %do.body.i944
  %234 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %235, i32 %add)
  %cmp.i948 = icmp ugt i32 %235, %add
  %or.cond.i950 = or i1 %cmp1.i517, %cmp.i948
  br i1 %or.cond.i950, label %do.body.i953, label %if.else.i954

do.body.i953:                                     ; preds = %r100_mm_wreg.exit946
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i951 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %236 = ptrtoint ptr %rmmio.i951 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %rmmio.i951, align 4
  %add.ptr.i952 = getelementptr i8, ptr %237, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i952, i32 524288) #8, !srcloc !89
  br label %r100_mm_wreg.exit955

if.else.i954:                                     ; preds = %r100_mm_wreg.exit946
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 2048) #8
  br label %r100_mm_wreg.exit955

r100_mm_wreg.exit955:                             ; preds = %if.else.i954, %do.body.i953
  %238 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %239, i32 %add2)
  %cmp.i957 = icmp ugt i32 %239, %add2
  %or.cond.i959 = or i1 %cmp1.i526, %cmp.i957
  br i1 %or.cond.i959, label %do.body.i962, label %if.else.i963

do.body.i962:                                     ; preds = %r100_mm_wreg.exit955
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i960 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %240 = ptrtoint ptr %rmmio.i960 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %rmmio.i960, align 4
  %add.ptr.i961 = getelementptr i8, ptr %241, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i961, i32 -121689982) #8, !srcloc !89
  br label %r100_mm_wreg.exit964

if.else.i963:                                     ; preds = %r100_mm_wreg.exit955
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2111258632) #8
  br label %r100_mm_wreg.exit964

r100_mm_wreg.exit964:                             ; preds = %if.else.i963, %do.body.i962
  %242 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %243, i32 %add)
  %cmp.i966 = icmp ugt i32 %243, %add
  %or.cond.i968 = or i1 %cmp1.i517, %cmp.i966
  br i1 %or.cond.i968, label %do.body.i971, label %if.else.i972

do.body.i971:                                     ; preds = %r100_mm_wreg.exit964
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i969 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %244 = ptrtoint ptr %rmmio.i969 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %rmmio.i969, align 4
  %add.ptr.i970 = getelementptr i8, ptr %245, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i970, i32 17301504) #8, !srcloc !89
  br label %r100_mm_wreg.exit973

if.else.i972:                                     ; preds = %r100_mm_wreg.exit964
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 2049) #8
  br label %r100_mm_wreg.exit973

r100_mm_wreg.exit973:                             ; preds = %if.else.i972, %do.body.i971
  %246 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %247, i32 %add2)
  %cmp.i975 = icmp ugt i32 %247, %add2
  %or.cond.i977 = or i1 %cmp1.i526, %cmp.i975
  br i1 %or.cond.i977, label %do.body.i980, label %if.else.i981

do.body.i980:                                     ; preds = %r100_mm_wreg.exit973
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i978 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %248 = ptrtoint ptr %rmmio.i978 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %rmmio.i978, align 4
  %add.ptr.i979 = getelementptr i8, ptr %249, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i979, i32 -528097147) #8, !srcloc !89
  br label %r100_mm_wreg.exit982

if.else.i981:                                     ; preds = %r100_mm_wreg.exit973
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2048883232) #8
  br label %r100_mm_wreg.exit982

r100_mm_wreg.exit982:                             ; preds = %if.else.i981, %do.body.i980
  %250 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %251, i32 %add)
  %cmp.i984 = icmp ugt i32 %251, %add
  %or.cond.i986 = or i1 %cmp1.i517, %cmp.i984
  br i1 %or.cond.i986, label %do.body.i989, label %if.else.i990

do.body.i989:                                     ; preds = %r100_mm_wreg.exit982
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i987 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %252 = ptrtoint ptr %rmmio.i987 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %rmmio.i987, align 4
  %add.ptr.i988 = getelementptr i8, ptr %253, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i988, i32 34078720) #8, !srcloc !89
  br label %r100_mm_wreg.exit991

if.else.i990:                                     ; preds = %r100_mm_wreg.exit982
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 2050) #8
  br label %r100_mm_wreg.exit991

r100_mm_wreg.exit991:                             ; preds = %if.else.i990, %do.body.i989
  %254 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %255, i32 %add2)
  %cmp.i993 = icmp ugt i32 %255, %add2
  %or.cond.i995 = or i1 %cmp1.i526, %cmp.i993
  br i1 %or.cond.i995, label %do.body.i998, label %if.else.i999

do.body.i998:                                     ; preds = %r100_mm_wreg.exit991
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i996 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %256 = ptrtoint ptr %rmmio.i996 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %rmmio.i996, align 4
  %add.ptr.i997 = getelementptr i8, ptr %257, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i997, i32 679671999) #8, !srcloc !89
  br label %r100_mm_wreg.exit1000

if.else.i999:                                     ; preds = %r100_mm_wreg.exit991
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -1074232792) #8
  br label %r100_mm_wreg.exit1000

r100_mm_wreg.exit1000:                            ; preds = %if.else.i999, %do.body.i998
  %258 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %259, i32 %add)
  %cmp.i1002 = icmp ugt i32 %259, %add
  %or.cond.i1004 = or i1 %cmp1.i517, %cmp.i1002
  br i1 %or.cond.i1004, label %do.body.i1007, label %if.else.i1008

do.body.i1007:                                    ; preds = %r100_mm_wreg.exit1000
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1005 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %260 = ptrtoint ptr %rmmio.i1005 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %rmmio.i1005, align 4
  %add.ptr.i1006 = getelementptr i8, ptr %261, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1006, i32 256) #8, !srcloc !89
  br label %r100_mm_wreg.exit1009

if.else.i1008:                                    ; preds = %r100_mm_wreg.exit1000
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 65536) #8
  br label %r100_mm_wreg.exit1009

r100_mm_wreg.exit1009:                            ; preds = %if.else.i1008, %do.body.i1007
  %262 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %263, i32 %add2)
  %cmp.i1011 = icmp ugt i32 %263, %add2
  %or.cond.i1013 = or i1 %cmp1.i526, %cmp.i1011
  br i1 %or.cond.i1013, label %do.body.i1016, label %if.else.i1017

do.body.i1016:                                    ; preds = %r100_mm_wreg.exit1009
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1014 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %264 = ptrtoint ptr %rmmio.i1014 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %rmmio.i1014, align 4
  %add.ptr.i1015 = getelementptr i8, ptr %265, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1015, i32 12560514) #8, !srcloc !89
  br label %r100_mm_wreg.exit1018

if.else.i1017:                                    ; preds = %r100_mm_wreg.exit1009
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2102870272) #8
  br label %r100_mm_wreg.exit1018

r100_mm_wreg.exit1018:                            ; preds = %if.else.i1017, %do.body.i1016
  %266 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %267, i32 %add)
  %cmp.i1020 = icmp ugt i32 %267, %add
  %or.cond.i1022 = or i1 %cmp1.i517, %cmp.i1020
  br i1 %or.cond.i1022, label %do.body.i1025, label %if.else.i1026

do.body.i1025:                                    ; preds = %r100_mm_wreg.exit1018
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1023 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %268 = ptrtoint ptr %rmmio.i1023 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %rmmio.i1023, align 4
  %add.ptr.i1024 = getelementptr i8, ptr %269, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1024, i32 16777472) #8, !srcloc !89
  br label %r100_mm_wreg.exit1027

if.else.i1026:                                    ; preds = %r100_mm_wreg.exit1018
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 65537) #8
  br label %r100_mm_wreg.exit1027

r100_mm_wreg.exit1027:                            ; preds = %if.else.i1026, %do.body.i1025
  %270 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %271, i32 %add2)
  %cmp.i1029 = icmp ugt i32 %271, %add2
  %or.cond.i1031 = or i1 %cmp1.i526, %cmp.i1029
  br i1 %or.cond.i1031, label %do.body.i1034, label %if.else.i1035

do.body.i1034:                                    ; preds = %r100_mm_wreg.exit1027
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1032 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %272 = ptrtoint ptr %rmmio.i1032 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %rmmio.i1032, align 4
  %add.ptr.i1033 = getelementptr i8, ptr %273, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1033, i32 -1064525694) #8, !srcloc !89
  br label %r100_mm_wreg.exit1036

if.else.i1035:                                    ; preds = %r100_mm_wreg.exit1027
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2103407424) #8
  br label %r100_mm_wreg.exit1036

r100_mm_wreg.exit1036:                            ; preds = %if.else.i1035, %do.body.i1034
  %274 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %275, i32 %add)
  %cmp.i1038 = icmp ugt i32 %275, %add
  %or.cond.i1040 = or i1 %cmp1.i517, %cmp.i1038
  br i1 %or.cond.i1040, label %do.body.i1043, label %if.else.i1044

do.body.i1043:                                    ; preds = %r100_mm_wreg.exit1036
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1041 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %276 = ptrtoint ptr %rmmio.i1041 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %rmmio.i1041, align 4
  %add.ptr.i1042 = getelementptr i8, ptr %277, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1042, i32 33554688) #8, !srcloc !89
  br label %r100_mm_wreg.exit1045

if.else.i1044:                                    ; preds = %r100_mm_wreg.exit1036
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 65538) #8
  br label %r100_mm_wreg.exit1045

r100_mm_wreg.exit1045:                            ; preds = %if.else.i1044, %do.body.i1043
  %278 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %279, i32 %add2)
  %cmp.i1047 = icmp ugt i32 %279, %add2
  %or.cond.i1049 = or i1 %cmp1.i526, %cmp.i1047
  br i1 %or.cond.i1049, label %do.body.i1052, label %if.else.i1053

do.body.i1052:                                    ; preds = %r100_mm_wreg.exit1045
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1050 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %280 = ptrtoint ptr %rmmio.i1050 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %rmmio.i1050, align 4
  %add.ptr.i1051 = getelementptr i8, ptr %281, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1051, i32 -121763712) #8, !srcloc !89
  br label %r100_mm_wreg.exit1054

if.else.i1053:                                    ; preds = %r100_mm_wreg.exit1045
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2146910472) #8
  br label %r100_mm_wreg.exit1054

r100_mm_wreg.exit1054:                            ; preds = %if.else.i1053, %do.body.i1052
  %282 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %283, i32 %add)
  %cmp.i1056 = icmp ugt i32 %283, %add
  %or.cond.i1058 = or i1 %cmp1.i517, %cmp.i1056
  br i1 %or.cond.i1058, label %do.body.i1061, label %if.else.i1062

do.body.i1061:                                    ; preds = %r100_mm_wreg.exit1054
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1059 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %284 = ptrtoint ptr %rmmio.i1059 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %rmmio.i1059, align 4
  %add.ptr.i1060 = getelementptr i8, ptr %285, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1060, i32 65792) #8, !srcloc !89
  br label %r100_mm_wreg.exit1063

if.else.i1062:                                    ; preds = %r100_mm_wreg.exit1054
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 65792) #8
  br label %r100_mm_wreg.exit1063

r100_mm_wreg.exit1063:                            ; preds = %if.else.i1062, %do.body.i1061
  %286 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %287, i32 %add2)
  %cmp.i1065 = icmp ugt i32 %287, %add2
  %or.cond.i1067 = or i1 %cmp1.i526, %cmp.i1065
  br i1 %or.cond.i1067, label %do.body.i1070, label %if.else.i1071

do.body.i1070:                                    ; preds = %r100_mm_wreg.exit1063
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1068 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %288 = ptrtoint ptr %rmmio.i1068 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %rmmio.i1068, align 4
  %add.ptr.i1069 = getelementptr i8, ptr %289, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1069, i32 683667585) #8, !srcloc !89
  br label %r100_mm_wreg.exit1072

if.else.i1071:                                    ; preds = %r100_mm_wreg.exit1063
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2114928856) #8
  br label %r100_mm_wreg.exit1072

r100_mm_wreg.exit1072:                            ; preds = %if.else.i1071, %do.body.i1070
  %290 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %291, i32 %add)
  %cmp.i1074 = icmp ugt i32 %291, %add
  %or.cond.i1076 = or i1 %cmp1.i517, %cmp.i1074
  br i1 %or.cond.i1076, label %do.body.i1079, label %if.else.i1080

do.body.i1079:                                    ; preds = %r100_mm_wreg.exit1072
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1077 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %292 = ptrtoint ptr %rmmio.i1077 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %rmmio.i1077, align 4
  %add.ptr.i1078 = getelementptr i8, ptr %293, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1078, i32 16843008) #8, !srcloc !89
  br label %r100_mm_wreg.exit1081

if.else.i1080:                                    ; preds = %r100_mm_wreg.exit1072
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 65793) #8
  br label %r100_mm_wreg.exit1081

r100_mm_wreg.exit1081:                            ; preds = %if.else.i1080, %do.body.i1079
  %294 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %295, i32 %add2)
  %cmp.i1083 = icmp ugt i32 %295, %add2
  %or.cond.i1085 = or i1 %cmp1.i526, %cmp.i1083
  br i1 %or.cond.i1085, label %do.body.i1088, label %if.else.i1089

do.body.i1088:                                    ; preds = %r100_mm_wreg.exit1081
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1086 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %296 = ptrtoint ptr %rmmio.i1086 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %rmmio.i1086, align 4
  %add.ptr.i1087 = getelementptr i8, ptr %297, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1087, i32 -1601412989) #8, !srcloc !89
  br label %r100_mm_wreg.exit1090

if.else.i1089:                                    ; preds = %r100_mm_wreg.exit1081
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2090824544) #8
  br label %r100_mm_wreg.exit1090

r100_mm_wreg.exit1090:                            ; preds = %if.else.i1089, %do.body.i1088
  %298 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %299, i32 %add)
  %cmp.i1092 = icmp ugt i32 %299, %add
  %or.cond.i1094 = or i1 %cmp1.i517, %cmp.i1092
  br i1 %or.cond.i1094, label %do.body.i1097, label %if.else.i1098

do.body.i1097:                                    ; preds = %r100_mm_wreg.exit1090
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1095 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %300 = ptrtoint ptr %rmmio.i1095 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %rmmio.i1095, align 4
  %add.ptr.i1096 = getelementptr i8, ptr %301, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1096, i32 33620224) #8, !srcloc !89
  br label %r100_mm_wreg.exit1099

if.else.i1098:                                    ; preds = %r100_mm_wreg.exit1090
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 65794) #8
  br label %r100_mm_wreg.exit1099

r100_mm_wreg.exit1099:                            ; preds = %if.else.i1098, %do.body.i1097
  %302 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %303, i32 %add2)
  %cmp.i1101 = icmp ugt i32 %303, %add2
  %or.cond.i1103 = or i1 %cmp1.i526, %cmp.i1101
  br i1 %or.cond.i1103, label %do.body.i1106, label %if.else.i1107

do.body.i1106:                                    ; preds = %r100_mm_wreg.exit1099
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1104 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %304 = ptrtoint ptr %rmmio.i1104 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %rmmio.i1104, align 4
  %add.ptr.i1105 = getelementptr i8, ptr %305, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1105, i32 -792848256) #8, !srcloc !89
  br label %r100_mm_wreg.exit1108

if.else.i1107:                                    ; preds = %r100_mm_wreg.exit1099
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2145861936) #8
  br label %r100_mm_wreg.exit1108

r100_mm_wreg.exit1108:                            ; preds = %if.else.i1107, %do.body.i1106
  %306 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %307, i32 %add)
  %cmp.i1110 = icmp ugt i32 %307, %add
  %or.cond.i1112 = or i1 %cmp1.i517, %cmp.i1110
  br i1 %or.cond.i1112, label %do.body.i1115, label %if.else.i1116

do.body.i1115:                                    ; preds = %r100_mm_wreg.exit1108
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1113 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %308 = ptrtoint ptr %rmmio.i1113 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %rmmio.i1113, align 4
  %add.ptr.i1114 = getelementptr i8, ptr %309, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1114, i32 131328) #8, !srcloc !89
  br label %r100_mm_wreg.exit1117

if.else.i1116:                                    ; preds = %r100_mm_wreg.exit1108
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 66048) #8
  br label %r100_mm_wreg.exit1117

r100_mm_wreg.exit1117:                            ; preds = %if.else.i1116, %do.body.i1115
  %310 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %311, i32 %add2)
  %cmp.i1119 = icmp ugt i32 %311, %add2
  %or.cond.i1121 = or i1 %cmp1.i526, %cmp.i1119
  br i1 %or.cond.i1121, label %do.body.i1124, label %if.else.i1125

do.body.i1124:                                    ; preds = %r100_mm_wreg.exit1117
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1122 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %312 = ptrtoint ptr %rmmio.i1122 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %rmmio.i1122, align 4
  %add.ptr.i1123 = getelementptr i8, ptr %313, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1123, i32 952060033) #8, !srcloc !89
  br label %r100_mm_wreg.exit1126

if.else.i1125:                                    ; preds = %r100_mm_wreg.exit1117
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2125938888) #8
  br label %r100_mm_wreg.exit1126

r100_mm_wreg.exit1126:                            ; preds = %if.else.i1125, %do.body.i1124
  %314 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %315, i32 %add)
  %cmp.i1128 = icmp ugt i32 %315, %add
  %or.cond.i1130 = or i1 %cmp1.i517, %cmp.i1128
  br i1 %or.cond.i1130, label %do.body.i1133, label %if.else.i1134

do.body.i1133:                                    ; preds = %r100_mm_wreg.exit1126
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1131 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %316 = ptrtoint ptr %rmmio.i1131 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %rmmio.i1131, align 4
  %add.ptr.i1132 = getelementptr i8, ptr %317, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1132, i32 16908544) #8, !srcloc !89
  br label %r100_mm_wreg.exit1135

if.else.i1134:                                    ; preds = %r100_mm_wreg.exit1126
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 66049) #8
  br label %r100_mm_wreg.exit1135

r100_mm_wreg.exit1135:                            ; preds = %if.else.i1134, %do.body.i1133
  %318 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %319, i32 %add2)
  %cmp.i1137 = icmp ugt i32 %319, %add2
  %or.cond.i1139 = or i1 %cmp1.i526, %cmp.i1137
  br i1 %or.cond.i1139, label %do.body.i1142, label %if.else.i1143

do.body.i1142:                                    ; preds = %r100_mm_wreg.exit1135
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1140 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %320 = ptrtoint ptr %rmmio.i1140 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %rmmio.i1140, align 4
  %add.ptr.i1141 = getelementptr i8, ptr %321, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1141, i32 -2138292092) #8, !srcloc !89
  br label %r100_mm_wreg.exit1144

if.else.i1143:                                    ; preds = %r100_mm_wreg.exit1135
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2076144512) #8
  br label %r100_mm_wreg.exit1144

r100_mm_wreg.exit1144:                            ; preds = %if.else.i1143, %do.body.i1142
  %322 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %323, i32 %add)
  %cmp.i1146 = icmp ugt i32 %323, %add
  %or.cond.i1148 = or i1 %cmp1.i517, %cmp.i1146
  br i1 %or.cond.i1148, label %do.body.i1151, label %if.else.i1152

do.body.i1151:                                    ; preds = %r100_mm_wreg.exit1144
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1149 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %324 = ptrtoint ptr %rmmio.i1149 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %rmmio.i1149, align 4
  %add.ptr.i1150 = getelementptr i8, ptr %325, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1150, i32 33685760) #8, !srcloc !89
  br label %r100_mm_wreg.exit1153

if.else.i1152:                                    ; preds = %r100_mm_wreg.exit1144
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 66050) #8
  br label %r100_mm_wreg.exit1153

r100_mm_wreg.exit1153:                            ; preds = %if.else.i1152, %do.body.i1151
  %326 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %327, i32 %add2)
  %cmp.i1155 = icmp ugt i32 %327, %add2
  %or.cond.i1157 = or i1 %cmp1.i526, %cmp.i1155
  br i1 %or.cond.i1157, label %do.body.i1160, label %if.else.i1161

do.body.i1160:                                    ; preds = %r100_mm_wreg.exit1153
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1158 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %328 = ptrtoint ptr %rmmio.i1158 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %rmmio.i1158, align 4
  %add.ptr.i1159 = getelementptr i8, ptr %329, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1159, i32 -1195505536) #8, !srcloc !89
  br label %r100_mm_wreg.exit1162

if.else.i1161:                                    ; preds = %r100_mm_wreg.exit1153
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2146910536) #8
  br label %r100_mm_wreg.exit1162

r100_mm_wreg.exit1162:                            ; preds = %if.else.i1161, %do.body.i1160
  %330 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %331, i32 %add)
  %cmp.i1164 = icmp ugt i32 %331, %add
  %or.cond.i1166 = or i1 %cmp1.i517, %cmp.i1164
  br i1 %or.cond.i1166, label %do.body.i1169, label %if.else.i1170

do.body.i1169:                                    ; preds = %r100_mm_wreg.exit1162
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1167 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %332 = ptrtoint ptr %rmmio.i1167 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %rmmio.i1167, align 4
  %add.ptr.i1168 = getelementptr i8, ptr %333, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1168, i32 196864) #8, !srcloc !89
  br label %r100_mm_wreg.exit1171

if.else.i1170:                                    ; preds = %r100_mm_wreg.exit1162
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 66304) #8
  br label %r100_mm_wreg.exit1171

r100_mm_wreg.exit1171:                            ; preds = %if.else.i1170, %do.body.i1169
  %334 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %335, i32 %add2)
  %cmp.i1173 = icmp ugt i32 %335, %add2
  %or.cond.i1175 = or i1 %cmp1.i526, %cmp.i1173
  br i1 %or.cond.i1175, label %do.body.i1178, label %if.else.i1179

do.body.i1178:                                    ; preds = %r100_mm_wreg.exit1171
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1176 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %336 = ptrtoint ptr %rmmio.i1176 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %rmmio.i1176, align 4
  %add.ptr.i1177 = getelementptr i8, ptr %337, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1177, i32 2025828480) #8, !srcloc !89
  br label %r100_mm_wreg.exit1180

if.else.i1179:                                    ; preds = %r100_mm_wreg.exit1171
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2135900296) #8
  br label %r100_mm_wreg.exit1180

r100_mm_wreg.exit1180:                            ; preds = %if.else.i1179, %do.body.i1178
  %338 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %339, i32 %add)
  %cmp.i1182 = icmp ugt i32 %339, %add
  %or.cond.i1184 = or i1 %cmp1.i517, %cmp.i1182
  br i1 %or.cond.i1184, label %do.body.i1187, label %if.else.i1188

do.body.i1187:                                    ; preds = %r100_mm_wreg.exit1180
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1185 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %340 = ptrtoint ptr %rmmio.i1185 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %rmmio.i1185, align 4
  %add.ptr.i1186 = getelementptr i8, ptr %341, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1186, i32 16974080) #8, !srcloc !89
  br label %r100_mm_wreg.exit1189

if.else.i1188:                                    ; preds = %r100_mm_wreg.exit1180
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 66305) #8
  br label %r100_mm_wreg.exit1189

r100_mm_wreg.exit1189:                            ; preds = %if.else.i1188, %do.body.i1187
  %342 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %343, i32 %add2)
  %cmp.i1191 = icmp ugt i32 %343, %add2
  %or.cond.i1193 = or i1 %cmp1.i526, %cmp.i1191
  br i1 %or.cond.i1193, label %do.body.i1196, label %if.else.i1197

do.body.i1196:                                    ; preds = %r100_mm_wreg.exit1189
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1194 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %344 = ptrtoint ptr %rmmio.i1194 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %rmmio.i1194, align 4
  %add.ptr.i1195 = getelementptr i8, ptr %345, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1195, i32 546046085) #8, !srcloc !89
  br label %r100_mm_wreg.exit1198

if.else.i1197:                                    ; preds = %r100_mm_wreg.exit1189
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2063561696) #8
  br label %r100_mm_wreg.exit1198

r100_mm_wreg.exit1198:                            ; preds = %if.else.i1197, %do.body.i1196
  %346 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %347, i32 %add)
  %cmp.i1200 = icmp ugt i32 %347, %add
  %or.cond.i1202 = or i1 %cmp1.i517, %cmp.i1200
  br i1 %or.cond.i1202, label %do.body.i1205, label %if.else.i1206

do.body.i1205:                                    ; preds = %r100_mm_wreg.exit1198
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1203 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %348 = ptrtoint ptr %rmmio.i1203 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %rmmio.i1203, align 4
  %add.ptr.i1204 = getelementptr i8, ptr %349, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1204, i32 33751296) #8, !srcloc !89
  br label %r100_mm_wreg.exit1207

if.else.i1206:                                    ; preds = %r100_mm_wreg.exit1198
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 66306) #8
  br label %r100_mm_wreg.exit1207

r100_mm_wreg.exit1207:                            ; preds = %if.else.i1206, %do.body.i1205
  %350 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %351, i32 %add2)
  %cmp.i1209 = icmp ugt i32 %351, %add2
  %or.cond.i1211 = or i1 %cmp1.i526, %cmp.i1209
  br i1 %or.cond.i1211, label %do.body.i1214, label %if.else.i1215

do.body.i1214:                                    ; preds = %r100_mm_wreg.exit1207
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1212 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %352 = ptrtoint ptr %rmmio.i1212 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %rmmio.i1212, align 4
  %add.ptr.i1213 = getelementptr i8, ptr %353, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1213, i32 -1598152576) #8, !srcloc !89
  br label %r100_mm_wreg.exit1216

if.else.i1215:                                    ; preds = %r100_mm_wreg.exit1207
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2145337696) #8
  br label %r100_mm_wreg.exit1216

r100_mm_wreg.exit1216:                            ; preds = %if.else.i1215, %do.body.i1214
  %354 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %355, i32 %add)
  %cmp.i1218 = icmp ugt i32 %355, %add
  %or.cond.i1220 = or i1 %cmp1.i517, %cmp.i1218
  br i1 %or.cond.i1220, label %do.body.i1223, label %if.else.i1224

do.body.i1223:                                    ; preds = %r100_mm_wreg.exit1216
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1221 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %356 = ptrtoint ptr %rmmio.i1221 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %rmmio.i1221, align 4
  %add.ptr.i1222 = getelementptr i8, ptr %357, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1222, i32 262400) #8, !srcloc !89
  br label %r100_mm_wreg.exit1225

if.else.i1224:                                    ; preds = %r100_mm_wreg.exit1216
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 66560) #8
  br label %r100_mm_wreg.exit1225

r100_mm_wreg.exit1225:                            ; preds = %if.else.i1224, %do.body.i1223
  %358 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %359, i32 %add2)
  %cmp.i1227 = icmp ugt i32 %359, %add2
  %or.cond.i1229 = or i1 %cmp1.i526, %cmp.i1227
  br i1 %or.cond.i1229, label %do.body.i1232, label %if.else.i1233

do.body.i1232:                                    ; preds = %r100_mm_wreg.exit1225
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1230 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %360 = ptrtoint ptr %rmmio.i1230 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %rmmio.i1230, align 4
  %add.ptr.i1231 = getelementptr i8, ptr %361, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1231, i32 -1866520448) #8, !srcloc !89
  br label %r100_mm_wreg.exit1234

if.else.i1233:                                    ; preds = %r100_mm_wreg.exit1225
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2144813168) #8
  br label %r100_mm_wreg.exit1234

r100_mm_wreg.exit1234:                            ; preds = %if.else.i1233, %do.body.i1232
  %362 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %363, i32 %add)
  %cmp.i1236 = icmp ugt i32 %363, %add
  %or.cond.i1238 = or i1 %cmp1.i517, %cmp.i1236
  br i1 %or.cond.i1238, label %do.body.i1241, label %if.else.i1242

do.body.i1241:                                    ; preds = %r100_mm_wreg.exit1234
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1239 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %364 = ptrtoint ptr %rmmio.i1239 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %rmmio.i1239, align 4
  %add.ptr.i1240 = getelementptr i8, ptr %365, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1240, i32 17039616) #8, !srcloc !89
  br label %r100_mm_wreg.exit1243

if.else.i1242:                                    ; preds = %r100_mm_wreg.exit1234
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 66561) #8
  br label %r100_mm_wreg.exit1243

r100_mm_wreg.exit1243:                            ; preds = %if.else.i1242, %do.body.i1241
  %366 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %367, i32 %add2)
  %cmp.i1245 = icmp ugt i32 %367, %add2
  %or.cond.i1247 = or i1 %cmp1.i526, %cmp.i1245
  br i1 %or.cond.i1247, label %do.body.i1250, label %if.else.i1251

do.body.i1250:                                    ; preds = %r100_mm_wreg.exit1243
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1248 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %368 = ptrtoint ptr %rmmio.i1248 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %rmmio.i1248, align 4
  %add.ptr.i1249 = getelementptr i8, ptr %369, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1249, i32 -1064574843) #8, !srcloc !89
  br label %r100_mm_wreg.exit1252

if.else.i1251:                                    ; preds = %r100_mm_wreg.exit1243
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2048881728) #8
  br label %r100_mm_wreg.exit1252

r100_mm_wreg.exit1252:                            ; preds = %if.else.i1251, %do.body.i1250
  %370 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %371, i32 %add)
  %cmp.i1254 = icmp ugt i32 %371, %add
  %or.cond.i1256 = or i1 %cmp1.i517, %cmp.i1254
  br i1 %or.cond.i1256, label %do.body.i1259, label %if.else.i1260

do.body.i1259:                                    ; preds = %r100_mm_wreg.exit1252
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1257 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %372 = ptrtoint ptr %rmmio.i1257 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %rmmio.i1257, align 4
  %add.ptr.i1258 = getelementptr i8, ptr %373, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1258, i32 33816832) #8, !srcloc !89
  br label %r100_mm_wreg.exit1261

if.else.i1260:                                    ; preds = %r100_mm_wreg.exit1252
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 66562) #8
  br label %r100_mm_wreg.exit1261

r100_mm_wreg.exit1261:                            ; preds = %if.else.i1260, %do.body.i1259
  %374 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %375, i32 %add2)
  %cmp.i1263 = icmp ugt i32 %375, %add2
  %or.cond.i1265 = or i1 %cmp1.i526, %cmp.i1263
  br i1 %or.cond.i1265, label %do.body.i1268, label %if.else.i1269

do.body.i1268:                                    ; preds = %r100_mm_wreg.exit1261
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1266 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %376 = ptrtoint ptr %rmmio.i1266 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %rmmio.i1266, align 4
  %add.ptr.i1267 = getelementptr i8, ptr %377, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1267, i32 -1866590080) #8, !srcloc !89
  br label %r100_mm_wreg.exit1270

if.else.i1269:                                    ; preds = %r100_mm_wreg.exit1261
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2145862000) #8
  br label %r100_mm_wreg.exit1270

r100_mm_wreg.exit1270:                            ; preds = %if.else.i1269, %do.body.i1268
  %378 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %379, i32 %add)
  %cmp.i1272 = icmp ugt i32 %379, %add
  %or.cond.i1274 = or i1 %cmp1.i517, %cmp.i1272
  br i1 %or.cond.i1274, label %do.body.i1277, label %if.else.i1278

do.body.i1277:                                    ; preds = %r100_mm_wreg.exit1270
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1275 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %380 = ptrtoint ptr %rmmio.i1275 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %rmmio.i1275, align 4
  %add.ptr.i1276 = getelementptr i8, ptr %381, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1276, i32 327936) #8, !srcloc !89
  br label %r100_mm_wreg.exit1279

if.else.i1278:                                    ; preds = %r100_mm_wreg.exit1270
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 66816) #8
  br label %r100_mm_wreg.exit1279

r100_mm_wreg.exit1279:                            ; preds = %if.else.i1278, %do.body.i1277
  %382 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %383, i32 %add2)
  %cmp.i1281 = icmp ugt i32 %383, %add2
  %or.cond.i1283 = or i1 %cmp1.i526, %cmp.i1281
  br i1 %or.cond.i1283, label %do.body.i1286, label %if.else.i1287

do.body.i1286:                                    ; preds = %r100_mm_wreg.exit1279
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1284 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %384 = ptrtoint ptr %rmmio.i1284 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %rmmio.i1284, align 4
  %add.ptr.i1285 = getelementptr i8, ptr %385, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1285, i32 -1329612609) #8, !srcloc !89
  br label %r100_mm_wreg.exit1288

if.else.i1287:                                    ; preds = %r100_mm_wreg.exit1279
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -1078411344) #8
  br label %r100_mm_wreg.exit1288

r100_mm_wreg.exit1288:                            ; preds = %if.else.i1287, %do.body.i1286
  %386 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %387, i32 %add)
  %cmp.i1290 = icmp ugt i32 %387, %add
  %or.cond.i1292 = or i1 %cmp1.i517, %cmp.i1290
  br i1 %or.cond.i1292, label %do.body.i1295, label %if.else.i1296

do.body.i1295:                                    ; preds = %r100_mm_wreg.exit1288
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1293 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %388 = ptrtoint ptr %rmmio.i1293 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %rmmio.i1293, align 4
  %add.ptr.i1294 = getelementptr i8, ptr %389, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1294, i32 17105152) #8, !srcloc !89
  br label %r100_mm_wreg.exit1297

if.else.i1296:                                    ; preds = %r100_mm_wreg.exit1288
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 66817) #8
  br label %r100_mm_wreg.exit1297

r100_mm_wreg.exit1297:                            ; preds = %if.else.i1296, %do.body.i1295
  %390 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %391, i32 %add2)
  %cmp.i1299 = icmp ugt i32 %391, %add2
  %or.cond.i1301 = or i1 %cmp1.i526, %cmp.i1299
  br i1 %or.cond.i1301, label %do.body.i1304, label %if.else.i1305

do.body.i1304:                                    ; preds = %r100_mm_wreg.exit1297
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1302 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %392 = ptrtoint ptr %rmmio.i1302 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %rmmio.i1302, align 4
  %add.ptr.i1303 = getelementptr i8, ptr %393, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1303, i32 1082900614) #8, !srcloc !89
  br label %r100_mm_wreg.exit1306

if.else.i1305:                                    ; preds = %r100_mm_wreg.exit1297
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2034201792) #8
  br label %r100_mm_wreg.exit1306

r100_mm_wreg.exit1306:                            ; preds = %if.else.i1305, %do.body.i1304
  %394 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %395, i32 %add)
  %cmp.i1308 = icmp ugt i32 %395, %add
  %or.cond.i1310 = or i1 %cmp1.i517, %cmp.i1308
  br i1 %or.cond.i1310, label %do.body.i1313, label %if.else.i1314

do.body.i1313:                                    ; preds = %r100_mm_wreg.exit1306
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1311 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %396 = ptrtoint ptr %rmmio.i1311 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %rmmio.i1311, align 4
  %add.ptr.i1312 = getelementptr i8, ptr %397, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1312, i32 33882368) #8, !srcloc !89
  br label %r100_mm_wreg.exit1315

if.else.i1314:                                    ; preds = %r100_mm_wreg.exit1306
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 66818) #8
  br label %r100_mm_wreg.exit1315

r100_mm_wreg.exit1315:                            ; preds = %if.else.i1314, %do.body.i1313
  %398 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %399, i32 %add2)
  %cmp.i1317 = icmp ugt i32 %399, %add2
  %or.cond.i1319 = or i1 %cmp1.i526, %cmp.i1317
  br i1 %or.cond.i1319, label %do.body.i1322, label %if.else.i1323

do.body.i1322:                                    ; preds = %r100_mm_wreg.exit1315
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1320 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %400 = ptrtoint ptr %rmmio.i1320 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %rmmio.i1320, align 4
  %add.ptr.i1321 = getelementptr i8, ptr %401, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1321, i32 -1866592128) #8, !srcloc !89
  br label %r100_mm_wreg.exit1324

if.else.i1323:                                    ; preds = %r100_mm_wreg.exit1315
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2146386288) #8
  br label %r100_mm_wreg.exit1324

r100_mm_wreg.exit1324:                            ; preds = %if.else.i1323, %do.body.i1322
  %402 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %403, i32 %add)
  %cmp.i1326 = icmp ugt i32 %403, %add
  %or.cond.i1328 = or i1 %cmp1.i517, %cmp.i1326
  br i1 %or.cond.i1328, label %do.body.i1331, label %if.else.i1332

do.body.i1331:                                    ; preds = %r100_mm_wreg.exit1324
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1329 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %404 = ptrtoint ptr %rmmio.i1329 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %rmmio.i1329, align 4
  %add.ptr.i1330 = getelementptr i8, ptr %405, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1330, i32 393472) #8, !srcloc !89
  br label %r100_mm_wreg.exit1333

if.else.i1332:                                    ; preds = %r100_mm_wreg.exit1324
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 67072) #8
  br label %r100_mm_wreg.exit1333

r100_mm_wreg.exit1333:                            ; preds = %if.else.i1332, %do.body.i1331
  %406 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %407, i32 %add2)
  %cmp.i1335 = icmp ugt i32 %407, %add2
  %or.cond.i1337 = or i1 %cmp1.i526, %cmp.i1335
  br i1 %or.cond.i1337, label %do.body.i1340, label %if.else.i1341

do.body.i1340:                                    ; preds = %r100_mm_wreg.exit1333
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1338 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %408 = ptrtoint ptr %rmmio.i1338 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %rmmio.i1338, align 4
  %add.ptr.i1339 = getelementptr i8, ptr %409, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1339, i32 -926984001) #8, !srcloc !89
  br label %r100_mm_wreg.exit1342

if.else.i1341:                                    ; preds = %r100_mm_wreg.exit1333
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -1084702776) #8
  br label %r100_mm_wreg.exit1342

r100_mm_wreg.exit1342:                            ; preds = %if.else.i1341, %do.body.i1340
  %410 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %411, i32 %add)
  %cmp.i1344 = icmp ugt i32 %411, %add
  %or.cond.i1346 = or i1 %cmp1.i517, %cmp.i1344
  br i1 %or.cond.i1346, label %do.body.i1349, label %if.else.i1350

do.body.i1349:                                    ; preds = %r100_mm_wreg.exit1342
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1347 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %412 = ptrtoint ptr %rmmio.i1347 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %rmmio.i1347, align 4
  %add.ptr.i1348 = getelementptr i8, ptr %413, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1348, i32 17170688) #8, !srcloc !89
  br label %r100_mm_wreg.exit1351

if.else.i1350:                                    ; preds = %r100_mm_wreg.exit1342
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 67073) #8
  br label %r100_mm_wreg.exit1351

r100_mm_wreg.exit1351:                            ; preds = %if.else.i1350, %do.body.i1349
  %414 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %415, i32 %add2)
  %cmp.i1353 = icmp ugt i32 %415, %add2
  %or.cond.i1355 = or i1 %cmp1.i526, %cmp.i1353
  br i1 %or.cond.i1355, label %do.body.i1358, label %if.else.i1359

do.body.i1358:                                    ; preds = %r100_mm_wreg.exit1351
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1356 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %416 = ptrtoint ptr %rmmio.i1356 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %rmmio.i1356, align 4
  %add.ptr.i1357 = getelementptr i8, ptr %417, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1357, i32 -1601527673) #8, !srcloc !89
  br label %r100_mm_wreg.exit1360

if.else.i1359:                                    ; preds = %r100_mm_wreg.exit1351
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2019521888) #8
  br label %r100_mm_wreg.exit1360

r100_mm_wreg.exit1360:                            ; preds = %if.else.i1359, %do.body.i1358
  %418 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %419, i32 %add)
  %cmp.i1362 = icmp ugt i32 %419, %add
  %or.cond.i1364 = or i1 %cmp1.i517, %cmp.i1362
  br i1 %or.cond.i1364, label %do.body.i1367, label %if.else.i1368

do.body.i1367:                                    ; preds = %r100_mm_wreg.exit1360
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1365 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %420 = ptrtoint ptr %rmmio.i1365 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %rmmio.i1365, align 4
  %add.ptr.i1366 = getelementptr i8, ptr %421, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1366, i32 33947904) #8, !srcloc !89
  br label %r100_mm_wreg.exit1369

if.else.i1368:                                    ; preds = %r100_mm_wreg.exit1360
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 67074) #8
  br label %r100_mm_wreg.exit1369

r100_mm_wreg.exit1369:                            ; preds = %if.else.i1368, %do.body.i1367
  %422 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %423, i32 %add2)
  %cmp.i1371 = icmp ugt i32 %423, %add2
  %or.cond.i1373 = or i1 %cmp1.i526, %cmp.i1371
  br i1 %or.cond.i1373, label %do.body.i1376, label %if.else.i1377

do.body.i1376:                                    ; preds = %r100_mm_wreg.exit1369
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1374 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %424 = ptrtoint ptr %rmmio.i1374 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %rmmio.i1374, align 4
  %add.ptr.i1375 = getelementptr i8, ptr %425, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1375, i32 -1732374400) #8, !srcloc !89
  br label %r100_mm_wreg.exit1378

if.else.i1377:                                    ; preds = %r100_mm_wreg.exit1369
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2146386280) #8
  br label %r100_mm_wreg.exit1378

r100_mm_wreg.exit1378:                            ; preds = %if.else.i1377, %do.body.i1376
  %426 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %427, i32 %add)
  %cmp.i1380 = icmp ugt i32 %427, %add
  %or.cond.i1382 = or i1 %cmp1.i517, %cmp.i1380
  br i1 %or.cond.i1382, label %do.body.i1385, label %if.else.i1386

do.body.i1385:                                    ; preds = %r100_mm_wreg.exit1378
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1383 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %428 = ptrtoint ptr %rmmio.i1383 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %rmmio.i1383, align 4
  %add.ptr.i1384 = getelementptr i8, ptr %429, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1384, i32 459008) #8, !srcloc !89
  br label %r100_mm_wreg.exit1387

if.else.i1386:                                    ; preds = %r100_mm_wreg.exit1378
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 67328) #8
  br label %r100_mm_wreg.exit1387

r100_mm_wreg.exit1387:                            ; preds = %if.else.i1386, %do.body.i1385
  %430 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %431, i32 %add2)
  %cmp.i1389 = icmp ugt i32 %431, %add2
  %or.cond.i1391 = or i1 %cmp1.i526, %cmp.i1389
  br i1 %or.cond.i1391, label %do.body.i1394, label %if.else.i1395

do.body.i1394:                                    ; preds = %r100_mm_wreg.exit1387
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1392 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %432 = ptrtoint ptr %rmmio.i1392 to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %rmmio.i1392, align 4
  %add.ptr.i1393 = getelementptr i8, ptr %433, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1393, i32 -255913793) #8, !srcloc !89
  br label %r100_mm_wreg.exit1396

if.else.i1395:                                    ; preds = %r100_mm_wreg.exit1387
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -1089421328) #8
  br label %r100_mm_wreg.exit1396

r100_mm_wreg.exit1396:                            ; preds = %if.else.i1395, %do.body.i1394
  %434 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %435, i32 %add)
  %cmp.i1398 = icmp ugt i32 %435, %add
  %or.cond.i1400 = or i1 %cmp1.i517, %cmp.i1398
  br i1 %or.cond.i1400, label %do.body.i1403, label %if.else.i1404

do.body.i1403:                                    ; preds = %r100_mm_wreg.exit1396
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1401 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %436 = ptrtoint ptr %rmmio.i1401 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %rmmio.i1401, align 4
  %add.ptr.i1402 = getelementptr i8, ptr %437, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1402, i32 17236224) #8, !srcloc !89
  br label %r100_mm_wreg.exit1405

if.else.i1404:                                    ; preds = %r100_mm_wreg.exit1396
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 67329) #8
  br label %r100_mm_wreg.exit1405

r100_mm_wreg.exit1405:                            ; preds = %if.else.i1404, %do.body.i1403
  %438 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %439, i32 %add2)
  %cmp.i1407 = icmp ugt i32 %439, %add2
  %or.cond.i1409 = or i1 %cmp1.i526, %cmp.i1407
  br i1 %or.cond.i1409, label %do.body.i1412, label %if.else.i1413

do.body.i1412:                                    ; preds = %r100_mm_wreg.exit1405
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1410 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %440 = ptrtoint ptr %rmmio.i1410 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %rmmio.i1410, align 4
  %add.ptr.i1411 = getelementptr i8, ptr %441, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1411, i32 -527867768) #8, !srcloc !89
  br label %r100_mm_wreg.exit1414

if.else.i1413:                                    ; preds = %r100_mm_wreg.exit1405
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2006939168) #8
  br label %r100_mm_wreg.exit1414

r100_mm_wreg.exit1414:                            ; preds = %if.else.i1413, %do.body.i1412
  %442 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %443, i32 %add)
  %cmp.i1416 = icmp ugt i32 %443, %add
  %or.cond.i1418 = or i1 %cmp1.i517, %cmp.i1416
  br i1 %or.cond.i1418, label %do.body.i1421, label %if.else.i1422

do.body.i1421:                                    ; preds = %r100_mm_wreg.exit1414
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1419 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %444 = ptrtoint ptr %rmmio.i1419 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %rmmio.i1419, align 4
  %add.ptr.i1420 = getelementptr i8, ptr %445, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1420, i32 34013440) #8, !srcloc !89
  br label %r100_mm_wreg.exit1423

if.else.i1422:                                    ; preds = %r100_mm_wreg.exit1414
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 67330) #8
  br label %r100_mm_wreg.exit1423

r100_mm_wreg.exit1423:                            ; preds = %if.else.i1422, %do.body.i1421
  %446 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %447, i32 %add2)
  %cmp.i1425 = icmp ugt i32 %447, %add2
  %or.cond.i1427 = or i1 %cmp1.i526, %cmp.i1425
  br i1 %or.cond.i1427, label %do.body.i1430, label %if.else.i1431

do.body.i1430:                                    ; preds = %r100_mm_wreg.exit1423
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1428 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %448 = ptrtoint ptr %rmmio.i1428 to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %rmmio.i1428, align 4
  %add.ptr.i1429 = getelementptr i8, ptr %449, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1429, i32 -1329719168) #8, !srcloc !89
  br label %r100_mm_wreg.exit1432

if.else.i1431:                                    ; preds = %r100_mm_wreg.exit1423
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2145861968) #8
  br label %r100_mm_wreg.exit1432

r100_mm_wreg.exit1432:                            ; preds = %if.else.i1431, %do.body.i1430
  %450 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %451, i32 %add)
  %cmp.i1434 = icmp ugt i32 %451, %add
  %or.cond.i1436 = or i1 %cmp1.i517, %cmp.i1434
  br i1 %or.cond.i1436, label %do.body.i1439, label %if.else.i1440

do.body.i1439:                                    ; preds = %r100_mm_wreg.exit1432
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1437 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %452 = ptrtoint ptr %rmmio.i1437 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %rmmio.i1437, align 4
  %add.ptr.i1438 = getelementptr i8, ptr %453, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1438, i32 524544) #8, !srcloc !89
  br label %r100_mm_wreg.exit1441

if.else.i1440:                                    ; preds = %r100_mm_wreg.exit1432
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 67584) #8
  br label %r100_mm_wreg.exit1441

r100_mm_wreg.exit1441:                            ; preds = %if.else.i1440, %do.body.i1439
  %454 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %455, i32 %add2)
  %cmp.i1443 = icmp ugt i32 %455, %add2
  %or.cond.i1445 = or i1 %cmp1.i526, %cmp.i1443
  br i1 %or.cond.i1445, label %do.body.i1448, label %if.else.i1449

do.body.i1448:                                    ; preds = %r100_mm_wreg.exit1441
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1446 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %456 = ptrtoint ptr %rmmio.i1446 to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %rmmio.i1446, align 4
  %add.ptr.i1447 = getelementptr i8, ptr %457, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1447, i32 -390080322) #8, !srcloc !89
  br label %r100_mm_wreg.exit1450

if.else.i1449:                                    ; preds = %r100_mm_wreg.exit1441
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -1093091352) #8
  br label %r100_mm_wreg.exit1450

r100_mm_wreg.exit1450:                            ; preds = %if.else.i1449, %do.body.i1448
  %458 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %459, i32 %add)
  %cmp.i1452 = icmp ugt i32 %459, %add
  %or.cond.i1454 = or i1 %cmp1.i517, %cmp.i1452
  br i1 %or.cond.i1454, label %do.body.i1457, label %if.else.i1458

do.body.i1457:                                    ; preds = %r100_mm_wreg.exit1450
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1455 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %460 = ptrtoint ptr %rmmio.i1455 to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %rmmio.i1455, align 4
  %add.ptr.i1456 = getelementptr i8, ptr %461, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1456, i32 17301760) #8, !srcloc !89
  br label %r100_mm_wreg.exit1459

if.else.i1458:                                    ; preds = %r100_mm_wreg.exit1450
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 67585) #8
  br label %r100_mm_wreg.exit1459

r100_mm_wreg.exit1459:                            ; preds = %if.else.i1458, %do.body.i1457
  %462 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %463, i32 %add2)
  %cmp.i1461 = icmp ugt i32 %463, %add2
  %or.cond.i1463 = or i1 %cmp1.i526, %cmp.i1461
  br i1 %or.cond.i1463, label %do.body.i1466, label %if.else.i1467

do.body.i1466:                                    ; preds = %r100_mm_wreg.exit1459
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1464 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %464 = ptrtoint ptr %rmmio.i1464 to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %rmmio.i1464, align 4
  %add.ptr.i1465 = getelementptr i8, ptr %465, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1465, i32 1082736777) #8, !srcloc !89
  br label %r100_mm_wreg.exit1468

if.else.i1467:                                    ; preds = %r100_mm_wreg.exit1459
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -1992259264) #8
  br label %r100_mm_wreg.exit1468

r100_mm_wreg.exit1468:                            ; preds = %if.else.i1467, %do.body.i1466
  %466 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %467, i32 %add)
  %cmp.i1470 = icmp ugt i32 %467, %add
  %or.cond.i1472 = or i1 %cmp1.i517, %cmp.i1470
  br i1 %or.cond.i1472, label %do.body.i1475, label %if.else.i1476

do.body.i1475:                                    ; preds = %r100_mm_wreg.exit1468
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1473 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %468 = ptrtoint ptr %rmmio.i1473 to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %rmmio.i1473, align 4
  %add.ptr.i1474 = getelementptr i8, ptr %469, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1474, i32 34078976) #8, !srcloc !89
  br label %r100_mm_wreg.exit1477

if.else.i1476:                                    ; preds = %r100_mm_wreg.exit1468
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 67586) #8
  br label %r100_mm_wreg.exit1477

r100_mm_wreg.exit1477:                            ; preds = %if.else.i1476, %do.body.i1475
  %470 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %471, i32 %add2)
  %cmp.i1479 = icmp ugt i32 %471, %add2
  %or.cond.i1481 = or i1 %cmp1.i526, %cmp.i1479
  br i1 %or.cond.i1481, label %do.body.i1484, label %if.else.i1485

do.body.i1484:                                    ; preds = %r100_mm_wreg.exit1477
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1482 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %472 = ptrtoint ptr %rmmio.i1482 to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %rmmio.i1482, align 4
  %add.ptr.i1483 = getelementptr i8, ptr %473, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1483, i32 -658577217) #8, !srcloc !89
  br label %r100_mm_wreg.exit1486

if.else.i1485:                                    ; preds = %r100_mm_wreg.exit1477
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -1075265832) #8
  br label %r100_mm_wreg.exit1486

r100_mm_wreg.exit1486:                            ; preds = %if.else.i1485, %do.body.i1484
  %474 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %475, i32 %add)
  %cmp.i1488 = icmp ugt i32 %475, %add
  %or.cond.i1490 = or i1 %cmp1.i517, %cmp.i1488
  br i1 %or.cond.i1490, label %do.body.i1493, label %if.else.i1494

do.body.i1493:                                    ; preds = %r100_mm_wreg.exit1486
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1491 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %476 = ptrtoint ptr %rmmio.i1491 to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %rmmio.i1491, align 4
  %add.ptr.i1492 = getelementptr i8, ptr %477, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1492, i32 512) #8, !srcloc !89
  br label %r100_mm_wreg.exit1495

if.else.i1494:                                    ; preds = %r100_mm_wreg.exit1486
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 131072) #8
  br label %r100_mm_wreg.exit1495

r100_mm_wreg.exit1495:                            ; preds = %if.else.i1494, %do.body.i1493
  %478 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %479, i32 %add2)
  %cmp.i1497 = icmp ugt i32 %479, %add2
  %or.cond.i1499 = or i1 %cmp1.i526, %cmp.i1497
  br i1 %or.cond.i1499, label %do.body.i1502, label %if.else.i1503

do.body.i1502:                                    ; preds = %r100_mm_wreg.exit1495
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1500 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %480 = ptrtoint ptr %rmmio.i1500 to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %rmmio.i1500, align 4
  %add.ptr.i1501 = getelementptr i8, ptr %481, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1501, i32 8388736) #8, !srcloc !89
  br label %r100_mm_wreg.exit1504

if.else.i1503:                                    ; preds = %r100_mm_wreg.exit1495
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2147450880) #8
  br label %r100_mm_wreg.exit1504

r100_mm_wreg.exit1504:                            ; preds = %if.else.i1503, %do.body.i1502
  %482 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %483, i32 %add)
  %cmp.i1506 = icmp ugt i32 %483, %add
  %or.cond.i1508 = or i1 %cmp1.i517, %cmp.i1506
  br i1 %or.cond.i1508, label %do.body.i1511, label %if.else.i1512

do.body.i1511:                                    ; preds = %r100_mm_wreg.exit1504
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1509 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %484 = ptrtoint ptr %rmmio.i1509 to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %rmmio.i1509, align 4
  %add.ptr.i1510 = getelementptr i8, ptr %485, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1510, i32 16777728) #8, !srcloc !89
  br label %r100_mm_wreg.exit1513

if.else.i1512:                                    ; preds = %r100_mm_wreg.exit1504
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 131073) #8
  br label %r100_mm_wreg.exit1513

r100_mm_wreg.exit1513:                            ; preds = %if.else.i1512, %do.body.i1511
  %486 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %487, i32 %add2)
  %cmp.i1515 = icmp ugt i32 %487, %add2
  %or.cond.i1517 = or i1 %cmp1.i526, %cmp.i1515
  br i1 %or.cond.i1517, label %do.body.i1520, label %if.else.i1521

do.body.i1520:                                    ; preds = %r100_mm_wreg.exit1513
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1518 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %488 = ptrtoint ptr %rmmio.i1518 to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %rmmio.i1518, align 4
  %add.ptr.i1519 = getelementptr i8, ptr %489, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1519, i32 8388752) #8, !srcloc !89
  br label %r100_mm_wreg.exit1522

if.else.i1521:                                    ; preds = %r100_mm_wreg.exit1513
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -1879015424) #8
  br label %r100_mm_wreg.exit1522

r100_mm_wreg.exit1522:                            ; preds = %if.else.i1521, %do.body.i1520
  %490 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %491, i32 %add)
  %cmp.i1524 = icmp ugt i32 %491, %add
  %or.cond.i1526 = or i1 %cmp1.i517, %cmp.i1524
  br i1 %or.cond.i1526, label %do.body.i1529, label %if.else.i1530

do.body.i1529:                                    ; preds = %r100_mm_wreg.exit1522
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1527 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %492 = ptrtoint ptr %rmmio.i1527 to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %rmmio.i1527, align 4
  %add.ptr.i1528 = getelementptr i8, ptr %493, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1528, i32 33554944) #8, !srcloc !89
  br label %r100_mm_wreg.exit1531

if.else.i1530:                                    ; preds = %r100_mm_wreg.exit1522
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 131074) #8
  br label %r100_mm_wreg.exit1531

r100_mm_wreg.exit1531:                            ; preds = %if.else.i1530, %do.body.i1529
  %494 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %495, i32 %add2)
  %cmp.i1533 = icmp ugt i32 %495, %add2
  %or.cond.i1535 = or i1 %cmp1.i526, %cmp.i1533
  br i1 %or.cond.i1535, label %do.body.i1538, label %if.else.i1539

do.body.i1538:                                    ; preds = %r100_mm_wreg.exit1531
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1536 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %496 = ptrtoint ptr %rmmio.i1536 to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %rmmio.i1536, align 4
  %add.ptr.i1537 = getelementptr i8, ptr %497, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1537, i32 8388736) #8, !srcloc !89
  br label %r100_mm_wreg.exit1540

if.else.i1539:                                    ; preds = %r100_mm_wreg.exit1531
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2147450880) #8
  br label %r100_mm_wreg.exit1540

r100_mm_wreg.exit1540:                            ; preds = %if.else.i1539, %do.body.i1538
  %498 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %499, i32 %add)
  %cmp.i1542 = icmp ugt i32 %499, %add
  %or.cond.i1544 = or i1 %cmp1.i517, %cmp.i1542
  br i1 %or.cond.i1544, label %do.body.i1547, label %if.else.i1548

do.body.i1547:                                    ; preds = %r100_mm_wreg.exit1540
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1545 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %500 = ptrtoint ptr %rmmio.i1545 to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %rmmio.i1545, align 4
  %add.ptr.i1546 = getelementptr i8, ptr %501, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1546, i32 50332160) #8, !srcloc !89
  br label %r100_mm_wreg.exit1549

if.else.i1548:                                    ; preds = %r100_mm_wreg.exit1540
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 131075) #8
  br label %r100_mm_wreg.exit1549

r100_mm_wreg.exit1549:                            ; preds = %if.else.i1548, %do.body.i1547
  %502 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %503, i32 %add2)
  %cmp.i1551 = icmp ugt i32 %503, %add2
  %or.cond.i1553 = or i1 %cmp1.i526, %cmp.i1551
  br i1 %or.cond.i1553, label %do.body.i1556, label %if.else.i1557

do.body.i1556:                                    ; preds = %r100_mm_wreg.exit1549
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1554 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %504 = ptrtoint ptr %rmmio.i1554 to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %rmmio.i1554, align 4
  %add.ptr.i1555 = getelementptr i8, ptr %505, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1555, i32 8388736) #8, !srcloc !89
  br label %r100_mm_wreg.exit1558

if.else.i1557:                                    ; preds = %r100_mm_wreg.exit1549
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2147450880) #8
  br label %r100_mm_wreg.exit1558

r100_mm_wreg.exit1558:                            ; preds = %if.else.i1557, %do.body.i1556
  %506 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %507, i32 %add)
  %cmp.i1560 = icmp ugt i32 %507, %add
  %or.cond.i1562 = or i1 %cmp1.i517, %cmp.i1560
  br i1 %or.cond.i1562, label %do.body.i1565, label %if.else.i1566

do.body.i1565:                                    ; preds = %r100_mm_wreg.exit1558
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1563 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %508 = ptrtoint ptr %rmmio.i1563 to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %rmmio.i1563, align 4
  %add.ptr.i1564 = getelementptr i8, ptr %509, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1564, i32 66048) #8, !srcloc !89
  br label %r100_mm_wreg.exit1567

if.else.i1566:                                    ; preds = %r100_mm_wreg.exit1558
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 131328) #8
  br label %r100_mm_wreg.exit1567

r100_mm_wreg.exit1567:                            ; preds = %if.else.i1566, %do.body.i1565
  %510 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %511, i32 %add2)
  %cmp.i1569 = icmp ugt i32 %511, %add2
  %or.cond.i1571 = or i1 %cmp1.i526, %cmp.i1569
  br i1 %or.cond.i1571, label %do.body.i1574, label %if.else.i1575

do.body.i1574:                                    ; preds = %r100_mm_wreg.exit1567
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1572 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %512 = ptrtoint ptr %rmmio.i1572 to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %rmmio.i1572, align 4
  %add.ptr.i1573 = getelementptr i8, ptr %513, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1573, i32 8392832) #8, !srcloc !89
  br label %r100_mm_wreg.exit1576

if.else.i1575:                                    ; preds = %r100_mm_wreg.exit1567
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2146402304) #8
  br label %r100_mm_wreg.exit1576

r100_mm_wreg.exit1576:                            ; preds = %if.else.i1575, %do.body.i1574
  %514 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %515, i32 %add)
  %cmp.i1578 = icmp ugt i32 %515, %add
  %or.cond.i1580 = or i1 %cmp1.i517, %cmp.i1578
  br i1 %or.cond.i1580, label %do.body.i1583, label %if.else.i1584

do.body.i1583:                                    ; preds = %r100_mm_wreg.exit1576
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1581 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %516 = ptrtoint ptr %rmmio.i1581 to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %rmmio.i1581, align 4
  %add.ptr.i1582 = getelementptr i8, ptr %517, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1582, i32 16843264) #8, !srcloc !89
  br label %r100_mm_wreg.exit1585

if.else.i1584:                                    ; preds = %r100_mm_wreg.exit1576
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 131329) #8
  br label %r100_mm_wreg.exit1585

r100_mm_wreg.exit1585:                            ; preds = %if.else.i1584, %do.body.i1583
  %518 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %519, i32 %add2)
  %cmp.i1587 = icmp ugt i32 %519, %add2
  %or.cond.i1589 = or i1 %cmp1.i526, %cmp.i1587
  br i1 %or.cond.i1589, label %do.body.i1592, label %if.else.i1593

do.body.i1592:                                    ; preds = %r100_mm_wreg.exit1585
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1590 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %520 = ptrtoint ptr %rmmio.i1590 to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %rmmio.i1590, align 4
  %add.ptr.i1591 = getelementptr i8, ptr %521, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1591, i32 1891623055) #8, !srcloc !89
  br label %r100_mm_wreg.exit1594

if.else.i1593:                                    ; preds = %r100_mm_wreg.exit1585
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -1881096336) #8
  br label %r100_mm_wreg.exit1594

r100_mm_wreg.exit1594:                            ; preds = %if.else.i1593, %do.body.i1592
  %522 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %523, i32 %add)
  %cmp.i1596 = icmp ugt i32 %523, %add
  %or.cond.i1598 = or i1 %cmp1.i517, %cmp.i1596
  br i1 %or.cond.i1598, label %do.body.i1601, label %if.else.i1602

do.body.i1601:                                    ; preds = %r100_mm_wreg.exit1594
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1599 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %524 = ptrtoint ptr %rmmio.i1599 to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %rmmio.i1599, align 4
  %add.ptr.i1600 = getelementptr i8, ptr %525, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1600, i32 33620480) #8, !srcloc !89
  br label %r100_mm_wreg.exit1603

if.else.i1602:                                    ; preds = %r100_mm_wreg.exit1594
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 131330) #8
  br label %r100_mm_wreg.exit1603

r100_mm_wreg.exit1603:                            ; preds = %if.else.i1602, %do.body.i1601
  %526 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %527, i32 %add2)
  %cmp.i1605 = icmp ugt i32 %527, %add2
  %or.cond.i1607 = or i1 %cmp1.i526, %cmp.i1605
  br i1 %or.cond.i1607, label %do.body.i1610, label %if.else.i1611

do.body.i1610:                                    ; preds = %r100_mm_wreg.exit1603
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1608 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %528 = ptrtoint ptr %rmmio.i1608 to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %rmmio.i1608, align 4
  %add.ptr.i1609 = getelementptr i8, ptr %529, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1609, i32 -1065293633) #8, !srcloc !89
  br label %r100_mm_wreg.exit1612

if.else.i1611:                                    ; preds = %r100_mm_wreg.exit1603
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -1075281728) #8
  br label %r100_mm_wreg.exit1612

r100_mm_wreg.exit1612:                            ; preds = %if.else.i1611, %do.body.i1610
  %530 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %531, i32 %add)
  %cmp.i1614 = icmp ugt i32 %531, %add
  %or.cond.i1616 = or i1 %cmp1.i517, %cmp.i1614
  br i1 %or.cond.i1616, label %do.body.i1619, label %if.else.i1620

do.body.i1619:                                    ; preds = %r100_mm_wreg.exit1612
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1617 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %532 = ptrtoint ptr %rmmio.i1617 to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %rmmio.i1617, align 4
  %add.ptr.i1618 = getelementptr i8, ptr %533, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1618, i32 50397696) #8, !srcloc !89
  br label %r100_mm_wreg.exit1621

if.else.i1620:                                    ; preds = %r100_mm_wreg.exit1612
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 131331) #8
  br label %r100_mm_wreg.exit1621

r100_mm_wreg.exit1621:                            ; preds = %if.else.i1620, %do.body.i1619
  %534 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %535, i32 %add2)
  %cmp.i1623 = icmp ugt i32 %535, %add2
  %or.cond.i1625 = or i1 %cmp1.i526, %cmp.i1623
  br i1 %or.cond.i1625, label %do.body.i1628, label %if.else.i1629

do.body.i1628:                                    ; preds = %r100_mm_wreg.exit1621
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1626 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %536 = ptrtoint ptr %rmmio.i1626 to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %rmmio.i1626, align 4
  %add.ptr.i1627 = getelementptr i8, ptr %537, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1627, i32 8388736) #8, !srcloc !89
  br label %r100_mm_wreg.exit1630

if.else.i1629:                                    ; preds = %r100_mm_wreg.exit1621
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2147450880) #8
  br label %r100_mm_wreg.exit1630

r100_mm_wreg.exit1630:                            ; preds = %if.else.i1629, %do.body.i1628
  %538 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %539, i32 %add)
  %cmp.i1632 = icmp ugt i32 %539, %add
  %or.cond.i1634 = or i1 %cmp1.i517, %cmp.i1632
  br i1 %or.cond.i1634, label %do.body.i1637, label %if.else.i1638

do.body.i1637:                                    ; preds = %r100_mm_wreg.exit1630
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1635 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %540 = ptrtoint ptr %rmmio.i1635 to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %rmmio.i1635, align 4
  %add.ptr.i1636 = getelementptr i8, ptr %541, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1636, i32 131584) #8, !srcloc !89
  br label %r100_mm_wreg.exit1639

if.else.i1638:                                    ; preds = %r100_mm_wreg.exit1630
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 131584) #8
  br label %r100_mm_wreg.exit1639

r100_mm_wreg.exit1639:                            ; preds = %if.else.i1638, %do.body.i1637
  %542 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %543, i32 %add2)
  %cmp.i1641 = icmp ugt i32 %543, %add2
  %or.cond.i1643 = or i1 %cmp1.i526, %cmp.i1641
  br i1 %or.cond.i1643, label %do.body.i1646, label %if.else.i1647

do.body.i1646:                                    ; preds = %r100_mm_wreg.exit1639
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1644 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %544 = ptrtoint ptr %rmmio.i1644 to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %rmmio.i1644, align 4
  %add.ptr.i1645 = getelementptr i8, ptr %545, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1645, i32 -121694080) #8, !srcloc !89
  br label %r100_mm_wreg.exit1648

if.else.i1647:                                    ; preds = %r100_mm_wreg.exit1639
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2145861640) #8
  br label %r100_mm_wreg.exit1648

r100_mm_wreg.exit1648:                            ; preds = %if.else.i1647, %do.body.i1646
  %546 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %547, i32 %add)
  %cmp.i1650 = icmp ugt i32 %547, %add
  %or.cond.i1652 = or i1 %cmp1.i517, %cmp.i1650
  br i1 %or.cond.i1652, label %do.body.i1655, label %if.else.i1656

do.body.i1655:                                    ; preds = %r100_mm_wreg.exit1648
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1653 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %548 = ptrtoint ptr %rmmio.i1653 to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %rmmio.i1653, align 4
  %add.ptr.i1654 = getelementptr i8, ptr %549, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1654, i32 16908800) #8, !srcloc !89
  br label %r100_mm_wreg.exit1657

if.else.i1656:                                    ; preds = %r100_mm_wreg.exit1648
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 131585) #8
  br label %r100_mm_wreg.exit1657

r100_mm_wreg.exit1657:                            ; preds = %if.else.i1656, %do.body.i1655
  %550 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %551, i32 %add2)
  %cmp.i1659 = icmp ugt i32 %551, %add2
  %or.cond.i1661 = or i1 %cmp1.i526, %cmp.i1659
  br i1 %or.cond.i1661, label %do.body.i1664, label %if.else.i1665

do.body.i1664:                                    ; preds = %r100_mm_wreg.exit1657
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1662 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %552 = ptrtoint ptr %rmmio.i1662 to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %rmmio.i1662, align 4
  %add.ptr.i1663 = getelementptr i8, ptr %553, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1663, i32 146768015) #8, !srcloc !89
  br label %r100_mm_wreg.exit1666

if.else.i1665:                                    ; preds = %r100_mm_wreg.exit1657
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -1887387896) #8
  br label %r100_mm_wreg.exit1666

r100_mm_wreg.exit1666:                            ; preds = %if.else.i1665, %do.body.i1664
  %554 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %555, i32 %add)
  %cmp.i1668 = icmp ugt i32 %555, %add
  %or.cond.i1670 = or i1 %cmp1.i517, %cmp.i1668
  br i1 %or.cond.i1670, label %do.body.i1673, label %if.else.i1674

do.body.i1673:                                    ; preds = %r100_mm_wreg.exit1666
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1671 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %556 = ptrtoint ptr %rmmio.i1671 to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %rmmio.i1671, align 4
  %add.ptr.i1672 = getelementptr i8, ptr %557, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1672, i32 33686016) #8, !srcloc !89
  br label %r100_mm_wreg.exit1675

if.else.i1674:                                    ; preds = %r100_mm_wreg.exit1666
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 131586) #8
  br label %r100_mm_wreg.exit1675

r100_mm_wreg.exit1675:                            ; preds = %if.else.i1674, %do.body.i1673
  %558 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %559, i32 %add2)
  %cmp.i1677 = icmp ugt i32 %559, %add2
  %or.cond.i1679 = or i1 %cmp1.i526, %cmp.i1677
  br i1 %or.cond.i1679, label %do.body.i1682, label %if.else.i1683

do.body.i1682:                                    ; preds = %r100_mm_wreg.exit1675
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1680 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %560 = ptrtoint ptr %rmmio.i1680 to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load ptr, ptr %rmmio.i1680, align 4
  %add.ptr.i1681 = getelementptr i8, ptr %561, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1681, i32 -1602105153) #8, !srcloc !89
  br label %r100_mm_wreg.exit1684

if.else.i1683:                                    ; preds = %r100_mm_wreg.exit1675
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -1076854368) #8
  br label %r100_mm_wreg.exit1684

r100_mm_wreg.exit1684:                            ; preds = %if.else.i1683, %do.body.i1682
  %562 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %563, i32 %add)
  %cmp.i1686 = icmp ugt i32 %563, %add
  %or.cond.i1688 = or i1 %cmp1.i517, %cmp.i1686
  br i1 %or.cond.i1688, label %do.body.i1691, label %if.else.i1692

do.body.i1691:                                    ; preds = %r100_mm_wreg.exit1684
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1689 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %564 = ptrtoint ptr %rmmio.i1689 to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %rmmio.i1689, align 4
  %add.ptr.i1690 = getelementptr i8, ptr %565, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1690, i32 50463232) #8, !srcloc !89
  br label %r100_mm_wreg.exit1693

if.else.i1692:                                    ; preds = %r100_mm_wreg.exit1684
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 131587) #8
  br label %r100_mm_wreg.exit1693

r100_mm_wreg.exit1693:                            ; preds = %if.else.i1692, %do.body.i1691
  %566 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %567, i32 %add2)
  %cmp.i1695 = icmp ugt i32 %567, %add2
  %or.cond.i1697 = or i1 %cmp1.i526, %cmp.i1695
  br i1 %or.cond.i1697, label %do.body.i1700, label %if.else.i1701

do.body.i1700:                                    ; preds = %r100_mm_wreg.exit1693
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1698 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %568 = ptrtoint ptr %rmmio.i1698 to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %rmmio.i1698, align 4
  %add.ptr.i1699 = getelementptr i8, ptr %569, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1699, i32 8452287) #8, !srcloc !89
  br label %r100_mm_wreg.exit1702

if.else.i1701:                                    ; preds = %r100_mm_wreg.exit1693
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -1074233344) #8
  br label %r100_mm_wreg.exit1702

r100_mm_wreg.exit1702:                            ; preds = %if.else.i1701, %do.body.i1700
  %570 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %571, i32 %add)
  %cmp.i1704 = icmp ugt i32 %571, %add
  %or.cond.i1706 = or i1 %cmp1.i517, %cmp.i1704
  br i1 %or.cond.i1706, label %do.body.i1709, label %if.else.i1710

do.body.i1709:                                    ; preds = %r100_mm_wreg.exit1702
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1707 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %572 = ptrtoint ptr %rmmio.i1707 to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load ptr, ptr %rmmio.i1707, align 4
  %add.ptr.i1708 = getelementptr i8, ptr %573, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1708, i32 197120) #8, !srcloc !89
  br label %r100_mm_wreg.exit1711

if.else.i1710:                                    ; preds = %r100_mm_wreg.exit1702
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 131840) #8
  br label %r100_mm_wreg.exit1711

r100_mm_wreg.exit1711:                            ; preds = %if.else.i1710, %do.body.i1709
  %574 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %575, i32 %add2)
  %cmp.i1713 = icmp ugt i32 %575, %add2
  %or.cond.i1715 = or i1 %cmp1.i526, %cmp.i1713
  br i1 %or.cond.i1715, label %do.body.i1718, label %if.else.i1719

do.body.i1718:                                    ; preds = %r100_mm_wreg.exit1711
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1716 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %576 = ptrtoint ptr %rmmio.i1716 to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load ptr, ptr %rmmio.i1716, align 4
  %add.ptr.i1717 = getelementptr i8, ptr %577, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1717, i32 8394880) #8, !srcloc !89
  br label %r100_mm_wreg.exit1720

if.else.i1719:                                    ; preds = %r100_mm_wreg.exit1711
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2145878016) #8
  br label %r100_mm_wreg.exit1720

r100_mm_wreg.exit1720:                            ; preds = %if.else.i1719, %do.body.i1718
  %578 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %579, i32 %add)
  %cmp.i1722 = icmp ugt i32 %579, %add
  %or.cond.i1724 = or i1 %cmp1.i517, %cmp.i1722
  br i1 %or.cond.i1724, label %do.body.i1727, label %if.else.i1728

do.body.i1727:                                    ; preds = %r100_mm_wreg.exit1720
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1725 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %580 = ptrtoint ptr %rmmio.i1725 to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load ptr, ptr %rmmio.i1725, align 4
  %add.ptr.i1726 = getelementptr i8, ptr %581, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1726, i32 16974336) #8, !srcloc !89
  br label %r100_mm_wreg.exit1729

if.else.i1728:                                    ; preds = %r100_mm_wreg.exit1720
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 131841) #8
  br label %r100_mm_wreg.exit1729

r100_mm_wreg.exit1729:                            ; preds = %if.else.i1728, %do.body.i1727
  %582 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %583, i32 %add2)
  %cmp.i1731 = icmp ugt i32 %583, %add2
  %or.cond.i1733 = or i1 %cmp1.i526, %cmp.i1731
  br i1 %or.cond.i1733, label %do.body.i1736, label %if.else.i1737

do.body.i1736:                                    ; preds = %r100_mm_wreg.exit1729
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1734 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %584 = ptrtoint ptr %rmmio.i1734 to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load ptr, ptr %rmmio.i1734, align 4
  %add.ptr.i1735 = getelementptr i8, ptr %585, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1735, i32 -1061232498) #8, !srcloc !89
  br label %r100_mm_wreg.exit1738

if.else.i1737:                                    ; preds = %r100_mm_wreg.exit1729
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -1897873728) #8
  br label %r100_mm_wreg.exit1738

r100_mm_wreg.exit1738:                            ; preds = %if.else.i1737, %do.body.i1736
  %586 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %587, i32 %add)
  %cmp.i1740 = icmp ugt i32 %587, %add
  %or.cond.i1742 = or i1 %cmp1.i517, %cmp.i1740
  br i1 %or.cond.i1742, label %do.body.i1745, label %if.else.i1746

do.body.i1745:                                    ; preds = %r100_mm_wreg.exit1738
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1743 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %588 = ptrtoint ptr %rmmio.i1743 to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load ptr, ptr %rmmio.i1743, align 4
  %add.ptr.i1744 = getelementptr i8, ptr %589, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1744, i32 33751552) #8, !srcloc !89
  br label %r100_mm_wreg.exit1747

if.else.i1746:                                    ; preds = %r100_mm_wreg.exit1738
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 131842) #8
  br label %r100_mm_wreg.exit1747

r100_mm_wreg.exit1747:                            ; preds = %if.else.i1746, %do.body.i1745
  %590 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %591, i32 %add2)
  %cmp.i1749 = icmp ugt i32 %591, %add2
  %or.cond.i1751 = or i1 %cmp1.i526, %cmp.i1749
  br i1 %or.cond.i1751, label %do.body.i1754, label %if.else.i1755

do.body.i1754:                                    ; preds = %r100_mm_wreg.exit1747
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1752 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %592 = ptrtoint ptr %rmmio.i1752 to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load ptr, ptr %rmmio.i1752, align 4
  %add.ptr.i1753 = getelementptr i8, ptr %593, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1753, i32 -1602047809) #8, !srcloc !89
  br label %r100_mm_wreg.exit1756

if.else.i1755:                                    ; preds = %r100_mm_wreg.exit1747
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -1078951264) #8
  br label %r100_mm_wreg.exit1756

r100_mm_wreg.exit1756:                            ; preds = %if.else.i1755, %do.body.i1754
  %594 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %595, i32 %add)
  %cmp.i1758 = icmp ugt i32 %595, %add
  %or.cond.i1760 = or i1 %cmp1.i517, %cmp.i1758
  br i1 %or.cond.i1760, label %do.body.i1763, label %if.else.i1764

do.body.i1763:                                    ; preds = %r100_mm_wreg.exit1756
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1761 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %596 = ptrtoint ptr %rmmio.i1761 to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load ptr, ptr %rmmio.i1761, align 4
  %add.ptr.i1762 = getelementptr i8, ptr %597, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1762, i32 50528768) #8, !srcloc !89
  br label %r100_mm_wreg.exit1765

if.else.i1764:                                    ; preds = %r100_mm_wreg.exit1756
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 131843) #8
  br label %r100_mm_wreg.exit1765

r100_mm_wreg.exit1765:                            ; preds = %if.else.i1764, %do.body.i1763
  %598 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %599, i32 %add2)
  %cmp.i1767 = icmp ugt i32 %599, %add2
  %or.cond.i1769 = or i1 %cmp1.i526, %cmp.i1767
  br i1 %or.cond.i1769, label %do.body.i1772, label %if.else.i1773

do.body.i1772:                                    ; preds = %r100_mm_wreg.exit1765
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1770 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %600 = ptrtoint ptr %rmmio.i1770 to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %rmmio.i1770, align 4
  %add.ptr.i1771 = getelementptr i8, ptr %601, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1771, i32 8388736) #8, !srcloc !89
  br label %r100_mm_wreg.exit1774

if.else.i1773:                                    ; preds = %r100_mm_wreg.exit1765
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2147450880) #8
  br label %r100_mm_wreg.exit1774

r100_mm_wreg.exit1774:                            ; preds = %if.else.i1773, %do.body.i1772
  %602 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %603, i32 %add)
  %cmp.i1776 = icmp ugt i32 %603, %add
  %or.cond.i1778 = or i1 %cmp1.i517, %cmp.i1776
  br i1 %or.cond.i1778, label %do.body.i1781, label %if.else.i1782

do.body.i1781:                                    ; preds = %r100_mm_wreg.exit1774
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1779 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %604 = ptrtoint ptr %rmmio.i1779 to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load ptr, ptr %rmmio.i1779, align 4
  %add.ptr.i1780 = getelementptr i8, ptr %605, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1780, i32 262656) #8, !srcloc !89
  br label %r100_mm_wreg.exit1783

if.else.i1782:                                    ; preds = %r100_mm_wreg.exit1774
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 132096) #8
  br label %r100_mm_wreg.exit1783

r100_mm_wreg.exit1783:                            ; preds = %if.else.i1782, %do.body.i1781
  %606 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %607, i32 %add2)
  %cmp.i1785 = icmp ugt i32 %607, %add2
  %or.cond.i1787 = or i1 %cmp1.i526, %cmp.i1785
  br i1 %or.cond.i1787, label %do.body.i1790, label %if.else.i1791

do.body.i1790:                                    ; preds = %r100_mm_wreg.exit1783
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1788 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %608 = ptrtoint ptr %rmmio.i1788 to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load ptr, ptr %rmmio.i1788, align 4
  %add.ptr.i1789 = getelementptr i8, ptr %609, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1789, i32 8394880) #8, !srcloc !89
  br label %r100_mm_wreg.exit1792

if.else.i1791:                                    ; preds = %r100_mm_wreg.exit1783
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2145878016) #8
  br label %r100_mm_wreg.exit1792

r100_mm_wreg.exit1792:                            ; preds = %if.else.i1791, %do.body.i1790
  %610 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %611, i32 %add)
  %cmp.i1794 = icmp ugt i32 %611, %add
  %or.cond.i1796 = or i1 %cmp1.i517, %cmp.i1794
  br i1 %or.cond.i1796, label %do.body.i1799, label %if.else.i1800

do.body.i1799:                                    ; preds = %r100_mm_wreg.exit1792
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1797 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %612 = ptrtoint ptr %rmmio.i1797 to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load ptr, ptr %rmmio.i1797, align 4
  %add.ptr.i1798 = getelementptr i8, ptr %613, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1798, i32 17039872) #8, !srcloc !89
  br label %r100_mm_wreg.exit1801

if.else.i1800:                                    ; preds = %r100_mm_wreg.exit1792
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 132097) #8
  br label %r100_mm_wreg.exit1801

r100_mm_wreg.exit1801:                            ; preds = %if.else.i1800, %do.body.i1799
  %614 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %615, i32 %add2)
  %cmp.i1803 = icmp ugt i32 %615, %add2
  %or.cond.i1805 = or i1 %cmp1.i526, %cmp.i1803
  br i1 %or.cond.i1805, label %do.body.i1808, label %if.else.i1809

do.body.i1808:                                    ; preds = %r100_mm_wreg.exit1801
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1806 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %616 = ptrtoint ptr %rmmio.i1806 to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load ptr, ptr %rmmio.i1806, align 4
  %add.ptr.i1807 = getelementptr i8, ptr %617, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1807, i32 -1598160754) #8, !srcloc !89
  br label %r100_mm_wreg.exit1810

if.else.i1809:                                    ; preds = %r100_mm_wreg.exit1801
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -1912553824) #8
  br label %r100_mm_wreg.exit1810

r100_mm_wreg.exit1810:                            ; preds = %if.else.i1809, %do.body.i1808
  %618 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %619, i32 %add)
  %cmp.i1812 = icmp ugt i32 %619, %add
  %or.cond.i1814 = or i1 %cmp1.i517, %cmp.i1812
  br i1 %or.cond.i1814, label %do.body.i1817, label %if.else.i1818

do.body.i1817:                                    ; preds = %r100_mm_wreg.exit1810
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1815 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %620 = ptrtoint ptr %rmmio.i1815 to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load ptr, ptr %rmmio.i1815, align 4
  %add.ptr.i1816 = getelementptr i8, ptr %621, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1816, i32 33817088) #8, !srcloc !89
  br label %r100_mm_wreg.exit1819

if.else.i1818:                                    ; preds = %r100_mm_wreg.exit1810
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 132098) #8
  br label %r100_mm_wreg.exit1819

r100_mm_wreg.exit1819:                            ; preds = %if.else.i1818, %do.body.i1817
  %622 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %623, i32 %add2)
  %cmp.i1821 = icmp ugt i32 %623, %add2
  %or.cond.i1823 = or i1 %cmp1.i526, %cmp.i1821
  br i1 %or.cond.i1823, label %do.body.i1826, label %if.else.i1827

do.body.i1826:                                    ; preds = %r100_mm_wreg.exit1819
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1824 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %624 = ptrtoint ptr %rmmio.i1824 to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load ptr, ptr %rmmio.i1824, align 4
  %add.ptr.i1825 = getelementptr i8, ptr %625, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1825, i32 -1065121601) #8, !srcloc !89
  br label %r100_mm_wreg.exit1828

if.else.i1827:                                    ; preds = %r100_mm_wreg.exit1819
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -1081572416) #8
  br label %r100_mm_wreg.exit1828

r100_mm_wreg.exit1828:                            ; preds = %if.else.i1827, %do.body.i1826
  %626 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %627, i32 %add)
  %cmp.i1830 = icmp ugt i32 %627, %add
  %or.cond.i1832 = or i1 %cmp1.i517, %cmp.i1830
  br i1 %or.cond.i1832, label %do.body.i1835, label %if.else.i1836

do.body.i1835:                                    ; preds = %r100_mm_wreg.exit1828
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1833 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %628 = ptrtoint ptr %rmmio.i1833 to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load ptr, ptr %rmmio.i1833, align 4
  %add.ptr.i1834 = getelementptr i8, ptr %629, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1834, i32 50594304) #8, !srcloc !89
  br label %r100_mm_wreg.exit1837

if.else.i1836:                                    ; preds = %r100_mm_wreg.exit1828
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 132099) #8
  br label %r100_mm_wreg.exit1837

r100_mm_wreg.exit1837:                            ; preds = %if.else.i1836, %do.body.i1835
  %630 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %631, i32 %add2)
  %cmp.i1839 = icmp ugt i32 %631, %add2
  %or.cond.i1841 = or i1 %cmp1.i526, %cmp.i1839
  br i1 %or.cond.i1841, label %do.body.i1844, label %if.else.i1845

do.body.i1844:                                    ; preds = %r100_mm_wreg.exit1837
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1842 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %632 = ptrtoint ptr %rmmio.i1842 to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load ptr, ptr %rmmio.i1842, align 4
  %add.ptr.i1843 = getelementptr i8, ptr %633, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1843, i32 8388736) #8, !srcloc !89
  br label %r100_mm_wreg.exit1846

if.else.i1845:                                    ; preds = %r100_mm_wreg.exit1837
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2147450880) #8
  br label %r100_mm_wreg.exit1846

r100_mm_wreg.exit1846:                            ; preds = %if.else.i1845, %do.body.i1844
  %634 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %635, i32 %add)
  %cmp.i1848 = icmp ugt i32 %635, %add
  %or.cond.i1850 = or i1 %cmp1.i517, %cmp.i1848
  br i1 %or.cond.i1850, label %do.body.i1853, label %if.else.i1854

do.body.i1853:                                    ; preds = %r100_mm_wreg.exit1846
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1851 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %636 = ptrtoint ptr %rmmio.i1851 to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load ptr, ptr %rmmio.i1851, align 4
  %add.ptr.i1852 = getelementptr i8, ptr %637, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1852, i32 328192) #8, !srcloc !89
  br label %r100_mm_wreg.exit1855

if.else.i1854:                                    ; preds = %r100_mm_wreg.exit1846
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 132352) #8
  br label %r100_mm_wreg.exit1855

r100_mm_wreg.exit1855:                            ; preds = %if.else.i1854, %do.body.i1853
  %638 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %639, i32 %add2)
  %cmp.i1857 = icmp ugt i32 %639, %add2
  %or.cond.i1859 = or i1 %cmp1.i526, %cmp.i1857
  br i1 %or.cond.i1859, label %do.body.i1862, label %if.else.i1863

do.body.i1862:                                    ; preds = %r100_mm_wreg.exit1855
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1860 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %640 = ptrtoint ptr %rmmio.i1860 to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load ptr, ptr %rmmio.i1860, align 4
  %add.ptr.i1861 = getelementptr i8, ptr %641, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1861, i32 8394880) #8, !srcloc !89
  br label %r100_mm_wreg.exit1864

if.else.i1863:                                    ; preds = %r100_mm_wreg.exit1855
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2145878016) #8
  br label %r100_mm_wreg.exit1864

r100_mm_wreg.exit1864:                            ; preds = %if.else.i1863, %do.body.i1862
  %642 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %643, i32 %add)
  %cmp.i1866 = icmp ugt i32 %643, %add
  %or.cond.i1868 = or i1 %cmp1.i517, %cmp.i1866
  br i1 %or.cond.i1868, label %do.body.i1871, label %if.else.i1872

do.body.i1871:                                    ; preds = %r100_mm_wreg.exit1864
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1869 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %644 = ptrtoint ptr %rmmio.i1869 to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load ptr, ptr %rmmio.i1869, align 4
  %add.ptr.i1870 = getelementptr i8, ptr %645, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1870, i32 17105408) #8, !srcloc !89
  br label %r100_mm_wreg.exit1873

if.else.i1872:                                    ; preds = %r100_mm_wreg.exit1864
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 132353) #8
  br label %r100_mm_wreg.exit1873

r100_mm_wreg.exit1873:                            ; preds = %if.else.i1872, %do.body.i1871
  %646 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %647, i32 %add2)
  %cmp.i1875 = icmp ugt i32 %647, %add2
  %or.cond.i1877 = or i1 %cmp1.i526, %cmp.i1875
  br i1 %or.cond.i1877, label %do.body.i1880, label %if.else.i1881

do.body.i1880:                                    ; preds = %r100_mm_wreg.exit1873
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1878 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %648 = ptrtoint ptr %rmmio.i1878 to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load ptr, ptr %rmmio.i1878, align 4
  %add.ptr.i1879 = getelementptr i8, ptr %649, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1879, i32 -1866596211) #8, !srcloc !89
  br label %r100_mm_wreg.exit1882

if.else.i1881:                                    ; preds = %r100_mm_wreg.exit1873
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -1929331056) #8
  br label %r100_mm_wreg.exit1882

r100_mm_wreg.exit1882:                            ; preds = %if.else.i1881, %do.body.i1880
  %650 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %651, i32 %add)
  %cmp.i1884 = icmp ugt i32 %651, %add
  %or.cond.i1886 = or i1 %cmp1.i517, %cmp.i1884
  br i1 %or.cond.i1886, label %do.body.i1889, label %if.else.i1890

do.body.i1889:                                    ; preds = %r100_mm_wreg.exit1882
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1887 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %652 = ptrtoint ptr %rmmio.i1887 to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load ptr, ptr %rmmio.i1887, align 4
  %add.ptr.i1888 = getelementptr i8, ptr %653, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1888, i32 33882624) #8, !srcloc !89
  br label %r100_mm_wreg.exit1891

if.else.i1890:                                    ; preds = %r100_mm_wreg.exit1882
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 132354) #8
  br label %r100_mm_wreg.exit1891

r100_mm_wreg.exit1891:                            ; preds = %if.else.i1890, %do.body.i1889
  %654 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %654)
  %655 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %655, i32 %add2)
  %cmp.i1893 = icmp ugt i32 %655, %add2
  %or.cond.i1895 = or i1 %cmp1.i526, %cmp.i1893
  br i1 %or.cond.i1895, label %do.body.i1898, label %if.else.i1899

do.body.i1898:                                    ; preds = %r100_mm_wreg.exit1891
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1896 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %656 = ptrtoint ptr %rmmio.i1896 to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load ptr, ptr %rmmio.i1896, align 4
  %add.ptr.i1897 = getelementptr i8, ptr %657, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1897, i32 8739007) #8, !srcloc !89
  br label %r100_mm_wreg.exit1900

if.else.i1899:                                    ; preds = %r100_mm_wreg.exit1891
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -1084717824) #8
  br label %r100_mm_wreg.exit1900

r100_mm_wreg.exit1900:                            ; preds = %if.else.i1899, %do.body.i1898
  %658 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %659, i32 %add)
  %cmp.i1902 = icmp ugt i32 %659, %add
  %or.cond.i1904 = or i1 %cmp1.i517, %cmp.i1902
  br i1 %or.cond.i1904, label %do.body.i1907, label %if.else.i1908

do.body.i1907:                                    ; preds = %r100_mm_wreg.exit1900
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1905 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %660 = ptrtoint ptr %rmmio.i1905 to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load ptr, ptr %rmmio.i1905, align 4
  %add.ptr.i1906 = getelementptr i8, ptr %661, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1906, i32 50659840) #8, !srcloc !89
  br label %r100_mm_wreg.exit1909

if.else.i1908:                                    ; preds = %r100_mm_wreg.exit1900
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 132355) #8
  br label %r100_mm_wreg.exit1909

r100_mm_wreg.exit1909:                            ; preds = %if.else.i1908, %do.body.i1907
  %662 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %662)
  %663 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %663, i32 %add2)
  %cmp.i1911 = icmp ugt i32 %663, %add2
  %or.cond.i1913 = or i1 %cmp1.i526, %cmp.i1911
  br i1 %or.cond.i1913, label %do.body.i1916, label %if.else.i1917

do.body.i1916:                                    ; preds = %r100_mm_wreg.exit1909
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1914 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %664 = ptrtoint ptr %rmmio.i1914 to i32
  call void @__asan_load4_noabort(i32 %664)
  %665 = load ptr, ptr %rmmio.i1914, align 4
  %add.ptr.i1915 = getelementptr i8, ptr %665, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1915, i32 142606464) #8, !srcloc !89
  br label %r100_mm_wreg.exit1918

if.else.i1917:                                    ; preds = %r100_mm_wreg.exit1909
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2147450872) #8
  br label %r100_mm_wreg.exit1918

r100_mm_wreg.exit1918:                            ; preds = %if.else.i1917, %do.body.i1916
  %666 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %666)
  %667 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %667, i32 %add)
  %cmp.i1920 = icmp ugt i32 %667, %add
  %or.cond.i1922 = or i1 %cmp1.i517, %cmp.i1920
  br i1 %or.cond.i1922, label %do.body.i1925, label %if.else.i1926

do.body.i1925:                                    ; preds = %r100_mm_wreg.exit1918
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1923 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %668 = ptrtoint ptr %rmmio.i1923 to i32
  call void @__asan_load4_noabort(i32 %668)
  %669 = load ptr, ptr %rmmio.i1923, align 4
  %add.ptr.i1924 = getelementptr i8, ptr %669, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1924, i32 393728) #8, !srcloc !89
  br label %r100_mm_wreg.exit1927

if.else.i1926:                                    ; preds = %r100_mm_wreg.exit1918
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 132608) #8
  br label %r100_mm_wreg.exit1927

r100_mm_wreg.exit1927:                            ; preds = %if.else.i1926, %do.body.i1925
  %670 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %670)
  %671 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %671, i32 %add2)
  %cmp.i1929 = icmp ugt i32 %671, %add2
  %or.cond.i1931 = or i1 %cmp1.i526, %cmp.i1929
  br i1 %or.cond.i1931, label %do.body.i1934, label %if.else.i1935

do.body.i1934:                                    ; preds = %r100_mm_wreg.exit1927
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1932 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %672 = ptrtoint ptr %rmmio.i1932 to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load ptr, ptr %rmmio.i1932, align 4
  %add.ptr.i1933 = getelementptr i8, ptr %673, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1933, i32 8394880) #8, !srcloc !89
  br label %r100_mm_wreg.exit1936

if.else.i1935:                                    ; preds = %r100_mm_wreg.exit1927
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2145878016) #8
  br label %r100_mm_wreg.exit1936

r100_mm_wreg.exit1936:                            ; preds = %if.else.i1935, %do.body.i1934
  %674 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %674)
  %675 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %675, i32 %add)
  %cmp.i1938 = icmp ugt i32 %675, %add
  %or.cond.i1940 = or i1 %cmp1.i517, %cmp.i1938
  br i1 %or.cond.i1940, label %do.body.i1943, label %if.else.i1944

do.body.i1943:                                    ; preds = %r100_mm_wreg.exit1936
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1941 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %676 = ptrtoint ptr %rmmio.i1941 to i32
  call void @__asan_load4_noabort(i32 %676)
  %677 = load ptr, ptr %rmmio.i1941, align 4
  %add.ptr.i1942 = getelementptr i8, ptr %677, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1942, i32 17170944) #8, !srcloc !89
  br label %r100_mm_wreg.exit1945

if.else.i1944:                                    ; preds = %r100_mm_wreg.exit1936
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 132609) #8
  br label %r100_mm_wreg.exit1945

r100_mm_wreg.exit1945:                            ; preds = %if.else.i1944, %do.body.i1943
  %678 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %679, i32 %add2)
  %cmp.i1947 = icmp ugt i32 %679, %add2
  %or.cond.i1949 = or i1 %cmp1.i526, %cmp.i1947
  br i1 %or.cond.i1949, label %do.body.i1952, label %if.else.i1953

do.body.i1952:                                    ; preds = %r100_mm_wreg.exit1945
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1950 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %680 = ptrtoint ptr %rmmio.i1950 to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load ptr, ptr %rmmio.i1950, align 4
  %add.ptr.i1951 = getelementptr i8, ptr %681, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1951, i32 -1732329333) #8, !srcloc !89
  br label %r100_mm_wreg.exit1954

if.else.i1953:                                    ; preds = %r100_mm_wreg.exit1945
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -1950302568) #8
  br label %r100_mm_wreg.exit1954

r100_mm_wreg.exit1954:                            ; preds = %if.else.i1953, %do.body.i1952
  %682 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %682)
  %683 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %683, i32 %add)
  %cmp.i1956 = icmp ugt i32 %683, %add
  %or.cond.i1958 = or i1 %cmp1.i517, %cmp.i1956
  br i1 %or.cond.i1958, label %do.body.i1961, label %if.else.i1962

do.body.i1961:                                    ; preds = %r100_mm_wreg.exit1954
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1959 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %684 = ptrtoint ptr %rmmio.i1959 to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load ptr, ptr %rmmio.i1959, align 4
  %add.ptr.i1960 = getelementptr i8, ptr %685, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1960, i32 33948160) #8, !srcloc !89
  br label %r100_mm_wreg.exit1963

if.else.i1962:                                    ; preds = %r100_mm_wreg.exit1954
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 132610) #8
  br label %r100_mm_wreg.exit1963

r100_mm_wreg.exit1963:                            ; preds = %if.else.i1962, %do.body.i1961
  %686 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %686)
  %687 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %687, i32 %add2)
  %cmp.i1965 = icmp ugt i32 %687, %add2
  %or.cond.i1967 = or i1 %cmp1.i526, %cmp.i1965
  br i1 %or.cond.i1967, label %do.body.i1970, label %if.else.i1971

do.body.i1970:                                    ; preds = %r100_mm_wreg.exit1963
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1968 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %688 = ptrtoint ptr %rmmio.i1968 to i32
  call void @__asan_load4_noabort(i32 %688)
  %689 = load ptr, ptr %rmmio.i1968, align 4
  %add.ptr.i1969 = getelementptr i8, ptr %689, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1969, i32 1619407039) #8, !srcloc !89
  br label %r100_mm_wreg.exit1972

if.else.i1971:                                    ; preds = %r100_mm_wreg.exit1963
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -1087338912) #8
  br label %r100_mm_wreg.exit1972

r100_mm_wreg.exit1972:                            ; preds = %if.else.i1971, %do.body.i1970
  %690 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %690)
  %691 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %691, i32 %add)
  %cmp.i1974 = icmp ugt i32 %691, %add
  %or.cond.i1976 = or i1 %cmp1.i517, %cmp.i1974
  br i1 %or.cond.i1976, label %do.body.i1979, label %if.else.i1980

do.body.i1979:                                    ; preds = %r100_mm_wreg.exit1972
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1977 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %692 = ptrtoint ptr %rmmio.i1977 to i32
  call void @__asan_load4_noabort(i32 %692)
  %693 = load ptr, ptr %rmmio.i1977, align 4
  %add.ptr.i1978 = getelementptr i8, ptr %693, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1978, i32 50725376) #8, !srcloc !89
  br label %r100_mm_wreg.exit1981

if.else.i1980:                                    ; preds = %r100_mm_wreg.exit1972
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 132611) #8
  br label %r100_mm_wreg.exit1981

r100_mm_wreg.exit1981:                            ; preds = %if.else.i1980, %do.body.i1979
  %694 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %694)
  %695 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %695, i32 %add2)
  %cmp.i1983 = icmp ugt i32 %695, %add2
  %or.cond.i1985 = or i1 %cmp1.i526, %cmp.i1983
  br i1 %or.cond.i1985, label %do.body.i1988, label %if.else.i1989

do.body.i1988:                                    ; preds = %r100_mm_wreg.exit1981
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1986 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %696 = ptrtoint ptr %rmmio.i1986 to i32
  call void @__asan_load4_noabort(i32 %696)
  %697 = load ptr, ptr %rmmio.i1986, align 4
  %add.ptr.i1987 = getelementptr i8, ptr %697, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1987, i32 142606464) #8, !srcloc !89
  br label %r100_mm_wreg.exit1990

if.else.i1989:                                    ; preds = %r100_mm_wreg.exit1981
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2147450872) #8
  br label %r100_mm_wreg.exit1990

r100_mm_wreg.exit1990:                            ; preds = %if.else.i1989, %do.body.i1988
  %698 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %698)
  %699 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %699, i32 %add)
  %cmp.i1992 = icmp ugt i32 %699, %add
  %or.cond.i1994 = or i1 %cmp1.i517, %cmp.i1992
  br i1 %or.cond.i1994, label %do.body.i1997, label %if.else.i1998

do.body.i1997:                                    ; preds = %r100_mm_wreg.exit1990
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i1995 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %700 = ptrtoint ptr %rmmio.i1995 to i32
  call void @__asan_load4_noabort(i32 %700)
  %701 = load ptr, ptr %rmmio.i1995, align 4
  %add.ptr.i1996 = getelementptr i8, ptr %701, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1996, i32 459264) #8, !srcloc !89
  br label %r100_mm_wreg.exit1999

if.else.i1998:                                    ; preds = %r100_mm_wreg.exit1990
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 132864) #8
  br label %r100_mm_wreg.exit1999

r100_mm_wreg.exit1999:                            ; preds = %if.else.i1998, %do.body.i1997
  %702 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %702)
  %703 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %703, i32 %add2)
  %cmp.i2001 = icmp ugt i32 %703, %add2
  %or.cond.i2003 = or i1 %cmp1.i526, %cmp.i2001
  br i1 %or.cond.i2003, label %do.body.i2006, label %if.else.i2007

do.body.i2006:                                    ; preds = %r100_mm_wreg.exit1999
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i2004 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %704 = ptrtoint ptr %rmmio.i2004 to i32
  call void @__asan_load4_noabort(i32 %704)
  %705 = load ptr, ptr %rmmio.i2004, align 4
  %add.ptr.i2005 = getelementptr i8, ptr %705, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2005, i32 8392832) #8, !srcloc !89
  br label %r100_mm_wreg.exit2008

if.else.i2007:                                    ; preds = %r100_mm_wreg.exit1999
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2146402304) #8
  br label %r100_mm_wreg.exit2008

r100_mm_wreg.exit2008:                            ; preds = %if.else.i2007, %do.body.i2006
  %706 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %706)
  %707 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %707, i32 %add)
  %cmp.i2010 = icmp ugt i32 %707, %add
  %or.cond.i2012 = or i1 %cmp1.i517, %cmp.i2010
  br i1 %or.cond.i2012, label %do.body.i2015, label %if.else.i2016

do.body.i2015:                                    ; preds = %r100_mm_wreg.exit2008
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i2013 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %708 = ptrtoint ptr %rmmio.i2013 to i32
  call void @__asan_load4_noabort(i32 %708)
  %709 = load ptr, ptr %rmmio.i2013, align 4
  %add.ptr.i2014 = getelementptr i8, ptr %709, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2014, i32 17236480) #8, !srcloc !89
  br label %r100_mm_wreg.exit2017

if.else.i2016:                                    ; preds = %r100_mm_wreg.exit2008
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 132865) #8
  br label %r100_mm_wreg.exit2017

r100_mm_wreg.exit2017:                            ; preds = %if.else.i2016, %do.body.i2015
  %710 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %710)
  %711 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %711, i32 %add2)
  %cmp.i2019 = icmp ugt i32 %711, %add2
  %or.cond.i2021 = or i1 %cmp1.i526, %cmp.i2019
  br i1 %or.cond.i2021, label %do.body.i2024, label %if.else.i2025

do.body.i2024:                                    ; preds = %r100_mm_wreg.exit2017
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i2022 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %712 = ptrtoint ptr %rmmio.i2022 to i32
  call void @__asan_load4_noabort(i32 %712)
  %713 = load ptr, ptr %rmmio.i2022, align 4
  %add.ptr.i2023 = getelementptr i8, ptr %713, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2023, i32 -1329692534) #8, !srcloc !89
  br label %r100_mm_wreg.exit2026

if.else.i2025:                                    ; preds = %r100_mm_wreg.exit2017
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -1971274064) #8
  br label %r100_mm_wreg.exit2026

r100_mm_wreg.exit2026:                            ; preds = %if.else.i2025, %do.body.i2024
  %714 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %714)
  %715 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %715, i32 %add)
  %cmp.i2028 = icmp ugt i32 %715, %add
  %or.cond.i2030 = or i1 %cmp1.i517, %cmp.i2028
  br i1 %or.cond.i2030, label %do.body.i2033, label %if.else.i2034

do.body.i2033:                                    ; preds = %r100_mm_wreg.exit2026
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i2031 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %716 = ptrtoint ptr %rmmio.i2031 to i32
  call void @__asan_load4_noabort(i32 %716)
  %717 = load ptr, ptr %rmmio.i2031, align 4
  %add.ptr.i2032 = getelementptr i8, ptr %717, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2032, i32 34013696) #8, !srcloc !89
  br label %r100_mm_wreg.exit2035

if.else.i2034:                                    ; preds = %r100_mm_wreg.exit2026
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 132866) #8
  br label %r100_mm_wreg.exit2035

r100_mm_wreg.exit2035:                            ; preds = %if.else.i2034, %do.body.i2033
  %718 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %718)
  %719 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %719, i32 %add2)
  %cmp.i2037 = icmp ugt i32 %719, %add2
  %or.cond.i2039 = or i1 %cmp1.i526, %cmp.i2037
  br i1 %or.cond.i2039, label %do.body.i2042, label %if.else.i2043

do.body.i2042:                                    ; preds = %r100_mm_wreg.exit2035
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i2040 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %720 = ptrtoint ptr %rmmio.i2040 to i32
  call void @__asan_load4_noabort(i32 %720)
  %721 = load ptr, ptr %rmmio.i2040, align 4
  %add.ptr.i2041 = getelementptr i8, ptr %721, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2041, i32 -1064894273) #8, !srcloc !89
  br label %r100_mm_wreg.exit2044

if.else.i2043:                                    ; preds = %r100_mm_wreg.exit2035
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -1090484288) #8
  br label %r100_mm_wreg.exit2044

r100_mm_wreg.exit2044:                            ; preds = %if.else.i2043, %do.body.i2042
  %722 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %722)
  %723 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %723, i32 %add)
  %cmp.i2046 = icmp ugt i32 %723, %add
  %or.cond.i2048 = or i1 %cmp1.i517, %cmp.i2046
  br i1 %or.cond.i2048, label %do.body.i2051, label %if.else.i2052

do.body.i2051:                                    ; preds = %r100_mm_wreg.exit2044
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i2049 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %724 = ptrtoint ptr %rmmio.i2049 to i32
  call void @__asan_load4_noabort(i32 %724)
  %725 = load ptr, ptr %rmmio.i2049, align 4
  %add.ptr.i2050 = getelementptr i8, ptr %725, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2050, i32 50790912) #8, !srcloc !89
  br label %r100_mm_wreg.exit2053

if.else.i2052:                                    ; preds = %r100_mm_wreg.exit2044
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 132867) #8
  br label %r100_mm_wreg.exit2053

r100_mm_wreg.exit2053:                            ; preds = %if.else.i2052, %do.body.i2051
  %726 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %726)
  %727 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %727, i32 %add2)
  %cmp.i2055 = icmp ugt i32 %727, %add2
  %or.cond.i2057 = or i1 %cmp1.i526, %cmp.i2055
  br i1 %or.cond.i2057, label %do.body.i2060, label %if.else.i2061

do.body.i2060:                                    ; preds = %r100_mm_wreg.exit2053
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i2058 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %728 = ptrtoint ptr %rmmio.i2058 to i32
  call void @__asan_load4_noabort(i32 %728)
  %729 = load ptr, ptr %rmmio.i2058, align 4
  %add.ptr.i2059 = getelementptr i8, ptr %729, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2059, i32 142606464) #8, !srcloc !89
  br label %r100_mm_wreg.exit2062

if.else.i2061:                                    ; preds = %r100_mm_wreg.exit2053
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2147450872) #8
  br label %r100_mm_wreg.exit2062

r100_mm_wreg.exit2062:                            ; preds = %if.else.i2061, %do.body.i2060
  %730 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %730)
  %731 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %731, i32 %add)
  %cmp.i2064 = icmp ugt i32 %731, %add
  %or.cond.i2066 = or i1 %cmp1.i517, %cmp.i2064
  br i1 %or.cond.i2066, label %do.body.i2069, label %if.else.i2070

do.body.i2069:                                    ; preds = %r100_mm_wreg.exit2062
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i2067 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %732 = ptrtoint ptr %rmmio.i2067 to i32
  call void @__asan_load4_noabort(i32 %732)
  %733 = load ptr, ptr %rmmio.i2067, align 4
  %add.ptr.i2068 = getelementptr i8, ptr %733, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2068, i32 524800) #8, !srcloc !89
  br label %r100_mm_wreg.exit2071

if.else.i2070:                                    ; preds = %r100_mm_wreg.exit2062
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 133120) #8
  br label %r100_mm_wreg.exit2071

r100_mm_wreg.exit2071:                            ; preds = %if.else.i2070, %do.body.i2069
  %734 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %734)
  %735 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %735, i32 %add2)
  %cmp.i2073 = icmp ugt i32 %735, %add2
  %or.cond.i2075 = or i1 %cmp1.i526, %cmp.i2073
  br i1 %or.cond.i2075, label %do.body.i2078, label %if.else.i2079

do.body.i2078:                                    ; preds = %r100_mm_wreg.exit2071
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i2076 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %736 = ptrtoint ptr %rmmio.i2076 to i32
  call void @__asan_load4_noabort(i32 %736)
  %737 = load ptr, ptr %rmmio.i2076, align 4
  %add.ptr.i2077 = getelementptr i8, ptr %737, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2077, i32 8392832) #8, !srcloc !89
  br label %r100_mm_wreg.exit2080

if.else.i2079:                                    ; preds = %r100_mm_wreg.exit2071
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2146402304) #8
  br label %r100_mm_wreg.exit2080

r100_mm_wreg.exit2080:                            ; preds = %if.else.i2079, %do.body.i2078
  %738 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %738)
  %739 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %739, i32 %add)
  %cmp.i2082 = icmp ugt i32 %739, %add
  %or.cond.i2084 = or i1 %cmp1.i517, %cmp.i2082
  br i1 %or.cond.i2084, label %do.body.i2087, label %if.else.i2088

do.body.i2087:                                    ; preds = %r100_mm_wreg.exit2080
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i2085 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %740 = ptrtoint ptr %rmmio.i2085 to i32
  call void @__asan_load4_noabort(i32 %740)
  %741 = load ptr, ptr %rmmio.i2085, align 4
  %add.ptr.i2086 = getelementptr i8, ptr %741, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2086, i32 17302016) #8, !srcloc !89
  br label %r100_mm_wreg.exit2089

if.else.i2088:                                    ; preds = %r100_mm_wreg.exit2080
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 133121) #8
  br label %r100_mm_wreg.exit2089

r100_mm_wreg.exit2089:                            ; preds = %if.else.i2088, %do.body.i2087
  %742 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %742)
  %743 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %743, i32 %add2)
  %cmp.i2091 = icmp ugt i32 %743, %add2
  %or.cond.i2093 = or i1 %cmp1.i526, %cmp.i2091
  br i1 %or.cond.i2093, label %do.body.i2096, label %if.else.i2097

do.body.i2096:                                    ; preds = %r100_mm_wreg.exit2089
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i2094 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %744 = ptrtoint ptr %rmmio.i2094 to i32
  call void @__asan_load4_noabort(i32 %744)
  %745 = load ptr, ptr %rmmio.i2094, align 4
  %add.ptr.i2095 = getelementptr i8, ptr %745, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2095, i32 -792846199) #8, !srcloc !89
  br label %r100_mm_wreg.exit2098

if.else.i2097:                                    ; preds = %r100_mm_wreg.exit2089
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -1994342704) #8
  br label %r100_mm_wreg.exit2098

r100_mm_wreg.exit2098:                            ; preds = %if.else.i2097, %do.body.i2096
  %746 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %746)
  %747 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %747, i32 %add)
  %cmp.i2100 = icmp ugt i32 %747, %add
  %or.cond.i2102 = or i1 %cmp1.i517, %cmp.i2100
  br i1 %or.cond.i2102, label %do.body.i2105, label %if.else.i2106

do.body.i2105:                                    ; preds = %r100_mm_wreg.exit2098
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i2103 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %748 = ptrtoint ptr %rmmio.i2103 to i32
  call void @__asan_load4_noabort(i32 %748)
  %749 = load ptr, ptr %rmmio.i2103, align 4
  %add.ptr.i2104 = getelementptr i8, ptr %749, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2104, i32 34079232) #8, !srcloc !89
  br label %r100_mm_wreg.exit2107

if.else.i2106:                                    ; preds = %r100_mm_wreg.exit2098
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 133122) #8
  br label %r100_mm_wreg.exit2107

r100_mm_wreg.exit2107:                            ; preds = %if.else.i2106, %do.body.i2105
  %750 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %750)
  %751 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %751, i32 %add2)
  %cmp.i2109 = icmp ugt i32 %751, %add2
  %or.cond.i2111 = or i1 %cmp1.i526, %cmp.i2109
  br i1 %or.cond.i2111, label %do.body.i2114, label %if.else.i2115

do.body.i2114:                                    ; preds = %r100_mm_wreg.exit2107
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i2112 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %752 = ptrtoint ptr %rmmio.i2112 to i32
  call void @__asan_load4_noabort(i32 %752)
  %753 = load ptr, ptr %rmmio.i2112, align 4
  %add.ptr.i2113 = getelementptr i8, ptr %753, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2113, i32 545902782) #8, !srcloc !89
  br label %r100_mm_wreg.exit2116

if.else.i2115:                                    ; preds = %r100_mm_wreg.exit2107
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -1093629664) #8
  br label %r100_mm_wreg.exit2116

r100_mm_wreg.exit2116:                            ; preds = %if.else.i2115, %do.body.i2114
  %754 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %754)
  %755 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %755, i32 %add)
  %cmp.i2118 = icmp ugt i32 %755, %add
  %or.cond.i2120 = or i1 %cmp1.i517, %cmp.i2118
  br i1 %or.cond.i2120, label %do.body.i2123, label %if.else.i2124

do.body.i2123:                                    ; preds = %r100_mm_wreg.exit2116
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i2121 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %756 = ptrtoint ptr %rmmio.i2121 to i32
  call void @__asan_load4_noabort(i32 %756)
  %757 = load ptr, ptr %rmmio.i2121, align 4
  %add.ptr.i2122 = getelementptr i8, ptr %757, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2122, i32 50856448) #8, !srcloc !89
  br label %r100_mm_wreg.exit2125

if.else.i2124:                                    ; preds = %r100_mm_wreg.exit2116
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 133123) #8
  br label %r100_mm_wreg.exit2125

r100_mm_wreg.exit2125:                            ; preds = %if.else.i2124, %do.body.i2123
  %758 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %758)
  %759 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %759, i32 %add2)
  %cmp.i2127 = icmp ugt i32 %759, %add2
  %or.cond.i2129 = or i1 %cmp1.i526, %cmp.i2127
  br i1 %or.cond.i2129, label %do.body.i2132, label %if.else.i2133

do.body.i2132:                                    ; preds = %r100_mm_wreg.exit2125
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i2130 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %760 = ptrtoint ptr %rmmio.i2130 to i32
  call void @__asan_load4_noabort(i32 %760)
  %761 = load ptr, ptr %rmmio.i2130, align 4
  %add.ptr.i2131 = getelementptr i8, ptr %761, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2131, i32 276824192) #8, !srcloc !89
  br label %r100_mm_wreg.exit2134

if.else.i2133:                                    ; preds = %r100_mm_wreg.exit2125
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2147450864) #8
  br label %r100_mm_wreg.exit2134

r100_mm_wreg.exit2134:                            ; preds = %if.else.i2133, %do.body.i2132
  %762 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %762)
  %763 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %763, i32 %add)
  %cmp.i2136 = icmp ugt i32 %763, %add
  %or.cond.i2138 = or i1 %cmp1.i517, %cmp.i2136
  br i1 %or.cond.i2138, label %do.body.i2141, label %if.else.i2142

do.body.i2141:                                    ; preds = %r100_mm_wreg.exit2134
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i2139 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %764 = ptrtoint ptr %rmmio.i2139 to i32
  call void @__asan_load4_noabort(i32 %764)
  %765 = load ptr, ptr %rmmio.i2139, align 4
  %add.ptr.i2140 = getelementptr i8, ptr %765, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2140, i32 768) #8, !srcloc !89
  br label %r100_mm_wreg.exit2143

if.else.i2142:                                    ; preds = %r100_mm_wreg.exit2134
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 196608) #8
  br label %r100_mm_wreg.exit2143

r100_mm_wreg.exit2143:                            ; preds = %if.else.i2142, %do.body.i2141
  %766 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %766)
  %767 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %767, i32 %add2)
  %cmp.i2145 = icmp ugt i32 %767, %add2
  %or.cond.i2147 = or i1 %cmp1.i526, %cmp.i2145
  br i1 %or.cond.i2147, label %do.body.i2150, label %if.else.i2151

do.body.i2150:                                    ; preds = %r100_mm_wreg.exit2143
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i2148 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %768 = ptrtoint ptr %rmmio.i2148 to i32
  call void @__asan_load4_noabort(i32 %768)
  %769 = load ptr, ptr %rmmio.i2148, align 4
  %add.ptr.i2149 = getelementptr i8, ptr %769, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2149, i32 8388752) #8, !srcloc !89
  br label %r100_mm_wreg.exit2152

if.else.i2151:                                    ; preds = %r100_mm_wreg.exit2143
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -1879015424) #8
  br label %r100_mm_wreg.exit2152

r100_mm_wreg.exit2152:                            ; preds = %if.else.i2151, %do.body.i2150
  %770 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %770)
  %771 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %771, i32 %add)
  %cmp.i2154 = icmp ugt i32 %771, %add
  %or.cond.i2156 = or i1 %cmp1.i517, %cmp.i2154
  br i1 %or.cond.i2156, label %do.body.i2159, label %if.else.i2160

do.body.i2159:                                    ; preds = %r100_mm_wreg.exit2152
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i2157 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %772 = ptrtoint ptr %rmmio.i2157 to i32
  call void @__asan_load4_noabort(i32 %772)
  %773 = load ptr, ptr %rmmio.i2157, align 4
  %add.ptr.i2158 = getelementptr i8, ptr %773, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2158, i32 16777984) #8, !srcloc !89
  br label %r100_mm_wreg.exit2161

if.else.i2160:                                    ; preds = %r100_mm_wreg.exit2152
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 196609) #8
  br label %r100_mm_wreg.exit2161

r100_mm_wreg.exit2161:                            ; preds = %if.else.i2160, %do.body.i2159
  %774 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %774)
  %775 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %775, i32 %add2)
  %cmp.i2163 = icmp ugt i32 %775, %add2
  %or.cond.i2165 = or i1 %cmp1.i526, %cmp.i2163
  br i1 %or.cond.i2165, label %do.body.i2168, label %if.else.i2169

do.body.i2168:                                    ; preds = %r100_mm_wreg.exit2161
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i2166 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %776 = ptrtoint ptr %rmmio.i2166 to i32
  call void @__asan_load4_noabort(i32 %776)
  %777 = load ptr, ptr %rmmio.i2166, align 4
  %add.ptr.i2167 = getelementptr i8, ptr %777, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2167, i32 8388736) #8, !srcloc !89
  br label %r100_mm_wreg.exit2170

if.else.i2169:                                    ; preds = %r100_mm_wreg.exit2161
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -2147450880) #8
  br label %r100_mm_wreg.exit2170

r100_mm_wreg.exit2170:                            ; preds = %if.else.i2169, %do.body.i2168
  %778 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %778)
  %779 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %779, i32 %add)
  %cmp.i2172 = icmp ugt i32 %779, %add
  %or.cond.i2174 = or i1 %cmp1.i517, %cmp.i2172
  br i1 %or.cond.i2174, label %do.body.i2177, label %if.else.i2178

do.body.i2177:                                    ; preds = %r100_mm_wreg.exit2170
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i2175 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %780 = ptrtoint ptr %rmmio.i2175 to i32
  call void @__asan_load4_noabort(i32 %780)
  %781 = load ptr, ptr %rmmio.i2175, align 4
  %add.ptr.i2176 = getelementptr i8, ptr %781, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2176, i32 66304) #8, !srcloc !89
  br label %r100_mm_wreg.exit2179

if.else.i2178:                                    ; preds = %r100_mm_wreg.exit2170
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 196864) #8
  br label %r100_mm_wreg.exit2179

r100_mm_wreg.exit2179:                            ; preds = %if.else.i2178, %do.body.i2177
  %782 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %782)
  %783 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %783, i32 %add2)
  %cmp.i2181 = icmp ugt i32 %783, %add2
  %or.cond.i2183 = or i1 %cmp1.i526, %cmp.i2181
  br i1 %or.cond.i2183, label %do.body.i2186, label %if.else.i2187

do.body.i2186:                                    ; preds = %r100_mm_wreg.exit2179
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i2184 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %784 = ptrtoint ptr %rmmio.i2184 to i32
  call void @__asan_load4_noabort(i32 %784)
  %785 = load ptr, ptr %rmmio.i2184, align 4
  %add.ptr.i2185 = getelementptr i8, ptr %785, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2185, i32 -1866473329) #8, !srcloc !89
  br label %r100_mm_wreg.exit2188

if.else.i2187:                                    ; preds = %r100_mm_wreg.exit2179
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -1881096304) #8
  br label %r100_mm_wreg.exit2188

r100_mm_wreg.exit2188:                            ; preds = %if.else.i2187, %do.body.i2186
  %786 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %786)
  %787 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %787, i32 %add)
  %cmp.i2190 = icmp ugt i32 %787, %add
  %or.cond.i2192 = or i1 %cmp1.i517, %cmp.i2190
  br i1 %or.cond.i2192, label %do.body.i2195, label %if.else.i2196

do.body.i2195:                                    ; preds = %r100_mm_wreg.exit2188
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i2193 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %788 = ptrtoint ptr %rmmio.i2193 to i32
  call void @__asan_load4_noabort(i32 %788)
  %789 = load ptr, ptr %rmmio.i2193, align 4
  %add.ptr.i2194 = getelementptr i8, ptr %789, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2194, i32 16843520) #8, !srcloc !89
  br label %r100_mm_wreg.exit2197

if.else.i2196:                                    ; preds = %r100_mm_wreg.exit2188
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 196865) #8
  br label %r100_mm_wreg.exit2197

r100_mm_wreg.exit2197:                            ; preds = %if.else.i2196, %do.body.i2195
  %790 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %790)
  %791 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %791, i32 %add2)
  %cmp.i2199 = icmp ugt i32 %791, %add2
  %or.cond.i2201 = or i1 %cmp1.i526, %cmp.i2199
  br i1 %or.cond.i2201, label %do.body.i2204, label %if.else.i2205

do.body.i2204:                                    ; preds = %r100_mm_wreg.exit2197
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i2202 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %792 = ptrtoint ptr %rmmio.i2202 to i32
  call void @__asan_load4_noabort(i32 %792)
  %793 = load ptr, ptr %rmmio.i2202, align 4
  %add.ptr.i2203 = getelementptr i8, ptr %793, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2203, i32 -1602160449) #8, !srcloc !89
  br label %r100_mm_wreg.exit2206

if.else.i2205:                                    ; preds = %r100_mm_wreg.exit2197
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -1074233184) #8
  br label %r100_mm_wreg.exit2206

r100_mm_wreg.exit2206:                            ; preds = %if.else.i2205, %do.body.i2204
  %794 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %794)
  %795 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %795, i32 %add)
  %cmp.i2208 = icmp ugt i32 %795, %add
  %or.cond.i2210 = or i1 %cmp1.i517, %cmp.i2208
  br i1 %or.cond.i2210, label %do.body.i2213, label %if.else.i2214

do.body.i2213:                                    ; preds = %r100_mm_wreg.exit2206
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i2211 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %796 = ptrtoint ptr %rmmio.i2211 to i32
  call void @__asan_load4_noabort(i32 %796)
  %797 = load ptr, ptr %rmmio.i2211, align 4
  %add.ptr.i2212 = getelementptr i8, ptr %797, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2212, i32 131840) #8, !srcloc !89
  br label %r100_mm_wreg.exit2215

if.else.i2214:                                    ; preds = %r100_mm_wreg.exit2206
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 197120) #8
  br label %r100_mm_wreg.exit2215

r100_mm_wreg.exit2215:                            ; preds = %if.else.i2214, %do.body.i2213
  %798 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %798)
  %799 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %799, i32 %add2)
  %cmp.i2217 = icmp ugt i32 %799, %add2
  %or.cond.i2219 = or i1 %cmp1.i526, %cmp.i2217
  br i1 %or.cond.i2219, label %do.body.i2222, label %if.else.i2223

do.body.i2222:                                    ; preds = %r100_mm_wreg.exit2215
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i2220 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %800 = ptrtoint ptr %rmmio.i2220 to i32
  call void @__asan_load4_noabort(i32 %800)
  %801 = load ptr, ptr %rmmio.i2220, align 4
  %add.ptr.i2221 = getelementptr i8, ptr %801, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2221, i32 1086283919) #8, !srcloc !89
  br label %r100_mm_wreg.exit2224

if.else.i2223:                                    ; preds = %r100_mm_wreg.exit2215
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -1889484992) #8
  br label %r100_mm_wreg.exit2224

r100_mm_wreg.exit2224:                            ; preds = %if.else.i2223, %do.body.i2222
  %802 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %802)
  %803 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %803, i32 %add)
  %cmp.i2226 = icmp ugt i32 %803, %add
  %or.cond.i2228 = or i1 %cmp1.i517, %cmp.i2226
  br i1 %or.cond.i2228, label %do.body.i2231, label %if.else.i2232

do.body.i2231:                                    ; preds = %r100_mm_wreg.exit2224
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i2229 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %804 = ptrtoint ptr %rmmio.i2229 to i32
  call void @__asan_load4_noabort(i32 %804)
  %805 = load ptr, ptr %rmmio.i2229, align 4
  %add.ptr.i2230 = getelementptr i8, ptr %805, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2230, i32 16909056) #8, !srcloc !89
  br label %r100_mm_wreg.exit2233

if.else.i2232:                                    ; preds = %r100_mm_wreg.exit2224
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 197121) #8
  br label %r100_mm_wreg.exit2233

r100_mm_wreg.exit2233:                            ; preds = %if.else.i2232, %do.body.i2231
  %806 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %806)
  %807 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %807, i32 %add2)
  %cmp.i2235 = icmp ugt i32 %807, %add2
  %or.cond.i2237 = or i1 %cmp1.i526, %cmp.i2235
  br i1 %or.cond.i2237, label %do.body.i2240, label %if.else.i2241

do.body.i2240:                                    ; preds = %r100_mm_wreg.exit2233
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i2238 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %808 = ptrtoint ptr %rmmio.i2238 to i32
  call void @__asan_load4_noabort(i32 %808)
  %809 = load ptr, ptr %rmmio.i2238, align 4
  %add.ptr.i2239 = getelementptr i8, ptr %809, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2239, i32 -2138969921) #8, !srcloc !89
  br label %r100_mm_wreg.exit2242

if.else.i2241:                                    ; preds = %r100_mm_wreg.exit2233
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -1075281536) #8
  br label %r100_mm_wreg.exit2242

r100_mm_wreg.exit2242:                            ; preds = %if.else.i2241, %do.body.i2240
  %810 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %810)
  %811 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %811, i32 %add)
  %cmp.i2244 = icmp ugt i32 %811, %add
  %or.cond.i2246 = or i1 %cmp1.i517, %cmp.i2244
  br i1 %or.cond.i2246, label %do.body.i2249, label %if.else.i2250

do.body.i2249:                                    ; preds = %r100_mm_wreg.exit2242
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i2247 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %812 = ptrtoint ptr %rmmio.i2247 to i32
  call void @__asan_load4_noabort(i32 %812)
  %813 = load ptr, ptr %rmmio.i2247, align 4
  %add.ptr.i2248 = getelementptr i8, ptr %813, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2248, i32 197376) #8, !srcloc !89
  br label %r100_mm_wreg.exit2251

if.else.i2250:                                    ; preds = %r100_mm_wreg.exit2242
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 197376) #8
  br label %r100_mm_wreg.exit2251

r100_mm_wreg.exit2251:                            ; preds = %if.else.i2250, %do.body.i2249
  %814 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %814)
  %815 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %815, i32 %add2)
  %cmp.i2253 = icmp ugt i32 %815, %add2
  %or.cond.i2255 = or i1 %cmp1.i526, %cmp.i2253
  br i1 %or.cond.i2255, label %do.body.i2258, label %if.else.i2259

do.body.i2258:                                    ; preds = %r100_mm_wreg.exit2251
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i2256 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %816 = ptrtoint ptr %rmmio.i2256 to i32
  call void @__asan_load4_noabort(i32 %816)
  %817 = load ptr, ptr %rmmio.i2256, align 4
  %add.ptr.i2257 = getelementptr i8, ptr %817, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2257, i32 12566670) #8, !srcloc !89
  br label %r100_mm_wreg.exit2260

if.else.i2259:                                    ; preds = %r100_mm_wreg.exit2251
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -1899970816) #8
  br label %r100_mm_wreg.exit2260

r100_mm_wreg.exit2260:                            ; preds = %if.else.i2259, %do.body.i2258
  %818 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %818)
  %819 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %819, i32 %add)
  %cmp.i2262 = icmp ugt i32 %819, %add
  %or.cond.i2264 = or i1 %cmp1.i517, %cmp.i2262
  br i1 %or.cond.i2264, label %do.body.i2267, label %if.else.i2268

do.body.i2267:                                    ; preds = %r100_mm_wreg.exit2260
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i2265 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %820 = ptrtoint ptr %rmmio.i2265 to i32
  call void @__asan_load4_noabort(i32 %820)
  %821 = load ptr, ptr %rmmio.i2265, align 4
  %add.ptr.i2266 = getelementptr i8, ptr %821, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2266, i32 16974592) #8, !srcloc !89
  br label %r100_mm_wreg.exit2269

if.else.i2268:                                    ; preds = %r100_mm_wreg.exit2260
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 197377) #8
  br label %r100_mm_wreg.exit2269

r100_mm_wreg.exit2269:                            ; preds = %if.else.i2268, %do.body.i2267
  %822 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %822)
  %823 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %823, i32 %add2)
  %cmp.i2271 = icmp ugt i32 %823, %add2
  %or.cond.i2273 = or i1 %cmp1.i526, %cmp.i2271
  br i1 %or.cond.i2273, label %do.body.i2276, label %if.else.i2277

do.body.i2276:                                    ; preds = %r100_mm_wreg.exit2269
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i2274 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %824 = ptrtoint ptr %rmmio.i2274 to i32
  call void @__asan_load4_noabort(i32 %824)
  %825 = load ptr, ptr %rmmio.i2274, align 4
  %add.ptr.i2275 = getelementptr i8, ptr %825, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2275, i32 -2138912577) #8, !srcloc !89
  br label %r100_mm_wreg.exit2278

if.else.i2277:                                    ; preds = %r100_mm_wreg.exit2269
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -1077378432) #8
  br label %r100_mm_wreg.exit2278

r100_mm_wreg.exit2278:                            ; preds = %if.else.i2277, %do.body.i2276
  %826 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %826)
  %827 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %827, i32 %add)
  %cmp.i2280 = icmp ugt i32 %827, %add
  %or.cond.i2282 = or i1 %cmp1.i517, %cmp.i2280
  br i1 %or.cond.i2282, label %do.body.i2285, label %if.else.i2286

do.body.i2285:                                    ; preds = %r100_mm_wreg.exit2278
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i2283 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %828 = ptrtoint ptr %rmmio.i2283 to i32
  call void @__asan_load4_noabort(i32 %828)
  %829 = load ptr, ptr %rmmio.i2283, align 4
  %add.ptr.i2284 = getelementptr i8, ptr %829, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2284, i32 262912) #8, !srcloc !89
  br label %r100_mm_wreg.exit2287

if.else.i2286:                                    ; preds = %r100_mm_wreg.exit2278
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 197632) #8
  br label %r100_mm_wreg.exit2287

r100_mm_wreg.exit2287:                            ; preds = %if.else.i2286, %do.body.i2285
  %830 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %830)
  %831 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %831, i32 %add2)
  %cmp.i2289 = icmp ugt i32 %831, %add2
  %or.cond.i2291 = or i1 %cmp1.i526, %cmp.i2289
  br i1 %or.cond.i2291, label %do.body.i2294, label %if.else.i2295

do.body.i2294:                                    ; preds = %r100_mm_wreg.exit2287
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i2292 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %832 = ptrtoint ptr %rmmio.i2292 to i32
  call void @__asan_load4_noabort(i32 %832)
  %833 = load ptr, ptr %rmmio.i2292, align 4
  %add.ptr.i2293 = getelementptr i8, ptr %833, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2293, i32 -524361587) #8, !srcloc !89
  br label %r100_mm_wreg.exit2296

if.else.i2295:                                    ; preds = %r100_mm_wreg.exit2287
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -1914650912) #8
  br label %r100_mm_wreg.exit2296

r100_mm_wreg.exit2296:                            ; preds = %if.else.i2295, %do.body.i2294
  %834 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %834)
  %835 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %835, i32 %add)
  %cmp.i2298 = icmp ugt i32 %835, %add
  %or.cond.i2300 = or i1 %cmp1.i517, %cmp.i2298
  br i1 %or.cond.i2300, label %do.body.i2303, label %if.else.i2304

do.body.i2303:                                    ; preds = %r100_mm_wreg.exit2296
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i2301 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %836 = ptrtoint ptr %rmmio.i2301 to i32
  call void @__asan_load4_noabort(i32 %836)
  %837 = load ptr, ptr %rmmio.i2301, align 4
  %add.ptr.i2302 = getelementptr i8, ptr %837, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2302, i32 17040128) #8, !srcloc !89
  br label %r100_mm_wreg.exit2305

if.else.i2304:                                    ; preds = %r100_mm_wreg.exit2296
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 197633) #8
  br label %r100_mm_wreg.exit2305

r100_mm_wreg.exit2305:                            ; preds = %if.else.i2304, %do.body.i2303
  %838 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %838)
  %839 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %839, i32 %add2)
  %cmp.i2307 = icmp ugt i32 %839, %add2
  %or.cond.i2309 = or i1 %cmp1.i526, %cmp.i2307
  br i1 %or.cond.i2309, label %do.body.i2312, label %if.else.i2313

do.body.i2312:                                    ; preds = %r100_mm_wreg.exit2305
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i2310 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %840 = ptrtoint ptr %rmmio.i2310 to i32
  call void @__asan_load4_noabort(i32 %840)
  %841 = load ptr, ptr %rmmio.i2310, align 4
  %add.ptr.i2311 = getelementptr i8, ptr %841, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2311, i32 -1601986369) #8, !srcloc !89
  br label %r100_mm_wreg.exit2314

if.else.i2313:                                    ; preds = %r100_mm_wreg.exit2305
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -1079999584) #8
  br label %r100_mm_wreg.exit2314

r100_mm_wreg.exit2314:                            ; preds = %if.else.i2313, %do.body.i2312
  %842 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %842)
  %843 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %843, i32 %add)
  %cmp.i2316 = icmp ugt i32 %843, %add
  %or.cond.i2318 = or i1 %cmp1.i517, %cmp.i2316
  br i1 %or.cond.i2318, label %do.body.i2321, label %if.else.i2322

do.body.i2321:                                    ; preds = %r100_mm_wreg.exit2314
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i2319 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %844 = ptrtoint ptr %rmmio.i2319 to i32
  call void @__asan_load4_noabort(i32 %844)
  %845 = load ptr, ptr %rmmio.i2319, align 4
  %add.ptr.i2320 = getelementptr i8, ptr %845, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2320, i32 328448) #8, !srcloc !89
  br label %r100_mm_wreg.exit2323

if.else.i2322:                                    ; preds = %r100_mm_wreg.exit2314
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 197888) #8
  br label %r100_mm_wreg.exit2323

r100_mm_wreg.exit2323:                            ; preds = %if.else.i2322, %do.body.i2321
  %846 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %846)
  %847 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %847, i32 %add2)
  %cmp.i2325 = icmp ugt i32 %847, %add2
  %or.cond.i2327 = or i1 %cmp1.i526, %cmp.i2325
  br i1 %or.cond.i2327, label %do.body.i2330, label %if.else.i2331

do.body.i2330:                                    ; preds = %r100_mm_wreg.exit2323
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i2328 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %848 = ptrtoint ptr %rmmio.i2328 to i32
  call void @__asan_load4_noabort(i32 %848)
  %849 = load ptr, ptr %rmmio.i2328, align 4
  %add.ptr.i2329 = getelementptr i8, ptr %849, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2329, i32 -792797044) #8, !srcloc !89
  br label %r100_mm_wreg.exit2332

if.else.i2331:                                    ; preds = %r100_mm_wreg.exit2323
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -1931428144) #8
  br label %r100_mm_wreg.exit2332

r100_mm_wreg.exit2332:                            ; preds = %if.else.i2331, %do.body.i2330
  %850 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %850)
  %851 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %851, i32 %add)
  %cmp.i2334 = icmp ugt i32 %851, %add
  %or.cond.i2336 = or i1 %cmp1.i517, %cmp.i2334
  br i1 %or.cond.i2336, label %do.body.i2339, label %if.else.i2340

do.body.i2339:                                    ; preds = %r100_mm_wreg.exit2332
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i2337 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %852 = ptrtoint ptr %rmmio.i2337 to i32
  call void @__asan_load4_noabort(i32 %852)
  %853 = load ptr, ptr %rmmio.i2337, align 4
  %add.ptr.i2338 = getelementptr i8, ptr %853, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2338, i32 17105664) #8, !srcloc !89
  br label %r100_mm_wreg.exit2341

if.else.i2340:                                    ; preds = %r100_mm_wreg.exit2332
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 197889) #8
  br label %r100_mm_wreg.exit2341

r100_mm_wreg.exit2341:                            ; preds = %if.else.i2340, %do.body.i2339
  %854 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %854)
  %855 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %855, i32 %add2)
  %cmp.i2343 = icmp ugt i32 %855, %add2
  %or.cond.i2345 = or i1 %cmp1.i526, %cmp.i2343
  br i1 %or.cond.i2345, label %do.body.i2348, label %if.else.i2349

do.body.i2348:                                    ; preds = %r100_mm_wreg.exit2341
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i2346 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %856 = ptrtoint ptr %rmmio.i2346 to i32
  call void @__asan_load4_noabort(i32 %856)
  %857 = load ptr, ptr %rmmio.i2346, align 4
  %add.ptr.i2347 = getelementptr i8, ptr %857, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2347, i32 -528189249) #8, !srcloc !89
  br label %r100_mm_wreg.exit2350

if.else.i2349:                                    ; preds = %r100_mm_wreg.exit2341
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -1082620704) #8
  br label %r100_mm_wreg.exit2350

r100_mm_wreg.exit2350:                            ; preds = %if.else.i2349, %do.body.i2348
  %858 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %858)
  %859 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %859, i32 %add)
  %cmp.i2352 = icmp ugt i32 %859, %add
  %or.cond.i2354 = or i1 %cmp1.i517, %cmp.i2352
  br i1 %or.cond.i2354, label %do.body.i2357, label %if.else.i2358

do.body.i2357:                                    ; preds = %r100_mm_wreg.exit2350
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i2355 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %860 = ptrtoint ptr %rmmio.i2355 to i32
  call void @__asan_load4_noabort(i32 %860)
  %861 = load ptr, ptr %rmmio.i2355, align 4
  %add.ptr.i2356 = getelementptr i8, ptr %861, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2356, i32 393984) #8, !srcloc !89
  br label %r100_mm_wreg.exit2359

if.else.i2358:                                    ; preds = %r100_mm_wreg.exit2350
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 198144) #8
  br label %r100_mm_wreg.exit2359

r100_mm_wreg.exit2359:                            ; preds = %if.else.i2358, %do.body.i2357
  %862 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %862)
  %863 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %863, i32 %add2)
  %cmp.i2361 = icmp ugt i32 %863, %add2
  %or.cond.i2363 = or i1 %cmp1.i526, %cmp.i2361
  br i1 %or.cond.i2363, label %do.body.i2366, label %if.else.i2367

do.body.i2366:                                    ; preds = %r100_mm_wreg.exit2359
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i2364 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %864 = ptrtoint ptr %rmmio.i2364 to i32
  call void @__asan_load4_noabort(i32 %864)
  %865 = load ptr, ptr %rmmio.i2364, align 4
  %add.ptr.i2365 = getelementptr i8, ptr %865, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2365, i32 -658595701) #8, !srcloc !89
  br label %r100_mm_wreg.exit2368

if.else.i2367:                                    ; preds = %r100_mm_wreg.exit2359
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -1952399656) #8
  br label %r100_mm_wreg.exit2368

r100_mm_wreg.exit2368:                            ; preds = %if.else.i2367, %do.body.i2366
  %866 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %866)
  %867 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %867, i32 %add)
  %cmp.i2370 = icmp ugt i32 %867, %add
  %or.cond.i2372 = or i1 %cmp1.i517, %cmp.i2370
  br i1 %or.cond.i2372, label %do.body.i2375, label %if.else.i2376

do.body.i2375:                                    ; preds = %r100_mm_wreg.exit2368
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i2373 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %868 = ptrtoint ptr %rmmio.i2373 to i32
  call void @__asan_load4_noabort(i32 %868)
  %869 = load ptr, ptr %rmmio.i2373, align 4
  %add.ptr.i2374 = getelementptr i8, ptr %869, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2374, i32 17171200) #8, !srcloc !89
  br label %r100_mm_wreg.exit2377

if.else.i2376:                                    ; preds = %r100_mm_wreg.exit2368
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 198145) #8
  br label %r100_mm_wreg.exit2377

r100_mm_wreg.exit2377:                            ; preds = %if.else.i2376, %do.body.i2375
  %870 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %870)
  %871 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %871, i32 %add2)
  %cmp.i2379 = icmp ugt i32 %871, %add2
  %or.cond.i2381 = or i1 %cmp1.i526, %cmp.i2379
  br i1 %or.cond.i2381, label %do.body.i2384, label %if.else.i2385

do.body.i2384:                                    ; preds = %r100_mm_wreg.exit2377
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i2382 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %872 = ptrtoint ptr %rmmio.i2382 to i32
  call void @__asan_load4_noabort(i32 %872)
  %873 = load ptr, ptr %rmmio.i2382, align 4
  %add.ptr.i2383 = getelementptr i8, ptr %873, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2383, i32 1082544319) #8, !srcloc !89
  br label %r100_mm_wreg.exit2386

if.else.i2385:                                    ; preds = %r100_mm_wreg.exit2377
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -1085241792) #8
  br label %r100_mm_wreg.exit2386

r100_mm_wreg.exit2386:                            ; preds = %if.else.i2385, %do.body.i2384
  %874 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %874)
  %875 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %875, i32 %add)
  %cmp.i2388 = icmp ugt i32 %875, %add
  %or.cond.i2390 = or i1 %cmp1.i517, %cmp.i2388
  br i1 %or.cond.i2390, label %do.body.i2393, label %if.else.i2394

do.body.i2393:                                    ; preds = %r100_mm_wreg.exit2386
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i2391 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %876 = ptrtoint ptr %rmmio.i2391 to i32
  call void @__asan_load4_noabort(i32 %876)
  %877 = load ptr, ptr %rmmio.i2391, align 4
  %add.ptr.i2392 = getelementptr i8, ptr %877, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2392, i32 459520) #8, !srcloc !89
  br label %r100_mm_wreg.exit2395

if.else.i2394:                                    ; preds = %r100_mm_wreg.exit2386
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 198400) #8
  br label %r100_mm_wreg.exit2395

r100_mm_wreg.exit2395:                            ; preds = %if.else.i2394, %do.body.i2393
  %878 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %878)
  %879 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %879, i32 %add2)
  %cmp.i2397 = icmp ugt i32 %879, %add2
  %or.cond.i2399 = or i1 %cmp1.i526, %cmp.i2397
  br i1 %or.cond.i2399, label %do.body.i2402, label %if.else.i2403

do.body.i2402:                                    ; preds = %r100_mm_wreg.exit2395
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i2400 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %880 = ptrtoint ptr %rmmio.i2400 to i32
  call void @__asan_load4_noabort(i32 %880)
  %881 = load ptr, ptr %rmmio.i2400, align 4
  %add.ptr.i2401 = getelementptr i8, ptr %881, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2401, i32 -390176630) #8, !srcloc !89
  br label %r100_mm_wreg.exit2404

if.else.i2403:                                    ; preds = %r100_mm_wreg.exit2395
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -1973371160) #8
  br label %r100_mm_wreg.exit2404

r100_mm_wreg.exit2404:                            ; preds = %if.else.i2403, %do.body.i2402
  %882 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %882)
  %883 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %883, i32 %add)
  %cmp.i2406 = icmp ugt i32 %883, %add
  %or.cond.i2408 = or i1 %cmp1.i517, %cmp.i2406
  br i1 %or.cond.i2408, label %do.body.i2411, label %if.else.i2412

do.body.i2411:                                    ; preds = %r100_mm_wreg.exit2404
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i2409 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %884 = ptrtoint ptr %rmmio.i2409 to i32
  call void @__asan_load4_noabort(i32 %884)
  %885 = load ptr, ptr %rmmio.i2409, align 4
  %add.ptr.i2410 = getelementptr i8, ptr %885, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2410, i32 17236736) #8, !srcloc !89
  br label %r100_mm_wreg.exit2413

if.else.i2412:                                    ; preds = %r100_mm_wreg.exit2404
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 198401) #8
  br label %r100_mm_wreg.exit2413

r100_mm_wreg.exit2413:                            ; preds = %if.else.i2412, %do.body.i2411
  %886 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %886)
  %887 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %887, i32 %add2)
  %cmp.i2415 = icmp ugt i32 %887, %add2
  %or.cond.i2417 = or i1 %cmp1.i526, %cmp.i2415
  br i1 %or.cond.i2417, label %do.body.i2420, label %if.else.i2421

do.body.i2420:                                    ; preds = %r100_mm_wreg.exit2413
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i2418 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %888 = ptrtoint ptr %rmmio.i2418 to i32
  call void @__asan_load4_noabort(i32 %888)
  %889 = load ptr, ptr %rmmio.i2418, align 4
  %add.ptr.i2419 = getelementptr i8, ptr %889, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2419, i32 -1601756993) #8, !srcloc !89
  br label %r100_mm_wreg.exit2422

if.else.i2421:                                    ; preds = %r100_mm_wreg.exit2413
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -1088387168) #8
  br label %r100_mm_wreg.exit2422

r100_mm_wreg.exit2422:                            ; preds = %if.else.i2421, %do.body.i2420
  %890 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %890)
  %891 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %891, i32 %add)
  %cmp.i2424 = icmp ugt i32 %891, %add
  %or.cond.i2426 = or i1 %cmp1.i517, %cmp.i2424
  br i1 %or.cond.i2426, label %do.body.i2429, label %if.else.i2430

do.body.i2429:                                    ; preds = %r100_mm_wreg.exit2422
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i2427 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %892 = ptrtoint ptr %rmmio.i2427 to i32
  call void @__asan_load4_noabort(i32 %892)
  %893 = load ptr, ptr %rmmio.i2427, align 4
  %add.ptr.i2428 = getelementptr i8, ptr %893, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2428, i32 525056) #8, !srcloc !89
  br label %r100_mm_wreg.exit2431

if.else.i2430:                                    ; preds = %r100_mm_wreg.exit2422
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 198656) #8
  br label %r100_mm_wreg.exit2431

r100_mm_wreg.exit2431:                            ; preds = %if.else.i2430, %do.body.i2429
  %894 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %894)
  %895 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %895, i32 %add2)
  %cmp.i2433 = icmp ugt i32 %895, %add2
  %or.cond.i2435 = or i1 %cmp1.i526, %cmp.i2433
  br i1 %or.cond.i2435, label %do.body.i2438, label %if.else.i2439

do.body.i2438:                                    ; preds = %r100_mm_wreg.exit2431
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i2436 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %896 = ptrtoint ptr %rmmio.i2436 to i32
  call void @__asan_load4_noabort(i32 %896)
  %897 = load ptr, ptr %rmmio.i2436, align 4
  %add.ptr.i2437 = getelementptr i8, ptr %897, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2437, i32 12517513) #8, !srcloc !89
  br label %r100_mm_wreg.exit2440

if.else.i2439:                                    ; preds = %r100_mm_wreg.exit2431
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -1996439808) #8
  br label %r100_mm_wreg.exit2440

r100_mm_wreg.exit2440:                            ; preds = %if.else.i2439, %do.body.i2438
  %898 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %898)
  %899 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %899, i32 %add)
  %cmp.i2442 = icmp ugt i32 %899, %add
  %or.cond.i2444 = or i1 %cmp1.i517, %cmp.i2442
  br i1 %or.cond.i2444, label %do.body.i2447, label %if.else.i2448

do.body.i2447:                                    ; preds = %r100_mm_wreg.exit2440
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i2445 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %900 = ptrtoint ptr %rmmio.i2445 to i32
  call void @__asan_load4_noabort(i32 %900)
  %901 = load ptr, ptr %rmmio.i2445, align 4
  %add.ptr.i2446 = getelementptr i8, ptr %901, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2446, i32 17302272) #8, !srcloc !89
  br label %r100_mm_wreg.exit2449

if.else.i2448:                                    ; preds = %r100_mm_wreg.exit2440
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef 198657) #8
  br label %r100_mm_wreg.exit2449

r100_mm_wreg.exit2449:                            ; preds = %if.else.i2448, %do.body.i2447
  %902 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %902)
  %903 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %903, i32 %add2)
  %cmp.i2451 = icmp ugt i32 %903, %add2
  %or.cond.i2453 = or i1 %cmp1.i526, %cmp.i2451
  br i1 %or.cond.i2453, label %do.body.i2456, label %if.else.i2457

do.body.i2456:                                    ; preds = %r100_mm_wreg.exit2449
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %rmmio.i2454 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %904 = ptrtoint ptr %rmmio.i2454 to i32
  call void @__asan_load4_noabort(i32 %904)
  %905 = load ptr, ptr %rmmio.i2454, align 4
  %add.ptr.i2455 = getelementptr i8, ptr %905, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2455, i32 8978623) #8, !srcloc !89
  br label %r100_mm_wreg.exit2458

if.else.i2457:                                    ; preds = %r100_mm_wreg.exit2449
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add2, i32 noundef -1090483968) #8
  br label %r100_mm_wreg.exit2458

r100_mm_wreg.exit2458:                            ; preds = %if.else.i2457, %do.body.i2456
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv515_bandwidth_avivo_update(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  %wm0_high = alloca %struct.rv515_watermark, align 4
  %wm0_low = alloca %struct.rv515_watermark, align 4
  %wm1_high = alloca %struct.rv515_watermark, align 4
  %wm1_low = alloca %struct.rv515_watermark, align 4
  %d1mode_priority_a_cnt = alloca i32, align 4
  %d1mode_priority_b_cnt = alloca i32, align 4
  %d2mode_priority_a_cnt = alloca i32, align 4
  %d2mode_priority_b_cnt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %wm0_high) #8
  %0 = call ptr @memset(ptr %wm0_high, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %wm0_low) #8
  %1 = call ptr @memset(ptr %wm0_low, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %wm1_high) #8
  %2 = call ptr @memset(ptr %wm1_high, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %wm1_low) #8
  %3 = call ptr @memset(ptr %wm1_low, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d1mode_priority_a_cnt) #8
  %4 = ptrtoint ptr %d1mode_priority_a_cnt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %d1mode_priority_a_cnt, align 4, !annotation !91
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d1mode_priority_b_cnt) #8
  %5 = ptrtoint ptr %d1mode_priority_b_cnt to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %d1mode_priority_b_cnt, align 4, !annotation !91
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d2mode_priority_a_cnt) #8
  %6 = ptrtoint ptr %d2mode_priority_a_cnt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %d2mode_priority_a_cnt, align 4, !annotation !91
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d2mode_priority_b_cnt) #8
  %7 = ptrtoint ptr %d2mode_priority_b_cnt to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %d2mode_priority_b_cnt, align 4, !annotation !91
  %crtcs = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 4
  %8 = ptrtoint ptr %crtcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crtcs, align 4
  %enabled = getelementptr inbounds %struct.drm_crtc, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %enabled, align 8, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  %mode = getelementptr inbounds %struct.drm_crtc, ptr %9, i32 0, i32 12
  %spec.select = select i1 %tobool.not, ptr null, ptr %mode
  %arrayidx7 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 4, i32 1
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx7, align 4
  %enabled9 = getelementptr inbounds %struct.drm_crtc, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %enabled9 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %enabled9, align 8, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool10.not = icmp eq i8 %15, 0
  %mode16 = getelementptr inbounds %struct.drm_crtc, ptr %13, i32 0, i32 12
  %mode1.0 = select i1 %tobool10.not, ptr null, ptr %mode16
  tail call void @rs690_line_buffer_adjust(ptr noundef %rdev, ptr noundef %spec.select, ptr noundef %mode1.0) #8
  %16 = ptrtoint ptr %crtcs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %crtcs, align 4
  call fastcc void @rv515_crtc_bandwidth_compute(ptr noundef %rdev, ptr noundef %17, ptr noundef nonnull %wm0_high)
  %18 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx7, align 4
  call fastcc void @rv515_crtc_bandwidth_compute(ptr noundef %rdev, ptr noundef %19, ptr noundef nonnull %wm1_high)
  %20 = ptrtoint ptr %crtcs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %crtcs, align 4
  call fastcc void @rv515_crtc_bandwidth_compute(ptr noundef %rdev, ptr noundef %21, ptr noundef nonnull %wm0_low)
  %22 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx7, align 4
  call fastcc void @rv515_crtc_bandwidth_compute(ptr noundef %rdev, ptr noundef %23, ptr noundef nonnull %wm1_low)
  %24 = ptrtoint ptr %wm0_high to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %wm0_high, align 4
  %26 = ptrtoint ptr %wm1_high to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %wm1_high, align 4
  %shl = shl i32 %27, 16
  %or = or i32 %shl, %25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %28 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %29 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %30, i32 27992
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %28) #8, !srcloc !89
  call fastcc void @rv515_compute_mode_priority(ptr noundef %rdev, ptr noundef nonnull %wm0_high, ptr noundef nonnull %wm1_high, ptr noundef %spec.select, ptr noundef %mode1.0, ptr noundef nonnull %d1mode_priority_a_cnt, ptr noundef nonnull %d2mode_priority_a_cnt)
  call fastcc void @rv515_compute_mode_priority(ptr noundef %rdev, ptr noundef nonnull %wm0_low, ptr noundef nonnull %wm1_low, ptr noundef %spec.select, ptr noundef %mode1.0, ptr noundef nonnull %d1mode_priority_b_cnt, ptr noundef nonnull %d2mode_priority_b_cnt)
  %31 = ptrtoint ptr %d1mode_priority_a_cnt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %d1mode_priority_a_cnt, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #8
  %34 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i58 = getelementptr i8, ptr %35, i32 25928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 %33) #8, !srcloc !89
  %36 = ptrtoint ptr %d1mode_priority_b_cnt to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %d1mode_priority_b_cnt, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #8
  %39 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i62 = getelementptr i8, ptr %40, i32 25932
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 %38) #8, !srcloc !89
  %41 = ptrtoint ptr %d2mode_priority_a_cnt to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %d2mode_priority_a_cnt, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #8
  %44 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i66 = getelementptr i8, ptr %45, i32 27976
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66, i32 %43) #8, !srcloc !89
  %46 = ptrtoint ptr %d2mode_priority_b_cnt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %d2mode_priority_b_cnt, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #8
  %49 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i70 = getelementptr i8, ptr %50, i32 27980
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70, i32 %48) #8, !srcloc !89
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d2mode_priority_b_cnt) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d2mode_priority_a_cnt) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d1mode_priority_b_cnt) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d1mode_priority_a_cnt) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %wm1_low) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %wm1_high) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %wm0_low) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %wm0_high) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rs690_line_buffer_adjust(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rv515_crtc_bandwidth_compute(ptr noundef %rdev, ptr nocapture noundef readonly %crtc, ptr nocapture noundef %wm) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mode1 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 12
  %enabled = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 11
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 8, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %wm to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %wm, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %3 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %4)
  %cmp = icmp ugt i32 %4, 27
  br i1 %cmp, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %pm_method = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 34
  %5 = ptrtoint ptr %pm_method to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pm_method, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp3 = icmp eq i32 %6, 2
  br i1 %cmp3, label %land.lhs.true4, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true4:                                   ; preds = %land.lhs.true
  %dpm_enabled = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 50
  %7 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dpm_enabled, align 8, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool6.not = icmp eq i8 %8, 0
  br i1 %tobool6.not, label %land.lhs.true4.if.else_crit_edge, label %if.then7

land.lhs.true4.if.else_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then7:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %9 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %asic, align 8
  %get_sclk = getelementptr inbounds %struct.radeon_asic, ptr %10, i32 0, i32 21, i32 10
  %11 = ptrtoint ptr %get_sclk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %get_sclk, align 4
  %call = tail call i32 %12(ptr noundef %rdev, i1 noundef zeroext false) #8
  br label %if.end10

if.else:                                          ; preds = %land.lhs.true4.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %current_sclk = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 25
  %13 = ptrtoint ptr %current_sclk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %current_sclk, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then7
  %selected_sclk.0 = phi i32 [ %call, %if.then7 ], [ %14, %if.else ]
  %shl = shl i32 %selected_sclk.0, 12
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %shl, 0
  %call12 = tail call fastcc i32 @dfixed_div([1 x i32] %.fca.0.insert, [1 x i32] [i32 409600])
  %vsc = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 20
  %15 = ptrtoint ptr %vsc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vsc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %16)
  %cmp13 = icmp ugt i32 %16, 8192
  %spec.select = select i1 %cmp13, i32 8192, i32 4096
  %17 = getelementptr inbounds %struct.rv515_watermark, ptr %wm, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %spec.select, ptr %17, align 4
  %crtc_hdisplay = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 12, i32 13
  %19 = ptrtoint ptr %crtc_hdisplay to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %crtc_hdisplay, align 4
  %conv = zext i16 %20 to i32
  %shl18 = shl nuw nsw i32 %conv, 4
  %conv22 = zext i32 %shl18 to i64
  %conv24 = zext i32 %spec.select to i64
  %mul = mul nuw nsw i64 %conv22, %conv24
  %shr = lshr exact i64 %mul, 12
  %conv25 = trunc i64 %shr to i32
  %shl.i1 = and i32 %conv25, -4096
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i1, i32 %conv25)
  %cmp.i = icmp ult i32 %shl.i1, %conv25
  %21 = add nuw nsw i32 %conv25, 4096
  %shl1.i = and i32 %21, -4096
  %retval.0.i = select i1 %cmp.i, i32 %shl1.i, i32 %shl.i1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %20)
  %cmp28 = icmp ult i16 %20, 1024
  %shr33 = lshr exact i32 %retval.0.i, 12
  %storemerge = select i1 %cmp28, i32 4, i32 %shr33
  %22 = ptrtoint ptr %wm to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %storemerge, ptr %wm, align 4
  %23 = ptrtoint ptr %mode1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mode1, align 4
  %shl36 = shl i32 %24, 12
  %.fca.0.insert251 = insertvalue [1 x i32] poison, i32 %shl36, 0
  %call39 = tail call fastcc i32 @dfixed_div([1 x i32] %.fca.0.insert251, [1 x i32] [i32 4096000])
  %25 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call39, i64 33554432000) #12, !srcloc !92
  %asmresult1.i.i = extractvalue { i64, i64 } %25, 1
  %add185.i4 = add i64 %asmresult1.i.i, 1
  %div186268.i5 = lshr i64 %add185.i4, 1
  %conv188.i6 = trunc i64 %div186268.i5 to i32
  %rmx_type = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 17
  %26 = ptrtoint ptr %rmx_type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rmx_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp43.not = icmp eq i32 %27, 0
  br i1 %cmp43.not, label %if.end10.dfixed_div.exit244_crit_edge, label %if.then45

if.end10.dfixed_div.exit244_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %dfixed_div.exit244

if.then45:                                        ; preds = %if.end10
  %28 = ptrtoint ptr %vsc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vsc, align 4
  %30 = tail call i32 @llvm.umax.i32(i32 %29, i32 8192)
  %conv52 = zext i32 %30 to i64
  %hsc = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 21
  %31 = ptrtoint ptr %hsc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hsc, align 8
  %conv53 = zext i32 %32 to i64
  %mul54 = mul nuw i64 %conv52, %conv53
  %add55 = add nuw i64 %mul54, 2048
  %shr56 = lshr i64 %add55, 12
  %conv.i7 = and i64 %shr56, 4294967295
  %add185.i12 = add nuw nsw i64 %conv.i7, 1
  %div186268.i13 = lshr i64 %add185.i12, 1
  %conv188.i14 = trunc i64 %div186268.i13 to i32
  %conv.i15 = shl i64 %div186268.i5, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %conv188.i6)
  %cmp169.i = icmp ult i32 %conv188.i6, 524288
  br i1 %cmp169.i, label %if.then173.i, label %if.else179.i, !prof !93

if.then173.i:                                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  %conv174.i = trunc i64 %conv.i15 to i32
  %div177.i = udiv i32 %conv174.i, %conv188.i14
  %conv178.i = zext i32 %div177.i to i64
  br label %dfixed_div.exit129

if.else179.i:                                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i16 = and i64 %conv.i15, 35184372080640
  %33 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv188.i14, i64 %shl.i16) #12, !srcloc !92
  %asmresult1.i.i124 = extractvalue { i64, i64 } %33, 1
  br label %dfixed_div.exit129

dfixed_div.exit129:                               ; preds = %if.else179.i, %if.then173.i
  %tmp.0.i125 = phi i64 [ %conv178.i, %if.then173.i ], [ %asmresult1.i.i124, %if.else179.i ]
  %add185.i126 = add i64 %tmp.0.i125, 1
  %div186268.i127 = lshr i64 %add185.i126, 1
  %conv188.i128 = trunc i64 %div186268.i127 to i32
  br label %dfixed_div.exit244

dfixed_div.exit244:                               ; preds = %dfixed_div.exit129, %if.end10.dfixed_div.exit244_crit_edge
  %consumption_time.sroa.0.0 = phi i32 [ %conv188.i128, %dfixed_div.exit129 ], [ %conv188.i6, %if.end10.dfixed_div.exit244_crit_edge ]
  %div177.i237 = udiv i32 33554432, %consumption_time.sroa.0.0
  %narrow = add nuw nsw i32 %div177.i237, 1
  %34 = lshr i32 %narrow, 1
  %consumption_rate = getelementptr inbounds %struct.rv515_watermark, ptr %wm, i32 0, i32 4
  %35 = ptrtoint ptr %consumption_rate to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %consumption_rate, align 4
  %crtc_htotal = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 12, i32 18
  %36 = ptrtoint ptr %crtc_htotal to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %crtc_htotal, align 2
  %conv71 = zext i16 %37 to i32
  %shl72 = shl nuw nsw i32 %conv71, 12
  %conv73 = zext i32 %shl72 to i64
  %conv74 = and i64 %div186268.i5, 4294967295
  %mul75 = mul nuw nsw i64 %conv74, %conv73
  %shr77 = lshr exact i64 %mul75, 12
  %conv78 = trunc i64 %shr77 to i32
  %38 = ptrtoint ptr %crtc_hdisplay to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %crtc_hdisplay, align 4
  %conv87 = zext i16 %39 to i32
  %shl88 = shl nuw nsw i32 %conv87, 12
  %conv89 = and i64 %shr77, 4294967295
  %conv90 = zext i32 %shl88 to i64
  %mul91 = mul nuw nsw i64 %conv89, %conv90
  %active_time = getelementptr inbounds %struct.rv515_watermark, ptr %wm, i32 0, i32 5
  %conv.i245 = shl nuw nsw i64 %mul91, 1
  %40 = and i64 %mul91, 17590038560768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %40)
  %cmp169.i353 = icmp eq i64 %40, 0
  br i1 %cmp169.i353, label %if.then173.i358, label %if.else179.i360, !prof !93

if.then173.i358:                                  ; preds = %dfixed_div.exit244
  call void @__sanitizer_cov_trace_pc() #10
  %conv174.i355 = trunc i64 %conv.i245 to i32
  %div177.i356 = udiv i32 %conv174.i355, %shl72
  %conv178.i357 = zext i32 %div177.i356 to i64
  br label %dfixed_div.exit365

if.else179.i360:                                  ; preds = %dfixed_div.exit244
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i246 = and i64 %conv.i245, 35184372080640
  %41 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl72, i64 %shl.i246) #12, !srcloc !92
  %asmresult1.i.i359 = extractvalue { i64, i64 } %41, 1
  br label %dfixed_div.exit365

dfixed_div.exit365:                               ; preds = %if.else179.i360, %if.then173.i358
  %tmp.0.i361 = phi i64 [ %conv178.i357, %if.then173.i358 ], [ %asmresult1.i.i359, %if.else179.i360 ]
  %add185.i362 = add i64 %tmp.0.i361, 1
  %div186268.i363 = lshr i64 %add185.i362, 1
  %conv188.i364 = trunc i64 %div186268.i363 to i32
  %42 = ptrtoint ptr %active_time to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv188.i364, ptr %active_time, align 4
  %43 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call12, i64 20132659200000) #12, !srcloc !92
  %asmresult1.i.i473 = extractvalue { i64, i64 } %43, 1
  %add185.i476 = add i64 %asmresult1.i.i473, 1
  %div186268.i477 = lshr i64 %add185.i476, 1
  %conv188.i478 = trunc i64 %div186268.i477 to i32
  %shr112 = mul i32 %conv188.i478, 3
  %spec.select629 = select i1 %cmp13, i32 %shr112, i32 %conv188.i478
  %add117.sink = add i32 %spec.select629, 4096000
  %44 = getelementptr inbounds %struct.rv515_watermark, ptr %wm, i32 0, i32 3
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add117.sink, ptr %44, align 4
  %add121 = add nuw nsw i32 %storemerge, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add121, i32 %shr33)
  %cmp123.not = icmp ult i32 %add121, %shr33
  br i1 %cmp123.not, label %if.else126, label %dfixed_div.exit365.if.end137_crit_edge

dfixed_div.exit365.if.end137_crit_edge:           ; preds = %dfixed_div.exit365
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end137

if.else126:                                       ; preds = %dfixed_div.exit365
  call void @__sanitizer_cov_trace_pc() #10
  %sub.neg = mul nsw i32 %storemerge, -4096
  %shl128.neg = add nuw nsw i32 %retval.0.i, 8192
  %sub129 = add nsw i32 %shl128.neg, %sub.neg
  %conv130 = zext i32 %sub129 to i64
  %conv131 = and i64 %div186268.i477, 4294967295
  %mul132 = mul nuw i64 %conv131, %conv130
  %shr134 = lshr exact i64 %mul132, 12
  %conv135 = trunc i64 %shr134 to i32
  %sub136 = sub i32 %conv78, %conv135
  br label %if.end137

if.end137:                                        ; preds = %if.else126, %dfixed_div.exit365.if.end137_crit_edge
  %tolerable_latency.sroa.0.0 = phi i32 [ %sub136, %if.else126 ], [ %conv78, %dfixed_div.exit365.if.end137_crit_edge ]
  %dbpp = getelementptr inbounds %struct.rv515_watermark, ptr %wm, i32 0, i32 6
  %46 = ptrtoint ptr %dbpp to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 131072, ptr %dbpp, align 4
  %47 = ptrtoint ptr %crtc_hdisplay to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %crtc_hdisplay, align 4
  %conv141 = zext i16 %48 to i32
  %shl142 = shl nuw nsw i32 %conv141, 8
  %priority_mark_max = getelementptr inbounds %struct.rv515_watermark, ptr %wm, i32 0, i32 7
  %shl.i489 = and i32 %shl142, 16773120
  call void @__sanitizer_cov_trace_cmp4(i32 %shl142, i32 %shl.i489)
  %cmp.i490 = icmp ugt i32 %shl142, %shl.i489
  %49 = add nuw nsw i32 %shl142, 4096
  %shl1.i491 = and i32 %49, 33550336
  %retval.0.i492 = select i1 %cmp.i490, i32 %shl1.i491, i32 %shl.i489
  %50 = ptrtoint ptr %priority_mark_max to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %retval.0.i492, ptr %priority_mark_max, align 4
  %51 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %44, align 4
  %sub153 = sub i32 %tolerable_latency.sroa.0.0, %52
  %conv.i493 = zext i32 %sub153 to i64
  %shl.i494 = shl nuw nsw i64 %conv.i493, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %sub153)
  %cmp169.i601 = icmp ult i32 %sub153, 524288
  br i1 %cmp169.i601, label %if.then173.i606, label %if.else179.i608, !prof !93

if.then173.i606:                                  ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #10
  %conv174.i603 = trunc i64 %shl.i494 to i32
  %div177.i604 = udiv i32 %conv174.i603, %consumption_time.sroa.0.0
  %conv178.i605 = zext i32 %div177.i604 to i64
  br label %dfixed_div.exit613

if.else179.i608:                                  ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #10
  %53 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %consumption_time.sroa.0.0, i64 %shl.i494) #12, !srcloc !92
  %asmresult1.i.i607 = extractvalue { i64, i64 } %53, 1
  br label %dfixed_div.exit613

dfixed_div.exit613:                               ; preds = %if.else179.i608, %if.then173.i606
  %tmp.0.i609 = phi i64 [ %conv178.i605, %if.then173.i606 ], [ %asmresult1.i.i607, %if.else179.i608 ]
  %add185.i610 = add i64 %tmp.0.i609, 1
  %sum.shift = lshr i64 %add185.i610, 13
  %shr157628 = trunc i64 %sum.shift to i32
  %shr157 = and i32 %shr157628, 1048575
  %54 = ptrtoint ptr %crtc_hdisplay to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %crtc_hdisplay, align 4
  %conv161 = zext i16 %55 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr157, i32 %conv161)
  %cmp162 = icmp ugt i32 %shr157, %conv161
  br i1 %cmp162, label %if.then164, label %if.else166

if.then164:                                       ; preds = %dfixed_div.exit613
  call void @__sanitizer_cov_trace_pc() #10
  %priority_mark = getelementptr inbounds %struct.rv515_watermark, ptr %wm, i32 0, i32 8
  %56 = ptrtoint ptr %priority_mark to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %retval.0.i492, ptr %priority_mark, align 4
  br label %cleanup

if.else166:                                       ; preds = %dfixed_div.exit613
  call void @__sanitizer_cov_trace_pc() #10
  %57 = lshr i64 %add185.i610, 4
  %shr.i617 = and i64 %57, 536870911
  %add185.i620 = add nuw nsw i64 %shr.i617, 1
  %div186268.i621 = lshr i64 %add185.i620, 1
  %conv188.i622 = trunc i64 %div186268.i621 to i32
  %priority_mark170 = getelementptr inbounds %struct.rv515_watermark, ptr %wm, i32 0, i32 8
  %shl.i623 = and i32 %conv188.i622, 536866816
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i623, i32 %conv188.i622)
  %cmp.i624 = icmp ult i32 %shl.i623, %conv188.i622
  %58 = add nuw nsw i32 %conv188.i622, 4096
  %shl1.i625 = and i32 %58, 1073737728
  %retval.0.i626 = select i1 %cmp.i624, i32 %shl1.i625, i32 %shl.i623
  %sub177 = sub nsw i32 %retval.0.i492, %retval.0.i626
  %59 = ptrtoint ptr %priority_mark170 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %sub177, ptr %priority_mark170, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else166, %if.then164, %if.then
  ret void
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rv515_compute_mode_priority(ptr nocapture noundef readonly %rdev, ptr nocapture noundef readonly %wm0, ptr nocapture noundef readonly %wm1, ptr noundef readnone %mode0, ptr noundef readnone %mode1, ptr nocapture noundef %d1mode_priority_a_cnt, ptr nocapture noundef %d2mode_priority_a_cnt) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %d1mode_priority_a_cnt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 65536, ptr %d1mode_priority_a_cnt, align 4
  %1 = ptrtoint ptr %d2mode_priority_a_cnt to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 65536, ptr %d2mode_priority_a_cnt, align 4
  %tobool.not = icmp eq ptr %mode0, null
  %tobool1.not = icmp eq ptr %mode1, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %if.else119, label %if.then

if.then:                                          ; preds = %entry
  %dbpp = getelementptr inbounds %struct.rv515_watermark, ptr %wm0, i32 0, i32 6
  %2 = ptrtoint ptr %dbpp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dbpp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 266239, i32 %3)
  %cmp = icmp ugt i32 %3, 266239
  %num_line_pair = getelementptr inbounds %struct.rv515_watermark, ptr %wm0, i32 0, i32 1
  %4 = ptrtoint ptr %num_line_pair to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack472 = load i32, ptr %num_line_pair, align 4
  br i1 %cmp, label %if.then2, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then2:                                         ; preds = %if.then
  %conv.i = zext i32 %3 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %3)
  %cmp169.i = icmp ult i32 %3, 524288
  br i1 %cmp169.i, label %if.then173.i, label %if.else179.i, !prof !93

if.then173.i:                                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %conv174.i = trunc i64 %shl.i to i32
  %div177.i = udiv i32 %conv174.i, %.unpack472
  %conv178.i = zext i32 %div177.i to i64
  br label %dfixed_div.exit

if.else179.i:                                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %5 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %.unpack472, i64 %shl.i) #12, !srcloc !92
  %asmresult1.i.i = extractvalue { i64, i64 } %5, 1
  br label %dfixed_div.exit

dfixed_div.exit:                                  ; preds = %if.else179.i, %if.then173.i
  %tmp.0.i = phi i64 [ %conv178.i, %if.then173.i ], [ %asmresult1.i.i, %if.else179.i ]
  %add185.i = add i64 %tmp.0.i, 1
  %div186268.i = lshr i64 %add185.i, 1
  %conv188.i = trunc i64 %div186268.i to i32
  br label %if.end

if.end:                                           ; preds = %dfixed_div.exit, %if.then.if.end_crit_edge
  %a.sroa.0.0 = phi i32 [ %conv188.i, %dfixed_div.exit ], [ %.unpack472, %if.then.if.end_crit_edge ]
  %dbpp6 = getelementptr inbounds %struct.rv515_watermark, ptr %wm1, i32 0, i32 6
  %6 = ptrtoint ptr %dbpp6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dbpp6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 266239, i32 %7)
  %cmp8 = icmp ugt i32 %7, 266239
  %num_line_pair11 = getelementptr inbounds %struct.rv515_watermark, ptr %wm1, i32 0, i32 1
  %8 = ptrtoint ptr %num_line_pair11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack470 = load i32, ptr %num_line_pair11, align 4
  br i1 %cmp8, label %if.then9, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then9:                                         ; preds = %if.end
  %conv.i475 = zext i32 %7 to i64
  %shl.i476 = shl nuw nsw i64 %conv.i475, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %7)
  %cmp169.i583 = icmp ult i32 %7, 524288
  br i1 %cmp169.i583, label %if.then173.i588, label %if.else179.i590, !prof !93

if.then173.i588:                                  ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %conv174.i585 = trunc i64 %shl.i476 to i32
  %div177.i586 = udiv i32 %conv174.i585, %.unpack470
  %conv178.i587 = zext i32 %div177.i586 to i64
  br label %dfixed_div.exit595

if.else179.i590:                                  ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %.unpack470, i64 %shl.i476) #12, !srcloc !92
  %asmresult1.i.i589 = extractvalue { i64, i64 } %9, 1
  br label %dfixed_div.exit595

dfixed_div.exit595:                               ; preds = %if.else179.i590, %if.then173.i588
  %tmp.0.i591 = phi i64 [ %conv178.i587, %if.then173.i588 ], [ %asmresult1.i.i589, %if.else179.i590 ]
  %add185.i592 = add i64 %tmp.0.i591, 1
  %div186268.i593 = lshr i64 %add185.i592, 1
  %conv188.i594 = trunc i64 %div186268.i593 to i32
  br label %if.end17

if.end17:                                         ; preds = %dfixed_div.exit595, %if.end.if.end17_crit_edge
  %b.sroa.0.0 = phi i32 [ %conv188.i594, %dfixed_div.exit595 ], [ %.unpack470, %if.end.if.end17_crit_edge ]
  %add = add i32 %b.sroa.0.0, %a.sroa.0.0
  %sclk = getelementptr inbounds %struct.rv515_watermark, ptr %wm0, i32 0, i32 9
  %10 = ptrtoint ptr %sclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack468 = load i32, ptr %sclk, align 4
  %conv.i596 = zext i32 %.unpack468 to i64
  %shl.i597 = shl nuw nsw i64 %conv.i596, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %.unpack468)
  %cmp169.i704 = icmp ult i32 %.unpack468, 524288
  br i1 %cmp169.i704, label %if.then173.i709, label %if.else179.i711, !prof !93

if.then173.i709:                                  ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %conv174.i706 = trunc i64 %shl.i597 to i32
  %div177.i707 = udiv i32 %conv174.i706, %add
  %conv178.i708 = zext i32 %div177.i707 to i64
  br label %dfixed_div.exit716

if.else179.i711:                                  ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %11 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add, i64 %shl.i597) #12, !srcloc !92
  %asmresult1.i.i710 = extractvalue { i64, i64 } %11, 1
  br label %dfixed_div.exit716

dfixed_div.exit716:                               ; preds = %if.else179.i711, %if.then173.i709
  %tmp.0.i712 = phi i64 [ %conv178.i708, %if.then173.i709 ], [ %asmresult1.i.i710, %if.else179.i711 ]
  %add185.i713 = add i64 %tmp.0.i712, 1
  %div186268.i714 = lshr i64 %add185.i713, 1
  %conv188.i715 = trunc i64 %div186268.i714 to i32
  %consumption_rate = getelementptr inbounds %struct.rv515_watermark, ptr %wm0, i32 0, i32 4
  %12 = ptrtoint ptr %consumption_rate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %consumption_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv188.i715)
  %cmp21 = icmp ugt i32 %13, %conv188.i715
  br i1 %cmp21, label %if.then22, label %if.else39

if.then22:                                        ; preds = %dfixed_div.exit716
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub i32 %13, %conv188.i715
  %conv = zext i32 %sub to i64
  %active_time = getelementptr inbounds %struct.rv515_watermark, ptr %wm0, i32 0, i32 5
  %14 = ptrtoint ptr %active_time to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %active_time, align 4
  %conv24 = zext i32 %15 to i64
  %mul = shl nuw nsw i64 %conv, 1
  %add25 = mul i64 %mul, %conv24
  %16 = add i64 %add25, 4096
  %shl.i718 = lshr i64 %16, 16
  %shr.i720 = and i64 %shl.i718, 536870911
  %add185.i723 = add nuw nsw i64 %shr.i720, 1
  %div186268.i724 = lshr i64 %add185.i723, 1
  %conv188.i725 = trunc i64 %div186268.i724 to i32
  %worst_case_latency = getelementptr inbounds %struct.rv515_watermark, ptr %wm0, i32 0, i32 3
  %17 = ptrtoint ptr %worst_case_latency to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %worst_case_latency, align 4
  %conv31 = zext i32 %18 to i64
  %conv33 = zext i32 %13 to i64
  %mul34 = mul nuw i64 %conv31, %conv33
  %add35 = add nuw i64 %mul34, 2048
  %shr36 = lshr i64 %add35, 12
  %conv37 = trunc i64 %shr36 to i32
  %add38 = add i32 %conv188.i725, %conv37
  br label %if.end51

if.else39:                                        ; preds = %dfixed_div.exit716
  call void @__sanitizer_cov_trace_pc() #10
  %worst_case_latency40 = getelementptr inbounds %struct.rv515_watermark, ptr %wm0, i32 0, i32 3
  %19 = ptrtoint ptr %worst_case_latency40 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %worst_case_latency40, align 4
  %conv41 = zext i32 %20 to i64
  %conv43 = zext i32 %13 to i64
  %mul44 = mul nuw i64 %conv41, %conv43
  %add45 = add nuw i64 %mul44, 2048
  %shr46 = lshr i64 %add45, 12
  %conv47 = trunc i64 %shr46 to i32
  %.fca.0.insert319 = insertvalue [1 x i32] poison, i32 %conv47, 0
  %call50 = tail call fastcc i32 @dfixed_div([1 x i32] %.fca.0.insert319, [1 x i32] [i32 65536000])
  br label %if.end51

if.end51:                                         ; preds = %if.else39, %if.then22
  %priority_mark02.sroa.0.0 = phi i32 [ %add38, %if.then22 ], [ %call50, %if.else39 ]
  %consumption_rate52 = getelementptr inbounds %struct.rv515_watermark, ptr %wm1, i32 0, i32 4
  %21 = ptrtoint ptr %consumption_rate52 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %consumption_rate52, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv188.i715)
  %cmp53 = icmp ugt i32 %22, %conv188.i715
  br i1 %cmp53, label %if.then55, label %if.else77

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %sub57 = sub i32 %22, %conv188.i715
  %conv58 = zext i32 %sub57 to i64
  %active_time59 = getelementptr inbounds %struct.rv515_watermark, ptr %wm1, i32 0, i32 5
  %23 = ptrtoint ptr %active_time59 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %active_time59, align 4
  %conv60 = zext i32 %24 to i64
  %mul61 = shl nuw nsw i64 %conv58, 1
  %add62 = mul i64 %mul61, %conv60
  %25 = add i64 %add62, 4096
  %shl.i727 = lshr i64 %25, 16
  %shr.i729 = and i64 %shl.i727, 536870911
  %add185.i732 = add nuw nsw i64 %shr.i729, 1
  %div186268.i733 = lshr i64 %add185.i732, 1
  %conv188.i734 = trunc i64 %div186268.i733 to i32
  %worst_case_latency68 = getelementptr inbounds %struct.rv515_watermark, ptr %wm1, i32 0, i32 3
  %26 = ptrtoint ptr %worst_case_latency68 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %worst_case_latency68, align 4
  %conv69 = zext i32 %27 to i64
  %conv71 = zext i32 %22 to i64
  %mul72 = mul nuw i64 %conv69, %conv71
  %add73 = add nuw i64 %mul72, 2048
  %shr74 = lshr i64 %add73, 12
  %conv75 = trunc i64 %shr74 to i32
  %add76 = add i32 %conv188.i734, %conv75
  br label %if.end89

if.else77:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %worst_case_latency78 = getelementptr inbounds %struct.rv515_watermark, ptr %wm1, i32 0, i32 3
  %28 = ptrtoint ptr %worst_case_latency78 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %worst_case_latency78, align 4
  %conv79 = zext i32 %29 to i64
  %conv81 = zext i32 %22 to i64
  %mul82 = mul nuw i64 %conv79, %conv81
  %add83 = add nuw i64 %mul82, 2048
  %shr84 = lshr i64 %add83, 12
  %conv85 = trunc i64 %shr84 to i32
  %.fca.0.insert325 = insertvalue [1 x i32] poison, i32 %conv85, 0
  %call88 = tail call fastcc i32 @dfixed_div([1 x i32] %.fca.0.insert325, [1 x i32] [i32 65536000])
  br label %if.end89

if.end89:                                         ; preds = %if.else77, %if.then55
  %priority_mark12.sroa.0.0 = phi i32 [ %add76, %if.then55 ], [ %call88, %if.else77 ]
  %priority_mark = getelementptr inbounds %struct.rv515_watermark, ptr %wm0, i32 0, i32 8
  %30 = ptrtoint ptr %priority_mark to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %priority_mark, align 4
  %32 = tail call i32 @llvm.umax.i32(i32 %31, i32 %priority_mark02.sroa.0.0)
  %priority_mark_max = getelementptr inbounds %struct.rv515_watermark, ptr %wm0, i32 0, i32 7
  %33 = ptrtoint ptr %priority_mark_max to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %priority_mark_max, align 4
  %35 = tail call i32 @llvm.umax.i32(i32 %34, i32 %32)
  %priority_mark100 = getelementptr inbounds %struct.rv515_watermark, ptr %wm1, i32 0, i32 8
  %36 = ptrtoint ptr %priority_mark100 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %priority_mark100, align 4
  %38 = tail call i32 @llvm.umax.i32(i32 %37, i32 %priority_mark12.sroa.0.0)
  %priority_mark_max106 = getelementptr inbounds %struct.rv515_watermark, ptr %wm1, i32 0, i32 7
  %39 = ptrtoint ptr %priority_mark_max106 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %priority_mark_max106, align 4
  %41 = tail call i32 @llvm.umax.i32(i32 %40, i32 %38)
  %shr112 = lshr i32 %35, 12
  %42 = ptrtoint ptr %d1mode_priority_a_cnt to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %shr112, ptr %d1mode_priority_a_cnt, align 4
  %shr113 = lshr i32 %41, 12
  %43 = ptrtoint ptr %d2mode_priority_a_cnt to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %shr113, ptr %d2mode_priority_a_cnt, align 4
  %disp_priority = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 12
  %44 = ptrtoint ptr %disp_priority to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %disp_priority, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp114 = icmp eq i32 %45, 2
  br i1 %cmp114, label %if.then116, label %if.end89.if.end275_crit_edge

if.end89.if.end275_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end275

if.then116:                                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %d1mode_priority_a_cnt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %d1mode_priority_a_cnt, align 4
  %or = or i32 %47, 1048576
  store i32 %or, ptr %d1mode_priority_a_cnt, align 4
  %48 = ptrtoint ptr %d2mode_priority_a_cnt to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %d2mode_priority_a_cnt, align 4
  br label %if.end275.sink.split

if.else119:                                       ; preds = %entry
  br i1 %tobool.not, label %if.else196, label %if.then121

if.then121:                                       ; preds = %if.else119
  %dbpp122 = getelementptr inbounds %struct.rv515_watermark, ptr %wm0, i32 0, i32 6
  %50 = ptrtoint ptr %dbpp122 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dbpp122, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 266239, i32 %51)
  %cmp124 = icmp ugt i32 %51, 266239
  %num_line_pair128 = getelementptr inbounds %struct.rv515_watermark, ptr %wm0, i32 0, i32 1
  %52 = ptrtoint ptr %num_line_pair128 to i32
  call void @__asan_load4_noabort(i32 %52)
  %.unpack467 = load i32, ptr %num_line_pair128, align 4
  br i1 %cmp124, label %if.then126, label %if.then121.if.end134_crit_edge

if.then121.if.end134_crit_edge:                   ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end134

if.then126:                                       ; preds = %if.then121
  %conv.i735 = zext i32 %51 to i64
  %shl.i736 = shl nuw nsw i64 %conv.i735, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %51)
  %cmp169.i843 = icmp ult i32 %51, 524288
  br i1 %cmp169.i843, label %if.then173.i848, label %if.else179.i850, !prof !93

if.then173.i848:                                  ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #10
  %conv174.i845 = trunc i64 %shl.i736 to i32
  %div177.i846 = udiv i32 %conv174.i845, %.unpack467
  %conv178.i847 = zext i32 %div177.i846 to i64
  br label %dfixed_div.exit855

if.else179.i850:                                  ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #10
  %53 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %.unpack467, i64 %shl.i736) #12, !srcloc !92
  %asmresult1.i.i849 = extractvalue { i64, i64 } %53, 1
  br label %dfixed_div.exit855

dfixed_div.exit855:                               ; preds = %if.else179.i850, %if.then173.i848
  %tmp.0.i851 = phi i64 [ %conv178.i847, %if.then173.i848 ], [ %asmresult1.i.i849, %if.else179.i850 ]
  %add185.i852 = add i64 %tmp.0.i851, 1
  %div186268.i853 = lshr i64 %add185.i852, 1
  %conv188.i854 = trunc i64 %div186268.i853 to i32
  br label %if.end134

if.end134:                                        ; preds = %dfixed_div.exit855, %if.then121.if.end134_crit_edge
  %a.sroa.0.1 = phi i32 [ %conv188.i854, %dfixed_div.exit855 ], [ %.unpack467, %if.then121.if.end134_crit_edge ]
  %sclk135 = getelementptr inbounds %struct.rv515_watermark, ptr %wm0, i32 0, i32 9
  %54 = ptrtoint ptr %sclk135 to i32
  call void @__asan_load4_noabort(i32 %54)
  %.unpack465 = load i32, ptr %sclk135, align 4
  %conv.i856 = zext i32 %.unpack465 to i64
  %shl.i857 = shl nuw nsw i64 %conv.i856, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %.unpack465)
  %cmp169.i964 = icmp ult i32 %.unpack465, 524288
  br i1 %cmp169.i964, label %if.then173.i969, label %if.else179.i971, !prof !93

if.then173.i969:                                  ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #10
  %conv174.i966 = trunc i64 %shl.i857 to i32
  %div177.i967 = udiv i32 %conv174.i966, %a.sroa.0.1
  %conv178.i968 = zext i32 %div177.i967 to i64
  br label %dfixed_div.exit976

if.else179.i971:                                  ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #10
  %55 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %a.sroa.0.1, i64 %shl.i857) #12, !srcloc !92
  %asmresult1.i.i970 = extractvalue { i64, i64 } %55, 1
  br label %dfixed_div.exit976

dfixed_div.exit976:                               ; preds = %if.else179.i971, %if.then173.i969
  %tmp.0.i972 = phi i64 [ %conv178.i968, %if.then173.i969 ], [ %asmresult1.i.i970, %if.else179.i971 ]
  %add185.i973 = add i64 %tmp.0.i972, 1
  %div186268.i974 = lshr i64 %add185.i973, 1
  %conv188.i975 = trunc i64 %div186268.i974 to i32
  %consumption_rate139 = getelementptr inbounds %struct.rv515_watermark, ptr %wm0, i32 0, i32 4
  %56 = ptrtoint ptr %consumption_rate139 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %consumption_rate139, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %conv188.i975)
  %cmp140 = icmp ugt i32 %57, %conv188.i975
  br i1 %cmp140, label %if.then142, label %if.else164

if.then142:                                       ; preds = %dfixed_div.exit976
  call void @__sanitizer_cov_trace_pc() #10
  %sub144 = sub i32 %57, %conv188.i975
  %conv145 = zext i32 %sub144 to i64
  %active_time146 = getelementptr inbounds %struct.rv515_watermark, ptr %wm0, i32 0, i32 5
  %58 = ptrtoint ptr %active_time146 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %active_time146, align 4
  %conv147 = zext i32 %59 to i64
  %mul148 = shl nuw nsw i64 %conv145, 1
  %add149 = mul i64 %mul148, %conv147
  %60 = add i64 %add149, 4096
  %shl.i978 = lshr i64 %60, 16
  %shr.i980 = and i64 %shl.i978, 536870911
  %add185.i983 = add nuw nsw i64 %shr.i980, 1
  %div186268.i984 = lshr i64 %add185.i983, 1
  %conv188.i985 = trunc i64 %div186268.i984 to i32
  %worst_case_latency155 = getelementptr inbounds %struct.rv515_watermark, ptr %wm0, i32 0, i32 3
  %61 = ptrtoint ptr %worst_case_latency155 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %worst_case_latency155, align 4
  %conv156 = zext i32 %62 to i64
  %conv158 = zext i32 %57 to i64
  %mul159 = mul nuw i64 %conv156, %conv158
  %add160 = add nuw i64 %mul159, 2048
  %shr161 = lshr i64 %add160, 12
  %conv162 = trunc i64 %shr161 to i32
  %add163 = add i32 %conv188.i985, %conv162
  br label %if.end176

if.else164:                                       ; preds = %dfixed_div.exit976
  call void @__sanitizer_cov_trace_pc() #10
  %worst_case_latency165 = getelementptr inbounds %struct.rv515_watermark, ptr %wm0, i32 0, i32 3
  %63 = ptrtoint ptr %worst_case_latency165 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %worst_case_latency165, align 4
  %conv166 = zext i32 %64 to i64
  %conv168 = zext i32 %57 to i64
  %mul169 = shl nuw nsw i64 %conv168, 1
  %add170 = mul i64 %mul169, %conv166
  %65 = add i64 %add170, 4096
  %shl.i987 = lshr i64 %65, 16
  %shr.i989 = and i64 %shl.i987, 536870911
  %add185.i992 = add nuw nsw i64 %shr.i989, 1
  %div186268.i993 = lshr i64 %add185.i992, 1
  %conv188.i994 = trunc i64 %div186268.i993 to i32
  br label %if.end176

if.end176:                                        ; preds = %if.else164, %if.then142
  %priority_mark02.sroa.0.3 = phi i32 [ %add163, %if.then142 ], [ %conv188.i994, %if.else164 ]
  %priority_mark177 = getelementptr inbounds %struct.rv515_watermark, ptr %wm0, i32 0, i32 8
  %66 = ptrtoint ptr %priority_mark177 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %priority_mark177, align 4
  %68 = tail call i32 @llvm.umax.i32(i32 %67, i32 %priority_mark02.sroa.0.3)
  %priority_mark_max183 = getelementptr inbounds %struct.rv515_watermark, ptr %wm0, i32 0, i32 7
  %69 = ptrtoint ptr %priority_mark_max183 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %priority_mark_max183, align 4
  %71 = tail call i32 @llvm.umax.i32(i32 %70, i32 %68)
  %shr189 = lshr i32 %71, 12
  %72 = ptrtoint ptr %d1mode_priority_a_cnt to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %shr189, ptr %d1mode_priority_a_cnt, align 4
  %disp_priority190 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 12
  %73 = ptrtoint ptr %disp_priority190 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %disp_priority190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %74)
  %cmp191 = icmp eq i32 %74, 2
  br i1 %cmp191, label %if.end176.if.end275.sink.split_crit_edge, label %if.end176.if.end275_crit_edge

if.end176.if.end275_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end275

if.end176.if.end275.sink.split_crit_edge:         ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end275.sink.split

if.else196:                                       ; preds = %if.else119
  br i1 %tobool1.not, label %if.else196.if.end275_crit_edge, label %if.then198

if.else196.if.end275_crit_edge:                   ; preds = %if.else196
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end275

if.then198:                                       ; preds = %if.else196
  %dbpp199 = getelementptr inbounds %struct.rv515_watermark, ptr %wm1, i32 0, i32 6
  %75 = ptrtoint ptr %dbpp199 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %dbpp199, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 266239, i32 %76)
  %cmp201 = icmp ugt i32 %76, 266239
  %num_line_pair205 = getelementptr inbounds %struct.rv515_watermark, ptr %wm1, i32 0, i32 1
  %77 = ptrtoint ptr %num_line_pair205 to i32
  call void @__asan_load4_noabort(i32 %77)
  %.unpack464 = load i32, ptr %num_line_pair205, align 4
  br i1 %cmp201, label %if.then203, label %if.then198.if.end211_crit_edge

if.then198.if.end211_crit_edge:                   ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end211

if.then203:                                       ; preds = %if.then198
  %conv.i995 = zext i32 %76 to i64
  %shl.i996 = shl nuw nsw i64 %conv.i995, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %76)
  %cmp169.i1103 = icmp ult i32 %76, 524288
  br i1 %cmp169.i1103, label %if.then173.i1108, label %if.else179.i1110, !prof !93

if.then173.i1108:                                 ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #10
  %conv174.i1105 = trunc i64 %shl.i996 to i32
  %div177.i1106 = udiv i32 %conv174.i1105, %.unpack464
  %conv178.i1107 = zext i32 %div177.i1106 to i64
  br label %dfixed_div.exit1115

if.else179.i1110:                                 ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #10
  %78 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %.unpack464, i64 %shl.i996) #12, !srcloc !92
  %asmresult1.i.i1109 = extractvalue { i64, i64 } %78, 1
  br label %dfixed_div.exit1115

dfixed_div.exit1115:                              ; preds = %if.else179.i1110, %if.then173.i1108
  %tmp.0.i1111 = phi i64 [ %conv178.i1107, %if.then173.i1108 ], [ %asmresult1.i.i1109, %if.else179.i1110 ]
  %add185.i1112 = add i64 %tmp.0.i1111, 1
  %div186268.i1113 = lshr i64 %add185.i1112, 1
  %conv188.i1114 = trunc i64 %div186268.i1113 to i32
  br label %if.end211

if.end211:                                        ; preds = %dfixed_div.exit1115, %if.then198.if.end211_crit_edge
  %a.sroa.0.2 = phi i32 [ %conv188.i1114, %dfixed_div.exit1115 ], [ %.unpack464, %if.then198.if.end211_crit_edge ]
  %sclk212 = getelementptr inbounds %struct.rv515_watermark, ptr %wm1, i32 0, i32 9
  %79 = ptrtoint ptr %sclk212 to i32
  call void @__asan_load4_noabort(i32 %79)
  %.unpack = load i32, ptr %sclk212, align 4
  %conv.i1116 = zext i32 %.unpack to i64
  %shl.i1117 = shl nuw nsw i64 %conv.i1116, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %.unpack)
  %cmp169.i1224 = icmp ult i32 %.unpack, 524288
  br i1 %cmp169.i1224, label %if.then173.i1229, label %if.else179.i1231, !prof !93

if.then173.i1229:                                 ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #10
  %conv174.i1226 = trunc i64 %shl.i1117 to i32
  %div177.i1227 = udiv i32 %conv174.i1226, %a.sroa.0.2
  %conv178.i1228 = zext i32 %div177.i1227 to i64
  br label %dfixed_div.exit1236

if.else179.i1231:                                 ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #10
  %80 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %a.sroa.0.2, i64 %shl.i1117) #12, !srcloc !92
  %asmresult1.i.i1230 = extractvalue { i64, i64 } %80, 1
  br label %dfixed_div.exit1236

dfixed_div.exit1236:                              ; preds = %if.else179.i1231, %if.then173.i1229
  %tmp.0.i1232 = phi i64 [ %conv178.i1228, %if.then173.i1229 ], [ %asmresult1.i.i1230, %if.else179.i1231 ]
  %add185.i1233 = add i64 %tmp.0.i1232, 1
  %div186268.i1234 = lshr i64 %add185.i1233, 1
  %conv188.i1235 = trunc i64 %div186268.i1234 to i32
  %consumption_rate216 = getelementptr inbounds %struct.rv515_watermark, ptr %wm1, i32 0, i32 4
  %81 = ptrtoint ptr %consumption_rate216 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %consumption_rate216, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %conv188.i1235)
  %cmp217 = icmp ugt i32 %82, %conv188.i1235
  br i1 %cmp217, label %if.then219, label %if.else241

if.then219:                                       ; preds = %dfixed_div.exit1236
  call void @__sanitizer_cov_trace_pc() #10
  %sub221 = sub i32 %82, %conv188.i1235
  %conv222 = zext i32 %sub221 to i64
  %active_time223 = getelementptr inbounds %struct.rv515_watermark, ptr %wm1, i32 0, i32 5
  %83 = ptrtoint ptr %active_time223 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %active_time223, align 4
  %conv224 = zext i32 %84 to i64
  %mul225 = shl nuw nsw i64 %conv222, 1
  %add226 = mul i64 %mul225, %conv224
  %85 = add i64 %add226, 4096
  %shl.i1238 = lshr i64 %85, 16
  %shr.i1240 = and i64 %shl.i1238, 536870911
  %add185.i1243 = add nuw nsw i64 %shr.i1240, 1
  %div186268.i1244 = lshr i64 %add185.i1243, 1
  %conv188.i1245 = trunc i64 %div186268.i1244 to i32
  %worst_case_latency232 = getelementptr inbounds %struct.rv515_watermark, ptr %wm1, i32 0, i32 3
  %86 = ptrtoint ptr %worst_case_latency232 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %worst_case_latency232, align 4
  %conv233 = zext i32 %87 to i64
  %conv235 = zext i32 %82 to i64
  %mul236 = mul nuw i64 %conv233, %conv235
  %add237 = add nuw i64 %mul236, 2048
  %shr238 = lshr i64 %add237, 12
  %conv239 = trunc i64 %shr238 to i32
  %add240 = add i32 %conv188.i1245, %conv239
  br label %if.end253

if.else241:                                       ; preds = %dfixed_div.exit1236
  call void @__sanitizer_cov_trace_pc() #10
  %worst_case_latency242 = getelementptr inbounds %struct.rv515_watermark, ptr %wm1, i32 0, i32 3
  %88 = ptrtoint ptr %worst_case_latency242 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %worst_case_latency242, align 4
  %conv243 = zext i32 %89 to i64
  %conv245 = zext i32 %82 to i64
  %mul246 = mul nuw i64 %conv243, %conv245
  %add247 = add nuw i64 %mul246, 2048
  %shr248 = lshr i64 %add247, 12
  %conv249 = trunc i64 %shr248 to i32
  %.fca.0.insert343 = insertvalue [1 x i32] poison, i32 %conv249, 0
  %call252 = tail call fastcc i32 @dfixed_div([1 x i32] %.fca.0.insert343, [1 x i32] [i32 65536000])
  br label %if.end253

if.end253:                                        ; preds = %if.else241, %if.then219
  %priority_mark12.sroa.0.3 = phi i32 [ %add240, %if.then219 ], [ %call252, %if.else241 ]
  %priority_mark254 = getelementptr inbounds %struct.rv515_watermark, ptr %wm1, i32 0, i32 8
  %90 = ptrtoint ptr %priority_mark254 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %priority_mark254, align 4
  %92 = tail call i32 @llvm.umax.i32(i32 %91, i32 %priority_mark12.sroa.0.3)
  %priority_mark_max260 = getelementptr inbounds %struct.rv515_watermark, ptr %wm1, i32 0, i32 7
  %93 = ptrtoint ptr %priority_mark_max260 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %priority_mark_max260, align 4
  %95 = tail call i32 @llvm.umax.i32(i32 %94, i32 %92)
  %shr266 = lshr i32 %95, 12
  %96 = ptrtoint ptr %d2mode_priority_a_cnt to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %shr266, ptr %d2mode_priority_a_cnt, align 4
  %disp_priority267 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 12
  %97 = ptrtoint ptr %disp_priority267 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %disp_priority267, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %98)
  %cmp268 = icmp eq i32 %98, 2
  br i1 %cmp268, label %if.end253.if.end275.sink.split_crit_edge, label %if.end253.if.end275_crit_edge

if.end253.if.end275_crit_edge:                    ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end275

if.end253.if.end275.sink.split_crit_edge:         ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end275.sink.split

if.end275.sink.split:                             ; preds = %if.end253.if.end275.sink.split_crit_edge, %if.end176.if.end275.sink.split_crit_edge, %if.then116
  %shr189.sink = phi i32 [ %49, %if.then116 ], [ %shr189, %if.end176.if.end275.sink.split_crit_edge ], [ %shr266, %if.end253.if.end275.sink.split_crit_edge ]
  %d1mode_priority_a_cnt.sink = phi ptr [ %d2mode_priority_a_cnt, %if.then116 ], [ %d1mode_priority_a_cnt, %if.end176.if.end275.sink.split_crit_edge ], [ %d2mode_priority_a_cnt, %if.end253.if.end275.sink.split_crit_edge ]
  %or194 = or i32 %shr189.sink, 1048576
  %99 = ptrtoint ptr %d1mode_priority_a_cnt.sink to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %or194, ptr %d1mode_priority_a_cnt.sink, align 4
  br label %if.end275

if.end275:                                        ; preds = %if.end275.sink.split, %if.end253.if.end275_crit_edge, %if.else196.if.end275_crit_edge, %if.end176.if.end275_crit_edge, %if.end89.if.end275_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv515_bandwidth_update(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_config_initialized = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 3
  %0 = ptrtoint ptr %mode_config_initialized to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mode_config_initialized, align 4, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @radeon_update_display_priority(ptr noundef %rdev) #8
  %crtcs = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 4
  %2 = ptrtoint ptr %crtcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtcs, align 4
  %enabled = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled, align 8, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  %mode = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 12
  %arrayidx11 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 4, i32 1
  %6 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx11, align 4
  %enabled13 = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %enabled13 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %enabled13, align 8, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool14.not = icmp eq i8 %9, 0
  %mode20 = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 12
  %disp_priority = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 12
  %10 = ptrtoint ptr %disp_priority to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %disp_priority, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp = icmp eq i32 %11, 2
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end32_crit_edge

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

land.lhs.true:                                    ; preds = %if.end
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %12 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %13)
  %cmp22 = icmp eq i32 %13, 21
  br i1 %cmp22, label %if.then23, label %land.lhs.true.if.end32_crit_edge

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %mc_rreg = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 32
  %14 = ptrtoint ptr %mc_rreg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mc_rreg, align 8
  %call = tail call i32 %15(ptr noundef %rdev, i32 noundef 9) #8
  %and24 = and i32 %call, -65281
  %tobool25.not52 = icmp eq ptr %mode20, null
  %tobool25.not = select i1 %tobool14.not, i1 true, i1 %tobool25.not52
  %or = or i32 %and24, 4096
  %spec.select51 = select i1 %tobool25.not, i32 %and24, i32 %or
  %tobool28.not53 = icmp eq ptr %mode, null
  %tobool28.not = select i1 %tobool2.not, i1 true, i1 %tobool28.not53
  %or30 = or i32 %spec.select51, 256
  %tmp.1 = select i1 %tobool28.not, i32 %spec.select51, i32 %or30
  %mc_wreg = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 33
  %16 = ptrtoint ptr %mc_wreg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mc_wreg, align 4
  tail call void %17(ptr noundef %rdev, i32 noundef 9, i32 noundef %tmp.1) #8
  br label %if.end32

if.end32:                                         ; preds = %if.then23, %land.lhs.true.if.end32_crit_edge, %if.end.if.end32_crit_edge
  tail call void @rv515_bandwidth_avivo_update(ptr noundef %rdev)
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_update_display_priority(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_mm_wreg_slow(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_mm_rreg_slow(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rv515_debugfs_pipes_info_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @rv515_debugfs_pipes_info_show, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rv515_debugfs_pipes_info_show(ptr noundef %m, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 16428
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !86
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.16, i32 noundef %5) #8
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %7, i32 17096
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17) #8, !srcloc !86
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.17, i32 noundef %9) #8
  %10 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %11, i32 16408
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21) #8, !srcloc !86
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.18, i32 noundef %13) #8
  %14 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %15, i32 5900
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25) #8, !srcloc !86
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.19, i32 noundef %17) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rv515_debugfs_ga_info_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @rv515_debugfs_ga_info_show, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rv515_debugfs_ga_info_show(ptr noundef %m, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 8512
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !86
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.20, i32 noundef %5) #8
  %asic = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 56
  %6 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %asic, align 8
  %asic_reset = getelementptr inbounds %struct.radeon_asic, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %asic_reset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %asic_reset, align 4
  %call1 = tail call i32 %9(ptr noundef %1, i1 noundef zeroext false) #8
  %10 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %11, i32 16988
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12) #8, !srcloc !86
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.21, i32 noundef %13) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv370_pcie_gart_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_wb_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_fence_driver_start_ring(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_irq_kms_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rs600_irq_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_cp_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_ib_pool_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_gui_wait_for_idle(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @r420_pipes_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_vram_init_sizes(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_vram_location(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_gtt_location(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_update_bandwidth_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dfixed_div([1 x i32] %A.coerce, [1 x i32] %B.coerce) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %A.coerce.fca.0.extract = extractvalue [1 x i32] %A.coerce, 0
  %B.coerce.fca.0.extract = extractvalue [1 x i32] %B.coerce, 0
  %conv = zext i32 %A.coerce.fca.0.extract to i64
  %shl = shl nuw nsw i64 %conv, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %A.coerce.fca.0.extract)
  %cmp169 = icmp ult i32 %A.coerce.fca.0.extract, 524288
  br i1 %cmp169, label %if.then173, label %if.else179, !prof !93

if.then173:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv174 = trunc i64 %shl to i32
  %div177 = udiv i32 %conv174, %B.coerce.fca.0.extract
  %conv178 = zext i32 %div177 to i64
  br label %if.end183

if.else179:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %B.coerce.fca.0.extract, i64 %shl) #12, !srcloc !92
  %asmresult1.i = extractvalue { i64, i64 } %0, 1
  br label %if.end183

if.end183:                                        ; preds = %if.else179, %if.then173
  %tmp.0 = phi i64 [ %conv178, %if.then173 ], [ %asmresult1.i, %if.else179 ]
  %add185 = add i64 %tmp.0, 1
  %div186268 = lshr i64 %add185, 1
  %conv188 = trunc i64 %div186268 to i32
  ret i32 %conv188
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inlinehint nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !17, !18, !20, !21, !23, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !73, !74, !75}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/rv515.c", i32 260, i32 22}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/rv515.c", i32 262, i32 22}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/radeon/rv515.c", i32 551, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @rv515_resume._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @rv515_resume._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/radeon/rv515.c", i32 625, i32 3}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @rv515_init._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @rv515_init._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @rv515_init._entry.10, !19, !"_entry", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/radeon/rv515.c", i32 630, i32 3}
!20 = !{ptr @rv515_init._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/radeon/rv515.c", i32 668, i32 3}
!23 = !{ptr @rv515_init._entry.12, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @rv515_init._entry_ptr.14, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/radeon/radeon.h", i32 2721, i32 3}
!27 = !{ptr @rv515_debugfs_pipes_info_fops, !28, !"rv515_debugfs_pipes_info_fops", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/radeon/rv515.c", i32 251, i32 1}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/radeon/rv515.c", i32 228, i32 16}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/radeon/rv515.c", i32 230, i32 16}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/radeon/rv515.c", i32 232, i32 16}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/radeon/rv515.c", i32 234, i32 16}
!37 = !{ptr @rv515_debugfs_ga_info_fops, !38, !"rv515_debugfs_ga_info_fops", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/radeon/rv515.c", i32 252, i32 1}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/radeon/rv515.c", i32 244, i32 16}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/radeon/rv515.c", i32 247, i32 16}
!43 = !{ptr @crtc_offsets, !44, !"crtc_offsets", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/radeon/rv515.c", i32 45, i32 18}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/radeon/rv515.c", i32 511, i32 3}
!47 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @rv515_startup._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @rv515_startup._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/radeon/rv515.c", i32 527, i32 3}
!52 = !{ptr @rv515_startup._entry.24, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @rv515_startup._entry_ptr.26, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/radeon/rv515.c", i32 533, i32 3}
!56 = !{ptr @rv515_startup._entry.27, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @rv515_startup._entry_ptr.29, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/radeon/rv515.c", i32 449, i32 3}
!60 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @rv515_mc_program._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @rv515_mc_program._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/radeon/rv515.c", i32 146, i32 3}
!65 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @rv515_gpu_init._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @rv515_gpu_init._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @rv515_gpu_init._entry.34, !69, !"_entry", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/radeon/rv515.c", i32 157, i32 3}
!70 = !{ptr @rv515_gpu_init._entry_ptr.35, !69, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/radeon/rv515.c", i32 160, i32 3}
!73 = !{ptr @rv515_gpu_init._entry.36, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @rv515_gpu_init._entry_ptr.38, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @rv515_reg_safe_bm, !76, !"rv515_reg_safe_bm", i1 false, i1 false}
!76 = !{!"./drivers/gpu/drm/radeon/rv515_reg_safe.h", i32 1, i32 23}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{i64 6113273}
!87 = !{i64 2157973410}
!88 = !{i64 2157973817}
!89 = !{i64 6112855}
!90 = !{i8 0, i8 2}
!91 = !{!"auto-init"}
!92 = !{i64 2148269655, i64 2148269935, i64 2148270269, i64 2148270603}
!93 = !{!"branch_weights", i32 2000, i32 1}
