; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/vce_v2_0.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/vce_v2_0.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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

@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/gpu/drm/radeon/vce_v2_0.c\00", [62 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [37 x i8] c"../drivers/gpu/drm/radeon/vce_v2_0.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 154, i32 2 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vce_v2_0_enable_mgcg(ptr noundef %rdev, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %land.lhs.true, label %entry.if.else4_crit_edge

entry.if.else4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else4

land.lhs.true:                                    ; preds = %entry
  %cg_flags = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 109
  %0 = ptrtoint ptr %cg_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cg_flags, align 4
  %and = and i32 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true.if.else4_crit_edge, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9

land.lhs.true.if.else4_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else4

if.else4:                                         ; preds = %land.lhs.true.if.else4_crit_edge, %entry.if.else4_crit_edge
  %rmmio_size.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %2 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 133024, i32 %3)
  %cmp.i.i = icmp ugt i32 %3, 133024
  br i1 %cmp.i.i, label %do.body.i.i, label %if.else.i.i

do.body.i.i:                                      ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %4 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 133024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 117440512) #3, !srcloc !12
  br label %if.end9

if.else.i.i:                                      ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 133024, i32 noundef 7) #3
  br label %if.end9

if.end9:                                          ; preds = %if.else.i.i, %do.body.i.i, %land.lhs.true.if.end9_crit_edge
  %.sink = phi i1 [ true, %land.lhs.true.if.end9_crit_edge ], [ false, %do.body.i.i ], [ false, %if.else.i.i ]
  tail call fastcc void @vce_v2_0_set_dyn_cg(ptr noundef %rdev, i1 noundef zeroext %.sink)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vce_v2_0_set_dyn_cg(ptr noundef %rdev, i1 noundef zeroext %gated) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %0 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131836, i32 %1)
  %cmp.i = icmp ugt i32 %1, 131836
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %2 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 131836
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !13
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef 131836) #3
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i ], [ %5, %if.then.i ]
  %and = and i32 %retval.0.i, -15138823
  %or = or i32 %and, 14745600
  %or1 = and i32 %retval.0.i, -15139048
  %and2 = or i32 %or1, 225
  %tmp.0 = select i1 %gated, i32 %or, i32 %and2
  %6 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131836, i32 %7)
  %cmp.i36 = icmp ugt i32 %7, 131836
  br i1 %cmp.i36, label %do.body.i, label %if.else.i39

do.body.i:                                        ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %8 = tail call i32 @llvm.bswap.i32(i32 %tmp.0) #3
  %rmmio.i37 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %9 = ptrtoint ptr %rmmio.i37 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmmio.i37, align 4
  %add.ptr.i38 = getelementptr i8, ptr %10, i32 131836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 %8) #3, !srcloc !12
  br label %r100_mm_wreg.exit

if.else.i39:                                      ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 131836, i32 noundef %tmp.0) #3
  br label %r100_mm_wreg.exit

r100_mm_wreg.exit:                                ; preds = %if.else.i39, %do.body.i
  %11 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 133052, i32 %12)
  %cmp.i41 = icmp ugt i32 %12, 133052
  br i1 %cmp.i41, label %if.then.i44, label %if.else.i46

if.then.i44:                                      ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #5
  %rmmio.i42 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %13 = ptrtoint ptr %rmmio.i42 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rmmio.i42, align 4
  %add.ptr.i43 = getelementptr i8, ptr %14, i32 133052
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43) #3, !srcloc !13
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  br label %r100_mm_rreg.exit48

if.else.i46:                                      ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #5
  %call3.i45 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef 133052) #3
  br label %r100_mm_rreg.exit48

r100_mm_rreg.exit48:                              ; preds = %if.else.i46, %if.then.i44
  %retval.0.i47 = phi i32 [ %call3.i45, %if.else.i46 ], [ %16, %if.then.i44 ]
  %and5 = and i32 %retval.0.i47, 14688255
  call void @__sanitizer_cov_trace_cmp4(i32 %and5, i32 %retval.0.i47)
  %cmp.not = icmp eq i32 %and5, %retval.0.i47
  br i1 %cmp.not, label %r100_mm_rreg.exit48.if.end7_crit_edge, label %if.then6

r100_mm_rreg.exit48.if.end7_crit_edge:            ; preds = %r100_mm_rreg.exit48
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

if.then6:                                         ; preds = %r100_mm_rreg.exit48
  %17 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 133052, i32 %18)
  %cmp.i50 = icmp ugt i32 %18, 133052
  br i1 %cmp.i50, label %do.body.i53, label %if.else.i54

do.body.i53:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %19 = tail call i32 @llvm.bswap.i32(i32 %and5) #3
  %rmmio.i51 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %20 = ptrtoint ptr %rmmio.i51 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio.i51, align 4
  %add.ptr.i52 = getelementptr i8, ptr %21, i32 133052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 %19) #3, !srcloc !12
  br label %if.end7

if.else.i54:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 133052, i32 noundef %and5) #3
  br label %if.end7

if.end7:                                          ; preds = %if.else.i54, %do.body.i53, %r100_mm_rreg.exit48.if.end7_crit_edge
  %22 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 133056, i32 %23)
  %cmp.i57 = icmp ugt i32 %23, 133056
  br i1 %cmp.i57, label %if.then.i60, label %if.else.i62

if.then.i60:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  %rmmio.i58 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %24 = ptrtoint ptr %rmmio.i58 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmmio.i58, align 4
  %add.ptr.i59 = getelementptr i8, ptr %25, i32 133056
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59) #3, !srcloc !13
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  br label %r100_mm_rreg.exit64

if.else.i62:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  %call3.i61 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef 133056) #3
  br label %r100_mm_rreg.exit64

r100_mm_rreg.exit64:                              ; preds = %if.else.i62, %if.then.i60
  %retval.0.i63 = phi i32 [ %call3.i61, %if.else.i62 ], [ %27, %if.then.i60 ]
  %and9 = and i32 %retval.0.i63, -1021
  call void @__sanitizer_cov_trace_cmp4(i32 %and9, i32 %retval.0.i63)
  %cmp10.not = icmp eq i32 %and9, %retval.0.i63
  br i1 %cmp10.not, label %r100_mm_rreg.exit64.if.end12_crit_edge, label %if.then11

r100_mm_rreg.exit64.if.end12_crit_edge:           ; preds = %r100_mm_rreg.exit64
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12

if.then11:                                        ; preds = %r100_mm_rreg.exit64
  %28 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 133056, i32 %29)
  %cmp.i66 = icmp ugt i32 %29, 133056
  br i1 %cmp.i66, label %do.body.i69, label %if.else.i70

do.body.i69:                                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %30 = tail call i32 @llvm.bswap.i32(i32 %and9) #3
  %rmmio.i67 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %31 = ptrtoint ptr %rmmio.i67 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rmmio.i67, align 4
  %add.ptr.i68 = getelementptr i8, ptr %32, i32 133056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68, i32 %30) #3, !srcloc !12
  br label %if.end12

if.else.i70:                                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 133056, i32 noundef %and9) #3
  br label %if.end12

if.end12:                                         ; preds = %if.else.i70, %do.body.i69, %r100_mm_rreg.exit64.if.end12_crit_edge
  br i1 %gated, label %if.then14, label %if.end12.if.end15_crit_edge

if.end12.if.end15_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end15

if.then14:                                        ; preds = %if.end12
  %33 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 133024, i32 %34)
  %cmp.i73 = icmp ugt i32 %34, 133024
  br i1 %cmp.i73, label %do.body.i76, label %if.else.i77

do.body.i76:                                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %rmmio.i74 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %35 = ptrtoint ptr %rmmio.i74 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rmmio.i74, align 4
  %add.ptr.i75 = getelementptr i8, ptr %36, i32 133024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75, i32 0) #3, !srcloc !12
  br label %if.end15

if.else.i77:                                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 133024, i32 noundef 0) #3
  br label %if.end15

if.end15:                                         ; preds = %if.else.i77, %do.body.i76, %if.end12.if.end15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vce_v2_0_bo_size(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %vce_fw = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 81
  %0 = ptrtoint ptr %vce_fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vce_fw, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %3)
  %cmp = icmp ugt i32 %3, 262144
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !15

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 154, i32 noundef 9, ptr noundef null) #3
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 704512
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vce_v2_0_resume(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %gpu_addr = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 60, i32 1
  %0 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %gpu_addr, align 8
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %2 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131832, i32 %3)
  %cmp.i = icmp ugt i32 %3, 131832
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 131832
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !13
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef 131832) #3
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i ], [ %7, %if.then.i ]
  %and = and i32 %retval.0.i, -65537
  %8 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131832, i32 %9)
  %cmp.i94 = icmp ugt i32 %9, 131832
  br i1 %cmp.i94, label %do.body.i, label %if.else.i97

do.body.i:                                        ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %10 = tail call i32 @llvm.bswap.i32(i32 %and) #3
  %rmmio.i95 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %11 = ptrtoint ptr %rmmio.i95 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rmmio.i95, align 4
  %add.ptr.i96 = getelementptr i8, ptr %12, i32 131832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i96, i32 %10) #3, !srcloc !12
  br label %r100_mm_wreg.exit

if.else.i97:                                      ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 131832, i32 noundef %and) #3
  br label %r100_mm_wreg.exit

r100_mm_wreg.exit:                                ; preds = %if.else.i97, %do.body.i
  %13 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 133052, i32 %14)
  %cmp.i99 = icmp ugt i32 %14, 133052
  br i1 %cmp.i99, label %if.then.i102, label %if.else.i104

if.then.i102:                                     ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #5
  %rmmio.i100 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %15 = ptrtoint ptr %rmmio.i100 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i100, align 4
  %add.ptr.i101 = getelementptr i8, ptr %16, i32 133052
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i101) #3, !srcloc !13
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  br label %r100_mm_rreg.exit106

if.else.i104:                                     ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #5
  %call3.i103 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef 133052) #3
  br label %r100_mm_rreg.exit106

r100_mm_rreg.exit106:                             ; preds = %if.else.i104, %if.then.i102
  %retval.0.i105 = phi i32 [ %call3.i103, %if.else.i104 ], [ %18, %if.then.i102 ]
  %and4 = and i32 %retval.0.i105, 6295551
  %or5 = or i32 %and4, 2093056
  %19 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 133052, i32 %20)
  %cmp.i108 = icmp ugt i32 %20, 133052
  br i1 %cmp.i108, label %do.body.i111, label %if.else.i112

do.body.i111:                                     ; preds = %r100_mm_rreg.exit106
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %21 = tail call i32 @llvm.bswap.i32(i32 %or5) #3
  %rmmio.i109 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %22 = ptrtoint ptr %rmmio.i109 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmmio.i109, align 4
  %add.ptr.i110 = getelementptr i8, ptr %23, i32 133052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i110, i32 %21) #3, !srcloc !12
  br label %r100_mm_wreg.exit113

if.else.i112:                                     ; preds = %r100_mm_rreg.exit106
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 133052, i32 noundef %or5) #3
  br label %r100_mm_wreg.exit113

r100_mm_wreg.exit113:                             ; preds = %if.else.i112, %do.body.i111
  %24 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 133056, i32 %25)
  %cmp.i115 = icmp ugt i32 %25, 133056
  br i1 %cmp.i115, label %if.then.i118, label %if.else.i120

if.then.i118:                                     ; preds = %r100_mm_wreg.exit113
  call void @__sanitizer_cov_trace_pc() #5
  %rmmio.i116 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %26 = ptrtoint ptr %rmmio.i116 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmmio.i116, align 4
  %add.ptr.i117 = getelementptr i8, ptr %27, i32 133056
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i117) #3, !srcloc !13
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  br label %r100_mm_rreg.exit122

if.else.i120:                                     ; preds = %r100_mm_wreg.exit113
  call void @__sanitizer_cov_trace_pc() #5
  %call3.i119 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef 133056) #3
  br label %r100_mm_rreg.exit122

r100_mm_rreg.exit122:                             ; preds = %if.else.i120, %if.then.i118
  %retval.0.i121 = phi i32 [ %call3.i119, %if.else.i120 ], [ %29, %if.then.i118 ]
  %or12 = or i32 %retval.0.i121, 63
  %30 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 133056, i32 %31)
  %cmp.i124 = icmp ugt i32 %31, 133056
  br i1 %cmp.i124, label %do.body.i127, label %if.else.i128

do.body.i127:                                     ; preds = %r100_mm_rreg.exit122
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %32 = tail call i32 @llvm.bswap.i32(i32 %or12) #3
  %rmmio.i125 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %33 = ptrtoint ptr %rmmio.i125 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rmmio.i125, align 4
  %add.ptr.i126 = getelementptr i8, ptr %34, i32 133056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i126, i32 %32) #3, !srcloc !12
  br label %r100_mm_wreg.exit129

if.else.i128:                                     ; preds = %r100_mm_rreg.exit122
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 133056, i32 noundef %or12) #3
  br label %r100_mm_wreg.exit129

r100_mm_wreg.exit129:                             ; preds = %if.else.i128, %do.body.i127
  %35 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131836, i32 %36)
  %cmp.i131 = icmp ugt i32 %36, 131836
  br i1 %cmp.i131, label %do.body.i134, label %if.else.i135

do.body.i134:                                     ; preds = %r100_mm_wreg.exit129
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %rmmio.i132 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %37 = ptrtoint ptr %rmmio.i132 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rmmio.i132, align 4
  %add.ptr.i133 = getelementptr i8, ptr %38, i32 131836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i133, i32 -150994944) #3, !srcloc !12
  br label %r100_mm_wreg.exit136

if.else.i135:                                     ; preds = %r100_mm_wreg.exit129
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 131836, i32 noundef 247) #3
  br label %r100_mm_wreg.exit136

r100_mm_wreg.exit136:                             ; preds = %if.else.i135, %do.body.i134
  %39 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 136344, i32 %40)
  %cmp.i138 = icmp ugt i32 %40, 136344
  br i1 %cmp.i138, label %do.body.i141, label %if.else.i142

do.body.i141:                                     ; preds = %r100_mm_wreg.exit136
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %rmmio.i139 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %41 = ptrtoint ptr %rmmio.i139 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rmmio.i139, align 4
  %add.ptr.i140 = getelementptr i8, ptr %42, i32 136344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i140, i32 8403200) #3, !srcloc !12
  br label %r100_mm_wreg.exit143

if.else.i142:                                     ; preds = %r100_mm_wreg.exit136
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 136344, i32 noundef 3768320) #3
  br label %r100_mm_wreg.exit143

r100_mm_wreg.exit143:                             ; preds = %if.else.i142, %do.body.i141
  %43 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 136436, i32 %44)
  %cmp.i145 = icmp ugt i32 %44, 136436
  br i1 %cmp.i145, label %if.then.i148, label %if.else.i150

if.then.i148:                                     ; preds = %r100_mm_wreg.exit143
  call void @__sanitizer_cov_trace_pc() #5
  %rmmio.i146 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %45 = ptrtoint ptr %rmmio.i146 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rmmio.i146, align 4
  %add.ptr.i147 = getelementptr i8, ptr %46, i32 136436
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i147) #3, !srcloc !13
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  br label %r100_mm_rreg.exit152

if.else.i150:                                     ; preds = %r100_mm_wreg.exit143
  call void @__sanitizer_cov_trace_pc() #5
  %call3.i149 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef 136436) #3
  br label %r100_mm_rreg.exit152

r100_mm_rreg.exit152:                             ; preds = %if.else.i150, %if.then.i148
  %retval.0.i151 = phi i32 [ %call3.i149, %if.else.i150 ], [ %48, %if.then.i148 ]
  %and18 = and i32 %retval.0.i151, -2
  %49 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 136436, i32 %50)
  %cmp.i154 = icmp ugt i32 %50, 136436
  br i1 %cmp.i154, label %do.body.i157, label %if.else.i158

do.body.i157:                                     ; preds = %r100_mm_rreg.exit152
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %51 = tail call i32 @llvm.bswap.i32(i32 %and18) #3
  %rmmio.i155 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %52 = ptrtoint ptr %rmmio.i155 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rmmio.i155, align 4
  %add.ptr.i156 = getelementptr i8, ptr %53, i32 136436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i156, i32 %51) #3, !srcloc !12
  br label %r100_mm_wreg.exit159

if.else.i158:                                     ; preds = %r100_mm_rreg.exit152
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 136436, i32 noundef %and18) #3
  br label %r100_mm_wreg.exit159

r100_mm_wreg.exit159:                             ; preds = %if.else.i158, %do.body.i157
  %54 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 136372, i32 %55)
  %cmp.i161 = icmp ugt i32 %55, 136372
  br i1 %cmp.i161, label %do.body.i164, label %if.else.i165

do.body.i164:                                     ; preds = %r100_mm_wreg.exit159
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %rmmio.i162 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %56 = ptrtoint ptr %rmmio.i162 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rmmio.i162, align 4
  %add.ptr.i163 = getelementptr i8, ptr %57, i32 136372
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i163, i32 0) #3, !srcloc !12
  br label %r100_mm_wreg.exit166

if.else.i165:                                     ; preds = %r100_mm_wreg.exit159
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 136372, i32 noundef 0) #3
  br label %r100_mm_wreg.exit166

r100_mm_wreg.exit166:                             ; preds = %if.else.i165, %do.body.i164
  %58 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 136376, i32 %59)
  %cmp.i168 = icmp ugt i32 %59, 136376
  br i1 %cmp.i168, label %do.body.i171, label %if.else.i172

do.body.i171:                                     ; preds = %r100_mm_wreg.exit166
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %rmmio.i169 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %60 = ptrtoint ptr %rmmio.i169 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rmmio.i169, align 4
  %add.ptr.i170 = getelementptr i8, ptr %61, i32 136376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i170, i32 0) #3, !srcloc !12
  br label %r100_mm_wreg.exit173

if.else.i172:                                     ; preds = %r100_mm_wreg.exit166
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 136376, i32 noundef 0) #3
  br label %r100_mm_wreg.exit173

r100_mm_wreg.exit173:                             ; preds = %if.else.i172, %do.body.i171
  %62 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 136352, i32 %63)
  %cmp.i175 = icmp ugt i32 %63, 136352
  br i1 %cmp.i175, label %do.body.i178, label %if.else.i179

do.body.i178:                                     ; preds = %r100_mm_wreg.exit173
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %rmmio.i176 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %64 = ptrtoint ptr %rmmio.i176 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rmmio.i176, align 4
  %add.ptr.i177 = getelementptr i8, ptr %65, i32 136352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i177, i32 0) #3, !srcloc !12
  br label %r100_mm_wreg.exit180

if.else.i179:                                     ; preds = %r100_mm_wreg.exit173
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 136352, i32 noundef 0) #3
  br label %r100_mm_wreg.exit180

r100_mm_wreg.exit180:                             ; preds = %if.else.i179, %do.body.i178
  %shr = lshr i64 %1, 8
  %conv = trunc i64 %shr to i32
  %66 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 136284, i32 %67)
  %cmp.i182 = icmp ugt i32 %67, 136284
  br i1 %cmp.i182, label %do.body.i185, label %if.else.i186

do.body.i185:                                     ; preds = %r100_mm_wreg.exit180
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %68 = tail call i32 @llvm.bswap.i32(i32 %conv) #3
  %rmmio.i183 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %69 = ptrtoint ptr %rmmio.i183 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rmmio.i183, align 4
  %add.ptr.i184 = getelementptr i8, ptr %70, i32 136284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i184, i32 %68) #3, !srcloc !12
  br label %r100_mm_wreg.exit187

if.else.i186:                                     ; preds = %r100_mm_wreg.exit180
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 136284, i32 noundef %conv) #3
  br label %r100_mm_wreg.exit187

r100_mm_wreg.exit187:                             ; preds = %if.else.i186, %do.body.i185
  %71 = trunc i64 %1 to i32
  %conv24 = and i32 %71, 255
  %72 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131108, i32 %73)
  %cmp.i189 = icmp ugt i32 %73, 131108
  br i1 %cmp.i189, label %do.body.i192, label %if.else.i193

do.body.i192:                                     ; preds = %r100_mm_wreg.exit187
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %74 = shl nuw i32 %conv24, 24
  %rmmio.i190 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %75 = ptrtoint ptr %rmmio.i190 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rmmio.i190, align 4
  %add.ptr.i191 = getelementptr i8, ptr %76, i32 131108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i191, i32 %74) #3, !srcloc !12
  br label %r100_mm_wreg.exit194

if.else.i193:                                     ; preds = %r100_mm_wreg.exit187
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 131108, i32 noundef %conv24) #3
  br label %r100_mm_wreg.exit194

r100_mm_wreg.exit194:                             ; preds = %if.else.i193, %do.body.i192
  %77 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131112, i32 %78)
  %cmp.i196 = icmp ugt i32 %78, 131112
  br i1 %cmp.i196, label %do.body.i199, label %if.else.i200

do.body.i199:                                     ; preds = %r100_mm_wreg.exit194
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %rmmio.i197 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %79 = ptrtoint ptr %rmmio.i197 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rmmio.i197, align 4
  %add.ptr.i198 = getelementptr i8, ptr %80, i32 131112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i198, i32 1024) #3, !srcloc !12
  br label %r100_mm_wreg.exit201

if.else.i200:                                     ; preds = %r100_mm_wreg.exit194
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 131112, i32 noundef 262144) #3
  br label %r100_mm_wreg.exit201

r100_mm_wreg.exit201:                             ; preds = %if.else.i200, %do.body.i199
  %conv27 = or i32 %conv24, 262144
  %81 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131116, i32 %82)
  %cmp.i203 = icmp ugt i32 %82, 131116
  br i1 %cmp.i203, label %do.body.i206, label %if.else.i207

do.body.i206:                                     ; preds = %r100_mm_wreg.exit201
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %83 = tail call i32 @llvm.bswap.i32(i32 %conv27) #3
  %rmmio.i204 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %84 = ptrtoint ptr %rmmio.i204 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rmmio.i204, align 4
  %add.ptr.i205 = getelementptr i8, ptr %85, i32 131116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i205, i32 %83) #3, !srcloc !12
  br label %r100_mm_wreg.exit208

if.else.i207:                                     ; preds = %r100_mm_wreg.exit201
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 131116, i32 noundef %conv27) #3
  br label %r100_mm_wreg.exit208

r100_mm_wreg.exit208:                             ; preds = %if.else.i207, %do.body.i206
  %86 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131120, i32 %87)
  %cmp.i210 = icmp ugt i32 %87, 131120
  br i1 %cmp.i210, label %do.body.i213, label %if.else.i214

do.body.i213:                                     ; preds = %r100_mm_wreg.exit208
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %rmmio.i211 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %88 = ptrtoint ptr %rmmio.i211 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %rmmio.i211, align 4
  %add.ptr.i212 = getelementptr i8, ptr %89, i32 131120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i212, i32 256) #3, !srcloc !12
  br label %r100_mm_wreg.exit215

if.else.i214:                                     ; preds = %r100_mm_wreg.exit208
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 131120, i32 noundef 65536) #3
  br label %r100_mm_wreg.exit215

r100_mm_wreg.exit215:                             ; preds = %if.else.i214, %do.body.i213
  %conv31 = or i32 %conv24, 327680
  %90 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131124, i32 %91)
  %cmp.i217 = icmp ugt i32 %91, 131124
  br i1 %cmp.i217, label %do.body.i220, label %if.else.i221

do.body.i220:                                     ; preds = %r100_mm_wreg.exit215
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %92 = tail call i32 @llvm.bswap.i32(i32 %conv31) #3
  %rmmio.i218 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %93 = ptrtoint ptr %rmmio.i218 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %rmmio.i218, align 4
  %add.ptr.i219 = getelementptr i8, ptr %94, i32 131124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i219, i32 %92) #3, !srcloc !12
  br label %r100_mm_wreg.exit222

if.else.i221:                                     ; preds = %r100_mm_wreg.exit215
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 131124, i32 noundef %conv31) #3
  br label %r100_mm_wreg.exit222

r100_mm_wreg.exit222:                             ; preds = %if.else.i221, %do.body.i220
  %95 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131128, i32 %96)
  %cmp.i224 = icmp ugt i32 %96, 131128
  br i1 %cmp.i224, label %do.body.i227, label %if.else.i228

do.body.i227:                                     ; preds = %r100_mm_wreg.exit222
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %rmmio.i225 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %97 = ptrtoint ptr %rmmio.i225 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %rmmio.i225, align 4
  %add.ptr.i226 = getelementptr i8, ptr %98, i32 131128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i226, i32 12584192) #3, !srcloc !12
  br label %r100_mm_wreg.exit229

if.else.i228:                                     ; preds = %r100_mm_wreg.exit222
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 131128, i32 noundef 376832) #3
  br label %r100_mm_wreg.exit229

r100_mm_wreg.exit229:                             ; preds = %if.else.i228, %do.body.i227
  %99 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 136308, i32 %100)
  %cmp.i231 = icmp ugt i32 %100, 136308
  br i1 %cmp.i231, label %if.then.i234, label %if.else.i236

if.then.i234:                                     ; preds = %r100_mm_wreg.exit229
  call void @__sanitizer_cov_trace_pc() #5
  %rmmio.i232 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %101 = ptrtoint ptr %rmmio.i232 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %rmmio.i232, align 4
  %add.ptr.i233 = getelementptr i8, ptr %102, i32 136308
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i233) #3, !srcloc !13
  %104 = tail call i32 @llvm.bswap.i32(i32 %103) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  br label %r100_mm_rreg.exit238

if.else.i236:                                     ; preds = %r100_mm_wreg.exit229
  call void @__sanitizer_cov_trace_pc() #5
  %call3.i235 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef 136308) #3
  br label %r100_mm_rreg.exit238

r100_mm_rreg.exit238:                             ; preds = %if.else.i236, %if.then.i234
  %retval.0.i237 = phi i32 [ %call3.i235, %if.else.i236 ], [ %104, %if.then.i234 ]
  %and35 = and i32 %retval.0.i237, -257
  %105 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 136308, i32 %106)
  %cmp.i240 = icmp ugt i32 %106, 136308
  br i1 %cmp.i240, label %do.body.i243, label %if.else.i244

do.body.i243:                                     ; preds = %r100_mm_rreg.exit238
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %107 = tail call i32 @llvm.bswap.i32(i32 %and35) #3
  %rmmio.i241 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %108 = ptrtoint ptr %rmmio.i241 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %rmmio.i241, align 4
  %add.ptr.i242 = getelementptr i8, ptr %109, i32 136308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i242, i32 %107) #3, !srcloc !12
  br label %r100_mm_wreg.exit245

if.else.i244:                                     ; preds = %r100_mm_rreg.exit238
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 136308, i32 noundef %and35) #3
  br label %r100_mm_wreg.exit245

r100_mm_wreg.exit245:                             ; preds = %if.else.i244, %do.body.i243
  %110 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 135936, i32 %111)
  %cmp.i247 = icmp ugt i32 %111, 135936
  br i1 %cmp.i247, label %if.then.i250, label %if.else.i252

if.then.i250:                                     ; preds = %r100_mm_wreg.exit245
  call void @__sanitizer_cov_trace_pc() #5
  %rmmio.i248 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %112 = ptrtoint ptr %rmmio.i248 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %rmmio.i248, align 4
  %add.ptr.i249 = getelementptr i8, ptr %113, i32 135936
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i249) #3, !srcloc !13
  %115 = tail call i32 @llvm.bswap.i32(i32 %114) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  br label %r100_mm_rreg.exit254

if.else.i252:                                     ; preds = %r100_mm_wreg.exit245
  call void @__sanitizer_cov_trace_pc() #5
  %call3.i251 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef 135936) #3
  br label %r100_mm_rreg.exit254

r100_mm_rreg.exit254:                             ; preds = %if.else.i252, %if.then.i250
  %retval.0.i253 = phi i32 [ %call3.i251, %if.else.i252 ], [ %115, %if.then.i250 ]
  %or43 = or i32 %retval.0.i253, 8
  %116 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 135936, i32 %117)
  %cmp.i256 = icmp ugt i32 %117, 135936
  br i1 %cmp.i256, label %do.body.i259, label %if.else.i260

do.body.i259:                                     ; preds = %r100_mm_rreg.exit254
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %118 = tail call i32 @llvm.bswap.i32(i32 %or43) #3
  %rmmio.i257 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %119 = ptrtoint ptr %rmmio.i257 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %rmmio.i257, align 4
  %add.ptr.i258 = getelementptr i8, ptr %120, i32 135936
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i258, i32 %118) #3, !srcloc !12
  br label %r100_mm_wreg.exit261

if.else.i260:                                     ; preds = %r100_mm_rreg.exit254
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 135936, i32 noundef %or43) #3
  br label %r100_mm_wreg.exit261

r100_mm_wreg.exit261:                             ; preds = %if.else.i260, %do.body.i259
  %121 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131832, i32 %122)
  %cmp.i.i = icmp ugt i32 %122, 131832
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %r100_mm_wreg.exit261
  call void @__sanitizer_cov_trace_pc() #5
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %123 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %124, i32 131832
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #3, !srcloc !13
  %126 = tail call i32 @llvm.bswap.i32(i32 %125) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  br label %r100_mm_rreg.exit.i

if.else.i.i:                                      ; preds = %r100_mm_wreg.exit261
  call void @__sanitizer_cov_trace_pc() #5
  %call3.i.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef 131832) #3
  br label %r100_mm_rreg.exit.i

r100_mm_rreg.exit.i:                              ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call3.i.i, %if.else.i.i ], [ %126, %if.then.i.i ]
  %and.i = and i32 %retval.0.i.i, -266240
  %or1.i = or i32 %and.i, 262208
  %127 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131832, i32 %128)
  %cmp.i23.i = icmp ugt i32 %128, 131832
  br i1 %cmp.i23.i, label %do.body.i.i, label %if.else.i26.i

do.body.i.i:                                      ; preds = %r100_mm_rreg.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %129 = tail call i32 @llvm.bswap.i32(i32 %or1.i) #3
  %rmmio.i24.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %130 = ptrtoint ptr %rmmio.i24.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %rmmio.i24.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %131, i32 131832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %129) #3, !srcloc !12
  br label %r100_mm_wreg.exit.i

if.else.i26.i:                                    ; preds = %r100_mm_rreg.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 131832, i32 noundef %or1.i) #3
  br label %r100_mm_wreg.exit.i

r100_mm_wreg.exit.i:                              ; preds = %if.else.i26.i, %do.body.i.i
  %132 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 133052, i32 %133)
  %cmp.i28.i = icmp ugt i32 %133, 133052
  br i1 %cmp.i28.i, label %if.then.i31.i, label %if.else.i33.i

if.then.i31.i:                                    ; preds = %r100_mm_wreg.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  %rmmio.i29.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %134 = ptrtoint ptr %rmmio.i29.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %rmmio.i29.i, align 4
  %add.ptr.i30.i = getelementptr i8, ptr %135, i32 133052
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30.i) #3, !srcloc !13
  %137 = tail call i32 @llvm.bswap.i32(i32 %136) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  br label %r100_mm_rreg.exit35.i

if.else.i33.i:                                    ; preds = %r100_mm_wreg.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  %call3.i32.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef 133052) #3
  br label %r100_mm_rreg.exit35.i

r100_mm_rreg.exit35.i:                            ; preds = %if.else.i33.i, %if.then.i31.i
  %retval.0.i34.i = phi i32 [ %call3.i32.i, %if.else.i33.i ], [ %137, %if.then.i31.i ]
  %and3.i = and i32 %retval.0.i34.i, -4096
  %or4.i = or i32 %and3.i, 64
  %138 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 133052, i32 %139)
  %cmp.i37.i = icmp ugt i32 %139, 133052
  br i1 %cmp.i37.i, label %do.body.i40.i, label %if.else.i41.i

do.body.i40.i:                                    ; preds = %r100_mm_rreg.exit35.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %140 = tail call i32 @llvm.bswap.i32(i32 %or4.i) #3
  %rmmio.i38.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %141 = ptrtoint ptr %rmmio.i38.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %rmmio.i38.i, align 4
  %add.ptr.i39.i = getelementptr i8, ptr %142, i32 133052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39.i, i32 %140) #3, !srcloc !12
  br label %r100_mm_wreg.exit42.i

if.else.i41.i:                                    ; preds = %r100_mm_rreg.exit35.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 133052, i32 noundef %or4.i) #3
  br label %r100_mm_wreg.exit42.i

r100_mm_wreg.exit42.i:                            ; preds = %if.else.i41.i, %do.body.i40.i
  %143 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131836, i32 %144)
  %cmp.i44.i = icmp ugt i32 %144, 131836
  br i1 %cmp.i44.i, label %if.then.i47.i, label %if.else.i49.i

if.then.i47.i:                                    ; preds = %r100_mm_wreg.exit42.i
  call void @__sanitizer_cov_trace_pc() #5
  %rmmio.i45.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %145 = ptrtoint ptr %rmmio.i45.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %rmmio.i45.i, align 4
  %add.ptr.i46.i = getelementptr i8, ptr %146, i32 131836
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i46.i) #3, !srcloc !13
  %148 = tail call i32 @llvm.bswap.i32(i32 %147) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  br label %r100_mm_rreg.exit51.i

if.else.i49.i:                                    ; preds = %r100_mm_wreg.exit42.i
  call void @__sanitizer_cov_trace_pc() #5
  %call3.i48.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef 131836) #3
  br label %r100_mm_rreg.exit51.i

r100_mm_rreg.exit51.i:                            ; preds = %if.else.i49.i, %if.then.i47.i
  %retval.0.i50.i = phi i32 [ %call3.i48.i, %if.else.i49.i ], [ %148, %if.then.i47.i ]
  %or6.i = and i32 %retval.0.i50.i, -1048593
  %and7.i = or i32 %or6.i, 16
  %149 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 131836, i32 %150)
  %cmp.i53.i = icmp ugt i32 %150, 131836
  br i1 %cmp.i53.i, label %do.body.i56.i, label %if.else.i57.i

do.body.i56.i:                                    ; preds = %r100_mm_rreg.exit51.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %151 = tail call i32 @llvm.bswap.i32(i32 %and7.i) #3
  %rmmio.i54.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %152 = ptrtoint ptr %rmmio.i54.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %rmmio.i54.i, align 4
  %add.ptr.i55.i = getelementptr i8, ptr %153, i32 131836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55.i, i32 %151) #3, !srcloc !12
  br label %vce_v2_0_init_cg.exit

if.else.i57.i:                                    ; preds = %r100_mm_rreg.exit51.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 131836, i32 noundef %and7.i) #3
  br label %vce_v2_0_init_cg.exit

vce_v2_0_init_cg.exit:                            ; preds = %if.else.i57.i, %do.body.i56.i
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_mm_rreg_slow(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_mm_wreg_slow(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/vce_v2_0.c", i32 154, i32 2}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i64 2157415058}
!12 = !{i64 6689987}
!13 = !{i64 6690405}
!14 = !{i64 2157414651}
!15 = !{!"branch_weights", i32 1, i32 2000}
