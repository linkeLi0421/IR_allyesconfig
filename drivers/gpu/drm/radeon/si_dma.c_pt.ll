; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/si_dma.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/si_dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.radeon_ring = type { ptr, ptr, ptr, i32, i32, i64, ptr, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic64_t, i64, i32, i32, i8, i32, i32, i64, i64, i32, i32, i32, ptr, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.atomic64_t = type { i64 }
%struct.radeon_ib = type { ptr, i32, i64, ptr, i32, ptr, ptr, i8, %struct.radeon_sync }
%struct.radeon_sync = type { [4 x ptr], [8 x ptr], ptr }
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

@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"radeon: moving bo (%d).\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"radeon: writing more dwords to the ring than expected!\0A\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private constant [35 x i8] c"../drivers/gpu/drm/radeon/si_dma.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 249, i32 3 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant [35 x i8] c"../drivers/gpu/drm/radeon/radeon.h\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 2721, i32 3 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @si_dma_is_lockup(ptr noundef %rdev, ptr noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @si_gpu_check_soft_reset(ptr noundef %rdev) #5
  %idx = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 19
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  %. = select i1 %cmp, i32 4, i32 32
  %and = and i32 %., %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @radeon_ring_lockup_update(ptr noundef %rdev, ptr noundef %ring) #5
  br label %cleanup

if.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call zeroext i1 @radeon_ring_test_lockup(ptr noundef %rdev, ptr noundef %ring) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then1
  %retval.0 = phi i1 [ %call3, %if.end2 ], [ false, %if.then1 ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si_gpu_check_soft_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ring_lockup_update(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_ring_test_lockup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @si_dma_vm_copy_pages(ptr nocapture noundef readnone %rdev, ptr nocapture noundef %ib, i64 noundef %pe, i64 noundef %src, i32 noundef %count) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not50 = icmp eq i32 %count, 0
  br i1 %tobool.not50, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %ptr = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 3
  %length_dw = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %pe.addr.053 = phi i64 [ %pe, %while.body.lr.ph ], [ %add, %while.body.while.body_crit_edge ]
  %count.addr.052 = phi i32 [ %count, %while.body.lr.ph ], [ %sub, %while.body.while.body_crit_edge ]
  %src.addr.051 = phi i64 [ %src, %while.body.lr.ph ], [ %add29, %while.body.while.body_crit_edge ]
  %mul = shl i32 %count.addr.052, 3
  %0 = tail call i32 @llvm.umin.i32(i32 %mul, i32 1048568)
  %or = or i32 %0, 872415232
  %1 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ptr, align 8
  %3 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %length_dw, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %length_dw, align 4
  %arrayidx = getelementptr i32, ptr %2, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or, ptr %arrayidx, align 4
  %conv = trunc i64 %pe.addr.053 to i32
  %6 = load ptr, ptr %ptr, align 8
  %7 = load i32, ptr %length_dw, align 4
  %inc4 = add i32 %7, 1
  store i32 %inc4, ptr %length_dw, align 4
  %arrayidx5 = getelementptr i32, ptr %6, i32 %7
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %arrayidx5, align 4
  %conv7 = trunc i64 %src.addr.051 to i32
  %9 = load ptr, ptr %ptr, align 8
  %10 = load i32, ptr %length_dw, align 4
  %inc10 = add i32 %10, 1
  store i32 %inc10, ptr %length_dw, align 4
  %arrayidx11 = getelementptr i32, ptr %9, i32 %10
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv7, ptr %arrayidx11, align 4
  %shr = lshr i64 %pe.addr.053, 32
  %conv13 = trunc i64 %shr to i32
  %and14 = and i32 %conv13, 255
  %12 = load ptr, ptr %ptr, align 8
  %13 = load i32, ptr %length_dw, align 4
  %inc17 = add i32 %13, 1
  store i32 %inc17, ptr %length_dw, align 4
  %arrayidx18 = getelementptr i32, ptr %12, i32 %13
  %14 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and14, ptr %arrayidx18, align 4
  %shr19 = lshr i64 %src.addr.051, 32
  %conv21 = trunc i64 %shr19 to i32
  %and22 = and i32 %conv21, 255
  %15 = load ptr, ptr %ptr, align 8
  %16 = load i32, ptr %length_dw, align 4
  %inc25 = add i32 %16, 1
  store i32 %inc25, ptr %length_dw, align 4
  %arrayidx26 = getelementptr i32, ptr %15, i32 %16
  %17 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and22, ptr %arrayidx26, align 4
  %conv27 = zext i32 %0 to i64
  %add = add i64 %pe.addr.053, %conv27
  %add29 = add i64 %src.addr.051, %conv27
  %div49 = lshr exact i32 %0, 3
  %sub = sub i32 %count.addr.052, %div49
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @si_dma_vm_write_pages(ptr noundef %rdev, ptr nocapture noundef %ib, i64 noundef %pe, i64 noundef %addr, i32 noundef %count, i32 noundef %incr, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not73 = icmp eq i32 %count, 0
  br i1 %tobool.not73, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %ptr = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 3
  %length_dw = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 1
  %and14 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %and17 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %conv23 = zext i32 %incr to i64
  br label %while.body

while.cond.loopexit:                              ; preds = %if.end22.while.cond.loopexit_crit_edge, %while.body.while.cond.loopexit_crit_edge
  %count.addr.1.lcssa = phi i32 [ %count.addr.074, %while.body.while.cond.loopexit_crit_edge ], [ %dec, %if.end22.while.cond.loopexit_crit_edge ]
  %addr.addr.1.lcssa = phi i64 [ %addr.addr.075, %while.body.while.cond.loopexit_crit_edge ], [ %add, %if.end22.while.cond.loopexit_crit_edge ]
  %pe.addr.1.lcssa = phi i64 [ %pe.addr.076, %while.body.while.cond.loopexit_crit_edge ], [ %add38, %if.end22.while.cond.loopexit_crit_edge ]
  %tobool.not = icmp eq i32 %count.addr.1.lcssa, 0
  br i1 %tobool.not, label %while.cond.loopexit.while.end_crit_edge, label %while.cond.loopexit.while.body_crit_edge

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.cond.loopexit.while.end_crit_edge:          ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %while.body.lr.ph
  %pe.addr.076 = phi i64 [ %pe, %while.body.lr.ph ], [ %pe.addr.1.lcssa, %while.cond.loopexit.while.body_crit_edge ]
  %addr.addr.075 = phi i64 [ %addr, %while.body.lr.ph ], [ %addr.addr.1.lcssa, %while.cond.loopexit.while.body_crit_edge ]
  %count.addr.074 = phi i32 [ %count, %while.body.lr.ph ], [ %count.addr.1.lcssa, %while.cond.loopexit.while.body_crit_edge ]
  %mul = shl i32 %count.addr.074, 1
  %0 = tail call i32 @llvm.umin.i32(i32 %mul, i32 1048574)
  %or = or i32 %0, 536870912
  %1 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ptr, align 8
  %3 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %length_dw, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %length_dw, align 4
  %arrayidx = getelementptr i32, ptr %2, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or, ptr %arrayidx, align 4
  %conv = trunc i64 %pe.addr.076 to i32
  %6 = load ptr, ptr %ptr, align 8
  %7 = load i32, ptr %length_dw, align 4
  %inc3 = add i32 %7, 1
  store i32 %inc3, ptr %length_dw, align 4
  %arrayidx4 = getelementptr i32, ptr %6, i32 %7
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %arrayidx4, align 4
  %shr = lshr i64 %pe.addr.076, 32
  %conv6 = trunc i64 %shr to i32
  %and7 = and i32 %conv6, 255
  %9 = load ptr, ptr %ptr, align 8
  %10 = load i32, ptr %length_dw, align 4
  %inc10 = add i32 %10, 1
  store i32 %inc10, ptr %length_dw, align 4
  %arrayidx11 = getelementptr i32, ptr %9, i32 %10
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and7, ptr %arrayidx11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp12.not65 = icmp eq i32 %0, 0
  br i1 %cmp12.not65, label %while.body.while.cond.loopexit_crit_edge, label %while.body.for.body_crit_edge

while.body.for.body_crit_edge:                    ; preds = %while.body
  br label %for.body

while.body.while.cond.loopexit_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.loopexit

for.body:                                         ; preds = %if.end22.for.body_crit_edge, %while.body.for.body_crit_edge
  %ndw.070 = phi i32 [ %sub, %if.end22.for.body_crit_edge ], [ %0, %while.body.for.body_crit_edge ]
  %pe.addr.169 = phi i64 [ %add38, %if.end22.for.body_crit_edge ], [ %pe.addr.076, %while.body.for.body_crit_edge ]
  %addr.addr.167 = phi i64 [ %add, %if.end22.for.body_crit_edge ], [ %addr.addr.075, %while.body.for.body_crit_edge ]
  %count.addr.166 = phi i32 [ %dec, %if.end22.for.body_crit_edge ], [ %count.addr.074, %while.body.for.body_crit_edge ]
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i64 @radeon_vm_map_gart(ptr noundef %rdev, i64 noundef %addr.addr.167) #5
  %extract.t = trunc i64 %call to i32
  %extract = lshr i64 %call, 32
  %extract.t62 = trunc i64 %extract to i32
  br label %if.end22

if.else:                                          ; preds = %for.body
  br i1 %tobool18.not, label %if.else.if.end22_crit_edge, label %if.then19

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %extract.t61 = trunc i64 %addr.addr.167 to i32
  %extract63 = lshr i64 %addr.addr.167, 32
  %extract.t64 = trunc i64 %extract63 to i32
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.else.if.end22_crit_edge, %if.then16
  %value.0.off0 = phi i32 [ %extract.t, %if.then16 ], [ %extract.t61, %if.then19 ], [ 0, %if.else.if.end22_crit_edge ]
  %value.0.off32 = phi i32 [ %extract.t62, %if.then16 ], [ %extract.t64, %if.then19 ], [ 0, %if.else.if.end22_crit_edge ]
  %add = add i64 %addr.addr.167, %conv23
  %conv26 = or i32 %value.0.off0, %flags
  %12 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ptr, align 8
  %14 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length_dw, align 4
  %inc29 = add i32 %15, 1
  store i32 %inc29, ptr %length_dw, align 4
  %arrayidx30 = getelementptr i32, ptr %13, i32 %15
  %16 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv26, ptr %arrayidx30, align 4
  %17 = load ptr, ptr %ptr, align 8
  %18 = load i32, ptr %length_dw, align 4
  %inc36 = add i32 %18, 1
  store i32 %inc36, ptr %length_dw, align 4
  %arrayidx37 = getelementptr i32, ptr %17, i32 %18
  %19 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %value.0.off32, ptr %arrayidx37, align 4
  %sub = add i32 %ndw.070, -2
  %dec = add i32 %count.addr.166, -1
  %add38 = add i64 %pe.addr.169, 8
  %cmp12.not = icmp eq i32 %sub, 0
  br i1 %cmp12.not, label %if.end22.while.cond.loopexit_crit_edge, label %if.end22.for.body_crit_edge

if.end22.for.body_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end22.while.cond.loopexit_crit_edge:           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.loopexit

while.end:                                        ; preds = %while.cond.loopexit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @radeon_vm_map_gart(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @si_dma_vm_set_pages(ptr nocapture noundef readnone %rdev, ptr nocapture noundef %ib, i64 noundef %pe, i64 noundef %addr, i32 noundef %count, i32 noundef %incr, i32 noundef %flags) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not81 = icmp eq i32 %count, 0
  br i1 %tobool.not81, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %ptr = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 3
  %length_dw = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %pe.addr.084 = phi i64 [ %pe, %while.body.lr.ph ], [ %add, %while.body.while.body_crit_edge ]
  %addr.addr.083 = phi i64 [ %addr, %while.body.lr.ph ], [ %add48, %while.body.while.body_crit_edge ]
  %count.addr.082 = phi i32 [ %count, %while.body.lr.ph ], [ %sub, %while.body.while.body_crit_edge ]
  %mul = shl i32 %count.addr.082, 1
  %0 = tail call i32 @llvm.umin.i32(i32 %mul, i32 1048574)
  %extract.t = trunc i64 %addr.addr.083 to i32
  %extract = lshr i64 %addr.addr.083, 32
  %extract.t80 = trunc i64 %extract to i32
  %value.0.off0 = select i1 %tobool1.not, i32 0, i32 %extract.t
  %value.0.off32 = select i1 %tobool1.not, i32 0, i32 %extract.t80
  %or = or i32 %0, 606076928
  %1 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ptr, align 8
  %3 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %length_dw, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %length_dw, align 4
  %arrayidx = getelementptr i32, ptr %2, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or, ptr %arrayidx, align 4
  %conv = trunc i64 %pe.addr.084 to i32
  %6 = load ptr, ptr %ptr, align 8
  %7 = load i32, ptr %length_dw, align 4
  %inc7 = add i32 %7, 1
  store i32 %inc7, ptr %length_dw, align 4
  %arrayidx8 = getelementptr i32, ptr %6, i32 %7
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %arrayidx8, align 4
  %shr = lshr i64 %pe.addr.084, 32
  %conv10 = trunc i64 %shr to i32
  %and11 = and i32 %conv10, 255
  %9 = load ptr, ptr %ptr, align 8
  %10 = load i32, ptr %length_dw, align 4
  %inc14 = add i32 %10, 1
  store i32 %inc14, ptr %length_dw, align 4
  %arrayidx15 = getelementptr i32, ptr %9, i32 %10
  %11 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and11, ptr %arrayidx15, align 4
  %12 = load ptr, ptr %ptr, align 8
  %13 = load i32, ptr %length_dw, align 4
  %inc18 = add i32 %13, 1
  store i32 %inc18, ptr %length_dw, align 4
  %arrayidx19 = getelementptr i32, ptr %12, i32 %13
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %flags, ptr %arrayidx19, align 4
  %15 = load ptr, ptr %ptr, align 8
  %16 = load i32, ptr %length_dw, align 4
  %inc22 = add i32 %16, 1
  store i32 %inc22, ptr %length_dw, align 4
  %arrayidx23 = getelementptr i32, ptr %15, i32 %16
  %17 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %arrayidx23, align 4
  %18 = load ptr, ptr %ptr, align 8
  %19 = load i32, ptr %length_dw, align 4
  %inc27 = add i32 %19, 1
  store i32 %inc27, ptr %length_dw, align 4
  %arrayidx28 = getelementptr i32, ptr %18, i32 %19
  %20 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %value.0.off0, ptr %arrayidx28, align 4
  %21 = load ptr, ptr %ptr, align 8
  %22 = load i32, ptr %length_dw, align 4
  %inc34 = add i32 %22, 1
  store i32 %inc34, ptr %length_dw, align 4
  %arrayidx35 = getelementptr i32, ptr %21, i32 %22
  %23 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %value.0.off32, ptr %arrayidx35, align 4
  %24 = load ptr, ptr %ptr, align 8
  %25 = load i32, ptr %length_dw, align 4
  %inc38 = add i32 %25, 1
  store i32 %inc38, ptr %length_dw, align 4
  %arrayidx39 = getelementptr i32, ptr %24, i32 %25
  %26 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %incr, ptr %arrayidx39, align 4
  %27 = load ptr, ptr %ptr, align 8
  %28 = load i32, ptr %length_dw, align 4
  %inc42 = add i32 %28, 1
  store i32 %inc42, ptr %length_dw, align 4
  %arrayidx43 = getelementptr i32, ptr %27, i32 %28
  %29 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %arrayidx43, align 4
  %mul44 = shl nuw nsw i32 %0, 2
  %conv45 = zext i32 %mul44 to i64
  %add = add i64 %pe.addr.084, %conv45
  %div79 = lshr exact i32 %0, 1
  %mul46 = mul i32 %div79, %incr
  %conv47 = zext i32 %mul46 to i64
  %add48 = add i64 %addr.addr.083, %conv47
  %sub = sub i32 %count.addr.082, %div79
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @si_dma_vm_flush(ptr nocapture noundef readnone %rdev, ptr noundef %ring, i32 noundef %vm_id, i64 noundef %pd_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %count_dw.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count_dw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp slt i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %entry.radeon_ring_write.exit_crit_edge

entry.radeon_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #5
  br label %radeon_ring_write.exit

radeon_ring_write.exit:                           ; preds = %if.then.i, %entry.radeon_ring_write.exit_crit_edge
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
  store volatile i32 -1879048192, ptr %arrayidx.i, align 4
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %vm_id)
  %cmp = icmp ult i32 %vm_id, 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %radeon_ring_write.exit
  %14 = add nuw nsw i32 %vm_id, 1359
  %shr = and i32 %14, 1072758783
  %or = or i32 %shr, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i28 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i28, label %if.then.i29, label %if.then.radeon_ring_write.exit39_crit_edge

if.then.radeon_ring_write.exit39_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit39

if.then.i29:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #5
  br label %radeon_ring_write.exit39

radeon_ring_write.exit39:                         ; preds = %if.then.i29, %if.then.radeon_ring_write.exit39_crit_edge
  %15 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ring1.i, align 8
  %17 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wptr.i, align 4
  %inc.i32 = add i32 %18, 1
  store i32 %inc.i32, ptr %wptr.i, align 4
  %arrayidx.i33 = getelementptr i32, ptr %16, i32 %18
  %19 = ptrtoint ptr %arrayidx.i33 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 %or, ptr %arrayidx.i33, align 4
  br label %if.end

if.else:                                          ; preds = %radeon_ring_write.exit
  %20 = add i32 %vm_id, 1286
  %shr3 = and i32 %20, 1072758783
  %or4 = or i32 %shr3, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i41 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i41, label %if.then.i42, label %if.else.radeon_ring_write.exit52_crit_edge

if.else.radeon_ring_write.exit52_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit52

if.then.i42:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #5
  br label %radeon_ring_write.exit52

radeon_ring_write.exit52:                         ; preds = %if.then.i42, %if.else.radeon_ring_write.exit52_crit_edge
  %21 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ring1.i, align 8
  %23 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %wptr.i, align 4
  %inc.i45 = add i32 %24, 1
  store i32 %inc.i45, ptr %wptr.i, align 4
  %arrayidx.i46 = getelementptr i32, ptr %22, i32 %24
  %25 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 %or4, ptr %arrayidx.i46, align 4
  br label %if.end

if.end:                                           ; preds = %radeon_ring_write.exit52, %radeon_ring_write.exit39
  %26 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ptr_mask.i, align 4
  %28 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %wptr.i, align 4
  %and.i48 = and i32 %29, %27
  store i32 %and.i48, ptr %wptr.i, align 4
  %30 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.in = load i32, ptr %count_dw.i, align 4
  %31 = add i32 %.in, -1
  store i32 %31, ptr %count_dw.i, align 4
  %32 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %storemerge.in = load i32, ptr %ring_free_dw.i, align 8
  %storemerge = add i32 %storemerge.in, -1
  store i32 %storemerge, ptr %ring_free_dw.i, align 8
  %shr5 = lshr i64 %pd_addr, 12
  %conv = trunc i64 %shr5 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp.i54 = icmp slt i32 %31, 1
  br i1 %cmp.i54, label %if.then.i55, label %if.end.radeon_ring_write.exit65_crit_edge

if.end.radeon_ring_write.exit65_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit65

if.then.i55:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #5
  br label %radeon_ring_write.exit65

radeon_ring_write.exit65:                         ; preds = %if.then.i55, %if.end.radeon_ring_write.exit65_crit_edge
  %33 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ring1.i, align 8
  %35 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %wptr.i, align 4
  %inc.i58 = add i32 %36, 1
  store i32 %inc.i58, ptr %wptr.i, align 4
  %arrayidx.i59 = getelementptr i32, ptr %34, i32 %36
  %37 = ptrtoint ptr %arrayidx.i59 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 %conv, ptr %arrayidx.i59, align 4
  %38 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ptr_mask.i, align 4
  %40 = load i32, ptr %wptr.i, align 4
  %and.i61 = and i32 %40, %39
  store i32 %and.i61, ptr %wptr.i, align 4
  %41 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %count_dw.i, align 4
  %dec.i62 = add i32 %42, -1
  store i32 %dec.i62, ptr %count_dw.i, align 4
  %43 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i64 = add i32 %44, -1
  store i32 %dec4.i64, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i62)
  %cmp.i67 = icmp slt i32 %dec.i62, 1
  br i1 %cmp.i67, label %if.then.i68, label %radeon_ring_write.exit65.radeon_ring_write.exit78_crit_edge

radeon_ring_write.exit65.radeon_ring_write.exit78_crit_edge: ; preds = %radeon_ring_write.exit65
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit78

if.then.i68:                                      ; preds = %radeon_ring_write.exit65
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #5
  br label %radeon_ring_write.exit78

radeon_ring_write.exit78:                         ; preds = %if.then.i68, %radeon_ring_write.exit65.radeon_ring_write.exit78_crit_edge
  %45 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ring1.i, align 8
  %47 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %wptr.i, align 4
  %inc.i71 = add i32 %48, 1
  store i32 %inc.i71, ptr %wptr.i, align 4
  %arrayidx.i72 = getelementptr i32, ptr %46, i32 %48
  %49 = ptrtoint ptr %arrayidx.i72 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile i32 -1879048192, ptr %arrayidx.i72, align 4
  %50 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ptr_mask.i, align 4
  %52 = load i32, ptr %wptr.i, align 4
  %and.i74 = and i32 %52, %51
  store i32 %and.i74, ptr %wptr.i, align 4
  %53 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %count_dw.i, align 4
  %dec.i75 = add i32 %54, -1
  store i32 %dec.i75, ptr %count_dw.i, align 4
  %55 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i77 = add i32 %56, -1
  store i32 %dec4.i77, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i75)
  %cmp.i80 = icmp slt i32 %dec.i75, 1
  br i1 %cmp.i80, label %if.then.i81, label %radeon_ring_write.exit78.radeon_ring_write.exit91_crit_edge

radeon_ring_write.exit78.radeon_ring_write.exit91_crit_edge: ; preds = %radeon_ring_write.exit78
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit91

if.then.i81:                                      ; preds = %radeon_ring_write.exit78
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #5
  br label %radeon_ring_write.exit91

radeon_ring_write.exit91:                         ; preds = %if.then.i81, %radeon_ring_write.exit78.radeon_ring_write.exit91_crit_edge
  %57 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ring1.i, align 8
  %59 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %wptr.i, align 4
  %inc.i84 = add i32 %60, 1
  store i32 %inc.i84, ptr %wptr.i, align 4
  %arrayidx.i85 = getelementptr i32, ptr %58, i32 %60
  %61 = ptrtoint ptr %arrayidx.i85 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 988448, ptr %arrayidx.i85, align 4
  %62 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ptr_mask.i, align 4
  %64 = load i32, ptr %wptr.i, align 4
  %and.i87 = and i32 %64, %63
  store i32 %and.i87, ptr %wptr.i, align 4
  %65 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %count_dw.i, align 4
  %dec.i88 = add i32 %66, -1
  store i32 %dec.i88, ptr %count_dw.i, align 4
  %67 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i90 = add i32 %68, -1
  store i32 %dec4.i90, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i88)
  %cmp.i93 = icmp slt i32 %dec.i88, 1
  br i1 %cmp.i93, label %if.then.i94, label %radeon_ring_write.exit91.radeon_ring_write.exit104_crit_edge

radeon_ring_write.exit91.radeon_ring_write.exit104_crit_edge: ; preds = %radeon_ring_write.exit91
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit104

if.then.i94:                                      ; preds = %radeon_ring_write.exit91
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #5
  br label %radeon_ring_write.exit104

radeon_ring_write.exit104:                        ; preds = %if.then.i94, %radeon_ring_write.exit91.radeon_ring_write.exit104_crit_edge
  %69 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ring1.i, align 8
  %71 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %wptr.i, align 4
  %inc.i97 = add i32 %72, 1
  store i32 %inc.i97, ptr %wptr.i, align 4
  %arrayidx.i98 = getelementptr i32, ptr %70, i32 %72
  %73 = ptrtoint ptr %arrayidx.i98 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile i32 1, ptr %arrayidx.i98, align 4
  %74 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ptr_mask.i, align 4
  %76 = load i32, ptr %wptr.i, align 4
  %and.i100 = and i32 %76, %75
  store i32 %and.i100, ptr %wptr.i, align 4
  %77 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %count_dw.i, align 4
  %dec.i101 = add i32 %78, -1
  store i32 %dec.i101, ptr %count_dw.i, align 4
  %79 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i103 = add i32 %80, -1
  store i32 %dec4.i103, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i101)
  %cmp.i106 = icmp slt i32 %dec.i101, 1
  br i1 %cmp.i106, label %if.then.i107, label %radeon_ring_write.exit104.radeon_ring_write.exit117_crit_edge

radeon_ring_write.exit104.radeon_ring_write.exit117_crit_edge: ; preds = %radeon_ring_write.exit104
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit117

if.then.i107:                                     ; preds = %radeon_ring_write.exit104
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #5
  br label %radeon_ring_write.exit117

radeon_ring_write.exit117:                        ; preds = %if.then.i107, %radeon_ring_write.exit104.radeon_ring_write.exit117_crit_edge
  %81 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ring1.i, align 8
  %83 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %wptr.i, align 4
  %inc.i110 = add i32 %84, 1
  store i32 %inc.i110, ptr %wptr.i, align 4
  %arrayidx.i111 = getelementptr i32, ptr %82, i32 %84
  %85 = ptrtoint ptr %arrayidx.i111 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile i32 -1879048192, ptr %arrayidx.i111, align 4
  %86 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ptr_mask.i, align 4
  %88 = load i32, ptr %wptr.i, align 4
  %and.i113 = and i32 %88, %87
  store i32 %and.i113, ptr %wptr.i, align 4
  %89 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %count_dw.i, align 4
  %dec.i114 = add i32 %90, -1
  store i32 %dec.i114, ptr %count_dw.i, align 4
  %91 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i116 = add i32 %92, -1
  store i32 %dec4.i116, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i114)
  %cmp.i119 = icmp slt i32 %dec.i114, 1
  br i1 %cmp.i119, label %if.then.i120, label %radeon_ring_write.exit117.radeon_ring_write.exit130_crit_edge

radeon_ring_write.exit117.radeon_ring_write.exit130_crit_edge: ; preds = %radeon_ring_write.exit117
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit130

if.then.i120:                                     ; preds = %radeon_ring_write.exit117
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #5
  br label %radeon_ring_write.exit130

radeon_ring_write.exit130:                        ; preds = %if.then.i120, %radeon_ring_write.exit117.radeon_ring_write.exit130_crit_edge
  %93 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ring1.i, align 8
  %95 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %wptr.i, align 4
  %inc.i123 = add i32 %96, 1
  store i32 %inc.i123, ptr %wptr.i, align 4
  %arrayidx.i124 = getelementptr i32, ptr %94, i32 %96
  %97 = ptrtoint ptr %arrayidx.i124 to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile i32 984350, ptr %arrayidx.i124, align 4
  %98 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %ptr_mask.i, align 4
  %100 = load i32, ptr %wptr.i, align 4
  %and.i126 = and i32 %100, %99
  store i32 %and.i126, ptr %wptr.i, align 4
  %101 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %count_dw.i, align 4
  %dec.i127 = add i32 %102, -1
  store i32 %dec.i127, ptr %count_dw.i, align 4
  %103 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i129 = add i32 %104, -1
  store i32 %dec4.i129, ptr %ring_free_dw.i, align 8
  %shl6 = shl nuw i32 1, %vm_id
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i127)
  %cmp.i132 = icmp slt i32 %dec.i127, 1
  br i1 %cmp.i132, label %if.then.i133, label %radeon_ring_write.exit130.radeon_ring_write.exit143_crit_edge

radeon_ring_write.exit130.radeon_ring_write.exit143_crit_edge: ; preds = %radeon_ring_write.exit130
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit143

if.then.i133:                                     ; preds = %radeon_ring_write.exit130
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #5
  br label %radeon_ring_write.exit143

radeon_ring_write.exit143:                        ; preds = %if.then.i133, %radeon_ring_write.exit130.radeon_ring_write.exit143_crit_edge
  %105 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ring1.i, align 8
  %107 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %wptr.i, align 4
  %inc.i136 = add i32 %108, 1
  store i32 %inc.i136, ptr %wptr.i, align 4
  %arrayidx.i137 = getelementptr i32, ptr %106, i32 %108
  %109 = ptrtoint ptr %arrayidx.i137 to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile i32 %shl6, ptr %arrayidx.i137, align 4
  %110 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %ptr_mask.i, align 4
  %112 = load i32, ptr %wptr.i, align 4
  %and.i139 = and i32 %112, %111
  store i32 %and.i139, ptr %wptr.i, align 4
  %113 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %count_dw.i, align 4
  %dec.i140 = add i32 %114, -1
  store i32 %dec.i140, ptr %count_dw.i, align 4
  %115 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i142 = add i32 %116, -1
  store i32 %dec4.i142, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i140)
  %cmp.i145 = icmp slt i32 %dec.i140, 1
  br i1 %cmp.i145, label %if.then.i146, label %radeon_ring_write.exit143.radeon_ring_write.exit156_crit_edge

radeon_ring_write.exit143.radeon_ring_write.exit156_crit_edge: ; preds = %radeon_ring_write.exit143
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit156

if.then.i146:                                     ; preds = %radeon_ring_write.exit143
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #5
  br label %radeon_ring_write.exit156

radeon_ring_write.exit156:                        ; preds = %if.then.i146, %radeon_ring_write.exit143.radeon_ring_write.exit156_crit_edge
  %117 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ring1.i, align 8
  %119 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %wptr.i, align 4
  %inc.i149 = add i32 %120, 1
  store i32 %inc.i149, ptr %wptr.i, align 4
  %arrayidx.i150 = getelementptr i32, ptr %118, i32 %120
  %121 = ptrtoint ptr %arrayidx.i150 to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile i32 -536870912, ptr %arrayidx.i150, align 4
  %122 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %ptr_mask.i, align 4
  %124 = load i32, ptr %wptr.i, align 4
  %and.i152 = and i32 %124, %123
  store i32 %and.i152, ptr %wptr.i, align 4
  %125 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %count_dw.i, align 4
  %dec.i153 = add i32 %126, -1
  store i32 %dec.i153, ptr %count_dw.i, align 4
  %127 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i155 = add i32 %128, -1
  store i32 %dec4.i155, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i153)
  %cmp.i158 = icmp slt i32 %dec.i153, 1
  br i1 %cmp.i158, label %if.then.i159, label %radeon_ring_write.exit156.radeon_ring_write.exit169_crit_edge

radeon_ring_write.exit156.radeon_ring_write.exit169_crit_edge: ; preds = %radeon_ring_write.exit156
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit169

if.then.i159:                                     ; preds = %radeon_ring_write.exit156
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #5
  br label %radeon_ring_write.exit169

radeon_ring_write.exit169:                        ; preds = %if.then.i159, %radeon_ring_write.exit156.radeon_ring_write.exit169_crit_edge
  %129 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ring1.i, align 8
  %131 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %wptr.i, align 4
  %inc.i162 = add i32 %132, 1
  store i32 %inc.i162, ptr %wptr.i, align 4
  %arrayidx.i163 = getelementptr i32, ptr %130, i32 %132
  %133 = ptrtoint ptr %arrayidx.i163 to i32
  call void @__asan_store4_noabort(i32 %133)
  store volatile i32 5240, ptr %arrayidx.i163, align 4
  %134 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %ptr_mask.i, align 4
  %136 = load i32, ptr %wptr.i, align 4
  %and.i165 = and i32 %136, %135
  store i32 %and.i165, ptr %wptr.i, align 4
  %137 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %count_dw.i, align 4
  %dec.i166 = add i32 %138, -1
  store i32 %dec.i166, ptr %count_dw.i, align 4
  %139 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i168 = add i32 %140, -1
  store i32 %dec4.i168, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i166)
  %cmp.i171 = icmp slt i32 %dec.i166, 1
  br i1 %cmp.i171, label %if.then.i172, label %radeon_ring_write.exit169.radeon_ring_write.exit182_crit_edge

radeon_ring_write.exit169.radeon_ring_write.exit182_crit_edge: ; preds = %radeon_ring_write.exit169
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit182

if.then.i172:                                     ; preds = %radeon_ring_write.exit169
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #5
  br label %radeon_ring_write.exit182

radeon_ring_write.exit182:                        ; preds = %if.then.i172, %radeon_ring_write.exit169.radeon_ring_write.exit182_crit_edge
  %141 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %ring1.i, align 8
  %143 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %wptr.i, align 4
  %inc.i175 = add i32 %144, 1
  store i32 %inc.i175, ptr %wptr.i, align 4
  %arrayidx.i176 = getelementptr i32, ptr %142, i32 %144
  %145 = ptrtoint ptr %arrayidx.i176 to i32
  call void @__asan_store4_noabort(i32 %145)
  store volatile i32 16711680, ptr %arrayidx.i176, align 4
  %146 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %ptr_mask.i, align 4
  %148 = load i32, ptr %wptr.i, align 4
  %and.i178 = and i32 %148, %147
  store i32 %and.i178, ptr %wptr.i, align 4
  %149 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %count_dw.i, align 4
  %dec.i179 = add i32 %150, -1
  store i32 %dec.i179, ptr %count_dw.i, align 4
  %151 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i181 = add i32 %152, -1
  store i32 %dec4.i181, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i179)
  %cmp.i184 = icmp slt i32 %dec.i179, 1
  br i1 %cmp.i184, label %if.then.i185, label %radeon_ring_write.exit182.radeon_ring_write.exit195_crit_edge

radeon_ring_write.exit182.radeon_ring_write.exit195_crit_edge: ; preds = %radeon_ring_write.exit182
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit195

if.then.i185:                                     ; preds = %radeon_ring_write.exit182
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #5
  br label %radeon_ring_write.exit195

radeon_ring_write.exit195:                        ; preds = %if.then.i185, %radeon_ring_write.exit182.radeon_ring_write.exit195_crit_edge
  %153 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %ring1.i, align 8
  %155 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %wptr.i, align 4
  %inc.i188 = add i32 %156, 1
  store i32 %inc.i188, ptr %wptr.i, align 4
  %arrayidx.i189 = getelementptr i32, ptr %154, i32 %156
  %157 = ptrtoint ptr %arrayidx.i189 to i32
  call void @__asan_store4_noabort(i32 %157)
  store volatile i32 %shl6, ptr %arrayidx.i189, align 4
  %158 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %ptr_mask.i, align 4
  %160 = load i32, ptr %wptr.i, align 4
  %and.i191 = and i32 %160, %159
  store i32 %and.i191, ptr %wptr.i, align 4
  %161 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %count_dw.i, align 4
  %dec.i192 = add i32 %162, -1
  store i32 %dec.i192, ptr %count_dw.i, align 4
  %163 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i194 = add i32 %164, -1
  store i32 %dec4.i194, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i192)
  %cmp.i197 = icmp slt i32 %dec.i192, 1
  br i1 %cmp.i197, label %if.then.i198, label %radeon_ring_write.exit195.radeon_ring_write.exit208_crit_edge

radeon_ring_write.exit195.radeon_ring_write.exit208_crit_edge: ; preds = %radeon_ring_write.exit195
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit208

if.then.i198:                                     ; preds = %radeon_ring_write.exit195
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #5
  br label %radeon_ring_write.exit208

radeon_ring_write.exit208:                        ; preds = %if.then.i198, %radeon_ring_write.exit195.radeon_ring_write.exit208_crit_edge
  %165 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %ring1.i, align 8
  %167 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %wptr.i, align 4
  %inc.i201 = add i32 %168, 1
  store i32 %inc.i201, ptr %wptr.i, align 4
  %arrayidx.i202 = getelementptr i32, ptr %166, i32 %168
  %169 = ptrtoint ptr %arrayidx.i202 to i32
  call void @__asan_store4_noabort(i32 %169)
  store volatile i32 0, ptr %arrayidx.i202, align 4
  %170 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %ptr_mask.i, align 4
  %172 = load i32, ptr %wptr.i, align 4
  %and.i204 = and i32 %172, %171
  store i32 %and.i204, ptr %wptr.i, align 4
  %173 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %count_dw.i, align 4
  %dec.i205 = add i32 %174, -1
  store i32 %dec.i205, ptr %count_dw.i, align 4
  %175 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i207 = add i32 %176, -1
  store i32 %dec4.i207, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i205)
  %cmp.i210 = icmp slt i32 %dec.i205, 1
  br i1 %cmp.i210, label %if.then.i211, label %radeon_ring_write.exit208.radeon_ring_write.exit221_crit_edge

radeon_ring_write.exit208.radeon_ring_write.exit221_crit_edge: ; preds = %radeon_ring_write.exit208
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit221

if.then.i211:                                     ; preds = %radeon_ring_write.exit208
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #5
  br label %radeon_ring_write.exit221

radeon_ring_write.exit221:                        ; preds = %if.then.i211, %radeon_ring_write.exit208.radeon_ring_write.exit221_crit_edge
  %177 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %ring1.i, align 8
  %179 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %wptr.i, align 4
  %inc.i214 = add i32 %180, 1
  store i32 %inc.i214, ptr %wptr.i, align 4
  %arrayidx.i215 = getelementptr i32, ptr %178, i32 %180
  %181 = ptrtoint ptr %arrayidx.i215 to i32
  call void @__asan_store4_noabort(i32 %181)
  store volatile i32 32, ptr %arrayidx.i215, align 4
  %182 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %ptr_mask.i, align 4
  %184 = load i32, ptr %wptr.i, align 4
  %and.i217 = and i32 %184, %183
  store i32 %and.i217, ptr %wptr.i, align 4
  %185 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %count_dw.i, align 4
  %dec.i218 = add i32 %186, -1
  store i32 %dec.i218, ptr %count_dw.i, align 4
  %187 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i220 = add i32 %188, -1
  store i32 %dec4.i220, ptr %ring_free_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @si_copy_dma(ptr noundef %rdev, i64 noundef %src_offset, i64 noundef %dst_offset, i32 noundef %num_gpu_pages, ptr noundef %resv) local_unnamed_addr #0 align 64 {
entry:
  %fence = alloca ptr, align 4
  %sync = alloca %struct.radeon_sync, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fence) #5
  %0 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fence, align 4, !annotation !13
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %sync) #5
  %1 = call ptr @memset(ptr %sync, i32 255, i32 52)
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %2 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asic, align 8
  %dma_ring_index = getelementptr inbounds %struct.radeon_asic, ptr %3, i32 0, i32 17, i32 3
  %4 = ptrtoint ptr %dma_ring_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_ring_index, align 4
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %5
  call void @radeon_sync_create(ptr noundef nonnull %sync) #5
  %shl = shl i32 %num_gpu_pages, 12
  %sub = add i32 %shl, 1048574
  %div = udiv i32 %sub, 1048575
  %mul = mul nuw nsw i32 %div, 5
  %add2 = add nuw nsw i32 %mul, 11
  %call = call i32 @radeon_ring_lock(ptr noundef %rdev, ptr noundef %arrayidx, i32 noundef %add2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %call) #5
  call void @radeon_sync_free(ptr noundef %rdev, ptr noundef nonnull %sync, ptr noundef null) #5
  %6 = inttoptr i32 %call to ptr
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call i32 @radeon_sync_resv(ptr noundef %rdev, ptr noundef nonnull %sync, ptr noundef %resv, i1 noundef zeroext false) #5
  %idx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %5, i32 19
  %7 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idx, align 8
  %call5 = call i32 @radeon_sync_rings(ptr noundef %rdev, ptr noundef nonnull %sync, i32 noundef %8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048575, i32 %sub)
  %9 = icmp ult i32 %sub, 1048575
  br i1 %9, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %count_dw.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %5, i32 11
  %ring1.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %5, i32 2
  %wptr.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %5, i32 7
  %ptr_mask.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %5, i32 16
  %ring_free_dw.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %5, i32 10
  br label %for.body

for.body:                                         ; preds = %radeon_ring_write.exit125.for.body_crit_edge, %for.body.lr.ph
  %i.0130 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %radeon_ring_write.exit125.for.body_crit_edge ]
  %size_in_bytes.0129 = phi i32 [ %shl, %for.body.lr.ph ], [ %sub9, %radeon_ring_write.exit125.for.body_crit_edge ]
  %src_offset.addr.0128 = phi i64 [ %src_offset, %for.body.lr.ph ], [ %add22, %radeon_ring_write.exit125.for.body_crit_edge ]
  %dst_offset.addr.0127 = phi i64 [ %dst_offset, %for.body.lr.ph ], [ %add24, %radeon_ring_write.exit125.for.body_crit_edge ]
  %10 = call i32 @llvm.umin.i32(i32 %size_in_bytes.0129, i32 1048575)
  %sub9 = sub i32 %size_in_bytes.0129, %10
  %or = or i32 %10, 872415232
  %11 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count_dw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i = icmp slt i32 %12, 1
  br i1 %cmp.i, label %if.then.i, label %for.body.radeon_ring_write.exit_crit_edge

for.body.radeon_ring_write.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #5
  br label %radeon_ring_write.exit

radeon_ring_write.exit:                           ; preds = %if.then.i, %for.body.radeon_ring_write.exit_crit_edge
  %13 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ring1.i, align 8
  %15 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wptr.i, align 4
  %inc.i = add i32 %16, 1
  store i32 %inc.i, ptr %wptr.i, align 4
  %arrayidx.i = getelementptr i32, ptr %14, i32 %16
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 %or, ptr %arrayidx.i, align 4
  %18 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ptr_mask.i, align 4
  %20 = load i32, ptr %wptr.i, align 4
  %and.i = and i32 %20, %19
  store i32 %and.i, ptr %wptr.i, align 4
  %21 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %count_dw.i, align 4
  %dec.i = add i32 %22, -1
  store i32 %dec.i, ptr %count_dw.i, align 4
  %23 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i = add i32 %24, -1
  store i32 %dec4.i, ptr %ring_free_dw.i, align 8
  %conv = trunc i64 %dst_offset.addr.0127 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i75 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i75, label %if.then.i76, label %radeon_ring_write.exit.radeon_ring_write.exit86_crit_edge

radeon_ring_write.exit.radeon_ring_write.exit86_crit_edge: ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit86

if.then.i76:                                      ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #5
  br label %radeon_ring_write.exit86

radeon_ring_write.exit86:                         ; preds = %if.then.i76, %radeon_ring_write.exit.radeon_ring_write.exit86_crit_edge
  %25 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ring1.i, align 8
  %27 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %wptr.i, align 4
  %inc.i79 = add i32 %28, 1
  store i32 %inc.i79, ptr %wptr.i, align 4
  %arrayidx.i80 = getelementptr i32, ptr %26, i32 %28
  %29 = ptrtoint ptr %arrayidx.i80 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile i32 %conv, ptr %arrayidx.i80, align 4
  %30 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ptr_mask.i, align 4
  %32 = load i32, ptr %wptr.i, align 4
  %and.i82 = and i32 %32, %31
  store i32 %and.i82, ptr %wptr.i, align 4
  %33 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %count_dw.i, align 4
  %dec.i83 = add i32 %34, -1
  store i32 %dec.i83, ptr %count_dw.i, align 4
  %35 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i85 = add i32 %36, -1
  store i32 %dec4.i85, ptr %ring_free_dw.i, align 8
  %conv13 = trunc i64 %src_offset.addr.0128 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i83)
  %cmp.i88 = icmp slt i32 %dec.i83, 1
  br i1 %cmp.i88, label %if.then.i89, label %radeon_ring_write.exit86.radeon_ring_write.exit99_crit_edge

radeon_ring_write.exit86.radeon_ring_write.exit99_crit_edge: ; preds = %radeon_ring_write.exit86
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit99

if.then.i89:                                      ; preds = %radeon_ring_write.exit86
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #5
  br label %radeon_ring_write.exit99

radeon_ring_write.exit99:                         ; preds = %if.then.i89, %radeon_ring_write.exit86.radeon_ring_write.exit99_crit_edge
  %37 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ring1.i, align 8
  %39 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %wptr.i, align 4
  %inc.i92 = add i32 %40, 1
  store i32 %inc.i92, ptr %wptr.i, align 4
  %arrayidx.i93 = getelementptr i32, ptr %38, i32 %40
  %41 = ptrtoint ptr %arrayidx.i93 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 %conv13, ptr %arrayidx.i93, align 4
  %42 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ptr_mask.i, align 4
  %44 = load i32, ptr %wptr.i, align 4
  %and.i95 = and i32 %44, %43
  store i32 %and.i95, ptr %wptr.i, align 4
  %45 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %count_dw.i, align 4
  %dec.i96 = add i32 %46, -1
  store i32 %dec.i96, ptr %count_dw.i, align 4
  %47 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i98 = add i32 %48, -1
  store i32 %dec4.i98, ptr %ring_free_dw.i, align 8
  %shr = lshr i64 %dst_offset.addr.0127, 32
  %conv15 = trunc i64 %shr to i32
  %and16 = and i32 %conv15, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i96)
  %cmp.i101 = icmp slt i32 %dec.i96, 1
  br i1 %cmp.i101, label %if.then.i102, label %radeon_ring_write.exit99.radeon_ring_write.exit112_crit_edge

radeon_ring_write.exit99.radeon_ring_write.exit112_crit_edge: ; preds = %radeon_ring_write.exit99
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit112

if.then.i102:                                     ; preds = %radeon_ring_write.exit99
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #5
  br label %radeon_ring_write.exit112

radeon_ring_write.exit112:                        ; preds = %if.then.i102, %radeon_ring_write.exit99.radeon_ring_write.exit112_crit_edge
  %49 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ring1.i, align 8
  %51 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %wptr.i, align 4
  %inc.i105 = add i32 %52, 1
  store i32 %inc.i105, ptr %wptr.i, align 4
  %arrayidx.i106 = getelementptr i32, ptr %50, i32 %52
  %53 = ptrtoint ptr %arrayidx.i106 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile i32 %and16, ptr %arrayidx.i106, align 4
  %54 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ptr_mask.i, align 4
  %56 = load i32, ptr %wptr.i, align 4
  %and.i108 = and i32 %56, %55
  store i32 %and.i108, ptr %wptr.i, align 4
  %57 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %count_dw.i, align 4
  %dec.i109 = add i32 %58, -1
  store i32 %dec.i109, ptr %count_dw.i, align 4
  %59 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i111 = add i32 %60, -1
  store i32 %dec4.i111, ptr %ring_free_dw.i, align 8
  %shr17 = lshr i64 %src_offset.addr.0128, 32
  %conv19 = trunc i64 %shr17 to i32
  %and20 = and i32 %conv19, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i109)
  %cmp.i114 = icmp slt i32 %dec.i109, 1
  br i1 %cmp.i114, label %if.then.i115, label %radeon_ring_write.exit112.radeon_ring_write.exit125_crit_edge

radeon_ring_write.exit112.radeon_ring_write.exit125_crit_edge: ; preds = %radeon_ring_write.exit112
  call void @__sanitizer_cov_trace_pc() #7
  br label %radeon_ring_write.exit125

if.then.i115:                                     ; preds = %radeon_ring_write.exit112
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #5
  br label %radeon_ring_write.exit125

radeon_ring_write.exit125:                        ; preds = %if.then.i115, %radeon_ring_write.exit112.radeon_ring_write.exit125_crit_edge
  %61 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ring1.i, align 8
  %63 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %wptr.i, align 4
  %inc.i118 = add i32 %64, 1
  store i32 %inc.i118, ptr %wptr.i, align 4
  %arrayidx.i119 = getelementptr i32, ptr %62, i32 %64
  %65 = ptrtoint ptr %arrayidx.i119 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile i32 %and20, ptr %arrayidx.i119, align 4
  %66 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ptr_mask.i, align 4
  %68 = load i32, ptr %wptr.i, align 4
  %and.i121 = and i32 %68, %67
  store i32 %and.i121, ptr %wptr.i, align 4
  %69 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %count_dw.i, align 4
  %dec.i122 = add i32 %70, -1
  store i32 %dec.i122, ptr %count_dw.i, align 4
  %71 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i124 = add i32 %72, -1
  store i32 %dec4.i124, ptr %ring_free_dw.i, align 8
  %conv21 = zext i32 %10 to i64
  %add22 = add i64 %src_offset.addr.0128, %conv21
  %add24 = add i64 %dst_offset.addr.0127, %conv21
  %inc = add nuw nsw i32 %i.0130, 1
  %exitcond.not = icmp eq i32 %inc, %div
  br i1 %exitcond.not, label %radeon_ring_write.exit125.for.end_crit_edge, label %radeon_ring_write.exit125.for.body_crit_edge

radeon_ring_write.exit125.for.body_crit_edge:     ; preds = %radeon_ring_write.exit125
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

radeon_ring_write.exit125.for.end_crit_edge:      ; preds = %radeon_ring_write.exit125
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %radeon_ring_write.exit125.for.end_crit_edge, %if.end.for.end_crit_edge
  %73 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %idx, align 8
  %call26 = call i32 @radeon_fence_emit(ptr noundef %rdev, ptr noundef nonnull %fence, i32 noundef %74) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end30, label %if.then28

if.then28:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @radeon_ring_unlock_undo(ptr noundef %rdev, ptr noundef %arrayidx) #5
  call void @radeon_sync_free(ptr noundef %rdev, ptr noundef nonnull %sync, ptr noundef null) #5
  %75 = inttoptr i32 %call26 to ptr
  br label %cleanup

if.end30:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @radeon_ring_unlock_commit(ptr noundef %rdev, ptr noundef %arrayidx, i1 noundef zeroext false) #5
  %76 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %fence, align 4
  call void @radeon_sync_free(ptr noundef %rdev, ptr noundef nonnull %sync, ptr noundef %77) #5
  %78 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %fence, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then28, %if.then
  %retval.0 = phi ptr [ %6, %if.then ], [ %75, %if.then28 ], [ %79, %if.end30 ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %sync) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence) #5
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_sync_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_ring_lock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_sync_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_sync_resv(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_sync_rings(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_fence_emit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ring_unlock_undo(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ring_unlock_commit(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/si_dma.c", i32 249, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/radeon.h", i32 2721, i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"auto-init"}
