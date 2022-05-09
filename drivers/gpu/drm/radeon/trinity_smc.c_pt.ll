; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/trinity_smc.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/trinity_smc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"SMC failed to handle the message!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unknown SMC message!\0A\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 254, i64 255]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 254, i64 255]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 254, i64 255]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 254, i64 255]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 254, i64 255]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 254, i64 255]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 254, i64 255]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 254, i64 255]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 254, i64 255]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 254, i64 255]
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 44, i32 4 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.15 = private constant [40 x i8] c"../drivers/gpu/drm/radeon/trinity_smc.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 47, i32 4 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @trinity_dpm_bapm_enable(ptr nocapture noundef readonly %rdev, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 556
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 536936448) #3, !srcloc !13
  %usec_timeout.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %2 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usec_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp23.i = icmp sgt i32 %3, 0
  br i1 %cmp23.i, label %if.then.for.body.i_crit_edge, label %if.then.for.end.i_crit_edge

if.then.for.end.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.024.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %5, i32 560
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.i) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp1.not.i = icmp eq i32 %6, 0
  br i1 %cmp1.not.i, label %if.end.i, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #3
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %8 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %usec_timeout.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %9
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.end.i:                                        ; preds = %if.end.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %if.then.for.end.i_crit_edge
  %10 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %11, i32 560
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #3
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %for.end.i.return_crit_edge [
    i32 254, label %if.then8.i
    i32 255, label %for.end.i.return.sink.split_crit_edge
  ]

for.end.i.return.sink.split_crit_edge:            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return.sink.split

for.end.i.return_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then8.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return.sink.split

if.else:                                          ; preds = %entry
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 553713664) #3, !srcloc !13
  %usec_timeout.i5 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %15 = ptrtoint ptr %usec_timeout.i5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %usec_timeout.i5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp23.i6 = icmp sgt i32 %16, 0
  br i1 %cmp23.i6, label %if.else.for.body.i10_crit_edge, label %if.else.for.end.i15_crit_edge

if.else.for.end.i15_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i15

if.else.for.body.i10_crit_edge:                   ; preds = %if.else
  br label %for.body.i10

for.body.i10:                                     ; preds = %if.end.i13.for.body.i10_crit_edge, %if.else.for.body.i10_crit_edge
  %i.024.i7 = phi i32 [ %inc.i11, %if.end.i13.for.body.i10_crit_edge ], [ 0, %if.else.for.body.i10_crit_edge ]
  %17 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i20.i8 = getelementptr i8, ptr %18, i32 560
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.i8) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp1.not.i9 = icmp eq i32 %19, 0
  br i1 %cmp1.not.i9, label %if.end.i13, label %for.body.i10.for.end.i15_crit_edge

for.body.i10.for.end.i15_crit_edge:               ; preds = %for.body.i10
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i15

if.end.i13:                                       ; preds = %for.body.i10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748) #3
  %inc.i11 = add nuw nsw i32 %i.024.i7, 1
  %21 = ptrtoint ptr %usec_timeout.i5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %usec_timeout.i5, align 4
  %cmp.i12 = icmp slt i32 %inc.i11, %22
  br i1 %cmp.i12, label %if.end.i13.for.body.i10_crit_edge, label %if.end.i13.for.end.i15_crit_edge

if.end.i13.for.end.i15_crit_edge:                 ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i15

if.end.i13.for.body.i10_crit_edge:                ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i10

for.end.i15:                                      ; preds = %if.end.i13.for.end.i15_crit_edge, %for.body.i10.for.end.i15_crit_edge, %if.else.for.end.i15_crit_edge
  %23 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i22.i14 = getelementptr i8, ptr %24, i32 560
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i14) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #3
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %26, label %for.end.i15.return_crit_edge [
    i32 254, label %if.then8.i16
    i32 255, label %for.end.i15.return.sink.split_crit_edge
  ]

for.end.i15.return.sink.split_crit_edge:          ; preds = %for.end.i15
  call void @__sanitizer_cov_trace_pc() #5
  br label %return.sink.split

for.end.i15.return_crit_edge:                     ; preds = %for.end.i15
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then8.i16:                                     ; preds = %for.end.i15
  call void @__sanitizer_cov_trace_pc() #5
  br label %return.sink.split

return.sink.split:                                ; preds = %if.then8.i16, %for.end.i15.return.sink.split_crit_edge, %if.then8.i, %for.end.i.return.sink.split_crit_edge
  %.str.1.sink.i17.sink = phi ptr [ @.str.1, %if.then8.i ], [ @.str, %for.end.i.return.sink.split_crit_edge ], [ @.str.1, %if.then8.i16 ], [ @.str, %for.end.i15.return.sink.split_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull %.str.1.sink.i17.sink) #3
  br label %return

return:                                           ; preds = %return.sink.split, %for.end.i15.return_crit_edge, %for.end.i.return_crit_edge
  %retval.0 = phi i32 [ 0, %for.end.i.return_crit_edge ], [ 0, %for.end.i15.return_crit_edge ], [ -22, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @trinity_dpm_config(ptr noundef %rdev, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %. = zext i1 %enable to i32
  tail call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef -536858560, i32 noundef %.) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 33619968) #3, !srcloc !13
  %usec_timeout.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %2 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usec_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp23.i = icmp sgt i32 %3, 0
  br i1 %cmp23.i, label %entry.for.body.i_crit_edge, label %entry.for.end.i_crit_edge

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.024.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %5, i32 560
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.i) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp1.not.i = icmp eq i32 %6, 0
  br i1 %cmp1.not.i, label %if.end.i, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #3
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %8 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %usec_timeout.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %9
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.end.i:                                        ; preds = %if.end.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %10 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %11, i32 560
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #3
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %13, label %for.end.i.trinity_notify_message_to_smu.exit_crit_edge [
    i32 254, label %if.then8.i
    i32 255, label %for.end.i.cleanup.sink.split.i_crit_edge
  ]

for.end.i.cleanup.sink.split.i_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split.i

for.end.i.trinity_notify_message_to_smu.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %trinity_notify_message_to_smu.exit

if.then8.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then8.i, %for.end.i.cleanup.sink.split.i_crit_edge
  %.str.1.sink.i = phi ptr [ @.str.1, %if.then8.i ], [ @.str, %for.end.i.cleanup.sink.split.i_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull %.str.1.sink.i) #3
  br label %trinity_notify_message_to_smu.exit

trinity_notify_message_to_smu.exit:               ; preds = %cleanup.sink.split.i, %for.end.i.trinity_notify_message_to_smu.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.end.i.trinity_notify_message_to_smu.exit_crit_edge ], [ -22, %cleanup.sink.split.i ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tn_smc_wreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @trinity_dpm_force_state(ptr noundef %rdev, i32 noundef %n) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef -536858560, i32 noundef %n) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 67174400) #3, !srcloc !13
  %usec_timeout.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %2 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usec_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp23.i = icmp sgt i32 %3, 0
  br i1 %cmp23.i, label %entry.for.body.i_crit_edge, label %entry.for.end.i_crit_edge

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.024.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %5, i32 560
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.i) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp1.not.i = icmp eq i32 %6, 0
  br i1 %cmp1.not.i, label %if.end.i, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #3
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %8 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %usec_timeout.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %9
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.end.i:                                        ; preds = %if.end.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %10 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %11, i32 560
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #3
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %13, label %for.end.i.trinity_notify_message_to_smu.exit_crit_edge [
    i32 254, label %if.then8.i
    i32 255, label %for.end.i.cleanup.sink.split.i_crit_edge
  ]

for.end.i.cleanup.sink.split.i_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split.i

for.end.i.trinity_notify_message_to_smu.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %trinity_notify_message_to_smu.exit

if.then8.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then8.i, %for.end.i.cleanup.sink.split.i_crit_edge
  %.str.1.sink.i = phi ptr [ @.str.1, %if.then8.i ], [ @.str, %for.end.i.cleanup.sink.split.i_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull %.str.1.sink.i) #3
  br label %trinity_notify_message_to_smu.exit

trinity_notify_message_to_smu.exit:               ; preds = %cleanup.sink.split.i, %for.end.i.trinity_notify_message_to_smu.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.end.i.trinity_notify_message_to_smu.exit_crit_edge ], [ -22, %cleanup.sink.split.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @trinity_dpm_n_levels_disabled(ptr noundef %rdev, i32 noundef %n) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef -536858560, i32 noundef %n) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 302055424) #3, !srcloc !13
  %usec_timeout.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %2 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usec_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp23.i = icmp sgt i32 %3, 0
  br i1 %cmp23.i, label %entry.for.body.i_crit_edge, label %entry.for.end.i_crit_edge

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.024.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %5, i32 560
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.i) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp1.not.i = icmp eq i32 %6, 0
  br i1 %cmp1.not.i, label %if.end.i, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #3
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %8 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %usec_timeout.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %9
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.end.i:                                        ; preds = %if.end.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %10 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %11, i32 560
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #3
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %13, label %for.end.i.trinity_notify_message_to_smu.exit_crit_edge [
    i32 254, label %if.then8.i
    i32 255, label %for.end.i.cleanup.sink.split.i_crit_edge
  ]

for.end.i.cleanup.sink.split.i_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split.i

for.end.i.trinity_notify_message_to_smu.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %trinity_notify_message_to_smu.exit

if.then8.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then8.i, %for.end.i.cleanup.sink.split.i_crit_edge
  %.str.1.sink.i = phi ptr [ @.str.1, %if.then8.i ], [ @.str, %for.end.i.cleanup.sink.split.i_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull %.str.1.sink.i) #3
  br label %trinity_notify_message_to_smu.exit

trinity_notify_message_to_smu.exit:               ; preds = %cleanup.sink.split.i, %for.end.i.trinity_notify_message_to_smu.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.end.i.trinity_notify_message_to_smu.exit_crit_edge ], [ -22, %cleanup.sink.split.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @trinity_uvd_dpm_config(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 604045312) #3, !srcloc !13
  %usec_timeout.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %2 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usec_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp23.i = icmp sgt i32 %3, 0
  br i1 %cmp23.i, label %entry.for.body.i_crit_edge, label %entry.for.end.i_crit_edge

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.024.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %5, i32 560
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.i) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp1.not.i = icmp eq i32 %6, 0
  br i1 %cmp1.not.i, label %if.end.i, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #3
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %8 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %usec_timeout.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %9
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.end.i:                                        ; preds = %if.end.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %10 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %11, i32 560
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #3
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %13, label %for.end.i.trinity_notify_message_to_smu.exit_crit_edge [
    i32 254, label %if.then8.i
    i32 255, label %for.end.i.cleanup.sink.split.i_crit_edge
  ]

for.end.i.cleanup.sink.split.i_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split.i

for.end.i.trinity_notify_message_to_smu.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %trinity_notify_message_to_smu.exit

if.then8.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then8.i, %for.end.i.cleanup.sink.split.i_crit_edge
  %.str.1.sink.i = phi ptr [ @.str.1, %if.then8.i ], [ @.str, %for.end.i.cleanup.sink.split.i_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull %.str.1.sink.i) #3
  br label %trinity_notify_message_to_smu.exit

trinity_notify_message_to_smu.exit:               ; preds = %cleanup.sink.split.i, %for.end.i.trinity_notify_message_to_smu.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.end.i.trinity_notify_message_to_smu.exit_crit_edge ], [ -22, %cleanup.sink.split.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @trinity_dpm_no_forced_level(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1090519040) #3, !srcloc !13
  %usec_timeout.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %2 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usec_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp23.i = icmp sgt i32 %3, 0
  br i1 %cmp23.i, label %entry.for.body.i_crit_edge, label %entry.for.end.i_crit_edge

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.024.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %5, i32 560
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.i) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp1.not.i = icmp eq i32 %6, 0
  br i1 %cmp1.not.i, label %if.end.i, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #3
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %8 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %usec_timeout.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %9
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.end.i:                                        ; preds = %if.end.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %10 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %11, i32 560
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #3
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %13, label %for.end.i.trinity_notify_message_to_smu.exit_crit_edge [
    i32 254, label %if.then8.i
    i32 255, label %for.end.i.cleanup.sink.split.i_crit_edge
  ]

for.end.i.cleanup.sink.split.i_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split.i

for.end.i.trinity_notify_message_to_smu.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %trinity_notify_message_to_smu.exit

if.then8.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then8.i, %for.end.i.cleanup.sink.split.i_crit_edge
  %.str.1.sink.i = phi ptr [ @.str.1, %if.then8.i ], [ @.str, %for.end.i.cleanup.sink.split.i_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull %.str.1.sink.i) #3
  br label %trinity_notify_message_to_smu.exit

trinity_notify_message_to_smu.exit:               ; preds = %cleanup.sink.split.i, %for.end.i.trinity_notify_message_to_smu.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.end.i.trinity_notify_message_to_smu.exit_crit_edge ], [ -22, %cleanup.sink.split.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @trinity_dce_enable_voltage_adjustment(ptr nocapture noundef readonly %rdev, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 556
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 503382016) #3, !srcloc !13
  %usec_timeout.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %2 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usec_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp23.i = icmp sgt i32 %3, 0
  br i1 %cmp23.i, label %if.then.for.body.i_crit_edge, label %if.then.for.end.i_crit_edge

if.then.for.end.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.024.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %5, i32 560
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.i) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp1.not.i = icmp eq i32 %6, 0
  br i1 %cmp1.not.i, label %if.end.i, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #3
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %8 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %usec_timeout.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %9
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.end.i:                                        ; preds = %if.end.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %if.then.for.end.i_crit_edge
  %10 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %11, i32 560
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #3
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %13, label %for.end.i.return_crit_edge [
    i32 254, label %if.then8.i
    i32 255, label %for.end.i.return.sink.split_crit_edge
  ]

for.end.i.return.sink.split_crit_edge:            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return.sink.split

for.end.i.return_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then8.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return.sink.split

if.else:                                          ; preds = %entry
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 486604800) #3, !srcloc !13
  %usec_timeout.i5 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %15 = ptrtoint ptr %usec_timeout.i5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %usec_timeout.i5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp23.i6 = icmp sgt i32 %16, 0
  br i1 %cmp23.i6, label %if.else.for.body.i10_crit_edge, label %if.else.for.end.i15_crit_edge

if.else.for.end.i15_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i15

if.else.for.body.i10_crit_edge:                   ; preds = %if.else
  br label %for.body.i10

for.body.i10:                                     ; preds = %if.end.i13.for.body.i10_crit_edge, %if.else.for.body.i10_crit_edge
  %i.024.i7 = phi i32 [ %inc.i11, %if.end.i13.for.body.i10_crit_edge ], [ 0, %if.else.for.body.i10_crit_edge ]
  %17 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i20.i8 = getelementptr i8, ptr %18, i32 560
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.i8) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp1.not.i9 = icmp eq i32 %19, 0
  br i1 %cmp1.not.i9, label %if.end.i13, label %for.body.i10.for.end.i15_crit_edge

for.body.i10.for.end.i15_crit_edge:               ; preds = %for.body.i10
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i15

if.end.i13:                                       ; preds = %for.body.i10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748) #3
  %inc.i11 = add nuw nsw i32 %i.024.i7, 1
  %21 = ptrtoint ptr %usec_timeout.i5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %usec_timeout.i5, align 4
  %cmp.i12 = icmp slt i32 %inc.i11, %22
  br i1 %cmp.i12, label %if.end.i13.for.body.i10_crit_edge, label %if.end.i13.for.end.i15_crit_edge

if.end.i13.for.end.i15_crit_edge:                 ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i15

if.end.i13.for.body.i10_crit_edge:                ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i10

for.end.i15:                                      ; preds = %if.end.i13.for.end.i15_crit_edge, %for.body.i10.for.end.i15_crit_edge, %if.else.for.end.i15_crit_edge
  %23 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i22.i14 = getelementptr i8, ptr %24, i32 560
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i14) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #3
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %26, label %for.end.i15.return_crit_edge [
    i32 254, label %if.then8.i16
    i32 255, label %for.end.i15.return.sink.split_crit_edge
  ]

for.end.i15.return.sink.split_crit_edge:          ; preds = %for.end.i15
  call void @__sanitizer_cov_trace_pc() #5
  br label %return.sink.split

for.end.i15.return_crit_edge:                     ; preds = %for.end.i15
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then8.i16:                                     ; preds = %for.end.i15
  call void @__sanitizer_cov_trace_pc() #5
  br label %return.sink.split

return.sink.split:                                ; preds = %if.then8.i16, %for.end.i15.return.sink.split_crit_edge, %if.then8.i, %for.end.i.return.sink.split_crit_edge
  %.str.1.sink.i17.sink = phi ptr [ @.str.1, %if.then8.i ], [ @.str, %for.end.i.return.sink.split_crit_edge ], [ @.str.1, %if.then8.i16 ], [ @.str, %for.end.i15.return.sink.split_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull %.str.1.sink.i17.sink) #3
  br label %return

return:                                           ; preds = %return.sink.split, %for.end.i15.return_crit_edge, %for.end.i.return_crit_edge
  %retval.0 = phi i32 [ 0, %for.end.i.return_crit_edge ], [ 0, %for.end.i15.return_crit_edge ], [ -22, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @trinity_gfx_dynamic_mgpg_config(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 134283264) #3, !srcloc !13
  %usec_timeout.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %2 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usec_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp23.i = icmp sgt i32 %3, 0
  br i1 %cmp23.i, label %entry.for.body.i_crit_edge, label %entry.for.end.i_crit_edge

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.024.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %5, i32 560
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.i) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp1.not.i = icmp eq i32 %6, 0
  br i1 %cmp1.not.i, label %if.end.i, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #3
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %8 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %usec_timeout.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %9
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.end.i:                                        ; preds = %if.end.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %10 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %11, i32 560
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #3
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %13, label %for.end.i.trinity_notify_message_to_smu.exit_crit_edge [
    i32 254, label %if.then8.i
    i32 255, label %for.end.i.cleanup.sink.split.i_crit_edge
  ]

for.end.i.cleanup.sink.split.i_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split.i

for.end.i.trinity_notify_message_to_smu.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %trinity_notify_message_to_smu.exit

if.then8.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then8.i, %for.end.i.cleanup.sink.split.i_crit_edge
  %.str.1.sink.i = phi ptr [ @.str.1, %if.then8.i ], [ @.str, %for.end.i.cleanup.sink.split.i_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull %.str.1.sink.i) #3
  br label %trinity_notify_message_to_smu.exit

trinity_notify_message_to_smu.exit:               ; preds = %cleanup.sink.split.i, %for.end.i.trinity_notify_message_to_smu.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.end.i.trinity_notify_message_to_smu.exit_crit_edge ], [ -22, %cleanup.sink.split.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @trinity_acquire_mutex(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #3, !srcloc !13
  %usec_timeout = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %2 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usec_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp7 = icmp sgt i32 %3, 0
  br i1 %cmp7, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.08 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i6 = getelementptr i8, ptr %5, i32 544
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  %7 = and i32 %6, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %7)
  %cmp1 = icmp eq i32 %7, 16777216
  br i1 %cmp1, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #3
  %inc = add nuw nsw i32 %i.08, 1
  %9 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %usec_timeout, align 4
  %cmp = icmp slt i32 %inc, %10
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @trinity_release_mutex(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #3, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/trinity_smc.c", i32 44, i32 4}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/trinity_smc.c", i32 47, i32 4}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i64 6689120}
!14 = !{i64 6689538}
!15 = !{i64 2157409723}
!16 = !{i64 2157410130}
