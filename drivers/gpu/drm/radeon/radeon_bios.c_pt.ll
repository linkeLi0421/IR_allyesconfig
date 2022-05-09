; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/radeon_bios.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/radeon_bios.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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

@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to locate a BIOS ROM\0A\00", [35 x i8] zeroinitializer }, align 32
@radeon_get_bios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 691, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"BIOS signature incorrect %x %x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"radeon_get_bios\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/gpu/drm/radeon/radeon_bios.c\00", [59 x i8] zeroinitializer }, align 32
@radeon_get_bios._entry_ptr = internal global ptr @radeon_get_bios._entry, section ".printk_index", align 4
@radeon_get_bios._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 697, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016[drm] Not an x86 BIOS ROM, not using.\0A\00", [55 x i8] zeroinitializer }, align 32
@radeon_get_bios._entry_ptr.6 = internal global ptr @radeon_get_bios._entry.4, section ".printk_index", align 4
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ATOM\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MOTA\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%sBIOS detected\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"COM\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 686, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 691, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 697, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 706, i32 32 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 707, i32 32 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private constant [40 x i8] c"../drivers/gpu/drm/radeon/radeon_bios.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 713, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @radeon_get_bios._entry, ptr @radeon_get_bios._entry.4, ptr @radeon_get_bios._entry_ptr, ptr @radeon_get_bios._entry_ptr.6, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_get_bios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_get_bios._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @radeon_get_bios(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call5 = tail call fastcc zeroext i1 @igp_read_bios_from_vram(ptr noundef %rdev)
  br i1 %call5, label %entry.lor.lhs.false_crit_edge, label %if.end12

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

if.end12:                                         ; preds = %entry
  %call10 = tail call fastcc zeroext i1 @radeon_read_bios(ptr noundef %rdev)
  br i1 %call10, label %if.end12.lor.lhs.false_crit_edge, label %if.then14

if.end12.lor.lhs.false_crit_edge:                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

if.then14:                                        ; preds = %if.end12
  %flags.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then14
  %call.i = tail call fastcc zeroext i1 @igp_read_bios_from_vram(ptr noundef %rdev) #7
  br i1 %call.i, label %if.then.i.lor.lhs.false_crit_edge, label %if.then.i.if.then19_crit_edge

if.then.i.if.then19_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

if.then.i.lor.lhs.false_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

if.else.i:                                        ; preds = %if.then14
  %family.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %2 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %3)
  %cmp.i = icmp ugt i32 %3, 46
  br i1 %cmp.i, label %if.then1.i, label %if.else3.i

if.then1.i:                                       ; preds = %if.else.i
  %rmmio.i.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %4 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 21536
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %7 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i36.i.i = getelementptr i8, ptr %8, i32 816
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i36.i.i) #7, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %10 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i38.i.i = getelementptr i8, ptr %11, i32 824
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38.i.i) #7, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %13 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i40.i.i = getelementptr i8, ptr %14, i32 768
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i40.i.i) #7, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %16 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i42.i.i = getelementptr i8, ptr %17, i32 5632
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42.i.i) #7, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %19 = and i32 %6, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i44.i.i = getelementptr i8, ptr %21, i32 21536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44.i.i, i32 %19) #7, !srcloc !31
  %22 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %23)
  %cmp.i.i = icmp eq i32 %23, 56
  br i1 %cmp.i.i, label %if.then1.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then1.i.if.end.i.i_crit_edge:                  ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = and i32 %9, -16842753
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %25 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i46.i.i = getelementptr i8, ptr %26, i32 816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46.i.i, i32 %24) #7, !srcloc !31
  %27 = and i32 %12, -16842753
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %28 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i48.i.i = getelementptr i8, ptr %29, i32 824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48.i.i, i32 %27) #7, !srcloc !31
  %30 = and i32 %15, -769
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %31 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i50.i.i = getelementptr i8, ptr %32, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50.i.i, i32 %30) #7, !srcloc !31
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then1.i.if.end.i.i_crit_edge
  %33 = or i32 %18, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %34 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i52.i.i = getelementptr i8, ptr %35, i32 5632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52.i.i, i32 %33) #7, !srcloc !31
  %call8.i.i = tail call fastcc zeroext i1 @radeon_read_bios(ptr noundef %rdev) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %36 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i54.i.i = getelementptr i8, ptr %37, i32 21536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54.i.i, i32 %6) #7, !srcloc !31
  %38 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %39)
  %cmp10.i.i = icmp eq i32 %39, 56
  br i1 %cmp10.i.i, label %if.end.i.i.ni_read_disabled_bios.exit.i_crit_edge, label %if.then11.i.i

if.end.i.i.ni_read_disabled_bios.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ni_read_disabled_bios.exit.i

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %40 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i56.i.i = getelementptr i8, ptr %41, i32 816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56.i.i, i32 %9) #7, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %42 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i58.i.i = getelementptr i8, ptr %43, i32 824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58.i.i, i32 %12) #7, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %44 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i60.i.i = getelementptr i8, ptr %45, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60.i.i, i32 %15) #7, !srcloc !31
  br label %ni_read_disabled_bios.exit.i

ni_read_disabled_bios.exit.i:                     ; preds = %if.then11.i.i, %if.end.i.i.ni_read_disabled_bios.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %46 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i62.i.i = getelementptr i8, ptr %47, i32 5632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62.i.i, i32 %18) #7, !srcloc !31
  br i1 %call8.i.i, label %ni_read_disabled_bios.exit.i.lor.lhs.false_crit_edge, label %ni_read_disabled_bios.exit.i.if.then19_crit_edge

ni_read_disabled_bios.exit.i.if.then19_crit_edge: ; preds = %ni_read_disabled_bios.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

ni_read_disabled_bios.exit.i.lor.lhs.false_crit_edge: ; preds = %ni_read_disabled_bios.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

if.else3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %3)
  %cmp5.i = icmp ugt i32 %3, 34
  br i1 %cmp5.i, label %if.then6.i, label %if.else8.i

if.then6.i:                                       ; preds = %if.else3.i
  %rmmio.i.i30.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %48 = ptrtoint ptr %rmmio.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rmmio.i.i30.i, align 4
  %add.ptr.i.i31.i = getelementptr i8, ptr %49, i32 3136
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i31.i) #7, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %51 = ptrtoint ptr %rmmio.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rmmio.i.i30.i, align 4
  %add.ptr.i64.i.i = getelementptr i8, ptr %52, i32 21536
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i64.i.i) #7, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %54 = ptrtoint ptr %rmmio.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rmmio.i.i30.i, align 4
  %add.ptr.i66.i.i = getelementptr i8, ptr %55, i32 816
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i66.i.i) #7, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %57 = ptrtoint ptr %rmmio.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rmmio.i.i30.i, align 4
  %add.ptr.i68.i.i = getelementptr i8, ptr %58, i32 824
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i68.i.i) #7, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %60 = ptrtoint ptr %rmmio.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rmmio.i.i30.i, align 4
  %add.ptr.i70.i.i = getelementptr i8, ptr %61, i32 768
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i70.i.i) #7, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %63 = ptrtoint ptr %rmmio.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rmmio.i.i30.i, align 4
  %add.ptr.i72.i.i = getelementptr i8, ptr %64, i32 5632
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i72.i.i) #7, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #7
  %67 = and i32 %50, -8193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %68 = ptrtoint ptr %rmmio.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rmmio.i.i30.i, align 4
  %add.ptr.i74.i.i = getelementptr i8, ptr %69, i32 3136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74.i.i, i32 %67) #7, !srcloc !31
  %70 = and i32 %53, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %71 = ptrtoint ptr %rmmio.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rmmio.i.i30.i, align 4
  %add.ptr.i76.i.i = getelementptr i8, ptr %72, i32 21536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76.i.i, i32 %70) #7, !srcloc !31
  %73 = and i32 %56, -16842753
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %74 = ptrtoint ptr %rmmio.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rmmio.i.i30.i, align 4
  %add.ptr.i78.i.i = getelementptr i8, ptr %75, i32 816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i78.i.i, i32 %73) #7, !srcloc !31
  %76 = and i32 %59, -16842753
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %77 = ptrtoint ptr %rmmio.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rmmio.i.i30.i, align 4
  %add.ptr.i80.i.i = getelementptr i8, ptr %78, i32 824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80.i.i, i32 %76) #7, !srcloc !31
  %79 = and i32 %62, -769
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %80 = ptrtoint ptr %rmmio.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %rmmio.i.i30.i, align 4
  %add.ptr.i82.i.i = getelementptr i8, ptr %81, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i82.i.i, i32 %79) #7, !srcloc !31
  %82 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %83)
  %cmp.i33.i = icmp eq i32 %83, 36
  br i1 %cmp.i33.i, label %if.then.i34.i, label %if.else.i.i

if.then.i34.i:                                    ; preds = %if.then6.i
  %84 = ptrtoint ptr %rmmio.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rmmio.i.i30.i, align 4
  %add.ptr.i84.i.i = getelementptr i8, ptr %85, i32 1536
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i84.i.i) #7, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #7
  %or.i.i = or i32 %87, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %88 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  %89 = ptrtoint ptr %rmmio.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %rmmio.i.i30.i, align 4
  %add.ptr.i86.i.i = getelementptr i8, ptr %90, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86.i.i, i32 %88) #7, !srcloc !31
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.then.i34.i
  %91 = ptrtoint ptr %rmmio.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %rmmio.i.i30.i, align 4
  %add.ptr.i88.i.i = getelementptr i8, ptr %92, i32 1548
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i88.i.i) #7, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %94 = and i32 %93, 33554432
  %tobool.not.i.i = icmp eq i32 %94, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.end.i.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %and13.i.i = and i32 %66, -3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %95 = tail call i32 @llvm.bswap.i32(i32 %and13.i.i) #7
  %96 = ptrtoint ptr %rmmio.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rmmio.i.i30.i, align 4
  %add.ptr.i90.i.i = getelementptr i8, ptr %97, i32 5632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90.i.i, i32 %95) #7, !srcloc !31
  br label %if.end.i35.i

if.else.i.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  %or14.i.i = or i32 %66, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %98 = tail call i32 @llvm.bswap.i32(i32 %or14.i.i) #7
  %99 = ptrtoint ptr %rmmio.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %rmmio.i.i30.i, align 4
  %add.ptr.i92.i.i = getelementptr i8, ptr %100, i32 5632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92.i.i, i32 %98) #7, !srcloc !31
  br label %if.end.i35.i

if.end.i35.i:                                     ; preds = %if.else.i.i, %while.end.i.i
  %cg_spll_func_cntl.0.i.i = phi i32 [ %87, %while.end.i.i ], [ 0, %if.else.i.i ]
  %call15.i.i = tail call fastcc zeroext i1 @radeon_read_bios(ptr noundef %rdev) #7
  %101 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %102)
  %cmp17.i.i = icmp eq i32 %102, 36
  br i1 %cmp17.i.i, label %if.then18.i.i, label %if.end.i35.i.r700_read_disabled_bios.exit.i_crit_edge

if.end.i35.i.r700_read_disabled_bios.exit.i_crit_edge: ; preds = %if.end.i35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %r700_read_disabled_bios.exit.i

if.then18.i.i:                                    ; preds = %if.end.i35.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %103 = tail call i32 @llvm.bswap.i32(i32 %cg_spll_func_cntl.0.i.i) #7
  %104 = ptrtoint ptr %rmmio.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %rmmio.i.i30.i, align 4
  %add.ptr.i94.i.i = getelementptr i8, ptr %105, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i94.i.i, i32 %103) #7, !srcloc !31
  br label %while.body23.i.i

while.body23.i.i:                                 ; preds = %while.body23.i.i.while.body23.i.i_crit_edge, %if.then18.i.i
  %106 = ptrtoint ptr %rmmio.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %rmmio.i.i30.i, align 4
  %add.ptr.i96.i.i = getelementptr i8, ptr %107, i32 1548
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i96.i.i) #7, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %109 = and i32 %108, 33554432
  %tobool21.not.i.i = icmp eq i32 %109, 0
  br i1 %tobool21.not.i.i, label %while.body23.i.i.while.body23.i.i_crit_edge, label %while.body23.i.i.r700_read_disabled_bios.exit.i_crit_edge

while.body23.i.i.r700_read_disabled_bios.exit.i_crit_edge: ; preds = %while.body23.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %r700_read_disabled_bios.exit.i

while.body23.i.i.while.body23.i.i_crit_edge:      ; preds = %while.body23.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body23.i.i

r700_read_disabled_bios.exit.i:                   ; preds = %while.body23.i.i.r700_read_disabled_bios.exit.i_crit_edge, %if.end.i35.i.r700_read_disabled_bios.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %110 = ptrtoint ptr %rmmio.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %rmmio.i.i30.i, align 4
  %add.ptr.i98.i.i = getelementptr i8, ptr %111, i32 3136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i98.i.i, i32 %50) #7, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %112 = ptrtoint ptr %rmmio.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %rmmio.i.i30.i, align 4
  %add.ptr.i100.i.i = getelementptr i8, ptr %113, i32 21536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i100.i.i, i32 %53) #7, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %114 = ptrtoint ptr %rmmio.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %rmmio.i.i30.i, align 4
  %add.ptr.i102.i.i = getelementptr i8, ptr %115, i32 816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i102.i.i, i32 %56) #7, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %116 = ptrtoint ptr %rmmio.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %rmmio.i.i30.i, align 4
  %add.ptr.i104.i.i = getelementptr i8, ptr %117, i32 824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i104.i.i, i32 %59) #7, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %118 = ptrtoint ptr %rmmio.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %rmmio.i.i30.i, align 4
  %add.ptr.i106.i.i = getelementptr i8, ptr %119, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i106.i.i, i32 %62) #7, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %120 = ptrtoint ptr %rmmio.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %rmmio.i.i30.i, align 4
  %add.ptr.i108.i.i = getelementptr i8, ptr %121, i32 5632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i108.i.i, i32 %65) #7, !srcloc !31
  br i1 %call15.i.i, label %r700_read_disabled_bios.exit.i.lor.lhs.false_crit_edge, label %r700_read_disabled_bios.exit.i.if.then19_crit_edge

r700_read_disabled_bios.exit.i.if.then19_crit_edge: ; preds = %r700_read_disabled_bios.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

r700_read_disabled_bios.exit.i.lor.lhs.false_crit_edge: ; preds = %r700_read_disabled_bios.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

if.else8.i:                                       ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %3)
  %cmp10.i = icmp ugt i32 %3, 26
  br i1 %cmp10.i, label %if.then11.i, label %if.else13.i

if.then11.i:                                      ; preds = %if.else8.i
  %rmmio.i.i36.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %122 = ptrtoint ptr %rmmio.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %rmmio.i.i36.i, align 4
  %add.ptr.i.i37.i = getelementptr i8, ptr %123, i32 3136
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i37.i) #7, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %125 = ptrtoint ptr %rmmio.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %rmmio.i.i36.i, align 4
  %add.ptr.i74.i38.i = getelementptr i8, ptr %126, i32 21536
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i74.i38.i) #7, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %128 = ptrtoint ptr %rmmio.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %rmmio.i.i36.i, align 4
  %add.ptr.i76.i39.i = getelementptr i8, ptr %129, i32 816
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i76.i39.i) #7, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %131 = ptrtoint ptr %rmmio.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %rmmio.i.i36.i, align 4
  %add.ptr.i78.i40.i = getelementptr i8, ptr %132, i32 824
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i78.i40.i) #7, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %134 = ptrtoint ptr %rmmio.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %rmmio.i.i36.i, align 4
  %add.ptr.i80.i41.i = getelementptr i8, ptr %135, i32 768
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i80.i41.i) #7, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %137 = ptrtoint ptr %rmmio.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %rmmio.i.i36.i, align 4
  %add.ptr.i82.i42.i = getelementptr i8, ptr %138, i32 5632
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i82.i42.i) #7, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %140 = ptrtoint ptr %rmmio.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %rmmio.i.i36.i, align 4
  %add.ptr.i84.i43.i = getelementptr i8, ptr %141, i32 1560
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i84.i43.i) #7, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %143 = ptrtoint ptr %rmmio.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %rmmio.i.i36.i, align 4
  %add.ptr.i86.i44.i = getelementptr i8, ptr %144, i32 1828
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i86.i44.i) #7, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %146 = ptrtoint ptr %rmmio.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %rmmio.i.i36.i, align 4
  %add.ptr.i88.i45.i = getelementptr i8, ptr %147, i32 1824
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i88.i45.i) #7, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %149 = ptrtoint ptr %rmmio.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %rmmio.i.i36.i, align 4
  %add.ptr.i90.i46.i = getelementptr i8, ptr %150, i32 1820
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i90.i46.i) #7, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %152 = ptrtoint ptr %rmmio.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %rmmio.i.i36.i, align 4
  %add.ptr.i92.i47.i = getelementptr i8, ptr %153, i32 1816
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i92.i47.i) #7, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %155 = ptrtoint ptr %rmmio.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %rmmio.i.i36.i, align 4
  %add.ptr.i94.i48.i = getelementptr i8, ptr %156, i32 1808
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i94.i48.i) #7, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %158 = and i32 %124, -8193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %159 = ptrtoint ptr %rmmio.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %rmmio.i.i36.i, align 4
  %add.ptr.i96.i49.i = getelementptr i8, ptr %160, i32 3136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i96.i49.i, i32 %158) #7, !srcloc !31
  %161 = and i32 %127, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %162 = ptrtoint ptr %rmmio.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %rmmio.i.i36.i, align 4
  %add.ptr.i98.i50.i = getelementptr i8, ptr %163, i32 21536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i98.i50.i, i32 %161) #7, !srcloc !31
  %164 = and i32 %130, -16842753
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %165 = ptrtoint ptr %rmmio.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %rmmio.i.i36.i, align 4
  %add.ptr.i100.i51.i = getelementptr i8, ptr %166, i32 816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i100.i51.i, i32 %164) #7, !srcloc !31
  %167 = and i32 %133, -16842753
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %168 = ptrtoint ptr %rmmio.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %rmmio.i.i36.i, align 4
  %add.ptr.i102.i52.i = getelementptr i8, ptr %169, i32 824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i102.i52.i, i32 %167) #7, !srcloc !31
  %170 = and i32 %136, -769
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %171 = ptrtoint ptr %rmmio.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %rmmio.i.i36.i, align 4
  %add.ptr.i104.i53.i = getelementptr i8, ptr %172, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i104.i53.i, i32 %170) #7, !srcloc !31
  %173 = and i32 %139, -33554673
  %174 = or i32 %173, 33554448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %175 = ptrtoint ptr %rmmio.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %rmmio.i.i36.i, align 4
  %add.ptr.i106.i54.i = getelementptr i8, ptr %176, i32 5632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i106.i54.i, i32 %174) #7, !srcloc !31
  %177 = and i32 %142, -524289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %178 = ptrtoint ptr %rmmio.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %rmmio.i.i36.i, align 4
  %add.ptr.i108.i55.i = getelementptr i8, ptr %179, i32 1560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i108.i55.i, i32 %177) #7, !srcloc !31
  %180 = and i32 %145, -262145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %181 = ptrtoint ptr %rmmio.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %rmmio.i.i36.i, align 4
  %add.ptr.i110.i.i = getelementptr i8, ptr %182, i32 1828
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i110.i.i, i32 %180) #7, !srcloc !31
  %183 = and i32 %148, -262145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %184 = ptrtoint ptr %rmmio.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %rmmio.i.i36.i, align 4
  %add.ptr.i112.i.i = getelementptr i8, ptr %185, i32 1824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i112.i.i, i32 %183) #7, !srcloc !31
  %186 = and i32 %151, -262145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %187 = ptrtoint ptr %rmmio.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %rmmio.i.i36.i, align 4
  %add.ptr.i114.i.i = getelementptr i8, ptr %188, i32 1820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i114.i.i, i32 %186) #7, !srcloc !31
  %189 = and i32 %154, -262145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %190 = ptrtoint ptr %rmmio.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %rmmio.i.i36.i, align 4
  %add.ptr.i116.i.i = getelementptr i8, ptr %191, i32 1816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i116.i.i, i32 %189) #7, !srcloc !31
  %192 = or i32 %157, 262144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %193 = ptrtoint ptr %rmmio.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %rmmio.i.i36.i, align 4
  %add.ptr.i118.i.i = getelementptr i8, ptr %194, i32 1808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i118.i.i, i32 %192) #7, !srcloc !31
  %call24.i.i = tail call fastcc zeroext i1 @radeon_read_bios(ptr noundef %rdev) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %195 = ptrtoint ptr %rmmio.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %rmmio.i.i36.i, align 4
  %add.ptr.i120.i.i = getelementptr i8, ptr %196, i32 3136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i120.i.i, i32 %124) #7, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %197 = ptrtoint ptr %rmmio.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %rmmio.i.i36.i, align 4
  %add.ptr.i122.i.i = getelementptr i8, ptr %198, i32 21536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i122.i.i, i32 %127) #7, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %199 = ptrtoint ptr %rmmio.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %rmmio.i.i36.i, align 4
  %add.ptr.i124.i.i = getelementptr i8, ptr %200, i32 816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i124.i.i, i32 %130) #7, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %201 = ptrtoint ptr %rmmio.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %rmmio.i.i36.i, align 4
  %add.ptr.i126.i.i = getelementptr i8, ptr %202, i32 824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i126.i.i, i32 %133) #7, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %203 = ptrtoint ptr %rmmio.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %rmmio.i.i36.i, align 4
  %add.ptr.i128.i.i = getelementptr i8, ptr %204, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128.i.i, i32 %136) #7, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %205 = ptrtoint ptr %rmmio.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %rmmio.i.i36.i, align 4
  %add.ptr.i130.i.i = getelementptr i8, ptr %206, i32 5632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130.i.i, i32 %139) #7, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %207 = ptrtoint ptr %rmmio.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %rmmio.i.i36.i, align 4
  %add.ptr.i132.i.i = getelementptr i8, ptr %208, i32 1560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i132.i.i, i32 %142) #7, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %209 = ptrtoint ptr %rmmio.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %rmmio.i.i36.i, align 4
  %add.ptr.i134.i.i = getelementptr i8, ptr %210, i32 1828
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i134.i.i, i32 %145) #7, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %211 = ptrtoint ptr %rmmio.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %rmmio.i.i36.i, align 4
  %add.ptr.i136.i.i = getelementptr i8, ptr %212, i32 1824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i136.i.i, i32 %148) #7, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %213 = ptrtoint ptr %rmmio.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %rmmio.i.i36.i, align 4
  %add.ptr.i138.i.i = getelementptr i8, ptr %214, i32 1820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i138.i.i, i32 %151) #7, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %215 = ptrtoint ptr %rmmio.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %rmmio.i.i36.i, align 4
  %add.ptr.i140.i.i = getelementptr i8, ptr %216, i32 1816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i140.i.i, i32 %154) #7, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %217 = ptrtoint ptr %rmmio.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %rmmio.i.i36.i, align 4
  %add.ptr.i142.i.i = getelementptr i8, ptr %218, i32 1808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i142.i.i, i32 %157) #7, !srcloc !31
  br i1 %call24.i.i, label %if.then11.i.lor.lhs.false_crit_edge, label %if.then11.i.if.then19_crit_edge

if.then11.i.if.then19_crit_edge:                  ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

if.then11.i.lor.lhs.false_crit_edge:              ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

if.else13.i:                                      ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %3)
  %cmp15.i = icmp ugt i32 %3, 17
  %rmmio.i.i56.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %219 = ptrtoint ptr %rmmio.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %rmmio.i.i56.i, align 4
  %add.ptr.i.i57.i = getelementptr i8, ptr %220, i32 448
  %221 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i57.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  %222 = ptrtoint ptr %rmmio.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %rmmio.i.i56.i, align 4
  %add.ptr.i49.i.i = getelementptr i8, ptr %223, i32 3136
  %224 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49.i.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  br i1 %cmp15.i, label %if.then16.i, label %if.else18.i

if.then16.i:                                      ; preds = %if.else13.i
  %225 = ptrtoint ptr %rmmio.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %rmmio.i.i56.i, align 4
  %add.ptr.i51.i.i = getelementptr i8, ptr %226, i32 76
  %227 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51.i.i) #7, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %228 = ptrtoint ptr %rmmio.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %rmmio.i.i56.i, align 4
  %add.ptr.i53.i.i = getelementptr i8, ptr %229, i32 816
  %230 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53.i.i) #7, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %231 = ptrtoint ptr %rmmio.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %rmmio.i.i56.i, align 4
  %add.ptr.i55.i.i = getelementptr i8, ptr %232, i32 824
  %233 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55.i.i) #7, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %234 = ptrtoint ptr %rmmio.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %rmmio.i.i56.i, align 4
  %add.ptr.i57.i.i = getelementptr i8, ptr %235, i32 768
  %236 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i57.i.i) #7, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %237 = ptrtoint ptr %rmmio.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %rmmio.i.i56.i, align 4
  %add.ptr.i59.i.i = getelementptr i8, ptr %238, i32 412
  %239 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59.i.i) #7, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %240 = ptrtoint ptr %rmmio.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %rmmio.i.i56.i, align 4
  %add.ptr.i61.i.i = getelementptr i8, ptr %241, i32 416
  %242 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i61.i.i) #7, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %243 = ptrtoint ptr %rmmio.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %rmmio.i.i56.i, align 4
  %add.ptr.i63.i.i = getelementptr i8, ptr %244, i32 408
  %245 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63.i.i) #7, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %246 = and i32 %221, -256
  %247 = or i32 %246, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %248 = ptrtoint ptr %rmmio.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %rmmio.i.i56.i, align 4
  %add.ptr.i65.i.i = getelementptr i8, ptr %249, i32 448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65.i.i, i32 %247) #7, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %250 = ptrtoint ptr %rmmio.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %rmmio.i.i56.i, align 4
  %add.ptr.i67.i.i = getelementptr i8, ptr %251, i32 412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67.i.i, i32 0) #7, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %252 = ptrtoint ptr %rmmio.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %rmmio.i.i56.i, align 4
  %add.ptr.i69.i.i = getelementptr i8, ptr %253, i32 416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69.i.i, i32 0) #7, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %254 = ptrtoint ptr %rmmio.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %rmmio.i.i56.i, align 4
  %add.ptr.i71.i.i = getelementptr i8, ptr %255, i32 408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71.i.i, i32 0) #7, !srcloc !31
  %256 = and i32 %224, -8193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %257 = ptrtoint ptr %rmmio.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %rmmio.i.i56.i, align 4
  %add.ptr.i73.i.i = getelementptr i8, ptr %258, i32 3136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73.i.i, i32 %256) #7, !srcloc !31
  %259 = and i32 %227, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %260 = ptrtoint ptr %rmmio.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %rmmio.i.i56.i, align 4
  %add.ptr.i75.i.i = getelementptr i8, ptr %261, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75.i.i, i32 %259) #7, !srcloc !31
  %262 = and i32 %230, -16842753
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %263 = ptrtoint ptr %rmmio.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %rmmio.i.i56.i, align 4
  %add.ptr.i77.i.i = getelementptr i8, ptr %264, i32 816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77.i.i, i32 %262) #7, !srcloc !31
  %265 = and i32 %233, -16842753
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %266 = ptrtoint ptr %rmmio.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %rmmio.i.i56.i, align 4
  %add.ptr.i79.i.i = getelementptr i8, ptr %267, i32 824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79.i.i, i32 %265) #7, !srcloc !31
  %268 = and i32 %236, -769
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %269 = ptrtoint ptr %rmmio.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %rmmio.i.i56.i, align 4
  %add.ptr.i81.i.i = getelementptr i8, ptr %270, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i81.i.i, i32 %268) #7, !srcloc !31
  %call14.i.i = tail call fastcc zeroext i1 @radeon_read_bios(ptr noundef %rdev) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %271 = ptrtoint ptr %rmmio.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %rmmio.i.i56.i, align 4
  %add.ptr.i83.i.i = getelementptr i8, ptr %272, i32 448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83.i.i, i32 %221) #7, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %273 = ptrtoint ptr %rmmio.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %rmmio.i.i56.i, align 4
  %add.ptr.i85.i.i = getelementptr i8, ptr %274, i32 3136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i85.i.i, i32 %224) #7, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %275 = ptrtoint ptr %rmmio.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %rmmio.i.i56.i, align 4
  %add.ptr.i87.i.i = getelementptr i8, ptr %276, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87.i.i, i32 %227) #7, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %277 = ptrtoint ptr %rmmio.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %rmmio.i.i56.i, align 4
  %add.ptr.i89.i.i = getelementptr i8, ptr %278, i32 816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89.i.i, i32 %230) #7, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %279 = ptrtoint ptr %rmmio.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %rmmio.i.i56.i, align 4
  %add.ptr.i91.i.i = getelementptr i8, ptr %280, i32 824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91.i.i, i32 %233) #7, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %281 = ptrtoint ptr %rmmio.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %rmmio.i.i56.i, align 4
  %add.ptr.i93.i.i = getelementptr i8, ptr %282, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93.i.i, i32 %236) #7, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %283 = ptrtoint ptr %rmmio.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %rmmio.i.i56.i, align 4
  %add.ptr.i95.i.i = getelementptr i8, ptr %284, i32 412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i95.i.i, i32 %239) #7, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %285 = ptrtoint ptr %rmmio.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %rmmio.i.i56.i, align 4
  %add.ptr.i97.i.i = getelementptr i8, ptr %286, i32 416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i97.i.i, i32 %242) #7, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %287 = ptrtoint ptr %rmmio.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %rmmio.i.i56.i, align 4
  %add.ptr.i99.i.i = getelementptr i8, ptr %288, i32 408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99.i.i, i32 %245) #7, !srcloc !31
  br i1 %call14.i.i, label %if.then16.i.lor.lhs.false_crit_edge, label %if.then16.i.if.then19_crit_edge

if.then16.i.if.then19_crit_edge:                  ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

if.then16.i.lor.lhs.false_crit_edge:              ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

if.else18.i:                                      ; preds = %if.else13.i
  %289 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %flags.i, align 8
  %and.i.i = and i32 %290, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i61.i = icmp eq i32 %and.i.i, 0
  %291 = ptrtoint ptr %rmmio.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %rmmio.i.i56.i, align 4
  br i1 %tobool.not.i61.i, label %if.else.i65.i, label %if.then.i63.i

if.then.i63.i:                                    ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i110.i62.i = getelementptr i8, ptr %292, i32 76
  %293 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i110.i62.i) #7, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  br label %if.end.i69.i

if.else.i65.i:                                    ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i112.i64.i = getelementptr i8, ptr %292, i32 48
  %294 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i112.i64.i) #7, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  br label %if.end.i69.i

if.end.i69.i:                                     ; preds = %if.else.i65.i, %if.then.i63.i
  %.sink.i.i = phi i32 [ %294, %if.else.i65.i ], [ %293, %if.then.i63.i ]
  %295 = tail call i32 @llvm.bswap.i32(i32 %.sink.i.i) #7
  %296 = ptrtoint ptr %rmmio.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %rmmio.i.i56.i, align 4
  %add.ptr.i114.i66.i = getelementptr i8, ptr %297, i32 80
  %298 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i114.i66.i) #7, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %299 = ptrtoint ptr %rmmio.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %rmmio.i.i56.i, align 4
  %add.ptr.i116.i67.i = getelementptr i8, ptr %300, i32 84
  %301 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i116.i67.i) #7, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %pdev.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 2
  %302 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %pdev.i.i, align 8
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %303, i32 0, i32 8
  %304 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %304)
  %305 = load i16, ptr %device.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 20825, i16 %305)
  %cmp.i68.i = icmp eq i16 %305, 20825
  br i1 %cmp.i68.i, label %if.then7.i.i, label %if.end.i69.i.if.end9.i.i_crit_edge

if.end.i69.i.if.end9.i.i_crit_edge:               ; preds = %if.end.i69.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i.i

if.then7.i.i:                                     ; preds = %if.end.i69.i
  call void @__sanitizer_cov_trace_pc() #9
  %306 = ptrtoint ptr %rmmio.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %rmmio.i.i56.i, align 4
  %add.ptr.i118.i70.i = getelementptr i8, ptr %307, i32 648
  %308 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i118.i70.i) #7, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %309 = tail call i32 @llvm.bswap.i32(i32 %308) #7
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.then7.i.i, %if.end.i69.i.if.end9.i.i_crit_edge
  %fp2_gen_cntl.0.i.i = phi i32 [ %309, %if.then7.i.i ], [ 0, %if.end.i69.i.if.end9.i.i_crit_edge ]
  %310 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %flags.i, align 8
  %and11.i.i = and i32 %311, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i)
  %tobool12.not.i.i = icmp eq i32 %and11.i.i, 0
  br i1 %tobool12.not.i.i, label %if.then13.i.i, label %if.end9.i.i.if.end15.i.i_crit_edge

if.end9.i.i.if.end15.i.i_crit_edge:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i.i

if.then13.i.i:                                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %312 = ptrtoint ptr %rmmio.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %rmmio.i.i56.i, align 4
  %add.ptr.i120.i71.i = getelementptr i8, ptr %313, i32 1016
  %314 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i120.i71.i) #7, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  %315 = tail call i32 @llvm.bswap.i32(i32 %314) #7
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.then13.i.i, %if.end9.i.i.if.end15.i.i_crit_edge
  %crtc2_gen_cntl.0.i.i = phi i32 [ 0, %if.end9.i.i.if.end15.i.i_crit_edge ], [ %315, %if.then13.i.i ]
  %316 = and i32 %221, -256
  %317 = or i32 %316, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %318 = ptrtoint ptr %rmmio.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %rmmio.i.i56.i, align 4
  %add.ptr.i122.i72.i = getelementptr i8, ptr %319, i32 448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i122.i72.i, i32 %317) #7, !srcloc !31
  %320 = and i32 %224, -8193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %321 = ptrtoint ptr %rmmio.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %rmmio.i.i56.i, align 4
  %add.ptr.i124.i73.i = getelementptr i8, ptr %322, i32 3136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i124.i73.i, i32 %320) #7, !srcloc !31
  %323 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %flags.i, align 8
  %and19.i.i = and i32 %324, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i.i)
  %tobool20.not.i.i = icmp eq i32 %and19.i.i, 0
  br i1 %tobool20.not.i.i, label %if.else23.i.i, label %if.then21.i.i

if.then21.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %and22.i.i = and i32 %295, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %325 = tail call i32 @llvm.bswap.i32(i32 %and22.i.i) #7
  %326 = ptrtoint ptr %rmmio.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %rmmio.i.i56.i, align 4
  %add.ptr.i126.i74.i = getelementptr i8, ptr %327, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i126.i74.i, i32 %325) #7, !srcloc !31
  br label %if.end25.i.i

if.else23.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %and24.i.i = and i32 %295, -4097
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %328 = tail call i32 @llvm.bswap.i32(i32 %and24.i.i) #7
  %329 = ptrtoint ptr %rmmio.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %rmmio.i.i56.i, align 4
  %add.ptr.i128.i75.i = getelementptr i8, ptr %330, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128.i75.i, i32 %328) #7, !srcloc !31
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %if.else23.i.i, %if.then21.i.i
  %331 = and i32 %298, -8
  %332 = or i32 %331, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %333 = ptrtoint ptr %rmmio.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %rmmio.i.i56.i, align 4
  %add.ptr.i130.i76.i = getelementptr i8, ptr %334, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130.i76.i, i32 %332) #7, !srcloc !31
  %335 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %flags.i, align 8
  %and29.i.i = and i32 %336, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.i)
  %tobool30.not.i.i = icmp eq i32 %and29.i.i, 0
  br i1 %tobool30.not.i.i, label %if.then31.i.i, label %if.end25.i.i.if.end34.i.i_crit_edge

if.end25.i.i.if.end34.i.i_crit_edge:              ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i.i

if.then31.i.i:                                    ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %and32.i.i = and i32 %crtc2_gen_cntl.0.i.i, -100663297
  %or33.i.i = or i32 %and32.i.i, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %337 = tail call i32 @llvm.bswap.i32(i32 %or33.i.i) #7
  %338 = ptrtoint ptr %rmmio.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %rmmio.i.i56.i, align 4
  %add.ptr.i132.i77.i = getelementptr i8, ptr %339, i32 1016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i132.i77.i, i32 %337) #7, !srcloc !31
  br label %if.end34.i.i

if.end34.i.i:                                     ; preds = %if.then31.i.i, %if.end25.i.i.if.end34.i.i_crit_edge
  %340 = and i32 %301, -9175041
  %341 = or i32 %340, 786432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %342 = ptrtoint ptr %rmmio.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %rmmio.i.i56.i, align 4
  %add.ptr.i134.i78.i = getelementptr i8, ptr %343, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i134.i78.i, i32 %341) #7, !srcloc !31
  %344 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %pdev.i.i, align 8
  %device38.i.i = getelementptr inbounds %struct.pci_dev, ptr %345, i32 0, i32 8
  %346 = ptrtoint ptr %device38.i.i to i32
  call void @__asan_load2_noabort(i32 %346)
  %347 = load i16, ptr %device38.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 20825, i16 %347)
  %cmp40.i.i = icmp eq i16 %347, 20825
  br i1 %cmp40.i.i, label %if.then42.i.i, label %if.end34.i.i.if.end44.i.i_crit_edge

if.end34.i.i.if.end44.i.i_crit_edge:              ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.i.i

if.then42.i.i:                                    ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %and43.i.i = and i32 %fp2_gen_cntl.0.i.i, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %348 = tail call i32 @llvm.bswap.i32(i32 %and43.i.i) #7
  %349 = ptrtoint ptr %rmmio.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %rmmio.i.i56.i, align 4
  %add.ptr.i136.i79.i = getelementptr i8, ptr %350, i32 648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i136.i79.i, i32 %348) #7, !srcloc !31
  br label %if.end44.i.i

if.end44.i.i:                                     ; preds = %if.then42.i.i, %if.end34.i.i.if.end44.i.i_crit_edge
  %call45.i.i = tail call fastcc zeroext i1 @radeon_read_bios(ptr noundef %rdev) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %351 = ptrtoint ptr %rmmio.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %rmmio.i.i56.i, align 4
  %add.ptr.i138.i80.i = getelementptr i8, ptr %352, i32 448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i138.i80.i, i32 %221) #7, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %353 = ptrtoint ptr %rmmio.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %rmmio.i.i56.i, align 4
  %add.ptr.i140.i81.i = getelementptr i8, ptr %354, i32 3136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i140.i81.i, i32 %224) #7, !srcloc !31
  %355 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %flags.i, align 8
  %and47.i.i = and i32 %356, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i.i)
  %tobool48.not.i.i = icmp eq i32 %and47.i.i, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %357 = ptrtoint ptr %rmmio.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %rmmio.i.i56.i, align 4
  br i1 %tobool48.not.i.i, label %if.else50.i.i, label %if.then49.i.i

if.then49.i.i:                                    ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i142.i82.i = getelementptr i8, ptr %358, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i142.i82.i, i32 %.sink.i.i) #7, !srcloc !31
  br label %if.end51.i.i

if.else50.i.i:                                    ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i144.i.i = getelementptr i8, ptr %358, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i144.i.i, i32 %.sink.i.i) #7, !srcloc !31
  br label %if.end51.i.i

if.end51.i.i:                                     ; preds = %if.else50.i.i, %if.then49.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %359 = ptrtoint ptr %rmmio.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %rmmio.i.i56.i, align 4
  %add.ptr.i146.i.i = getelementptr i8, ptr %360, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i146.i.i, i32 %298) #7, !srcloc !31
  %361 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %flags.i, align 8
  %and53.i.i = and i32 %362, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i.i)
  %tobool54.not.i.i = icmp eq i32 %and53.i.i, 0
  br i1 %tobool54.not.i.i, label %if.then55.i.i, label %if.end51.i.i.if.end56.i.i_crit_edge

if.end51.i.i.if.end56.i.i_crit_edge:              ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.i.i

if.then55.i.i:                                    ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %363 = tail call i32 @llvm.bswap.i32(i32 %crtc2_gen_cntl.0.i.i) #7
  %364 = ptrtoint ptr %rmmio.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %rmmio.i.i56.i, align 4
  %add.ptr.i148.i.i = getelementptr i8, ptr %365, i32 1016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i148.i.i, i32 %363) #7, !srcloc !31
  br label %if.end56.i.i

if.end56.i.i:                                     ; preds = %if.then55.i.i, %if.end51.i.i.if.end56.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %366 = ptrtoint ptr %rmmio.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %rmmio.i.i56.i, align 4
  %add.ptr.i150.i.i = getelementptr i8, ptr %367, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i150.i.i, i32 %301) #7, !srcloc !31
  %368 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %pdev.i.i, align 8
  %device58.i.i = getelementptr inbounds %struct.pci_dev, ptr %369, i32 0, i32 8
  %370 = ptrtoint ptr %device58.i.i to i32
  call void @__asan_load2_noabort(i32 %370)
  %371 = load i16, ptr %device58.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 20825, i16 %371)
  %cmp60.i.i = icmp eq i16 %371, 20825
  br i1 %cmp60.i.i, label %if.then62.i.i, label %if.end17

if.then62.i.i:                                    ; preds = %if.end56.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %372 = tail call i32 @llvm.bswap.i32(i32 %fp2_gen_cntl.0.i.i) #7
  %373 = ptrtoint ptr %rmmio.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %rmmio.i.i56.i, align 4
  %add.ptr.i152.i.i = getelementptr i8, ptr %374, i32 648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i152.i.i, i32 %372) #7, !srcloc !31
  br i1 %call45.i.i, label %if.then62.i.i.lor.lhs.false_crit_edge, label %if.then62.i.i.if.then19_crit_edge

if.then62.i.i.if.then19_crit_edge:                ; preds = %if.then62.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

if.then62.i.i.lor.lhs.false_crit_edge:            ; preds = %if.then62.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

if.end17:                                         ; preds = %if.end56.i.i
  br i1 %call45.i.i, label %if.end17.lor.lhs.false_crit_edge, label %if.end17.if.then19_crit_edge

if.end17.if.then19_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

if.end17.lor.lhs.false_crit_edge:                 ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

if.then19:                                        ; preds = %if.end17.if.then19_crit_edge, %if.then62.i.i.if.then19_crit_edge, %if.then16.i.if.then19_crit_edge, %if.then11.i.if.then19_crit_edge, %r700_read_disabled_bios.exit.i.if.then19_crit_edge, %ni_read_disabled_bios.exit.i.if.then19_crit_edge, %if.then.i.if.then19_crit_edge
  %pdev.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 2
  %375 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %pdev.i, align 8
  %rom1.i = getelementptr inbounds %struct.pci_dev, ptr %376, i32 0, i32 78
  %377 = ptrtoint ptr %rom1.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %rom1.i, align 8
  %romlen3.i = getelementptr inbounds %struct.pci_dev, ptr %376, i32 0, i32 79
  %379 = ptrtoint ptr %romlen3.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %romlen3.i, align 4
  %bios4.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 13
  %381 = ptrtoint ptr %bios4.i to i32
  call void @__asan_store4_noabort(i32 %381)
  store ptr null, ptr %bios4.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %378)
  %tobool.not.i136 = icmp eq i32 %378, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %380)
  %cmp.i137 = icmp eq i32 %380, 0
  %or.cond.i = select i1 %tobool.not.i136, i1 true, i1 %cmp.i137
  br i1 %or.cond.i, label %if.then19.if.then24_crit_edge, label %if.end8.i.i.i

if.then19.if.then24_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24

if.end8.i.i.i:                                    ; preds = %if.then19
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %380, i32 noundef 3520) #10
  %382 = ptrtoint ptr %bios4.i to i32
  call void @__asan_store4_noabort(i32 %382)
  store ptr %call9.i.i.i, ptr %bios4.i, align 8
  %tobool7.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool7.not.i, label %if.end8.i.i.i.if.then24_crit_edge, label %if.end9.i

if.end8.i.i.i.if.then24_crit_edge:                ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24

if.end9.i:                                        ; preds = %if.end8.i.i.i
  %call10.i = tail call ptr @ioremap(i32 noundef %378, i32 noundef %380) #7
  %tobool11.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not.i, label %if.end9.i.free_bios.i_crit_edge, label %if.end13.i

if.end9.i.free_bios.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_bios.i

if.end13.i:                                       ; preds = %if.end9.i
  %383 = ptrtoint ptr %bios4.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %bios4.i, align 8
  tail call void @mmiocpy(ptr noundef %384, ptr noundef nonnull %call10.i, i32 noundef %380) #7
  tail call void @iounmap(ptr noundef nonnull %call10.i) #7
  %385 = ptrtoint ptr %bios4.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %bios4.i, align 8
  %387 = ptrtoint ptr %386 to i32
  call void @__asan_load1_noabort(i32 %387)
  %388 = load i8, ptr %386, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %388)
  %cmp16.not.i = icmp eq i8 %388, 85
  br i1 %cmp16.not.i, label %lor.lhs.false18.i, label %if.end13.i.free_bios.i_crit_edge

if.end13.i.free_bios.i_crit_edge:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_bios.i

lor.lhs.false18.i:                                ; preds = %if.end13.i
  %arrayidx20.i = getelementptr i8, ptr %386, i32 1
  %389 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %389)
  %390 = load i8, ptr %arrayidx20.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %390)
  %cmp22.not.i = icmp eq i8 %390, -86
  br i1 %cmp22.not.i, label %lor.lhs.false18.i.lor.lhs.false_crit_edge, label %lor.lhs.false18.i.free_bios.i_crit_edge

lor.lhs.false18.i.free_bios.i_crit_edge:          ; preds = %lor.lhs.false18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_bios.i

lor.lhs.false18.i.lor.lhs.false_crit_edge:        ; preds = %lor.lhs.false18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

free_bios.i:                                      ; preds = %lor.lhs.false18.i.free_bios.i_crit_edge, %if.end13.i.free_bios.i_crit_edge, %if.end9.i.free_bios.i_crit_edge
  %391 = ptrtoint ptr %bios4.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %bios4.i, align 8
  tail call void @kfree(ptr noundef %392) #7
  br label %if.then24

lor.lhs.false:                                    ; preds = %lor.lhs.false18.i.lor.lhs.false_crit_edge, %if.end17.lor.lhs.false_crit_edge, %if.then62.i.i.lor.lhs.false_crit_edge, %if.then16.i.lor.lhs.false_crit_edge, %if.then11.i.lor.lhs.false_crit_edge, %r700_read_disabled_bios.exit.i.lor.lhs.false_crit_edge, %ni_read_disabled_bios.exit.i.lor.lhs.false_crit_edge, %if.then.i.lor.lhs.false_crit_edge, %if.end12.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %bios = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 13
  %393 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %bios, align 8
  %cmp = icmp eq ptr %394, null
  br i1 %cmp, label %lor.lhs.false.if.then24_crit_edge, label %if.end26

lor.lhs.false.if.then24_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24

if.then24:                                        ; preds = %lor.lhs.false.if.then24_crit_edge, %free_bios.i, %if.end8.i.i.i.if.then24_crit_edge, %if.then19.if.then24_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #7
  %bios25 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 13
  %395 = ptrtoint ptr %bios25 to i32
  call void @__asan_store4_noabort(i32 %395)
  store ptr null, ptr %bios25, align 8
  br label %cleanup

if.end26:                                         ; preds = %lor.lhs.false
  %396 = ptrtoint ptr %394 to i32
  call void @__asan_load1_noabort(i32 %396)
  %397 = load i8, ptr %394, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %397)
  %cmp28.not = icmp eq i8 %397, 85
  br i1 %cmp28.not, label %lor.lhs.false30, label %if.end26.do.end_crit_edge

if.end26.do.end_crit_edge:                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false30:                                  ; preds = %if.end26
  %arrayidx32 = getelementptr i8, ptr %394, i32 1
  %398 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %398)
  %399 = load i8, ptr %arrayidx32, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %399)
  %cmp34.not = icmp eq i8 %399, -86
  br i1 %cmp34.not, label %if.end45, label %lor.lhs.false30.do.end_crit_edge

lor.lhs.false30.do.end_crit_edge:                 ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false30.do.end_crit_edge, %if.end26.do.end_crit_edge
  %conv40 = zext i8 %397 to i32
  %arrayidx42 = getelementptr i8, ptr %394, i32 1
  %400 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %400)
  %401 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %401 to i32
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %conv40, i32 noundef %conv43) #11
  br label %free_bios

if.end45:                                         ; preds = %lor.lhs.false30
  %arrayidx47 = getelementptr i8, ptr %394, i32 24
  %402 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %402)
  %403 = load i8, ptr %arrayidx47, align 1
  %conv48 = zext i8 %403 to i32
  %arrayidx50 = getelementptr i8, ptr %394, i32 25
  %404 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %404)
  %405 = load i8, ptr %arrayidx50, align 1
  %conv51 = zext i8 %405 to i32
  %shl = shl nuw nsw i32 %conv51, 8
  %or = or i32 %shl, %conv48
  %add = add nuw nsw i32 %or, 20
  %arrayidx55 = getelementptr i8, ptr %394, i32 %add
  %406 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %406)
  %407 = load i8, ptr %arrayidx55, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %407)
  %cmp57.not = icmp eq i8 %407, 0
  br i1 %cmp57.not, label %if.end65, label %do.end62

do.end62:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #11
  br label %free_bios

if.end65:                                         ; preds = %if.end45
  %arrayidx67 = getelementptr i8, ptr %394, i32 72
  %408 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %408)
  %409 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %409 to i16
  %arrayidx70 = getelementptr i8, ptr %394, i32 73
  %410 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %410)
  %411 = load i8, ptr %arrayidx70, align 1
  %conv71 = zext i8 %411 to i16
  %shl72 = shl nuw i16 %conv71, 8
  %or73 = or i16 %shl72, %conv68
  %bios_header_start = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 15
  %412 = ptrtoint ptr %bios_header_start to i32
  call void @__asan_store2_noabort(i32 %412)
  store i16 %or73, ptr %bios_header_start, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or73)
  %tobool76.not = icmp eq i16 %or73, 0
  br i1 %tobool76.not, label %if.end65.free_bios_crit_edge, label %if.end78

if.end65.free_bios_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_bios

if.end78:                                         ; preds = %if.end65
  %add81 = add i16 %or73, 4
  %conv84 = zext i16 %add81 to i32
  %add.ptr = getelementptr i8, ptr %394, i32 %conv84
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %add.ptr, ptr noundef nonnull dereferenceable(4) @.str.7, i32 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool86.not = icmp eq i32 %bcmp, 0
  br i1 %tobool86.not, label %if.end78.if.end95_crit_edge, label %lor.lhs.false87

if.end78.if.end95_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

lor.lhs.false87:                                  ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  %bcmp135 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %add.ptr, ptr noundef nonnull dereferenceable(4) @.str.8, i32 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp135)
  %tobool92.not = icmp eq i32 %bcmp135, 0
  %spec.select = zext i1 %tobool92.not to i8
  br label %if.end95

if.end95:                                         ; preds = %lor.lhs.false87, %if.end78.if.end95_crit_edge
  %.sink = phi i8 [ 1, %if.end78.if.end95_crit_edge ], [ %spec.select, %lor.lhs.false87 ]
  %is_atom_bios94 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 14
  %413 = ptrtoint ptr %is_atom_bios94 to i32
  call void @__asan_store1_noabort(i32 %413)
  store i8 %.sink, ptr %is_atom_bios94, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.sink)
  %tobool97.not = icmp eq i8 %.sink, 0
  %cond = select i1 %tobool97.not, ptr @.str.10, ptr @.str.7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.9, ptr noundef nonnull %cond) #7
  br label %cleanup

free_bios:                                        ; preds = %if.end65.free_bios_crit_edge, %do.end62, %do.end
  %414 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %bios, align 8
  tail call void @kfree(ptr noundef %415) #7
  %416 = ptrtoint ptr %bios to i32
  call void @__asan_store4_noabort(i32 %416)
  store ptr null, ptr %bios, align 8
  br label %cleanup

cleanup:                                          ; preds = %free_bios, %if.end95, %if.then24
  %retval.0 = phi i1 [ false, %if.then24 ], [ false, %free_bios ], [ true, %if.end95 ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @igp_read_bios_from_vram(ptr noundef %rdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end2_crit_edge

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

if.then:                                          ; preds = %entry
  %call = tail call zeroext i1 @radeon_card_posted(ptr noundef %rdev) #7
  br i1 %call, label %if.then.if.end2_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.if.end2_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

if.end2:                                          ; preds = %if.then.if.end2_crit_edge, %entry.if.end2_crit_edge
  %bios3 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 13
  %2 = ptrtoint ptr %bios3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %bios3, align 8
  %pdev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 2
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 8
  %resource = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 47
  %5 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %resource, align 8
  %call4 = tail call ptr @ioremap(i32 noundef %6, i32 noundef 262144) #7
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end2.cleanup_crit_edge, label %lor.lhs.false

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end2
  %7 = ptrtoint ptr %call4 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %call4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %8)
  %cmp9.not = icmp eq i8 %8, 85
  br i1 %cmp9.not, label %lor.lhs.false11, label %lor.lhs.false.cleanup.sink.split_crit_edge

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %arrayidx12 = getelementptr i8, ptr %call4, i32 1
  %9 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %10)
  %cmp14.not = icmp eq i8 %10, -86
  br i1 %cmp14.not, label %if.end17, label %lor.lhs.false11.cleanup.sink.split_crit_edge

lor.lhs.false11.cleanup.sink.split_crit_edge:     ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end17:                                         ; preds = %lor.lhs.false11
  %call1.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 262144, i32 noundef 3264, i32 noundef 6) #10
  %11 = ptrtoint ptr %bios3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call1.i.i, ptr %bios3, align 8
  %cmp21 = icmp eq ptr %call1.i.i, null
  br i1 %cmp21, label %if.end17.cleanup.sink.split_crit_edge, label %if.end24

if.end17.cleanup.sink.split_crit_edge:            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mmiocpy(ptr noundef nonnull %call1.i.i, ptr noundef nonnull %call4, i32 noundef 262144) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end24, %if.end17.cleanup.sink.split_crit_edge, %lor.lhs.false11.cleanup.sink.split_crit_edge, %lor.lhs.false.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i1 [ true, %if.end24 ], [ false, %lor.lhs.false11.cleanup.sink.split_crit_edge ], [ false, %lor.lhs.false.cleanup.sink.split_crit_edge ], [ false, %if.end17.cleanup.sink.split_crit_edge ]
  tail call void @iounmap(ptr noundef nonnull %call4) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end2.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then.cleanup_crit_edge ], [ false, %if.end2.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @radeon_read_bios(ptr nocapture noundef %rdev) unnamed_addr #0 align 64 {
entry:
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #7
  %0 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %size, align 4, !annotation !32
  %bios1 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 13
  %1 = ptrtoint ptr %bios1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %bios1, align 8
  %pdev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 2
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %call = call ptr @pci_map_rom(ptr noundef %3, ptr noundef nonnull %size) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %call) #7, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !34
  %arrayidx6 = getelementptr i8, ptr %call, i32 1
  %5 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx6) #7, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !35
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp ne i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %4)
  %cmp10.not = icmp eq i8 %4, 85
  %or.cond = select i1 %cmp, i1 %cmp10.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %5)
  %cmp14.not = icmp eq i8 %5, -86
  %or.cond45 = select i1 %or.cond, i1 %cmp14.not, i1 false
  br i1 %or.cond45, label %if.end8.i.i, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end8.i.i:                                      ; preds = %if.end
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #10
  %8 = ptrtoint ptr %bios1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9.i.i, ptr %bios1, align 8
  %cmp22 = icmp eq ptr %call9.i.i, null
  br i1 %cmp22, label %if.end8.i.i.cleanup.sink.split_crit_edge, label %if.end26

if.end8.i.i.cleanup.sink.split_crit_edge:         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end26:                                         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size, align 4
  call void @mmiocpy(ptr noundef nonnull %call9.i.i, ptr noundef nonnull %call, i32 noundef %10) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end26, %if.end8.i.i.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i1 [ true, %if.end26 ], [ false, %if.end.cleanup.sink.split_crit_edge ], [ false, %if.end8.i.i.cleanup.sink.split_crit_edge ]
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 8
  call void @pci_unmap_rom(ptr noundef %12, ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #7
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_card_posted(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_map_rom(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unmap_rom(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/radeon_bios.c", i32 686, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/radeon_bios.c", i32 691, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @radeon_get_bios._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @radeon_get_bios._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/radeon/radeon_bios.c", i32 697, i32 3}
!10 = !{ptr @radeon_get_bios._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @radeon_get_bios._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/radeon/radeon_bios.c", i32 706, i32 32}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/radeon/radeon_bios.c", i32 707, i32 32}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/radeon/radeon_bios.c", i32 713, i32 2}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{i64 5979061}
!29 = !{i64 2158276649}
!30 = !{i64 2158277056}
!31 = !{i64 5978643}
!32 = !{!"auto-init"}
!33 = !{i64 5978841}
!34 = !{i64 2158425922}
!35 = !{i64 2158426136}
