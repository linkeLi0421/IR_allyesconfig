; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/radeon_dp_auxch.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/radeon_dp_auxch.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.87 = type { i32, ptr }
%struct.drm_dp_aux_msg = type { i32, i8, i8, ptr, i32 }
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

@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/radeon/radeon_dp_auxch.c\00", [55 x i8] zeroinitializer }, align 32
@aux_offset = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 80, i32 160, i32 256, i32 336, i32 416], [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"auxch hw never signalled completion, error %08x\0A\00", [47 x i8] zeroinitializer }, align 32
@radeon_dp_aux_transfer_native.rs_ = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rs_.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.radeon_dp_aux_transfer_native = private unnamed_addr constant [30 x i8] c"radeon_dp_aux_transfer_native\00", align 1
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dp_aux_ch flags not zero: %08x\0A\00", [32 x i8] zeroinitializer }, align 32
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 8, i64 9]
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 71, i32 6 }
@___asan_gen_.8 = private unnamed_addr constant [11 x i8] c"aux_offset\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 44, i32 18 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 161, i32 3 }
@___asan_gen_.14 = private unnamed_addr constant [4 x i8] c"rs_\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private constant [44 x i8] c"../drivers/gpu/drm/radeon/radeon_dp_auxch.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 171, i32 3 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @.str, ptr @aux_offset, ptr @.str.1, ptr @radeon_dp_aux_transfer_native.rs_, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aux_offset to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_dp_aux_transfer_native.rs_ to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_dp_aux_transfer_native(ptr noundef %aux, ptr nocapture noundef %msg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %aux, i32 -120
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %i2c_id = getelementptr i8, ptr %aux, i32 -75
  %4 = ptrtoint ptr %i2c_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %i2c_id, align 1
  %6 = and i8 %5, 15
  %and = zext i8 %6 to i32
  %buffer = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 3
  %7 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buffer, align 4
  %size = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 4
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %10)
  %cmp = icmp ugt i32 %10, 16
  br i1 %cmp, label %do.end, label %if.end25, !prof !21

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 71, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end25:                                         ; preds = %entry
  %request = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 1
  %11 = ptrtoint ptr %request to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %request, align 4
  %13 = and i8 %12, -5
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i8 %13, label %if.end25.cleanup_crit_edge [
    i8 8, label %if.end25.sw.epilog.thread_crit_edge
    i8 0, label %if.end25.sw.epilog.thread_crit_edge488
    i8 9, label %if.end25.sw.epilog_crit_edge
    i8 1, label %if.end25.sw.epilog_crit_edge489
  ]

if.end25.sw.epilog_crit_edge489:                  ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.end25.sw.epilog_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.end25.sw.epilog.thread_crit_edge488:           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.thread

if.end25.sw.epilog.thread_crit_edge:              ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.thread

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.epilog:                                        ; preds = %if.end25.sw.epilog_crit_edge, %if.end25.sw.epilog_crit_edge489
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool30.not = icmp eq i32 %10, 0
  %sub = add nsw i32 %10, -1
  %spec.select466 = select i1 %tobool30.not, i32 196608, i32 262144
  %spec.select467 = select i1 %tobool30.not, i32 0, i32 %sub
  br label %if.end37

sw.epilog.thread:                                 ; preds = %if.end25.sw.epilog.thread_crit_edge, %if.end25.sw.epilog.thread_crit_edge488
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool30.not456 = icmp eq i32 %10, 0
  br i1 %tobool30.not456, label %sw.epilog.thread.if.end37_crit_edge, label %if.then34

sw.epilog.thread.if.end37_crit_edge:              ; preds = %sw.epilog.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end37

if.then34:                                        ; preds = %sw.epilog.thread
  call void @__sanitizer_cov_trace_pc() #5
  %sub460 = add nsw i32 %10, -1
  %add = shl nuw nsw i32 %10, 16
  %phi.bo = add nuw nsw i32 %add, 262144
  %phi.bo295 = and i32 %phi.bo, 2031616
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %sw.epilog.thread.if.end37_crit_edge, %sw.epilog
  %is_write.0.off0458 = phi i1 [ true, %if.then34 ], [ true, %sw.epilog.thread.if.end37_crit_edge ], [ false, %sw.epilog ]
  %bytes.0 = phi i32 [ %phi.bo295, %if.then34 ], [ 196608, %sw.epilog.thread.if.end37_crit_edge ], [ %spec.select466, %sw.epilog ]
  %msize.0 = phi i32 [ %sub460, %if.then34 ], [ 0, %sw.epilog.thread.if.end37_crit_edge ], [ %spec.select467, %sw.epilog ]
  %mutex = getelementptr i8, ptr %aux, i32 1740
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  %mask_clk_reg = getelementptr i8, ptr %aux, i32 -64
  %15 = ptrtoint ptr %mask_clk_reg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mask_clk_reg, align 4
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 18
  %17 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %16)
  %cmp.i = icmp ugt i32 %18, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %16)
  %cmp1.i = icmp ult i32 %16, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #5
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %19 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 %16
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !22
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #5
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %16) #3
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i ], [ %22, %if.then.i ]
  %or = or i32 %retval.0.i, 65536
  %23 = ptrtoint ptr %mask_clk_reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mask_clk_reg, align 4
  %25 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %24)
  %cmp.i297 = icmp ugt i32 %26, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %24)
  %cmp1.i298 = icmp ult i32 %24, 65536
  %or.cond.i299 = or i1 %cmp1.i298, %cmp.i297
  br i1 %or.cond.i299, label %do.body.i, label %if.else.i302

do.body.i:                                        ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  tail call void @arm_heavy_mb() #3
  %27 = tail call i32 @llvm.bswap.i32(i32 %or) #3
  %rmmio.i300 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %28 = ptrtoint ptr %rmmio.i300 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmmio.i300, align 4
  %add.ptr.i301 = getelementptr i8, ptr %29, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i301, i32 %27) #3, !srcloc !25
  br label %r100_mm_wreg.exit

if.else.i302:                                     ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %24, i32 noundef %or) #3
  br label %r100_mm_wreg.exit

r100_mm_wreg.exit:                                ; preds = %if.else.i302, %do.body.i
  %arrayidx = getelementptr [6 x i32], ptr @aux_offset, i32 0, i32 %and
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx, align 4
  %add41 = add i32 %31, 25088
  %32 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %add41)
  %cmp.i304 = icmp ugt i32 %33, %add41
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add41)
  %cmp1.i305 = icmp ult i32 %add41, 65536
  %or.cond.i306 = or i1 %cmp1.i305, %cmp.i304
  br i1 %or.cond.i306, label %if.then.i309, label %if.else.i311

if.then.i309:                                     ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #5
  %rmmio.i307 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %34 = ptrtoint ptr %rmmio.i307 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rmmio.i307, align 4
  %add.ptr.i308 = getelementptr i8, ptr %35, i32 %add41
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i308) #3, !srcloc !22
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  br label %r100_mm_rreg.exit313

if.else.i311:                                     ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #5
  %call3.i310 = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add41) #3
  br label %r100_mm_rreg.exit313

r100_mm_rreg.exit313:                             ; preds = %if.else.i311, %if.then.i309
  %retval.0.i312 = phi i32 [ %call3.i310, %if.else.i311 ], [ %37, %if.then.i309 ]
  %hpd = getelementptr i8, ptr %aux, i32 -72
  %38 = ptrtoint ptr %hpd to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hpd, align 4
  %and45 = shl i32 %39, 20
  %and43294 = or i32 %and45, %retval.0.i312
  %or46 = and i32 %and43294, 7340032
  %or47 = or i32 %or46, 257
  %40 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %add41)
  %cmp.i315 = icmp ugt i32 %41, %add41
  %or.cond.i317 = or i1 %cmp1.i305, %cmp.i315
  br i1 %or.cond.i317, label %do.body.i320, label %if.else.i321

do.body.i320:                                     ; preds = %r100_mm_rreg.exit313
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  tail call void @arm_heavy_mb() #3
  %42 = tail call i32 @llvm.bswap.i32(i32 %or47) #3
  %rmmio.i318 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %43 = ptrtoint ptr %rmmio.i318 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rmmio.i318, align 4
  %add.ptr.i319 = getelementptr i8, ptr %44, i32 %add41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i319, i32 %42) #3, !srcloc !25
  br label %r100_mm_wreg.exit322

if.else.i321:                                     ; preds = %r100_mm_rreg.exit313
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add41, i32 noundef %or47) #3
  br label %r100_mm_wreg.exit322

r100_mm_wreg.exit322:                             ; preds = %if.else.i321, %do.body.i320
  %add51 = add i32 %31, 25092
  %45 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %add51)
  %cmp.i324 = icmp ugt i32 %46, %add51
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add51)
  %cmp1.i325 = icmp ult i32 %add51, 65536
  %or.cond.i326 = or i1 %cmp1.i325, %cmp.i324
  br i1 %or.cond.i326, label %do.body.i329, label %if.else.i330

do.body.i329:                                     ; preds = %r100_mm_wreg.exit322
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  tail call void @arm_heavy_mb() #3
  %47 = lshr exact i32 %bytes.0, 8
  %rmmio.i327 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %48 = ptrtoint ptr %rmmio.i327 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rmmio.i327, align 4
  %add.ptr.i328 = getelementptr i8, ptr %49, i32 %add51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i328, i32 %47) #3, !srcloc !25
  br label %r100_mm_wreg.exit331

if.else.i330:                                     ; preds = %r100_mm_wreg.exit322
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add51, i32 noundef %bytes.0) #3
  br label %r100_mm_wreg.exit331

r100_mm_wreg.exit331:                             ; preds = %if.else.i330, %do.body.i329
  %50 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %add51)
  %cmp.i333 = icmp ugt i32 %51, %add51
  %or.cond.i335 = or i1 %cmp1.i325, %cmp.i333
  br i1 %or.cond.i335, label %do.body.i338, label %if.else.i339

do.body.i338:                                     ; preds = %r100_mm_wreg.exit331
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  tail call void @arm_heavy_mb() #3
  %52 = lshr exact i32 %bytes.0, 8
  %rmmio.i336 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %53 = ptrtoint ptr %rmmio.i336 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rmmio.i336, align 4
  %add.ptr.i337 = getelementptr i8, ptr %54, i32 %add51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i337, i32 %52) #3, !srcloc !25
  br label %r100_mm_wreg.exit340

if.else.i339:                                     ; preds = %r100_mm_wreg.exit331
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add51, i32 noundef %bytes.0) #3
  br label %r100_mm_wreg.exit340

r100_mm_wreg.exit340:                             ; preds = %if.else.i339, %do.body.i338
  %55 = ptrtoint ptr %request to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %request, align 4
  %conv59 = zext i8 %56 to i32
  %shl60 = shl nuw nsw i32 %conv59, 4
  %57 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %msg, align 4
  %shr = lshr i32 %58, 16
  %and61 = and i32 %shr, 15
  %add65 = add i32 %31, 25112
  %shl60.masked = and i32 %shl60, 240
  %conv66 = or i32 %shl60.masked, %and61
  %shl68 = shl nuw nsw i32 %conv66, 8
  %or69 = or i32 %shl68, -2147483648
  %59 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %add65)
  %cmp.i342 = icmp ugt i32 %60, %add65
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add65)
  %cmp1.i343 = icmp ult i32 %add65, 65536
  %or.cond.i344 = or i1 %cmp1.i343, %cmp.i342
  br i1 %or.cond.i344, label %do.body.i347, label %if.else.i348

do.body.i347:                                     ; preds = %r100_mm_wreg.exit340
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  tail call void @arm_heavy_mb() #3
  %61 = tail call i32 @llvm.bswap.i32(i32 %or69) #3
  %rmmio.i345 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %62 = ptrtoint ptr %rmmio.i345 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rmmio.i345, align 4
  %add.ptr.i346 = getelementptr i8, ptr %63, i32 %add65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i346, i32 %61) #3, !srcloc !25
  br label %r100_mm_wreg.exit349

if.else.i348:                                     ; preds = %r100_mm_wreg.exit340
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add65, i32 noundef %or69) #3
  br label %r100_mm_wreg.exit349

r100_mm_wreg.exit349:                             ; preds = %if.else.i348, %do.body.i347
  %64 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %msg, align 4
  %conv76 = and i32 %65, 65280
  %66 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %add65)
  %cmp.i351 = icmp ugt i32 %67, %add65
  %or.cond.i353 = or i1 %cmp1.i343, %cmp.i351
  br i1 %or.cond.i353, label %do.body.i356, label %if.else.i357

do.body.i356:                                     ; preds = %r100_mm_wreg.exit349
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  tail call void @arm_heavy_mb() #3
  %68 = shl nuw nsw i32 %conv76, 8
  %rmmio.i354 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %69 = ptrtoint ptr %rmmio.i354 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rmmio.i354, align 4
  %add.ptr.i355 = getelementptr i8, ptr %70, i32 %add65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i355, i32 %68) #3, !srcloc !25
  br label %r100_mm_wreg.exit358

if.else.i357:                                     ; preds = %r100_mm_wreg.exit349
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add65, i32 noundef %conv76) #3
  br label %r100_mm_wreg.exit358

r100_mm_wreg.exit358:                             ; preds = %if.else.i357, %do.body.i356
  %71 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %msg, align 4
  %conv84 = shl i32 %72, 8
  %shl86 = and i32 %conv84, 65280
  %73 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %add65)
  %cmp.i360 = icmp ugt i32 %74, %add65
  %or.cond.i362 = or i1 %cmp1.i343, %cmp.i360
  br i1 %or.cond.i362, label %do.body.i365, label %if.else.i366

do.body.i365:                                     ; preds = %r100_mm_wreg.exit358
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  tail call void @arm_heavy_mb() #3
  %75 = shl nuw nsw i32 %shl86, 8
  %rmmio.i363 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %76 = ptrtoint ptr %rmmio.i363 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rmmio.i363, align 4
  %add.ptr.i364 = getelementptr i8, ptr %77, i32 %add65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i364, i32 %75) #3, !srcloc !25
  br label %r100_mm_wreg.exit367

if.else.i366:                                     ; preds = %r100_mm_wreg.exit358
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add65, i32 noundef %shl86) #3
  br label %r100_mm_wreg.exit367

r100_mm_wreg.exit367:                             ; preds = %if.else.i366, %do.body.i365
  %conv90 = shl nuw nsw i32 %msize.0, 8
  %shl92 = and i32 %conv90, 65280
  %78 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %add65)
  %cmp.i369 = icmp ugt i32 %79, %add65
  %or.cond.i371 = or i1 %cmp1.i343, %cmp.i369
  br i1 %or.cond.i371, label %do.body.i374, label %if.else.i375

do.body.i374:                                     ; preds = %r100_mm_wreg.exit367
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  tail call void @arm_heavy_mb() #3
  %80 = shl nuw nsw i32 %shl92, 8
  %rmmio.i372 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %81 = ptrtoint ptr %rmmio.i372 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %rmmio.i372, align 4
  %add.ptr.i373 = getelementptr i8, ptr %82, i32 %add65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i373, i32 %80) #3, !srcloc !25
  br label %r100_mm_wreg.exit376

if.else.i375:                                     ; preds = %r100_mm_wreg.exit367
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add65, i32 noundef %shl92) #3
  br label %r100_mm_wreg.exit376

r100_mm_wreg.exit376:                             ; preds = %if.else.i375, %do.body.i374
  br i1 %is_write.0.off0458, label %for.cond.preheader, label %r100_mm_wreg.exit376.if.end105_crit_edge

r100_mm_wreg.exit376.if.end105_crit_edge:         ; preds = %r100_mm_wreg.exit376
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end105

for.cond.preheader:                               ; preds = %r100_mm_wreg.exit376
  %83 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp96468.not = icmp eq i32 %84, 0
  br i1 %cmp96468.not, label %for.cond.preheader.if.end105_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end105_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end105

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %rmmio.i381 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  br label %for.body

for.body:                                         ; preds = %r100_mm_wreg.exit385.for.body_crit_edge, %for.body.lr.ph
  %i.0469 = phi i32 [ 0, %for.body.lr.ph ], [ %inc104, %r100_mm_wreg.exit385.for.body_crit_edge ]
  %arrayidx100 = getelementptr i8, ptr %8, i32 %i.0469
  %85 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx100, align 1
  %conv101 = zext i8 %86 to i32
  %87 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %add65)
  %cmp.i378 = icmp ugt i32 %88, %add65
  %or.cond.i380 = or i1 %cmp1.i343, %cmp.i378
  br i1 %or.cond.i380, label %do.body.i383, label %if.else.i384

do.body.i383:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  tail call void @arm_heavy_mb() #3
  %89 = shl nuw nsw i32 %conv101, 16
  %90 = ptrtoint ptr %rmmio.i381 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %rmmio.i381, align 4
  %add.ptr.i382 = getelementptr i8, ptr %91, i32 %add65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i382, i32 %89) #3, !srcloc !25
  br label %r100_mm_wreg.exit385

if.else.i384:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %shl103 = shl nuw nsw i32 %conv101, 8
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add65, i32 noundef %shl103) #3
  br label %r100_mm_wreg.exit385

r100_mm_wreg.exit385:                             ; preds = %if.else.i384, %do.body.i383
  %inc104 = add nuw i32 %i.0469, 1
  %92 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %size, align 4
  %cmp96 = icmp ult i32 %inc104, %93
  br i1 %cmp96, label %r100_mm_wreg.exit385.for.body_crit_edge, label %r100_mm_wreg.exit385.if.end105_crit_edge

r100_mm_wreg.exit385.if.end105_crit_edge:         ; preds = %r100_mm_wreg.exit385
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end105

r100_mm_wreg.exit385.for.body_crit_edge:          ; preds = %r100_mm_wreg.exit385
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

if.end105:                                        ; preds = %r100_mm_wreg.exit385.if.end105_crit_edge, %for.cond.preheader.if.end105_crit_edge, %r100_mm_wreg.exit376.if.end105_crit_edge
  %add107 = add i32 %31, 25100
  %94 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %add107)
  %cmp.i387 = icmp ugt i32 %95, %add107
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add107)
  %cmp1.i388 = icmp ult i32 %add107, 65536
  %or.cond.i389 = or i1 %cmp1.i388, %cmp.i387
  br i1 %or.cond.i389, label %do.body.i392, label %if.else.i393

do.body.i392:                                     ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  tail call void @arm_heavy_mb() #3
  %rmmio.i390 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %96 = ptrtoint ptr %rmmio.i390 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rmmio.i390, align 4
  %add.ptr.i391 = getelementptr i8, ptr %97, i32 %add107
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i391, i32 33554432) #3, !srcloc !25
  br label %r100_mm_wreg.exit394

if.else.i393:                                     ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add107, i32 noundef 2) #3
  br label %r100_mm_wreg.exit394

r100_mm_wreg.exit394:                             ; preds = %if.else.i393, %do.body.i392
  %or112 = or i32 %bytes.0, 1
  %98 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %add51)
  %cmp.i396 = icmp ugt i32 %99, %add51
  %or.cond.i398 = or i1 %cmp1.i325, %cmp.i396
  br i1 %or.cond.i398, label %do.body.i401, label %if.else.i402

do.body.i401:                                     ; preds = %r100_mm_wreg.exit394
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  tail call void @arm_heavy_mb() #3
  %100 = tail call i32 @llvm.bswap.i32(i32 %or112) #3
  %rmmio.i399 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %101 = ptrtoint ptr %rmmio.i399 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %rmmio.i399, align 4
  %add.ptr.i400 = getelementptr i8, ptr %102, i32 %add51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i400, i32 %100) #3, !srcloc !25
  br label %r100_mm_wreg.exit403

if.else.i402:                                     ; preds = %r100_mm_wreg.exit394
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add51, i32 noundef %or112) #3
  br label %r100_mm_wreg.exit403

r100_mm_wreg.exit403:                             ; preds = %if.else.i402, %do.body.i401
  %add115 = add i32 %31, 25104
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add115)
  %cmp1.i406 = icmp ult i32 %add115, 65536
  %rmmio.i408 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  br label %do.body113

do.body113:                                       ; preds = %if.end120.do.body113_crit_edge, %r100_mm_wreg.exit403
  %retry_count.0 = phi i32 [ 0, %r100_mm_wreg.exit403 ], [ %inc122, %if.end120.do.body113_crit_edge ]
  %103 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %add115)
  %cmp.i405 = icmp ugt i32 %104, %add115
  %or.cond.i407 = or i1 %cmp1.i406, %cmp.i405
  br i1 %or.cond.i407, label %if.then.i410, label %if.else.i412

if.then.i410:                                     ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #5
  %105 = ptrtoint ptr %rmmio.i408 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %rmmio.i408, align 4
  %add.ptr.i409 = getelementptr i8, ptr %106, i32 %add115
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i409) #3, !srcloc !22
  %108 = tail call i32 @llvm.bswap.i32(i32 %107) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  br label %r100_mm_rreg.exit414

if.else.i412:                                     ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #5
  %call3.i411 = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add115) #3
  br label %r100_mm_rreg.exit414

r100_mm_rreg.exit414:                             ; preds = %if.else.i412, %if.then.i410
  %retval.0.i413 = phi i32 [ %call3.i411, %if.else.i412 ], [ %108, %if.then.i410 ]
  %and117 = and i32 %retval.0.i413, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  br i1 %tobool118.not, label %if.end120, label %do.end125

if.end120:                                        ; preds = %r100_mm_rreg.exit414
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #3
  %inc122 = add nuw nsw i32 %retry_count.0, 1
  %exitcond.not = icmp eq i32 %inc122, 1001
  br i1 %exitcond.not, label %if.end120.if.then128_crit_edge, label %if.end120.do.body113_crit_edge

if.end120.do.body113_crit_edge:                   ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body113

if.end120.if.then128_crit_edge:                   ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then128

do.end125:                                        ; preds = %r100_mm_rreg.exit414
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %retry_count.0)
  %cmp126 = icmp ugt i32 %retry_count.0, 999
  br i1 %cmp126, label %do.end125.if.then128_crit_edge, label %if.end129

do.end125.if.then128_crit_edge:                   ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then128

if.then128:                                       ; preds = %do.end125.if.then128_crit_edge, %if.end120.if.then128_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, i32 noundef %retval.0.i413) #3
  br label %done.thread

if.end129:                                        ; preds = %do.end125
  %and130 = and i32 %retval.0.i413, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %tobool131.not = icmp eq i32 %and130, 0
  br i1 %tobool131.not, label %if.end133, label %if.end129.done.thread_crit_edge

if.end129.done.thread_crit_edge:                  ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #5
  br label %done.thread

if.end133:                                        ; preds = %if.end129
  %and134 = and i32 %retval.0.i413, 14552832
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134)
  %tobool135.not = icmp eq i32 %and134, 0
  br i1 %tobool135.not, label %if.end145, label %if.then136

if.then136:                                       ; preds = %if.end133
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %109 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %109, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then136.done.thread_crit_edge, label %land.lhs.true

if.then136.done.thread_crit_edge:                 ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #5
  br label %done.thread

land.lhs.true:                                    ; preds = %if.then136
  %call139 = tail call i32 @___ratelimit(ptr noundef nonnull @radeon_dp_aux_transfer_native.rs_, ptr noundef nonnull @__func__.radeon_dp_aux_transfer_native) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %land.lhs.true.done.thread_crit_edge, label %cond.end

land.lhs.true.done.thread_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %done.thread

cond.end:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %retval.0.i413) #3
  br label %done.thread

if.end145:                                        ; preds = %if.end133
  %shr146 = lshr i32 %retval.0.i413, 24
  %and147 = and i32 %shr146, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147)
  %tobool148.not = icmp eq i32 %and147, 0
  br i1 %tobool148.not, label %if.end145.if.end179_crit_edge, label %if.then149

if.end145.if.end179_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end179

if.then149:                                       ; preds = %if.end145
  %110 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %111, i32 %add65)
  %cmp.i416 = icmp ugt i32 %111, %add65
  %or.cond.i418 = or i1 %cmp1.i343, %cmp.i416
  br i1 %or.cond.i418, label %do.body.i421, label %if.else.i422

do.body.i421:                                     ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  tail call void @arm_heavy_mb() #3
  %112 = ptrtoint ptr %rmmio.i408 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %rmmio.i408, align 4
  %add.ptr.i420 = getelementptr i8, ptr %113, i32 %add65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i420, i32 16777344) #3, !srcloc !25
  br label %r100_mm_wreg.exit423

if.else.i422:                                     ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add65, i32 noundef -2147483647) #3
  br label %r100_mm_wreg.exit423

r100_mm_wreg.exit423:                             ; preds = %if.else.i422, %do.body.i421
  %114 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %115, i32 %add65)
  %cmp.i425 = icmp ugt i32 %115, %add65
  %or.cond.i427 = or i1 %cmp1.i343, %cmp.i425
  br i1 %or.cond.i427, label %if.then.i430, label %if.else.i432

if.then.i430:                                     ; preds = %r100_mm_wreg.exit423
  call void @__sanitizer_cov_trace_pc() #5
  %116 = ptrtoint ptr %rmmio.i408 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %rmmio.i408, align 4
  %add.ptr.i429 = getelementptr i8, ptr %117, i32 %add65
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i429) #3, !srcloc !22
  %119 = tail call i32 @llvm.bswap.i32(i32 %118) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  br label %r100_mm_rreg.exit434

if.else.i432:                                     ; preds = %r100_mm_wreg.exit423
  call void @__sanitizer_cov_trace_pc() #5
  %call3.i431 = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add65) #3
  br label %r100_mm_rreg.exit434

r100_mm_rreg.exit434:                             ; preds = %if.else.i432, %if.then.i430
  %retval.0.i433 = phi i32 [ %call3.i431, %if.else.i432 ], [ %119, %if.then.i430 ]
  %shr155 = lshr i32 %retval.0.i433, 12
  %sub158 = add nsw i32 %and147, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and147)
  %cmp159470 = icmp ugt i32 %and147, 1
  br i1 %cmp159470, label %for.body161.lr.ph, label %r100_mm_rreg.exit434.for.end174_crit_edge

r100_mm_rreg.exit434.for.end174_crit_edge:        ; preds = %r100_mm_rreg.exit434
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end174

for.body161.lr.ph:                                ; preds = %r100_mm_rreg.exit434
  %tobool165.not = icmp eq ptr %8, null
  br label %for.body161

for.body161:                                      ; preds = %for.inc172.for.body161_crit_edge, %for.body161.lr.ph
  %i.1471 = phi i32 [ 0, %for.body161.lr.ph ], [ %inc173, %for.inc172.for.body161_crit_edge ]
  %120 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %121, i32 %add65)
  %cmp.i436 = icmp ugt i32 %121, %add65
  %or.cond.i438 = or i1 %cmp1.i343, %cmp.i436
  br i1 %or.cond.i438, label %if.then.i441, label %if.else.i443

if.then.i441:                                     ; preds = %for.body161
  call void @__sanitizer_cov_trace_pc() #5
  %122 = ptrtoint ptr %rmmio.i408 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %rmmio.i408, align 4
  %add.ptr.i440 = getelementptr i8, ptr %123, i32 %add65
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i440) #3, !srcloc !22
  %125 = tail call i32 @llvm.bswap.i32(i32 %124) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  br label %r100_mm_rreg.exit445

if.else.i443:                                     ; preds = %for.body161
  call void @__sanitizer_cov_trace_pc() #5
  %call3.i442 = tail call i32 @r100_mm_rreg_slow(ptr noundef %3, i32 noundef %add65) #3
  br label %r100_mm_rreg.exit445

r100_mm_rreg.exit445:                             ; preds = %if.else.i443, %if.then.i441
  %retval.0.i444 = phi i32 [ %call3.i442, %if.else.i443 ], [ %125, %if.then.i441 ]
  br i1 %tobool165.not, label %r100_mm_rreg.exit445.for.inc172_crit_edge, label %if.then166

r100_mm_rreg.exit445.for.inc172_crit_edge:        ; preds = %r100_mm_rreg.exit445
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc172

if.then166:                                       ; preds = %r100_mm_rreg.exit445
  call void @__sanitizer_cov_trace_pc() #5
  %shr167 = lshr i32 %retval.0.i444, 8
  %conv169 = trunc i32 %shr167 to i8
  %arrayidx170 = getelementptr i8, ptr %8, i32 %i.1471
  %126 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %conv169, ptr %arrayidx170, align 1
  br label %for.inc172

for.inc172:                                       ; preds = %if.then166, %r100_mm_rreg.exit445.for.inc172_crit_edge
  %inc173 = add nuw nsw i32 %i.1471, 1
  %exitcond473.not = icmp eq i32 %inc173, %sub158
  br i1 %exitcond473.not, label %for.inc172.for.end174_crit_edge, label %for.inc172.for.body161_crit_edge

for.inc172.for.body161_crit_edge:                 ; preds = %for.inc172
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body161

for.inc172.for.end174_crit_edge:                  ; preds = %for.inc172
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end174

for.end174:                                       ; preds = %for.inc172.for.end174_crit_edge, %r100_mm_rreg.exit434.for.end174_crit_edge
  %tobool175.not = icmp eq ptr %8, null
  %spec.select = select i1 %tobool175.not, i32 0, i32 %sub158
  %127 = trunc i32 %shr155 to i8
  %phi.cast = and i8 %127, 15
  br label %if.end179

if.end179:                                        ; preds = %for.end174, %if.end145.if.end179_crit_edge
  %ret.0 = phi i32 [ 0, %if.end145.if.end179_crit_edge ], [ %spec.select, %for.end174 ]
  %ack.0 = phi i8 [ 0, %if.end145.if.end179_crit_edge ], [ %phi.cast, %for.end174 ]
  %128 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %129, i32 %add107)
  %cmp.i447 = icmp ugt i32 %129, %add107
  %or.cond.i449 = or i1 %cmp1.i388, %cmp.i447
  br i1 %or.cond.i449, label %do.body.i452, label %if.else.i453

do.body.i452:                                     ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  tail call void @arm_heavy_mb() #3
  %130 = ptrtoint ptr %rmmio.i408 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %rmmio.i408, align 4
  %add.ptr.i451 = getelementptr i8, ptr %131, i32 %add107
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i451, i32 33554432) #3, !srcloc !25
  br label %r100_mm_wreg.exit454

if.else.i453:                                     ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %3, i32 noundef %add107, i32 noundef 2) #3
  br label %r100_mm_wreg.exit454

r100_mm_wreg.exit454:                             ; preds = %if.else.i453, %do.body.i452
  br i1 %is_write.0.off0458, label %if.then183, label %r100_mm_wreg.exit454.done_crit_edge

r100_mm_wreg.exit454.done_crit_edge:              ; preds = %r100_mm_wreg.exit454
  call void @__sanitizer_cov_trace_pc() #5
  br label %done

if.then183:                                       ; preds = %r100_mm_wreg.exit454
  call void @__sanitizer_cov_trace_pc() #5
  %132 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %size, align 4
  br label %done

done.thread:                                      ; preds = %cond.end, %land.lhs.true.done.thread_crit_edge, %if.then136.done.thread_crit_edge, %if.end129.done.thread_crit_edge, %if.then128
  %ret.1.ph = phi i32 [ -5, %if.then136.done.thread_crit_edge ], [ -5, %land.lhs.true.done.thread_crit_edge ], [ -5, %cond.end ], [ -110, %if.end129.done.thread_crit_edge ], [ -5, %if.then128 ]
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  br label %cleanup

done:                                             ; preds = %if.then183, %r100_mm_wreg.exit454.done_crit_edge
  %ret.1 = phi i32 [ %133, %if.then183 ], [ %ret.0, %r100_mm_wreg.exit454.done_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.1)
  %cmp187 = icmp sgt i32 %ret.1, -1
  br i1 %cmp187, label %if.then189, label %done.cleanup_crit_edge

done.cleanup_crit_edge:                           ; preds = %done
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then189:                                       ; preds = %done
  call void @__sanitizer_cov_trace_pc() #5
  %reply = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 2
  %134 = ptrtoint ptr %reply to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %ack.0, ptr %reply, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then189, %done.cleanup_crit_edge, %done.thread, %if.end25.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -7, %do.end ], [ -22, %if.end25.cleanup_crit_edge ], [ %ret.1, %if.then189 ], [ %ret.1, %done.cleanup_crit_edge ], [ %ret.1.ph, %done.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_mm_rreg_slow(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_mm_wreg_slow(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/radeon_dp_auxch.c", i32 71, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/radeon_dp_auxch.c", i32 161, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/radeon/radeon_dp_auxch.c", i32 171, i32 3}
!6 = !{ptr @radeon_dp_aux_transfer_native.rs_, !5, !"rs_", i1 false, i1 false}
!7 = !{ptr @__func__.radeon_dp_aux_transfer_native, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @aux_offset, !11, !"aux_offset", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/radeon/radeon_dp_auxch.c", i32 44, i32 18}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"branch_weights", i32 1, i32 2000}
!22 = !{i64 6729902}
!23 = !{i64 2157450087}
!24 = !{i64 2157450494}
!25 = !{i64 6729484}
