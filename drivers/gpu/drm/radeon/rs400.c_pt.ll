; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/rs400.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/rs400.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.r100_mc_save = type { i32, i32, i32, i32, i32, i32 }
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

@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to use IGP GART size %uM\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Valid GART size for IGP are 32M,64M,128M,256M,512M,1G,2G\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Forcing to 32M GART size\0A\00", [38 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/gpu/drm/radeon/rs400.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"RS400 GART already initialized\0A\00", [32 x i8] zeroinitializer }, align 32
@rs400_gart_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.3, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016[drm] PCIE GART of %uM enabled (table at 0x%016llX).\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rs400_gart_enable\00", [46 x i8] zeroinitializer }, align 32
@rs400_gart_enable._entry_ptr = internal global ptr @rs400_gart_enable._entry, section ".printk_index", align 4
@rs400_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 473, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"GPU reset failed ! (0xE40=0x%08X, 0x7C0=0x%08X)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rs400_resume\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rs400_resume._entry_ptr = internal global ptr @rs400_resume._entry, section ".printk_index", align 4
@rs400_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 535, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Expecting combios for RS400/RS480 GPU\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rs400_init\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@rs400_init._entry_ptr = internal global ptr @rs400_init._entry, section ".printk_index", align 4
@rs400_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.12, ptr @.str.3, i32 547, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@rs400_init._entry_ptr.15 = internal global ptr @rs400_init._entry.14, section ".printk_index", align 4
@rs400_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.3, i32 575, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Disabling GPU acceleration\0A\00", [36 x i8] zeroinitializer }, align 32
@rs400_init._entry_ptr.18 = internal global ptr @rs400_init._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rs400_gart_info\00", [16 x i8] zeroinitializer }, align 32
@rs400_debugfs_gart_info_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rs400_debugfs_gart_info_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HOST_PATH_CNTL 0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"BUS_CNTL 0x%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"AIC_CTRL_SCRATCH 0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"MCCFG_AGP_BASE 0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"MCCFG_AGP_BASE_2 0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"MCCFG_AGP_LOCATION 0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"MCCFG_FB_LOCATION 0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HDP_FB_LOCATION 0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"AGP_BASE 0x%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"AGP_BASE_2 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"MC_AGP_LOCATION 0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GART_BASE 0x%08x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"GART_FEATURE_ID 0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"AGP_MODE_CONTROL 0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MC_MISC_CNTL 0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"MC_MISC_UMA_CNTL 0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"AGP_ADDRESS_SPACE_SIZE 0x%08x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"GART_CACHE_CNTRL 0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MC_GART_ERROR_ADDRESS 0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"MC_GART_ERROR_ADDRESS_HI 0x%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"GART_ERROR_0 0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"GART_ERROR_1 0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"GART_ERROR_2 0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"GART_ERROR_3 0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"GART_ERROR_4 0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"GART_ERROR_5 0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"GART_ERROR_6 0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"GART_ERROR_7 0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@rs400_mc_program._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.3, i32 397, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"rs400: Wait MC idle timeout before updating MC.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rs400_mc_program\00", [47 x i8] zeroinitializer }, align 32
@rs400_mc_program._entry_ptr = internal global ptr @rs400_mc_program._entry, section ".printk_index", align 4
@rs400_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 430, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed initializing CP fences (%d).\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rs400_startup\00", [18 x i8] zeroinitializer }, align 32
@rs400_startup._entry_ptr = internal global ptr @rs400_startup._entry, section ".printk_index", align 4
@rs400_startup._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.3, i32 446, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed initializing CP (%d).\0A\00", [34 x i8] zeroinitializer }, align 32
@rs400_startup._entry_ptr.54 = internal global ptr @rs400_startup._entry.52, section ".printk_index", align 4
@rs400_startup._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.51, ptr @.str.3, i32 452, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"IB initialization failed (%d).\0A\00", [32 x i8] zeroinitializer }, align 32
@rs400_startup._entry_ptr.57 = internal global ptr @rs400_startup._entry.55, section ".printk_index", align 4
@rs400_gpu_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.3, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\014rs400: Failed to wait MC idle while programming pipes. Bad things might happen. %08x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rs400_gpu_init\00", [17 x i8] zeroinitializer }, align 32
@rs400_gpu_init._entry_ptr = internal global ptr @rs400_gpu_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 44, i64 32, i64 64, i64 128, i64 256, i64 512, i64 1024, i64 2048]
@__sancov_gen_cov_switch_values.60 = internal global [9 x i64] [i64 7, i64 44, i64 32, i64 64, i64 128, i64 256, i64 512, i64 1024, i64 2048]
@__sancov_gen_cov_switch_values.61 = internal global [9 x i64] [i64 7, i64 44, i64 32, i64 64, i64 128, i64 256, i64 512, i64 1024, i64 2048]
@__sancov_gen_cov_switch_values.62 = internal global [9 x i64] [i64 7, i64 44, i64 32, i64 64, i64 128, i64 256, i64 512, i64 1024, i64 2048]
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 55, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 57, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 58, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 85, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 190, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 471, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 535, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 544, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 575, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 383, i32 22 }
@___asan_gen_.126 = private unnamed_addr constant [29 x i8] c"rs400_debugfs_gart_info_fops\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 375, i32 1 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 314, i32 16 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 316, i32 16 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 318, i32 16 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 321, i32 17 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 323, i32 17 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 325, i32 17 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 327, i32 17 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 329, i32 17 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 332, i32 17 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 334, i32 17 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 336, i32 17 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 339, i32 16 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 341, i32 16 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 343, i32 16 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 345, i32 16 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 347, i32 16 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 349, i32 16 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 351, i32 16 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 353, i32 16 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 355, i32 16 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 357, i32 16 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 359, i32 16 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 361, i32 16 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 363, i32 16 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 365, i32 16 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 367, i32 16 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 369, i32 16 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 371, i32 16 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 397, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 430, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 446, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 452, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.249 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.250 = private constant [34 x i8] c"../drivers/gpu/drm/radeon/rs400.c\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 261, i32 3 }
@llvm.compiler.used = appending global [73 x ptr] [ptr @rs400_gart_enable._entry, ptr @rs400_gart_enable._entry_ptr, ptr @rs400_gpu_init._entry, ptr @rs400_gpu_init._entry_ptr, ptr @rs400_init._entry, ptr @rs400_init._entry.14, ptr @rs400_init._entry.16, ptr @rs400_init._entry_ptr, ptr @rs400_init._entry_ptr.15, ptr @rs400_init._entry_ptr.18, ptr @rs400_mc_program._entry, ptr @rs400_mc_program._entry_ptr, ptr @rs400_resume._entry, ptr @rs400_resume._entry_ptr, ptr @rs400_startup._entry, ptr @rs400_startup._entry.52, ptr @rs400_startup._entry.55, ptr @rs400_startup._entry_ptr, ptr @rs400_startup._entry_ptr.54, ptr @rs400_startup._entry_ptr.57, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.17, ptr @.str.19, ptr @rs400_debugfs_gart_info_fops, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.59], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs400_gart_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs400_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs400_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs400_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs400_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs400_debugfs_gart_info_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs400_mc_program._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs400_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs400_startup._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs400_startup._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs400_gpu_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rs400_gart_adjust_size(ptr nocapture noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %gtt_size = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 5
  %0 = ptrtoint ptr %gtt_size to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %gtt_size, align 8
  %div7 = lshr i64 %1, 20
  %trunc = trunc i64 %div7 to i44
  %2 = zext i44 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i44 %trunc, label %sw.default [
    i44 32, label %entry.sw.epilog_crit_edge
    i44 64, label %entry.sw.epilog_crit_edge8
    i44 128, label %entry.sw.epilog_crit_edge9
    i44 256, label %entry.sw.epilog_crit_edge10
    i44 512, label %entry.sw.epilog_crit_edge11
    i44 1024, label %entry.sw.epilog_crit_edge12
    i44 2048, label %entry.sw.epilog_crit_edge13
  ]

entry.sw.epilog_crit_edge13:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge12:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge11:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge10:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge9:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge8:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i64 %div7 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %conv) #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #7
  %3 = ptrtoint ptr %gtt_size to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 33554432, ptr %gtt_size, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge8, %entry.sw.epilog_crit_edge9, %entry.sw.epilog_crit_edge10, %entry.sw.epilog_crit_edge11, %entry.sw.epilog_crit_edge12, %entry.sw.epilog_crit_edge13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rs400_gart_tlb_flush(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usec_timeout = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %0 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usec_timeout, align 4
  %mc_wreg = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 33
  %2 = ptrtoint ptr %mc_wreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mc_wreg, align 4
  tail call void %3(ptr noundef %rdev, i32 noundef 46, i32 noundef 1) #7
  %mc_rreg = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 32
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %timeout.0 = phi i32 [ %1, %entry ], [ %dec, %if.end.do.body_crit_edge ]
  %4 = ptrtoint ptr %mc_rreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mc_rreg, align 8
  %call = tail call i32 %5(ptr noundef %rdev, i32 noundef 46) #7
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %do.body.do.end_crit_edge, label %if.end

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end:                                           ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #7
  %dec = add i32 %timeout.0, -1
  %cmp1.not = icmp eq i32 %dec, 0
  br i1 %cmp1.not, label %if.end.do.end_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %if.end.do.end_crit_edge, %do.body.do.end_crit_edge
  %7 = ptrtoint ptr %mc_wreg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mc_wreg, align 4
  tail call void %8(ptr noundef %rdev, i32 noundef 46, i32 noundef 0) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rs400_gart_init(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ptr = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 2
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end17, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 85, i32 noundef 9, ptr noundef nonnull @.str.4) #7
  br label %cleanup

if.end17:                                         ; preds = %entry
  %gtt_size = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 5
  %2 = ptrtoint ptr %gtt_size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %gtt_size, align 8
  %div32 = lshr i64 %3, 20
  %trunc = trunc i64 %div32 to i44
  %4 = zext i44 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.60)
  switch i44 %trunc, label %if.end17.cleanup_crit_edge [
    i44 32, label %if.end17.sw.epilog_crit_edge
    i44 64, label %if.end17.sw.epilog_crit_edge33
    i44 128, label %if.end17.sw.epilog_crit_edge34
    i44 256, label %if.end17.sw.epilog_crit_edge35
    i44 512, label %if.end17.sw.epilog_crit_edge36
    i44 1024, label %if.end17.sw.epilog_crit_edge37
    i44 2048, label %if.end17.sw.epilog_crit_edge38
  ]

if.end17.sw.epilog_crit_edge38:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end17.sw.epilog_crit_edge37:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end17.sw.epilog_crit_edge36:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end17.sw.epilog_crit_edge35:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end17.sw.epilog_crit_edge34:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end17.sw.epilog_crit_edge33:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end17.sw.epilog_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog:                                        ; preds = %if.end17.sw.epilog_crit_edge, %if.end17.sw.epilog_crit_edge33, %if.end17.sw.epilog_crit_edge34, %if.end17.sw.epilog_crit_edge35, %if.end17.sw.epilog_crit_edge36, %if.end17.sw.epilog_crit_edge37, %if.end17.sw.epilog_crit_edge38
  %call = tail call i32 @radeon_gart_init(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool18.not = icmp eq i32 %call, 0
  br i1 %tobool18.not, label %if.end20, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %ddev.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %5 = ptrtoint ptr %ddev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ddev.i, align 4
  %primary.i = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %primary.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %primary.i, align 4
  %debugfs_root.i = getelementptr inbounds %struct.drm_minor, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %debugfs_root.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %debugfs_root.i, align 4
  %call.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.19, i16 noundef zeroext 292, ptr noundef %10, ptr noundef %rdev, ptr noundef nonnull @rs400_debugfs_gart_info_fops) #7
  %num_gpu_pages = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 3
  %11 = ptrtoint ptr %num_gpu_pages to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_gpu_pages, align 4
  %mul = shl i32 %12, 2
  %table_size = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 5
  %13 = ptrtoint ptr %table_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul, ptr %table_size, align 4
  %call23 = tail call i32 @radeon_gart_table_ram_alloc(ptr noundef %rdev) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %sw.epilog.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %call23, %if.end20 ], [ -22, %if.end17.cleanup_crit_edge ], [ %call, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_gart_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_gart_table_ram_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rs400_gart_enable(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mc_rreg = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 32
  %0 = ptrtoint ptr %mc_rreg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc_rreg, align 8
  %call = tail call i32 %1(ptr noundef %rdev, i32 noundef 58) #7
  %or = or i32 %call, 2
  %mc_wreg = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 33
  %2 = ptrtoint ptr %mc_wreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mc_wreg, align 4
  tail call void %3(ptr noundef %rdev, i32 noundef 58, i32 noundef %or) #7
  %gtt_size = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 5
  %4 = ptrtoint ptr %gtt_size to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %gtt_size, align 8
  %div137 = lshr i64 %5, 20
  %trunc = trunc i64 %div137 to i44
  %6 = zext i44 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.61)
  switch i44 %trunc, label %entry.cleanup_crit_edge [
    i44 32, label %entry.sw.epilog_crit_edge
    i44 64, label %sw.bb1
    i44 128, label %sw.bb2
    i44 256, label %sw.bb3
    i44 512, label %sw.bb4
    i44 1024, label %sw.bb5
    i44 2048, label %sw.bb6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %size_reg.0 = phi i32 [ 13, %sw.bb6 ], [ 11, %sw.bb5 ], [ 9, %sw.bb4 ], [ 7, %sw.bb3 ], [ 5, %sw.bb2 ], [ 3, %sw.bb1 ], [ 1, %entry.sw.epilog_crit_edge ]
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %7 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %family, align 4
  %.off = add i32 %8, -19
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then, label %if.else

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %mc_wreg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mc_wreg, align 4
  tail call void %10(ptr noundef %rdev, i32 noundef 258, i32 noundef -1) #7
  %11 = ptrtoint ptr %mc_wreg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mc_wreg, align 4
  tail call void %12(ptr noundef %rdev, i32 noundef 259, i32 noundef 0) #7
  br label %if.end

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  tail call void @arm_heavy_mb() #7
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %13 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #7, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  tail call void @arm_heavy_mb() #7
  %15 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i143 = getelementptr i8, ptr %16, i32 356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i143, i32 0) #7, !srcloc !127
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %gtt_end = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 7
  %17 = ptrtoint ptr %gtt_end to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %gtt_end, align 8
  %gtt_start = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 6
  %19 = ptrtoint ptr %gtt_start to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %gtt_start, align 8
  %shr13 = lshr i64 %20, 16
  %and15 = and i64 %shr13, 65535
  %conv16 = and i64 %18, 4294901760
  %or17 = or i64 %and15, %conv16
  %conv18 = trunc i64 %or17 to i32
  %21 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %family, align 4
  %.off138 = add i32 %22, -19
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off138)
  %switch139 = icmp ult i32 %.off138, 2
  br i1 %switch139, label %if.then26, label %if.else30

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %mc_wreg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mc_wreg, align 4
  tail call void %24(ptr noundef %rdev, i32 noundef 257, i32 noundef %conv18) #7
  %rmmio.i144 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %25 = ptrtoint ptr %rmmio.i144 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rmmio.i144, align 4
  %add.ptr.i145 = getelementptr i8, ptr %26, i32 48
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i145) #7, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  %28 = and i32 %27, -4194305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  tail call void @arm_heavy_mb() #7
  %29 = ptrtoint ptr %rmmio.i144 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rmmio.i144, align 4
  %add.ptr.i147 = getelementptr i8, ptr %30, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i147, i32 %28) #7, !srcloc !127
  br label %if.end33

if.else30:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  tail call void @arm_heavy_mb() #7
  %31 = tail call i32 @llvm.bswap.i32(i32 %conv18) #7
  %rmmio.i148 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %32 = ptrtoint ptr %rmmio.i148 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmmio.i148, align 4
  %add.ptr.i149 = getelementptr i8, ptr %33, i32 332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i149, i32 %31) #7, !srcloc !127
  %34 = ptrtoint ptr %rmmio.i148 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rmmio.i148, align 4
  %add.ptr.i151 = getelementptr i8, ptr %35, i32 48
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i151) #7, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  %37 = and i32 %36, -1073741825
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  tail call void @arm_heavy_mb() #7
  %38 = ptrtoint ptr %rmmio.i148 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rmmio.i148, align 4
  %add.ptr.i153 = getelementptr i8, ptr %39, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i153, i32 %37) #7, !srcloc !127
  br label %if.end33

if.end33:                                         ; preds = %if.else30, %if.then26
  %gart = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43
  %40 = ptrtoint ptr %gart to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %gart, align 8
  %and34 = and i32 %41, -4096
  %42 = ptrtoint ptr %mc_wreg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mc_wreg, align 4
  tail call void %43(ptr noundef %rdev, i32 noundef 44, i32 noundef %and34) #7
  %44 = ptrtoint ptr %mc_wreg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mc_wreg, align 4
  tail call void %45(ptr noundef %rdev, i32 noundef 43, i32 noundef 1107558400) #7
  %46 = ptrtoint ptr %mc_wreg to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mc_wreg, align 4
  tail call void %47(ptr noundef %rdev, i32 noundef 57, i32 noundef 20971520) #7
  %48 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %family, align 4
  %.off140 = add i32 %49, -19
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off140)
  %switch141 = icmp ult i32 %.off140, 2
  %50 = ptrtoint ptr %mc_rreg to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mc_rreg, align 8
  %call54 = tail call i32 %51(ptr noundef %rdev, i32 noundef 24) #7
  %. = select i1 %switch141, i32 20480, i32 4096
  %or60 = or i32 %call54, %.
  %52 = ptrtoint ptr %mc_wreg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mc_wreg, align 4
  tail call void %53(ptr noundef %rdev, i32 noundef 24, i32 noundef %or60) #7
  %54 = ptrtoint ptr %mc_wreg to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mc_wreg, align 4
  tail call void %55(ptr noundef %rdev, i32 noundef 56, i32 noundef %size_reg.0) #7
  %usec_timeout.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %56 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %usec_timeout.i, align 4
  %58 = ptrtoint ptr %mc_wreg to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mc_wreg, align 4
  tail call void %59(ptr noundef %rdev, i32 noundef 46, i32 noundef 1) #7
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.end33
  %timeout.0.i = phi i32 [ %57, %if.end33 ], [ %dec.i, %if.end.i.do.body.i_crit_edge ]
  %60 = ptrtoint ptr %mc_rreg to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mc_rreg, align 8
  %call.i = tail call i32 %61(ptr noundef %rdev, i32 noundef 46) #7
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %do.body.i.rs400_gart_tlb_flush.exit_crit_edge, label %if.end.i

do.body.i.rs400_gart_tlb_flush.exit_crit_edge:    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rs400_gart_tlb_flush.exit

if.end.i:                                         ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 214748) #7
  %dec.i = add i32 %timeout.0.i, -1
  %cmp1.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp1.not.i, label %if.end.i.rs400_gart_tlb_flush.exit_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.end.i.rs400_gart_tlb_flush.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rs400_gart_tlb_flush.exit

rs400_gart_tlb_flush.exit:                        ; preds = %if.end.i.rs400_gart_tlb_flush.exit_crit_edge, %do.body.i.rs400_gart_tlb_flush.exit_crit_edge
  %63 = ptrtoint ptr %mc_wreg to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mc_wreg, align 4
  tail call void %64(ptr noundef %rdev, i32 noundef 46, i32 noundef 0) #7
  %65 = ptrtoint ptr %gtt_size to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %gtt_size, align 8
  %shr68 = lshr i64 %66, 20
  %conv69 = trunc i64 %shr68 to i32
  %67 = ptrtoint ptr %gart to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %gart, align 8
  %conv72 = zext i32 %68 to i64
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %conv69, i64 noundef %conv72) #10
  %ready = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 8
  %69 = ptrtoint ptr %ready to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %ready, align 8
  br label %cleanup

cleanup:                                          ; preds = %rs400_gart_tlb_flush.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rs400_gart_tlb_flush.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rs400_gart_disable(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mc_rreg = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 32
  %0 = ptrtoint ptr %mc_rreg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc_rreg, align 8
  %call = tail call i32 %1(ptr noundef %rdev, i32 noundef 58) #7
  %or = or i32 %call, 2
  %mc_wreg = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 33
  %2 = ptrtoint ptr %mc_wreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mc_wreg, align 4
  tail call void %3(ptr noundef %rdev, i32 noundef 58, i32 noundef %or) #7
  %4 = ptrtoint ptr %mc_wreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mc_wreg, align 4
  tail call void %5(ptr noundef %rdev, i32 noundef 56, i32 noundef 0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rs400_gart_fini(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @radeon_gart_fini(ptr noundef %rdev) #7
  %mc_rreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 32
  %0 = ptrtoint ptr %mc_rreg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc_rreg.i, align 8
  %call.i = tail call i32 %1(ptr noundef %rdev, i32 noundef 58) #7
  %or.i = or i32 %call.i, 2
  %mc_wreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 33
  %2 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mc_wreg.i, align 4
  tail call void %3(ptr noundef %rdev, i32 noundef 58, i32 noundef %or.i) #7
  %4 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mc_wreg.i, align 4
  tail call void %5(ptr noundef %rdev, i32 noundef 56, i32 noundef 0) #7
  tail call void @radeon_gart_table_ram_free(ptr noundef %rdev) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_gart_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_gart_table_ram_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @rs400_gart_get_page_entry(i64 noundef %addr, i32 noundef %flags) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %addr to i32
  %and2 = and i32 %conv, -4096
  %sh.diff = lshr i64 %addr, 28
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %shl = and i32 %tr.sh.diff, 4080
  %and6 = shl i32 %flags, 2
  %0 = and i32 %and6, 8
  %and8 = and i32 %flags, 4
  %and13 = lshr i32 %flags, 3
  %1 = and i32 %and13, 1
  %or = or i32 %and8, %and2
  %2 = or i32 %or, %shl
  %3 = or i32 %2, %0
  %4 = or i32 %3, %1
  %5 = xor i32 %4, 1
  %conv18 = zext i32 %5 to i64
  ret i64 %conv18
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rs400_gart_set_page(ptr nocapture noundef readonly %rdev, i32 noundef %i, i64 noundef %entry1) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ptr = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 2
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 8
  %conv = trunc i64 %entry1 to i32
  %2 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %arrayidx = getelementptr i32, ptr %1, i32 %i
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rs400_mc_wait_for_idle(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 336
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  %5 = and i32 %4, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #7
  %inc = add nuw i32 %i.05, 1
  %7 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %usec_timeout, align 4
  %cmp = icmp ult i32 %inc, %8
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rs400_mc_rreg(ptr noundef %rdev, i32 noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mc_idx_lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 22
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mc_idx_lock) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  tail call void @arm_heavy_mb() #7
  %and = shl i32 %reg, 24
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %and) #7, !srcloc !127
  %2 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %3, i32 364
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12) #7, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %7, i32 360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 -16777216) #7, !srcloc !127
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mc_idx_lock, i32 noundef %call2) #7
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rs400_mc_wreg(ptr noundef %rdev, i32 noundef %reg, i32 noundef %v) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mc_idx_lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 22
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mc_idx_lock) #7
  %and = and i32 %reg, 255
  %or = or i32 %and, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  tail call void @arm_heavy_mb() #7
  %0 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %1 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #7, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  tail call void @arm_heavy_mb() #7
  %3 = tail call i32 @llvm.bswap.i32(i32 %v) #7
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %5, i32 364
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %3) #7, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %7, i32 360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 -16777216) #7, !srcloc !127
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mc_idx_lock, i32 noundef %call2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rs400_resume(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mc_rreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 32
  %0 = ptrtoint ptr %mc_rreg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc_rreg.i, align 8
  %call.i = tail call i32 %1(ptr noundef %rdev, i32 noundef 58) #7
  %or.i = or i32 %call.i, 2
  %mc_wreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 33
  %2 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mc_wreg.i, align 4
  tail call void %3(ptr noundef %rdev, i32 noundef 58, i32 noundef %or.i) #7
  %4 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mc_wreg.i, align 4
  tail call void %5(ptr noundef %rdev, i32 noundef 56, i32 noundef 0) #7
  tail call void @r300_clock_startup(ptr noundef %rdev) #7
  tail call fastcc void @rs400_mc_program(ptr noundef %rdev)
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %6 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %asic, align 8
  %asic_reset = getelementptr inbounds %struct.radeon_asic, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %asic_reset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %asic_reset, align 4
  %call = tail call i32 %9(ptr noundef %rdev, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rdev, align 8
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %12 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 3648
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  %16 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i23 = getelementptr i8, ptr %17, i32 1984
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23) #7, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.7, i32 noundef %15, i32 noundef %19) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %ddev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %20 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ddev, align 4
  tail call void @radeon_combios_asic_init(ptr noundef %21) #7
  tail call void @r300_clock_startup(ptr noundef %rdev) #7
  tail call void @radeon_surface_init(ptr noundef %rdev) #7
  %accel_working = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 66
  %22 = ptrtoint ptr %accel_working to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %accel_working, align 2
  %call3 = tail call fastcc i32 @rs400_startup(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %accel_working to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %accel_working, align 2
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r300_clock_startup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rs400_mc_program(ptr noundef %rdev) unnamed_addr #0 align 64 {
entry:
  %save = alloca %struct.r100_mc_save, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %save) #7
  %0 = call ptr @memset(ptr %save, i32 255, i32 24)
  call void @r100_mc_stop(ptr noundef %rdev, ptr noundef nonnull %save) #7
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %usec_timeout.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %1 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %usec_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp4.not.i = icmp eq i32 %2, 0
  br i1 %cmp4.not.i, label %entry.do.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %3 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 336
  %5 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  %6 = and i32 %5, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.if.end_crit_edge

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %7(i32 noundef 214748) #7
  %inc.i = add nuw i32 %i.05.i, 1
  %8 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %usec_timeout.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %9
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.do.end_crit_edge

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

do.end:                                           ; preds = %if.end.i.do.end_crit_edge, %entry.do.end_crit_edge
  %10 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rdev, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.48) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body.i.if.end_crit_edge
  %vram_start = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 8
  %12 = ptrtoint ptr %vram_start to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %vram_start, align 8
  %shr = lshr i64 %13, 16
  %and = and i64 %shr, 65535
  %vram_end = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 9
  %14 = ptrtoint ptr %vram_end to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %vram_end, align 8
  %and3 = and i64 %15, 4294901760
  %or = or i64 %and, %and3
  %conv = trunc i64 %or to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  call void @arm_heavy_mb() #7
  %16 = call i32 @llvm.bswap.i32(i32 %conv) #7
  %17 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 328
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %16) #7, !srcloc !127
  call void @r100_mc_resume(ptr noundef %rdev, ptr noundef nonnull %save) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %save) #7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_combios_asic_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_surface_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rs400_startup(ptr noundef %rdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @r100_set_common_regs(ptr noundef %rdev) #7
  tail call fastcc void @rs400_mc_program(ptr noundef %rdev)
  tail call void @r300_clock_startup(ptr noundef %rdev) #7
  tail call void @r420_pipes_init(ptr noundef %rdev) #7
  %rmmio.i.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %usec_timeout.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %0 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usec_timeout.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp4.not.i.i = icmp eq i32 %1, 0
  br i1 %cmp4.not.i.i, label %entry.do.end.i_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %i.05.i.i = phi i32 [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ], [ 0, %entry.for.body.i.i_crit_edge ]
  %2 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 336
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  %5 = and i32 %4, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.i.rs400_gpu_init.exit_crit_edge

for.body.i.i.rs400_gpu_init.exit_crit_edge:       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rs400_gpu_init.exit

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #7
  %inc.i.i = add nuw i32 %i.05.i.i, 1
  %7 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %usec_timeout.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %8
  br i1 %cmp.i.i, label %if.end.i.i.for.body.i.i_crit_edge, label %if.end.i.i.do.end.i_crit_edge

if.end.i.i.do.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

do.end.i:                                         ; preds = %if.end.i.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %9 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 336
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #7
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %12) #10
  br label %rs400_gpu_init.exit

rs400_gpu_init.exit:                              ; preds = %do.end.i, %for.body.i.i.rs400_gpu_init.exit_crit_edge
  tail call void @r100_enable_bm(ptr noundef %rdev) #7
  %call = tail call i32 @rs400_gart_enable(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %rs400_gpu_init.exit.cleanup_crit_edge

rs400_gpu_init.exit.cleanup_crit_edge:            ; preds = %rs400_gpu_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %rs400_gpu_init.exit
  %call1 = tail call i32 @radeon_wb_init(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @radeon_fence_driver_start_ring(ptr noundef %rdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.50, i32 noundef %call5) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %irq = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %irq, align 8, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool9.not = icmp eq i8 %16, 0
  br i1 %tobool9.not, label %if.then10, label %if.end8.if.end15_crit_edge

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then10:                                        ; preds = %if.end8
  %call11 = tail call i32 @radeon_irq_kms_init(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then10.if.end15_crit_edge, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10.if.end15_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.end15:                                         ; preds = %if.then10.if.end15_crit_edge, %if.end8.if.end15_crit_edge
  %call16 = tail call i32 @r100_irq_set(ptr noundef %rdev) #7
  %17 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 304
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #7
  %hdp_cntl = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 3
  %21 = ptrtoint ptr %hdp_cntl to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %hdp_cntl, align 4
  %call18 = tail call i32 @r100_cp_init(ptr noundef %rdev, i32 noundef 1048576) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end25, label %do.end23

do.end23:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.53, i32 noundef %call18) #10
  br label %cleanup

if.end25:                                         ; preds = %if.end15
  %call26 = tail call i32 @radeon_ib_pool_init(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end25.cleanup_crit_edge, label %do.end31

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.56, i32 noundef %call26) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end31, %if.end25.cleanup_crit_edge, %do.end23, %if.then10.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %rs400_gpu_init.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %do.end ], [ %call18, %do.end23 ], [ %call26, %do.end31 ], [ %call, %rs400_gpu_init.exit.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call11, %if.then10.cleanup_crit_edge ], [ 0, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rs400_suspend(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @radeon_pm_suspend(ptr noundef %rdev) #7
  tail call void @r100_cp_disable(ptr noundef %rdev) #7
  tail call void @radeon_wb_disable(ptr noundef %rdev) #7
  tail call void @r100_irq_disable(ptr noundef %rdev) #7
  %mc_rreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 32
  %0 = ptrtoint ptr %mc_rreg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc_rreg.i, align 8
  %call.i = tail call i32 %1(ptr noundef %rdev, i32 noundef 58) #7
  %or.i = or i32 %call.i, 2
  %mc_wreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 33
  %2 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mc_wreg.i, align 4
  tail call void %3(ptr noundef %rdev, i32 noundef 58, i32 noundef %or.i) #7
  %4 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mc_wreg.i, align 4
  tail call void %5(ptr noundef %rdev, i32 noundef 56, i32 noundef 0) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_pm_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_cp_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_wb_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_irq_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rs400_fini(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @radeon_pm_fini(ptr noundef %rdev) #7
  tail call void @r100_cp_fini(ptr noundef %rdev) #7
  tail call void @radeon_wb_fini(ptr noundef %rdev) #7
  tail call void @radeon_ib_pool_fini(ptr noundef %rdev) #7
  tail call void @radeon_gem_fini(ptr noundef %rdev) #7
  tail call void @radeon_gart_fini(ptr noundef %rdev) #7
  %mc_rreg.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 32
  %0 = ptrtoint ptr %mc_rreg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc_rreg.i.i, align 8
  %call.i.i = tail call i32 %1(ptr noundef %rdev, i32 noundef 58) #7
  %or.i.i = or i32 %call.i.i, 2
  %mc_wreg.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 33
  %2 = ptrtoint ptr %mc_wreg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mc_wreg.i.i, align 4
  tail call void %3(ptr noundef %rdev, i32 noundef 58, i32 noundef %or.i.i) #7
  %4 = ptrtoint ptr %mc_wreg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mc_wreg.i.i, align 4
  tail call void %5(ptr noundef %rdev, i32 noundef 56, i32 noundef 0) #7
  tail call void @radeon_gart_table_ram_free(ptr noundef %rdev) #7
  tail call void @radeon_irq_kms_fini(ptr noundef %rdev) #7
  tail call void @radeon_fence_driver_fini(ptr noundef %rdev) #7
  tail call void @radeon_bo_fini(ptr noundef %rdev) #7
  tail call void @radeon_atombios_fini(ptr noundef %rdev) #7
  %bios = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 13
  %6 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bios, align 8
  tail call void @kfree(ptr noundef %7) #7
  %8 = ptrtoint ptr %bios to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %bios, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_pm_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_cp_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_wb_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ib_pool_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_gem_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_irq_kms_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_fence_driver_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_bo_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_atombios_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rs400_init(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @r100_vga_render_disable(ptr noundef %rdev) #7
  tail call void @radeon_scratch_init(ptr noundef %rdev) #7
  tail call void @radeon_surface_init(ptr noundef %rdev) #7
  tail call void @r100_restore_sanity(ptr noundef %rdev) #7
  %call = tail call zeroext i1 @radeon_get_bios(ptr noundef %rdev) #7
  br i1 %call, label %entry.if.end2_crit_edge, label %if.then

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %if.then.if.end2_crit_edge, %entry.if.end2_crit_edge
  %is_atom_bios = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 14
  %2 = ptrtoint ptr %is_atom_bios to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_atom_bios, align 4, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.11) #10
  br label %cleanup

if.else:                                          ; preds = %if.end2
  %call4 = tail call i32 @radeon_combios_init(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end8, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
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
  %call9 = tail call i32 %9(ptr noundef %rdev, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.if.end18_crit_edge, label %do.end14

if.end8.if.end18_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rdev, align 8
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %12 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 3648
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  %16 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i79 = getelementptr i8, ptr %17, i32 1984
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i79) #7, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.7, i32 noundef %15, i32 noundef %19) #10
  br label %if.end18

if.end18:                                         ; preds = %do.end14, %if.end8.if.end18_crit_edge
  %call19 = tail call zeroext i1 @radeon_boot_test_post_card(ptr noundef %rdev) #7
  br i1 %call19, label %if.end23, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %ddev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %20 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ddev, align 4
  tail call void @radeon_get_clock_info(ptr noundef %21) #7
  %gtt_size.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 5
  %22 = ptrtoint ptr %gtt_size.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %gtt_size.i.i, align 8
  %div7.i.i = lshr i64 %23, 20
  %trunc.i.i = trunc i64 %div7.i.i to i44
  %24 = zext i44 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.62)
  switch i44 %trunc.i.i, label %sw.default.i.i [
    i44 32, label %if.end23.rs400_mc_init.exit_crit_edge
    i44 64, label %if.end23.rs400_mc_init.exit_crit_edge80
    i44 128, label %if.end23.rs400_mc_init.exit_crit_edge81
    i44 256, label %if.end23.rs400_mc_init.exit_crit_edge82
    i44 512, label %if.end23.rs400_mc_init.exit_crit_edge83
    i44 1024, label %if.end23.rs400_mc_init.exit_crit_edge84
    i44 2048, label %if.end23.rs400_mc_init.exit_crit_edge85
  ]

if.end23.rs400_mc_init.exit_crit_edge85:          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %rs400_mc_init.exit

if.end23.rs400_mc_init.exit_crit_edge84:          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %rs400_mc_init.exit

if.end23.rs400_mc_init.exit_crit_edge83:          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %rs400_mc_init.exit

if.end23.rs400_mc_init.exit_crit_edge82:          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %rs400_mc_init.exit

if.end23.rs400_mc_init.exit_crit_edge81:          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %rs400_mc_init.exit

if.end23.rs400_mc_init.exit_crit_edge80:          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %rs400_mc_init.exit

if.end23.rs400_mc_init.exit_crit_edge:            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %rs400_mc_init.exit

sw.default.i.i:                                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i = trunc i64 %div7.i.i to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %conv.i.i) #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #7
  %25 = ptrtoint ptr %gtt_size.i.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 33554432, ptr %gtt_size.i.i, align 8
  br label %rs400_mc_init.exit

rs400_mc_init.exit:                               ; preds = %sw.default.i.i, %if.end23.rs400_mc_init.exit_crit_edge, %if.end23.rs400_mc_init.exit_crit_edge80, %if.end23.rs400_mc_init.exit_crit_edge81, %if.end23.rs400_mc_init.exit_crit_edge82, %if.end23.rs400_mc_init.exit_crit_edge83, %if.end23.rs400_mc_init.exit_crit_edge84, %if.end23.rs400_mc_init.exit_crit_edge85
  %call.i = tail call zeroext i1 @radeon_combios_sideport_present(ptr noundef %rdev) #7
  %mc.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42
  %igp_sideport_enabled.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 14
  %frombool.i = zext i1 %call.i to i8
  %26 = ptrtoint ptr %igp_sideport_enabled.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %frombool.i, ptr %igp_sideport_enabled.i, align 1
  %vram_is_ddr.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 13
  %27 = ptrtoint ptr %vram_is_ddr.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %vram_is_ddr.i, align 4
  %vram_width.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 10
  %28 = ptrtoint ptr %vram_width.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 128, ptr %vram_width.i, align 8
  tail call void @r100_vram_init_sizes(ptr noundef %rdev) #7
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %29 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %30, i32 348
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #7
  %shl.i = shl i32 %32, 16
  %conv.i = zext i32 %shl.i to i64
  tail call void @radeon_vram_location(ptr noundef %rdev, ptr noundef %mc.i, i64 noundef %conv.i) #7
  %33 = ptrtoint ptr %gtt_size.i.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %gtt_size.i.i, align 8
  %sub.i = add i64 %34, -1
  %gtt_base_align.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 15
  %35 = ptrtoint ptr %gtt_base_align.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %sub.i, ptr %gtt_base_align.i, align 8
  tail call void @radeon_gtt_location(ptr noundef %rdev, ptr noundef %mc.i) #7
  tail call void @radeon_update_bandwidth_info(ptr noundef %rdev) #7
  tail call void @radeon_fence_driver_init(ptr noundef %rdev) #7
  %call24 = tail call i32 @radeon_bo_init(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %rs400_mc_init.exit.cleanup_crit_edge

rs400_mc_init.exit.cleanup_crit_edge:             ; preds = %rs400_mc_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27:                                         ; preds = %rs400_mc_init.exit
  %call28 = tail call i32 @rs400_gart_init(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end31:                                         ; preds = %if.end27
  tail call void @r300_set_reg_safe(ptr noundef %rdev) #7
  %call32 = tail call i32 @radeon_pm_init(ptr noundef %rdev) #7
  %accel_working = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 66
  %36 = ptrtoint ptr %accel_working to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %accel_working, align 2
  %call33 = tail call fastcc i32 @rs400_startup(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end31.cleanup_crit_edge, label %do.end38

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end38:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.17) #10
  tail call void @r100_cp_fini(ptr noundef %rdev) #7
  tail call void @radeon_wb_fini(ptr noundef %rdev) #7
  tail call void @radeon_ib_pool_fini(ptr noundef %rdev) #7
  tail call void @rs400_gart_fini(ptr noundef %rdev)
  tail call void @radeon_irq_kms_fini(ptr noundef %rdev) #7
  %39 = ptrtoint ptr %accel_working to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %accel_working, align 2
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %if.end31.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %rs400_mc_init.exit.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.else.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %if.then.cleanup_crit_edge ], [ %call4, %if.else.cleanup_crit_edge ], [ -22, %if.end18.cleanup_crit_edge ], [ %call24, %rs400_mc_init.exit.cleanup_crit_edge ], [ %call28, %if.end27.cleanup_crit_edge ], [ 0, %do.end38 ], [ 0, %if.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_vga_render_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_scratch_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_restore_sanity(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_get_bios(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_combios_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_boot_test_post_card(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_get_clock_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_fence_driver_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_bo_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r300_set_reg_safe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_pm_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rs400_debugfs_gart_info_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @rs400_debugfs_gart_info_show, ptr noundef %1) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rs400_debugfs_gart_info_show(ptr noundef %m, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 304
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.20, i32 noundef %5) #7
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i158 = getelementptr i8, ptr %7, i32 48
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i158) #7, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.21, i32 noundef %9) #7
  %mc_rreg = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 32
  %10 = ptrtoint ptr %mc_rreg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mc_rreg, align 8
  %call2 = tail call i32 %11(ptr noundef %1, i32 noundef 58) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.22, i32 noundef %call2) #7
  %family = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %family, align 4
  %.off = add i32 %13, -19
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %mc_rreg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mc_rreg, align 8
  %call6 = tail call i32 %15(ptr noundef %1, i32 noundef 258) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.23, i32 noundef %call6) #7
  %16 = ptrtoint ptr %mc_rreg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mc_rreg, align 8
  %call8 = tail call i32 %17(ptr noundef %1, i32 noundef 259) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.24, i32 noundef %call8) #7
  %18 = ptrtoint ptr %mc_rreg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mc_rreg, align 8
  %call10 = tail call i32 %19(ptr noundef %1, i32 noundef 257) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.25, i32 noundef %call10) #7
  %20 = ptrtoint ptr %mc_rreg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mc_rreg, align 8
  %call12 = tail call i32 %21(ptr noundef %1, i32 noundef 256) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.26, i32 noundef %call12) #7
  %22 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i160 = getelementptr i8, ptr %23, i32 308
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i160) #7, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i162 = getelementptr i8, ptr %26, i32 368
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i162) #7, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.28, i32 noundef %28) #7
  %29 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i164 = getelementptr i8, ptr %30, i32 356
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i164) #7, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.29, i32 noundef %32) #7
  %33 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i166 = getelementptr i8, ptr %34, i32 332
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i166) #7, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink167 = phi i32 [ %35, %if.else ], [ %24, %if.then ]
  %.str.30.sink = phi ptr [ @.str.30, %if.else ], [ @.str.27, %if.then ]
  %36 = tail call i32 @llvm.bswap.i32(i32 %.sink167) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull %.str.30.sink, i32 noundef %36) #7
  %37 = ptrtoint ptr %mc_rreg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mc_rreg, align 8
  %call18 = tail call i32 %38(ptr noundef %1, i32 noundef 44) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.31, i32 noundef %call18) #7
  %39 = ptrtoint ptr %mc_rreg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mc_rreg, align 8
  %call20 = tail call i32 %40(ptr noundef %1, i32 noundef 43) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.32, i32 noundef %call20) #7
  %41 = ptrtoint ptr %mc_rreg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mc_rreg, align 8
  %call22 = tail call i32 %42(ptr noundef %1, i32 noundef 57) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.33, i32 noundef %call22) #7
  %43 = ptrtoint ptr %mc_rreg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mc_rreg, align 8
  %call24 = tail call i32 %44(ptr noundef %1, i32 noundef 24) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.34, i32 noundef %call24) #7
  %45 = ptrtoint ptr %mc_rreg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mc_rreg, align 8
  %call26 = tail call i32 %46(ptr noundef %1, i32 noundef 95) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.35, i32 noundef %call26) #7
  %47 = ptrtoint ptr %mc_rreg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mc_rreg, align 8
  %call28 = tail call i32 %48(ptr noundef %1, i32 noundef 56) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.36, i32 noundef %call28) #7
  %49 = ptrtoint ptr %mc_rreg to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mc_rreg, align 8
  %call30 = tail call i32 %50(ptr noundef %1, i32 noundef 46) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.37, i32 noundef %call30) #7
  %51 = ptrtoint ptr %mc_rreg to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mc_rreg, align 8
  %call32 = tail call i32 %52(ptr noundef %1, i32 noundef 59) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.38, i32 noundef %call32) #7
  %53 = ptrtoint ptr %mc_rreg to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mc_rreg, align 8
  %call34 = tail call i32 %54(ptr noundef %1, i32 noundef 60) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.39, i32 noundef %call34) #7
  %55 = ptrtoint ptr %mc_rreg to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mc_rreg, align 8
  %call36 = tail call i32 %56(ptr noundef %1, i32 noundef 48) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.40, i32 noundef %call36) #7
  %57 = ptrtoint ptr %mc_rreg to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mc_rreg, align 8
  %call38 = tail call i32 %58(ptr noundef %1, i32 noundef 49) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.41, i32 noundef %call38) #7
  %59 = ptrtoint ptr %mc_rreg to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mc_rreg, align 8
  %call40 = tail call i32 %60(ptr noundef %1, i32 noundef 50) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.42, i32 noundef %call40) #7
  %61 = ptrtoint ptr %mc_rreg to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mc_rreg, align 8
  %call42 = tail call i32 %62(ptr noundef %1, i32 noundef 51) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.43, i32 noundef %call42) #7
  %63 = ptrtoint ptr %mc_rreg to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mc_rreg, align 8
  %call44 = tail call i32 %64(ptr noundef %1, i32 noundef 52) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.44, i32 noundef %call44) #7
  %65 = ptrtoint ptr %mc_rreg to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mc_rreg, align 8
  %call46 = tail call i32 %66(ptr noundef %1, i32 noundef 53) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.45, i32 noundef %call46) #7
  %67 = ptrtoint ptr %mc_rreg to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mc_rreg, align 8
  %call48 = tail call i32 %68(ptr noundef %1, i32 noundef 54) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.46, i32 noundef %call48) #7
  %69 = ptrtoint ptr %mc_rreg to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mc_rreg, align 8
  %call50 = tail call i32 %70(ptr noundef %1, i32 noundef 55) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.47, i32 noundef %call50) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_mc_stop(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_mc_resume(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_set_common_regs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_enable_bm(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_wb_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_fence_driver_start_ring(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_irq_kms_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_irq_set(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_cp_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_ib_pool_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r420_pipes_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_combios_sideport_present(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_vram_init_sizes(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_vram_location(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_gtt_location(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_update_bandwidth_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13, !14, !16, !17, !18, !19, !20, !21, !23, !24, !25, !26, !27, !29, !30, !32, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116}
!llvm.module.flags = !{!117, !118, !119, !120, !121, !122, !123, !124}
!llvm.ident = !{!125}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/rs400.c", i32 55, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/rs400.c", i32 57, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/radeon/rs400.c", i32 58, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/radeon/rs400.c", i32 85, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/radeon/rs400.c", i32 190, i32 2}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @rs400_gart_enable._entry, !10, !"_entry", i1 false, i1 false}
!13 = !{ptr @rs400_gart_enable._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/radeon/rs400.c", i32 471, i32 3}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @rs400_resume._entry, !15, !"_entry", i1 false, i1 false}
!20 = !{ptr @rs400_resume._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/radeon/rs400.c", i32 535, i32 3}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @rs400_init._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @rs400_init._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @rs400_init._entry.14, !28, !"_entry", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/radeon/rs400.c", i32 544, i32 3}
!29 = !{ptr @rs400_init._entry_ptr.15, !28, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/radeon/rs400.c", i32 575, i32 3}
!32 = !{ptr @rs400_init._entry.16, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @rs400_init._entry_ptr.18, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/radeon/rs400.c", i32 383, i32 22}
!36 = !{ptr @rs400_debugfs_gart_info_fops, !37, !"rs400_debugfs_gart_info_fops", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/radeon/rs400.c", i32 375, i32 1}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/radeon/rs400.c", i32 314, i32 16}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/radeon/rs400.c", i32 316, i32 16}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/radeon/rs400.c", i32 318, i32 16}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/radeon/rs400.c", i32 321, i32 17}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/radeon/rs400.c", i32 323, i32 17}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/radeon/rs400.c", i32 325, i32 17}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/radeon/rs400.c", i32 327, i32 17}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/radeon/rs400.c", i32 329, i32 17}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/radeon/rs400.c", i32 332, i32 17}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/radeon/rs400.c", i32 334, i32 17}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/radeon/rs400.c", i32 336, i32 17}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/radeon/rs400.c", i32 339, i32 16}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/radeon/rs400.c", i32 341, i32 16}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/radeon/rs400.c", i32 343, i32 16}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/radeon/rs400.c", i32 345, i32 16}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/radeon/rs400.c", i32 347, i32 16}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/radeon/rs400.c", i32 349, i32 16}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/radeon/rs400.c", i32 351, i32 16}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/radeon/rs400.c", i32 353, i32 16}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/radeon/rs400.c", i32 355, i32 16}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/radeon/rs400.c", i32 357, i32 16}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/radeon/rs400.c", i32 359, i32 16}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/radeon/rs400.c", i32 361, i32 16}
!84 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/radeon/rs400.c", i32 363, i32 16}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/radeon/rs400.c", i32 365, i32 16}
!88 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/radeon/rs400.c", i32 367, i32 16}
!90 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/radeon/rs400.c", i32 369, i32 16}
!92 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/radeon/rs400.c", i32 371, i32 16}
!94 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/radeon/rs400.c", i32 397, i32 3}
!96 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @rs400_mc_program._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @rs400_mc_program._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.50, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/radeon/rs400.c", i32 430, i32 3}
!101 = !{ptr @.str.51, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @rs400_startup._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @rs400_startup._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/radeon/rs400.c", i32 446, i32 3}
!106 = !{ptr @rs400_startup._entry.52, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @rs400_startup._entry_ptr.54, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.56, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/radeon/rs400.c", i32 452, i32 3}
!110 = !{ptr @rs400_startup._entry.55, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @rs400_startup._entry_ptr.57, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.58, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/radeon/rs400.c", i32 261, i32 3}
!114 = !{ptr @.str.59, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @rs400_gpu_init._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @rs400_gpu_init._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{i32 1, !"wchar_size", i32 2}
!118 = !{i32 1, !"min_enum_size", i32 4}
!119 = !{i32 8, !"branch-target-enforcement", i32 0}
!120 = !{i32 8, !"sign-return-address", i32 0}
!121 = !{i32 8, !"sign-return-address-all", i32 0}
!122 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!123 = !{i32 7, !"uwtable", i32 1}
!124 = !{i32 7, !"frame-pointer", i32 2}
!125 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!126 = !{i64 2157470028}
!127 = !{i64 6088899}
!128 = !{i64 6089317}
!129 = !{i64 2157469621}
!130 = !{i8 0, i8 2}
