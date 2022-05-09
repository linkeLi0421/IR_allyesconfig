; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/kv_smc.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/kv_smc.c"
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
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kv_notify_message_to_smu(ptr nocapture noundef readonly %rdev, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %id, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %0 = tail call i32 @llvm.bswap.i32(i32 %and) #3
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %1 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #3, !srcloc !10
  %usec_timeout = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %3 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %usec_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp25.not = icmp eq i32 %4, 0
  br i1 %cmp25.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.026 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %5 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i22 = getelementptr i8, ptr %6, i32 596
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %7)
  %cmp2.not = icmp ult i32 %7, 65536
  br i1 %cmp2.not, label %if.end, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #3
  %inc = add nuw i32 %i.026, 1
  %9 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %usec_timeout, align 4
  %cmp = icmp ult i32 %inc, %10
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %11 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i24 = getelementptr i8, ptr %12, i32 596
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  %14 = and i32 %13, -16842752
  call void @__sanitizer_cov_trace_const_cmp4(i32 -33554432, i32 %14)
  %switch = icmp eq i32 %14, -33554432
  %spec.select = select i1 %switch, i32 -22, i32 0
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kv_dpm_get_enable_mask(ptr noundef %rdev, ptr nocapture noundef writeonly %enable_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1644232704) #3, !srcloc !10
  %usec_timeout.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %2 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usec_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp25.not.i = icmp eq i32 %3, 0
  br i1 %cmp25.not.i, label %entry.kv_notify_message_to_smu.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.kv_notify_message_to_smu.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %kv_notify_message_to_smu.exit

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.026.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %5, i32 596
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %6)
  %cmp2.not.i = icmp ult i32 %6, 65536
  br i1 %cmp2.not.i, label %if.end.i, label %for.body.i.kv_notify_message_to_smu.exit_crit_edge

for.body.i.kv_notify_message_to_smu.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %kv_notify_message_to_smu.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #3
  %inc.i = add nuw i32 %i.026.i, 1
  %8 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %usec_timeout.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %9
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.kv_notify_message_to_smu.exit_crit_edge

if.end.i.kv_notify_message_to_smu.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %kv_notify_message_to_smu.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

kv_notify_message_to_smu.exit:                    ; preds = %if.end.i.kv_notify_message_to_smu.exit_crit_edge, %for.body.i.kv_notify_message_to_smu.exit_crit_edge, %entry.kv_notify_message_to_smu.exit_crit_edge
  %10 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i24.i = getelementptr i8, ptr %11, i32 596
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24.i) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  %13 = and i32 %12, -16842752
  call void @__sanitizer_cov_trace_const_cmp4(i32 -33554432, i32 %13)
  %switch.i = icmp eq i32 %13, -33554432
  br i1 %switch.i, label %kv_notify_message_to_smu.exit.if.end_crit_edge, label %if.then

kv_notify_message_to_smu.exit.if.end_crit_edge:   ; preds = %kv_notify_message_to_smu.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %kv_notify_message_to_smu.exit
  call void @__sanitizer_cov_trace_pc() #5
  %call1 = tail call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef -2147483544) #3
  %14 = ptrtoint ptr %enable_mask to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call1, ptr %enable_mask, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %kv_notify_message_to_smu.exit.if.end_crit_edge
  %spec.select.i = phi i32 [ 0, %if.then ], [ -22, %kv_notify_message_to_smu.exit.if.end_crit_edge ]
  ret i32 %spec.select.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tn_smc_rreg(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kv_send_msg_to_smc_with_parameter(ptr nocapture noundef readonly %rdev, i16 noundef zeroext %msg, i32 noundef %parameter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %0 = tail call i32 @llvm.bswap.i32(i32 %parameter) #3
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %1 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #3, !srcloc !10
  %conv = zext i16 %msg to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %3 = tail call i32 @llvm.bswap.i32(i32 %conv) #3
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %3) #3, !srcloc !10
  %usec_timeout.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %6 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %usec_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp25.not.i = icmp eq i32 %7, 0
  br i1 %cmp25.not.i, label %entry.kv_notify_message_to_smu.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.kv_notify_message_to_smu.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %kv_notify_message_to_smu.exit

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.026.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %9, i32 596
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %10)
  %cmp2.not.i = icmp ult i32 %10, 65536
  br i1 %cmp2.not.i, label %if.end.i, label %for.body.i.kv_notify_message_to_smu.exit_crit_edge

for.body.i.kv_notify_message_to_smu.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %kv_notify_message_to_smu.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #3
  %inc.i = add nuw i32 %i.026.i, 1
  %12 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %usec_timeout.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %13
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.kv_notify_message_to_smu.exit_crit_edge

if.end.i.kv_notify_message_to_smu.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %kv_notify_message_to_smu.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

kv_notify_message_to_smu.exit:                    ; preds = %if.end.i.kv_notify_message_to_smu.exit_crit_edge, %for.body.i.kv_notify_message_to_smu.exit_crit_edge, %entry.kv_notify_message_to_smu.exit_crit_edge
  %14 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i24.i = getelementptr i8, ptr %15, i32 596
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24.i) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  %17 = and i32 %16, -16842752
  call void @__sanitizer_cov_trace_const_cmp4(i32 -33554432, i32 %17)
  %switch.i = icmp eq i32 %17, -33554432
  %spec.select.i = select i1 %switch.i, i32 -22, i32 0
  ret i32 %spec.select.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kv_read_smc_sram_dword(ptr nocapture noundef readonly %rdev, i32 noundef %smc_address, ptr nocapture noundef writeonly %value, i32 noundef %limit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %smc_address, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  %add.i = add i32 %smc_address, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %limit)
  %cmp.i = icmp ugt i32 %add.i, %limit
  %or.cond.i = or i1 %tobool.not.i, %cmp.i
  br i1 %or.cond.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %0 = tail call i32 @llvm.bswap.i32(i32 %smc_address) #3
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %1 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %0) #3, !srcloc !10
  %3 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %4, i32 576
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  %6 = and i32 %5, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %7 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %8, i32 576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 %6) #3, !srcloc !10
  %9 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 516
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #3
  %13 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %value, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kv_smc_dpm_enable(ptr nocapture noundef readonly %rdev, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 592
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1308688384) #3, !srcloc !10
  %usec_timeout.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %2 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usec_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp25.not.i = icmp eq i32 %3, 0
  br i1 %cmp25.not.i, label %if.then.kv_notify_message_to_smu.exit_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.kv_notify_message_to_smu.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %kv_notify_message_to_smu.exit

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.026.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %5, i32 596
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %6)
  %cmp2.not.i = icmp ult i32 %6, 65536
  br i1 %cmp2.not.i, label %if.end.i, label %for.body.i.kv_notify_message_to_smu.exit_crit_edge

for.body.i.kv_notify_message_to_smu.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %kv_notify_message_to_smu.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #3
  %inc.i = add nuw i32 %i.026.i, 1
  %8 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %usec_timeout.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %9
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.kv_notify_message_to_smu.exit_crit_edge

if.end.i.kv_notify_message_to_smu.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %kv_notify_message_to_smu.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

kv_notify_message_to_smu.exit:                    ; preds = %if.end.i.kv_notify_message_to_smu.exit_crit_edge, %for.body.i.kv_notify_message_to_smu.exit_crit_edge, %if.then.kv_notify_message_to_smu.exit_crit_edge
  %10 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i24.i = getelementptr i8, ptr %11, i32 596
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24.i) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  br label %return

if.else:                                          ; preds = %entry
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1325465600) #3, !srcloc !10
  %usec_timeout.i5 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %13 = ptrtoint ptr %usec_timeout.i5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %usec_timeout.i5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp25.not.i6 = icmp eq i32 %14, 0
  br i1 %cmp25.not.i6, label %if.else.kv_notify_message_to_smu.exit17_crit_edge, label %if.else.for.body.i10_crit_edge

if.else.for.body.i10_crit_edge:                   ; preds = %if.else
  br label %for.body.i10

if.else.kv_notify_message_to_smu.exit17_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %kv_notify_message_to_smu.exit17

for.body.i10:                                     ; preds = %if.end.i13.for.body.i10_crit_edge, %if.else.for.body.i10_crit_edge
  %i.026.i7 = phi i32 [ %inc.i11, %if.end.i13.for.body.i10_crit_edge ], [ 0, %if.else.for.body.i10_crit_edge ]
  %15 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i22.i8 = getelementptr i8, ptr %16, i32 596
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i8) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %17)
  %cmp2.not.i9 = icmp ult i32 %17, 65536
  br i1 %cmp2.not.i9, label %if.end.i13, label %for.body.i10.kv_notify_message_to_smu.exit17_crit_edge

for.body.i10.kv_notify_message_to_smu.exit17_crit_edge: ; preds = %for.body.i10
  call void @__sanitizer_cov_trace_pc() #5
  br label %kv_notify_message_to_smu.exit17

if.end.i13:                                       ; preds = %for.body.i10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #3
  %inc.i11 = add nuw i32 %i.026.i7, 1
  %19 = ptrtoint ptr %usec_timeout.i5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %usec_timeout.i5, align 4
  %cmp.i12 = icmp ult i32 %inc.i11, %20
  br i1 %cmp.i12, label %if.end.i13.for.body.i10_crit_edge, label %if.end.i13.kv_notify_message_to_smu.exit17_crit_edge

if.end.i13.kv_notify_message_to_smu.exit17_crit_edge: ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #5
  br label %kv_notify_message_to_smu.exit17

if.end.i13.for.body.i10_crit_edge:                ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i10

kv_notify_message_to_smu.exit17:                  ; preds = %if.end.i13.kv_notify_message_to_smu.exit17_crit_edge, %for.body.i10.kv_notify_message_to_smu.exit17_crit_edge, %if.else.kv_notify_message_to_smu.exit17_crit_edge
  %21 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i24.i14 = getelementptr i8, ptr %22, i32 596
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24.i14) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  br label %return

return:                                           ; preds = %kv_notify_message_to_smu.exit17, %kv_notify_message_to_smu.exit
  %.sink18 = phi i32 [ %23, %kv_notify_message_to_smu.exit17 ], [ %12, %kv_notify_message_to_smu.exit ]
  %24 = and i32 %.sink18, -16842752
  call void @__sanitizer_cov_trace_const_cmp4(i32 -33554432, i32 %24)
  %switch.i15 = icmp eq i32 %24, -33554432
  %spec.select.i16 = select i1 %switch.i15, i32 -22, i32 0
  ret i32 %spec.select.i16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kv_smc_bapm_enable(ptr nocapture noundef readonly %rdev, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 592
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 536936448) #3, !srcloc !10
  %usec_timeout.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %2 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usec_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp25.not.i = icmp eq i32 %3, 0
  br i1 %cmp25.not.i, label %if.then.kv_notify_message_to_smu.exit_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.kv_notify_message_to_smu.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %kv_notify_message_to_smu.exit

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.026.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %5, i32 596
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %6)
  %cmp2.not.i = icmp ult i32 %6, 65536
  br i1 %cmp2.not.i, label %if.end.i, label %for.body.i.kv_notify_message_to_smu.exit_crit_edge

for.body.i.kv_notify_message_to_smu.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %kv_notify_message_to_smu.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #3
  %inc.i = add nuw i32 %i.026.i, 1
  %8 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %usec_timeout.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %9
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.kv_notify_message_to_smu.exit_crit_edge

if.end.i.kv_notify_message_to_smu.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %kv_notify_message_to_smu.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

kv_notify_message_to_smu.exit:                    ; preds = %if.end.i.kv_notify_message_to_smu.exit_crit_edge, %for.body.i.kv_notify_message_to_smu.exit_crit_edge, %if.then.kv_notify_message_to_smu.exit_crit_edge
  %10 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i24.i = getelementptr i8, ptr %11, i32 596
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24.i) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  br label %return

if.else:                                          ; preds = %entry
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 553713664) #3, !srcloc !10
  %usec_timeout.i5 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %13 = ptrtoint ptr %usec_timeout.i5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %usec_timeout.i5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp25.not.i6 = icmp eq i32 %14, 0
  br i1 %cmp25.not.i6, label %if.else.kv_notify_message_to_smu.exit17_crit_edge, label %if.else.for.body.i10_crit_edge

if.else.for.body.i10_crit_edge:                   ; preds = %if.else
  br label %for.body.i10

if.else.kv_notify_message_to_smu.exit17_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %kv_notify_message_to_smu.exit17

for.body.i10:                                     ; preds = %if.end.i13.for.body.i10_crit_edge, %if.else.for.body.i10_crit_edge
  %i.026.i7 = phi i32 [ %inc.i11, %if.end.i13.for.body.i10_crit_edge ], [ 0, %if.else.for.body.i10_crit_edge ]
  %15 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i22.i8 = getelementptr i8, ptr %16, i32 596
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i8) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %17)
  %cmp2.not.i9 = icmp ult i32 %17, 65536
  br i1 %cmp2.not.i9, label %if.end.i13, label %for.body.i10.kv_notify_message_to_smu.exit17_crit_edge

for.body.i10.kv_notify_message_to_smu.exit17_crit_edge: ; preds = %for.body.i10
  call void @__sanitizer_cov_trace_pc() #5
  br label %kv_notify_message_to_smu.exit17

if.end.i13:                                       ; preds = %for.body.i10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #3
  %inc.i11 = add nuw i32 %i.026.i7, 1
  %19 = ptrtoint ptr %usec_timeout.i5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %usec_timeout.i5, align 4
  %cmp.i12 = icmp ult i32 %inc.i11, %20
  br i1 %cmp.i12, label %if.end.i13.for.body.i10_crit_edge, label %if.end.i13.kv_notify_message_to_smu.exit17_crit_edge

if.end.i13.kv_notify_message_to_smu.exit17_crit_edge: ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #5
  br label %kv_notify_message_to_smu.exit17

if.end.i13.for.body.i10_crit_edge:                ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i10

kv_notify_message_to_smu.exit17:                  ; preds = %if.end.i13.kv_notify_message_to_smu.exit17_crit_edge, %for.body.i10.kv_notify_message_to_smu.exit17_crit_edge, %if.else.kv_notify_message_to_smu.exit17_crit_edge
  %21 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i24.i14 = getelementptr i8, ptr %22, i32 596
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24.i14) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  br label %return

return:                                           ; preds = %kv_notify_message_to_smu.exit17, %kv_notify_message_to_smu.exit
  %.sink18 = phi i32 [ %23, %kv_notify_message_to_smu.exit17 ], [ %12, %kv_notify_message_to_smu.exit ]
  %24 = and i32 %.sink18, -16842752
  call void @__sanitizer_cov_trace_const_cmp4(i32 -33554432, i32 %24)
  %switch.i15 = icmp eq i32 %24, -33554432
  %spec.select.i16 = select i1 %switch.i15, i32 -22, i32 0
  ret i32 %spec.select.i16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kv_copy_bytes_to_smc(ptr nocapture noundef readonly %rdev, i32 noundef %smc_start_address, ptr nocapture noundef readonly %src, i32 noundef %byte_count, i32 noundef %limit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %byte_count, %smc_start_address
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %limit)
  %cmp = icmp ugt i32 %add, %limit
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %smc_start_address, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp1.not = icmp eq i32 %and, 0
  br i1 %cmp1.not, label %if.end.if.end29_crit_edge, label %if.then2

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end29

if.then2:                                         ; preds = %if.end
  %sub = and i32 %smc_start_address, -4
  %add.i = or i32 %smc_start_address, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %limit)
  %cmp.i = icmp ugt i32 %add.i, %limit
  br i1 %cmp.i, label %if.then2.cleanup_crit_edge, label %if.end20

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end20:                                         ; preds = %if.then2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %0 = tail call i32 @llvm.bswap.i32(i32 %sub) #3
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %1 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %0) #3, !srcloc !10
  %3 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %4, i32 576
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  %6 = and i32 %5, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %7 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %8, i32 576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 %6) #3, !srcloc !10
  %9 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 516
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  %12 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %if.end20.if.else.3_crit_edge [
    i32 1, label %if.else.1
    i32 2, label %if.end20.if.else.2_crit_edge
  ]

if.end20.if.else.2_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else.2

if.end20.if.else.3_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else.3

if.else.1:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %byte_count)
  %cmp9.not.1 = icmp eq i32 %byte_count, 0
  br i1 %cmp9.not.1, label %if.else.1.if.else.3.thread_crit_edge, label %if.then10.1

if.else.1.if.else.3.thread_crit_edge:             ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else.3.thread

if.then10.1:                                      ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #5
  %incdec.ptr.1 = getelementptr i8, ptr %src, i32 1
  %13 = ptrtoint ptr %src to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %src, align 1
  %conv.1 = zext i8 %14 to i32
  %dec13.1 = add i32 %byte_count, -1
  br label %if.else.2

if.else.2:                                        ; preds = %if.then10.1, %if.end20.if.else.2_crit_edge
  %mask.1.1241 = phi i32 [ 16711680, %if.then10.1 ], [ 16776960, %if.end20.if.else.2_crit_edge ]
  %data.1.1240 = phi i32 [ %conv.1, %if.then10.1 ], [ 0, %if.end20.if.else.2_crit_edge ]
  %byte_count.addr.1.1239 = phi i32 [ %dec13.1, %if.then10.1 ], [ %byte_count, %if.end20.if.else.2_crit_edge ]
  %src.addr.1.1238 = phi ptr [ %incdec.ptr.1, %if.then10.1 ], [ %src, %if.end20.if.else.2_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %byte_count.addr.1.1239)
  %cmp9.not.2 = icmp eq i32 %byte_count.addr.1.1239, 0
  br i1 %cmp9.not.2, label %if.else.2.if.else.3.thread_crit_edge, label %if.then10.2

if.else.2.if.else.3.thread_crit_edge:             ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else.3.thread

if.then10.2:                                      ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #5
  %shl11.2 = shl nuw nsw i32 %data.1.1240, 8
  %incdec.ptr.2 = getelementptr i8, ptr %src.addr.1.1238, i32 1
  %15 = ptrtoint ptr %src.addr.1.1238 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %src.addr.1.1238, align 1
  %conv.2 = zext i8 %16 to i32
  %add12.2 = or i32 %shl11.2, %conv.2
  %dec13.2 = add i32 %byte_count.addr.1.1239, -1
  br label %if.else.3

if.else.3.thread:                                 ; preds = %if.else.2.if.else.3.thread_crit_edge, %if.else.1.if.else.3.thread_crit_edge
  %src.addr.1.1238258 = phi ptr [ %src.addr.1.1238, %if.else.2.if.else.3.thread_crit_edge ], [ %src, %if.else.1.if.else.3.thread_crit_edge ]
  %data.1.1240257 = phi i32 [ %data.1.1240, %if.else.2.if.else.3.thread_crit_edge ], [ 0, %if.else.1.if.else.3.thread_crit_edge ]
  %mask.1.1241256 = phi i32 [ %mask.1.1241, %if.else.2.if.else.3.thread_crit_edge ], [ 16776960, %if.else.1.if.else.3.thread_crit_edge ]
  %shl16.2 = shl nuw nsw i32 %data.1.1240257, 8
  %or18.2 = or i32 %mask.1.1241256, 255
  br label %if.else15.3

if.else.3:                                        ; preds = %if.then10.2, %if.end20.if.else.3_crit_edge
  %mask.1.2250 = phi i32 [ %mask.1.1241, %if.then10.2 ], [ 16777215, %if.end20.if.else.3_crit_edge ]
  %data.1.2249 = phi i32 [ %add12.2, %if.then10.2 ], [ 0, %if.end20.if.else.3_crit_edge ]
  %byte_count.addr.1.2248 = phi i32 [ %dec13.2, %if.then10.2 ], [ %byte_count, %if.end20.if.else.3_crit_edge ]
  %src.addr.1.2247 = phi ptr [ %incdec.ptr.2, %if.then10.2 ], [ %src, %if.end20.if.else.3_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %byte_count.addr.1.2248)
  %cmp9.not.3 = icmp eq i32 %byte_count.addr.1.2248, 0
  br i1 %cmp9.not.3, label %if.else.3.if.else15.3_crit_edge, label %if.then10.3

if.else.3.if.else15.3_crit_edge:                  ; preds = %if.else.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else15.3

if.then10.3:                                      ; preds = %if.else.3
  call void @__sanitizer_cov_trace_pc() #5
  %shl11.3 = shl nsw i32 %data.1.2249, 8
  %incdec.ptr.3 = getelementptr i8, ptr %src.addr.1.2247, i32 1
  %17 = ptrtoint ptr %src.addr.1.2247 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %src.addr.1.2247, align 1
  %conv.3 = zext i8 %18 to i32
  %add12.3 = or i32 %shl11.3, %conv.3
  %dec13.3 = add i32 %byte_count.addr.1.2248, -1
  %shl14.3 = shl nuw i32 %mask.1.2250, 8
  br label %if.end27

if.else15.3:                                      ; preds = %if.else.3.if.else15.3_crit_edge, %if.else.3.thread
  %src.addr.1.2247266 = phi ptr [ %src.addr.1.1238258, %if.else.3.thread ], [ %src.addr.1.2247, %if.else.3.if.else15.3_crit_edge ]
  %data.1.2249265 = phi i32 [ %shl16.2, %if.else.3.thread ], [ %data.1.2249, %if.else.3.if.else15.3_crit_edge ]
  %mask.1.2250264 = phi i32 [ %or18.2, %if.else.3.thread ], [ %mask.1.2250, %if.else.3.if.else15.3_crit_edge ]
  %shl16.3 = shl nsw i32 %data.1.2249265, 8
  %shl17.3 = shl i32 %mask.1.2250264, 8
  %or18.3 = or i32 %shl17.3, 255
  br label %if.end27

if.end27:                                         ; preds = %if.else15.3, %if.then10.3
  %src.addr.1.3 = phi ptr [ %incdec.ptr.3, %if.then10.3 ], [ %src.addr.1.2247266, %if.else15.3 ]
  %byte_count.addr.1.3 = phi i32 [ %dec13.3, %if.then10.3 ], [ 0, %if.else15.3 ]
  %data.1.3 = phi i32 [ %add12.3, %if.then10.3 ], [ %shl16.3, %if.else15.3 ]
  %mask.1.3 = phi i32 [ %shl14.3, %if.then10.3 ], [ %or18.3, %if.else15.3 ]
  %19 = tail call i32 @llvm.bswap.i32(i32 %11) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %20 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i155 = getelementptr i8, ptr %21, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i155, i32 %0) #3, !srcloc !10
  %22 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i11.i156 = getelementptr i8, ptr %23, i32 576
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i156) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  %25 = and i32 %24, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %26 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i13.i157 = getelementptr i8, ptr %27, i32 576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i157, i32 %25) #3, !srcloc !10
  %and22 = and i32 %mask.1.3, %19
  %or23 = or i32 %and22, %data.1.3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %28 = tail call i32 @llvm.bswap.i32(i32 %or23) #3
  %29 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i162 = getelementptr i8, ptr %30, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i162, i32 %28) #3, !srcloc !10
  %add28 = add i32 %sub, 4
  br label %if.end29

if.end29:                                         ; preds = %if.end27, %if.end.if.end29_crit_edge
  %src.addr.2 = phi ptr [ %src.addr.1.3, %if.end27 ], [ %src, %if.end.if.end29_crit_edge ]
  %byte_count.addr.2 = phi i32 [ %byte_count.addr.1.3, %if.end27 ], [ %byte_count, %if.end.if.end29_crit_edge ]
  %addr.0 = phi i32 [ %add28, %if.end27 ], [ %smc_start_address, %if.end.if.end29_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %byte_count.addr.2)
  %cmp31221 = icmp ugt i32 %byte_count.addr.2, 3
  br i1 %cmp31221, label %while.body33.lr.ph, label %if.end29.while.end53_crit_edge

if.end29.while.end53_crit_edge:                   ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end53

while.body33.lr.ph:                               ; preds = %if.end29
  %rmmio.i.i165 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %31 = and i32 %addr.0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i = icmp ne i32 %31, 0
  br label %while.body33

while.body33:                                     ; preds = %if.end50.while.body33_crit_edge, %while.body33.lr.ph
  %addr.1224 = phi i32 [ %addr.0, %while.body33.lr.ph ], [ %add52, %if.end50.while.body33_crit_edge ]
  %byte_count.addr.3223 = phi i32 [ %byte_count.addr.2, %while.body33.lr.ph ], [ %sub51, %if.end50.while.body33_crit_edge ]
  %src.addr.3222 = phi ptr [ %src.addr.2, %while.body33.lr.ph ], [ %add.ptr, %if.end50.while.body33_crit_edge ]
  %add.i163 = add i32 %addr.1224, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i163, i32 %limit)
  %cmp.i164 = icmp ugt i32 %add.i163, %limit
  %or.cond.i = or i1 %tobool.not.i, %cmp.i164
  br i1 %or.cond.i, label %while.body33.cleanup_crit_edge, label %if.end50

while.body33.cleanup_crit_edge:                   ; preds = %while.body33
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end50:                                         ; preds = %while.body33
  %arrayidx44 = getelementptr i8, ptr %src.addr.3222, i32 3
  %32 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx44, align 1
  %arrayidx40 = getelementptr i8, ptr %src.addr.3222, i32 2
  %34 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx40, align 1
  %arrayidx36 = getelementptr i8, ptr %src.addr.3222, i32 1
  %36 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx36, align 1
  %38 = ptrtoint ptr %src.addr.3222 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %src.addr.3222, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %40 = tail call i32 @llvm.bswap.i32(i32 %addr.1224) #3
  %41 = ptrtoint ptr %rmmio.i.i165 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rmmio.i.i165, align 4
  %add.ptr.i.i166 = getelementptr i8, ptr %42, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i166, i32 %40) #3, !srcloc !10
  %43 = ptrtoint ptr %rmmio.i.i165 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rmmio.i.i165, align 4
  %add.ptr.i11.i167 = getelementptr i8, ptr %44, i32 576
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i167) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  %46 = and i32 %45, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %47 = ptrtoint ptr %rmmio.i.i165 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rmmio.i.i165, align 4
  %add.ptr.i13.i168 = getelementptr i8, ptr %48, i32 576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i168, i32 %46) #3, !srcloc !10
  %conv34 = zext i8 %39 to i32
  %shl35 = shl nuw i32 %conv34, 24
  %conv37 = zext i8 %37 to i32
  %shl38 = shl nuw nsw i32 %conv37, 16
  %conv41 = zext i8 %35 to i32
  %shl42 = shl nuw nsw i32 %conv41, 8
  %conv45 = zext i8 %33 to i32
  %add39 = or i32 %shl42, %conv45
  %add43 = or i32 %add39, %shl38
  %add46 = or i32 %add43, %shl35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %49 = tail call i32 @llvm.bswap.i32(i32 %add46) #3
  %50 = ptrtoint ptr %rmmio.i.i165 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rmmio.i.i165, align 4
  %add.ptr.i173 = getelementptr i8, ptr %51, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i173, i32 %49) #3, !srcloc !10
  %add.ptr = getelementptr i8, ptr %src.addr.3222, i32 4
  %sub51 = add i32 %byte_count.addr.3223, -4
  %add52 = add i32 %addr.1224, 4
  %cmp31 = icmp ugt i32 %sub51, 3
  br i1 %cmp31, label %if.end50.while.body33_crit_edge, label %if.end50.while.end53_crit_edge

if.end50.while.end53_crit_edge:                   ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end53

if.end50.while.body33_crit_edge:                  ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body33

while.end53:                                      ; preds = %if.end50.while.end53_crit_edge, %if.end29.while.end53_crit_edge
  %src.addr.3.lcssa = phi ptr [ %src.addr.2, %if.end29.while.end53_crit_edge ], [ %add.ptr, %if.end50.while.end53_crit_edge ]
  %byte_count.addr.3.lcssa = phi i32 [ %byte_count.addr.2, %if.end29.while.end53_crit_edge ], [ %sub51, %if.end50.while.end53_crit_edge ]
  %addr.1.lcssa = phi i32 [ %addr.0, %if.end29.while.end53_crit_edge ], [ %add52, %if.end50.while.end53_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %byte_count.addr.3.lcssa)
  %cmp54.not = icmp eq i32 %byte_count.addr.3.lcssa, 0
  br i1 %cmp54.not, label %while.end53.cleanup_crit_edge, label %if.then56

while.end53.cleanup_crit_edge:                    ; preds = %while.end53
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then56:                                        ; preds = %while.end53
  %and.i174 = and i32 %addr.1.lcssa, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i174)
  %tobool.not.i175 = icmp ne i32 %and.i174, 0
  %add.i176 = add i32 %addr.1.lcssa, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i176, i32 %limit)
  %cmp.i177 = icmp ugt i32 %add.i176, %limit
  %or.cond.i178 = or i1 %tobool.not.i175, %cmp.i177
  br i1 %or.cond.i178, label %if.then56.cleanup_crit_edge, label %while.body66.preheader

if.then56.cleanup_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

while.body66.preheader:                           ; preds = %if.then56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %52 = tail call i32 @llvm.bswap.i32(i32 %addr.1.lcssa) #3
  %rmmio.i.i179 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %53 = ptrtoint ptr %rmmio.i.i179 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rmmio.i.i179, align 4
  %add.ptr.i.i180 = getelementptr i8, ptr %54, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i180, i32 %52) #3, !srcloc !10
  %55 = ptrtoint ptr %rmmio.i.i179 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rmmio.i.i179, align 4
  %add.ptr.i11.i181 = getelementptr i8, ptr %56, i32 576
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i181) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  %58 = and i32 %57, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %59 = ptrtoint ptr %rmmio.i.i179 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rmmio.i.i179, align 4
  %add.ptr.i13.i182 = getelementptr i8, ptr %60, i32 576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i182, i32 %58) #3, !srcloc !10
  %61 = ptrtoint ptr %rmmio.i.i179 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rmmio.i.i179, align 4
  %add.ptr.i187 = getelementptr i8, ptr %62, i32 516
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i187) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #3
  %.neg = mul nsw i32 %byte_count.addr.3.lcssa, -8
  %mul = add nsw i32 %.neg, 32
  br label %while.body66

while.body66:                                     ; preds = %while.body66.while.body66_crit_edge, %while.body66.preheader
  %data.2230 = phi i32 [ %add70, %while.body66.while.body66_crit_edge ], [ 0, %while.body66.preheader ]
  %byte_count.addr.4229 = phi i32 [ %dec71, %while.body66.while.body66_crit_edge ], [ %byte_count.addr.3.lcssa, %while.body66.preheader ]
  %src.addr.4228 = phi ptr [ %incdec.ptr68, %while.body66.while.body66_crit_edge ], [ %src.addr.3.lcssa, %while.body66.preheader ]
  %shl67 = shl i32 %data.2230, 8
  %incdec.ptr68 = getelementptr i8, ptr %src.addr.4228, i32 1
  %65 = ptrtoint ptr %src.addr.4228 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %src.addr.4228, align 1
  %conv69 = zext i8 %66 to i32
  %add70 = or i32 %shl67, %conv69
  %dec71 = add i32 %byte_count.addr.4229, -1
  %cmp64.not = icmp eq i32 %dec71, 0
  br i1 %cmp64.not, label %if.end80, label %while.body66.while.body66_crit_edge

while.body66.while.body66_crit_edge:              ; preds = %while.body66
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body66

if.end80:                                         ; preds = %while.body66
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %67 = ptrtoint ptr %rmmio.i.i179 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rmmio.i.i179, align 4
  %add.ptr.i.i194 = getelementptr i8, ptr %68, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i194, i32 %52) #3, !srcloc !10
  %69 = ptrtoint ptr %rmmio.i.i179 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rmmio.i.i179, align 4
  %add.ptr.i11.i195 = getelementptr i8, ptr %70, i32 576
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i195) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  %72 = and i32 %71, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %73 = ptrtoint ptr %rmmio.i.i179 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rmmio.i.i179, align 4
  %add.ptr.i13.i196 = getelementptr i8, ptr %74, i32 576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i196, i32 %72) #3, !srcloc !10
  %shl73 = shl i32 %add70, %mul
  %shl74 = shl nsw i32 -1, %mul
  %neg = xor i32 %shl74, -1
  %and75 = and i32 %64, %neg
  %or76 = or i32 %shl73, %and75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %75 = tail call i32 @llvm.bswap.i32(i32 %or76) #3
  %76 = ptrtoint ptr %rmmio.i.i179 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rmmio.i.i179, align 4
  %add.ptr.i201 = getelementptr i8, ptr %77, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i201, i32 %75) #3, !srcloc !10
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %if.then56.cleanup_crit_edge, %while.end53.cleanup_crit_edge, %while.body33.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end80 ], [ 0, %while.end53.cleanup_crit_edge ], [ -22, %if.then2.cleanup_crit_edge ], [ -22, %if.then56.cleanup_crit_edge ], [ -22, %while.body33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{i64 2157411517}
!10 = !{i64 6690507}
!11 = !{i64 6690925}
!12 = !{i64 2157411110}
